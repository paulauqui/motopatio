<style scoped>
    table > tbody tr td {
        padding: 9px 0 8px;
        font-size: 12px;
        color: #888888;
        border-bottom: 1px solid #d5d9e0;
    }

</style>
<template>
    <Layout>

        <Banner/>

        <!-- Breads -->
        <Breads/>

        <div class="container">
            <div class="container">
                <div class="row row-4 car-listing-row stm-car-compare-row">
                    <div class="col-md-3 col-sm-3">
                        <h2 class="compare-title">Comparar vehículos</h2>
                        <div class="colored-separator text-left">
                            <div class="first-long"></div>
                            <div class="last-short"></div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 compare-col-stm-empty">
                        <ImageMotorCycle :motorcycle="motorcycle_1"/>
                    </div>
                    <div class="col-md-3 col-sm-3 compare-col-stm-empty">
                        <ImageMotorCycle :motorcycle="motorcycle_2"/>
                    </div>
                    <div class="col-md-3 col-sm-3 compare-col-stm-empty">
                        <ImageMotorCycle :motorcycle="motorcycle_3"/>
                    </div>
                </div> <!--row-->
                <div class="row row-4 stm-compare-row">
                    <div class="col-md-3 col-sm-3">
                        <div class="compare-options">
                            <table>
                                <tbody>
                                <tr>
                                    <td class="compare-value-hover"
                                        data-value="compare-value-mileage">
                                        Kilometros
                                    </td>
                                </tr>
                                <tr>
                                    <td class="compare-value-hover"
                                        data-value="compare-value-engine">
                                        Motor
                                    </td>
                                </tr>
                                <tr>
                                    <td class="compare-value-hover"
                                        data-value="compare-value-transmission">
                                        Transmisión
                                    </td>
                                </tr>
                                <tr>
                                    <td class="compare-value-hover"
                                        data-value="compare-value-drive">
                                        Frenos
                                    </td>
                                </tr>
                                <tr>
                                    <td class="compare-value-hover"
                                        data-value="compare-value-exterior-color">
                                        Color
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3">
                        <DetailMotorCycle :motorcycle="motorcycle_1"/>
                    </div>
                    <div class="col-md-3 col-sm-3">
                        <DetailMotorCycle :motorcycle="motorcycle_2"/>
                    </div>
                    <div class="col-md-3 col-sm-3">
                        <DetailMotorCycle :motorcycle="motorcycle_3"/>
                    </div>
                </div> <!--row-->

                <!--Additional features-->
            </div> <!--container-->


            <div class="compare-empty-car-top">
                <div class="col-md-3 col-sm-3 compare-col-stm-empty">
                    <a href="../listings/index.html">
                        <div class="image">
                            <i class="stm-icon-add_car"></i>
                            <img class="stm-compare-empty"
                                 :src="'/asset/theme/images/compare-empty.jpg'"
                                 alt="Vacío"/>
                        </div>
                        <div class="h5">Añadir Moto para comparar</div>
                    </a>
                </div>
            </div>

            <div class="compare-empty-car-bottom">
                <div class="col-md-3 col-sm-3">
                    <div class="compare-options">
                        <table>
                            <tr>
                                <td class="compare-value-hover">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="compare-value-hover">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="compare-value-hover">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="compare-value-hover">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="compare-value-hover">&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </Layout>
</template>

<script>
    import ImageMotorCycle from '@/Pages/Comparar/partials/image';
    import DetailMotorCycle from '@/Pages/Comparar/partials/detail';
    import Banner from '@/Pages/Comparar/partials/banner';
    import Breads from '@/Pages/Comparar/partials/breads';
    import Layout from '@/Layouts/AppSite';
    import {Head, Link} from '@inertiajs/inertia-vue3';

    export default {
        name: '@Planes',
        components: {
            Layout,
            Head,
            Breads,
            Banner,
            Link,
            ImageMotorCycle,
            DetailMotorCycle
        },
        props: {
            motorcycles: Object.assign({}, {})
        },
        data() {
            return {
                motorcycle_1: Object.assign({}, {
                    id: null
                }),
                motorcycle_2: Object.assign({}, {
                    id: null
                }),
                motorcycle_3: Object.assign({}, {
                    id: null
                }),
            }
        },
        mounted() {
            if (this.motorcycles[0]) {
                this.motorcycle_1 = this.motorcycles[0];
            }

            if (this.motorcycles[1]) {
                this.motorcycle_2 = this.motorcycles[1];
            }

            if (this.motorcycles[2]) {
                this.motorcycle_3 = this.motorcycles[2];
            }

            // jQuery(document).ready(function ($) {
            //     var heigth = 0;
            //     $('.compare-values table tbody tr td').each(function () {
            //         heigth = $(this).height();
            //
            //         $('.' + $(this).attr('data-value')).each(function () {
            //             if ($(this).height() > heigth || heigth > 0) {
            //                 heigth = $(this).height() + 18;
            //                 $('.' + $(this).attr('data-value')).css('height', heigth + 'px');
            //             }
            //         });
            //     });
            //
            //     $('.compare-value-hover').on('hover', function () {
            //         var dataValue = $(this).data('value');
            //         $('.compare-value-hover[data-value = ' + dataValue + ']').addClass('hovered');
            //     }, function () {
            //         $('.compare-value-hover').removeClass('hovered');
            //     })
            // })
        }
    }
</script>
