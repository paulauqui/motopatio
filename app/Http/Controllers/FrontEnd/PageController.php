<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use App\Models\Plan;
use Illuminate\Foundation\Application;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

class PageController extends Controller
{
    public function home()
    {
        return Inertia::render('Home/index', [
            'canLogin' => Route::has('login'),
            'canRegister' => Route::has('register'),
            'laravelVersion' => Application::VERSION,
            'phpVersion' => PHP_VERSION,
        ]);

    }

    public function motos()
    {
        return Inertia::render('Motos/index', []);
    }

    public function dealer()
    {
        return Inertia::render('Dealer/index', []);
    }

    public function planes()
    {
        $planes = Plan::getPlanes();
        return Inertia::render('Planes/index', [
            'planes' => $planes
        ]);
    }

    public function comparar()
    {
        return Inertia::render('Comparar/index', []);
    }

    public function register()
    {
        return Inertia::render('Registrar/index', [
            'canResetPassword' => Route::has('password.request'),
            'status' => session('status'),
        ]);
    }

    public function listings($slug)
    {
        return Inertia::render('Producto/index', []);
    }
}
