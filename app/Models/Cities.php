<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder;

class Cities extends Model
{
    use HasFactory;

    protected $table = 'cities';

    public static $country = null;

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
    public function scopeFilterCountries($query)
    {
        $query->select('cities.*')
            ->join('states', 'states.id', '=', 'cities.id_state')
            ->join('countries', 'countries.id', '=', 'states.id_country');

        if (self::$country) {
            $query->where('countries.id', self::$country);
        }

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
