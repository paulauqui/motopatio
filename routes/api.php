<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\ConditionController;
use App\Http\Controllers\Api\BrandController;
use App\Http\Controllers\Api\ModelController;
use App\Http\Controllers\Api\KilometersController;
use App\Http\Controllers\Api\MotorcycleController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('condition/select2', [ConditionController::class, 'select2'])
    ->name('api.condition.select2');

Route::post('brand/select2', [BrandController::class, 'select2'])
    ->name('api.brand.select2');

Route::post('model/select2', [ModelController::class, 'select2'])
    ->name('api.model.select2');

Route::post('Motorcycle/kilometers-select2', [MotorcycleController::class, 'kilometersSelect2'])
    ->name('api.motorcycle-kilometer.select2');

Route::post('Motorcycle/prices-select2', [MotorcycleController::class, 'pricesSelect2'])
    ->name('api.motorcycle-prices.select2');

Route::post('Motorcycle/years-select2', [MotorcycleController::class, 'yearsSelect2'])
    ->name('api.motorcycle-years.select2');
