<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

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
}
