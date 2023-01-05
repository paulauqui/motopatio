<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder;

class Countries extends Model
{
    use HasFactory;

    protected $table = 'countries';

    /**
     * @param Builder $query
     * @return mixed
     */
    public function scopeActive($query)
    {
        $query->select('countries.*')
            ->where('status', 1);

        return $query;
    }
}
