<template>
    <Link :href="route('motos.index')">
    <div class="image">
        <i class="stm-icon-add_car"></i>
        <img v-if="!motorcycle.id"
             class="stm-compare-empty"
             :src="'/asset/theme/images/compare-empty.jpg'"
             alt="Vacío"/>

        <img v-if="motorcycle.id"
             class="stm-compare-empty"
             :src="motorcycle.image_real"
             alt="Vacío"/>
    </div>
    <div v-if="!motorcycle.id" class="h5">
        Añadir Moto para comparar
    </div>
    <div v-if="motorcycle.id" class="h5">
        {{motorcycle.name}}
    </div>
    </Link>
</template>

<script>
    import {Link} from '@inertiajs/inertia-vue3';

    export default {
        name: "Comparar:image",
        components: {
            Link
        },
        props: {
            motorcycle: Object.assign({}, {
                id: null
            }),
        }
    }
</script>
