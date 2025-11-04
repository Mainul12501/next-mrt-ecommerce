<?php

namespace Botble\FacebookConversionsApi\Services;

use Botble\Ecommerce\Models\Order;
use Botble\Ecommerce\Models\Product;
use Esign\ConversionsApi\Facades\ConversionsApi;
use FacebookAds\Object\ServerSide\ActionSource;
use FacebookAds\Object\ServerSide\Content;
use FacebookAds\Object\ServerSide\CustomData;
use FacebookAds\Object\ServerSide\Event;
use FacebookAds\Object\ServerSide\UserData;
use Illuminate\Support\Facades\Log;

class FacebookConversionsApiService
{
    protected bool $enabled;
    protected string $pixelId;
    protected string $accessToken;
    protected ?string $testEventCode;

    public function __construct()
    {
        $this->enabled = (bool) setting('facebook_conversions_api_enabled', false);
        $this->pixelId = setting('facebook_conversions_api_pixel_id', '');
        $this->accessToken = setting('facebook_conversions_api_access_token', '');
        $this->testEventCode = setting('facebook_conversions_api_test_event_code', null);
    }

    public function isEnabled(): bool
    {
        return $this->enabled && !empty($this->pixelId) && !empty($this->accessToken);
    }

    protected function sendEvent(Event $event): bool
    {
        if (!$this->isEnabled()) {
            return false;
        }

        try {
            $api = ConversionsApi::pixelId($this->pixelId)
                ->accessToken($this->accessToken);

            if ($this->testEventCode) {
                $api->testEventCode($this->testEventCode);
            }

            $api->addEvent($event);
            $api->sendEvents();

            Log::info('Facebook Conversions API event sent successfully', [
                'event_name' => $event->getEventName(),
            ]);

            return true;
        } catch (\Exception $e) {
            Log::error('Facebook Conversions API error', [
                'message' => $e->getMessage(),
                'event_name' => $event->getEventName(),
            ]);

            return false;
        }
    }

    public function trackPurchase(Order $order): bool
    {
        if (!$this->isEnabled()) {
            return false;
        }

        $userData = $this->buildUserDataFromOrder($order);
        $customData = $this->buildCustomDataFromOrder($order);

        $event = (new Event())
            ->setEventName('Purchase')
            ->setEventTime(time())
            ->setEventId($order->code)
            ->setEventSourceUrl(url('/checkout/' . $order->token . '/success'))
            ->setActionSource(ActionSource::WEBSITE)
            ->setUserData($userData)
            ->setCustomData($customData);

        return $this->sendEvent($event);
    }

    public function trackInitiateCheckout(Order $order): bool
    {
        if (!$this->isEnabled()) {
            return false;
        }

        $userData = $this->buildUserDataFromOrder($order);
        $customData = $this->buildCustomDataFromOrder($order);

        $event = (new Event())
            ->setEventName('InitiateCheckout')
            ->setEventTime(time())
            ->setEventId('checkout_' . $order->token)
            ->setEventSourceUrl(url('/checkout/' . $order->token))
            ->setActionSource(ActionSource::WEBSITE)
            ->setUserData($userData)
            ->setCustomData($customData);

        return $this->sendEvent($event);
    }

    public function trackAddToCart(Product $product, int $quantity = 1): bool
    {
        if (!$this->isEnabled()) {
            return false;
        }

        $userData = (new UserData())
            ->setClientIpAddress(request()->ip())
            ->setClientUserAgent(request()->userAgent());

        if (auth()->check()) {
            $user = auth()->user();
            $userData->setEmail($user->email)
                ->setFirstName($user->name);
        }

        $customData = (new CustomData())
            ->setContentType('product')
            ->setContentIds([$product->id])
            ->setContentName($product->name)
            ->setCurrency(get_application_currency()->title)
            ->setValue((float) $product->front_sale_price)
            ->setNumItems($quantity);

        $event = (new Event())
            ->setEventName('AddToCart')
            ->setEventTime(time())
            ->setEventId('add_cart_' . $product->id . '_' . time())
            ->setEventSourceUrl(url()->current())
            ->setActionSource(ActionSource::WEBSITE)
            ->setUserData($userData)
            ->setCustomData($customData);

        return $this->sendEvent($event);
    }

    public function trackViewContent(Product $product): bool
    {
        if (!$this->isEnabled()) {
            return false;
        }

        $userData = (new UserData())
            ->setClientIpAddress(request()->ip())
            ->setClientUserAgent(request()->userAgent());

        if (auth()->check()) {
            $user = auth()->user();
            $userData->setEmail($user->email)
                ->setFirstName($user->name);
        }

        $customData = (new CustomData())
            ->setContentType('product')
            ->setContentIds([$product->id])
            ->setContentName($product->name)
            ->setCurrency(get_application_currency()->title)
            ->setValue((float) $product->front_sale_price);

        $event = (new Event())
            ->setEventName('ViewContent')
            ->setEventTime(time())
            ->setEventId('view_' . $product->id . '_' . time())
            ->setEventSourceUrl(url()->current())
            ->setActionSource(ActionSource::WEBSITE)
            ->setUserData($userData)
            ->setCustomData($customData);

        return $this->sendEvent($event);
    }

    protected function buildUserDataFromOrder(Order $order): UserData
    {
        $userData = (new UserData())
            ->setClientIpAddress(request()->ip())
            ->setClientUserAgent(request()->userAgent());

        $shippingAddress = $order->shippingAddress;

        if ($shippingAddress) {
            $userData->setEmail($shippingAddress->email)
                ->setFirstName($shippingAddress->name)
                ->setPhone($shippingAddress->phone)
                ->setCity($shippingAddress->city)
                ->setZipCode($shippingAddress->zip_code)
                ->setCountryCode($shippingAddress->country);
        } elseif ($order->user) {
            $userData->setEmail($order->user->email)
                ->setFirstName($order->user->name);
        }

        return $userData;
    }

    protected function buildCustomDataFromOrder(Order $order): CustomData
    {
        $contentIds = [];
        $contents = [];
        $numItems = 0;

        foreach ($order->products as $product) {
            $contentIds[] = (string) $product->product_id;
            $contents[] = (new Content())
                ->setProductId((string) $product->product_id)
                ->setQuantity($product->qty)
                ->setItemPrice((float) $product->price);
            $numItems += $product->qty;
        }

        return (new CustomData())
            ->setContentType('product')
            ->setContentIds($contentIds)
            ->setContents($contents)
            ->setCurrency($order->currency)
            ->setValue((float) $order->amount)
            ->setNumItems($numItems)
            ->setOrderId($order->code);
    }
}
