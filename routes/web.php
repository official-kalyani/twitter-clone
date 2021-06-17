<?php
use App\User;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::middleware('auth')->group(function () {
Route::post('/tweets','TweetsController@store');
Route::get('/tweets', 'TweetsController@index')->name('home');
Route::get('/explore', 'ExploreController@index');

Route::get ('/search', 'ExploreController@search');
Route::get('/profile/{user}','ProfilesController@show')->name('profile');
Route::post('/profile/{user}/follow','FollowsController@store');

});
Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');
