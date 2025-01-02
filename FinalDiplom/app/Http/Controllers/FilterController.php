<?php

namespace App\Http\Controllers;

use App\Models\Category_brand;
use App\Models\Colors;
use App\Models\Size;
use Illuminate\Http\Request;
use App\Models\Snow;
use App\Models\Ski;
use App\Models\Skateboard;
use App\Models\Longboard;
use App\Models\Surfing;
use App\Models\Sup;
use App\Models\Clothes;
use App\Models\Shoe;
use App\Models\Accessorie;

class FilterController extends Controller
{
    public function getFilters()
    {
        $brands = Category_brand::all();
        $colors = Colors::all();
        $sizes = Size::all();
        return response()->json([
            'brands' => $brands,
            'colors' => $colors,
            'sizes' => $sizes
        ]);
    }

    public function filterProducts(Request $request)
    {
        $brand = $request->query('brand');
        $color = $request->query('color');
        $size = $request->query('size');

        $models = [
            'snows' => Snow::class,
            'skis' => Ski::class,
            'skateboards' => Skateboard::class,
            'longboards' => Longboard::class,
            'surfings' => Surfing::class,
            'sups' => Sup::class,
            'clothes' => Clothes::class, 
            'shoes' => Shoe::class,
            'accessories' => Accessorie::class,
        ];
        $filteredProducts = [];
        foreach ($models as $model) {
            $query = $model::query();

            if (is_array($brand) && count($brand) > 0) {
                $query->whereIn('brand_id', function ($query) use ($brand) {
                    $query->select('id')
                        ->from('category_brands')
                        ->whereIn('title', $brand);
                });
            }

            if (is_array($color) && count($color) > 0) {
                $query->whereIn('color_id', function ($query) use ($color) {
                    $query->select('id')
                        ->from('colors')
                        ->whereIn('title', $color);
                });
            }

            if (is_array($size) && count($size) > 0) {
                $query->whereIn('size_id', function ($query) use ($size) {
                    $query->select('id')
                        ->from('sizes')
                        ->whereIn('title', $size);
                });
            }

            $products = $query->get();
            foreach ($products as $product) {
                $filteredProducts[] = [
                    'id' => $product->id,
                    'title' => $product->title,
                    'price' => $product->price
                ];
            }
        }
        return response()->json($filteredProducts);
    }
}