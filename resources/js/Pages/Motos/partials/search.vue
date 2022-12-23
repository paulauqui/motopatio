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
                        <Select2 v-model="form.condition"
                                 id="condition"
                                 name="condition"
                                 :options="conditions"
                                 :settings="{ allowClear: true, multiple: false }"
                                 placeholder="Escoger condición"
                                 @change="myChangeEvent($event)"
                                 @select="mySelectEvent($event)"
                        />
                    </div>
                </div>

                <div class="col-md-12 col-sm-6 stm-filter_condition">
                    <div class="form-group">
                        <Select2 v-model="form.brand"
                                 id="brand"
                                 name="brand"
                                 :options="brands"
                                 :settings="{ allowClear: true, multiple: false }"
                                 placeholder="Escoger Marca"
                                 @change="getModel($event)"
                                 @select="getModel($event)"
                        />
                    </div>
                </div>

                <div class="col-md-12 col-sm-6 stm-filter_condition">
                    <div class="form-group">
                        <Select2 v-model="form.model"
                                 id="model"
                                 name="model"
                                 :options="models"
                                 :settings="{ allowClear: true, multiple: false }"
                                 placeholder="Escoger Modelo"
                                 @change="myChangeEvent($event)"
                                 @select="mySelectEvent($event)"
                        />
                    </div>
                </div>

                <div class="col-md-12 col-sm-6 stm-filter_condition">
                    <div class="form-group">
                        <Select2 v-model="form.kilometer"
                                 id="kilometer"
                                 model="kilometer"
                                 :options="kilometers"
                                 :settings="{ allowClear: true, multiple: false }"
                                 placeholder="Kilometros"
                        />

                        <input type="hidden" name="min_mileage"/>
                        <input type="hidden" name="max_mileage"/>
                    </div>
                </div>

                <div class="col-md-12 col-sm-6 stm-filter_condition">
                    <div class="form-group">
                        <Select2 v-model="form.year"
                                 id="year"
                                 name="year"
                                 :options="years"
                                 :settings="{ allowClear: true, multiple: false }"
                                 placeholder="Escoger Año"
                                 @change="myChangeEvent($event)"
                                 @select="mySelectEvent($event)"
                        />
                    </div>
                </div>

                <div class="col-md-12 col-sm-6 stm-filter_condition">
                    <div class="form-group">
                        <Select2 v-model="form.price"
                                 id="price"
                                 name="price"
                                 :options="prices"
                                 :settings="{ allowClear: true, multiple: false }"
                                 placeholder="Máx Precio"
                        />
                    </div>
                </div>

                <div class="col-md-12 col-sm-6 stm-filter_condition">
                    <div class="form-group">
                        <Select2 v-model="form.transmission"
                                 id="select"
                                 name="select"
                                 :options="transmissions"
                                 :settings="{ allowClear: true, multiple: false }"
                                 placeholder="Escoger Transmision"
                                 @change="myChangeEvent($event)"
                                 @select="mySelectEvent($event)"
                        />
                    </div>
                </div>

                <div class="col-md-12 col-sm-6 stm-filter_condition">
                    <div class="form-group">
                        <input v-model="form.location"
                               type="text"
                               placeholder="Introducir una ubicación"
                               class="stm_listing_filter_text stm_listing_search_location"
                               id="stm-car-location-stm_all_listing_tab"
                               name="ca_location"/>


                        <input type="hidden" name="stm_lat"/>
                        <input type="hidden" name="stm_lng"/>
                    </div>
                </div>

                <div class="col-md-12 col-sm-12">
                    <div class="filter-search_radius stm-slider-filter-type-unit">
                        <div class="clearfix">
                            <h5 class="pull-left">Radio de búsqueda</h5>
                            <div class="stm-current-slider-labels">100</div>
                        </div>
                        <div class="stm-price-range-unit">
                            <div class="stm-search_radius-range stm-filter-type-slider"></div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <input type="text" name="max_search_radius"
                                       id="stm_slide_filter_max_search_radius" class="form-control"/>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 col-sm-12">
                    <div class="sidebar-action-units">
                        <!--View type-->
                        <input type="hidden" id="stm_view_type" name="view_type"
                               value=""/>
                        <!--Filter links-->
                        <input type="hidden" id="stm-filter-links-input" name="stm_filter_link" value=""/>
                        <!--Popular-->
                        <input type="hidden" name="popular" value=""/>

                        <input type="hidden" name="s" value=""/>
                        <input type="hidden" name="sort_order" value=""/>

                        <input id="stm-classic-filter-submit" class="hidden" type="submit"
                               value="Mostrar Motos"/>

                        <button class="button">
                            <span>Restablecer todo</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="stm-filter-listing-directory-price">
            <div class="stm-accordion-single-unit price">
                <a class="title" data-toggle="collapse" href="#price" aria-expanded="true">
                    <h5>Seleccionar precio</h5>
                    <span class="minus"></span>
                </a>
                <div class="stm-accordion-content">
                    <div class="collapse in content" id="price">
                        <div class="stm-accordion-content-wrapper">
                            <div class="stm-price-range-unit">
                                <div class="stm-price-range"></div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-md-wider-right">
                                    <input type="text" name="min_price" id="stm_filter_min_price"/>
                                </div>
                                <div class="col-md-6 col-sm-6 col-md-wider-left">
                                    <input type="text" name="max_price" id="stm_filter_max_price"/>
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
    import Select2 from 'vue3-select2-component';

    export default {
        name: "Motos:search",
        components: {
            Select2
        },
        props: {
            vehicles: 0,
            form: Object.assign({}, {
                condition: '',
                brand: '',
                model: '',
                kilometer: '',
                year: '',
                price: '',
                transmission: '',
                location: ''
            }),
        },
        data() {
            return {
                conditions: [],
                brands: [],
                models: [],
                kilometers: [],
                prices: [],
                years: [],
                transmissions: []
            }
        },
        methods: {
            getCondition() {
                axios.post(route('api.condition.select2', this.form)).then(response => {
                    this.conditions = response.data.results;
                });
            },
            getBrand() {
                axios.post(route('api.brand.select2'), this.form).then(response => {
                    this.brands = response.data.results;
                });
            },
            getModel(event) {
                axios.post(route('api.model.select2', this.form)).then(response => {
                    this.models = response.data.results;
                });
            },
            getKilometers() {
                axios.post(route('api.motorcycle-kilometer.select2'), this.form).then(response => {
                    this.kilometers = response.data.results;
                });
            },
            getPrices() {
                axios.post(route('api.motorcycle-prices.select2'), this.form).then(response => {
                    this.prices = response.data.results;
                });
            },
            getYears() {
                axios.post(route('api.motorcycle-years.select2'), this.form).then(response => {
                    this.years = response.data.results;
                });
            },
            getTransmition() {
                axios.post(route('api.transmission.select2'), this.form).then(response => {
                    this.transmissions = response.data.results;
                });
            },
            myChangeEvent(val) {
                // console.log(val);
                // this.$emit('submit');
            },
            mySelectEvent({id, text}) {
                // console.log({id, text})
            }
        },
        mounted() {
            this.getCondition();
            this.getBrand();
            this.getKilometers();
            this.getPrices();
            this.getYears();
            this.getTransmition();
        }
    }
</script>
