<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tweet;

class TweetsController extends Controller
{
	public function index()
    {
        // $tweets = Tweet::latest()->get();
        return view('tweets.index',[
            'tweets' => auth()->user()->timeline()
        ]);
    }
    public function store(Request $request){
    	
		$attributes = request()->validate(['body' => 'required|max:255',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg',
		]);

    // 'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
	// $imageName = time().'.'.$attributes['image']->extension();
	// $attributes['image']->move(public_path('images'), $imageName);  
        $files = $request->file('image');        
		$destinationPath = public_path('images');		
        if ($files !== null) {
            $profileImage = date('YmdHis') . "." . $files->getClientOriginalExtension();
        $files->move($destinationPath, $profileImage);
        Tweet::create([
            'user_id' => auth()->id(),
            'body' => $attributes['body'],
            'image' => $profileImage,
        ]);
    }else{
        Tweet::create([
            'user_id' => auth()->id(),
            'body' => $attributes['body'],
        ]);
    }
    return redirect()->route('home');
    }
}
