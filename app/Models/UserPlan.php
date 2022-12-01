<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Query\Builder;

class UserPlan extends Model
{
    use HasFactory;
    use SoftDeletes;

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

    /**
     * @return Builder
     */
    public static function builder()
    {
        return UserPlan::select('user_plan.*');
    }

    public static function getUserPlanExist($user, $plan)
    {
        return self::builder()
            ->where('plan_id', is_object($plan) ? $plan->id : $plan)
            ->where('user_id', is_object($user) ? $user->id : $user)
            ->get();
    }

    public static function getUserPlan($user)
    {
        return self::builder()
            ->where('user_id', is_object($user) ? $user->id : $user)
            ->get();
    }

    public static function getUserPlanLast($user)
    {
        return self::builder()
            ->where('user_id', is_object($user) ? $user->id : $user)
            ->orderBy('created_at', 'desc')
            ->first();
    }
}
