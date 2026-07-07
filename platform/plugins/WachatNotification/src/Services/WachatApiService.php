<?php

namespace Botble\WachatNotification\Services;

use Illuminate\Http\Client\PendingRequest;
use Illuminate\Support\Facades\Http;
use Throwable;

class WachatApiService
{
    public const DEFAULT_API_URL = 'https://app.wachat.net';

    public function isConfigured(): bool
    {
        return wachat_notification_enabled()
            && filled($this->apiBaseUrl())
            && filled($this->apiKey())
            && filled($this->instanceName());
    }

    public function sendText(string $number, string $message): array
    {
        if (! $this->isConfigured()) {
            return [
                'success' => false,
                'error' => 'Wachat Notification is not configured.',
            ];
        }

        $number = preg_replace('/\D+/', '', $number);
        if (! $number) {
            return [
                'success' => false,
                'error' => 'Recipient phone number is empty.',
            ];
        }

        try {
            $response = $this->client()->post('/api/v1/send/text', [
                'instanceName' => $this->instanceName(),
                'number' => $number,
                'message' => $message,
            ]);

            if (! $response->successful()) {
                return [
                    'success' => false,
                    'status' => $response->status(),
                    'error' => $response->json('error') ?: $response->json('details') ?: $response->body(),
                ];
            }

            return [
                'success' => true,
                'data' => $response->json(),
            ];
        } catch (Throwable $exception) {
            return [
                'success' => false,
                'error' => $exception->getMessage(),
            ];
        }
    }

    public function renderTemplate(string $template, array $variables): string
    {
        return preg_replace_callback('/\{([a-zA-Z0-9_]+)\}/', function (array $matches) use ($variables): string {
            return (string) ($variables[$matches[1]] ?? '');
        }, $template);
    }

    public function orderVariables(object|array $order, ?object $event = null): array
    {
        $order = is_array($order) ? (object) $order : $order;
        $user = $order->user ?? $order->customer ?? null;
        $address = $order->address ?? $order->shippingAddress ?? $order->billingAddress ?? null;

        $customerName = $this->value($address, 'name')
            ?: $this->value($user, 'name')
            ?: trim(($this->value($address, 'first_name') . ' ' . $this->value($address, 'last_name')))
            ?: 'Customer';

        $phone = $this->value($address, 'phone')
            ?: $this->value($user, 'phone')
            ?: $this->value($order, 'phone');

        $orderCode = $this->value($order, 'code')
            ?: $this->value($order, 'token')
            ?: $this->value($order, 'id');

        $status = $this->value($order, 'status');
        if (is_object($status) && method_exists($status, 'getValue')) {
            $status = $status->getValue();
        }

        $shipment = $event?->shipment ?? null;
        $previousShipment = $event?->previousShipment ?? [];

        return [
            'order_id' => (string) $this->value($order, 'id'),
            'order_code' => (string) $orderCode,
            'customer_name' => $customerName,
            'customer_phone' => (string) $phone,
            'customer_email' => (string) ($this->value($address, 'email') ?: $this->value($user, 'email') ?: $this->value($order, 'email')),
            'status' => (string) $status,
            'amount' => (string) ($this->value($order, 'amount') ?: $this->value($order, 'total')),
            'cancel_reason' => (string) ($event?->reason ?? ''),
            'cancel_reason_description' => (string) ($event?->reasonDescription ?? ''),
            'shipping_status' => (string) ($this->value($shipment, 'status') ?: $this->value($order, 'shipping_status')),
            'previous_shipping_status' => (string) ($previousShipment['status'] ?? ''),
            'tracking_id' => (string) ($this->value($shipment, 'tracking_id') ?: $this->value($shipment, 'trackingId')),
            'tracking_link' => (string) ($this->value($shipment, 'tracking_link') ?: $this->value($shipment, 'trackingLink')),
            'site_title' => config('app.name'),
        ];
    }

    public function resolveOrderFromEvent(object $event): ?object
    {
        $shipment = $event->shipment ?? null;
        $order = $this->value($shipment, 'order');
        if ($order) {
            return $order;
        }

        $orderReturn = $event->orderReturn ?? $event->order ?? null;
        if ($orderReturn && is_object($orderReturn) && str_contains($orderReturn::class, 'OrderReturn')) {
            if (method_exists($orderReturn, 'loadMissing')) {
                $orderReturn->loadMissing('order');
            }

            return $this->value($orderReturn, 'order');
        }

        $order = $event->order ?? $event->model ?? null;
        if ($order) {
            return $order;
        }

        $order = $this->value($orderReturn, 'order');
        if ($order) {
            return $order;
        }

        if ($orderReturn && method_exists($orderReturn, 'loadMissing')) {
            $orderReturn->loadMissing('order');

            return $this->value($orderReturn, 'order');
        }

        if ($shipment && method_exists($shipment, 'loadMissing')) {
            $shipment->loadMissing('order');

            return $this->value($shipment, 'order');
        }

        return null;
    }

    public function getPhoneFromOrder(object|array $order): ?string
    {
        $variables = $this->orderVariables($order);

        return $variables['customer_phone'] ?: null;
    }

    protected function client(): PendingRequest
    {
        return Http::baseUrl($this->apiBaseUrl())
            ->acceptJson()
            ->asJson()
            ->timeout((int) wachat_notification_setting('timeout', 20))
            ->withToken($this->apiKey());
    }

    protected function apiBaseUrl(): string
    {
        return self::DEFAULT_API_URL;
    }

    protected function apiKey(): string
    {
        return (string) wachat_notification_setting('api_key');
    }

    protected function instanceName(): string
    {
        return (string) wachat_notification_setting('instance_name');
    }

    protected function value(mixed $target, string $key): mixed
    {
        if (is_array($target)) {
            return $target[$key] ?? null;
        }

        if (is_object($target)) {
            return $target->{$key} ?? (method_exists($target, 'getAttribute') ? $target->getAttribute($key) : null);
        }

        return null;
    }
}
