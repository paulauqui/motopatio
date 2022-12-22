<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Condition;
use Illuminate\Http\Request;

class ConditionController extends Controller
{
    public function select2(Request $request)
    {
        $conditions = Condition::getCondition();
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
