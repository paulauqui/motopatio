<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
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
        return Inertia::render('Planes/index', []);
    }

    public function comparar()
    {
        return Inertia::render('Comparar/index', []);
    }

    public function register()
    {
        return Inertia::render('Registrar/index', []);
    }
}
