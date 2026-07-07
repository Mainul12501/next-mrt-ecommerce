<?php

namespace FriendsOfBotble\UddoktaPay;

use Botble\PluginManagement\Abstracts\PluginOperationAbstract;
use Botble\Setting\Models\Setting;

class Plugin extends PluginOperationAbstract
{
    public static function remove(): void
    {
        Setting::query()
            ->whereIn('key', [
                'payment_uddokta_pay_name',
                'payment_uddokta_pay_description',
                'payment_uddokta_pay_api_key',
                'payment_uddokta_pay_environment',
                'payment_uddokta_pay_base_url',
                'payment_uddokta_pay_status',
            ])->delete();
    }
}
