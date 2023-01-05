@php
    $edit = !is_null($dataTypeContent->getKey());
    $add  = is_null($dataTypeContent->getKey());
@endphp

@extends('voyager::master')

@section('head')
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sidebars/">
@endsection

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style>
        .colored-separator .last-short {
            width: 16px;
        }

        .colored-separator .first-long, .colored-separator .last-short {
            display: inline-block;
            vertical-align: top;
            width: 33px;
            height: 5px;
            transform: skew(-40deg, 0deg);
            border-radius: 2px;
            background-color: #ffa000;
        }
    </style>
@stop

@section('page_title', __('voyager::generic.'.($edit ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular'))

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{--{{ __('voyager::generic.'.($edit ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular') }}--}}
        {{$dataType->getTranslatedAttribute('display_name_singular')}}
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-bordered">
                    <!-- form start -->
                    <form role="form"
                          class="form-edit-add"
                          action="{{ $edit ? route('voyager.'.$dataType->slug.'.update', $dataTypeContent->getKey()) : route('voyager.'.$dataType->slug.'.store') }}"
                          method="POST" enctype="multipart/form-data">
                        {{--<!-- PUT Method if we are editing -->--}}
                        @if($edit)
                            {{ method_field("PUT") }}
                        @endif

                        {{--<!-- CSRF TOKEN -->--}}
                        {{ csrf_field() }}

                        <div class="panel-body">
                            @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif

                            <div class="col-12 col-md-6 border">
                                <div class="form-group col-md-12" style="font-weight: bold; font-size: 20px;">
                                    Detalles de Facturación
                                </div>

                                <div class="form-group col-md-12">
                                    <label for="plan_id">Plan</label>
                                    <select name="plan_id" id="plan_id" class="form-control">
                                        <option value=""></option>
                                        @foreach($planes as $_plan)
                                            <option value="{{$_plan->id}}" @if($plan->id == $_plan->id) selected @endif>
                                                {{$_plan->name}}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>

                                {{--<!-- Adding / Editing -->--}}
                                @php
                                    $dataTypeRows = $dataType->{($edit ? 'editRows' : 'addRows' )};
                                @endphp

                                @foreach($dataTypeRows as $row)
                                    @php
                                        $display_options = $row->details->display ?? NULL;
                                        if ($dataTypeContent->{$row->field.'_'.($edit ? 'edit' : 'add')}) {
                                            $dataTypeContent->{$row->field} = $dataTypeContent->{$row->field.'_'.($edit ? 'edit' : 'add')};
                                        }

                                        $side = (isset($row->details->side))?$row->details->side:'';
                                    @endphp

                                    @if (isset($row->details->legend) && isset($row->details->legend->text))
                                        <legend class="text-{{ $row->details->legend->align ?? 'center' }}"
                                                style="background-color: {{ $row->details->legend->bgcolor ?? '#f0f0f0' }};padding: 5px;">{{ $row->details->legend->text }}</legend>
                                    @endif

                                    <div
                                        class="form-group @if($row->type == 'hidden') hidden @endif col-md-{{ $display_options->width ?? 12 }} {{ $errors->has($row->field) ? 'has-error' : '' }} {{$side}}"
                                    @if(isset($display_options->id)){{ "id=$display_options->id" }}@endif
                                    >
                                        {{ $row->slugify }}
                                        <label class="control-label" for="name">
                                            {{ $row->getTranslatedAttribute('display_name') }}
                                            @if($row->required)
                                                <span class="ml-2 text-danger">*</span>
                                            @endif
                                        </label>

                                        @if (isset($row->details->information) && isset($row->details->information->text))
                                            <span
                                                class="text-{{ $row->details->information->align ?? 'center' }} small block pb-2">
                                            {{ $row->details->information->text }}
                                        </span>
                                        @endif

                                        @include('voyager::multilingual.input-hidden-bread-edit-add')
                                        @if (isset($row->details->view))
                                            @include($row->details->view, ['row' => $row, 'dataType' => $dataType, 'dataTypeContent' => $dataTypeContent, 'content' => $dataTypeContent->{$row->field}, 'action' => ($edit ? 'edit' : 'add'), 'view' => ($edit ? 'edit' : 'add'), 'options' => $row->details])
                                        @elseif ($row->type == 'relationship')
                                            @include('voyager::formfields.relationship', ['options' => $row->details])
                                        @else
                                            {!! app('voyager')->formField($row, $dataType, $dataTypeContent) !!}
                                        @endif

                                        @foreach (app('voyager')->afterFormFields($row, $dataType, $dataTypeContent) as $after)
                                            {!! $after->handle($row, $dataType, $dataTypeContent) !!}
                                        @endforeach

                                        @if ($errors->has($row->field))
                                            @foreach ($errors->get($row->field) as $error)
                                                <span class="help-block">{{ $error }}</span>
                                            @endforeach
                                        @endif
                                    </div>
                                @endforeach

                                <div class="col-md-12 border" style="margin-top: 20px;">
                                    <div class="colored-separator text-left">
                                        <div class="first-long"></div>
                                        <div class="last-short"></div>
                                    </div>
                                    <div style="font-weight: bold; font-size: 20px;">PAGO</div>

                                    @foreach($pagos as $pago)
                                        <div class="" style="padding-top: 20px; padding-left: 10px;">
                                            <label class="btn ">
                                                <input type="radio" name="payment_method_id"
                                                       @if ($pago->default) checked @endif
                                                       value="{{$pago->id}}" style="margin-left: -15px;">

                                                <span style="font-weight: bold; margin-bottom: 5px;">
                                                    {{$pago->name}}
                                                </span>
                                            </label>

                                            <div class="">
                                                {!! $pago->description !!}
                                            </div>
                                        </div>
                                    @endforeach

                                    <div class="" style="margin-top: 15px;">
                                        Tus datos personales se utilizarán para procesar tu pedido, mejorar tu
                                        experiencia en esta web y otros propósitos descritos en nuestra política de
                                        privacidad.
                                    </div>
                                </div>
                            </div>
                            <div id="side-right" class="border col-12 col-md-6">
                                <div class="form-group col-md-12" style="font-weight: bold; font-size: 20px;">
                                    Información Adicional
                                </div>
                            </div>
                        </div>

                        <div class="panel-footer">
                            @section('submit-buttons')
                                <button type="submit"
                                        class="btn btn-primary save">{{ __('voyager::generic.save') }}</button>
                            @stop
                            @yield('submit-buttons')
                        </div>
                    </form>

                    <iframe id="form_target" name="form_target" style="display:none"></iframe>
                    <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post"
                          enctype="multipart/form-data" style="width:0;height:0;overflow:hidden">
                        <input name="image" id="upload_file" type="file"
                               onchange="$('#my_form').submit();this.value='';">
                        <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
                        {{ csrf_field() }}
                    </form>

                </div>
            </div>
        </div>
    </div>

    <div class="modal fade modal-danger" id="confirm_delete_modal">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;
                    </button>
                    <h4 class="modal-title"><i class="voyager-warning"></i> {{ __('voyager::generic.are_you_sure') }}
                    </h4>
                </div>

                <div class="modal-body">
                    <h4>{{ __('voyager::generic.are_you_sure_delete') }} '<span class="confirm_delete_name"></span>'
                    </h4>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                            data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                    <button type="button" class="btn btn-danger"
                            id="confirm_delete">{{ __('voyager::generic.delete_confirm') }}</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Delete File Modal -->
@stop

@section('javascript')
    <script>
        var params = {};
        var $file;

        function deleteHandler(tag, isMulti) {
            return function () {
                $file = $(this).siblings(tag);

                params = {
                    slug: '{{ $dataType->slug }}',
                    filename: $file.data('file-name'),
                    id: $file.data('id'),
                    field: $file.parent().data('field-name'),
                    multi: isMulti,
                    _token: '{{ csrf_token() }}'
                }

                $('.confirm_delete_name').text(params.filename);
                $('#confirm_delete_modal').modal('show');
            };
        }

        $('document').ready(function () {
            $('.toggleswitch').bootstrapToggle();

            //Init datepicker for date fields if data-datepicker attribute defined
            //or if browser does not handle date inputs
            $('.form-group input[type=date]').each(function (idx, elt) {
                if (elt.hasAttribute('data-datepicker')) {
                    elt.type = 'text';
                    $(elt).datetimepicker($(elt).data('datepicker'));
                } else if (elt.type != 'date') {
                    elt.type = 'text';
                    $(elt).datetimepicker({
                        format: 'L',
                        extraFormats: ['YYYY-MM-DD']
                    }).datetimepicker($(elt).data('datepicker'));
                }
            });

            @if ($isModelTranslatable)
            $('.side-body').multilingual({"editing": true});
            @endif

            $('.side-body input[data-slug-origin]').each(function (i, el) {
                $(el).slugify();
            });

            $('.form-group').on('click', '.remove-multi-image', deleteHandler('img', true));
            $('.form-group').on('click', '.remove-single-image', deleteHandler('img', false));
            $('.form-group').on('click', '.remove-multi-file', deleteHandler('a', true));
            $('.form-group').on('click', '.remove-single-file', deleteHandler('a', false));

            $('#confirm_delete').on('click', function () {
                $.post('{{ route('voyager.'.$dataType->slug.'.media.remove') }}', params, function (response) {
                    if (response
                        && response.data
                        && response.data.status
                        && response.data.status == 200) {

                        toastr.success(response.data.message);
                        $file.parent().fadeOut(300, function () {
                            $(this).remove();
                        })
                    } else {
                        toastr.error("Error removing file.");
                    }
                });

                $('#confirm_delete_modal').modal('hide');
            });
            $('[data-toggle="tooltip"]').tooltip();

            //$("#prependTo").click(function() {
            $(".right").appendTo($("#side-right"));
            //});


            $(".select2-ajax").each(function (e) {
                var data = $(this).val();
                var field = $(this).data('get-items-field');
                setSessionSelect2(data, field);
            });

            $(".select2-ajax").on('select2:select', function (e) {
                var data = e.params.data;
                var field = $(this).data('get-items-field');
                setSessionSelect2(data.id, field);
            });
        });

        function setSessionSelect2(data, field) {
            $.ajax({
                url: "{{route('session.select2')}}",
                data: {
                    id: data,
                    field: field,
                },
                type: 'POST',
                dataType: 'json',
                success: function (json) {

                }
            });
        }
    </script>
@stop
