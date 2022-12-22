<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder;

class Models extends Model
{
    use HasFactory;
    protected $table = 'model';
    protected $fillable = ['name', 'order', 'status', 'brand_id'];

    public static $brand_id;

    /**
     * @return Builder
     */
    public static function builder()
    {
        return Models::select('model.*');
    }

    public static function getModel()
    {
        $rs = self::builder()
            ->where('status', 1)
            ->orderBy('order', 'ASC');

        if (self::$brand_id) {
            $rs->where('brand_id', self::$brand_id);
        }

        return $rs->get();
    }
}
