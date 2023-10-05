@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                
                <div class="card-header">
                    You are logged in <?php $checked = (Auth::user()->provider != null) ? true : false ?>

                    <div class="form-check form-check-inline pl-2">
                        <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="inlineRadio1" value="option1" {{$checked==true ? 'disabled' : 'checked'}}  >
                        <label class="form-check-label" for="inlineRadio1">Normal</label>
                    </div>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2" {{$checked==true ? 'checked' : 'disabled'}}>
                        <label class="form-check-label" for="inlineRadio2">Socialite</label>
                    </div>
                </div>

                <div class="card-body text-center">
                    <table class="table table-bordered">                        
                        <tr>
                            <td>Name</td>
                            <td>{{Auth::user()->name}}</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>{{Auth::user()->email}}</td>
                        </tr> 
                        <tr class="{{$checked==true ? "bg-warning" : ""}}">
                            <td>Provider</td>
                            <td>{{Auth::user()->provider}}</td>
                        </tr> 
                        <tr class="{{$checked==true ? "bg-warning" : ""}}">
                            <td>Provider_id</td>
                            <td>{{Auth::user()->provider_id}}</td>
                        </tr>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection
