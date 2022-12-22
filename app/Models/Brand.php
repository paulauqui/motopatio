<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder;

class Brand extends Model
{
    use HasFactory;
    protected $table = 'brand';
    protected $fillable = ['name', 'order', 'status'];

    /**
     * @return Builder
     */
    public static function builder()
    {
        return Brand::select('brand.*');
    }

    public static function getBrand()
    {
        return self::builder()
            ->where('status', 1)
            ->orderBy('order', 'ASC')
            ->get();
    }
}
