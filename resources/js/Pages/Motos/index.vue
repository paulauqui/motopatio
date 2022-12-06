<style type="text/css">
    .select2-selection__rendered[title="Condición"] {
        background-color: transparent !important;
        border: 1px solid rgba(255, 255, 255, 0.5);
        color: #fff !important;
    }

    .select2-selection__rendered[title="Condición"] + .select2-selection__arrow b {
        color: rgba(255, 255, 255, 0.5);
    }

    .select2-selection__rendered[title="Marca"] {
        background-color: transparent !important;
        border: 1px solid rgba(255, 255, 255, 0.5);
        color: #fff !important;
    }

    .select2-selection__rendered[title="Marca"] + .select2-selection__arrow b {
        color: rgba(255, 255, 255, 0.5);
    }

    .select2-selection__rendered[title="Modelo"] {
        background-color: transparent !important;
        border: 1px solid rgba(255, 255, 255, 0.5);
        color: #fff !important;
    }

    .select2-selection__rendered[title="Modelo"] + .select2-selection__arrow b {
        color: rgba(255, 255, 255, 0.5);
    }

    .select2-selection__rendered[title="Máx Kilometros"] {
        background-color: transparent !important;
        border: 1px solid rgba(255, 255, 255, 0.5);
        color: #fff !important;
    }

    .select2-selection__rendered[title="Máx Kilometros"] + .select2-selection__arrow b {
        color: rgba(255, 255, 255, 0.5);
    }

    .select2-selection__rendered[title="Año"] {
        background-color: transparent !important;
        border: 1px solid rgba(255, 255, 255, 0.5);
        color: #fff !important;
    }

    .select2-selection__rendered[title="Año"] + .select2-selection__arrow b {
        color: rgba(255, 255, 255, 0.5);
    }

    .select2-selection__rendered[title="Máx Precio"] {
        background-color: transparent !important;
        border: 1px solid rgba(255, 255, 255, 0.5);
        color: #fff !important;
    }

    .select2-selection__rendered[title="Máx Precio"] + .select2-selection__arrow b {
        color: rgba(255, 255, 255, 0.5);
    }

    .select2-selection__rendered[title="Transmisión"] {
        background-color: transparent !important;
        border: 1px solid rgba(255, 255, 255, 0.5);
        color: #fff !important;
    }

    .select2-selection__rendered[title="Transmisión"] + .select2-selection__arrow b {
        color: rgba(255, 255, 255, 0.5);
    }

</style>

<template>
    <Layout>

        <Banner/>
        <Breads/>


        <div class="container">

            <div class="vc_row wpb_row vc_row-fluid">
                <div class="wpb_column vc_column_container vc_col-sm-12">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            <div class="archive-listing-page">
                                <div class="container">
                                    <div class="row">
                                        <div
                                                class="col-md-3 col-sm-12 classic-filter-row sidebar-sm-mg-bt col-md-push-9 col-sm-push-0">

                                            <FormSearch/>

                                            <!--Sidebar-->
                                            <div class="stm-inventory-sidebar"></div>
                                        </div>

                                        <div class="col-md-9 col-sm-12 col-md-pull-3 col-sm-pull-0">
                                            <div class="stm-ajax-row">

                                                <div
                                                        class="stm-car-listing-sort-units stm-car-listing-directory-sort-units clearfix">
                                                    <div class="stm-listing-directory-title">
                                                        <h3 class="title">Motos Para La Venta</h3>
                                                        <div
                                                                class="stm-listing-directory-total-matches total stm-secondary-color heading-font">
                                                            <span>{{motorcycles.length}}</span> coincidencias
                                                        </div>
                                                    </div>
                                                    <div class="stm-directory-listing-top__right">
                                                        <div class="clearfix">
                                                            <div class="stm-view-by">
                                                                <a href="#" class="view-grid view-type active"
                                                                   data-view="grid">
                                                                    <i class="stm-icon-grid"></i>
                                                                </a>
                                                                <a href="#" class="view-list view-type "
                                                                   data-view="list">
                                                                    <i class="stm-icon-list"></i>
                                                                </a>
                                                            </div>
                                                            <div class="stm-sort-by-options clearfix">
                                                                <span>Ordenar por:</span>
                                                                <div class="stm-select-sorting">
                                                                    <select>
                                                                        <option value="date_high" selected>
                                                                            Fecha: recientes primero
                                                                        </option>
                                                                        <option value="date_low">Fecha: antiguos
                                                                            primero
                                                                        </option>
                                                                        <option value="price_low">Precio: más
                                                                            bajo primero
                                                                        </option>
                                                                        <option value="price_high">Precio: más
                                                                            caro primero
                                                                        </option>
                                                                        <option value="mileage_low">Kilometraje:
                                                                            menos km primero
                                                                        </option>
                                                                        <option value="mileage_high">
                                                                            Kilometraje: más km primero
                                                                        </option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="listings-result">
                                                    <div class="stm-isotope-sorting stm-isotope-sorting-grid">
                                                        <div class="row row-3 car-listing-row car-listing-modern-grid">
                                                            <div v-for="model in motorcycles"
                                                                 class="col-md-4 col-sm-4 col-xs-12 col-xxs-12  stm-directory-grid-loop stm-isotope-listing-item all  2020-17726 husqvarna-7221 husqvarna-fc250-7256 6-manual-317 noabs-17715 solid-white-146 usado-152 "
                                                                 data-price="8800"
                                                                 data-date="202203110152"
                                                                 data-mileage="20"
                                                            >
                                                                <Link :href="route('listings.index',model.slug)"
                                                                      class="rmv_txt_drctn">
                                                                <div class="image">
                                                                    <img :data-src="model.image_real"
                                                                         :srcset="model.image_real"
                                                                         src=""
                                                                         class="lazy img-responsive"
                                                                         alt="0EDC5E1E-80E1-465D-86FB-D5F96F84AD69"
                                                                    />

                                                                    <!--Hover blocks-->
                                                                    <!---Media-->
                                                                    <div class="stm-car-medias">
                                                                        <div class="stm-listing-photos-unit stm-car-photos-6294 stm-car-photos-6294-325961922">
                                                                            <i class="stm-service-icon-photo"></i>
                                                                            <span>{{model.gallery_real.length}}</span>
                                                                        </div>
                                                                    </div>

                                                                    <!--Favorite-->
                                                                    <div
                                                                            class="stm-listing-favorite"
                                                                            data-id="6294"
                                                                            data-toggle="tooltip"
                                                                            data-placement="right"
                                                                            title="Añadir a favoritos"
                                                                    >
                                                                        <i class="stm-service-icon-staricon"></i>
                                                                    </div>

                                                                    <!--Compare-->
                                                                    <div
                                                                            class="stm-listing-compare stm-compare-directory-new"
                                                                            :data-id="model.id"
                                                                            :data-title="model.name"
                                                                            data-toggle="tooltip"
                                                                            data-placement="left"
                                                                            title="Añadir para comparar"
                                                                    >
                                                                        <i class="stm-service-icon-compare-new"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="listing-car-item-meta">
                                                                    <div
                                                                            class="car-meta-top heading-font clearfix">
                                                                        <div class="price">
                                                                            <div class="normal-price">
                                                                                ${{model.price_format}}
                                                                            </div>
                                                                        </div>
                                                                        <div class="car-title"
                                                                             data-max-char="44">
                                                                            {{model.name}}
                                                                        </div>
                                                                    </div>
                                                                    <div class="car-meta-bottom">
                                                                        <ul>
                                                                            <li>
                                                                                <i class="stm-icon-road"></i>
                                                                                <span>20 mi</span>
                                                                            </li>
                                                                            <li>
                                                                                <i class="stm-icon-transmission_fill"></i>
                                                                                <span>{{model.name_transmission}}</span>
                                                                            </li>
                                                                        </ul>
                                                                    </div>

                                                                </div>
                                                                </Link>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="stm_ajax_pagination stm-blog-pagination">
                                                        <ul class='page-numbers'>
                                                            <!--<li>-->
                                                            <!--<span aria-current="page"-->
                                                            <!--class="page-numbers current">1</span>-->
                                                            <!--</li>-->
                                                            <!--<li>-->
                                                            <!--<a class="page-numbers"-->
                                                            <!--href="page/2/index.html">2</a>-->
                                                            <!--</li>-->
                                                            <!--<li>-->
                                                            <!--<a class="next page-numbers"-->
                                                            <!--href="page/2/index.html"><i-->
                                                            <!--class="fa fa-angle-right"></i></a>-->
                                                            <!--</li>-->
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> <!--col-md-9-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>
    </Layout>
</template>

<script>
    import Layout from '@/Layouts/AppSite';
    import Banner from '@/Pages/Motos/partials/banner';
    import Breads from '@/Pages/Motos/partials/breads';
    import FormSearch from '@/Pages/Motos/partials/search';
    import {Link} from '@inertiajs/inertia-vue3';

    export default {
        name: '@Motos',
        components: {
            Layout,
            Banner,
            Breads,
            FormSearch,
            Link
        },
        props: {
            motorcycles: Object.assign({}, {})
        },
        methods: {
            redirectPage(slug) {
                this.$inertia.get(this.route('listings.index', slug));
            },
        },
        mounted() {
            // jQuery(document).ready(function () {
            //     jQuery(".stm-car-photos-5737-594032129").on('click', function (e) {
            //         e.preventDefault();
            //         jQuery(this).lightGallery({
            //             dynamic: true,
            //             dynamicEl: [
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2021/09/20210925_150646.jpg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2021/09/20210925_151143.jpg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2021/09/20210925_151200.jpg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2021/09/20210925_151247.jpg"
            //                 },
            //             ],
            //             download: false,
            //             mode: 'lg-fade',
            //         })
            //     });
            // });
            //
            // jQuery(document).ready(function () {
            //     jQuery(".stm-car-photos-5865-2033752859").on('click', function (e) {
            //         e.preventDefault();
            //         jQuery(this).lightGallery({
            //             dynamic: true,
            //             dynamicEl: [
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2021/10/20211007_144423.jpg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2021/10/20211007_144430.jpg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2021/10/20211007_143803.jpg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2021/10/20211007_143812.jpg"
            //                 },
            //             ],
            //             download: false,
            //             mode: 'lg-fade',
            //         })
            //     });
            // });
            //
            // jQuery(document).ready(function () {
            //     jQuery(".stm-car-photos-6027-1732937414").on('click', function (e) {
            //         e.preventDefault();
            //         jQuery(this).lightGallery({
            //             dynamic: true,
            //             dynamicEl: [
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/04/BF7B7794-F603-4C9F-A463-D8622A2F6EAB.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/04/E83B6D01-02E6-42CC-8D17-C16DFB594A88.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/04/B88C3603-3611-4ABE-B86C-5CDB2C0E23BD.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/04/90D3396D-9B58-459C-ADDA-63BD88E71785.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/04/0A0CDC22-0E85-48CF-84E1-DFD40C88974E.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/04/18F1F310-FBC7-4295-A0A2-2D3461F99702.jpeg"
            //                 },
            //             ],
            //             download: false,
            //             mode: 'lg-fade',
            //         })
            //     });
            // });
            //
            // jQuery(document).ready(function () {
            //     jQuery(".stm-car-photos-6115-1911683285").on('click', function (e) {
            //         e.preventDefault();
            //         jQuery(this).lightGallery({
            //             dynamic: true,
            //             dynamicEl: [
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/01/961ECC89-B372-496C-8CBF-B266A7CD61A2.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/01/6579868A-8037-4F26-BE0E-D2067D5A67F6.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/01/2F5341A9-381F-4D63-826C-35CB2F610322.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/01/39E4DEA1-66B5-473B-8050-2752B16FD2E5.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/01/66358F31-AB2B-4FC2-884A-5A071949584C.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/01/4E7ED120-E8E7-4513-8D18-4BB448BBB2E1.jpeg"
            //                 },
            //             ],
            //             download: false,
            //             mode: 'lg-fade',
            //         })
            //     });
            // });
            //
            // jQuery(document).ready(function () {
            //     jQuery(".stm-car-photos-6123-1107366716").on('click', function (e) {
            //         e.preventDefault();
            //         jQuery(this).lightGallery({
            //             dynamic: true,
            //             dynamicEl: [
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/01/220E2173-8251-47DD-A446-E44A39C18A2F.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/01/E2C9ED9C-1AE3-493D-BA39-DB05D45598B7.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/01/1A99325B-E689-47EF-846B-5E8CAF15E84B.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/01/EEC9C6BE-A3CC-4C2E-8478-73A7E6B20CA3.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/01/1D9982A9-3A22-4D38-BC49-528E316E09C5.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/01/4F546906-01E0-41FB-90E0-7389ACCD61AF.jpeg"
            //                 },
            //             ],
            //             download: false,
            //             mode: 'lg-fade',
            //         })
            //     });
            // });
            //
            // jQuery(document).ready(function () {
            //     jQuery(".stm-car-photos-6319-885427223").on('click', function (e) {
            //         e.preventDefault();
            //         jQuery(this).lightGallery({
            //             dynamic: true,
            //             dynamicEl: [
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/35A631C6-0241-4ECE-82B7-2F423A26BE98.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/8D538AFE-E29E-49D7-B2AB-7AED5B0B85A2.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/EC788457-45BA-4843-A7C0-8535D7D597AC.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/BCDEB3B2-91D4-4C4D-8814-CF39DFD90128.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/C2896C39-BAF4-4011-8BCA-250612D77739.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/5A1AA620-AA3C-470C-ADB9-34DB130DE45D.jpeg"
            //                 },
            //             ],
            //             download: false,
            //             mode: 'lg-fade',
            //         })
            //     });
            // });
            //
            // jQuery(document).ready(function () {
            //     jQuery(".stm-car-photos-6302-929515666").on('click', function (e) {
            //         e.preventDefault();
            //         jQuery(this).lightGallery({
            //             dynamic: true,
            //             dynamicEl: [
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/64062AF6-4B1C-4AB2-B303-7D71F50AEDFA.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/5305287F-B03D-4D32-B0B4-5391D0200ECB.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/A19CB713-9B2E-4208-B2CE-90E062C51C57.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/11B3EADF-E562-4B63-912F-AB74F5B4F529.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/2C86806B-57ED-488E-BE03-853AF760451D.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/249A08D7-B343-43E7-ADD4-723BD888C576.jpeg"
            //                 },
            //             ],
            //             download: false,
            //             mode: 'lg-fade',
            //         })
            //     });
            // });
            //
            // jQuery(document).ready(function () {
            //     jQuery(".stm-car-photos-6294-325961922").on('click', function (e) {
            //         e.preventDefault();
            //         jQuery(this).lightGallery({
            //             dynamic: true,
            //             dynamicEl: [
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/0EDC5E1E-80E1-465D-86FB-D5F96F84AD69.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/FA4A2637-3ABE-4B5B-A769-A1F63BB40320.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/2BF53162-01D9-4516-897A-5B4712B7474E.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/B61CFF1D-1D47-4B4F-9659-DF75C2BFCE47.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/428090DC-D73B-45B1-8EE5-2DF2E778D0D0.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/B4A19B19-9A4E-486A-A7F1-DD5DA6E57F11.jpeg"
            //                 },
            //             ],
            //             download: false,
            //             mode: 'lg-fade',
            //         })
            //     });
            // });
            //
            // var stmOptions_search_radius;
            // (function ($) {
            //     $(document).ready(function () {
            //         var stmMaxRadiusValue = 100;
            //         stmOptions_search_radius = {
            //             step: 1,
            //             min: 1,
            //             max: 100,
            //             value: 100,
            //             slide: function (event, ui) {
            //                 $("#stm_slide_filter_max_search_radius").val(ui.value);
            //                 var stmText = ui.value;
            //
            //                 $('.filter-search_radius .stm-current-slider-labels').html(stmText);
            //             }
            //         };
            //
            //         $(".stm-search_radius-range").slider(stmOptions_search_radius);
            //
            //
            //         $("#stm_slide_filter_max_search_radius").val($(".stm-search_radius-range").slider("values", 1));
            //
            //         $("#stm_slide_filter_max_search_radius").on('keyup', function () {
            //             $(".stm-search_radius-range").slider("values", 1, $(this).val());
            //         });
            //
            //         $("#stm_slide_filter_max_search_radius").on('focusout', function () {
            //             if ($(this).val() > stmMaxRadiusValue) {
            //                 $(".stm-search_radius-range").slider("values", 1, stmMaxRadiusValue);
            //                 $(this).val(stmMaxRadiusValue);
            //             }
            //         });
            //     })
            // })(jQuery);
            //
            // var stmOptions_price;
            // (function ($) {
            //     $(document).ready(function () {
            //         var affix = "";
            //         var stmMinValue = 1000;
            //         var stmMaxValue = 1000000;
            //         stmOptions_price = {
            //             range: true,
            //             min: 1000,
            //             max: 1000000,
            //             values: [1000, 1000000],
            //             step: 10,
            //             slide: function (event, ui) {
            //                 $("#stm_filter_min_price").val(ui.values[0]);
            //                 $("#stm_filter_max_price").val(ui.values[1]);
            //                 var stmCurrency = "$";
            //                 var stmPriceDel = ",";
            //                 var stmCurrencyPos = "left";
            //                 var stmText = stm_get_price_view(ui.values[0], stmCurrency, stmCurrencyPos, stmPriceDel) + ' - ' + stm_get_price_view(ui.values[1], stmCurrency, stmCurrencyPos, stmPriceDel);
            //
            //                 $('.filter-price .stm-current-slider-labels').html(stmText);
            //             }
            //         };
            //         $(".stm-price-range").slider(stmOptions_price);
            //
            //
            //         $("#stm_filter_min_price").val($(".stm-price-range").slider("values", 0));
            //         $("#stm_filter_max_price").val($(".stm-price-range").slider("values", 1));
            //
            //         $("#stm_filter_min_price").on('keyup', function () {
            //             $(".stm-price-range").slider("values", 0, $(this).val());
            //         });
            //
            //         $("#stm_filter_min_price").on('focusout', function () {
            //             if ($(this).val() < stmMinValue) {
            //                 $(".stm-price-range").slider("values", 0, stmMinValue);
            //                 $(this).val(stmMinValue);
            //             }
            //         });
            //
            //         $("#stm_filter_max_price").on('keyup', function () {
            //             $(".stm-price-range").slider("values", 1, $(this).val());
            //         });
            //
            //         $("#stm_filter_max_price").on('focusout', function () {
            //             if ($(this).val() > stmMaxValue) {
            //                 $(".stm-price-range").slider("values", 1, stmMaxValue);
            //                 $(this).val(stmMaxValue);
            //             }
            //         });
            //     })
            // })(jQuery);
            //
            // jQuery(document).ready(function () {
            //     jQuery(".stm-car-photos-6360-895275444").on('click', function (e) {
            //         e.preventDefault();
            //         jQuery(this).lightGallery({
            //             dynamic: true,
            //             dynamicEl: [
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/402EDD94-1035-4607-94F2-39E682D56BA6.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/4B4C7DBD-8D54-4E5E-9E15-869F56A3A1DE.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/9998658A-648F-496E-960E-0156B345765E.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/D9465D29-599E-4D04-8E3F-FDA04C4B09B4.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/11045CB8-AEE8-45B0-A257-6E076F9256FC.jpeg"
            //                 },
            //                 {
            //                     src: "https://motopatio.com/wp-content/uploads/2022/03/2C7ABBBD-9ECB-408B-9BB9-4890CEEC83D0.jpeg"
            //                 },
            //             ],
            //             download: false,
            //             mode: 'lg-fade',
            //         })
            //     });
            // });
        }
    }
</script>
