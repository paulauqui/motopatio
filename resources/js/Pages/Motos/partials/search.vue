<template>
    <form action="https://motopatio.com/motos/" method="get"
          data-trigger="filter" data-action="listings-result">
        <div class="filter filter-sidebar ajax-filter">
            <div class="sidebar-entry-header">
                <i class="stm-icon-car_search"></i>
                <span class="h4">Opciones de búsqueda</span>
            </div>

            <div class="row row-pad-top-24">

                <div class="col-md-12 col-sm-6 stm-filter_condition">
                    <div class="form-group">
                        <select name="condition" class="form-control">
                            <option
                                value="" selected='selected'>
                                Condición
                            </option>
                            <option
                                value="certificado">
                                Certificado usado
                            </option>
                            <option
                                value="nuevo" disabled='disabled'>
                                nuevo
                            </option>
                            <option
                                value="otro" disabled='disabled'>
                                otro
                            </option>
                            <option
                                value="usado">
                                usado
                            </option>
                        </select>
                    </div>
                </div>
                <div class="col-md-12 col-sm-6 stm-filter_make">
                    <div class="form-group">
                        <select name="make"
                                class="form-control"></select>
                    </div>
                    <div class="col-md-12 col-sm-6 stm-filter_serie">
                        <div class="form-group">
                            <select name="serie"
                                    class="form-control"></select>
                        </div>
                        <div
                            class="col-md-12 col-sm-6 stm-filter_mileage">
                            <div class="form-group">
                                <select name="mileage"
                                        class="form-control">
                                    <option
                                        value="" selected='selected'>
                                        Max Kilometros
                                    </option>
                                    <option
                                        value="&lt;10000">
                                        Menor a 10000
                                    </option>
                                    <option
                                        value="10000-25000">
                                        10000-25000
                                    </option>
                                    <option
                                        value="25000-79777">
                                        25000-79777
                                    </option>
                                    <option
                                        value="79777-82557">
                                        79777-82557
                                    </option>
                                    <option
                                        value="82557-88297">
                                        82557-88297
                                    </option>
                                    <option
                                        value="88297-92549">
                                        88297-92549
                                    </option>
                                    <option
                                        value="92549-95100">
                                        92549-95100
                                    </option>
                                    <option
                                        value="&gt;95100">
                                        >95100
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div
                            class="col-md-12 col-sm-6 stm-filter_ca-year">
                            <div class="form-group">
                                <select name="ca-year"
                                        class="form-control">
                                    <option
                                        value="" selected='selected'>
                                        Año
                                    </option>
                                    <option
                                        value="1967"
                                        disabled='disabled'>
                                        1967
                                    </option>
                                    <option
                                        value="1974"
                                        disabled='disabled'>
                                        1974
                                    </option>
                                    <option
                                        value="1979">
                                        1979
                                    </option>
                                    <option
                                        value="1980"
                                        disabled='disabled'>
                                        1980
                                    </option>
                                    <option
                                        value="1990"
                                        disabled='disabled'>
                                        1990
                                    </option>
                                    <option
                                        value="1992"
                                        disabled='disabled'>
                                        1992
                                    </option>
                                    <option
                                        value="1999"
                                        disabled='disabled'>
                                        1999
                                    </option>
                                    <option
                                        value="2000">
                                        2000
                                    </option>
                                    <option
                                        value="2001"
                                        disabled='disabled'>
                                        2001
                                    </option>
                                    <option
                                        value="2002">
                                        2002
                                    </option>
                                    <option
                                        value="2003"
                                        disabled='disabled'>
                                        2003
                                    </option>
                                    <option
                                        value="2004">
                                        2004
                                    </option>
                                    <option
                                        value="2005">
                                        2005
                                    </option>
                                    <option
                                        value="2006"
                                        disabled='disabled'>
                                        2006
                                    </option>
                                    <option
                                        value="2007"
                                        disabled='disabled'>
                                        2007
                                    </option>
                                    <option
                                        value="2008">
                                        2008
                                    </option>
                                    <option
                                        value="2009"
                                        disabled='disabled'>
                                        2009
                                    </option>
                                    <option
                                        value="2010"
                                        disabled='disabled'>
                                        2010
                                    </option>
                                    <option
                                        value="2011">
                                        2011
                                    </option>
                                    <option
                                        value="2012">
                                        2012
                                    </option>
                                    <option
                                        value="2013">
                                        2013
                                    </option>
                                    <option
                                        value="2014">
                                        2014
                                    </option>
                                    <option
                                        value="2015"
                                        disabled='disabled'>
                                        2015
                                    </option>
                                    <option
                                        value="2016"
                                        disabled='disabled'>
                                        2016
                                    </option>
                                    <option
                                        value="2017">
                                        2017
                                    </option>
                                    <option
                                        value="2018"
                                        disabled='disabled'>
                                        2018
                                    </option>
                                    <option
                                        value="2019"
                                        disabled='disabled'>
                                        2019
                                    </option>
                                    <option
                                        value="2020">
                                        2020
                                    </option>
                                    <option
                                        value="2021"
                                        disabled='disabled'>
                                        2021
                                    </option>
                                    <option
                                        value="2022"
                                        disabled='disabled'>
                                        2022
                                    </option>
                                    <option
                                        value="na" disabled='disabled'>
                                        N/A
                                    </option>
                                </select></div>
                        </div>
                        <div
                            class="col-md-12 col-sm-6 stm-filter_transmission">
                            <div class="form-group">
                                <select name="transmission"
                                        class="form-control">
                                    <option
                                        value="" selected='selected'>
                                        Transmisión
                                    </option>
                                    <option
                                        value="automatico"
                                        disabled='disabled'>
                                        Automático
                                    </option>
                                    <option
                                        value="6-manual">
                                        Manual
                                    </option>
                                    <option
                                        value="semi"
                                        disabled='disabled'>
                                        Semi-automático
                                    </option>
                                </select></div>
                        </div>

                        <!--Location inputs-->

                        <div class="col-md-12 col-sm-12">
                            <div class="form-group boats-location">
                                <div class="stm-location-search-unit">
                                    <input type="text"
                                           id="ca_location_listing_filter"
                                           class="stm_listing_search_location"
                                           name="ca_location"
                                           value=""/>
                                    <input type="hidden" name="stm_lat"
                                           value="0">
                                    <input type="hidden" name="stm_lng"
                                           value="0">
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12 col-sm-12">
                            <div
                                class="filter-search_radius stm-slider-filter-type-unit">
                                <div class="clearfix">
                                    <h5 class="pull-left">Radio de
                                        búsqueda</h5>
                                    <div
                                        class="stm-current-slider-labels">
                                        100
                                    </div>
                                </div>
                                <div class="stm-price-range-unit">
                                    <div
                                        class="stm-search_radius-range stm-filter-type-slider"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 col-sm-12">
                                        <input type="text"
                                               name="max_search_radius"
                                               id="stm_slide_filter_max_search_radius"
                                               class="form-control"/>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>

                    <!--View type-->
                    <input type="hidden" id="stm_view_type"
                           name="view_type"
                           value=""/>
                    <!--Filter links-->
                    <input type="hidden" id="stm-filter-links-input"
                           name="stm_filter_link" value=""/>
                    <!--Popular-->
                    <input type="hidden" name="popular" value=""/>

                    <input type="hidden" name="s" value=""/>
                    <input type="hidden" name="sort_order" value=""/>

                    <div class="sidebar-action-units">
                        <input id="stm-classic-filter-submit"
                               class="hidden" type="submit"
                               value="Mostrar Motos"/>

                        <a href="index.html"
                           class="button"><span>Restablecer todo</span></a>
                    </div>

                </div>

                <!--Classified price-->

                <div class="stm-filter-listing-directory-price">
                    <div class="stm-accordion-single-unit price">
                        <a class="title" data-toggle="collapse"
                           href="#price" aria-expanded="true">
                            <h5>Seleccionar precio</h5>
                            <span class="minus"></span>
                        </a>
                        <div class="stm-accordion-content">
                            <div class="collapse in content" id="price">
                                <div
                                    class="stm-accordion-content-wrapper">
                                    <div class="stm-price-range-unit">
                                        <div
                                            class="stm-price-range"></div>
                                    </div>
                                    <div class="row">
                                        <div
                                            class="col-md-6 col-sm-6 col-md-wider-right">
                                            <input type="text"
                                                   name="min_price"
                                                   id="stm_filter_min_price"/>
                                        </div>
                                        <div
                                            class="col-md-6 col-sm-6 col-md-wider-left">
                                            <input type="text"
                                                   name="max_price"
                                                   id="stm_filter_max_price"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</template>

<script>
    export default {
        name: "Motos:search"
    }
</script>
