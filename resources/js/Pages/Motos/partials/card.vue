<template>
    <div class="image">
        <Link :href="route('listings.index',motorcycle.slug)">
        <img
            :data-src="motorcycle.image_real"
            :srcset="motorcycle.image_real +' 1x,'+ motorcycle.image_real + ' 2x' "
            :src="motorcycle.image_real"
            class="lazy img-responsive"
            alt="402EDD94-1035-4607-94F2-39E682D56BA6"
        />
        </Link>

        <!--Hover blocks-->
        <!---Media-->
        <div class="stm-car-medias">
            <div
                class="stm-listing-photos-unit stm-car-photos-6360 stm-car-photos-6360-895275444">
                <i class="stm-service-icon-photo"></i>
                <span>6</span>
            </div>
        </div>
        <!--Favorite-->
        <div
            class="stm-listing-favorite"
            data-id="6360"
            data-toggle="tooltip" data-placement="right"
            title="Añadir a favoritos"
        >
            <i class="stm-service-icon-staricon"></i>
        </div>

        <!--Compare-->
        <button
            @click="add(motorcycle.id)"
            class="stm-listing-compare stm-compare-directory-new"
            data-id="6360"
            data-title="{{motorcycle.name}}"
            data-toggle="tooltip"
            data-placement="left"
            title="Añadir para comparar"
        >
            <i class="stm-service-icon-compare-new"></i>
        </button>
    </div>
    <div class="listing-car-item-meta">
        <Link :href="route('listings.index',motorcycle.slug)">
        <div class="car-meta-top heading-font clearfix">
            <div class="price">
                <div class="normal-price">
                    {{motorcycle.price_format}}
                </div>
            </div>
            <div class="car-title" data-max-char="44">
                {{motorcycle.name}}
            </div>
        </div>
        </Link>

        <div class="car-meta-bottom">
            <Link :href="route('listings.index',motorcycle.slug)">
            <ul>
                <li>
                    <i class="stm-icon-transmission_fill"></i>&nbsp;
                    <span>{{motorcycle.name_transmission}}</span>
                </li>
            </ul>
            </Link>
        </div>
    </div>
</template>

<script>
    import {Link} from '@inertiajs/inertia-vue3';

    export default {
        name: "Motos:Card",
        props: {
            motorcycle: Object.assign({}, {})
        },
        components: {
            Link
        },
        methods: {
            add(id) {

                axios.get(this.route('comparar.store', id))
                    .then(function (response) {
                        // manejar respuesta exitosa
                        console.log(response);
                    })
                    .catch(function (error) {
                        // manejar error
                        console.log(error);
                    })
                    .then(function () {
                        // siempre sera executado
                    });
                console.log(id)
                // this.$inertia.get(this.route('comparar.store', id));
            }
        }
    }
</script>
