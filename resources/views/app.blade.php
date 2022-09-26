<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title inertia>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">

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
