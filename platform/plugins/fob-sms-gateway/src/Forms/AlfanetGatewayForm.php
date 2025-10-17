<?php

namespace FriendsOfBotble\Sms\Forms;

use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\TextField;

class AlfanetGatewayForm extends SmsGatewayForm
{
    protected array $sensitiveFields = [
        'api_key',
    ];

    public function setup(): void
    {
        parent::setup();

        $this
            ->add(
                'api_key',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/fob-sms-gateway::alfanet.api_key'))
                    ->helperText(trans('plugins/fob-sms-gateway::alfanet.api_key_help'))
                    ->required()
            );
    }
}
