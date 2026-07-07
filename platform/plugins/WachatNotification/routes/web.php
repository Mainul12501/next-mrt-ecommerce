<?php

use Botble\WachatNotification\Http\Controllers\WachatNotificationSettingsController;
use Illuminate\Support\Facades\Route;

Route::group([
    'namespace' => 'Botble\WachatNotification\Http\Controllers',
    'middleware' => ['web', 'core', 'auth'],
    'prefix' => BaseHelper::getAdminPrefix(),
], function (): void {
    Route::group([
        'prefix' => 'settings/wachat-notification',
        'as' => 'wachat-notification.settings.',
        'permission' => 'wachat-notification.settings',
    ], function (): void {
        Route::get('/', [WachatNotificationSettingsController::class, 'edit'])->name('edit');
        Route::put('/', [WachatNotificationSettingsController::class, 'update'])->name('update');
        Route::post('/test', [WachatNotificationSettingsController::class, 'test'])->name('test');
    });
});
