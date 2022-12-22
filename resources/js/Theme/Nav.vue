<template>
    <div id="header">
        <div class="header-listing header-listing-fixed listing-nontransparent-header">
            <div class="listing-header-bg"></div>

            <div class="container header-inner-content">
                <!--Logo-->
                <div class="listing-logo-main" style="margin-top: 13px; ">
                    <Link :href="route('home.index')" class="bloglogo">
                    <img src="/asset/uploads/2018/07/logo-motopatio-white.png"
                         style="width: 112px;"
                         title="Inicio"
                         alt="Logo"
                    />
                    </Link>
                </div>
                <div class="listing-service-right clearfix" style="">
                    <div class="listing-right-actions clearfix">
                        <!--<Link :href="route('voyager.motorcycle.create')" class="listing_add_cart heading-font">-->
                        <!--<div>-->
                        <!--<i class=" stm-lt-icon-add_car" style=""></i> Añadir Moto-->
                        <!--</div>-->
                        <!--</Link>-->
                        <a href="#" @click="redirectPage('voyager.motorcycle.create')"
                           class="listing_add_cart heading-font">
                            <div>
                                <i class=" stm-lt-icon-add_car" style=""></i> Añadir Moto
                            </div>
                        </a>
                        <div class="pull-right">
                            <div class="lOffer-account-unit">
                                <Link :href="route('register.index')" class="lOffer-account">
                                <i class=" stm-service-icon-user" style=""></i>
                                </Link>

                                <div v-if="!$page.props.auth.user"
                                     class="lOffer-account-dropdown stm-login-form-unregistered">
                                    <Login :key_id="'quick'"/>
                                </div>
                                <div v-if="$page.props.auth.user" class="lOffer-account-dropdown login">
                                    <Auth/>
                                </div>

                                <div class="stm-user-mobile-info-wrapper">
                                    <div v-if="!$page.props.auth.user" class="stm-login-form-mobile-unregistered">
                                        <Login :key_id="'quick-mobile'"/>
                                    </div>

                                    <div v-if="$page.props.auth.user" class="lOffer-account-dropdown login">
                                        <Auth/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pull-right">
                            <Link :href="route('comparar.index')" class="lOffer-compare">
                            <i class="list-icon stm-service-icon-listing-compare" style=""></i>
                            <span class="list-badge">
                                    <span class="stm-current-cars-in-compare" data-contains="compare-count"></span>
                                </span>
                            </Link>
                        </div>

                        <div class="listing-menu-mobile-wrapper">
                            <div class="stm-menu-trigger">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            <div class="stm-opened-menu-listing">
                                <ul class="listing-menu-mobile heading-font visible-xs visible-sm clearfix">
                                    <li id="menu-item-5012"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-4473 current_page_item menu-item-5012">
                                        <Link :href="route('home.index')" aria-current="page">
                                        Inicio
                                        </Link>
                                    </li>
                                    <li id="menu-item-5286"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5286">
                                        <Link :href="route('motos.index')" aria-current="page">
                                        Motos
                                        </Link>
                                    </li>
                                    <li id="menu-item-5013"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5013">
                                        <Link :href="route('dealer.index')" aria-current="page">
                                        Patios
                                        </Link>
                                    </li>
                                    <li id="menu-item-5014"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5014">
                                        <Link :href="route('planes.index')" aria-current="page">
                                        Planes
                                        </Link>
                                    </li>

                                    <li class="stm_compare_mobile">
                                        <Link :href="route('comparar.index')" aria-current="page">
                                        Comparar
                                        </Link>
                                    </li>
                                </ul>
                                <div id="top-bar" class="">
                                    <div class="container">
                                        <div class="clearfix top-bar-wrapper">
                                            <!--LANGS-->
                                            <!-- Header Top bar Login -->
                                            <div class="pull-right hidden-xs top-bar-auth">
                                                <div class="header-login-url">
                                                    <a href="login-register/index.html">
                                                        <i class="fa fa-user"></i><span
                                                        class="vt-top">Iniciar sesión</span>
                                                    </a>
                                                    <span class="vertical-divider"></span>
                                                    <a href="login-register/index.html">Registrarse</a>
                                                </div>
                                            </div>

                                            <!-- Header top bar Socials -->
                                            <div class="pull-right top-bar-socials">
                                                <div class="header-top-bar-socs">
                                                    <ul class="clearfix">
                                                        <li>
                                                            <a href="https://www.facebook.com/Moto-Patio-100249085479518"
                                                               target="_blank">
                                                                <i class="fa fa-facebook"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="https://instagram.com/MotoPatioLat"
                                                               target="_blank">
                                                                <i class="fa fa-instagram"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="https://www.youtube.com/channel/UCs21hds-lf75bd2MUcx4NqA"
                                                               target="_blank">
                                                                <i class="fa fa-youtube-play"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="https://wa.me/593998562501" target="_blank">
                                                                <i class="fa fa-whatsapp"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="pull-right xs-pull-left top-bar-info-wrap">
                                                <ul class="top-bar-info clearfix">
                                                    <li>
                                                        <i class=" stm-service-icon-sales_hours"
                                                           style="color: rgba(255,255,255,1); font-size: 15px;"></i>
                                                        Lun - Sab 8.00 - 18.00
                                                    </li>
                                                    <li>
                                    <span id="top-bar-address" class="fancy-iframe" data-iframe="true"
                                          data-src="">
										<i class=" stm-service-icon-pin_2"
                                           style="color: rgba(255,255,255,1); font-size: 15px;"></i> Iñaquito y Amazonas									</span>
                                                    </li>
                                                    <li>
                                                        <i class=" stm-service-icon-sales_phone"
                                                           style="color: rgba(255,255,255,1); font-size: 15px;"></i>
                                                        <a href="tel:+593 99 251 4694"> +593 99 251 4694</a>
                                                    </li>
                                                </ul>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>

                    <ul class="listing-menu clearfix" style="margin-top: 17px; ">
                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-4473 current_page_item menu-item-5012">
                            <Link :href="route('home.index')" aria-current="page">
                            Inicio
                            </Link>
                        </li>
                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5286">
                            <Link :href="route('motos.index')" aria-current="page">
                            Motos
                            </Link>
                        </li>
                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5013">
                            <Link :href="route('dealer.index')" aria-current="page">
                            Patios
                            </Link>
                        </li>
                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5014">
                            <Link :href="route('planes.index')" aria-current="page">
                            Planes
                            </Link>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div> <!-- id header -->

</template>


<script>
    import Login from '@/Theme/Login';
    import Auth from '@/Theme/Auth';
    import {Head, Link} from '@inertiajs/inertia-vue3';
    import BreezeDropdownLink from '@/Components/DropdownLink.vue'

    export default {
        name: 'Theme:Nav',
        components: {
            Head,
            Link,
            Login,
            Auth,
            BreezeDropdownLink
        },
        methods: {
            redirectPage(name) {
                window.location.href = this.route(name);

            },
            logout() {
                this.$inertia.post(this.route('logout'));
            }
        },
        props: {},
    }
</script>
