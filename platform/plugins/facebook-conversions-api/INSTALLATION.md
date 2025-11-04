# Facebook Conversions API Plugin - Installation Guide

## Prerequisites

- PHP 8.1 or higher
- Laravel 10+
- The package `esign/laravel-conversions-api` is already installed in your root composer.json (version ^2.6.0)

## Installation Steps

### Step 1: Run Composer Update

The plugin will be auto-discovered by the `wikimedia/composer-merge-plugin` configured in your root composer.json.

```bash
composer update
```

This will:
- Register the plugin's autoloader
- Load the plugin's dependencies
- Make the plugin available to Laravel

### Step 2: Clear All Caches

```bash
php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan view:clear
```

### Step 3: Activate the Plugin

1. Log in to your **Admin Panel**
2. Navigate to **Plugins** (in the sidebar)
3. Find **Facebook Conversions API** in the plugin list
4. Click **Activate** button

### Step 4: Get Facebook API Credentials

#### Get Pixel ID:
1. Go to [Facebook Events Manager](https://business.facebook.com/events_manager2)
2. Select your Pixel or create a new one
3. Copy your **Pixel ID** (e.g., 123456789012345)

#### Generate Access Token:
1. In Facebook Events Manager, select your Pixel
2. Click **Settings** → **Conversions API**
3. Scroll to **Generate Access Token** section
4. Click **Generate Access Token**
5. Copy the token (it will be a long string)

#### Get Test Event Code (Optional):
1. In Facebook Events Manager
2. Click **Test Events** tab
3. Copy the **Test Event Code**
4. Use this only during testing to verify events

### Step 5: Configure the Plugin

1. In Admin Panel, go to **Ecommerce** → **Facebook Conversions API**
2. Fill in the settings:
   - **Enable Facebook Conversions API**: Toggle **ON**
   - **Facebook Pixel ID**: Paste your Pixel ID
   - **Facebook Access Token**: Paste your Access Token
   - **Test Event Code**: (Optional) Paste your Test Event Code
3. Click **Save Settings**

## Verification

### Test if Events are Being Sent

1. **Enable Test Mode** (optional):
   - Add Test Event Code in settings
   - Save settings

2. **Place a Test Order**:
   - Go to your website
   - Add products to cart
   - Complete checkout process
   - Place an order

3. **Check Logs**:
   ```bash
   tail -f storage/logs/laravel.log
   ```

   Look for entries like:
   ```
   [INFO] Facebook Conversions API InitiateCheckout event triggered
   [INFO] Facebook Conversions API event sent successfully
   [INFO] Facebook Conversions API Purchase event triggered
   ```

4. **Check Facebook Events Manager**:
   - Go to Facebook Events Manager
   - Click **Test Events** (if using Test Event Code)
   - Or click **Events** to see all events
   - You should see events appearing within 20 minutes

## Events Automatically Tracked

✅ **InitiateCheckout** - Triggered when checkout starts (OrderCreated event)
✅ **Purchase** - Triggered when order is completed (OrderPlacedEvent event)

## Optional: Manual Event Tracking

To track AddToCart or ViewContent events, you need to add manual calls in your code:

### Track Add to Cart
```php
use Botble\FacebookConversionsApi\Services\FacebookConversionsApiService;

$fbService = app(FacebookConversionsApiService::class);
$fbService->trackAddToCart($product, $quantity);
```

### Track View Content
```php
use Botble\FacebookConversionsApi\Services\FacebookConversionsApiService;

$fbService = app(FacebookConversionsApiService::class);
$fbService->trackViewContent($product);
```

## Troubleshooting

### Issue: Events not showing in Facebook

**Solution 1: Check if plugin is enabled**
- Admin → Ecommerce → Facebook Conversions API
- Ensure toggle is ON

**Solution 2: Verify credentials**
- Pixel ID is correct (numbers only)
- Access Token is valid and not expired
- If using Test Event Code, ensure it's correct

**Solution 3: Check logs**
```bash
tail -f storage/logs/laravel.log | grep "Facebook Conversions API"
```

Look for error messages.

**Solution 4: Clear cache**
```bash
php artisan cache:clear
php artisan config:clear
```

### Issue: Access Token Expired

Facebook Access Tokens can expire. To refresh:
1. Go to Facebook Events Manager
2. Settings → Conversions API
3. Generate a new Access Token
4. Update in plugin settings
5. Save

### Issue: Events delayed in Facebook

Facebook can take up to 20 minutes to display events. Be patient.

### Issue: Plugin not showing in menu

1. Check permissions:
   - Admin → Users → Roles
   - Edit your role
   - Check **Facebook Conversions API** permission
   - Save

2. Clear cache:
   ```bash
   php artisan cache:clear
   php artisan route:clear
   ```

## File Structure

```
platform/plugins/facebook-conversions-api/
├── config/
│   ├── permissions.php              # Admin permissions
│   └── facebook-conversions-api.php # Config file
├── routes/
│   └── web.php                      # Admin routes
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
├── README.md
└── INSTALLATION.md (this file)
```

## Uninstallation

To remove the plugin:

1. Go to **Plugins** in admin panel
2. Find **Facebook Conversions API**
3. Click **Deactivate**
4. Click **Remove**

All settings will be automatically deleted from the database.

## Support Resources

- [Facebook Conversions API Documentation](https://developers.facebook.com/docs/marketing-api/conversions-api)
- [Facebook Events Manager](https://business.facebook.com/events_manager2)
- [Package Documentation](https://github.com/esign/laravel-conversions-api)

## Settings Storage

All settings are stored in the `settings` table with these keys:
- `facebook_conversions_api_enabled`
- `facebook_conversions_api_pixel_id`
- `facebook_conversions_api_access_token`
- `facebook_conversions_api_test_event_code`

No vendor files are modified by this plugin.
