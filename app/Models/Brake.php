<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Brake extends Model
{
    use HasFactory;
    protected $table = 'brake';
    protected $fillable = ['name', 'status'];
}
