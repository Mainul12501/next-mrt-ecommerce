<?php

namespace Botble\WachatNotification;

use Botble\PluginManagement\Abstracts\PluginOperationAbstract;
use Botble\Setting\Facades\Setting;

class Plugin extends PluginOperationAbstract
{
    public static function activate(): void
    {
        Setting::set('wachat_notification_enabled', false);
        Setting::set('wachat_notification_api_url', 'https://app.wachat.net');
        Setting::set('wachat_notification_notify_order_created', true);
        Setting::set('wachat_notification_notify_order_confirmed', true);
        Setting::set('wachat_notification_notify_payment_confirmed', true);
        Setting::set('wachat_notification_notify_order_completed', true);
        Setting::set('wachat_notification_notify_order_cancelled', true);
        Setting::set('wachat_notification_notify_order_returned', true);
        Setting::set('wachat_notification_notify_shipping_status_changed', true);
        Setting::set('wachat_notification_order_created_template', "Hi {customer_name}, thank you for your order #{order_code}.\n\nTotal: {amount}\nStatus: {status}");
        Setting::set('wachat_notification_order_confirmed_template', "Hi {customer_name}, your order #{order_code} has been confirmed.\n\nTotal: {amount}");
        Setting::set('wachat_notification_payment_confirmed_template', "Hi {customer_name}, we have received payment for order #{order_code}.\n\nTotal: {amount}");
        Setting::set('wachat_notification_order_completed_template', "Hi {customer_name}, your order #{order_code} has been completed.\n\nThank you for shopping with {site_title}.");
        Setting::set('wachat_notification_order_cancelled_template', "Hi {customer_name}, your order #{order_code} has been cancelled.\n\nReason: {cancel_reason_description}");
        Setting::set('wachat_notification_order_returned_template', "Hi {customer_name}, your return request for order #{order_code} has been received.");
        Setting::set('wachat_notification_shipping_status_changed_template', "Hi {customer_name}, shipping status for order #{order_code} is now {shipping_status}.\n\nTracking: {tracking_id} {tracking_link}");
        Setting::save();
    }

    public static function deactivate(): void
    {
    }

    public static function remove(): void
    {
        Setting::delete([
            'wachat_notification_enabled',
            'wachat_notification_api_url',
            'wachat_notification_api_key',
            'wachat_notification_instance_name',
            'wachat_notification_admin_phone',
            'wachat_notification_notify_order_created',
            'wachat_notification_notify_order_confirmed',
            'wachat_notification_notify_payment_confirmed',
            'wachat_notification_notify_order_completed',
            'wachat_notification_notify_order_cancelled',
            'wachat_notification_notify_order_returned',
            'wachat_notification_notify_shipping_status_changed',
            'wachat_notification_order_created_template',
            'wachat_notification_order_confirmed_template',
            'wachat_notification_payment_confirmed_template',
            'wachat_notification_order_completed_template',
            'wachat_notification_order_cancelled_template',
            'wachat_notification_order_returned_template',
            'wachat_notification_shipping_status_changed_template',
        ]);
    }
}
