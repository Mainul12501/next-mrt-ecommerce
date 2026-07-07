<?php

namespace FriendsOfBotble\UddoktaPay\Services;

use Botble\Ecommerce\Repositories\Interfaces\OrderReturnInterface;
use Botble\Payment\Repositories\Interfaces\PaymentInterface;
use Exception;

class UddoktaPayPaymentService
{
    public function getSupportRefundOnline(): bool
    {
        return true;
    }

    public function refundOrder(string $paymentId, float $amount): array
    {
        try {
            $payment = app(PaymentInterface::class)->getFirstBy(['charge_id' => $paymentId]);

            if (! $payment) {
                return [
                    'error' => true,
                    'message' => __('Payment not found.'),
                ];
            }

            $orderReturn = app(OrderReturnInterface::class)->getFirstBy(['order_id' => $payment->order_id]);

            if (! $orderReturn) {
                return [
                    'error' => true,
                    'message' => __('Order return not found.'),
                ];
            }

            $data = [
                'transaction_id' => $payment->charge_id,
                'payment_method' => $payment->payment_channel,
                'amount' => $amount,
                'product_name' => __('Refund order #:order_id', ['order_id' => $payment->order_id]),
                'reason' => $orderReturn->reason,
            ];

            return (new UddoktaPayService())->refundOrder($data);
        } catch (Exception $exception) {
            return [
                'error' => true,
                'message' => $exception->getMessage(),
            ];
        }
    }

    public function getPaymentDetails(string $paymentId): array
    {
        try {
            return (new UddoktaPayService())->requeryTransaction($paymentId);
        } catch (Exception $exception) {
            return [
                'error' => true,
                'message' => $exception->getMessage(),
            ];
        }
    }
}
