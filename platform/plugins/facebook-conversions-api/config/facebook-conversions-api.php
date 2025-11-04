<?php

return [
    'enabled' => env('FACEBOOK_CONVERSIONS_API_ENABLED', false),
    'access_token' => env('FACEBOOK_CONVERSIONS_API_ACCESS_TOKEN', ''),
    'pixel_id' => env('FACEBOOK_CONVERSIONS_API_PIXEL_ID', ''),
    'test_event_code' => env('FACEBOOK_CONVERSIONS_API_TEST_EVENT_CODE', ''),
];
