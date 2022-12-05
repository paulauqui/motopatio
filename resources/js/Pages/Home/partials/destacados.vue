<template>
    <div class="vc_row wpb_row vc_row-fluid vc_custom_1625512963830">
        <div class="wpb_column vc_column_container vc_col-sm-12">
            <div class="vc_column-inner">
                <div class="wpb_wrapper">
                    <div class="vc_empty_space" style="height: 32px">
                        <span class="vc_empty_space_inner"></span>
                    </div>
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <h1>
                                <span style="color: #269aff;"><span
                                    style="color: #000000;">Motos</span> Destacadas</span>
                            </h1>
                        </div>
                    </div>

                    <div class="vc_grid-container-wrapper vc_clearfix">
                        <div class="vc_grid-container vc_clearfix wpb_content_element vc_basic_grid"
                             data-initial-loading-animation="fadeIn"
                             data-vc-grid-settings="{&quot;page_id&quot;:4473,&quot;style&quot;:&quot;all&quot;,&quot;action&quot;:&quot;vc_get_vc_grid_data&quot;,&quot;shortcode_id&quot;:&quot;1633537920725-566bd2d9-f0a3-0&quot;,&quot;tag&quot;:&quot;vc_basic_grid&quot;}"
                             data-vc-request="https://motopatio.com/wp-admin/admin-ajax.php"
                             data-vc-post-id="4473" data-vc-public-nonce="44ecddd74e">

                            <div class="vc_grid vc_row vc_grid-gutter-30px vc_pageable-wrapper vc_hook_hover"
                                 data-vc-pageable-content="true">
                                <div class="vc_pageable-slide-wrapper vc_clearfix" data-vc-grid-content="true">
                                    <div v-for="motorcycle in motorcycles"
                                         class="vc_grid-item vc_clearfix vc_col-sm-4 vc_grid-item-zone-c-bottom vc_visible-item fadeIn animated">
                                        <div class="vc_grid-item-mini vc_clearfix ">
                                            <div class="vc_gitem-animated-block">
                                                <div
                                                    class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-16-9 vc_gitem-is-link"
                                                    :style="'background-image: url('+motorcycle.image_real+') !important;'">

                                                    <Link :href="route('listings.index',motorcycle.slug)"
                                                       :title="motorcycle.slug"
                                                       class="vc_gitem-link vc-zone-link">
                                                        <img
                                                            :src="motorcycle.image_real"
                                                            class="vc_gitem-zone-img" :alt="motorcycle.slug"/>
                                                    </Link>

                                                    <div class="vc_gitem-zone-mini"></div>
                                                </div>

                                            </div>
                                            <div class="vc_gitem-zone vc_gitem-zone-c vc_custom_1419240516480">
                                                <div class="vc_gitem-zone-mini">
                                                    <div class="vc_gitem_row vc_row vc_gitem-row-position-top">
                                                        <div class="vc_col-sm-8 vc_gitem-col vc_gitem-col-align-">
                                                            <div
                                                                class="vc_custom_heading vc_gitem-post-data vc_gitem-post-data-source-post_title">
                                                                <h3 style="font-size: 20px;color: #000000;text-align: left;font-family:Open Sans;font-weight:600;font-style:normal">
                                                                    <Link
                                                                        :href="route('listings.index',motorcycle.slug)"
                                                                        class="vc_gitem-link"
                                                                        :title="motorcycle.slug">
                                                                    {{motorcycle.name}}
                                                                    </Link>
                                                                </h3>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="vc_col-sm-4 cajaprice vc_gitem-col vc_gitem-col-align- vc_custom_1626887424630">
                                                            <div
                                                                class="vc_gitem-post-meta-field-price pricelist vc_gitem-align-right">
                                                                <span class="vc_gitem-post-meta-label">$</span>{{motorcycle.price_format}}
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="vc_gitem_row vc_row vc_gitem-row-position-top">
                                                        <div class="vc_col-sm-12 vc_gitem-col vc_gitem-col-align-">
                                                            <div
                                                                class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text">
                                                                    <span class="vc_sep_holder vc_sep_holder_l"><span
                                                                        style="border-color:#a5a5a5;"
                                                                        class="vc_sep_line"></span></span><span
                                                                class="vc_sep_holder vc_sep_holder_r"><span
                                                                style="border-color:#a5a5a5;"
                                                                class="vc_sep_line"></span></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="vc_clearfix"></div>
                                    </div>
                                    <!--</div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import {Head, Link} from '@inertiajs/inertia-vue3';

    export default {
        name: 'Home:Destacados',
        props: {
            motorcycles: Object.assign({}, {}),
        },
        created() {
            //console.log(this.motorcycles)
        },
        components: {
            Head,
            Link
        },
        mounted() {

        }
    }
</script>
