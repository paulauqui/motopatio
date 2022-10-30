<style type="text/css">
    .wp-social-login-connect-with {
    }

    .wp-social-login-provider-list {
    }

    .wp-social-login-provider-list a {
    }

    .wp-social-login-provider-list img {
    }

    .wsl_connect_with_provider {

    }
</style>

<template>
    <Layout>
        <div class="entry-header left small_title_box"
             style="">
            <div class="container">
                <div class="entry-title">
                    <h2 class="h1" style="">
                        Login/Register </h2>
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
                    property="name" class="post post-page current-item">Login/Register</span><meta
                    property="url" content="index.html"><meta property="position" content="2"></span></div>
            </div>
        </div>
        <div class="container">

            <div class="vc_row wpb_row vc_row-fluid vc_custom_1457947301668">
                <div class="wpb_column vc_column_container vc_col-sm-12">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            <div class="stm-login-register-form ">

                                <div class="row">

                                    <div class="col-md-4">
                                        <h3>Registrarse</h3>
                                        <div class="stm-login-form">
                                            <form method="post">
                                                <div class="form-group">
                                                    <h4>Usuario o correo electrónico</h4>
                                                    <input type="text" name="stm_user_login"
                                                           placeholder="Introducir usuario o correo electrónico"/>
                                                </div>
                                                <div class="form-group">
                                                    <h4>Contraseña</h4>
                                                    <input type="password" name="stm_user_password"
                                                           placeholder="Introducir contraseña"/>
                                                </div>
                                                <div class="form-group form-checker">
                                                    <label>
                                                        <input type="checkbox" name="stm_remember_me"/>
                                                        <span>Recuérdame</span>
                                                    </label>
                                                    <div class="stm-forgot-password">
                                                        <a href="#">
                                                            Olvidé la contraseña </a>
                                                    </div>
                                                </div>
                                                <input type="submit" value="Iniciar sesión"/>
                                                <span class="stm-listing-loader"><i class="stm-icon-load1"></i></span>
                                                <div class="stm-validation-message"></div>
                                            </form>
                                            <form method="post" class="stm_forgot_password_send">
                                                <div class="form-group">
                                                    <h4>Usuario o correo electrónico</h4>
                                                    <input type="hidden" name="stm_link_send_to"
                                                           value="motopatio.com/login-register/" readonly/>
                                                    <input type="text" name="stm_user_login"
                                                           placeholder="Introducir usuario o correo electrónico"/>
                                                    <input type="submit" value="Enviar contraseña"/>
                                                    <span class="stm-listing-loader"><i
                                                        class="stm-icon-load1"></i></span>
                                                    <div class="stm-validation-message"></div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="stm-social-login-wrap">
                                            <div class="wp-social-login-widget">

                                                <div class="wp-social-login-connect-with">Connect with:</div>

                                                <div class="wp-social-login-provider-list">

                                                    <a rel="nofollow"
                                                       href="../wp-login7c37.html?action=wordpress_social_authenticate&amp;mode=login&amp;provider=Facebook&amp;redirect_to=https%3A%2F%2Fmotopatio.com%2Flogin-register%2F"
                                                       title="Connect with Facebook"
                                                       class="wp-social-login-provider wp-social-login-provider-facebook"
                                                       data-provider="Facebook" role="button">
                                                        <img alt="Facebook"
                                                             :src="'/asset/plugins/wordpress-social-login/assets/img/32x32/wpzoom/facebook.png'"
                                                             aria-hidden="true"/>
                                                    </a>

                                                    <a rel="nofollow"
                                                       href="../wp-login09ce.html?action=wordpress_social_authenticate&amp;mode=login&amp;provider=Google&amp;redirect_to=https%3A%2F%2Fmotopatio.com%2Flogin-register%2F"
                                                       title="Connect with Google"
                                                       class="wp-social-login-provider wp-social-login-provider-google"
                                                       data-provider="Google" role="button">
                                                        <img alt="Google"
                                                             :src="'/asset/plugins/wordpress-social-login/assets/img/32x32/wpzoom/google.png'"
                                                             aria-hidden="true"/>
                                                    </a>

                                                    <a rel="nofollow"
                                                       href="../wp-login91e5.html?action=wordpress_social_authenticate&amp;mode=login&amp;provider=Twitter&amp;redirect_to=https%3A%2F%2Fmotopatio.com%2Flogin-register%2F"
                                                       title="Connect with Twitter"
                                                       class="wp-social-login-provider wp-social-login-provider-twitter"
                                                       data-provider="Twitter" role="button">
                                                        <img alt="Twitter"
                                                             :src="'/asset/plugins/wordpress-social-login/assets/img/32x32/wpzoom/twitter.png'"
                                                             aria-hidden="true"/>
                                                    </a>

                                                </div>

                                                <div class="wp-social-login-widget-clearing"></div>

                                            </div>

                                            <!-- wsl_render_auth_widget -->

                                        </div>
                                    </div>

                                    <div class="col-md-8">
                                        <h3>Registrarse</h3>
                                        <div class="stm-register-form">
                                            <form id="page-register-form" method="post">
                                                <div class="row form-group">
                                                    <div class="col-md-6">
                                                        <h4>Nombre</h4>
                                                        <input class="user_validated_field" type="text"
                                                               name="stm_user_first_name"
                                                               placeholder="Introducir nombre"/>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <h4>Apellido</h4>
                                                        <input class="user_validated_field" type="text"
                                                               name="stm_user_last_name"
                                                               placeholder="Introducir apellido"/>
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <div class="col-md-6">
                                                        <h4>Numero de teléfono</h4>
                                                        <input class="user_validated_field" type="tel"
                                                               name="stm_user_phone"
                                                               placeholder="Introducir teléfono"/>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <h4>Correo electrónico*</h4>
                                                        <input class="user_validated_field" type="email"
                                                               name="stm_user_mail"
                                                               placeholder="Introducir correo electrónico"/>
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <div class="col-md-6">
                                                        <h4>Usuario*</h4>
                                                        <input class="user_validated_field" type="text"
                                                               name="stm_nickname"
                                                               placeholder="Introducir usuario"/>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <h4>Contraseña*</h4>
                                                        <div class="stm-show-password">
                                                            <i class="fa fa-eye-slash"></i>
                                                            <input class="user_validated_field" type="password"
                                                                   name="stm_user_password"
                                                                   placeholder="Introducir contraseña"/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group form-checker">
                                                    <label>
                                                        <input type="checkbox" name="stm_accept_terms"/>
                                                        <span>
								Acepto las condiciones del																	<a
                                                            href="../politicas/index.html" target="_blank">Términos y condiciones</a>
															</span>
                                                    </label>
                                                </div>

                                                <div class="form-group form-group-submit clearfix">
                                                    <input type="submit" value="¡Regístrese ahora!" disabled/>
                                                    <span class="stm-listing-loader"><i
                                                        class="stm-icon-load1"></i></span>
                                                </div>

                                                <div class="stm-validation-message"></div>


                                            </form>
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
    import {Head} from '@inertiajs/inertia-vue3';

    export default {
        name: '@Planes',
        components: {
            Layout,
            Head
        },
        mounted() {
            jQuery(document).ready(function () {
                var $ = jQuery;

                $('.stm-show-password .fa').mousedown(function () {
                    $(this).closest('.stm-show-password').find('input').attr('type', 'text');
                    $(this).addClass('fa-eye');
                    $(this).removeClass('fa-eye-slash');
                });

                $(document).mouseup(function () {
                    $('.stm-show-password').find('input').attr('type', 'password');
                    $('.stm-show-password .fa').addClass('fa-eye-slash');
                    $('.stm-show-password .fa').removeClass('fa-eye');
                });

                $("body").on('touchstart', '.stm-show-password .fa', function () {
                    $(this).closest('.stm-show-password').find('input').attr('type', 'text');
                    $(this).addClass('fa-eye');
                    $(this).removeClass('fa-eye-slash');
                });
            });
        }
    }
</script>
