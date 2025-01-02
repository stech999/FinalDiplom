<?php

use App\Http\Controllers\Auth\ForgotPasswordController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisteredUserController;
use App\Http\Controllers\Auth\ResetPasswordController;
use App\Http\Controllers\Directions;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\SearchController;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::view('/', 'welcome');

Route::view('dashboard', 'dashboard')
    ->middleware(['auth', 'verified'])
    ->name('dashboard');

Route::view('profile', 'profile')
    ->middleware(['auth'])
    ->name('profile');

require __DIR__.'/auth.php';


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('login', [LoginController::class, 'login']);
Route::get('logout', [LoginController::class, 'logout'])->name('logout');
Route::get('password/reset', [ForgotPasswordController::class, 'showLinkRequestForm'])->name('password.request');
Route::post('password/email', [ForgotPasswordController::class, 'sendResetLinkEmail'])->name('password.email');
Route::get('password/reset/{token}', [ResetPasswordController::class, 'showResetForm'])->name('password.reset');
Route::post('password/reset', [ResetPasswordController::class, 'reset'])->name('password.update');
Route::get('register', [RegisteredUserController::class, 'create'])->name('register');
Route::post('register', [RegisteredUserController::class, 'store']);

Route::get('/', [IndexController::class, 'index']);
Route::get('/cart', [IndexController::class, 'cart'])->name('cart');

Route::get('/snowboards', [IndexController::class, 'snowboards']);
Route::get('/snowboard/{id}', [IndexController::class, 'snowboard'])->name('snowboard');

Route::get('/skis', [IndexController::class, 'skis']);
Route::get('/ski/{id}', [IndexController::class, 'ski'])->name('ski');

Route::get('/skateboards', [IndexController::class, 'skateboards']);
Route::get('/skateboard/{id}', [IndexController::class, 'skateboard'])->name('skateboard');

Route::get('/longboards', [IndexController::class, 'longboards']);
Route::get('/longboard/{id}', [IndexController::class, 'longboard'])->name('longboard');

Route::get('/surfings', [IndexController::class, 'surfings']);
Route::get('/surfing/{id}', [IndexController::class, 'surfing'])->name('surfing');

Route::get('/sups', [IndexController::class, 'sups']);
Route::get('/sup/{id}', [IndexController::class, 'sup'])->name('sup');

Route::get('/clothes', [IndexController::class, 'clothes']);
Route::get('/clothe/{id}', [IndexController::class, 'clothe'])->name('clothe');

Route::get('/shoes', [IndexController::class, 'shoes']);
Route::get('/shoe/{id}', [IndexController::class, 'shoe'])->name('shoe');

Route::get('/accessories', [IndexController::class, 'accessories']);
Route::get('/accessorie/{id}', [IndexController::class, 'accessorie'])->name('accessorie');

Route::get('/sellouts', [IndexController::class, 'sellouts']);

Route::get('/search', [SearchController::class, 'search']);