<style type="text/css">
    #wrapper {
        background-color: #f0f2f5 !important;
    }
</style>

<template>
    <Layout>
        <Banner/>
        <Breadcrumbs/>
        <div class="container">
            <div class="vc_row wpb_row vc_row-fluid">
                <div class="wpb_column vc_column_container vc_col-sm-12">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            <div class="stm-pricing stm-pricing_3" id="stm-pricing-62d84c0f0eaaf">
                                <div class="stm-pricing__content clearfix">
                                    <div class="stm-pricing__side-panel">
                                        <div class="stm-pricing__filters heading-font">
                                            <ul>
                                                <li class="stm-pricing__filter stm-pricing__filter_active">
                                                    <a data-period-filter="month" href="#">Mes</a>
                                                </li>
                                            </ul>
                                        </div>

                                        <ul class="stm-pricing__features heading-font">
                                            <li class="stm-pricing__feature motors-price-side">
                                                Adquirir plan
                                            </li>
                                            <li class="stm-pricing__feature">
                                                Publicaciones
                                            </li>
                                            <li class="stm-pricing__feature">
                                                Tiempo
                                            </li>
                                            <li class="stm-pricing__feature">
                                                Destacados
                                            </li>
                                            <li class="stm-pricing__feature">
                                                Aparece en micrositio
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="stm-pricing__tables">
                                        <div class="stm-pricing__tables-row clearfix">
                                            <div class="stm-pricing__tables-col" v-for="plan in planes">
                                                <div class="stm-pricing__tables-col-inner">
                                                    <div
                                                        class="stm_pricing_table_col_labels heading-font clearfix">
                                                        <div class="stm_pricing_table_single_label">{{plan.name}}</div>
                                                    </div>
                                                    <div class="stm-pricing-table heading-font">
                                                        <div class="stm-pricing-table__title">{{plan.name}}</div>
                                                        <ul class="stm-pricing-table__periods">
                                                            <li class="stm-pricing-table__periods-item stm-pricing-table__periods-item_active"
                                                                data-period="month">
                                                                <div class="stm-pricing-table__price">
                                                                    <span v-if="plan.price">$</span>
                                                                    {{plan.price}}
                                                                    <i v-if="!plan.price" class="fa fa-minus"></i>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                        <ul class="stm-pricing-table__features">
                                                            <li class="stm-pricing-table__feature">
                                                                <div class="stm-pricing-table__feature-label">
                                                                    Publicaciones
                                                                </div>
                                                                <div class="stm-pricing-table__feature-value">
                                                                    {{plan.publication}}
                                                                </div>
                                                            </li>
                                                            <li class="stm-pricing-table__feature">
                                                                <div class="stm-pricing-table__feature-label">
                                                                    Tiempo
                                                                </div>
                                                                <div class="stm-pricing-table__feature-value">
                                                                    {{plan.duration?plan.duration+' días':'Ilimitado'}}
                                                                </div>
                                                            </li>
                                                            <li class="stm-pricing-table__feature">
                                                                <div class="stm-pricing-table__feature-label">
                                                                    Destacados
                                                                </div>
                                                                <div class="stm-pricing-table__feature-value">
                                                                    {{plan.featured?plan.featured:'X'}}
                                                                </div>
                                                            </li>
                                                            <li class="stm-pricing-table__feature">
                                                                <div class="stm-pricing-table__feature-label">
                                                                    Aparece en micrositio
                                                                </div>
                                                                <div class="stm-pricing-table__feature-value">
                                                                    {{plan.microsite?plan.microsite:'X'}}
                                                                </div>
                                                            </li>
                                                        </ul>
                                                        <div class="stm-pricing-table__periods-link"
                                                             data-period="month">
                                                            <div class="stm-pricing-table__action">
                                                                <a href="#" @click="redirecPage('voyager.checkout.create', plan.id)" class="button">
                                                                    Entrar
                                                                    <i class="stm-icon stm-icon-arrow-right"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
    import Banner from '@/Pages/Planes/partials/banner';
    import Breadcrumbs from '@/Pages/Planes/partials/breadcrumbs';

    export default {
        name: '@Planes',
        components: {
            Layout,
            Banner,
            Breadcrumbs
        },
        props: {
            planes: Object,
        },
        methods: {
            redirecPage(name, plan){
                // console.log(this.route(name, {plan:plan}));
                window.location.href = this.route(name, {plan:plan});
            }
        },
        mounted() {
            (function ($) {
                "use strict";
                $('body').on({
                    mouseenter: function () {
                        $(this).find('div.stm-pricing-table__periods-link').addClass('stm-pricing-table__periods-item_active');
                    },
                    mouseleave: function () {
                        $(this).find('div.stm-pricing-table__periods-link').removeClass('stm-pricing-table__periods-item_active');
                    }
                }, '.stm-pricing-table');
            })(jQuery);
        }
    }
</script>
