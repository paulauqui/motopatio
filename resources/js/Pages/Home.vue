<style>
    .stm_dynamic_listing_filter .stm_dynamic_listing_filter_nav li {
        background: #f79d34 !important;
        border-right: 1px solid #f79d34 !important;
    }

    .stm_dynamic_listing_filter .stm_dynamic_listing_filter_nav li.active {
        background: #636363 !important;
        border-right: 1px solid #636363 !important;
    }

    .stm_dynamic_listing_filter .tab-content {
        background-color: #636363 !important;
    }

    .vc_custom_1419240516480 {
        background-color: #f9f9f9 !important;
    }

    .vc_custom_1626887424630 {
        margin-top: 10px !important;
        background-image: url(/image/2021/07/fondoprecio3aa70.png?id=5422) !important;
        background-position: center !important;
        background-repeat: no-repeat !important;
        background-size: contain !important;
    }

    .carousel__item {
        min-height: 200px;
        width: 100%;
        font-size: 20px;
        border-radius: 8px;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .carousel__slide {
        /*padding: 10px;*/
    }

    .carousel__prev,
    .carousel__next {
        box-sizing: content-box;
        border: 5px solid white;
    }

    .vc_custom_1625512963830 {
        margin-bottom: 80px !important;
        padding-top: 80px !important;
    }

    .vc_custom_1532498776879 {
        padding-top: 73px !important;
        padding-bottom: 53px !important;
        background-color: #f5f7f7 !important;
    }

    .vc_custom_1532435648972 {
        margin-top: -130px !important;
    }

    .vc_custom_1626885053786 {
        margin-top: 32px !important;
    }

    .wpb_animate_when_almost_visible {
        opacity: 1;
    }

    .vc_custom_1625512963830 {
        margin-bottom: 80px !important;
        padding-top: 80px !important;
    }
</style>
<template>
    <Head title="Home"/>
    <SiteLayout>
        <Carousel>
            <slide :key="toura-scaled">
                <div class="carousel__item">
                    <img :src="'/image/2021/10/toura-scaled.jpg'" title="toura-scaled"
                         class="rev-slidebg img-responsive w-100"
                         data-no-retina>
                </div>
            </slide>
            <slide :key="baja">
                <div class="carousel__item">
                    <img :src="'/image/2021/10/baja-scaled.jpg'" title="baja"
                         width="2560" height="1109" data-parallax="10" class="rev-slidebg"
                         data-no-retina>
                </div>
            </slide>
            <slide :key="cardo">
                <div class="carousel__item">
                    <img :src="'/image/2021/10/cardo-scaled.jpg'" title="cardo"
                         width="2560" height="1109" data-parallax="10" class="rev-slidebg"
                         data-no-retina>
                </div>
            </slide>

            <template #addons>
                <!--<navigation/>-->
                <!--<pagination/>-->
            </template>
        </Carousel>

        <div class="container">
            <div class="row-full-width"></div>
            <div class="row wpb_row row-fluid">
                <div class="wpb_column vc_column_container col-sm-12">
                    <div class="vc_column-inner vc_custom_1532435648972">
                        <div class="wpb_wrapper">
                            <div class="stm_dynamic_listing_filter filter-listing stm-vc-ajax-filter animated fadeIn ">
                                <!-- Nav tabs -->
                                <ul class="stm_dynamic_listing_filter_nav clearfix heading-font" role="tablist">
                                    <li role="presentation" class="active">
                                        <a href="#stm_all_listing_tab" aria-controls="stm_all_listing_tab" role="tab"
                                           data-toggle="tab">
                                            Encuentra tu moto </a>
                                    </li>

                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade in active" id="stm_all_listing_tab">
                                        <form action="https://motopatio.com/motos/" method="GET">
                                            <button type="submit" class="heading-font"><i
                                                class="fa fa-search"></i> <span>14</span> Vehículos
                                            </button>
                                            <div class="stm-filter-tab-selects filter stm-vc-ajax-filter">
                                                <div class="row">
                                                    <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                        <div class="stm-ajax-reloadable"><select name="condition"
                                                                                                 data-class="stm_select_overflowed">
                                                            <option value="">Escoger Condición</option>
                                                            <option value="certificado">Certificado usado (44)</option>
                                                            <option value="nuevo">nuevo (14)</option>
                                                            <option value="usado">usado (21)</option>
                                                        </select></div>
                                                    </div>
                                                    <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                        <div class="stm-ajax-reloadable">
                                                            <select name="make"
                                                                    data-class="stm_select_overflowed">
                                                                <option value="">Escoger Marca</option>
                                                                <option value="benelli">Benelli (2)</option>
                                                                <option value="bmw">BMW (10)</option>
                                                                <option value="cf-moto">CF Moto (1)</option>
                                                                <option value="daytona">Daytona (1)</option>
                                                                <option value="ducati">Ducati (2)</option>
                                                                <option value="harley-davidson">Harley-Davidson (1)
                                                                </option>
                                                                <option value="honda">Honda (8)</option>
                                                                <option value="husqvarna">Husqvarna (7)</option>
                                                                <option value="kawasaki">Kawasaki (11)</option>
                                                                <option value="ktm">KTM (20)</option>
                                                                <option value="sherco">Sherco (1)</option>
                                                                <option value="suzuki">Suzuki (6)</option>
                                                                <option value="yamaha">Yamaha (9)</option>
                                                            </select></div>
                                                    </div>
                                                    <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                        <div class="stm-ajax-reloadable"><select name="serie"
                                                                                                 data-class="stm_select_overflowed">
                                                            <option value="">Escoger Modelo</option>
                                                        </select></div>
                                                    </div>
                                                    <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                        <select name="mileage">
                                                            <option value="">Kilometros</option>
                                                            <!--<option value="< 10000">< 10000</option>-->
                                                            <option value="10000-25000"> 10000-25000</option>
                                                            <option value="25000-79777"> 25000-79777</option>
                                                            <option value="79777-82557"> 79777-82557</option>
                                                            <option value="82557-88297"> 82557-88297</option>
                                                            <option value="88297-92549"> 88297-92549</option>
                                                            <option value="> 95100">> 95100</option>
                                                        </select>
                                                        <input type="hidden" name="min_mileage"/>
                                                        <input type="hidden" name="max_mileage"/>
                                                    </div>
                                                    <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                        <div class="stm-ajax-reloadable"><select name="ca-year"
                                                                                                 data-class="stm_select_overflowed">
                                                            <option value="">Escoger Año</option>
                                                            <option value="1979">1979 (1)</option>
                                                            <option value="2000">2000 (2)</option>
                                                            <option value="2002">2002 (3)</option>
                                                            <option value="2003">2003 (1)</option>
                                                            <option value="2004">2004 (2)</option>
                                                            <option value="2005">2005 (2)</option>
                                                            <option value="2006">2006 (1)</option>
                                                            <option value="2007">2007 (1)</option>
                                                            <option value="2008">2008 (2)</option>
                                                            <option value="2009">2009 (2)</option>
                                                            <option value="2010">2010 (5)</option>
                                                            <option value="2011">2011 (1)</option>
                                                            <option value="2012">2012 (5)</option>
                                                            <option value="2013">2013 (11)</option>
                                                            <option value="2014">2014 (9)</option>
                                                            <option value="2015">2015 (5)</option>
                                                            <option value="2017">2017 (2)</option>
                                                            <option value="2018">2018 (3)</option>
                                                            <option value="2019">2019 (3)</option>
                                                            <option value="2020">2020 (5)</option>
                                                            <option value="2021">2021 (10)</option>
                                                            <option value="2022">2022 (2)</option>
                                                            <option value="na">N/A (1)</option>
                                                        </select></div>
                                                    </div>
                                                    <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col"><select
                                                        class="stm-filter-ajax-disabled-field" name="max_price"
                                                        data-class="stm_select_overflowed">
                                                        <option value="">Máx Precio</option>
                                                        <option value="1000">$1,000</option>
                                                        <option value="2000">$2,000</option>
                                                        <option value="6000">$6,000</option>
                                                        <option value="10000">$10,000</option>
                                                        <option value="15000">$15,000</option>
                                                        <option value="20000">$20,000</option>
                                                        <option value="25000">$25,000</option>
                                                        <option value="30000">$30,000</option>
                                                        <option value="35000">$35,000</option>
                                                        <option value="40000">$40,000</option>
                                                        <option value="45000">$45,000</option>
                                                        <option value="50000">$50,000</option>
                                                        <option value="70000">$70,000</option>
                                                        <option value="80000">$80,000</option>
                                                        <option value="100000">$100,000</option>
                                                        <option value="1000000">$1,000,000</option>
                                                    </select></div>
                                                    <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                        <div class="stm-ajax-reloadable"><select name="chasis"
                                                                                                 data-class="stm_select_overflowed">
                                                            <option value="">Escoger</option>
                                                        </select></div>
                                                    </div>
                                                    <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                        <div class="stm-location-search-unit">
                                                            <input type="text"
                                                                   placeholder="Introducir una ubicación"
                                                                   class="stm_listing_filter_text stm_listing_search_location"
                                                                   id="stm-car-location-stm_all_listing_tab"
                                                                   name="ca_location"/>
                                                            <input type="hidden" name="stm_lat"/>
                                                            <input type="hidden" name="stm_lng"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </div>


                            <div class="stm_cars_on_top  vc_custom_1626885053786">
                                <h2></h2>
                                <h1>
                                    <span style="color: #269aff;"><span style="color: #000000;">Motos</span> Destacadas</span>
                                </h1>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row wpb_row row-fluid">
                <div class="wpb_column vc_column_container col-sm-4">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            <div class="vc_empty_space" style="height: 64px"><span class="vc_empty_space_inner"></span>
                            </div>
                            <div class="wpb_single_image wpb_content_element vc_align_left">
                                <div class="wpb_wrapper">

                                    <div class="vc_single_image-wrapper   vc_box_border_grey"><img
                                        class="vc_single_image-img "
                                        src="/image/2021/10/motopatioimg-2.jpg" width="800" height="800"
                                        alt="motopatioimg (2)" title="motopatioimg (2)"/></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="wpb_column vc_column_container col-sm-4">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            <div class="vc_empty_space" style="height: 64px"><span class="vc_empty_space_inner"></span>
                            </div>
                            <div class="wpb_single_image wpb_content_element vc_align_left">
                                <div class="wpb_wrapper">

                                    <div class="vc_single_image-wrapper   vc_box_border_grey"><img
                                        class="vc_single_image-img "
                                        src="/image/2021/10/motopatioimg-1.jpg" width="800" height="800"
                                        alt="motopatioimg (1)" title="motopatioimg (1)"/></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="wpb_column vc_column_container col-sm-4">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            <div class="vc_empty_space" style="height: 64px"><span class="vc_empty_space_inner"></span>
                            </div>
                            <div class="wpb_single_image wpb_content_element vc_align_left">
                                <div class="wpb_wrapper">

                                    <div class="vc_single_image-wrapper   vc_box_border_grey"><img
                                        class="vc_single_image-img "
                                        src="/image/2021/10/motopatioimg-3.jpg" width="800" height="800"
                                        alt="motopatioimg (3)" title="motopatioimg (3)"/></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row wpb_row row-fluid vc_custom_1625512963830">
                <div class="wpb_column vc_column_container col-sm-12">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            <div class="vc_empty_space" style="height: 32px">
                                <span class="vc_empty_space_inner"></span>
                            </div>
                            <div class="wpb_text_column wpb_content_element ">
                                <div class="wpb_wrapper">
                                    <h1><span style="color: #269aff;"><span style="color: #000000;">Últimas</span> Motos</span>
                                    </h1>

                                </div>
                            </div>

                            <div class="vc_grid-container-wrapper vc_clearfix">
                                <div class="vc_grid-container vc_clearfix wpb_content_element vc_basic_grid"
                                     data-initial-loading-animation="fadeIn"
                                     data-vc-grid-settings="{&quot;page_id&quot;:4473,&quot;style&quot;:&quot;all&quot;,&quot;action&quot;:&quot;vc_get_vc_grid_data&quot;,&quot;shortcode_id&quot;:&quot;1633537920725-566bd2d9-f0a3-0&quot;,&quot;tag&quot;:&quot;vc_basic_grid&quot;}"
                                     data-vc-request="https://motopatio.com/wp-admin/admin-ajax.php"
                                     data-vc-post-id="4473" data-vc-public-nonce="44ecddd74e">

                                    <div class="vc_grid row vc_grid-gutter-30px vc_pageable-wrapper vc_hook_hover"
                                         data-vc-pageable-content="true">
                                        <div class="vc_pageable-slide-wrapper vc_clearfix" data-vc-grid-content="true">
                                            <div
                                                class="vc_grid-item vc_clearfix col-sm-4 vc_grid-item-zone-c-bottom">
                                                <div class="vc_grid-item-mini vc_clearfix ">
                                                    <div class="vc_gitem-animated-block ">
                                                        <div
                                                            class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-16-9 vc_gitem-is-link"
                                                            style="background-image: url('/image/2022/04/31DAEF25-FFD4-4F34-88AA-43553C9A3A43-768x1024.jpg') !important;">
                                                            <a href="listings/yamaha-yamaha-v-star-650-custom-2013-2/index.html"
                                                               title="Yamaha Yamaha V-Star 650 Custom 2013"
                                                               class="vc_gitem-link vc-zone-link"></a>
                                                            <img
                                                                src="/image/2022/04/31DAEF25-FFD4-4F34-88AA-43553C9A3A43-768x1024.jpg"
                                                                class="vc_gitem-zone-img" alt="">
                                                            <div class="vc_gitem-zone-mini"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="vc_gitem-zone vc_gitem-zone-c vc_custom_1419240516480">
                                                    <div class="vc_gitem-zone-mini">
                                                        <div class="vc_gitem_row row vc_gitem-row-position-top">
                                                            <div class="col-sm-8 vc_gitem-col vc_gitem-col-align-">
                                                                <div
                                                                    class="vc_custom_heading vc_gitem-post-data vc_gitem-post-data-source-post_title">
                                                                    <h3 style="font-size: 20px;color: #000000;text-align: left;font-family:Open Sans;font-weight:600;font-style:normal">
                                                                        <a href="listings/yamaha-yamaha-v-star-650-custom-2013-2/index.html"
                                                                           class="vc_gitem-link"
                                                                           title="Yamaha Yamaha V-Star 650 Custom 2013">Yamaha
                                                                            Yamaha V-Star 650 Custom 2013</a></h3></div>
                                                            </div>
                                                            <div
                                                                class="col-sm-4 cajaprice vc_gitem-col vc_gitem-col-align- vc_custom_1626887424630">
                                                                <div
                                                                    class="vc_gitem-post-meta-field-price pricelist vc_gitem-align-right">
                                                                    <span class="vc_gitem-post-meta-label">$</span>9200
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="vc_gitem_row row vc_gitem-row-position-top">
                                                            <div class="col-sm-12 vc_gitem-col vc_gitem-col-align-">
                                                                <div
                                                                    class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text">
                                                                    <span class="vc_sep_holder vc_sep_holder_l"><span
                                                                        style="border-color:#a5a5a5;"
                                                                        class="vc_sep_line"></span></span><span
                                                                    class="vc_sep_holder vc_sep_holder_r"><span
                                                                    style="border-color:#a5a5a5;"
                                                                    class="vc_sep_line"></span></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="vc_clearfix"></div>
                                        </div>
                                        <div class="vc_grid-item vc_clearfix col-sm-4 vc_grid-item-zone-c-bottom">
                                            <div class="vc_grid-item-mini vc_clearfix ">
                                                <div class="vc_gitem-animated-block ">
                                                    <div
                                                        class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-16-9 vc_gitem-is-link"
                                                        style="background-image: url('/image/2022/03/BD9B0CA2-FC19-4FE1-B6B9-5FDD6C3084E7-768x1024.jpg') !important;">
                                                        <a href="listings/yamaha-yamaha-v-star-650-custom-2013/index.html"
                                                           title="Yamaha Yamaha V-Star 650 Custom 2013"
                                                           class="vc_gitem-link vc-zone-link"></a><img
                                                        src="/image/2022/03/BD9B0CA2-FC19-4FE1-B6B9-5FDD6C3084E7-768x1024.jpg"
                                                        class="vc_gitem-zone-img" alt="">
                                                        <div class="vc_gitem-zone-mini"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="vc_gitem-zone vc_gitem-zone-c vc_custom_1419240516480">
                                                <div class="vc_gitem-zone-mini">
                                                    <div class="vc_gitem_row row vc_gitem-row-position-top">
                                                        <div class="col-sm-8 vc_gitem-col vc_gitem-col-align-">
                                                            <div
                                                                class="vc_custom_heading vc_gitem-post-data vc_gitem-post-data-source-post_title">
                                                                <h3 style="font-size: 20px;color: #000000;text-align: left;font-family:Open Sans;font-weight:600;font-style:normal">
                                                                    <a href="listings/yamaha-yamaha-v-star-650-custom-2013/index.html"
                                                                       class="vc_gitem-link"
                                                                       title="Yamaha Yamaha V-Star 650 Custom 2013">Yamaha
                                                                        Yamaha V-Star 650 Custom 2013</a></h3></div>
                                                        </div>
                                                        <div
                                                            class="col-sm-4 cajaprice vc_gitem-col vc_gitem-col-align- vc_custom_1626887424630">
                                                            <div
                                                                class="vc_gitem-post-meta-field-price pricelist vc_gitem-align-right">
                                                                <span class="vc_gitem-post-meta-label">$</span>9200
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="vc_gitem_row row vc_gitem-row-position-top">
                                                        <div class="col-sm-12 vc_gitem-col vc_gitem-col-align-">
                                                            <div
                                                                class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text">
                                                                <span class="vc_sep_holder vc_sep_holder_l"><span
                                                                    style="border-color:#a5a5a5;"
                                                                    class="vc_sep_line"></span></span><span
                                                                class="vc_sep_holder vc_sep_holder_r"><span
                                                                style="border-color:#a5a5a5;"
                                                                class="vc_sep_line"></span></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="vc_clearfix"></div>
                                    </div>
                                    <div class="vc_grid-item vc_clearfix col-sm-4 vc_grid-item-zone-c-bottom">
                                        <div class="vc_grid-item-mini vc_clearfix ">
                                            <div class="vc_gitem-animated-block ">
                                                <div
                                                    class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-16-9 vc_gitem-is-link"
                                                    style="background-image: url('/image/2022/04/2DA14674-2688-4E3D-AAE2-339406CD59BE-768x1024.jpg') !important;">
                                                    <a href="listings/ktm-ktm-790-adventure-r-2019/index.html"
                                                       title="KTM KTM 790 Adventure R 2019"
                                                       class="vc_gitem-link vc-zone-link"></a><img
                                                    src="/image/2022/04/2DA14674-2688-4E3D-AAE2-339406CD59BE-768x1024.jpg"
                                                    class="vc_gitem-zone-img" alt="">
                                                    <div class="vc_gitem-zone-mini"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="vc_gitem-zone vc_gitem-zone-c vc_custom_1419240516480">
                                            <div class="vc_gitem-zone-mini">
                                                <div class="vc_gitem_row row vc_gitem-row-position-top">
                                                    <div class="col-sm-8 vc_gitem-col vc_gitem-col-align-">
                                                        <div
                                                            class="vc_custom_heading vc_gitem-post-data vc_gitem-post-data-source-post_title">
                                                            <h3 style="font-size: 20px;color: #000000;text-align: left;font-family:Open Sans;font-weight:600;font-style:normal">
                                                                <a href="listings/ktm-ktm-790-adventure-r-2019/index.html"
                                                                   class="vc_gitem-link"
                                                                   title="KTM KTM 790 Adventure R 2019">KTM KTM 790
                                                                    Adventure R 2019</a></h3></div>
                                                    </div>
                                                    <div
                                                        class="col-sm-4 cajaprice vc_gitem-col vc_gitem-col-align- vc_custom_1626887424630">
                                                        <div
                                                            class="vc_gitem-post-meta-field-price pricelist vc_gitem-align-right">
                                                            <span class="vc_gitem-post-meta-label">$</span>22000
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="vc_gitem_row row vc_gitem-row-position-top">
                                                    <div class="col-sm-12 vc_gitem-col vc_gitem-col-align-">
                                                        <div
                                                            class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text">
                                                            <span class="vc_sep_holder vc_sep_holder_l"><span
                                                                style="border-color:#a5a5a5;"
                                                                class="vc_sep_line"></span></span><span
                                                            class="vc_sep_holder vc_sep_holder_r"><span
                                                            style="border-color:#a5a5a5;"
                                                            class="vc_sep_line"></span></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="vc_clearfix"></div>
                                </div>
                                <div class="vc_grid-item vc_clearfix col-sm-4 vc_grid-item-zone-c-bottom">
                                    <div class="vc_grid-item-mini vc_clearfix ">
                                        <div class="vc_gitem-animated-block ">
                                            <div
                                                class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-16-9 vc_gitem-is-link"
                                                style="background-image: url('/image/2022/03/402EDD94-1035-4607-94F2-39E682D56BA6-768x1024.jpg') !important;">
                                                <a href="listings/kawasaki-kawasaki-vn-900-2013/index.html"
                                                   title="Kawasaki Kawasaki VN 900 2013"
                                                   class="vc_gitem-link vc-zone-link"></a><img
                                                src="/image/2022/03/402EDD94-1035-4607-94F2-39E682D56BA6-768x1024.jpg"
                                                class="vc_gitem-zone-img" alt="">
                                                <div class="vc_gitem-zone-mini"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="vc_gitem-zone vc_gitem-zone-c vc_custom_1419240516480">
                                        <div class="vc_gitem-zone-mini">
                                            <div class="vc_gitem_row row vc_gitem-row-position-top">
                                                <div class="col-sm-8 vc_gitem-col vc_gitem-col-align-">
                                                    <div
                                                        class="vc_custom_heading vc_gitem-post-data vc_gitem-post-data-source-post_title">
                                                        <h3 style="font-size: 20px;color: #000000;text-align: left;font-family:Open Sans;font-weight:600;font-style:normal">
                                                            <a href="listings/kawasaki-kawasaki-vn-900-2013/index.html"
                                                               class="vc_gitem-link"
                                                               title="Kawasaki Kawasaki VN 900 2013">Kawasaki Kawasaki
                                                                VN 900 2013</a></h3></div>
                                                </div>
                                                <div
                                                    class="col-sm-4 cajaprice vc_gitem-col vc_gitem-col-align- vc_custom_1626887424630">
                                                    <div
                                                        class="vc_gitem-post-meta-field-price pricelist vc_gitem-align-right">
                                                        <span class="vc_gitem-post-meta-label">$</span>12900
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="vc_gitem_row row vc_gitem-row-position-top">
                                                <div class="col-sm-12 vc_gitem-col vc_gitem-col-align-">
                                                    <div
                                                        class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text">
                                                        <span class="vc_sep_holder vc_sep_holder_l"><span
                                                            style="border-color:#a5a5a5;"
                                                            class="vc_sep_line"></span></span><span
                                                        class="vc_sep_holder vc_sep_holder_r"><span
                                                        style="border-color:#a5a5a5;"
                                                        class="vc_sep_line"></span></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="vc_clearfix"></div>
                            </div>
                            <div class="vc_grid-item vc_clearfix col-sm-4 vc_grid-item-zone-c-bottom">
                                <div class="vc_grid-item-mini vc_clearfix ">
                                    <div class="vc_gitem-animated-block ">
                                        <div
                                            class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-16-9 vc_gitem-is-link"
                                            style="background-image: url('/image/2022/03/20D020C9-845A-4FCF-BE0B-29CD86F57110-768x1024.jpg') !important;">
                                            <a href="listings/honda-honda-crf-250-rx-2020/index.html"
                                               title="Honda Honda CRF 250 RX 2020"
                                               class="vc_gitem-link vc-zone-link"></a><img
                                            src="/image/2022/03/20D020C9-845A-4FCF-BE0B-29CD86F57110-768x1024.jpg"
                                            class="vc_gitem-zone-img" alt="">
                                            <div class="vc_gitem-zone-mini"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="vc_gitem-zone vc_gitem-zone-c vc_custom_1419240516480">
                                    <div class="vc_gitem-zone-mini">
                                        <div class="vc_gitem_row row vc_gitem-row-position-top">
                                            <div class="col-sm-8 vc_gitem-col vc_gitem-col-align-">
                                                <div
                                                    class="vc_custom_heading vc_gitem-post-data vc_gitem-post-data-source-post_title">
                                                    <h3 style="font-size: 20px;color: #000000;text-align: left;font-family:Open Sans;font-weight:600;font-style:normal">
                                                        <a href="listings/honda-honda-crf-250-rx-2020/index.html"
                                                           class="vc_gitem-link" title="Honda Honda CRF 250 RX 2020">Honda
                                                            Honda CRF 250 RX 2020</a></h3></div>
                                            </div>
                                            <div
                                                class="col-sm-4 cajaprice vc_gitem-col vc_gitem-col-align- vc_custom_1626887424630">
                                                <div
                                                    class="vc_gitem-post-meta-field-price pricelist vc_gitem-align-right">
                                                    <span class="vc_gitem-post-meta-label">$</span>9800
                                                </div>
                                            </div>
                                        </div>
                                        <div class="vc_gitem_row row vc_gitem-row-position-top">
                                            <div class="col-sm-12 vc_gitem-col vc_gitem-col-align-">
                                                <div
                                                    class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text">
                                                    <span class="vc_sep_holder vc_sep_holder_l"><span
                                                        style="border-color:#a5a5a5;"
                                                        class="vc_sep_line"></span></span><span
                                                    class="vc_sep_holder vc_sep_holder_r"><span
                                                    style="border-color:#a5a5a5;" class="vc_sep_line"></span></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="vc_clearfix"></div>
                        </div>
                        <div class="vc_grid-item vc_clearfix col-sm-4 vc_grid-item-zone-c-bottom">
                            <div class="vc_grid-item-mini vc_clearfix ">
                                <div class="vc_gitem-animated-block ">
                                    <div
                                        class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-16-9 vc_gitem-is-link"
                                        style="background-image: url('/image/2022/03/78766DD7-A7EF-44BB-8124-667C96E95151-768x1024.jpg') !important;">
                                        <a href="listings/suzuki-suzuki-dr650s-2021/index.html"
                                           title="Suzuki Suzuki DR650S 2021" class="vc_gitem-link vc-zone-link"></a><img
                                        src="/image/2022/03/78766DD7-A7EF-44BB-8124-667C96E95151-768x1024.jpg"
                                        class="vc_gitem-zone-img" alt="">
                                        <div class="vc_gitem-zone-mini"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="vc_gitem-zone vc_gitem-zone-c vc_custom_1419240516480">
                                <div class="vc_gitem-zone-mini">
                                    <div class="vc_gitem_row row vc_gitem-row-position-top">
                                        <div class="col-sm-8 vc_gitem-col vc_gitem-col-align-">
                                            <div
                                                class="vc_custom_heading vc_gitem-post-data vc_gitem-post-data-source-post_title">
                                                <h3 style="font-size: 20px;color: #000000;text-align: left;font-family:Open Sans;font-weight:600;font-style:normal">
                                                    <a href="listings/suzuki-suzuki-dr650s-2021/index.html"
                                                       class="vc_gitem-link" title="Suzuki Suzuki DR650S 2021">Suzuki
                                                        Suzuki DR650S 2021</a></h3></div>
                                        </div>
                                        <div
                                            class="col-sm-4 cajaprice vc_gitem-col vc_gitem-col-align- vc_custom_1626887424630">
                                            <div class="vc_gitem-post-meta-field-price pricelist vc_gitem-align-right">
                                                <span class="vc_gitem-post-meta-label">$</span>11300
                                            </div>
                                        </div>
                                    </div>
                                    <div class="vc_gitem_row row vc_gitem-row-position-top">
                                        <div class="col-sm-12 vc_gitem-col vc_gitem-col-align-">
                                            <div
                                                class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text">
                                                <span class="vc_sep_holder vc_sep_holder_l"><span
                                                    style="border-color:#a5a5a5;"
                                                    class="vc_sep_line"></span></span><span
                                                class="vc_sep_holder vc_sep_holder_r"><span
                                                style="border-color:#a5a5a5;" class="vc_sep_line"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="vc_clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </SiteLayout>
</template>

<script>
    import 'vue3-carousel/dist/carousel.css';

    import SiteLayout from '@/Layouts/AppSite.vue'
    import {Head} from '@inertiajs/inertia-vue3';
    import {Carousel, Slide, Pagination, Navigation} from 'vue3-carousel';

    export default {
        components: {
            SiteLayout,
            Head,
            Carousel,
            Slide,
            Pagination,
            Navigation,
        },
    }
</script>
