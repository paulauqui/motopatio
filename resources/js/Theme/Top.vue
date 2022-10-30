<template>
    <div id="top-bar" class="">
        <div class="container">

            <div class="clearfix top-bar-wrapper">
                <!--LANGS-->
                <!-- Header Top bar Login -->
                <div class="pull-right hidden-xs top-bar-auth">
                    <div class="header-login-url">
                        <a href="#" @click="redirectPage('register.index')">
                            <i class="fa fa-user"></i><span
                            class="vt-top">Iniciar sesión</span>
                        </a>
                        <span class="vertical-divider"></span>
                        <a href="#" @click="redirectPage('register.index')">Registrarse</a>
                    </div>
                </div>

                <!-- Header top bar Socials -->
                <div class="pull-right top-bar-socials">
                    <div class="header-top-bar-socs">
                        <ul class="clearfix">
                            <li>
                                <a href="https://www.facebook.com/Moto-Patio-100249085479518" target="_blank">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://instagram.com/MotoPatioLat" target="_blank">
                                    <i class="fa fa-instagram"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/channel/UCs21hds-lf75bd2MUcx4NqA" target="_blank">
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
                        <li><i class=" stm-service-icon-sales_hours"
                               style="color: rgba(255,255,255,1); font-size: 15px;"></i> Lun - Sab 8.00 - 18.00
                        </li>
                        <li>
                                    <span id="top-bar-address" class="fancy-iframe" data-iframe="true"
                                          data-src="">
										<i class=" stm-service-icon-pin_2"
                                           style="color: rgba(255,255,255,1); font-size: 15px;"></i> Iñaquito y Amazonas</span>
                        </li>
                        <li><i class=" stm-service-icon-sales_phone"
                               style="color: rgba(255,255,255,1); font-size: 15px;"></i> <a href="tel:+593 99 251 4694">
                            +593 99 251 4694</a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div> <!--end Top-->
</template>


<script>
    import {Head, Link} from '@inertiajs/inertia-vue3';

    export default {
        name: 'Theme:Nav',
        components: {
            Head,
            Link,
        },
        methods: {
            redirectPage(name) {
                this.$inertia.get(this.route(name));
            },
        },
        props: {},
    }
</script>
