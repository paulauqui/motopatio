<template>
    <div class="compare-options">
        <table>
            <tbody>
            <tr>
                <td>{{motorcycle.kilometres}}&nbsp;</td>
            </tr>
            <tr>
                <td>{{motorcycle.motor}}&nbsp;</td>
            </tr>
            <tr>
                <td>{{motorcycle.name_transmission}}&nbsp;</td>
            </tr>
            <tr>
                <td>{{motorcycle.name_braek}}&nbsp;</td>
            </tr>
            <tr>
                <td>{{motorcycle.name_color}}&nbsp;</td>
            </tr>
            </tbody>
        </table>
    </div>
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
                id: null,
                kilometres: null,
                motor: null,
                name_transmission: null,
                name_braek: 'N/A',
                name_color: 'N/A'
            }),
        }
    }
</script>
