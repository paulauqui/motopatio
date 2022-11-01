<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder;

class Plan extends Model
{
    use HasFactory;
    protected $table = 'plan';
    protected $fillable = [
        'name',
        'payment_period_id',
        'duration',
        'publication',
        'featured',
        'microsite',
        'price',
        'default',
        'order',
        'status'
    ];

    /**
     * @return Builder
     */
    public static function builder()
    {
        return Plan::select('plan.*')->orderby('order', 'ASC');
    }

    public static function getPlanes()
    {
        return self::builder()->where('status', 1)->get();
    }

    public static function getPlanDefault()
    {
        return self::builder()
            ->where('status', 1)
            ->where('default', 1)
            ->first();
    }
}
