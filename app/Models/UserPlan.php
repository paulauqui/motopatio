<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserPlan extends Model
{
    use HasFactory;
    protected $table = 'user_plan';
    protected $fillable = ['user_id', 'plan_id'];
    protected $name = null;

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function plan()
    {
        return $this->belongsTo(Plan::class);
    }

    public function getNameAttribute()
    {
        return $this->user->name . "(Full)"; //some logic to return numbers
    }
}
