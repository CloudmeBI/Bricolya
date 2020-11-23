<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FlashDealProduct extends Model
{
    protected $fillable = [
        "flash_deal_id", "product_id", "discount", "discount_type",
    ];
    
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
