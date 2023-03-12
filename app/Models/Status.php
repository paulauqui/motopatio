<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Query\Builder;
use function Symfony\Component\HttpClient\Response\select;

class Status extends Model
{
    use HasFactory;
    use SoftDeletes;

    public static $permission_admin = false;

    protected $table = 'status';
    protected $fillable = ['description', 'key', 'order'];

    /**
     * @return Builder
     */
    public static function builder()
    {
        return Status::select('status.*');
    }

    /**
     * @return \Illuminate\Support\Collection|Status[]
     */
    public static function getStatus()
    {
        return self::builder()
            ->orderBy('order', 'ASC')
            ->get();
    }

    /**
     * @return Status|Builder|null|object
     */
    public static function getAprobado()
    {
        return self::builder()->where('key', 'aprobado')->first();
    }


    /**
     * @param  Builder $query
     * @return mixed
     */
    public function scopeAutenticateUser($query)
    {
//        $query->select('id')
//            ->addSelect(DB::raw("CONCAT(name,' (',email,')') name"));

        if (!self::$permission_admin) {
            $query->whereIn('key', ['revision','cancelado']);
        }

        return $query;
    }
}
