<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sellouts extends Model
{
    use HasFactory;
    public $timestamps = true;
    protected $fillable =
        [
            'id',
            'products_id',
            'title',
            'desc',
            'img',
            'img_lots',
            'price_discount',
            'price',
            'color_id',
            'brand_id',
            'size_id'
        ];
}
