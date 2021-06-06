<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use DB;

class ExploreController extends Controller
{
    public function index(){
    	return view('explore',[
    		'users' => User::paginate(5),
    	]);
    }
    public function search(Request $request)
	{
		$q = $request->get('search');
    $user = User::where ( 'name', 'LIKE', '%' . $q . '%' )->get ();
    if (count ( $user ) > 0)
        return view ( 'explore' )->withDetails ( $user )->withQuery ( $q );
    else
        return view ( 'explore' )->withMessage ( 'No Details found. Try to search again !' );
		// jdkfjkdjfkd
    // $search = $request->get('search');
    // $usersearch = DB::table('users')->where('name','like','%' .$search. '%')->paginate(5);
    // // return view('explore',[
    // // 		'usersearch' => $users,
    // // 	]);
    // return view('explore',compact('usersearch'));
	}
}
