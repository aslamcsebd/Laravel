@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 space">
            <div class="card ">
                <div class="card-header text-light text-center bg-success">{{ __('Add Salary') }}</div>

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
                    <form method="POST" action="{{ url('add_salary') }}" enctype="multipart/form-data">
                        @csrf

                        <div class="form-group row">
                           <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('Employee Name') }}</label>

                           <div class="col-md-6">
                              <select name="employee_id" class="form-control">
                                 <option value="">Select Employee</option>
                                 @foreach($Employees as $Employee)
                                    <option value="{{$Employee->id}}"> {{--  <img src="{{asset('photo')}}/{{$Employee->photo}}" lass="img-thumbnail" alt="No Image found" width="50" /> --}}
                                     
                                     {{ $Employee->name }}</option>
                                 @endforeach
                              </select>
                           </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('Position') }}</label>

                            <div class="col-md-6">
                              <select name="position" class="form-control">
                                    <option value="">Select Position</option>
                                    @foreach($JobTypes as $JobType)
                                       <option value="{{$JobType->position}}">{{ $JobType->position }}</option>
                                    @endforeach
                                 </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="salary" class="col-md-4 col-form-label text-md-right">{{ __('Salary Amount') }}</label>

                            <div class="col-md-6">
                                <input id="salary" type="text" class="form-control" name="salary" value="{{ old('salary') }}" required autocomplete="salary" autofocus>
                                
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
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
</div>
@endsection
