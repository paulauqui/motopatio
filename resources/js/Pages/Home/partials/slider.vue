<template>
    <div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true"
         class="vc_row wpb_row vc_row-fluid stm-zi-1 vc_row-no-padding" style="position: relative;">
        <div class="wpb_column vc_column_container vc_col-sm-12">
            <div class="vc_column-inner">
                <div class="wpb_wrapper">
                    <!-- START Home slider REVOLUTION SLIDER 6.3.5 -->
                    <p class="rs-p-wp-fix"></p>
                    <rs-module-wrap id="rev_slider_1_1_wrapper" data-source="gallery"
                                    style="background:transparent;padding:0;margin:0px auto;margin-top:0;margin-bottom:0;">
                        <rs-module id="rev_slider_1_1" style="" data-version="6.3.5">
                            <rs-slides>
                                <rs-slide data-key="rs-1" data-title="Slide"
                                          data-anim="ei:d;eo:d;s:600;r:0;t:fade;sl:d;">
                                    <img :src="'asset/uploads/2021/10/toura-scaled.jpg'"
                                         title="toura"
                                         width="2560" height="1109" data-parallax="10" class="rev-slidebg"
                                         data-no-retina/>

                                </rs-slide>
                                <rs-slide data-key="rs-5" data-title="Slide"
                                          data-anim="ei:d;eo:d;s:600;r:0;t:fade;sl:d;">
                                    <img :src="'asset/uploads/2021/10/baja-scaled.jpg'"
                                         title="baja"
                                         width="2560" height="1109" data-parallax="10" class="rev-slidebg"
                                         data-no-retina/>
                                </rs-slide>
                                <rs-slide data-key="rs-3" data-title="Slide"
                                          data-anim="ei:d;eo:d;s:600;r:0;t:fade;sl:d;">
                                    <img :src="'asset/uploads/2021/10/cardo-scaled.jpg'"
                                         title="cardo"
                                         width="2560" height="1109" data-parallax="10" class="rev-slidebg"
                                         data-no-retina/>
                                </rs-slide>
                            </rs-slides>
                        </rs-module>

                    </rs-module-wrap>
                    <!-- END REVOLUTION SLIDER -->
                </div>
            </div>
        </div>
    </div>
</template>

<script>

    export default {
        name: 'Home:Slider',
        components: {},
        mounted() {
            setREVStartSize({
                c: 'rev_slider_1_1',
                rl: [1240, 1024, 778, 480],
                el: [757, 757, 757, 757],
                gw: [1240, 1024, 778, 480],
                gh: [757, 757, 757, 757],
                type: 'standard',
                justify: '',
                layout: 'fullwidth',
                mh: "757"
            });
            var revapi1,
                tpj;

            function revinit_revslider11() {
                jQuery(function () {
                    tpj = jQuery;
                    revapi1 = tpj("#rev_slider_1_1");
                    if (revapi1 == undefined || revapi1.revolution == undefined) {
                        revslider_showDoubleJqueryError("rev_slider_1_1");
                    } else {
                        revapi1.revolution({
                            sliderLayout: "fullwidth",
                            duration: 3000,
                            visibilityLevels: "1240,1024,778,480",
                            gridwidth: "1240,1024,778,480",
                            gridheight: "757,757,757,757",
                            minHeight: 757,
                            spinner: "spinner2",
                            perspective: 600,
                            perspectiveType: "local",
                            editorheight: "757,757,757,757",
                            responsiveLevels: "1240,1024,778,480",
                            progressBar: {disableProgressBar: true},
                            navigation: {
                                onHoverStop: false
                            },
                            parallax: {
                                levels: [5, 10, 15, 20, 25, 30, 35, 40, 45, 46, 47, 48, 49, 50, 51, 55],
                                type: "mousescroll",
                                disable_onmobile: true
                            },
                            fallbacks: {
                                allowHTML5AutoPlayOnAndroid: true
                            },
                        });
                    }

                });
            } // End of RevInitScript
            var once_revslider11 = false;
            if (document.readyState === "loading") {
                document.addEventListener('readystatechange', function () {
                    if ((document.readyState === "interactive" || document.readyState === "complete") && !once_revslider11) {
                        once_revslider11 = true;
                        revinit_revslider11();
                    }
                });
            } else {
                once_revslider11 = true;
                revinit_revslider11();
            }

            var htmlDivCss = ' #rev_slider_1_1_wrapper rs-loader.spinner2{ background-color: #e32121 !important; } ';
            var htmlDiv = document.getElementById('rs-plugin-settings-inline-css');
            if (htmlDiv) {
                htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
            } else {
                var htmlDiv = document.createElement('div');
                htmlDiv.innerHTML = '<style>' + htmlDivCss + '</style>';
                document.getElementsByTagName('head')[0].appendChild(htmlDiv.childNodes[0]);
            }
        }
    }
</script>
