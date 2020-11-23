<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FlashDeal extends Model
{
    protected $casts = [
        'conditions' => 'array',
        'data' => 'array',
    ];

    protected $fillable = [
        'id', 'title', 'start_date', 'end_date', 'product_id',
        'status',
        'featured',
        'conditions',
        'data',
    ];

    public function flash_deal_products()
    {
        return $this->hasMany(FlashDealProduct::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
