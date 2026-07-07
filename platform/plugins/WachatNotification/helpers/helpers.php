<?php

if (! function_exists('wachat_notification_setting')) {
    function wachat_notification_setting(string $key, mixed $default = null): mixed
    {
        return setting('wachat_notification_' . $key, $default);
    }
}

if (! function_exists('wachat_notification_enabled')) {
    function wachat_notification_enabled(): bool
    {
        return (bool) wachat_notification_setting('enabled', false);
    }
}
