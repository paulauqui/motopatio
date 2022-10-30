<template>
    <Layout>

        <div class="entry-header left small_title_box"
             style="">
            <div class="container">
                <div class="entry-title">
                    <h2 class="h1" style="">
                        Lista de Dealers </h2>
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
                    property="name" class="post post-page current-item">Lista de Dealers</span><meta
                    property="url" content="index.html"><meta property="position" content="2"></span></div>
            </div>
        </div>
        <div class="container">

            <div class="vc_row wpb_row vc_row-fluid vc_custom_1460531302766">
                <div class="wpb_column vc_column_container vc_col-sm-12">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper"><h3 style="font-size: 28px;color: #153e4d;text-align: left"
                                                     class="vc_custom_heading vc_custom_1625170942347">Encontrar
                            Dealers Locales</h3>
                            <div
                                class="stm_dynamic_listing_filter stm_dynamic_listing_dealer_filter animated fadeIn ">
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade in active"
                                         id="stm_all_listing_tab">
                                        <form action="https://motopatio.com/dealers-list/" method="GET">
                                            <button type="submit" class="heading-font"><i
                                                class="fa fa-search"></i>Encontrar distribuidor
                                            </button>
                                            <input type="hidden" name="stm_dealer_show_taxonomies"
                                                   value="new-cars | condition, used-cars | condition,"/>
                                            <input type="hidden" name="stm_sort_by" value="reviews"/>
                                            <div class="stm-filter-tab-selects">
                                                <div class="row">
                                                    <div class="col-md-4 col-sm-6 col-xs-12 stm-select-col">
                                                        <div class="stm-ajax-reloadable">
                                                            <select
                                                                name="make"
                                                                data-class="stm_select_overflowed stm_select_dealer">
                                                                <option value="">Escoger Marca</option>
                                                                <option value="benelli">Benelli</option>
                                                                <option value="bmw">BMW</option>
                                                                <option value="cf-moto">CF Moto</option>
                                                                <option value="daytona">Daytona</option>
                                                                <option value="ducati">Ducati</option>
                                                                <option value="harley-davidson">
                                                                    Harley-Davidson
                                                                </option>
                                                                <option value="honda">Honda</option>
                                                                <option value="husqvarna">Husqvarna</option>
                                                                <option value="kawasaki">Kawasaki</option>
                                                                <option value="ktm">KTM</option>
                                                                <option value="sherco">Sherco</option>
                                                                <option value="suzuki">Suzuki</option>
                                                                <option value="yamaha">Yamaha</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 col-sm-6 col-xs-12 stm-select-col">
                                                        <div class="stm-ajax-reloadable">
                                                            <select
                                                                name="serie"
                                                                data-class="stm_select_overflowed stm_select_dealer">
                                                                <option value="">Escoger Modelo</option>
                                                                <option value="250-adventure">250 Adventure
                                                                </option>
                                                                <option value="benelli-trk-502">Benelli TRK
                                                                    502
                                                                </option>
                                                                <option value="bmw-c-600-sport">BMW C 600
                                                                    Sport
                                                                </option>
                                                                <option value="bmw-f-650-gs">BMW F 650 GS
                                                                </option>
                                                                <option value="bmw-f-700-gs">BMW F 700 GS
                                                                </option>
                                                                <option value="bmw-f-800-gs">BMW F 800 GS
                                                                </option>
                                                                <option value="bmw-r-1150-r">BMW R 1150 R
                                                                </option>
                                                                <option value="bmw-r1200gs">BMW R1200GS</option>
                                                                <option value="cf-moto-300sr">CF Moto 300SR
                                                                </option>
                                                                <option value="ducati-monster-696">Ducati
                                                                    Monster 696
                                                                </option>
                                                                <option
                                                                    value="ducati-multistrada-1200-pikes-peak">
                                                                    Ducati Multistrada 1200 Pikes Peak
                                                                </option>
                                                                <option value="gp1">Gp1</option>
                                                                <option
                                                                    value="harley-davidson-1200-sportster-custom">
                                                                    Harley-Davidson 1200 Sportster Custom
                                                                </option>
                                                                <option value="honda-cbr-250r">Honda CBR 250R
                                                                </option>
                                                                <option value="honda-cg-125">Honda CG 125
                                                                </option>
                                                                <option value="honda-crf-250-rx">Honda CRF 250
                                                                    RX
                                                                </option>
                                                                <option value="honda-crf450x">Honda CRF450X
                                                                </option>
                                                                <option value="honda-gl-1000-ltd-gold-wing">
                                                                    Honda GL 1000 LTD Gold Wing
                                                                </option>
                                                                <option value="honda-navi">Honda Navi</option>
                                                                <option value="honda-tornado-250">Honda Tornado
                                                                    250
                                                                </option>
                                                                <option value="honda-xrv-750-africa-twin">Honda
                                                                    XRV 750 Africa Twin
                                                                </option>
                                                                <option value="husqvarna-fc250">Husqvarna
                                                                    FC250
                                                                </option>
                                                                <option value="husqvarna-fe-350">Husqvarna FE
                                                                    350
                                                                </option>
                                                                <option value="husqvarna-svartpilen-250">
                                                                    Husqvarna Svartpilen 250
                                                                </option>
                                                                <option value="husqvarna-te449">Husqvarna
                                                                    TE449
                                                                </option>
                                                                <option value="husqvarna-vitpilen-701">
                                                                    Husqvarna Vitpilen 701
                                                                </option>
                                                                <option value="kawasaki-klr-650">Kawasaki KLR
                                                                    650
                                                                </option>
                                                                <option value="kawasaki-klr650">Kawasaki
                                                                    KLR650
                                                                </option>
                                                                <option value="kawasaki-klx-300r">Kawasaki KLX
                                                                    300R
                                                                </option>
                                                                <option value="kawasaki-kmx-125">Kawasaki KMX
                                                                    125
                                                                </option>
                                                                <option value="kawasaki-vn-800-classic">Kawasaki
                                                                    VN 800 Classic
                                                                </option>
                                                                <option value="kawasaki-vn-900">Kawasaki VN
                                                                    900
                                                                </option>
                                                                <option value="ktm-1290-super-adventure-r">KTM
                                                                    1290 Super Adventure R
                                                                </option>
                                                                <option value="ktm-150-exc-tpi">KTM 150 EXC
                                                                    TPI
                                                                </option>
                                                                <option value="ktm-250-duke">KTM 250 Duke
                                                                </option>
                                                                <option value="ktm-300-exc-tpi-erzbergrodeo">KTM
                                                                    300 EXC TPI Erzbergrodeo
                                                                </option>
                                                                <option value="ktm-350-exc-f">KTM 350 EXC-F
                                                                </option>
                                                                <option value="ktm-390-adventure">KTM 390
                                                                    Adventure
                                                                </option>
                                                                <option value="ktm-390-duke-abs">KTM 390 Duke
                                                                    ABS
                                                                </option>
                                                                <option value="ktm-530-exc">KTM 530 EXC</option>
                                                                <option value="ktm-690-duke">KTM 690 Duke
                                                                </option>
                                                                <option value="ktm-690-enduro">KTM 690 Enduro
                                                                </option>
                                                                <option value="ktm-790-adventure">KTM 790
                                                                    Adventure
                                                                </option>
                                                                <option value="ktm-790-adventure-r">KTM 790
                                                                    Adventure R
                                                                </option>
                                                                <option value="ktm-890-duke-r">KTM 890 Duke R
                                                                </option>
                                                                <option value="ktm-950-super-enduro-r">KTM 950
                                                                    Super Enduro R
                                                                </option>
                                                                <option value="ktm-990-adventure-dakar">KTM 990
                                                                    Adventure Dakar
                                                                </option>
                                                                <option value="ktm-rc-390-r">KTM RC 390 R
                                                                </option>
                                                                <option value="sherco-300-se">Sherco 300 SE
                                                                </option>
                                                                <option value="suzuki-dr650s">Suzuki DR650S
                                                                </option>
                                                                <option value="suzuki-v-strom-650">Suzuki
                                                                    V-Strom 650
                                                                </option>
                                                                <option value="suzuki-v-strom-650-abs">Suzuki
                                                                    V-Strom 650 ABS
                                                                </option>
                                                                <option value="yamaha-bolt">Yamaha Bolt</option>
                                                                <option value="yamaha-mt-09-tracer-abs">Yamaha
                                                                    MT-09 Tracer ABS
                                                                </option>
                                                                <option value="yamaha-super-tenere-1200ze">
                                                                    Yamaha Super Tenere 1200ZE
                                                                </option>
                                                                <option value="yamaha-tdm-850">Yamaha TDM 850
                                                                </option>
                                                                <option value="yamaha-tenere-660">Yamaha Tenere
                                                                    660
                                                                </option>
                                                                <option value="yamaha-v-star-650-custom">Yamaha
                                                                    V-Star 650 Custom
                                                                </option>
                                                                <option value="yamaha-yz450f">Yamaha YZ450F
                                                                </option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 col-sm-6 col-xs-12 stm-select-col">
                                                        <div class="stm-keyword-search-unit">
                                                            <input
                                                                type="text"
                                                                class="stm_listing_filter_text stm_listing_search_location"
                                                                name="dealer_keyword"
                                                                value=""
                                                                placeholder="Palabra clave">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <div class="dealer-search-title">
                                    <div
                                        class="stm-car-listing-sort-units stm-car-listing-directory-sort-units clearfix">
                                        <div class="stm-listing-directory-title">
                                            <div class="title">Mostrando concesionarios locales</div>
                                        </div>
                                        <div class="stm-directory-listing-top__right">
                                            <div class="clearfix">
                                                <div class="stm-sort-by-options clearfix">
                                                    <span>Ordenar por:</span>
                                                    <div class="stm-select-sorting">
                                                        <select>
                                                            <option value="alphabet">
                                                                Alfabeto
                                                            </option>
                                                            <option value="reviews" selected>
                                                                Opiniones
                                                            </option>
                                                            <option value="date">
                                                                Fecha
                                                            </option>
                                                            <option value="cars">
                                                                Número de Motos
                                                            </option>
                                                            <option value="watches">
                                                                Popularidad
                                                            </option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="dealer-search-results">
                                    <h4>No hay distribuidores con sus parámetros de búsqueda</h4>
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
    import {Head} from '@inertiajs/inertia-vue3';

    export default {
        name: '@Dealer',
        components: {
            Layout,
            Head
        },
        mounted() {

        }
    }
</script>
