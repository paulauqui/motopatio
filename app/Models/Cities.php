<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder;

class Cities extends Model
{
    use HasFactory;

    protected $table = 'cities';

    public $country = null;
    public $state = null;

    public function getTable(){
        return $this->table;
    }

    /**
     * @return Builder
     */
    public static function builder()
    {
        return Cities::select('cities.*');
    }

    /**
     * @param Builder $query
     * @return mixed
     */
    public function scopeFilterStates($query)
    {
        $query->select('cities.*')
            ->join('states', 'states.id', '=', 'cities.id_state');
        //->join('countries', 'countries.id', '=', 'states.id_country');

        if ($this->state) {
            $query->where('states.id', $this->state);
        }

        //dd($query->toSql(), $this->country);
        return $query;
    }


    /**
     * @param Countries|int|string $country
     * @return Builder
     */
    public static function getCitiesCountryQuery($country, $limit = null)
    {
        $rs = self::builder()
            ->join('states', 'states.id', '=', 'cities.id_state')
            ->join('countries', 'countries.id', '=', 'states.id_country')
            ->where('countries.id', is_object($country) ? $country->id : $country);

        if ($limit) {
            $rs->limit($limit);
        }

        return $rs;
    }
}
