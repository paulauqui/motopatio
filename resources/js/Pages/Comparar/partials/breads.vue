<template>
    <!-- Breads -->
    <div class="stm_breadcrumbs_unit heading-font ">
        <div class="container">
            <div class="navxtBreads">
                <!-- Breadcrumb NavXT 6.6.0 -->
                <span property="itemListElement" typeof="ListItem">
                        <Link property="item" typeof="WebPage"
                              title="Ir a Moto Patio."
                              class="home"
                              :href="route('home.index')"
                        >
                            <span property="name">Moto Patio</span>
                        </Link>
                    <meta property="position" content="1"/>
                    </span> &gt; <span property="itemListElement" typeof="ListItem"><span
                property="name" class="post post-page current-item">Comparar</span><meta property="url"
                                                                                         content="index.html"><meta
                property="position" content="2"></span></div>
        </div>
    </div>
</template>

<script>
    import {Link} from '@inertiajs/inertia-vue3';

    export default {
        name: "Comparar:breads",
        components: {
            Link
        },
        methods: {
            redirecPage(name) {
                this.$inertia.get(this.route(name))
            }
        }
    }
</script>
