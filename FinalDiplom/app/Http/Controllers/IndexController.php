<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Auth\LoginController;
use App\Models\Accessorie;
use App\Models\Banner;
use App\Models\Category_brand;
use App\Models\Clothes;
use App\Models\Colors;
use App\Models\longboard;
use App\Models\Shoe;
use App\Models\Size;
use App\Models\Skateboard;
use App\Models\Ski;
use App\Models\Snow;
use App\Models\Sup;
use App\Models\Surfing;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class IndexController extends Controller
{
    public function index()
    {
        $banners = Banner::all();
        return view('home', compact('banners'));
    }
    public function cart()
    {
        return view('cart');
    }

    public function order()
    {
        return view('order');
    }

    public function snowboard(string $id)
    {
        $item = Snow::find($id);
        return view('item\snowboard', ['items' => $item]);
    }
    public function snowboards(Request $request)
    {
        $query = Snow::query();
        $sort = $request->query('sort', 'title');
        $direction = $request->query('direction', 'asc');
        if (!in_array($direction, ['asc', 'desc'])) {
            $direction = 'asc';
        }

        if ($sort === 'color') {
            $query->orderBy(function ($query) {
                $query->select('title')
                    ->from('colors')
                    ->whereColumn('colors.id', 'snows.color_id');
            }, $direction);

        } else {
            $query->orderBy($sort, $direction);
        }

        $snowboards = $query->paginate(12);

        return view('catalog', [
            'snowboards' => $snowboards,
            'brands' => collect(),
            'colors' => collect(),
            'sizes' => collect(),
            'skateboards' => collect(),
            'skis' => collect(),
            'longboards' => collect(),
            'surfings' => collect(),
            'sups' => collect(),
            'clothes' => collect(),
            'shoes' => collect(),
            'accessories' => collect(),
            'sort' => $sort,
            'direction' => $direction,
        ]);
    }
    public function skateboards(Request $request)
    {
        $query = Skateboard::query();
        $sort = $request->query('sort', 'title');
        $direction = $request->query('direction', 'asc');
        if (!in_array($direction, ['asc', 'desc'])) {
            $direction = 'asc';
        }

        if ($sort === 'color') {
            $query->orderBy(function ($query) {
                $query->select('title')
                    ->from('colors')
                    ->whereColumn('colors.id', 'skateboards.color_id');
            }, $direction);

        } else {
            $query->orderBy($sort, $direction);
        }

        $skateboards = $query->paginate(12);

        return view('catalog', [
            'snowboards' => collect(),
            'brands' => collect(),
            'colors' => collect(),
            'sizes' => collect(),
            'skateboards' => $skateboards,
            'skis' => collect(),
            'longboards' => collect(),
            'surfings' => collect(),
            'sups' => collect(),
            'clothes' => collect(),
            'shoes' => collect(),
            'accessories' => collect(),
            'sort' => $sort,
            'direction' => $direction,
        ]);
    }

    public function skis(Request $request)
    {
        $query = Ski::query();
        $sort = $request->query('sort', 'title');
        $direction = $request->query('direction', 'asc');
        if (!in_array($direction, ['asc', 'desc'])) {
            $direction = 'asc';
        }

        if ($sort === 'color') {
            $query->orderBy(function ($query) {
                $query->select('title')
                    ->from('colors')
                    ->whereColumn('colors.id', 'skis.color_id');
            }, $direction);

        } else {
            $query->orderBy($sort, $direction);
        }

        $skis = $query->paginate(12);

        return view('catalog', [
            'snowboards' => collect(),
            'brands' => collect(),
            'colors' => collect(),
            'sizes' => collect(),
            'skateboards' => collect(),
            'skis' => $skis,
            'longboards' => collect(),
            'surfings' => collect(),
            'sups' => collect(),
            'clothes' => collect(),
            'shoes' => collect(),
            'accessories' => collect(),
            'sort' => $sort,
            'direction' => $direction,
        ]);
    }

    public function longboards(Request $request)
    {
        $query = Longboard::query();
        $sort = $request->query('sort', 'title');
        $direction = $request->query('direction', 'asc');
        if (!in_array($direction, ['asc', 'desc'])) {
            $direction = 'asc';
        }

        if ($sort === 'color') {
            $query->orderBy(function ($query) {
                $query->select('title')
                    ->from('colors')
                    ->whereColumn('colors.id', 'longboards.color_id');
            }, $direction);

        } else {
            $query->orderBy($sort, $direction);
        }

        $longboards = $query->paginate(12);

        return view('catalog', [
            'snowboards' => collect(),
            'brands' => collect(),
            'colors' => collect(),
            'sizes' => collect(),
            'skateboards' => collect(),
            'skis' => collect(),
            'longboards' => $longboards,
            'surfings' => collect(),
            'sups' => collect(),
            'clothes' => collect(),
            'shoes' => collect(),
            'accessories' => collect(),
            'sort' => $sort,
            'direction' => $direction,
        ]);
    }

    public function surfings(Request $request)
    {
        $query = Surfing::query();
        $sort = $request->query('sort', 'title');
        $direction = $request->query('direction', 'asc');
        if (!in_array($direction, ['asc', 'desc'])) {
            $direction = 'asc';
        }

        if ($sort === 'color') {
            $query->orderBy(function ($query) {
                $query->select('title')
                    ->from('colors')
                    ->whereColumn('colors.id', 'surfings.color_id');
            }, $direction);

        } else {
            $query->orderBy($sort, $direction);
        }

        $surfings = $query->paginate(12);

        return view('catalog', [
            'snowboards' => collect(),
            'brands' => collect(),
            'colors' => collect(),
            'sizes' => collect(),
            'skateboards' => collect(),
            'skis' => collect(),
            'longboards' => collect(),
            'surfings' => $surfings,
            'sups' => collect(),
            'clothes' => collect(),
            'shoes' => collect(),
            'accessories' => collect(),
            'sort' => $sort,
            'direction' => $direction,
        ]);
    }


    public function sups(Request $request)
    {
        $query = Sup::query();
        $sort = $request->query('sort', 'title');
        $direction = $request->query('direction', 'asc');
        if (!in_array($direction, ['asc', 'desc'])) {
            $direction = 'asc';
        }

        if ($sort === 'color') {
            $query->orderBy(function ($query) {
                $query->select('title')
                    ->from('colors')
                    ->whereColumn('colors.id', 'sups.color_id');
            }, $direction);

        } else {
            $query->orderBy($sort, $direction);
        }

        $sups = $query->paginate(12);

        return view('catalog', [
            'snowboards' => collect(),
            'brands' => collect(),
            'colors' => collect(),
            'sizes' => collect(),
            'skateboards' => collect(),
            'skis' => collect(),
            'longboards' => collect(),
            'surfings' => collect(),
            'sups' => $sups,
            'clothes' => collect(),
            'shoes' => collect(),
            'accessories' => collect(),
            'sort' => $sort,
            'direction' => $direction,
        ]);
    }

    public function clothes(Request $request)
    {
        $query = Clothes::query();
        $sort = $request->query('sort', 'title');
        $direction = $request->query('direction', 'asc');
        if (!in_array($direction, ['asc', 'desc'])) {
            $direction = 'asc';
        }

        if ($sort === 'color') {
            $query->orderBy(function ($query) {
                $query->select('title')
                    ->from('colors')
                    ->whereColumn('colors.id', 'clothes.color_id');
            }, $direction);

        } else {
            $query->orderBy($sort, $direction);
        }

        $clothes = $query->paginate(12);

        return view('catalog', [
            'snowboards' => collect(),
            'brands' => collect(),
            'colors' => collect(),
            'sizes' => collect(),
            'skateboards' => collect(),
            'skis' => collect(),
            'longboards' => collect(),
            'surfings' => collect(),
            'sups' => collect(),
            'clothes' => $clothes,
            'shoes' => collect(),
            'accessories' => collect(),
            'sort' => $sort,
            'direction' => $direction,
        ]);
    }

    public function shoes(Request $request)
    {
        $query = Shoe::query();
        $sort = $request->query('sort', 'title');
        $direction = $request->query('direction', 'asc');
        if (!in_array($direction, ['asc', 'desc'])) {
            $direction = 'asc';
        }

        if ($sort === 'color') {
            $query->orderBy(function ($query) {
                $query->select('title')
                    ->from('colors')
                    ->whereColumn('colors.id', 'shoes.color_id');
            }, $direction);

        } else {
            $query->orderBy($sort, $direction);
        }

        $shoes = $query->paginate(12);

        return view('catalog', [
            'snowboards' => collect(),
            'brands' => collect(),
            'colors' => collect(),
            'sizes' => collect(),
            'skateboards' => collect(),
            'skis' => collect(),
            'longboards' => collect(),
            'surfings' => collect(),
            'sups' => collect(),
            'clothes' => collect(),
            'shoes' => $shoes,
            'accessories' => collect(),
            'sort' => $sort,
            'direction' => $direction,
        ]);
    }

    public function accessories(Request $request)
    {
        $query = Accessorie::query();
        $sort = $request->query('sort', 'title');
        $direction = $request->query('direction', 'asc');
        if (!in_array($direction, ['asc', 'desc'])) {
            $direction = 'asc';
        }

        if ($sort === 'color') {
            $query->orderBy(function ($query) {
                $query->select('title')
                    ->from('colors')
                    ->whereColumn('colors.id', 'accessories.color_id');
            }, $direction);

        } else {
            $query->orderBy($sort, $direction);
        }

        $accessories = $query->paginate(12);

        return view('catalog', [
            'snowboards' => collect(),
            'brands' => collect(),
            'colors' => collect(),
            'sizes' => collect(),
            'skateboards' => collect(),
            'skis' => collect(),
            'longboards' => collect(),
            'surfings' => collect(),
            'sups' => collect(),
            'clothes' => collect(),
            'shoes' => collect(),
            'accessories' => $accessories,
            'sort' => $sort,
            'direction' => $direction,
        ]);
    }

    public function ski(string $id)
    {
        $item = Ski::find($id);
        return view('item\ski', ['items' => $item]);
    }

    public function skateboard(string $id)
    {
        $item = Skateboard::find($id);
        return view('item\skateboard', ['items' => $item]);
    }

    public function longboard(string $id)
    {
        $item = longboard::find($id);
        return view('item\longboard', ['items' => $item]);
    }

    public function surfing(string $id)
    {
        $item = Surfing::find($id);
        return view('item\surfing', ['items' => $item]);
    }

    public function sup(string $id)
    {
        $item = Sup::find($id);
        return view('item\sup', ['items' => $item]);
    }

    public function clothe(string $id)
    {
        $item = Clothes::find($id);
        return view('item\clothe', ['items' => $item]);
    }

    public function shoe(string $id)
    {
        $item = Shoe::find($id);
        return view('item\shoe', ['items' => $item]);
    }

    public function accessorie(string $id)
    {
        $item = Accessorie::find($id);
        return view('item\accessorie', ['items' => $item]);
    }

    public function sellouts(Request $request)
    {
        $perPage = 12;
        $currentPage = request()->get('page', 1);

        $Snow = Snow::select([
            'id',
            'title',
            'desc',
            'img',
            'img_lots',
            'price_discount',
            'price',
            'color_id',
            'brand_id',
            'size_id',
        ])
            ->where('price_discount', '>', 0)
            ->get();

        $skis = Ski::select([
            'id',
            'title',
            'desc',
            'img',
            'img_lots',
            'price_discount',
            'price',
            'color_id',
            'brand_id',
            'size_id',
        ])
            ->where('price_discount', '>', 0)
            ->get();

        $skateboards = Skateboard::select([
            'id',
            'title',
            'desc',
            'img',
            'img_lots',
            'price_discount',
            'price',
            'color_id',
            'brand_id',
            'size_id',
        ])
            ->where('price_discount', '>', 0)
            ->get();

        $longboards = longboard::select([
            'id',
            'title',
            'desc',
            'img',
            'img_lots',
            'price_discount',
            'price',
            'color_id',
            'brand_id',
            'size_id',
        ])
            ->where('price_discount', '>', 0)
            ->get();

        $surfings = Surfing::select([
            'id',
            'title',
            'desc',
            'img',
            'img_lots',
            'price_discount',
            'price',
            'color_id',
            'brand_id',
            'size_id',
        ])
            ->where('price_discount', '>', 0)
            ->get();

        $sups = Sup::select([
            'id',
            'title',
            'desc',
            'img',
            'img_lots',
            'price_discount',
            'price',
            'color_id',
            'brand_id',
            'size_id',
        ])
            ->where('price_discount', '>', 0)
            ->get();

        $clothes = Clothes::select([
            'id',
            'title',
            'desc',
            'img',
            'img_lots',
            'price_discount',
            'price',
            'color_id',
            'brand_id',
            'size_id',
        ])
            ->where('price_discount', '>', 0)
            ->get();

        $shoes = Shoe::select([
            'id',
            'title',
            'desc',
            'img',
            'img_lots',
            'price_discount',
            'price',
            'color_id',
            'brand_id',
            'size_id',
        ])
            ->where('price_discount', '>', 0)
            ->get();


        $accessories = Accessorie::select([
            'id',
            'title',
            'desc',
            'img',
            'img_lots',
            'price_discount',
            'price',
            'color_id',
            'brand_id',
            'size_id',
        ])
            ->where('price_discount', '>', 0)
            ->get();

        $allProducts = $Snow
            ->concat($skis)
            ->concat($skateboards)
            ->concat($longboards)
            ->concat($surfings)
            ->concat($sups)
            ->concat($clothes)
            ->concat($shoes)
            ->concat($accessories);

        $offset = ($currentPage - 1) * $perPage;
        $paginatedItems = $allProducts->slice($offset, $perPage)->values();

        $allProductsPaginated = new LengthAwarePaginator(
            $paginatedItems,
            $allProducts->count(),
            $perPage,
            $currentPage,
            ['path' => request()->url(), 'query' => request()->query()]
        );

        return view('catalog', [
            'allProductsPaginated' => $allProductsPaginated,
        ]);
    }
}
