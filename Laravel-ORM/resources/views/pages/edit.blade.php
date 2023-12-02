
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 space">
            <div class="card ">
                <div class="card-header text-light text-center bg-success">{{ __('Register') }}</div>

                  @if (session('success'))
                     <div class="alert alert-success">
                        <strong>Success!</strong> {{ session('success') }}
                     </div>
                  @endif
                  @if (session('fail'))
                     <div class="alert alert-danger">
                        <strong>Sorry!</strong> {{ session('fail') }}
                     </div>
                  @endif

                  @if ($errors-> all())
                     <div class="alert alert-danger">
                        @foreach ($errors->all() as $error)
                           <li>{{$error}}</li>
                        @endforeach
                     </div>
                  @endif

                <div class="card-body">
                    <form method="POST" action="{{ url('edit_now') }}" enctype="multipart/form-data">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                            <div class="col-md-6">
                              <input type="hidden" name="employee_id" value="{{$Employee->id}}">

                                <input id="name" type="text" class="form-control" name="name" value="{{ $Employee->name }}" required autocomplete="name" autofocus>                                
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email" value="{{ $Employee->email }}" required autocomplete="email">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('Present Position') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" value="{{ $Salary->position }}" required autocomplete="email" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('If Edit Position') }}</label>
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
                            <label for="salary" class="col-md-4 col-form-label text-md-right">{{ __('Salary') }}</label>

                            <div class="col-md-6">
                                <input id="salary" type="text" class="form-control" name="salary" value="{{ $Salary->salary }}" required autocomplete="salary">
                            </div>
                        </div>                      
                       
                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Edit Now') }}
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


