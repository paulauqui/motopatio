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

    public $brand = null;
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


    /**
     * @param Builder $query
     * @return mixed
     */
    public function scopeFilterModel($query)
    {
        $query->select('model.*');
        //->join('model', 'states.id', '=', 'cities.id_state');
        //->join('countries', 'countries.id', '=', 'states.id_country');

        if ($this->brand) {
            $query->where('brand_id', $this->brand);
        }

        //dd($query->toSql(), $this->country);
        return $query;
    }
}
