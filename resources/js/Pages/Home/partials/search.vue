<template>
    <div class="vc_row wpb_row vc_row-fluid">
        <div class="wpb_column vc_column_container vc_col-sm-12">
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
                                                <div class="stm-ajax-reloadable">
                                                    <select name="condition" data-class="stm_select_overflowed">
                                                        <option value="">Escoger Condición</option>
                                                        <option value="certificado">Certificado usado (44)
                                                        </option>
                                                        <option value="nuevo">nuevo (14)</option>
                                                        <option value="usado">usado (21)</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                <div class="stm-ajax-reloadable">
                                                    <select name="make" data-class="stm_select_overflowed">
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
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                <div class="stm-ajax-reloadable">
                                                    <select name="serie" data-class="stm_select_overflowed">
                                                        <option value="">Escoger Modelo</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                <select name="mileage" data-class="stm_select_overflowed"
                                                        data-sel-type="mileage">
                                                    <option value="">Kilometros</option>
                                                    <option value="< 10000">Menor 10000</option>
                                                    <option value="10000-25000"> 10000-25000</option>
                                                    <option value="25000-79777"> 25000-79777</option>
                                                    <option value="79777-82557"> 79777-82557</option>
                                                    <option value="82557-88297"> 82557-88297</option>
                                                    <option value="88297-92549"> 88297-92549</option>
                                                    <option value="> 95100">> 95100</option>
                                                </select>
                                                <input type="hidden" name="min_mileage"/><input
                                                type="hidden"
                                                name="max_mileage"/>
                                            </div>
                                            <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                <div class="stm-ajax-reloadable">
                                                    <select name="ca-year"
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
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                <select
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
                </div>
            </div>
        </div>
    </div>
</template>

<script>

    export default {
        name: 'Home:Search',
        components: {},
        mounted() {

        }
    }
</script>
