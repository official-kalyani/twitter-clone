@extends('layouts.app')

@section('content')


 <header class="nb-6">
    
   <div class="flex justify-between">
     <div>
       <h2>User name - {{$user->name}}</h2>
       <p>Joined:{{ $user->created_at->diffForHumans() }}</p>
     </div>
     <div>
      @unless(auth()->user()->is($user))
      <form action="/profile/{{ $user->name}}/follow" method="POST">
        @csrf
        <button type="submit" class="btn btn-primary">{{ auth()->user()->following($user) ? 'Unfollow me' : "Follow me"}}</button>
      </form>
       @endunless
     </div>
   </div>
 </header>
 @include('_timeline',[
    'tweets' => $user->tweets
 ])
@endsection
