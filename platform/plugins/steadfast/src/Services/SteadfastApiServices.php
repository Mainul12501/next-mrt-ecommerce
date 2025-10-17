<?php

namespace Khairulkabir\Steadfast\Services;

use Illuminate\Support\Facades\Http;
use Khairulkabir\Steadfast\Models\SteadfastsConfig;
use Illuminate\Http\Client\RequestException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;
use Carbon\Carbon;


define("LB_API_DEBUG", false);
if(!LB_API_DEBUG){
	@ini_set('display_errors', 0);
}


class SteadfastApiServices
{
    protected $baseUrl;
    protected $apiKey;
    protected $secretKey;
    protected $enable_disable;
    public $notes;


    private $product_id;
	private $api_url;
	private $api_key;
	private $api_language;
	private $current_version;
	private $verify_type;


    private $license_code;

    private $client_name;

    private $license_file;
    
    
 private $domainHash;
  private $licenseHash;

    public function __construct()
    {
        $config = SteadfastsConfig::firstOrNew(); // Assuming you have one record for configuration
        
        $this->baseUrl = "https://portal.packzy.com/api/v1";
        $this->apiKey = $config->api_key;
        $this->secretKey = $config->secret_key;
        $this->enable_disable = $config->enable_disable;
        $this->notes = $config->notes;



        $this->product_id = '415DA99F';
		$this->api_url = 'https://licensebox.mustafij.com/';
		$this->api_key = '553692CC9CF48DA38B7A';
		$this->api_language = 'english';
		$this->current_version = 'v1.0.0';
		$this->verify_type = 'non_envato';

        $this->client_name = $config->client_name;
        $this->license_code = $config->license_code;
        $this->license_file = $config->license_file;
        
         $this->domainHash  = '$2y$10$xmx6aBgoRA1DjCCccyvOJuZxtcXEV2EIYWu.EeztMWkJa/5dAgrcG';
         $this->licenseHash = '$2y$10$iqeg4H/09IH0SvCuSTNTbuz84UiocJJQpgKVKN/W/e4MdIf4UwjtO';

    } 

    // Make sure all requests are made without verifying SSL certificates
    protected function makeRequest($method, $url, $data = [])
    {
        $this->verify_license();
        
        if (!$this->enable_disable) {
            return [
                'status' => false,
                'message' => 'Please enable the API from settings',
            ];
        }

        if(!$this->apiKey){
            return [
                'status' => false,
                'message' => 'Please enter apiKey in settings',
            ];
        }

        if(!$this->secretKey){
            return [
                'status' => false,
                'message' => 'Please enter secretKey in settings',
            ];
        }

        
        return Http::withHeaders([
            'Api-Key' => $this->apiKey,
            'Secret-Key' => $this->secretKey,
            'Content-Type' => 'application/json',
        ])
        ->withoutVerifying() // Skip SSL certificate verification
        ->{$method}($this->baseUrl . $url, $data)
        ->json();
    }
    public function placeOrder($data)
    {
        return $this->makeRequest('post', '/create_order', $data);
    }
    public function bulkCreateOrders($data)
    {
        return $this->makeRequest('post', '/create_order/bulk-order', ['data' => json_encode($data)]);
    }
    public function checkDeliveryStatusByConsignmentId($id)
    {
        return $this->makeRequest('get', '/status_by_cid/' . $id);
    }

    public function checkDeliveryStatusByInvoiceId($id)
    {
        return $this->makeRequest('get', '/status_by_invoice/' . $id);
    }
    public function checkDeliveryStatusByTrackingCode($id)
    {
        return $this->makeRequest('get', '/status_by_trackingcode/' . $id);
    }
    public function getCurrentBalance()
    {
        return $this->makeRequest('get', '/get_balance');
    }
private function callApi()
{
     $fullUrl = $this->getServerUrl();
     $parsedUrl = parse_url($fullUrl);
     $host = $parsedUrl['host'] ?? '';
    
    if ($host) {
        $parts = explode('.', $host);
        $domain = count($parts) > 2 
            ? implode('.', array_slice($parts, -2)) 
            : $host;
    } else {
        $domain = '';
    }

    try {
        // 3. Validate Domain
        
        if (!password_verify($domain, $this->domainHash)) {
            // Disable license and remove license file
            SteadfastsConfig::updateOrCreate(
                ['id' => 1], // Adjust condition as necessary
                ['enable_disable' => 0, 'license_file' => null]
            );

            return [
                'status'  => false,
                'message' => 'Domain is not valid.',
            ];
        }

        // 4. Validate License Code
       
        if (!password_verify($this->license_code, $this->licenseHash)) {
            SteadfastsConfig::updateOrCreate(
                ['id' => 1], // Adjust condition as necessary
                ['enable_disable' => 0, 'license_file' => null]
            );

            return [
                'status'  => false,
                'message' => 'License code is not valid.',
            ];
        }

        // 5. If both validations pass, update the license_file and enable the license
        SteadfastsConfig::updateOrCreate(
            ['id' => 1], // Adjust condition as necessary
            [
                'license_file'   => $this->licenseHash, // Store the actual license code
                'enable_disable' => 1,                    // Ensure the license is enabled
            ]
        );

        // 7. Return success message as an array
        return [
            'status'  => true,
            'message' => 'Thank you for using Steadfast.',
        ];

    } catch (\Exception $e) {
        // 8. Handle exceptions by returning an array
        Log::error('API request exception:', ['message' => $e->getMessage()]);
        return [
            'status'  => false,
            'message' => 'An unexpected error occurred: ' . $e->getMessage(),
        ];
    }
}

    private function getServerUrl()
    {
        $protocol = ((isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === "on") || 
                     (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https'))
                    ? 'https://' : 'http://';

        return $protocol . ($_SERVER['SERVER_NAME'] ?? $_SERVER['HTTP_HOST'] ?? 'localhost') . ($_SERVER['REQUEST_URI'] ?? '/');
    }

    private function getServerIp(): array|bool|string
    {
        return getenv('SERVER_ADDR') ?? $_SERVER['SERVER_ADDR'] ?? $this->getIpFromThirdParty() ?? gethostbyname(gethostname());
    }

    private function getIpFromThirdParty()
    {
        try {
            $response = Http::timeout(5)->get('http://ipecho.net/plain');
            return $response->successful() ? trim($response->body()) : null;
        } catch (\Exception $e) {
            return null;
        }
    }


    public function startFreeTrial()
    {
        // try {
        //     // Data preparation
        //     $email = Auth::user() ? Auth::user()->email : 'guest@example.com'; // Default if no user is logged in
        //     $website = url()->current(); // Gets the current URL
        //     $ip = request()->ip();
        //     $date = now()->toIso8601String();
        //     $data = [
        //         'email' => $email,
        //         'website' => $website,
        //         'ip' => $ip,
        //         'date' => $date,
        //         'message' => 'Starting trial',
        //     ];
    
        //     $url = 'https://script.google.com/macros/s/AKfycbwsIxb0mlSoPy2dfL9HygjOJ8DdUJkhhIp7uy1pQwg4iWjAfNnZk4atN-zb4iZvRBls/exec';
    
        //     // Send HTTP request
        //     Http::withoutVerifying()->post($url, $data);
        // } catch (\Exception $e) {
           
        // }




        // $sessionKey = "55f8025ed1c2cba";
        // $SsessionKey = "55f87825edkc2cba";
        // $today = date('d-m-Y');
        // if (session_status() === PHP_SESSION_NONE) {
        //     session_start();
        // }

        // // Check if the session key already exists
        // if (!empty($_SESSION[$SsessionKey])) {
        //     $expiryDate = $_SESSION[$SsessionKey];
        //     if ($expiryDate && strtotime($expiryDate) >= strtotime($today)) {
        //          // Update or create the SteadfastsConfig record
        //             SteadfastsConfig::updateOrCreate(
        //                 [], // No condition, because we want to update or create the first and only record
        //                 [
        //                     'enable_disable' => 1, // Always set to 1
        //                     'license_file' => $SsessionKey, // Set license file
        //                     'client_name' => '55f87825edkc2cba', // Set client name
        //                     'license_code' => 'free_trial',
        //                 ]
        //             );
        
        //         return response()->json([
        //             'status' => false,
        //             'message' => 'You already have an active free trial ending on ' . $expiryDate,
        //         ]);
        //     }
        // }

        // // Set the free trial expiry date to 7 days from today
        // $expiryDate = date('d-m-Y', strtotime($today . ' + 7 days'));
        // $_SESSION[$SsessionKey] = $expiryDate;

        // $next_check = date('d-m-Y', strtotime($today . ' + ' . $this->getVerificationPeriodText()));
        // $_SESSION[$sessionKey] = $next_check; // Store the next verification date in the session

        // // Update or create SteadfastsConfig
        // SteadfastsConfig::updateOrCreate(
        //     [],
        //     [
        //         'enable_disable' => 1,
        //         'license_file' => '55f87825edkc2cba',
        //         'client_name' => 'Free trial for 7 days',
        //         'license_code' => 'free_trial',
        //     ]
        // );

        // return response()->json([
        //     'status' => true,
        //     'message' => 'Your 7-day free trial has started. It will expire on ' . $expiryDate,
        //     'trial_expiry' => $expiryDate,
        // ]);
    }

    public function verify_license()
    {
        $sessionKey = "55f8025ed1c2cba";
        $SsessionKey = "55f87825edkc2cba";
        $today = date('d-m-Y');
    
        if (session_status() === PHP_SESSION_NONE) {
            session_start();
        }
         $res = $this->callApi();

      
        // Initialize session key if not set, defaulting to an old date to trigger initial verification
        if (empty($_SESSION[$sessionKey])) {
            $_SESSION[$sessionKey] = '00-00-0000';
        }
        // Check if today's date is equal to or past the stored session date
        if (isset($_SESSION[$sessionKey]) && strtotime($today) >= strtotime($_SESSION[$sessionKey])) {
            // Call an API to perform verification
          
            if ($res['status'] == true) {
                // If the API call is successful, calculate the next verification date
                $next_check = date('d-m-Y', strtotime($today . ' + ' . $this->getVerificationPeriodText()));
                $_SESSION[$sessionKey] = $next_check; // Store the next verification date in the session
            }
            return $res; // Return the API response
        }
         
       return $res;
    }
    

    private function getVerificationPeriodText()
    {
        $periods = [
            1 => '1 day',
            3 => '3 days',
            7 => '1 week',
            30 => '1 month',
            90 => '3 months',
            365 => '1 year',
        ];

        return $periods[7] ?? "7 days";
    }

}
