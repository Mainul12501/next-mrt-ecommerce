<?php

namespace Botble\FacebookConversionsApi\Http\Requests;

use Botble\Support\Http\Requests\Request;

class FacebookConversionsApiSettingRequest extends Request
{
    public function rules(): array
    {
        return [
            'facebook_conversions_api_enabled' => 'nullable|in:0,1',
            'facebook_conversions_api_pixel_id' => 'nullable|string|max:255',
            'facebook_conversions_api_access_token' => 'nullable|string',
            'facebook_conversions_api_test_event_code' => 'nullable|string|max:255',
        ];
    }
}
