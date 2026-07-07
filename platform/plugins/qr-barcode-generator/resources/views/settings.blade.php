@extends(BaseHelper::getAdminMasterLayoutTemplate())

@section('content')
     {!! Form::open(['route' => 'qr-barcode-generator.settings.update', 'method' => 'PUT']) !!}
     <div class="max-width-1200">
          <div class="card">
               <div class="card-header">
                    <h5 class="card-title">{{ trans('plugins/qr-barcode-generator::content.settings.title') }}</h5>
               </div>
               <div class="card-body">
                    <div class="mb-3">
                         <label class="form-label"
                              for="qr_barcode_enable_qr">{{ trans('plugins/qr-barcode-generator::content.settings.enable_qr') }}</label>
                         <select class="form-select" name="qr_barcode_enable_qr" id="qr_barcode_enable_qr">
                              <option value="1" @if(setting('qr_barcode_enable_qr', 1) == 1) selected @endif>
                                   {{ trans('core/base::base.yes') }}</option>
                              <option value="0" @if(setting('qr_barcode_enable_qr', 1) == 0) selected @endif>
                                   {{ trans('core/base::base.no') }}</option>
                         </select>
                    </div>
                    <div class="mb-3">
                         <label class="form-label"
                              for="qr_barcode_enable_barcode">{{ trans('plugins/qr-barcode-generator::content.settings.enable_barcode') }}</label>
                         <select class="form-select" name="qr_barcode_enable_barcode" id="qr_barcode_enable_barcode">
                              <option value="1" @if(setting('qr_barcode_enable_barcode', 1) == 1) selected @endif>
                                   {{ trans('core/base::base.yes') }}</option>
                              <option value="0" @if(setting('qr_barcode_enable_barcode', 1) == 0) selected @endif>
                                   {{ trans('core/base::base.no') }}</option>
                         </select>
                    </div>

                    <div class="row">
                         <div class="col-md-6 mb-3">
                              <label class="form-label"
                                   for="qr_barcode_default_size">{{ trans('plugins/qr-barcode-generator::content.settings.default_size') }}</label>
                              <input type="number" class="form-control" name="qr_barcode_default_size"
                                   id="qr_barcode_default_size" value="{{ setting('qr_barcode_default_size', 300) }}">
                         </div>
                         <div class="col-md-6 mb-3">
                              <label class="form-label"
                                   for="qr_barcode_default_margin">{{ trans('plugins/qr-barcode-generator::content.settings.default_margin') }}</label>
                              <input type="number" class="form-control" name="qr_barcode_default_margin"
                                   id="qr_barcode_default_margin" value="{{ setting('qr_barcode_default_margin', 10) }}">
                         </div>
                    </div>

                    <div class="row">
                         <div class="col-md-6 mb-3">
                              <label class="form-label"
                                   for="qr_barcode_default_foreground">{{ trans('plugins/qr-barcode-generator::content.settings.default_foreground_color') }}</label>
                              <input type="color" class="form-control form-control-color"
                                   name="qr_barcode_default_foreground" id="qr_barcode_default_foreground"
                                   value="{{ setting('qr_barcode_default_foreground', '#000000') }}">
                         </div>
                         <div class="col-md-6 mb-3">
                              <label class="form-label"
                                   for="qr_barcode_default_background">{{ trans('plugins/qr-barcode-generator::content.settings.default_background_color') }}</label>
                              <input type="color" class="form-control form-control-color"
                                   name="qr_barcode_default_background" id="qr_barcode_default_background"
                                   value="{{ setting('qr_barcode_default_background', '#ffffff') }}">
                         </div>
                    </div>
               </div>
               <div class="card-footer text-end">
                    <button type="submit" class="btn btn-primary">
                         <i class="ti ti-device-floppy me-2"></i> {{ trans('core/base::forms.save') }}
                    </button>
               </div>
          </div>
     </div>
     {!! Form::close() !!}
@endsection