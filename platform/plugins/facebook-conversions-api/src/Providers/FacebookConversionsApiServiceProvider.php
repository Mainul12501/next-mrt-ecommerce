<?php

namespace Botble\FacebookConversionsApi\Providers;

use Botble\Base\Facades\DashboardMenu;
use Botble\Base\Supports\ServiceProvider;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Ecommerce\Events\OrderCreated;
use Botble\Ecommerce\Events\OrderPlacedEvent;
use Botble\FacebookConversionsApi\Listeners\SendInitiateCheckoutEventListener;
use Botble\FacebookConversionsApi\Listeners\SendPurchaseEventListener;
use Illuminate\Support\Facades\Event;

class FacebookConversionsApiServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function boot(): void
    {
        $this
            ->setNamespace('plugins/facebook-conversions-api')
            ->loadAndPublishConfigurations(['permissions', 'facebook-conversions-api'])
            ->loadRoutes();

        $this->registerEvents();
        $this->registerMenu();
    }

    protected function registerEvents(): void
    {
        Event::listen(OrderPlacedEvent::class, SendPurchaseEventListener::class);
        Event::listen(OrderCreated::class, SendInitiateCheckoutEventListener::class);
    }

    protected function registerMenu(): void
    {
        DashboardMenu::beforeRetrieving(function () {
            DashboardMenu::make()
                ->registerItem([
                    'id' => 'cms-plugins-facebook-conversions-api',
                    'priority' => 999,
                    'parent_id' => 'cms-plugins-ecommerce',
                    'name' => 'Facebook Conversions API',
                    'icon' => 'fab fa-facebook',
                    'url' => route('facebook-conversions-api.settings'),
                    'permissions' => ['facebook-conversions-api.settings'],
                ]);
        });
    }
}
