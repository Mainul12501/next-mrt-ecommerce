<x-plugins-payment::payment-method
    :name="$moduleName"
    :label="get_payment_setting('name', $moduleName, trans('plugins/payment::payment.pay_online_via', ['name' => 'UddoktaPay']))"
    payment-name="UddoktaPay"
/>
