	<div class="border {{ $loop->last ? '' : 'border-gray-300 rounded-lg'  }} ">
    		<div class="flex">
    			<div class="mr-4">
    				<a href="{{ route('profile',$tweet->user)}}">
    				<img src="{{$tweet->user->avatar}}" alt="" class="rounded-circle">
    				</a>
    				 </div>
    			<div>
    				<h5 class="font-bold mb-4">
    					<a href="{{ route('profile',$tweet->user->name)}}">
    					{{$tweet->user->name}}
    					</a>
    				</h5>
    				<p class="text-sm">{{$tweet->body}}</p>
    				<!-- <img src="{{url('public/images/'.$tweet->image)}}" height="10px" width="20px" alt="" class="rounded-circle">  -->
                    @if($tweet->image)
    				<img src="{{ URL::to('/') }}/images/{{ $tweet->image }}" height="100px" width="200px" alt="" class="rounded-circle">  
                    @endif
                    
    			</div>
    		</div>
    	</div>