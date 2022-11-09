<template>
    <Head title="Log in"/>

    <BreezeValidationErrorsLogin class="mb-4"/>

    <div v-if="status" class="mb-4 font-medium text-sm text-green-600">
        {{ status }}
    </div>

    <form @submit.prevent="submit">
        <div class="form-group">
            <h4>Usuario o correo electrónico</h4>
            <BreezeInput id="email" type="email" class="mt-1 block w-full" v-model="form.email" required autofocus
                         autocomplete="username" placeholder="Introducir usuario o correo electrónico"/>
        </div>

        <div class="mt-4 form-group">
            <h4>Contraseña</h4>
            <BreezeInput id="password" type="password" class="mt-1 block w-full" v-model="form.password" required
                         autocomplete="current-password" placeholder="Introducir contraseña"/>
        </div>

        <div class="form-group form-checker">
            <label class="flex items-center">
                <BreezeCheckbox name="remember" v-model:checked="form.remember"/>
                <span class="ml-2 text-sm text-gray-600">Remember me</span>
            </label>

            <div class="stm-forgot-password">
                <Link v-if="canResetPassword" :href="route('password.request')"
                      class="underline text-sm text-gray-600 hover:text-gray-900">
                Forgot your password?
                </Link>
            </div>
        </div>


        <BreezeButton class="ml-4" :class="{ 'opacity-25': form.processing }" :disabled="form.processing">
            Iniciar sesión
        </BreezeButton>
    </form>
</template>

<script>
    import BreezeButton from '@/Components/Button.vue'
    import BreezeCheckbox from '@/Components/Checkbox.vue'
    import BreezeGuestLayout from '@/Layouts/Guest.vue'
    import BreezeInput from '@/Components/Input.vue'
    import BreezeLabel from '@/Components/Label.vue'
    import BreezeValidationErrorsLogin from '@/Components/ValidationErrors.vue'
    import {Head, Link} from '@inertiajs/inertia-vue3';

    export default {
        layout: BreezeGuestLayout,

        components: {
            BreezeButton,
            BreezeCheckbox,
            BreezeInput,
            BreezeLabel,
            BreezeValidationErrorsLogin,
            Head,
            Link,
        },

        props: {
            canResetPassword: Boolean,
            status: String,
        },

        data() {
            return {
                form: this.$inertia.form({
                    email: '',
                    password: '',
                    remember: false
                })
            }
        },

        methods: {
            submit() {
                // console.log(this.route('login'))
                this.form.post(this.route('login'), {
                    onFinish: () => this.form.reset('password'),
                })
            }
        }
    }
</script>
