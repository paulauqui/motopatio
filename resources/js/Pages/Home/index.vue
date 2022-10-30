<style type="text/css">
    .stm_dynamic_listing_filter .stm_dynamic_listing_filter_nav li {
        background: #f79d34 !important;
        border-right: 1px solid #f79d34 !important;
    }

    .stm_dynamic_listing_filter .stm_dynamic_listing_filter_nav li.active {
        background: #636363 !important;
        border-right: 1px solid #636363 !important;
    }

    .stm_dynamic_listing_filter .tab-content {
        background-color: #636363 !important;
    }

    /****

     */
    .vc_custom_1419240516480 {
        background-color: #f9f9f9 !important;
    }

    .vc_custom_1419240516480 {
        background-color: #f9f9f9 !important;
    }

    .vc_custom_1626887424630 {
        margin-top: 10px !important;
        /*background-image: url(wp-content/uploads/2021/07/fondoprecio3aa70.png?id=5422) !important;*/
        background-position: center !important;
        background-repeat: no-repeat !important;
        background-size: contain !important;
    }
</style>

<template>
    <Head title="Home"/>
    <div class="container">
        <Slider/>
        <div class="vc_row-full-width"></div>
        <Search/>
        <div class="stm_cars_on_top  vc_custom_1626885053786">
            <h2><span style="color: #269aff;"><span style="color: #000000;">Motos</span> Destacadas</span></h2>
        </div>
    </div>
</template>

<script>
    import 'vue3-carousel/dist/carousel.css';
    import Slider from '@/Pages/Home/partials/slider.vue';
    import Search from '@/Pages/Home/partials/search.vue';
    import {Head} from '@inertiajs/inertia-vue3';

    export default {
        name: '@Home',
        components: {
            Head,
            Slider,
            Search,
        },
    }
</script>
