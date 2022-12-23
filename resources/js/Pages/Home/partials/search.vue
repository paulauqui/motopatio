<link rel="stylesheet" href="../../../../../public/asset/uploads/stm_uploads/skin-custom6de1.css">
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
                                    <button type="submit" class="heading-font">
                                        <i class="fa fa-search"></i>
                                        <span>{{vehicles}}</span> Vehículos
                                    </button>
                                    <div class="stm-filter-tab-selects filter stm-vc-ajax-filter">
                                        <div class="row">
                                            <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                <div class="stm-ajax-reloadable">
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
                                            <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                <div class="stm-ajax-reloadable">
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
                                            <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                <div class="stm-ajax-reloadable">
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
                                            <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
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
                                            <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                <div class="stm-ajax-reloadable">
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
                                            <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                <Select2 v-model="form.price"
                                                         id="price"
                                                         name="price"
                                                         :options="prices"
                                                         :settings="{ allowClear: true, multiple: false }"
                                                         placeholder="Máx Precio"
                                                />
                                            </div>
                                            <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                <div class="stm-ajax-reloadable">
                                                    <Select2 v-model="form.transmission"
                                                             id="select"
                                                             name="select"
                                                             :options="transmissions"
                                                             :settings="{ allowClear: true, multiple: false }"
                                                             placeholder="Escoger Transmision"
                                                             @change="myChangeEvent($event)"
                                                             @select="mySelectEvent($event)"
                                                    />

                                                    <!--<select name="chasis" data-class="stm_select_overflowed">-->
                                                    <!--<option value="">Escoger</option>-->
                                                    <!--</select>-->
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-6 col-xs-12 stm-select-col">
                                                <div class="stm-location-search-unit">
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
    import Select2 from 'vue3-select2-component';

    export default {
        name: 'Home:Search',
        components: {
            Select2
        },
        props: {
            vehicles: 0,
            form: Object.assign({}, {
                condition: null,
                brand: null,
                model: null,
                kilometer: null,
                year: null,
                price: null,
                transmission: null,
                location: null
            }),
        },
        data() {
            return {
                conditions: Object.assign({}, {}),
                brands: Object.assign({}, {}),
                models: Object.assign({}, {}),
                kilometers: Object.assign({}, {}),
                prices: Object.assign({}, {}),
                years: Object.assign({}, {}),
                transmissions: Object.assign({}, {}),
                myOptions: ['op1', 'op2', 'op3'] // or [{id: key, text: value}, {id: key, text: value}]
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
