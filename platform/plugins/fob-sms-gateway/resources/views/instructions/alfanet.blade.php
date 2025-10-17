<h3>{{ trans('plugins/fob-sms-gateway::alfanet.instructions.configuration_guide') }}</h3>
<ol>
    <li>
        <strong>{{ trans('plugins/fob-sms-gateway::alfanet.instructions.sign_up') }}:</strong>
        <p>
            {!! BaseHelper::clean(trans('plugins/fob-sms-gateway::alfanet.instructions.sign_up_description')) !!}
        </p>
    </li>
    <li>
        <strong>{{ trans('plugins/fob-sms-gateway::alfanet.instructions.get_api_key') }}:</strong>
        <p>
            {!! BaseHelper::clean(trans('plugins/fob-sms-gateway::alfanet.instructions.get_api_key_description')) !!}
        </p>
    </li>
    <li>
        <strong>{{ trans('plugins/fob-sms-gateway::alfanet.instructions.configure') }}:</strong>
        <p>{!! BaseHelper::clean(trans('plugins/fob-sms-gateway::alfanet.instructions.configure_description')) !!}</p>
    </li>
</ol>
