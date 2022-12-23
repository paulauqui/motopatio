<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder;

class Transmission extends Model
{
    use HasFactory;
    protected $table = 'transmission';

    /**
     * @return Builder
     */
    public static function builder()
    {
        return Transmission::select('transmission.*');
    }

    public static function getTransmission()
    {
        $rs = self::builder()
            ->where('status', 1);

        return $rs->get();
    }

}
