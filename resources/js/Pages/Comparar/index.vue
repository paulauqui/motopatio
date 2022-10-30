<template>
    <Layout>

        <div class="entry-header left small_title_box"
             style="">
            <div class="container">
                <div class="entry-title">
                    <h2 class="h1" style="">
                        Comparar </h2>
                </div>
            </div>
        </div>

        <!-- Breads -->
        <div class="stm_breadcrumbs_unit heading-font ">
            <div class="container">
                <div class="navxtBreads">
                    <!-- Breadcrumb NavXT 6.6.0 -->
                    <span property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage"
                                                                          title="Ir a Moto Patio."
                                                                          href="../index.html"
                                                                          class="home"><span
                        property="name">Moto Patio</span></a><meta
                        property="position" content="1"></span> &gt; <span property="itemListElement"
                                                                           typeof="ListItem"><span
                    property="name" class="post post-page current-item">Comparar</span><meta property="url"
                                                                                             content="index.html"><meta
                    property="position" content="2"></span></div>
            </div>
        </div>
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
                        <a href="../motos/index.html">
                            <div class="image">
                                <i class="stm-icon-add_car"></i>
                                <img class="stm-compare-empty"
                                     :src="'asset/theme/images/compare-empty.jpg'"
                                     alt="Vacío"/>
                            </div>
                            <div class="h5">Añadir Moto para comparar</div>
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-3 compare-col-stm-empty">
                        <a href="../motos/index.html">
                            <div class="image">
                                <i class="stm-icon-add_car"></i>
                                <img class="stm-compare-empty"
                                     :src="'asset/theme/images/compare-empty.jpg'"
                                     alt="Vacío"/>
                            </div>
                            <div class="h5">Añadir Moto para comparar</div>
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-3 compare-col-stm-empty">
                        <a href="../motos/index.html">
                            <div class="image">
                                <i class="stm-icon-add_car"></i>
                                <img class="stm-compare-empty"
                                     :src="'asset/theme/images/compare-empty.jpg'"
                                     alt="Vacío"/>
                            </div>
                            <div class="h5">Añadir Moto para comparar</div>
                        </a>
                    </div>
                </div> <!--row-->
                <div class="row row-4 stm-compare-row">
                    <div class="col-md-3 col-sm-3">
                        <div class="compare-options">
                            <table>
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
                            </table>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3">
                        <div class="compare-options">
                            <table>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3">
                        <div class="compare-options">
                            <table>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3">
                        <div class="compare-options">
                            <table>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </div>
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
                                 :src="'asset/theme/images/compare-empty.jpg'"
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
    import Layout from '@/Layouts/AppSite';
    import {Head} from '@inertiajs/inertia-vue3';

    export default {
        name: '@Planes',
        components: {
            Layout,
            Head
        },
        mounted() {
            jQuery(document).ready(function ($) {
                var heigth = 0;
                $('.compare-values table tbody tr td').each(function () {
                    heigth = $(this).height();

                    $('.' + $(this).attr('data-value')).each(function () {
                        if ($(this).height() > heigth || heigth > 0) {
                            heigth = $(this).height() + 18;
                            $('.' + $(this).attr('data-value')).css('height', heigth + 'px');
                        }
                    });
                });

                $('.compare-value-hover').on('hover', function () {
                    var dataValue = $(this).data('value');
                    $('.compare-value-hover[data-value = ' + dataValue + ']').addClass('hovered');
                }, function () {
                    $('.compare-value-hover').removeClass('hovered');
                })
            })
        }
    }
</script>
