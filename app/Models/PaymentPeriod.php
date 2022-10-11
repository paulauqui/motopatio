<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PaymentPeriod extends Model
{
    use HasFactory;
    protected $table = 'payment_period';
    protected $fillable = ['name', 'days', 'status'];
}
