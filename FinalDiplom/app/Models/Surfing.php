<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Surfing extends Model
{
    use HasFactory;
    public $timestamps = true;
    protected $fillable =
        [
            'id',
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
