<template>
    <div class="stm_breadcrumbs_unit heading-font ">
        <div class="container">
            <div class="navxtBreads">
                    <span property="itemListElement" typeof="ListItem">
                        <a property="item" typeof="WebPage"
                           title="Ir a Moto Patio."
                           href="../../index.html"
                           class="home"><span
                            property="name">Moto Patio</span>
                        </a>
                        <meta property="position" content="1"/>
                    </span> &gt; <span property="itemListElement"
                                       typeof="ListItem">
                    <Link property="item"
                          typeof="WebPage"
                          title="Ir a Listings."
                          :href="route('motos.index')"
                          class="post post-listings-archive">
                        <span property="name">Listings</span></Link>
                <meta property="position" content="2"/>
                </span> &gt; <span
                property="itemListElement" typeof="ListItem">
                    <Link property="item" typeof="WebPage"
                          title="Go to the Certificado usado Condición archives."
                          :href="route('motos.condition.slug',model.name_condition)"
                          class="taxonomy condition">
                        <span property="name">{{model.name_condition}}</span></Link>
                <meta property="position" content="3"/>
                </span> &gt; <span property="itemListElement" typeof="ListItem">
                    <span property="name" class="post post-listings current-item">{{model.name}}</span>
                    <meta property="url" content="index.html"/>
                    <meta property="position" content="4"/>
                </span>
            </div>
        </div>
    </div>
</template>

<script>
    import {Link} from '@inertiajs/inertia-vue3';

    export default {
        name: "Listings:Breadcrumbs",
        props: {
            model: Object.assign({}, {})
        },
        components: {
            Link
        },
        methods: {}
    }
</script>
