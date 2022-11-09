<template>
    <Head title="Register"/>

    <BreezeValidationErrors class="mb-4"/>

    <form @submit.prevent="submit">
        <div class="row form-group">
            <div class="col-md-6">
                <div>
                    <BreezeLabel for="name" value="Nombre"/>
                    <BreezeInput id="name" type="text" class="mt-1 block w-full"
                                 v-model="form.name"
                                 placeholder="Introducir nombre"/>
                </div>
            </div>
            <!--required-->
            <!--autofocus-->
            <!--autocomplete="name"-->
            <div class="col-md-6">
                <div>
                    <BreezeLabel for="last_name" value="Apellido"/>
                    <BreezeInput id="last_name" type="text" class="mt-1 block w-full" v-model="form.last_name"
                                 placeholder="Introducir apellido"/>
                </div>
            </div>
        </div>

        <div class="row form-group">
            <div class="col-md-6">
                <div class="mt-4">
                    <BreezeLabel for="phone" value="Numero de teléfono"/>
                    <BreezeInput id="phone" type="tel" class="mt-1 block w-full" v-model="form.phone"
                                 placeholder="Introducir teléfono"/>
                </div>
            </div>
            <div class="col-md-6">
                <div class="mt-4">
                    <BreezeLabel for="email" value="Correo electrónico"/>
                    <BreezeInput id="email" type="email" class="mt-1 block w-full" v-model="form.email"
                                 placeholder="Introducir correo electrónico"/>
                </div>
            </div>
        </div>

        <div class="row form-group">
            <div class="col-md-6">
                <div class="mt-4">
                    <BreezeLabel for="password" value="Password"/>
                    <BreezeInput id="password" type="password" class="mt-1 block w-full" v-model="form.password"

                                 autocomplete="new-password" placeholder="Introducir contraseña"/>
                </div>
            </div>
            <div class="col-md-6">
                <div class="mt-4">
                    <BreezeLabel for="password_confirmation" value="Confirm Password"/>
                    <BreezeInput id="password_confirmation" type="password" class="mt-1 block w-full"
                                 v-model="form.password_confirmation"
                                 autocomplete="new-password"
                                 placeholder="Repetir contraseña"/>
                </div>
            </div>
        </div>

        <div class="form-group form-checker">
            <label>
                <input type="checkbox" name="stm_accept_terms"/>
                <span> Acepto las condiciones del <a href="../politicas/index.html" target="_blank">Términos y condiciones</a> </span>
            </label>
        </div>

        <div class="row form-group">
            <div class="col-md-6">
                <BreezeButton class="ml-4" :class="{ 'opacity-25': form.processing }" :disabled="form.processing">
                    ¡Regístrese ahora!
                </BreezeButton>

                <span class="stm-listing-loader"><i class="stm-icon-load1"></i></span>
            </div>
        </div>
    </form>
</template>

<script>
    import BreezeButton from '@/Components/Button.vue'
    import BreezeGuestLayout from '@/Layouts/Guest.vue'
    import BreezeInput from '@/Components/Input.vue'
    import BreezeLabel from '@/Components/Label.vue'
    import BreezeValidationErrors from '@/Components/ValidationErrors.vue'
    import {Head, Link} from '@inertiajs/inertia-vue3';

    export default {
        layout: BreezeGuestLayout,

        components: {
            BreezeButton,
            BreezeInput,
            BreezeLabel,
            BreezeValidationErrors,
            Head,
            Link,
        },

        data() {
            return {
                form: this.$inertia.form({
                    name: '',
                    last_name: '',
                    phone: '',
                    email: '',
                    password: '',
                    password_confirmation: '',
                    terms: false,
                })
            }
        },

        methods: {
            submit() {
                this.form.post(this.route('register'), {
                    onFinish: () => this.form.reset('password', 'password_confirmation'),
                })
            }
        }
    }
</script>
