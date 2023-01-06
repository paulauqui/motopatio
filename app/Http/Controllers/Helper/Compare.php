<?php

namespace App\Http\Controllers\Helper;

use App\Http\Controllers\Controller;
use App\Models\Motorcycle;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class Compare extends Controller
{
    public static function store(Motorcycle $motorcycle)
    {
        $data = collect([]);
        if ($collect = self::get()) {
            if ($collect->count() > 0) {
                $data = $collect->filter(function ($item, $key) use ($motorcycle) {
                    return ($motorcycle->id !== $item->id);
                });
            }
        }

        self::destroy();

        $data->push($motorcycle);
        $insert = $data->sortKeysDesc()->take(3);
        foreach ($insert as $item) {
            Session::push('compare', $item);
        }
    }

    public static function get()
    {
        $data = [];
        if (Session::has('compare')) {
            if ($data = collect(Session::get('compare'))) {
                $data = $data->filter(function ($item) {
                    return ($item);
                })->all();
            }
        }

        return Session::has('compare') ? collect($data) : null;
    }

    public static function destroy()
    {
        return Session::forget('compare');
    }
}
