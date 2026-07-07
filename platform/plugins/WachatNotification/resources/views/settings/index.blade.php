@extends(BaseHelper::getAdminMasterLayoutTemplate())

@section('content')
    @php
        $orderEvents = [
            'order_created' => [
                'group' => 'order',
                'label' => 'New Order',
                'toggle' => 'Send notification when order is created',
                'default' => "Hi {customer_name}, thank you for your order #{order_code}.\n\nTotal: {amount}\nStatus: {status}",
            ],
            'order_confirmed' => [
                'group' => 'order',
                'label' => 'Order Confirmed',
                'toggle' => 'Send notification when order is confirmed',
                'default' => "Hi {customer_name}, your order #{order_code} has been confirmed.\n\nTotal: {amount}",
            ],
            'payment_confirmed' => [
                'group' => 'payment',
                'label' => 'Payment Confirmed',
                'toggle' => 'Send notification when payment is confirmed',
                'default' => "Hi {customer_name}, we have received payment for order #{order_code}.\n\nTotal: {amount}",
            ],
            'order_completed' => [
                'group' => 'order',
                'label' => 'Order Completed',
                'toggle' => 'Send notification when order is completed',
                'default' => "Hi {customer_name}, your order #{order_code} has been completed.\n\nThank you for shopping with {site_title}.",
            ],
            'order_cancelled' => [
                'group' => 'order',
                'label' => 'Order Cancelled',
                'toggle' => 'Send notification when order is cancelled',
                'default' => "Hi {customer_name}, your order #{order_code} has been cancelled.\n\nReason: {cancel_reason_description}",
            ],
            'order_returned' => [
                'group' => 'order',
                'label' => 'Order Returned',
                'toggle' => 'Send notification when order is returned',
                'default' => "Hi {customer_name}, your return request for order #{order_code} has been received.",
            ],
            'shipping_status_changed' => [
                'group' => 'shipping',
                'label' => 'Shipping Status Changed',
                'toggle' => 'Send notification when shipping status changes',
                'default' => "Hi {customer_name}, shipping status for order #{order_code} is now {shipping_status}.\n\nTracking: {tracking_id} {tracking_link}",
            ],
        ];

        $eventGroups = [
            'order' => 'Order',
            'payment' => 'Payment',
            'shipping' => 'Shipping',
        ];
    @endphp

    <div class="row">
        <div class="col-md-8">
            <x-core::card>
                <x-core::card.header>
                    <x-core::card.title>
                        {{ trans('plugins/wachat-notification::wachat-notification.settings.title') }}
                    </x-core::card.title>
                </x-core::card.header>

                <x-core::card.body>
                    <p class="text-muted">
                        {{ trans('plugins/wachat-notification::wachat-notification.settings.description') }}
                    </p>

                    <form method="POST" action="{{ route('wachat-notification.settings.update') }}">
                        @csrf
                        @method('PUT')

                        <div class="mb-3">
                            <label class="form-check form-switch">
                                <input type="hidden" name="enabled" value="0">
                                <input class="form-check-input" type="checkbox" name="enabled" value="1" @checked(wachat_notification_setting('enabled', false))>
                                <span class="form-check-label">Enable Wachat notifications</span>
                            </label>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Wachat API Key</label>
                            <input type="password" class="form-control" name="api_key" value="" placeholder="{{ wachat_notification_setting('api_key') ? 'Leave blank to keep current API key' : 'Paste Wachat API key' }}">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Wachat Instance Name</label>
                            <input type="text" class="form-control" name="instance_name" value="{{ old('instance_name', wachat_notification_setting('instance_name')) }}" required>
                            <small class="form-hint">Use the display/API instance name from Wachat.</small>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Admin Phone Number</label>
                            <input type="text" class="form-control" name="admin_phone" value="{{ old('admin_phone', wachat_notification_setting('admin_phone')) }}" placeholder="628123456789">
                            <small class="form-hint">Optional. The admin will receive a copy of order notifications.</small>
                        </div>

                        <x-core::card class="mb-3">
                            <x-core::card.header>
                                <x-core::card.title>Order Notification Events</x-core::card.title>
                            </x-core::card.header>
                            <x-core::card.body>
                                <ul class="nav nav-pills mb-3" role="tablist">
                                    @foreach($eventGroups as $groupKey => $groupLabel)
                                        <li class="nav-item" role="presentation">
                                            <button
                                                class="nav-link @if($loop->first) active @endif"
                                                id="wachat-{{ $groupKey }}-tab"
                                                data-bs-toggle="tab"
                                                data-bs-target="#wachat-{{ $groupKey }}-events"
                                                type="button"
                                                role="tab"
                                                aria-controls="wachat-{{ $groupKey }}-events"
                                                aria-selected="{{ $loop->first ? 'true' : 'false' }}"
                                            >
                                                {{ $groupLabel }}
                                            </button>
                                        </li>
                                    @endforeach
                                </ul>

                                <div class="tab-content">
                                    @foreach($eventGroups as $groupKey => $groupLabel)
                                        <div
                                            class="tab-pane fade @if($loop->first) show active @endif"
                                            id="wachat-{{ $groupKey }}-events"
                                            role="tabpanel"
                                            aria-labelledby="wachat-{{ $groupKey }}-tab"
                                        >
                                            <div class="row">
                                                @foreach($orderEvents as $key => $event)
                                                    @continue($event['group'] !== $groupKey)

                                                    <div class="col-lg-6">
                                                        <div class="border rounded p-3 mb-3 h-100">
                                                            <label class="form-check form-switch mb-3">
                                                                <input type="hidden" name="notify_{{ $key }}" value="0">
                                                                <input class="form-check-input" type="checkbox" name="notify_{{ $key }}" value="1" @checked(wachat_notification_setting('notify_' . $key, true))>
                                                                <span class="form-check-label fw-medium">{{ $event['toggle'] }}</span>
                                                            </label>

                                                            <label class="form-label">{{ $event['label'] }} Template</label>
                                                            <textarea class="form-control" name="{{ $key }}_template" rows="5" required>{{ old($key . '_template', wachat_notification_setting($key . '_template', $event['default'])) }}</textarea>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </x-core::card.body>
                        </x-core::card>

                        <div class="mb-3">
                            <label class="form-label">Available Variables</label>
                            <div class="form-control-plaintext">
                                <code>{customer_name}</code>
                                <code>{customer_phone}</code>
                                <code>{customer_email}</code>
                                <code>{order_id}</code>
                                <code>{order_code}</code>
                                <code>{status}</code>
                                <code>{amount}</code>
                                <code>{cancel_reason}</code>
                                <code>{cancel_reason_description}</code>
                                <code>{shipping_status}</code>
                                <code>{previous_shipping_status}</code>
                                <code>{tracking_id}</code>
                                <code>{tracking_link}</code>
                                <code>{site_title}</code>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary">Save settings</button>
                    </form>
                </x-core::card.body>
            </x-core::card>
        </div>

        <div class="col-md-4">
            <x-core::card>
                <x-core::card.header>
                    <x-core::card.title>Send Test Message</x-core::card.title>
                </x-core::card.header>
                <x-core::card.body>
                    <form method="POST" action="{{ route('wachat-notification.settings.test') }}">
                        @csrf
                        <div class="mb-3">
                            <label class="form-label">Phone Number</label>
                            <input type="text" class="form-control" name="test_phone" placeholder="628123456789" required>
                        </div>
                        <button type="submit" class="btn btn-info">Send test</button>
                    </form>
                </x-core::card.body>
            </x-core::card>
        </div>
    </div>
@endsection
