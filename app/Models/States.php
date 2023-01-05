<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use NunoMaduro\Collision\Adapters\Phpunit\State;

class States extends Model
{
    use HasFactory;
    protected $table = 'states';
    public $country = null;

    /**
     * @return Builder
     */
    public static function builder()
    {
        return States::select('states.*');
    }

    /**
     * @param Builder $query
     * @return mixed
     */
    public function scopeFilterCountries($query)
    {
        $query->select('states.*')
            ->join('countries', 'countries.id', '=', 'states.id_country');

        if ($this->country) {
            $query->where('countries.id', $this->country);
        }

        //dd($query->toSql(), $this->country);
        return $query;
    }
}
