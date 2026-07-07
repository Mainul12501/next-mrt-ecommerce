<?php

use Botble\Base\Facades\AdminHelper;
use Illuminate\Support\Facades\Route;

AdminHelper::registerRoutes(function (): void {
     Route::group(['namespace' => 'Platform\Plugins\QrBarcodeGenerator\Http\Controllers'], function (): void {

          // Tools Menu Routes (keep existing)
          Route::group(['prefix' => 'tools/qr-barcode-generator', 'as' => 'qr-barcode-generator.'], function (): void {
               Route::get('/', [
                    'as' => 'index',
                    'uses' => 'QrBarcodeGeneratorController@index',
                    'permission' => 'qr-barcode-generator.index',
               ]);
          });

          // Settings Routes (New URL structure)
          Route::group(['prefix' => 'qr-barcode-generator', 'as' => 'qr-barcode-generator.'], function (): void {
               Route::get('settings', [
                    'as' => 'settings',
                    'uses' => 'Settings\QrBarcodeGeneratorSettingController@edit',
                    'permission' => 'qr-barcode-generator.settings',
               ]);

               Route::put('settings', [
                    'as' => 'settings.update',
                    'uses' => 'Settings\QrBarcodeGeneratorSettingController@update',
                    'permission' => 'qr-barcode-generator.settings',
               ]);
          });
     });
});
