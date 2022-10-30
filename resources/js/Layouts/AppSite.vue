<template>
    <TopNav/>
    <Nav/>
    <div id="main">
        <main>
            <slot/>
        </main>
    </div>
    <!--<FooterNav/>-->
</template>

<script>
    import Nav from '@/Theme/Nav';
    import TopNav from '@/Theme/Top';
    // import FooterNav from '@/Theme/Footer';

    export default {
        components: {
            Nav,
            TopNav,
            // FooterNav
        },

        data() {
            return {
                showingNavigationDropdown: false,
            }
        },
    }
</script>
