<?php

namespace Botble\FacebookConversionsApi\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\FacebookConversionsApi\Forms\FacebookConversionsApiSettingForm;
use Botble\FacebookConversionsApi\Http\Requests\FacebookConversionsApiSettingRequest;
use Botble\Setting\Http\Controllers\SettingController;

class FacebookConversionsApiController extends SettingController
{
    public function edit()
    {
        $this->pageTitle(trans('Facebook Conversions API Settings'));

        return FacebookConversionsApiSettingForm::create()->renderForm();
    }

    public function update(FacebookConversionsApiSettingRequest $request)
    {
        return $this->performUpdate($request->validated());
    }
}
