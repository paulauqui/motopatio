<template>
    <Head title="MotoPatio" />

    <SiteLayout>
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                HOme
            </h2>
        </template>

        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 bg-white border-b border-gray-200">
                        You're logged in! homeasdfas dfasd fasdf
                    </div>
                </div>
            </div>
        </div>
    </SiteLayout>
</template>

<script>
    import SiteLayout from '@/Layouts/AppSite.vue'
    import { Head } from '@inertiajs/inertia-vue3';

    export default {
        components: {
            SiteLayout,
            Head,
        },
    }
</script>
