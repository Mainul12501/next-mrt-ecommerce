# Facebook Conversions API Plugin

This plugin integrates Facebook Conversions API with your Laravel e-commerce platform to track customer events server-side.

## Features

- Track **Purchase** events when orders are completed
- Track **InitiateCheckout** events when checkout begins
- Track **AddToCart** events (ready for integration)
- Track **ViewContent** events (ready for integration)
- Admin settings panel for API configuration
- No vendor file modifications required
- Automatic event sending via Laravel events

## Installation

### 1. Install the Package

The `esign/laravel-conversions-api` package is already installed in your project.

### 2. Run Composer Update

```bash
composer update
```

This will auto-discover the plugin via the composer merge plugin.

### 3. Clear Cache

```bash
php artisan cache:clear
php artisan config:clear
php artisan route:clear
```

### 4. Activate the Plugin

Go to your admin panel:
- Navigate to **Plugins** in the admin menu
- Find **Facebook Conversions API**
- Click **Activate**

## Configuration

### Get Facebook Credentials

1. Go to [Facebook Events Manager](https://business.facebook.com/events_manager2)
2. Select your Pixel
3. Go to **Settings** → **Conversions API**
4. Generate an **Access Token**
5. Copy your **Pixel ID**

### Configure in Admin Panel

1. Log in to your admin panel
2. Navigate to **Ecommerce** → **Facebook Conversions API**
3. Fill in the settings:
   - **Enable Facebook Conversions API**: Toggle ON
   - **Facebook Pixel ID**: Enter your Pixel ID
   - **Facebook Access Token**: Enter your Access Token
   - **Test Event Code**: (Optional) For testing events
4. Click **Save Settings**

## Events Tracked

### Automatic Events

These events are automatically tracked:

#### 1. Purchase Event
- **Triggered**: When an order is completed (`OrderPlacedEvent`)
- **Data Sent**:
  - Customer information (email, name, phone, address)
  - Order details (order ID, currency, total amount)
  - Product information (IDs, names, quantities)

#### 2. InitiateCheckout Event
- **Triggered**: When checkout process begins (`OrderCreated`)
- **Data Sent**:
  - Customer information
  - Cart details
  - Product information

### Manual Events (Ready for Integration)

These methods are available in the service but need manual integration:

#### 3. AddToCart Event
```php
use Botble\FacebookConversionsApi\Services\FacebookConversionsApiService;

$fbService = app(FacebookConversionsApiService::class);
$fbService->trackAddToCart($product, $quantity);
```

#### 4. ViewContent Event
```php
use Botble\FacebookConversionsApi\Services\FacebookConversionsApiService;

$fbService = app(FacebookConversionsApiService::class);
$fbService->trackViewContent($product);
```

## File Structure

```
platform/plugins/facebook-conversions-api/
├── config/
│   ├── permissions.php                    # Admin permissions
│   └── facebook-conversions-api.php       # Plugin config
├── routes/
│   └── web.php                            # Admin routes
├── src/
│   ├── Forms/
│   │   └── FacebookConversionsApiSettingForm.php
│   ├── Http/
│   │   ├── Controllers/
│   │   │   └── FacebookConversionsApiController.php
│   │   └── Requests/
│   │       └── FacebookConversionsApiSettingRequest.php
│   ├── Listeners/
│   │   ├── SendPurchaseEventListener.php
│   │   └── SendInitiateCheckoutEventListener.php
│   ├── Providers/
│   │   └── FacebookConversionsApiServiceProvider.php
│   ├── Services/
│   │   └── FacebookConversionsApiService.php
│   └── Plugin.php
├── composer.json
├── plugin.json
└── README.md
```

## Testing

### Test Event Code

To test if events are being sent correctly:

1. Go to Facebook Events Manager
2. Click on **Test Events**
3. Copy the **Test Event Code**
4. Add it to the plugin settings in admin panel
5. Perform a test purchase on your site
6. Check Facebook Events Manager to see if the event appears

### Logging

All events are logged to Laravel's log file. Check `storage/logs/laravel.log` for:
- Successful event sending
- Error messages
- Event details

Example log entries:
```
[INFO] Facebook Conversions API event sent successfully
[INFO] Facebook Conversions API Purchase event triggered
[ERROR] Facebook Conversions API error
```

## Troubleshooting

### Events Not Showing in Facebook

1. **Check if plugin is enabled**
   - Admin → Ecommerce → Facebook Conversions API
   - Ensure toggle is ON

2. **Verify credentials**
   - Pixel ID is correct
   - Access Token is valid (tokens can expire)
   - Test Event Code (if testing)

3. **Check logs**
   ```bash
   tail -f storage/logs/laravel.log
   ```

4. **Clear cache**
   ```bash
   php artisan cache:clear
   php artisan config:clear
   ```

### Access Token Expired

If you see authentication errors in logs:
1. Go to Facebook Events Manager
2. Generate a new Access Token
3. Update in plugin settings
4. Save settings

## Permissions

The plugin adds a permission: `facebook-conversions-api.settings`

To grant access to other admin users:
1. Go to **Users** → **Roles**
2. Edit a role
3. Check **Facebook Conversions API** permission
4. Save

## Uninstallation

1. Go to **Plugins** in admin panel
2. Find **Facebook Conversions API**
3. Click **Deactivate**
4. Click **Remove**

All plugin settings will be automatically deleted from the database.

## Support

For issues or questions:
- Check Laravel logs: `storage/logs/laravel.log`
- Facebook Events Manager for event verification
- [Facebook Conversions API Documentation](https://developers.facebook.com/docs/marketing-api/conversions-api)

## Version

- **Version**: 1.0.0
- **Requires**: PHP 8.1+, Laravel 10+
- **Package**: esign/laravel-conversions-api ^2.6.0
