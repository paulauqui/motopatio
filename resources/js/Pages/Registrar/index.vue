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
                    <span property="itemListElement" typeof="ListItem">
                        <Link :href="route('home.index')"
                              class="home">
                            <span property="name">Moto Patio</span>
                        </Link>
                        <meta property="position" content="1"/> </span> &gt; <span property="itemListElement"
                                                                                   typeof="ListItem"><span
                    property="name" class="post post-page current-item">Login/Register</span>
                    <meta property="url" content="index.html"/>
                    <meta property="position" content="2"/>
                </span>
                </div>
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
                                        <h3>Acceder</h3>
                                        <div class="stm-login-form">
                                            <Login :canResetPassword="canResetPassword" :status="status"></Login>
                                        </div>
                                    </div>

                                    <div class="col-md-8">
                                        <h3>Registrarse</h3>
                                        <div class="stm-register-form">
                                            <Register></Register>
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
    import Login from '@/Pages/Registrar/partials/Login';
    import Register from '@/Pages/Registrar/partials/Register';
    import Layout from '@/Layouts/AppSite';
    import {Head, Link} from '@inertiajs/inertia-vue3';

    export default {
        name: '@Planes',
        components: {
            Layout,
            Head,
            Link,
            Login,
            Register
        },
        props: {
            canResetPassword: Boolean,
            status: String,
        },
        methods: {},
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
