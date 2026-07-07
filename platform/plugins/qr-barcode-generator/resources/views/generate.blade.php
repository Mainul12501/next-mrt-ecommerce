@extends(BaseHelper::getAdminMasterLayoutTemplate())

@section('content')
     <div class="row">
          <div class="col-md-8">
               <div class="card">
                    <div class="card-header">
                         <ul class="nav nav-tabs card-header-tabs" id="generatorTabs" role="tablist">
                              <li class="nav-item">
                                   <a class="nav-link active" id="qr-tab" data-bs-toggle="tab" href="#qr" role="tab"
                                        aria-controls="qr" aria-selected="true">
                                        <i
                                             class="ti ti-qrcode me-2"></i>{{ trans('plugins/qr-barcode-generator::content.qr_code') }}
                                   </a>
                              </li>
                              <li class="nav-item">
                                   <a class="nav-link" id="barcode-tab" data-bs-toggle="tab" href="#barcode" role="tab"
                                        aria-controls="barcode" aria-selected="false">
                                        <i
                                             class="ti ti-barcode me-2"></i>{{ trans('plugins/qr-barcode-generator::content.barcode') }}
                                   </a>
                              </li>
                         </ul>
                    </div>
                    <div class="card-body">
                         <div class="tab-content" id="generatorTabContent">
                              {{-- QR Generator Tab --}}
                              <div class="tab-pane fade show active" id="qr" role="tabpanel" aria-labelledby="qr-tab">
                                   <form id="qr-form">
                                        <div class="mb-3">
                                             <label class="form-label"
                                                  for="qr_data">{{ trans('plugins/qr-barcode-generator::content.text') }} /
                                                  {{ trans('plugins/qr-barcode-generator::content.url') }}</label>
                                             <textarea class="form-control" id="qr_data" name="data" rows="3"
                                                  placeholder="https://example.com or Any text"></textarea>
                                        </div>
                                        <div class="row">
                                             <div class="col-md-6 mb-3">
                                                  <label class="form-label"
                                                       for="qr_size">{{ trans('plugins/qr-barcode-generator::content.size') }}</label>
                                                  <input type="number" class="form-control" id="qr_size" name="size"
                                                       value="{{ setting('qr_barcode_default_size', 300) }}">
                                             </div>
                                             <div class="col-md-6 mb-3">
                                                  <label class="form-label"
                                                       for="qr_margin">{{ trans('plugins/qr-barcode-generator::content.margin') }}</label>
                                                  <input type="number" class="form-control" id="qr_margin" name="margin"
                                                       value="{{ setting('qr_barcode_default_margin', 10) }}">
                                             </div>
                                        </div>
                                        <div class="row">
                                             <div class="col-md-6 mb-3">
                                                  <label class="form-label"
                                                       for="qr_foreground">{{ trans('plugins/qr-barcode-generator::content.foreground_color') }}</label>
                                                  <input type="color" class="form-control form-control-color"
                                                       id="qr_foreground" name="foreground_color"
                                                       value="{{ setting('qr_barcode_default_foreground', '#000000') }}"
                                                       title="Choose your color">
                                             </div>
                                             <div class="col-md-6 mb-3">
                                                  <label class="form-label"
                                                       for="qr_background">{{ trans('plugins/qr-barcode-generator::content.background_color') }}</label>
                                                  <input type="color" class="form-control form-control-color"
                                                       id="qr_background" name="background_color"
                                                       value="{{ setting('qr_barcode_default_background', '#ffffff') }}"
                                                       title="Choose your color">
                                             </div>
                                        </div>

                                        <button type="submit" class="btn btn-primary">
                                             <i class="ti ti-check me-2"></i>
                                             {{ trans('plugins/qr-barcode-generator::content.generate_qr') }}
                                        </button>
                                   </form>
                              </div>

                              {{-- Barcode Generator Tab --}}
                              <div class="tab-pane fade" id="barcode" role="tabpanel" aria-labelledby="barcode-tab">
                                   <form id="barcode-form">
                                        <div class="mb-3">
                                             <label class="form-label"
                                                  for="barcode_data">{{ trans('plugins/qr-barcode-generator::content.text') }}</label>
                                             <input type="text" class="form-control" id="barcode_data" name="data"
                                                  placeholder="123456789">
                                        </div>
                                        <div class="row">
                                             <div class="col-md-6 mb-3">
                                                  <label class="form-label"
                                                       for="barcode_type">{{ trans('plugins/qr-barcode-generator::content.type') }}</label>
                                                  <select class="form-select" id="barcode_type" name="type">
                                                       <option value="C128">Code 128</option>
                                                       <option value="C39">Code 39</option>
                                                       <option value="EAN13">EAN-13</option>
                                                       <option value="UPCA">UPC-A</option>
                                                       <option value="ISBN">ISBN</option>
                                                  </select>
                                             </div>
                                             <div class="col-md-6 mb-3">
                                                  <label class="form-label"
                                                       for="barcode_height">{{ trans('plugins/qr-barcode-generator::content.height') }}</label>
                                                  <input type="number" class="form-control" id="barcode_height" name="height"
                                                       value="50">
                                             </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary">
                                             <i class="ti ti-check me-2"></i>
                                             {{ trans('plugins/qr-barcode-generator::content.generate_barcode') }}
                                        </button>
                                   </form>
                              </div>
                         </div>
                    </div>
               </div>
          </div>
          <div class="col-md-4">
               <div class="card">
                    <div class="card-header">
                         <h5 class="card-title">{{ trans('plugins/qr-barcode-generator::content.preview') }}</h5>
                    </div>
                    <div class="card-body text-center d-flex justify-content-center align-items-center"
                         style="min-height: 300px; background: #f8f9fa;">
                         <div id="preview-area">
                              <p class="text-muted">{{ trans('plugins/qr-barcode-generator::content.preview') }}</p>
                         </div>
                    </div>
                    <div class="card-footer text-center" id="download-actions" style="display: none;">
                         <a href="#" id="download-btn" class="btn btn-success" download="code.png">
                              <i class="ti ti-download me-2"></i>
                              {{ trans('plugins/qr-barcode-generator::content.download_png') }}
                         </a>
                    </div>
               </div>
          </div>
     </div>

     <script src="https://cdn.jsdelivr.net/npm/jsbarcode@3.11.5/dist/JsBarcode.all.min.js"></script>
     <script src="https://cdn.jsdelivr.net/npm/qrcodejs@1.0.0/qrcode.min.js"></script>

     <script>
          document.addEventListener('DOMContentLoaded', function () {
               // QR Form Submit
               document.getElementById('qr-form').addEventListener('submit', function (e) {
                    e.preventDefault();
                    generateQr();
               });

               // Barcode Form Submit
               document.getElementById('barcode-form').addEventListener('submit', function (e) {
                    e.preventDefault();
                    generateBarcode();
               });

               function generateQr() {
                    let form = document.getElementById('qr-form');
                    let formData = new FormData(form);
                    let data = formData.get('data');
                    let size = parseInt(formData.get('size')) || 300;
                    let margin = parseInt(formData.get('margin')) || 10;
                    let foreground = formData.get('foreground_color') || '#000000';
                    let background = formData.get('background_color') || '#ffffff';

                    if (!data) {
                         Botble.showError('Please enter data to generate code.');
                         return;
                    }

                    $('#preview-area').html('<div id="qrcode-container"></div>');
                    
                    try {
                         new QRCode(document.getElementById("qrcode-container"), {
                              text: data,
                              width: size,
                              height: size,
                              colorDark : foreground,
                              colorLight : background,
                              correctLevel : QRCode.CorrectLevel.H
                         });

                         // Wait a bit for the canvas/img to be generated
                         setTimeout(() => {
                              let img = $('#qrcode-container img').attr('src');
                              if (img) {
                                   $('#download-actions').show();
                                   $('#download-btn').attr('href', img);
                                   Botble.showSuccess('Generated successfully!');
                              }
                         }, 100);
                    } catch (e) {
                         Botble.showError('Error generating QR Code: ' + e.message);
                    }
               }

               function generateBarcode() {
                    let form = document.getElementById('barcode-form');
                    let formData = new FormData(form);
                    let data = formData.get('data');
                    let type = formData.get('type');
                    let height = parseInt(formData.get('height')) || 50;

                    if (!data) {
                         Botble.showError('Please enter data to generate code.');
                         return;
                    }

                    // Map types to JsBarcode formats
                    let format = "CODE128";
                    switch(type) {
                         case 'C128': format = "CODE128"; break;
                         case 'C39': format = "CODE39"; break;
                         case 'EAN13': format = "EAN13"; break;
                         case 'UPCA': format = "UPC"; break;
                         case 'ISBN': format = "EAN13"; break;
                    }

                    try {
                         let canvas = document.createElement('canvas');
                         JsBarcode(canvas, data, {
                              format: format,
                              height: height,
                              displayValue: true,
                              margin: 10
                         });

                         let base64 = canvas.toDataURL("image/png");
                         let previewHtml = '<img src="' + base64 + '" class="img-fluid" style="max-width: 100%;">';
                         $('#preview-area').html(previewHtml);
                         $('#download-actions').show();
                         $('#download-btn').attr('href', base64);
                         Botble.showSuccess('Generated successfully!');
                    } catch (e) {
                         Botble.showError('Error generating Barcode: ' + e.message);
                    }
               }
          });
     </script>
@endsection