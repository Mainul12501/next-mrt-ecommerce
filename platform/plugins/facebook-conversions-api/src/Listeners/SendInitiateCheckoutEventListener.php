<?php

namespace Botble\FacebookConversionsApi\Listeners;

use Botble\Ecommerce\Events\OrderCreated;
use Botble\FacebookConversionsApi\Services\FacebookConversionsApiService;
use Illuminate\Support\Facades\Log;

class SendInitiateCheckoutEventListener
{
    protected FacebookConversionsApiService $facebookService;

    public function __construct(FacebookConversionsApiService $facebookService)
    {
        $this->facebookService = $facebookService;
    }

    public function handle(OrderCreated $event): void
    {
        $order = $event->order;

        $this->facebookService->trackInitiateCheckout($order);

        Log::info('Facebook Conversions API InitiateCheckout event triggered', [
            'order_code' => $order->code,
            'order_id' => $order->id,
        ]);
    }
}
