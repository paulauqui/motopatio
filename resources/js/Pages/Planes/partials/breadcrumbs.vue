<template>
    <div class="stm_breadcrumbs_unit heading-font ">
        <div class="container">
            <div class="navxtBreads">
                <!-- Breadcrumb NavXT 6.6.0 -->
                <span property="itemListElement" typeof="ListItem">
                                <a property="item" typeof="WebPage"
                                   title="Ir a Moto Patio."
                                   href="#"
                                   class="home"
                                   @click="redirectPage('home.index')"
                                >
                                    <span property="name">Moto Patio</span>
                                </a>
                                <meta property="position" content="1"/>
                            </span> &gt; <span property="itemListElement" typeof="ListItem"><span property="name"
                                                                                                  class="post post-page current-item">Planes</span><meta
                property="url"
                content="index.html"><meta property="position" content="2"></span>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "Planes:Breadcrumbs",
        methods: {
            redirectPage(name) {
                this.$inertia.get(this.route(name));
            }
        }
    }
</script>
