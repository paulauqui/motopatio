<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Query\Builder;

class PaymentMethod extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'payments_methods';
    protected $fillable = ['name', 'order', 'key', 'description', 'status'];

    /**
     * @return Builder
     */
    public static function builder()
    {
        return PaymentMethod::select('payments_methods.*')->orderBy('order','ASC');
    }

    public static function getPaymentMethods()
    {
        return self::builder()->where('status', 1)->get();
    }
}
