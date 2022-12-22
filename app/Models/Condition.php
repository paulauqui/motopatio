<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder;

class Condition extends Model
{
    use HasFactory;

    protected $table = 'condition';
    protected $fillable = ['name', 'status'];

    /**
     * @return Builder
     */
    public static function builder()
    {
        return Condition::select('condition.*');
    }

    public static function getCondition()
    {
        return self::builder()
            ->where('status', 1)
            ->get();
    }
}
