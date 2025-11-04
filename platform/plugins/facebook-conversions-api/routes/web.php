<?php

use Botble\Base\Facades\AdminHelper;
use Illuminate\Support\Facades\Route;

AdminHelper::registerRoutes(function () {
    Route::group(['namespace' => 'Botble\FacebookConversionsApi\Http\Controllers'], function () {
        Route::group(['prefix' => 'facebook-conversions-api', 'as' => 'facebook-conversions-api.'], function () {
            Route::get('settings', [
                'as' => 'settings',
                'uses' => 'FacebookConversionsApiController@edit',
                'permission' => 'facebook-conversions-api.settings',
            ]);

            Route::put('settings', [
                'as' => 'settings.update',
                'uses' => 'FacebookConversionsApiController@update',
                'permission' => 'facebook-conversions-api.settings',
            ]);
        });
    });
});
