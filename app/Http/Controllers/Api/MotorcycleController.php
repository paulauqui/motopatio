<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Condition;
use App\Models\Models;
use App\Models\Motorcycle;
use BaconQrCode\Common\Mode;
use Illuminate\Http\Request;

class MotorcycleController extends Controller
{
    public function pricesSelect2(Request $request)
    {
        $results = [];

        if ($motorcylces = Motorcycle::getMotorciclePrices()) {
            $results = $motorcylces->map(function ($item) {
                return [
                    'id' => $item->price,
                    'text' => '$ ' . number_format($item->price, '0', '.', ',')
                ];
            });
        }

        if (!$request->ajax()) {
            return $results;
        }

        return response()->json([
            'results' => $results
        ], 200);
    }

    public function yearsSelect2(Request $request)
    {
        $results = [];

        if ($motorcylces = Motorcycle::getMotorcicleYears()) {
            $results = $motorcylces->map(function ($item) {
                return [
                    'id' => $item->year,
                    'text' => $item->year
                ];
            });
        }

        if (!$request->ajax()) {
            return $results;
        }

        return response()->json([
            'results' => $results
        ], 200);
    }

    public function kilometersSelect2(Request $request)
    {
        $rs = collect([
            '< 10000',
            '10000-25000',
            '25000-79777',
            '79777-82557',
            '82557-88297',
            '88297-92549',
            '> 95100'
        ]);

        $results = $rs->map(function ($value) {
            return [
                'id' => $value,
                'text' => $value,
            ];
        })->all();

        if (!$request->ajax()) {
            return $results;
        }

        return response()->json([
            'results' => $results
        ], 200);
    }
}
