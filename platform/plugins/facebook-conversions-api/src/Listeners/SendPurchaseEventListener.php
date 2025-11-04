<?php

namespace Botble\FacebookConversionsApi\Listeners;

use Botble\Ecommerce\Events\OrderPlacedEvent;
use Botble\FacebookConversionsApi\Services\FacebookConversionsApiService;
use Illuminate\Support\Facades\Log;

class SendPurchaseEventListener
{
    protected FacebookConversionsApiService $facebookService;

    public function __construct(FacebookConversionsApiService $facebookService)
    {
        $this->facebookService = $facebookService;
    }

    public function handle(OrderPlacedEvent $event): void
    {
        $order = $event->order;

        if ($order->is_finished) {
            $this->facebookService->trackPurchase($order);

            Log::info('Facebook Conversions API Purchase event triggered', [
                'order_code' => $order->code,
                'order_id' => $order->id,
            ]);
        }
    }
}
