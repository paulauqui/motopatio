<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Checkout extends Model
{
    use HasFactory;
    protected $table = 'checkout';
    protected $fillable = [
        'user_id',
        'name',
        'last_name',
        'business',
        'country',
        'address',
        'address_aditional',
        'city',
        'postal',
        'phone',
        'email',
        'information',
        'newsletter',
        'status',
        'status_id'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
