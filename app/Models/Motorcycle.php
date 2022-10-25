<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder;

class Motorcycle extends Model
{
    use HasFactory;
    protected $table = 'motorcycle';

    /**
     * @return Builder
     */
    public static function builder()
    {
        return Motorcycle::select('motorcycle.*');
    }

    public static function getMotorcycle()
    {
        return self::builder()->get();
    }
}
