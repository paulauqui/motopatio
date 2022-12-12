<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Query\Builder;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Laravel\Jetstream\HasProfilePhoto;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;

class User extends \TCG\Voyager\Models\User
{
    use HasApiTokens;
    use HasFactory;
    use HasProfilePhoto;
    use Notifiable;
    use TwoFactorAuthenticatable;
    use HasRoles;

    public static $permission_admin = false;

    protected $table = 'users';

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
        'two_factor_recovery_codes',
        'two_factor_secret',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    protected $appends = [
        'profile_photo_url',
        'name_email',
    ];

    public function getNameEmailAttribute()
    {
        return $this->name . ' ' . "({$this->email})";
    }

    /**
     * @return Builder
     */
    public static function builder()
    {
        return User::select('users.*');
    }

    public static function getUsers()
    {
        return self::builder()
            ->orderBy('name', 'ASC')
            ->get();
    }

    /**
     * @param  Builder $query
     * @return mixed
     */
    public function scopeAutenticateUser($query)
    {
        $query->select('id')
            ->addSelect(DB::raw("CONCAT(name,' (',email,')') name"));

        if (!self::$permission_admin) {
            $query->where('id', Auth::user()->id);
        }

        return $query;
    }
}
