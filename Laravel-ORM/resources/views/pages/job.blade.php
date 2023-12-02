@extends('layouts.app')

@section('content')
   <div class="container"> 

      <div class="row justify-content-center">
        <div class="col-md-8 space">
            <div class="card ">               

               @if (session('success'))
                  <div class="alert alert-success text-center">
                     <strong>Success!</strong> {{ session('success') }}
                  </div>
               @endif
               @if (session('fail'))
                  <div class="alert alert-danger text-center">
                     <strong>Sorry!</strong> {{ session('fail') }}
                  </div>
               @endif

               @if ($errors-> all())
                  <div class="alert alert-danger text-center">
                     @foreach ($errors->all() as $error)
                        <li>{{$error}}</li>
                     @endforeach
                  </div>
               @endif

                <div class="card-body">
                    <form method="POST" action="{{ url('add_Job') }}" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row">
                            <label for="name" class="col-md-3 col-form-label text-md-right">{{ __('Position Name') }}</label>
                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" name="position" value="{{ old('position') }}" required autocomplete="name" placeholder="Insert Position Name" autofocus>                                
                            </div>
                            <div class="col-md-3">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Add Now') }}
                                </button>
                            </div>
                        </div>   
                    </form>
                </div>
            </div>
        </div>
      </div>

      <div class="row justify-content-center">
         <div class="col-12 col-lg-8 col-md-4 col-sm-6 col-sm-12 mt-2 mb-2">
            <div class="card">             

               <div class="card-header text-light text-center bg-success">Job Type [{{ $JobTypes->count() }}]</div>
               
                   @if (session('success2'))
                     <div class="alert alert-success text-center">
                        <strong>Success!</strong> {{ session('success') }}
                     </div>
                  @endif
                  <div class="card-body">                       
                     <table class="table singer_list_table table-bordered">
                        <thead class="bg-info">
                           <tr class="text-center">
                              <th>No</th>
                              <th>Job Position</th>
                              <th>Action</th>
                           </tr>
                        </thead>
                        <tbody>
                           @foreach($JobTypes as $JobType)
                              <tr class="text-center">
                                 <td> {{$loop->index + 1}}  </td>               
                                 <td>{{ $JobType->position}}</td>
                                 <td>
                                    <div class="btn-group" role="group">      
                                       <a href="{{ url('job_delete')}}/{{$JobType->id}}" onclick="return confirm('Are you sure?')" class="btn btn-sm btn-danger">Delete</a>
                                    </div>                                            
                                 </td>
                              </tr>
                            @endforeach                                               
                        </tbody>
                     </table>
                  </div>
               </div>
         </div>
      </div>   

   </div>
@endsection