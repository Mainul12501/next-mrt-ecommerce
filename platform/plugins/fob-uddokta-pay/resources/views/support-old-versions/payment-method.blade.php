@php
    $name = $moduleName;
    $isSelected = PaymentMethods::getSelectingMethod() === $name;
    $id = sprintf('payment-%s', $name);
@endphp

<li class="list-group-item">
    <input
        class="magic-radio js_payment_method"
        id="{{ $id }}"
        name="payment_method"
        type="radio"
        value="{{ $name }}"
        @checked($isSelected)
    >
    <label for="{{ $id }}" class="form-label fw-medium">
        {{ get_payment_setting('name', $name, trans('plugins/payment::payment.pay_online_via', ['name' => 'UddoktaPay'])) }}
    </label>

    <div @class(['payment_collapse_wrap collapse mt-1', 'show' => $isSelected])>
        <p class="text-muted">{!! BaseHelper::clean(get_payment_setting('description', $name)) !!}</p>
    </div>
</li>
