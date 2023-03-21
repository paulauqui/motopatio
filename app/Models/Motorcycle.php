<?php

namespace App\Models;

use App\Helper\Helper;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use TCG\Voyager\Voyager;

class Motorcycle extends Model
{
    use HasFactory;
    protected $table = 'motorcycle';
    protected $appends = [
        'image_real',
        'gallery_real',
        'price_format',
        'created_at_format',
        'name_condition',
        'name_transmission',
        'name_braek',
        'name_color',
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function condition()
    {
        return $this->belongsTo(Condition::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function transmission()
    {
        return $this->belongsTo(Transmission::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function brake()
    {
        return $this->belongsTo(Brake::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function color()
    {
        return $this->belongsTo(Color::class);
    }


    /**
     * @return string
     */
    public function getImageRealAttribute()
    {
        return ($this->image) ? Helper::getVoyagerImages($this->image) : '';
    }

    /**
     * @return array|mixed
     */
    public function getGalleryRealAttribute()
    {
        $gallery = collect([$this->image]);
        if ($this->gallery) {
            if ($gallery_ = json_decode($this->gallery)) {
                foreach ($gallery_ as $item) {
                    $gallery->push($item);
                }
            }
        }

        $gallery = $gallery->map(function ($item) {
            return Helper::getVoyagerImages($item);
        });

        return $gallery;
    }

    /**
     * @return string
     */
    public function getPriceFormatAttribute()
    {
        return $this->price ? Helper::getFormatNumber($this->price) : '0.00';
    }

    /**
     * @return mixed
     */
    public function getCreatedAtFormatAttribute()
    {
        return $this->created_at->format('F d, Y');
    }

    /**
     * @return mixed
     */
    public function getNameConditionAttribute()
    {
        return $this->condition ? $this->condition->name : null;
    }

    /**
     * @return null
     */
    public function getNameTransmissionAttribute()
    {
        return $this->transmission ? $this->transmission->name : null;
    }

    /**
     * @return string|null
     */
    public function getNameBraekAttribute()
    {
        //dd($this->brake);
        return $this->brake ? $this->brake->name : null;
    }

    /**
     * @return string|null
     */
    public function getNameColorAttribute()
    {
        return $this->color ? $this->color->name : null;
    }

    /**
     * @return Builder
     */
    public static function builder()
    {
        return Motorcycle::select('motorcycle.*');
    }

    /**
     * @return \Illuminate\Support\Collection
     */
    public static function getMotorcycle()
    {
        return self::builder()
            ->orderBy('created_at', 'ASC')
            ->where('status', 1)
            ->get();
    }

    /**
     * @return \Illuminate\Support\Collection
     */
    public static function getMotorcycleFeature()
    {
        return self::builder()
            ->where('featured', 1)
            ->where('status', 1)
            ->orderBy('created_at', 'DESC')
            ->get();
    }

    /**
     * @param $slug
     * @return Model|Builder|null|object
     */
    public static function getMotorcicleSlug($slug)
    {
        return self::builder()
            ->where('slug', $slug)
            ->orderBy('created_at', 'DESC')
            ->first();
    }

    /**
     * @return \Illuminate\Support\Collection
     */
    public static function getMotorciclePrices()
    {
        return self::builder()
            ->select(DB::raw('DISTINCT price'))
            ->orderByRaw('CAST(price AS UNSIGNED) ASC')
            ->get();
    }

    /**
     * @return \Illuminate\Support\Collection
     */
    public static function getMotorcicleYears()
    {
        return self::builder()
            ->select(DB::raw('DISTINCT year'))
            ->where('year', '>', 0)
            ->orderBy('year', 'ASC')
            ->get();
    }

    /**
     * @return \Illuminate\Support\Collection
     */
    public static function getMotorcycleAprobados()
    {
        $rs = self::builder()
            ->join('user_plan', 'user_plan.id', '=', 'motorcycle.user_plan_id')
            ->join('status', 'status.id', '=', 'user_plan.status_id')
            ->orderBy('created_at', 'ASC')
            ->where('status', 1);

        if ($aprobado = Status::getAprobado()) {
            $rs->where('status.key', $aprobado->key);
        }

        // dd($rs->toSql(), $aprobado);
        return $rs->get();
    }
}
