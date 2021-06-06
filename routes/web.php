<?php
use App\User;
// use Request;
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
// Route::get ('/search', function () {
//     $q = Request::input('search');
//     $user = User::where ( 'name', 'LIKE', '%' . $q . '%' )->get ();
//     if (count ( $user ) > 0)
//         return view ( 'explore' )->withDetails ( $user )->withQuery ( $q );
//     else
//         return view ( 'explore' )->withMessage ( 'No Details found. Try to search again !' );
// } );
Route::get ('/search', 'ExploreController@search');
Route::get('/profile/{user}','ProfilesController@show')->name('profile');
Route::post('/profile/{user}/follow','FollowsController@store');
// Route::get('/profile/{user:username}/edit',[ProfileController::class,'edit'])->middleware('can:edit,user');
// Route::patch('/profile/{user:username}',[ProfileController::class,'update'])->middleware('can:edit,user')->name('profile');
});
Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');
