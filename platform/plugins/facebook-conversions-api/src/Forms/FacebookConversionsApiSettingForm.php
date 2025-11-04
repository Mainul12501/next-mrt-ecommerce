<?php

namespace Botble\FacebookConversionsApi\Forms;

use Botble\Base\Forms\FieldOptions\OnOffFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\FieldOptions\TextareaFieldOption;
use Botble\Base\Forms\Fields\OnOffField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\Fields\TextareaField;
use Botble\Setting\Forms\SettingForm;

class FacebookConversionsApiSettingForm extends SettingForm
{
    public function setup(): void
    {
        parent::setup();

        $this
            ->setSectionTitle(trans('Facebook Conversions API Settings'))
            ->setSectionDescription(trans('Configure Facebook Conversions API to track e-commerce events'))
            ->setValidatorClass(\Botble\FacebookConversionsApi\Http\Requests\FacebookConversionsApiSettingRequest::class)
            ->add(
                'facebook_conversions_api_enabled',
                OnOffField::class,
                OnOffFieldOption::make()
                    ->label(trans('Enable Facebook Conversions API'))
                    ->value(setting('facebook_conversions_api_enabled', false))
                    ->toArray()
            )
            ->add(
                'facebook_conversions_api_pixel_id',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('Facebook Pixel ID'))
                    ->placeholder('Enter your Facebook Pixel ID')
                    ->value(setting('facebook_conversions_api_pixel_id', ''))
                    ->helperText(trans('Your Facebook Pixel ID (e.g., 123456789012345)'))
                    ->toArray()
            )
            ->add(
                'facebook_conversions_api_access_token',
                TextareaField::class,
                TextareaFieldOption::make()
                    ->label(trans('Facebook Access Token'))
                    ->placeholder('Enter your Facebook Conversions API Access Token')
                    ->value(setting('facebook_conversions_api_access_token', ''))
                    ->helperText(trans('Your Facebook Conversions API Access Token. Go to Events Manager > Settings > Conversions API to generate.'))
                    ->rows(3)
                    ->toArray()
            )
            ->add(
                'facebook_conversions_api_test_event_code',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('Test Event Code (Optional)'))
                    ->placeholder('Enter Test Event Code for testing')
                    ->value(setting('facebook_conversions_api_test_event_code', ''))
                    ->helperText(trans('Test Event Code for verifying events in Facebook Events Manager (optional)'))
                    ->toArray()
            );
    }
}
