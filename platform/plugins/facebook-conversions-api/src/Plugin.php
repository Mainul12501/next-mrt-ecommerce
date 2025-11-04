<?php

namespace Botble\FacebookConversionsApi;

use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove(): void
    {
        // Remove settings when plugin is removed
        setting()->delete([
            'facebook_conversions_api_enabled',
            'facebook_conversions_api_pixel_id',
            'facebook_conversions_api_access_token',
            'facebook_conversions_api_test_event_code',
        ])->save();
    }
}
