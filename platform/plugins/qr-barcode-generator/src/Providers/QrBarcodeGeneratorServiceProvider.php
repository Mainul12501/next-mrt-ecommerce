<?php

namespace Platform\Plugins\QrBarcodeGenerator\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Event;
use Illuminate\Routing\Events\RouteMatched;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Base\Facades\DashboardMenu;
use Botble\Base\Facades\PanelSectionManager;
use Botble\Base\PanelSections\PanelSectionItem;
use Botble\Setting\PanelSections\SettingOthersPanelSection;

class QrBarcodeGeneratorServiceProvider extends ServiceProvider
{
     use LoadAndPublishDataTrait;

     public function boot(): void
     {
          $this
               ->setNamespace('plugins/qr-barcode-generator')
               ->loadAndPublishViews()
               ->loadAndPublishTranslations()
               ->loadRoutes();

          // Register Dashboard Menu
          Event::listen(RouteMatched::class, function () {
               DashboardMenu::registerItem([
                    'id' => 'cms-plugins-qr-barcode-generator',
                    'priority' => 5,
                    'parent_id' => 'cms-core-tools',
                    'name' => 'plugins/qr-barcode-generator::content.name',
                    'icon' => 'ti ti-qrcode',
                    'url' => route('qr-barcode-generator.index'),
                    'permissions' => ['qr-barcode-generator.index'],
               ]);
          });

          // Register Settings in Admin Panel
          PanelSectionManager::default()->beforeRendering(function () {
               PanelSectionManager::registerItem(
                    SettingOthersPanelSection::class,
                    fn() => PanelSectionItem::make('qr_barcode_generator')
                         ->setTitle(trans('plugins/qr-barcode-generator::content.name'))
                         ->withIcon('ti ti-qrcode')
                         ->withPriority(120)
                         ->withDescription(trans('plugins/qr-barcode-generator::content.settings_description'))
                         ->withRoute('qr-barcode-generator.settings')
               );
          });
     }
}
