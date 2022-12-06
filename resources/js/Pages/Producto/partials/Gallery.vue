<style>
    @import '~vue3-carousel/dist/carousel.css';

    .carousel__item {
        /*background-color: var(--vc-clr-primary);*/
        color: red;
        font-size: 20px;
        border-radius: 3px;
        display: flex;
        justify-content: center;
        align-items: center;
        background-size: cover;
        background-position: center;
    }

    .carousel__item.image {
        min-height: 470px;
        width: 100%;
    }

    .carousel__item.small {
        min-height: 150px;
        width: 100%;
        cursor: pointer;
    }

    .carousel__item.small:hover {
        opacity: 0.8;
    }

    .carousel__slide {
        padding: 10px;
    }

    .carousel__prev,
    .carousel__next {
        box-sizing: content-box;
        border: 5px solid white;
    }
</style>

<template>
    <div class="stm-car-carousels stm-listing-car-gallery">
        <Carousel :id="'gallery-'+model.id" :items-to-show="1" :wrap-around="false" v-model="currentSlide">
            <Slide v-for="(slide, key) in model.gallery_real" :key="key">
                <div class="carousel__item image" :style="'background-image: url('+slide+')'">
                    <img :src="slide" alt="" style="display: none;">
                </div>
            </Slide>
        </Carousel>

        <Carousel
            :id="'gallery-'+model.id"
            :items-to-show="4"
            :wrap-around="true"
            v-model="currentSlide"
            ref="carousel"
        >
            <Slide v-for="(slide, key) in model.gallery_real" :key="key">
                <div class="carousel__item small" @click="slideTo(key)" :style="'background-image: url('+slide+')'">
                    <!--{{ key }}-->
                </div>
            </Slide>
        </Carousel>
        <div class="stm-gallery-actions">
            <div class="stm-gallery-action-unit stm-listing-print-action">
                <a href="javascript:window.print()"
                   class="car-action-unit stm-car-print heading-font">
                    <i class="fa fa-print"></i>
                </a>
            </div>
            <div class="stm-gallery-action-unit stm-listing-favorite-action"
                 data-id="5600">
                <i class="stm-service-icon-staricon"></i>
            </div>
            <div class="stm-gallery-action-unit compare" data-id="5600"
                 data-title="BMW BMW F 650 GS 2010">
                <i class="stm-service-icon-compare-new"></i>
            </div>
            <div class="stm-gallery-action-unit stm-schedule" data-toggle="modal"
                 data-target="#test-drive"
                 onclick="stm_test_drive_car_title(5600, 'BMW BMW F 650 GS 2010')">
                <i class="stm-icon-steering_wheel"></i>
            </div>

            <div class="stm-gallery-action-unit">
                <i class="stm-icon-share"></i>
                <div class="stm-a2a-popup">
                    <div class="addtoany_shortcode">
                        <div class="a2a_kit a2a_kit_size_32 addtoany_list"
                             data-a2a-url="https://motopatio.com/listings/bmw-650gs/"
                             data-a2a-title="BMW BMW F 650 GS 2010">
                            <a
                                class="a2a_button_facebook"
                                href="https://www.addtoany.com/add_to/facebook?linkurl=https%3A%2F%2Fmotopatio.com%2Flistings%2Fbmw-650gs%2F&amp;linkname=BMW%20BMW%20F%20650%20GS%202010"
                                title="Facebook" rel="nofollow noopener"
                                target="_blank"></a>
                            <a class="a2a_button_twitter"
                               href="https://www.addtoany.com/add_to/twitter?linkurl=https%3A%2F%2Fmotopatio.com%2Flistings%2Fbmw-650gs%2F&amp;linkname=BMW%20BMW%20F%20650%20GS%202010"
                               title="Twitter"
                               rel="nofollow noopener"
                               target="_blank"></a>
                            <a
                                class="a2a_button_email"
                                href="https://www.addtoany.com/add_to/email?linkurl=https%3A%2F%2Fmotopatio.com%2Flistings%2Fbmw-650gs%2F&amp;linkname=BMW%20BMW%20F%20650%20GS%202010"
                                title="Email" rel="nofollow noopener" target="_blank"></a>
                            <a
                                class="a2a_dd addtoany_share_save addtoany_share"
                                href="https://www.addtoany.com/share"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</template>

<script>
    import {defineComponent} from 'vue';
    import {Carousel, Slide} from 'vue3-carousel';

    export default defineComponent({
        name: 'listings:Gallery',
        props: {
            model: Object.assign({}, {
                gallery: []
            })
        },
        components: {
            Carousel,
            Slide,
            Navigation,
        },
        data: () => ({
            currentSlide: 0
        }),
        methods: {
            slideTo(val) {
                // console.log(val);
                this.currentSlide = val;
            },
        },
        mounted() {
            //this.gallery = model.gallery
            // console.log(this.model.gallery_real)
        }
    })
</script>
