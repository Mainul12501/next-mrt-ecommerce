@php
    use Illuminate\Support\Arr;
@endphp

<div class="alert alert-success" role="alert">
    @if ($transactionId = Arr::get($payment, 'transaction_id'))
        <p class="mb-2">{{ trans('plugins/payment::payment.payment_id') }}: <strong>{{ $transactionId }}</strong></p>
    @endif

    @if ($status = Arr::get($payment, 'status'))
        <p class="mb-2">{{ trans('plugins/payment::payment.status') }}: <strong>{{ $status }}</strong></p>
    @endif

    @if ($method = Arr::get($payment, 'payment_method'))
        <p class="mb-2">{{ trans('plugins/payment::payment.payment_method') }}: <strong>{{ $method }}</strong></p>
    @endif

    @if ($senderNumber = Arr::get($payment, 'sender_number'))
        <p class="mb-2">{{ __('Sender number') }}: <strong>{{ $senderNumber }}</strong></p>
    @endif

    @if ($amount = Arr::get($payment, 'amount'))
        <p class="mb-2">{{ trans('plugins/payment::payment.amount') }}: <strong>{{ $amount }}</strong></p>
    @endif

    @if ($payerName = Arr::get($payment, 'full_name'))
        <p class="mb-2">{{ trans('plugins/payment::payment.payer_name') }}: {{ $payerName }}</p>
    @endif

    @if ($email = Arr::get($payment, 'email'))
        <p class="mb-0">{{ trans('plugins/payment::payment.email') }}: {{ $email }}</p>
    @endif
</div>
