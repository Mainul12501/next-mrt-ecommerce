<?php

namespace Platform\Plugins\QrBarcodeGenerator\Http\Controllers\Settings;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Setting\Http\Requests\SettingRequest;
use Botble\Base\Facades\PageTitle;
use Botble\Base\Facades\Assets;
use Illuminate\Http\Request;

class QrBarcodeGeneratorSettingController extends BaseController
{
     public function edit()
     {
          PageTitle::setTitle(trans('plugins/qr-barcode-generator::content.settings.title'));

          Assets::addScriptsDirectly('vendor/core/core/setting/js/setting.js'); // Ensure settings JS is loaded if needed

          return view('plugins/qr-barcode-generator::settings');
     }

     public function update(Request $request, BaseHttpResponse $response)
     {
          // Save settings directly here to avoid BadMethodCallException
          foreach ($request->except(['_token', '_method']) as $settingKey => $settingValue) {
               setting()->set($settingKey, $settingValue);
          }

          setting()->save();

          return $response
               ->setPreviousUrl(route('qr-barcode-generator.settings'))
               ->setMessage(trans('core/base::notices.update_success_message'));
     }
}
