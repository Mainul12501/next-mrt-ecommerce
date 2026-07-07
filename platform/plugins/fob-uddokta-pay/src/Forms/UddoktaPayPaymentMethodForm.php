<?php

namespace FriendsOfBotble\UddoktaPay\Forms;

use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Payment\Forms\PaymentMethodForm;
use FriendsOfBotble\UddoktaPay\Providers\UddoktaPayServiceProvider;

class UddoktaPayPaymentMethodForm extends PaymentMethodForm
{
    public function setup(): void
    {
        parent::setup();

        $moduleName = UddoktaPayServiceProvider::MODULE_NAME;

        $this
            ->paymentId($moduleName)
            ->paymentName('UddoktaPay')
            ->paymentDescription(trans('plugins/payment::payment.payment_with', ['paymentType' => 'UddoktaPay']))
            ->paymentLogo(url('vendor/core/plugins/uddokta-pay/images/uddokta-pay.png'))
            ->paymentUrl('https://uddoktapay.com')
            ->add(
                get_payment_setting_key('api_key', $moduleName),
                TextField::class,
                TextFieldOption::make()
                    ->label(__('API key'))
                    ->value(get_payment_setting('api_key', $moduleName))
                    ->placeholder('xxxxxxxxxxxxxxxx')
                    ->helperText(__('Your UddoktaPay API key (RT-UDDOKTAPAY-API-KEY).'))
                    ->toArray()
            )
            ->add(
                get_payment_setting_key('environment', $moduleName),
                SelectField::class,
                SelectFieldOption::make()
                    ->label(__('Environment'))
                    ->choices([
                        'test' => __('Test'),
                        'production' => __('Production'),
                    ])
                    ->selected(get_payment_setting('environment', $moduleName, 'production'))
                    ->toArray()
            )
            ->add(
                get_payment_setting_key('base_url', $moduleName),
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Base URL'))
                    ->value(get_payment_setting('base_url', $moduleName))
                    ->placeholder('https://pay.example.com/api')
                    ->helperText(__('Your UddoktaPay production API base URL. Used when environment is set to Production.'))
                    ->toArray()
            );
    }
}
