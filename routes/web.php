<?php

use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Http\Controllers\FrontEnd\PageController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [PageController::class, 'home'])->name('home.index');
Route::get('motos', [PageController::class, 'motos'])->name('motos.index');
Route::get('motos/condition/{slug}', [PageController::class, 'motosCondition'])->name('motos.condition.slug');
Route::get('producto', [PageController::class, 'producto'])->name('producto.index');
Route::get('planes', [PageController::class, 'planes'])->name('planes.index');
Route::get('dealer-list', [PageController::class, 'dealer'])->name('dealer.index');
Route::get('comparar', [PageController::class, 'comparar'])->name('comparar.index');
Route::get('comparar/add/{motorcycle}', [PageController::class, 'compararStore'])->name('comparar.store');
Route::get('login-register', [PageController::class, 'register'])->name('register.index');
Route::get('listings/{slug}', [PageController::class, 'listings'])->name('listings.index');
Route::get('welcome', [PageController::class, 'home'])->name('frontend.welcome');
Route::post('session-select2', [PageController::class, 'sessionSelect2'])->name('session.select2');

Route::get('admin/checkout/create/{plan}', [\App\Http\Controllers\Voyager\CheckoutController::class, 'create'])->name('admin.checkout.create');

//Route::get('/dashboard', function () {
//    return Inertia::render('Dashboard');
//})->middleware(['auth', 'verified'])->name('dashboard');

require __DIR__ . '/auth.php';


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
