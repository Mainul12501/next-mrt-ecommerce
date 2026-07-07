<?php

namespace Platform\Plugins\QrBarcodeGenerator\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Facades\Assets;
use Botble\Base\Facades\PageTitle;
use Illuminate\Http\Request;

class QrBarcodeGeneratorController extends BaseController
{
     public function index()
     {
          PageTitle::setTitle(trans('plugins/qr-barcode-generator::content.name'));

          Assets::addScriptsDirectly('vendor/core/plugins/qr-barcode-generator/js/script.js');
          Assets::addStylesDirectly('vendor/core/plugins/qr-barcode-generator/css/style.css');

          return view('plugins/qr-barcode-generator::generate');
     }
}
