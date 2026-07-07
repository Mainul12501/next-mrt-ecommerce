<?php

namespace Botble\WachatNotification\Providers;

use Botble\Base\Facades\DashboardMenu;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\WachatNotification\Services\WachatApiService;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\ServiceProvider;

class WachatNotificationServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    protected array $recentOrderEvents = [];

    public function register(): void
    {
        $this->app->singleton(WachatApiService::class);
    }

    public function boot(): void
    {
        $this
            ->setNamespace('plugins/wachat-notification')
            ->loadHelpers()
            ->loadAndPublishConfigurations(['permissions'])
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->loadRoutes(['web']);

        DashboardMenu::default()->beforeRetrieving(function (): void {
            DashboardMenu::make()
                ->registerItem([
                    'id' => 'cms-plugins-wachat-notification',
                    'priority' => 5,
                    'name' => 'Wachat Notification',
                    'icon' => 'ti ti-brand-whatsapp',
                    'url' => route('wachat-notification.settings.edit'),
                    'permissions' => ['wachat-notification.settings'],
                ]);
        });

        $this->registerEcommerceListeners();
    }

    protected function registerEcommerceListeners(): void
    {
        $events = [
            'Botble\Ecommerce\Events\OrderPlacedEvent' => 'order_created',
            'Botble\Ecommerce\Events\OrderCreated' => 'order_created',
            'Botble\Ecommerce\Events\OrderCreatedEvent' => 'order_created',
            'Botble\Ecommerce\Events\OrderConfirmedEvent' => 'order_confirmed',
            'Botble\Ecommerce\Events\OrderPaymentConfirmedEvent' => 'payment_confirmed',
            'Botble\Ecommerce\Events\OrderCompletedEvent' => 'order_completed',
            'Botble\Ecommerce\Events\OrderCancelledEvent' => 'order_cancelled',
            'Botble\Ecommerce\Events\OrderReturnedEvent' => 'order_returned',
            'Botble\Ecommerce\Events\ShippingStatusChanged' => 'shipping_status_changed',
        ];

        foreach ($events as $eventClass => $type) {
            if (! class_exists($eventClass)) {
                continue;
            }

            Event::listen($eventClass, function (object $event) use ($type): void {
                /** @var WachatApiService $wachat */
                $wachat = $this->app->make(WachatApiService::class);
                $order = $wachat->resolveOrderFromEvent($event);
                if (! $order) {
                    return;
                }

                $this->sendOrderNotification($order, $type, $event);
            });
        }
    }

    protected function sendOrderNotification(object $order, string $type, ?object $event = null): void
    {
        if (! wachat_notification_enabled()) {
            return;
        }

        if (! (bool) wachat_notification_setting('notify_' . $type, true)) {
            return;
        }

        if ($this->isDuplicateEvent($order, $type)) {
            return;
        }

        /** @var WachatApiService $wachat */
        $wachat = $this->app->make(WachatApiService::class);
        $phone = $wachat->getPhoneFromOrder($order);
        if (! $phone) {
            return;
        }

        $templateKey = $type . '_template';
        $template = (string) wachat_notification_setting($templateKey);
        $message = $wachat->renderTemplate($template, $wachat->orderVariables($order, $event));

        $wachat->sendText($phone, $message);

        $adminPhone = (string) wachat_notification_setting('admin_phone');
        if ($adminPhone) {
            $wachat->sendText($adminPhone, '[Admin] ' . $message);
        }
    }

    protected function isDuplicateEvent(object $order, string $type): bool
    {
        $orderId = $order->id ?? null;
        if (! $orderId) {
            return false;
        }

        $key = $type . ':' . $orderId;
        $now = time();

        $this->recentOrderEvents = array_filter(
            $this->recentOrderEvents,
            fn (int $timestamp): bool => $timestamp > ($now - 10)
        );

        if (isset($this->recentOrderEvents[$key])) {
            return true;
        }

        $this->recentOrderEvents[$key] = $now;

        return false;
    }
}
