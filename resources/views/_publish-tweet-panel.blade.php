	<div class="border border-blue-400 rounded-lg px-8 py-6">
		@if ($errors->any())
	      <div class="alert alert-danger">
	        <ul>
	            @foreach ($errors->all() as $error)
	              <li>{{ $error }}</li>
	            @endforeach
	        </ul>
	      </div><br />
		@endif
    		<form action="/tweets" method="POST" enctype="multipart/form-data">
    			@csrf
    			<textarea name="body" id="" class="form-control" required="true"></textarea><hr>
    			<input type="file" name="image" >
    			<img src="{{ auth()->user()->avatar}}" alt="" class="rounded-circle">
    			<!-- <p>Username-{{ auth()->user()->name}}</p>  			 -->
    			<button type="submit" class="btn btn-primary">Tweet</button>
    		</form>
    	</div>