<?php

namespace Botble\WachatNotification\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Setting\Facades\Setting;
use Botble\WachatNotification\Services\WachatApiService;
use Illuminate\Http\Request;

class WachatNotificationSettingsController extends BaseController
{
    public const ORDER_EVENTS = [
        'order_created',
        'order_confirmed',
        'payment_confirmed',
        'order_completed',
        'order_cancelled',
        'order_returned',
        'shipping_status_changed',
    ];

    public function edit()
    {
        page_title()->setTitle(trans('plugins/wachat-notification::wachat-notification.settings.title'));

        return view('plugins/wachat-notification::settings.index');
    }

    public function update(Request $request)
    {
        $data = $request->validate([
            'enabled' => ['nullable', 'boolean'],
            'api_key' => ['nullable', 'string'],
            'instance_name' => ['required', 'string'],
            'admin_phone' => ['nullable', 'string'],
        ]);

        $settings = [
            'enabled' => $request->boolean('enabled'),
            'api_url' => WachatApiService::DEFAULT_API_URL,
            'instance_name' => $data['instance_name'],
            'admin_phone' => $data['admin_phone'] ?? '',
        ];

        foreach (self::ORDER_EVENTS as $event) {
            $request->validate([
                'notify_' . $event => ['nullable', 'boolean'],
                $event . '_template' => ['required', 'string'],
            ]);

            $settings['notify_' . $event] = $request->boolean('notify_' . $event);
            $settings[$event . '_template'] = (string) $request->input($event . '_template');
        }

        if (filled($data['api_key'] ?? null)) {
            $settings['api_key'] = $data['api_key'];
        }

        foreach ($settings as $key => $value) {
            Setting::set('wachat_notification_' . $key, $value);
        }

        Setting::save();

        return redirect()
            ->route('wachat-notification.settings.edit')
            ->with('success_msg', trans('core/base::notices.update_success_message'));
    }

    public function test(Request $request, WachatApiService $wachat)
    {
        $data = $request->validate([
            'test_phone' => ['required', 'string'],
        ]);

        $result = $wachat->sendText($data['test_phone'], 'This is a test WhatsApp notification from Wachat Botble plugin.');

        if (! ($result['success'] ?? false)) {
            return redirect()
                ->route('wachat-notification.settings.edit')
                ->with('error_msg', $result['error'] ?? 'Failed to send test message.');
        }

        return redirect()
            ->route('wachat-notification.settings.edit')
            ->with('success_msg', 'Test message sent successfully.');
    }
}
