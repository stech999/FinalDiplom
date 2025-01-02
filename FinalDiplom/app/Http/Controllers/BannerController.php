<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use Illuminate\Http\Request;

class BannerController extends Controller
{
    public function banner()
    {
        $banner = Banner::all();
        return view('home', ['items' => $banner]);
    }
}
