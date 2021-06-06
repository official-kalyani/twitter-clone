@extends('layouts.app')

@section('content')

<x-app>
    <div>
        <form action="/search" method="get" role="search">
                    {{ csrf_field() }}
                    <div class="input-group">
                        <input type="text" class="form-control" name="search"> <span>
                            <button type="submit" class="btn btn-primary">Search</button></span>
                    </div>
                </form>
                 @if(isset($details))
        @foreach ($details  as $user)
            <a href="{{ $user->path() }}" class="flex items-center mb-5">
                <img src="{{ $user->avatar }}"
                      alt="{{ $user->name }}'s avatar"
                      width="60"
                      class="mr-4 rounded"
                >

                <div>
                    <h4 class="font-bold">{{ '@' . $user->name }}</h4>
                </div>
            </a>
        @endforeach
        @else
       

        @foreach ($users as $user)
            <a href="{{ $user->path() }}" class="flex items-center mb-5">
                <img src="{{ $user->avatar }}"
                      alt="{{ $user->name }}'s avatar"
                      width="60"
                      class="mr-4 rounded"
                >

                <div>
                    <h4 class="font-bold">{{ '@' . $user->name }}</h4>
                </div>
            </a>
        @endforeach

        {{ $users->links() }}
        @endif
    </div>
</x-app>
@endsection
