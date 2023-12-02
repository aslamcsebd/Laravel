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
                    <form method="POST" action="{{ url('add_employee') }}" enctype="multipart/form-data">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('Gender') }}</label>

                              <div class="col-md-6  btn-group btn-group-toggle " data-toggle="buttons">
                                 <label class="form-control btn btn-sm btn-info active">
                                    <input type="radio" name="gender" value="Male" id="gender">Male
                                 </label>
                                 <div class="vl"></div>
                                 <label class="form-control btn btn-sm btn-info">
                                    <input type="radio" name="gender" value="Female" id="gender">Female
                                 </label>
                              </div>
                        </div>

                        <div class="form-group row">
                           <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Date of Birth') }}
                           </label>

                           <div class="col-md-6">
                              <input type="text" id="datepicker" name="dob" value="{{ old('dob')}}" placeholder="Insert date" class="form-control">
                           </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Photo') }}</label>
                            <div class="col-md-6"> 
                              <input type="file" name="photo" class="form-control" id="image">
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register') }}
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
