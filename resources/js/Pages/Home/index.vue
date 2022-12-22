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

    .vc_custom_1419240516480 {
        background-color: #f9f9f9 !important;
    }

    .vc_custom_1419240516480 {
        background-color: #f9f9f9 !important;
    }
</style>

<template>
    <Layout>
        <Head title="Home"/>
        <div class="container">
            <Slider/>
            <div class="vc_row-full-width"></div>
            <Search
                @submit="submit()"
                :form="form"
                :vehicles="vehicles"
            />
            <Destacados :motorcycles="featured"/>
            <Planes/>
            <Ultimasmotos :motorcycles="latest"/>
            <Noticias/>
        </div>
    </Layout>
</template>

<script>
    import Layout from '@/Layouts/AppSite';
    import Slider from '@/Pages/Home/partials/slider.vue';
    import Search from '@/Pages/Home/partials/search.vue';
    import Destacados from '@/Pages/Home/partials/destacados.vue';
    import Planes from '@/Pages/Home/partials/planes.vue';
    import Ultimasmotos from '@/Pages/Home/partials/ultimasmotos.vue';
    import Noticias from '@/Pages/Home/partials/noticias.vue';
    import {Head} from '@inertiajs/inertia-vue3';

    export default {
        name: '@Home',
        props: {
            featured: Object.assign({}, {}),
            latest: Object.assign({}, {}),
            vehicles: 0
        },
        data() {
            return {
                form: Object.assign({}, {
                    condition: null,
                    brand: null,
                    model: null,
                    kilometer: null,
                    year: null,
                    price: null,
                    select: null,
                    location: null
                }),
            }
        },
        created() {

        },
        components: {
            Layout,
            Head,
            Slider,
            Search,
            Destacados,
            Planes,
            Noticias,
            Ultimasmotos
        },
    }
</script>
