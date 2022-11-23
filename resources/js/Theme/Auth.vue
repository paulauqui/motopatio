<template>
    <a href="#" @click="redirectPage('voyager.profile')" class="settings">
        <i class="stm-settings-icon stm-service-icon-cog"></i>
    </a>
    <div class="name">
        <a href="https://motopatio.com/author/admin/">
            {{ $page.props.auth.user.name}}</a>
    </div>
    <ul class="account-list">
        <li>
            <a href="#" @click="redirectPage('voyager.motorcycle.index')">Mis motos</a>
        </li>
        <li class="stm-my-favourites"><a
            href="https://motopatio.com/author/admin/?page=favourite">Favoritos
            (<span>0</span>)</a>
        </li>
    </ul>
    <a href="#" @click="logout()" class="logout">
        <i class="fa fa-power-off"></i> Cerrar sesión
    </a>
</template>

<script>
    import {Head, Link} from '@inertiajs/inertia-vue3';
    export default {
        name: 'Theme:Auth',
        components: {
            Head,
            Link,
        },
        methods: {
            redirectPage(name) {
                window.location.href = this.route(name);
                //this.$inertia.get(this.route(name));
            },
            logout(){
                this.$inertia.post(this.route('logout'));
            }
        },
        props: {},
    }
</script>
