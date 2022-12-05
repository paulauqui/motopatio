<?php
/**
 * Created by PhpStorm.
 * User: ZBOOK
 * Date: 5/12/2022
 * Time: 14:23
 */

namespace App\Helper;


use Illuminate\Support\Facades\Storage;

class Helper
{

    /**
     * @param $path
     * @return mixed
     */
    public static function getVoyagerImages($path)
    {
        $path = str_replace("\\", '/', $path);
        return Storage::disk(config('voyager.storage.disk'))->url($path);
    }

    /**
     * @param $number
     * @return string|int|float
     */
    public static function getFormatNumber($number)
    {
        return number_format($number, '2', '.', ',');
    }
}
