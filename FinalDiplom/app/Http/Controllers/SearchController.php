<?php

namespace App\Http\Controllers;

use App\Models\Accessorie;
use App\Models\Clothes;
use App\Models\Snow;
use App\Models\Ski;
use App\Models\Skateboard;
use App\Models\Longboard;
use App\Models\Surfing;
use App\Models\Sup;
use App\Models\Clothe;
use App\Models\Shoe;
use App\Models\Accessory;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function search(Request $request)
    {
        $query = $request->query('query');
        $results = [];
        $models = [
            'snows' => ['model' => Snow::class, 'route' => 'snow'],
            'skis' => ['model' => Ski::class, 'route' => 'ski'],
            'skateboards' => ['model' => Skateboard::class, 'route' => 'skateboard'],
            'longboards' => ['model' => Longboard::class, 'route' => 'longboard'],
            'surfings' => ['model' => Surfing::class, 'route' => 'surfing'],
            'sups' => ['model' => Sup::class, 'route' => 'sup'],
            'clothes' => ['model' => Clothes::class, 'route' => 'clothe'],
            'shoes' => ['model' => Shoe::class, 'route' => 'shoe'],
            'accessories' => ['model' => Accessorie::class, 'route' => 'accessorie'],
        ];

        foreach ($models as $table => $data) {
            $model = $data['model'];
            $route = $data['route'];
            $items = $model::where('title', 'like', "%$query%")->get();
            foreach ($items as $item) {
                $results[] = [
                    'title' => $item->title,
                    'url' => route($route, ['id' => $item->id])
                ];
            }
        }

        return response()->json($results);
    }
}