# Wachat Notification for Botble CMS

Integrate your Botble CMS store with Wachat and automatically deliver real-time WhatsApp notifications to customers throughout the entire order lifecycle.

Wachat Notification enables seamless WhatsApp messaging through the Wachat API, allowing ecommerce businesses to send instant order updates, payment confirmations, shipping notifications, and other transactional messages directly to customers' WhatsApp accounts. The plugin is designed for fast deployment, flexible message templates, and reliable delivery using your connected Wachat WhatsApp instance.

## Key Features

* Real-time WhatsApp notifications for ecommerce events
* Automatic order status updates
* Payment confirmation alerts
* Shipping and delivery notifications
* Customizable message templates with dynamic variables
* Secure API authentication using Wachat API Key
* Support for multiple WhatsApp instances
* Easy integration with Botble Ecommerce
* Lightweight and performance-friendly architecture
* Admin-friendly configuration panel

## Why Wachat?

Wachat provides a powerful WhatsApp communication platform that helps businesses automate customer engagement through WhatsApp messaging, API integrations, automation workflows, AI chatbots, broadcasts, and real-time notifications. The platform is designed to help businesses improve customer experience while reducing manual communication efforts.

With this plugin, Botble CMS stores can instantly notify customers about order activity, ensuring faster communication, better customer satisfaction, and improved order transparency.


## Requirements

Before installing this plugin, make sure you have:

- Botble CMS 7.3+
- PHP 8.2+
- An active Wachat account
- Wachat API Key
- Connected Wachat WhatsApp Instance

### Get Wachat Credentials

To obtain your API Key and Instance Name:

1. Create or sign in to your Wachat account at https://www.wachat.net
2. Connect your WhatsApp device in the Wachat Dashboard.
3. Copy your **API Key** from the API settings page.
4. Copy your **Instance Name** from your connected WhatsApp instance.
5. Use these credentials in the plugin settings.

> Don't have a Wachat account yet? Register at https://www.wachat.net and connect your WhatsApp device to start sending automated notifications.

## Installation

1. Copy this folder to:

   ```text
   platform/plugins/wachat-notification
   ```

2. Clear/cache reload:

   ```bash
   php artisan cache:clear
   php artisan config:clear
   php artisan route:clear
   ```

3. Activate the plugin in Botble Admin:

   ```text
   Plugins -> Installed Plugins -> Wachat Notification -> Activate
   ```

4. Open settings:

   ```text
   Wachat Notification
   ```

5. Fill:

   - Wachat API Key
   - Wachat Instance Name
   - Message templates

## Wachat API Endpoint

The plugin sends text messages to:

```text
POST https://app.wachat.net/api/v1/send/text
Authorization: Bearer YOUR_WACHAT_API_KEY
Content-Type: application/json
```

Payload:

```json
{
  "instanceName": "jakarta_store",
  "number": "628123456789",
  "message": "Your order has been created"
}
```

## Supported Ecommerce Notifications

The plugin listens for these Botble Ecommerce events:

- `Botble\Ecommerce\Events\OrderPlacedEvent`
- `Botble\Ecommerce\Events\OrderCreated`
- `Botble\Ecommerce\Events\OrderCreatedEvent`
- `Botble\Ecommerce\Events\OrderConfirmedEvent`
- `Botble\Ecommerce\Events\OrderPaymentConfirmedEvent`
- `Botble\Ecommerce\Events\OrderCompletedEvent`
- `Botble\Ecommerce\Events\OrderCancelledEvent`
- `Botble\Ecommerce\Events\OrderReturnedEvent`
- `Botble\Ecommerce\Events\ShippingStatusChanged`

Editable templates are available for:

- New order
- Order confirmed
- Payment confirmed
- Order completed
- Order cancelled
- Order returned
- Shipping status changed

If your Botble Ecommerce version uses different event class names, add them in:

```text
src/Providers/WachatNotificationServiceProvider.php
```

## Template Variables

- `{customer_name}`
- `{customer_phone}`
- `{customer_email}`
- `{order_id}`
- `{order_code}`
- `{status}`
- `{amount}`
- `{cancel_reason}`
- `{cancel_reason_description}`
- `{shipping_status}`
- `{previous_shipping_status}`
- `{tracking_id}`
- `{tracking_link}`
- `{site_title}`
