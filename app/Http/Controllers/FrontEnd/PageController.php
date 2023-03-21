<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Helper\Compare;
use App\Models\Motorcycle;
use App\Models\Plan;
use Illuminate\Foundation\Application;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;
use Inertia\Inertia;

class PageController extends Controller
{
    public function home()
    {
        $motorcycle = Motorcycle::getMotorcycleAprobados();
        $featured = $motorcycle->filter(function ($moto) {
            return ($moto->featured);
        });

        $latest = $motorcycle->filter(function ($moto) {
            return (!$moto->featured);
        });

        return Inertia::render('Home/index', [
            'featured' => $featured,
            'latest' => $latest,
            'vehicles' => $motorcycle->count(),
        ]);
    }

    /**
     * return Inertia::render('Home/index', [
     * 'canLogin' => Route::has('login'),
     * 'canRegister' => Route::has('register'),
     * 'laravelVersion' => Application::VERSION,
     * 'phpVersion' => PHP_VERSION,
     * ]);
     */

    public function motos()
    {
        $motorcycles = Motorcycle::getMotorcycleAprobados();
        return Inertia::render('Motos/index', [
            'motorcycles' => $motorcycles,
            'vehicles' => $motorcycles->count(),
        ]);
    }

    public function motosCondition($slug)
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
        $compare = Compare::get();
        return Inertia::render('Comparar/index', [
            'motorcycles' => $compare
        ]);
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
        $model = Motorcycle::getMotorcicleSlug($slug);
        return Inertia::render('Producto/index', [
            'model' => $model
        ]);
    }

    public function sessionSelect2(Request $request)
    {
        $field = explode('_', $request->field);
        $name = (isset($field[2]) && $field[2]) ? $field[2] : $request->field;

        Session::forget($name);
        Session::push($name, $request->id);

        return response()->json([
            'status' => 'OK',
            'data' => [
                'id' => $name,
                'field' => $request->id
            ]
        ]);
    }

    public function compararStore(Motorcycle $motorcycle)
    {
        Compare::store($motorcycle);

        return response()->json([
            'status' => 'OK',
            'data' => Compare::get(),
        ], 200);
        //dd($motorcycle);
    }
}
