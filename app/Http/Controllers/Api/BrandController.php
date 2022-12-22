<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Condition;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    public function select2(Request $request)
    {
        $conditions = Brand::getBrand();
        $results = $conditions->map(function ($item) {
            return [
                'id' => $item->id,
                'text' => $item->name,
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
