<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;

Route::get('/p', function (){
    return bcrypt('pranto@gmail.com');
});
Route::get('/reboot', function () {
    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('view:clear');
    file_put_contents(storage_path('logs/laravel.log'), '');
    Artisan::call('config:cache');
    Artisan::call('optimize');
    return '<center><h1>System Rebooted!</h1></center>';
});
Route::get('/clear-all-cache', function () {
    Artisan::call('optimize:clear');
    return redirect()->back()->with('success', 'Cache cleared successfully' );
})->name('clear-all-cache');

Route::get('/phpinfo', function () {
    phpinfo();
});

