<?php

namespace App\Models;

use App\Helper\Helper;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder;
use Illuminate\Support\Facades\Storage;
use TCG\Voyager\Voyager;

class Motorcycle extends Model
{
    use HasFactory;
    protected $table = 'motorcycle';
    protected $appends = ['image_real', 'gallery_real', 'price_format'];

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
        if ($this->gallery) {
            if ($gallery = json_decode($this->gallery)) {
                $gallery = collect($gallery)->map(function ($path) {
                    return Helper::getVoyagerImages($path);
                })->all();

                return $gallery;
            }
        }

        return [];
    }

    /**
     * @return string
     */
    public function getPriceFormatAttribute()
    {
        return $this->price ? Helper::getFormatNumber($this->price) : '0.00';
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
}
