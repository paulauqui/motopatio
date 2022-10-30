<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title inertia>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    {{--<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">--}}
    <link rel='stylesheet' id='stm_default_google_font-css'
          href='https://fonts.googleapis.com/css?family=Open+Sans%3A300%2C300italic%2Cregular%2Citalic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%7CMontserrat%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic&amp;subset=latin%2Clatin-ext&amp;ver=5.0'
          type='text/css' media='all'/>

    <!-- Styles -->
    <link rel="stylesheet" href="{{ mix('css/app.css') }}">

    <!-- Scripts -->
    @routes
    <script src="{{ mix('js/app.js') }}" defer></script>
</head>
<body
    class="home page-template-default page page-id-4473 theme-motors woocommerce-no-js stm-template-listing_two stm-user-not-logged-in header_remove_cart stm-layout-header-listing has-breadcrumb_navxt wpb-js-composer js-comp-ver-6.5.0 vc_responsive elementor-default elementor-kit-5497"
    ontouchstart="">

    @inertia

    @env ('local')
    {{--<script src="http://localhost:8080/js/bundle.js"></script>--}}
    @endenv
</body>
</html>
