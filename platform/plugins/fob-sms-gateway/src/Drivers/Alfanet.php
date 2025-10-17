<?php

namespace FriendsOfBotble\Sms\Drivers;

use Botble\Base\Facades\BaseHelper;
use Botble\Base\Forms\FormAbstract;
use Exception;
use FriendsOfBotble\Sms\DataTransferObjects\SmsResponse;
use FriendsOfBotble\Sms\Facades\Sms;
use FriendsOfBotble\Sms\Forms\AlfanetGatewayForm;
use GuzzleHttp\Client as HttpClient;
use Xenon\LaravelBDSms\Provider\Alpha;
use Xenon\LaravelBDSms\Sender;

class Alfanet extends AbstractDriver
{
    protected function performSend(string $to, string $message): SmsResponse
    {
        $apiKey = Sms::getSetting('api_key', 'alfanet');

        if (empty($apiKey)) {
            return new SmsResponse(success: false, response: [
                'error' => 'API key is not configured',
            ]);
        }

        try {
            // Use LaravelBDSms Alpha provider to send SMS
            $sender = Sender::getInstance();
            $sender->setProvider(Alpha::class);
            $sender->setMobile($to);
            $sender->setMessage($message);
            $sender->setQueue(false);
            $sender->setConfig([
                'api_key' => $apiKey,
            ]);

            $result = $sender->send();

            // Parse the response
            $responseData = json_decode($result, true);

            return new SmsResponse(
                success: isset($responseData['status']) && $responseData['status'] === 'response',
                messageId: $responseData['response'] ?? null,
                response: $responseData,
            );
        } catch (Exception $e) {
            BaseHelper::logError($e);

            return new SmsResponse(success: false, response: [
                'error' => $e->getMessage(),
            ]);
        }
    }

    public function normalizePhoneNumber(string $phone): string
    {
        // Remove any non-numeric characters
        $phone = preg_replace('/[^0-9]/', '', $phone);

        // Ensure it starts with country code for Bangladesh (880) if it starts with 0
        if (str_starts_with($phone, '0')) {
            $phone = '880' . substr($phone, 1);
        }

        return $phone;
    }

    public function getLogo(): string
    {
        return 'https://www.alpha.net.bd/Content/img/sticky-brand.svg';
        return asset('vendor/core/plugins/fob-sms-gateway/images/alfanet.png');
    }

    public function getInstructions(): string
    {
        return view('plugins/fob-sms-gateway::instructions.alfanet');
    }

    public function getSettingForm(): FormAbstract
    {
        return AlfanetGatewayForm::create();
    }
}
