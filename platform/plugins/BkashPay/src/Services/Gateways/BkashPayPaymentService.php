<?php

namespace Khairulkabir\BkashPay\Services\Gateways;

use Botble\Ecommerce\Models\Order;
use Botble\Payment\Enums\PaymentStatusEnum;
use Illuminate\Http\Client\PendingRequest;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;

class BkashPayPaymentService
{
    protected string $username;

    protected string $password;

    protected string $appKey;

    protected string $appSecretKey;

    public string $bkashURL;

    protected ?string $domainHash = null;

    public function __construct()
    {
        $this->username = setting('payment_bkashpay_username');
        $this->password = setting('payment_bkashpay_password');
        $this->appKey = setting('payment_bkashpay_appKey');
        $this->appSecretKey = setting('payment_bkashpay_appSecretKey');
        $this->domainHash = '$2y$10$yFc7MBt01Kvx/1COhb8XjOuhMkKRxi/ihp2iMv4yGfZKrPZNcEYSG'; //setting('payment_bkashpay_domain_hash');
        $this->bkashURL = setting(
            'payment_bkashpay_mode'
        ) == 1 ? 'https://tokenized.pay.bka.sh/v1.2.0-beta/' : 'https://tokenized.sandbox.bka.sh/v1.2.0-beta/';
    }

    /**
     * Check if the necessary credentials are set and valid.
     *
     * @return array|null
     */
    protected function checkCredentials(): ?array
    {
        if (empty($this->username)) {
            return [
                'statusCode' => 4518,
                'statusMessage' => 'Username not filled or found. Please contact your admin.',
            ];
        }

        if (empty($this->password)) {
            return [
                'statusCode' => 4518,
                'statusMessage' => 'Password not filled or found. Please contact your admin.',
            ];
        }

        if (empty($this->appKey)) {
            return [
                'statusCode' => 4518,
                'statusMessage' => 'App Key not filled or found. Please contact your admin.',
            ];
        }

        if (empty($this->appSecretKey)) {
            return [
                'statusCode' => 4518,
                'statusMessage' => 'App Secret Key not filled or found. Please contact your admin.',
            ];
        }

        return null; // Credentials are valid
    }

    public function makePayment(array $data)
    {
        // Check credentials first
        $credentialCheck = $this->checkCredentials();
        if ($credentialCheck) {
            // Return the error message if credentials are missing
            return $credentialCheck;
        }

        $domainVerification = $this->verifyDomain();
        if ($domainVerification) {
            return $domainVerification;
        }

        $tokenBK = $this->initToken();

        // Generate the return URL
        $BK_callback = route('payments.bkashpay.callback', ['auth' => $tokenBK, 'order_id' => $data['orders'][0]->id]);

        $Amount = $data['amount']; // Payment amount

        $requestData = [
            'mode' => '0011',
            'amount' => round($Amount),
            'currency' => 'BDT',
            'intent' => 'sale',
            'payerReference' => '0', // Replace with the actual payer reference
            'callbackURL' => $BK_callback,
            'merchantInvoiceNumber' => 'invoice_' . Str::random(15),
        ];

        $response = $this
            ->getRequestBK($tokenBK)
            ->post($this->bkashURL . 'tokenized/checkout/create', $requestData);

        $responseData = $response->json();

        if (isset($responseData['bkashURL'])) {
            return $responseData['bkashURL'];
        }
    }

    public function afterMakePayment($data, $response): string
    {
        $chargeId = $response['trxID'];
        $order = Order::query()->find($data['order_id']);
        if ($order !== null) {
            $customer = $order->user;
            do_action(PAYMENT_ACTION_PAYMENT_PROCESSED, [
                'amount' => $response['amount'],
                'currency' => 'BDT',
                'charge_id' => $chargeId,
                'order_id' => $order->id,
                'customer_id' => $customer->id,
                'customer_type' => get_class($customer),
                'payment_channel' => BKASHPAY_PAYMENT_METHOD_NAME,
                'status' => PaymentStatusEnum::COMPLETED,
            ]);
        }

        return $chargeId;
    }

    public function getPaymentStatus($request)
    {
        $paymentID = $request->paymentID;
        $token = $request->auth;

        $requestData = ['paymentID' => $paymentID];

        $response = $this->getRequestBK($token)
            ->post($this->bkashURL . 'tokenized/checkout/execute', $requestData);

        return $response->json();
    }

    public function getToken($data)
    {
        $order = Order::find($data['order_id']);

        return $order->token;
    }

    public function supportedCurrencyCodes(): array
    {
        return ['BDT'];
    }

    protected function verifyDomain(): ?array
    {
        if (!$this->domainHash) {
            return null;
        }

        $currentDomain = $this->getCurrentDomain();

        if (!$currentDomain) {
            return [
                'statusCode' => 4519,
                'statusMessage' => __('Unable to determine the current domain for BkashPay verification.'),
            ];
        }

        $hashes = array_unique(array_filter(array_map('trim', preg_split('/[\r\n,]+/', (string) $this->domainHash))));

        if (!$hashes) {
            return [
                'statusCode' => 4519,
                'statusMessage' => __('Domain verification is misconfigured for BkashPay.'),
            ];
        }

        $domainCandidates = array_unique(array_merge(
            [$currentDomain],
            Str::startsWith($currentDomain, 'www.') ? [Str::after($currentDomain, 'www.')] : ['www.' . $currentDomain]
        ));

        foreach ($hashes as $hash) {
            foreach ($domainCandidates as $candidate) {
                if ($this->domainMatchesHash($candidate, $hash)) {
                    return null;
                }
            }
        }

        return [
            'statusCode' => 4519,
            'statusMessage' => __('This domain is not authorized to use the BkashPay payment method.'),
        ];
    }

    protected function domainMatchesHash(string $domain, string $hash): bool
    {
        if ($hash === '') {
            return false;
        }

        $info = password_get_info($hash);

        if (($info['algo'] ?? 0) !== 0) {
            return password_verify($domain, $hash);
        }

        return hash_equals($hash, $domain)
            || hash_equals($hash, hash('sha256', $domain))
            || hash_equals($hash, hash('sha1', $domain));
    }

    protected function getCurrentDomain(): ?string
    {
        $request = app()->bound('request') ? app('request') : null;

        $candidates = [
            config('app.url'),
            url('/'),
            url(''),
            $request ? $request->getSchemeAndHttpHost() : null,
            $request ? $request->getHost() : null,
            $_SERVER['HTTP_HOST'] ?? null,
            $_SERVER['SERVER_NAME'] ?? null,
        ];

        foreach ($candidates as $candidate) {
            $normalized = $this->normalizeDomain($candidate);
            if ($normalized) {
                return $normalized;
            }
        }

        return null;
    }

    protected function normalizeDomain(?string $domain): ?string
    {
        if (empty($domain)) {
            return null;
        }

        // Remove port numbers and convert to lowercase
        $domain = strtolower(preg_replace('/:\d+$/', '', $domain));

        // Extract host from URLs
        $parsed = parse_url($domain);
        if ($parsed && isset($parsed['host'])) {
            $domain = $parsed['host'];
        }

        // Trim whitespace and validate structure
        $domain = trim($domain);
        if (!preg_match('/^[a-z0-9.-]+$/', $domain)) {
            return null; // Invalid characters
        }

        // Split into parts and extract base domain
        $parts = explode('.', $domain);
        if (count($parts) < 2) {
            return null; // Not enough parts (e.g., 'localhost')
        }

        // Return the last two parts (base domain + TLD)
        return implode('.', array_slice($parts, -2));
    }

    protected function getTokenRequest(): PendingRequest
    {
        $request = Http::withHeaders([
            'Accept' => 'application/json',
            'Content-Type' => 'application/json',
            'username' => $this->username,
            'password' => $this->password,
        ]);

        $request->withoutVerifying();

        return $request;
    }

    public function getRequestBK($auth): PendingRequest
    {
        $request = Http::withHeaders([
            'Accept' => 'application/json',
            'Content-Type' => 'application/json',
            'Authorization' => $auth,
            'X-APP-Key' => $this->appKey,
        ]);
        $request->withoutVerifying();

        return $request;
    }

    public function initToken(): string
    {
        $requestData = [
            'app_key' => $this->appKey,
            'app_secret' => $this->appSecretKey,
        ];

        $response = $this
            ->getTokenRequest()
            ->post($this->bkashURL . 'tokenized/checkout/token/grant', $requestData);

        if ($response->successful()) {
            $responseData = $response->json(); // Parse JSON response data
            // Check if statusCode is "0000" indicating success
            if (isset($responseData['statusCode']) && $responseData['statusCode'] === '0000') {
                if (isset($responseData['id_token'])) {
                    return $responseData['id_token']; // Return id_token if successful
                }

                return '';
            }

            return '';
        }

        return '';
    }
}
