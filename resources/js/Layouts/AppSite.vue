<template>
    <div id="main">
        <main>
            <slot/>
        </main>
    </div>
</template>

<script>
    import BreezeApplicationLogo from '@/Components/ApplicationLogo.vue'
    import BreezeDropdown from '@/Components/Dropdown.vue'
    import BreezeDropdownLink from '@/Components/DropdownLink.vue'
    import BreezeNavLink from '@/Components/NavLink.vue'
    import BreezeResponsiveNavLink from '@/Components/ResponsiveNavLink.vue'
    import {Link} from '@inertiajs/inertia-vue3';

    export default {
        components: {
            BreezeApplicationLogo,
            BreezeDropdown,
            BreezeDropdownLink,
            BreezeNavLink,
            BreezeResponsiveNavLink,
            Link,
        },

        data() {
            return {
                showingNavigationDropdown: false,
            }
        },
    }
</script>
