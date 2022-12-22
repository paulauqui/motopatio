<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Condition;
use App\Models\Models;
use BaconQrCode\Common\Mode;
use Illuminate\Http\Request;

class ModelController extends Controller
{
    public function select2(Request $request)
    {
        $results = [];
        if ($request->brand) {
            Models::$brand_id = $request->brand;
            $conditions = Models::getModel();

            $results = $conditions->map(function ($item) {
                return [
                    'id' => $item->id,
                    'text' => $item->name,
                ];
            })->all();
        }

        if (!$request->ajax()) {
            return $results;
        }

        return response()->json([
            'results' => $results
        ], 200);

    }
}
