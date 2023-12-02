@extends('layouts.app')

@section('content')
   <div class="container-fluid my-4">
      <fieldset>
         <legend align="center">Laravel Relationship</legend>
            <div class="d-flex align-items-start row">
            {{-- Left Side --}}
               <div class="nav flex-column col-auto nav-pills bg-light ml-2 p-1" id="v-pills-tab" role="tablist" aria-orientation="vertical">

                  {{-- One to One --}}
                     <button class="btn btn-sm btn-outline-primary p-1 m-1 active" data-bs-toggle="pill" data-bs-target="#v-pills-121">One to One</button>

                  {{-- One to One [Inverse] --}}
                     <button class="btn btn-sm btn-outline-primary p-1 m-1 " data-bs-toggle="pill" data-bs-target="#v-pills-121i">One to One [Inverse]</button>

                  {{-- One To Many --}}
                     <button class="btn btn-sm btn-outline-primary p-1 m-1 " data-bs-toggle="pill" data-bs-target="#v-pills-12m">One To Many</button>

                  {{-- One To Many [Inverse] --}}
                     <button class="btn btn-sm btn-outline-primary p-1 m-1 " data-bs-toggle="pill" data-bs-target="#v-pills-12mi">One To Many [Inverse]</button>

                  {{-- Many To Many --}}
                     <button class="btn btn-sm btn-outline-primary p-1 m-1 " data-bs-toggle="pill" data-bs-target="#v-pills-m2m">Many To Many</button>

                     <small class="bg-warning m-1 p-1 text-center"> <b>N:B:</b> Warning color means <br> join from other table.</small>
               </div>

            {{-- Right Side --}}
               <div class="tab-content col" id="v-pills-tabContent">
                  {{-- One to One --}}
                     <div class="tab-pane fade show active" id="v-pills-121">
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                           <button class="nav-link bg-info active" data-bs-toggle="tab" data-bs-target="#nav-121_code">Code</button>
                           <button class="nav-link bg-success" data-bs-toggle="tab" data-bs-target="#nav-121_output">Output</button>
                        </div>

                        <div class="tab-content" id="nav-tabContent">                           
                           <div class="tab-pane fade show active resp-tab-content" id="nav-121_code" role="tabpanel" aria-labelledby="nav-121_code-tab">   
                              <div class="row">
                                 <div class="col">
                                    <div class="card">
                                       <div class="card-header info">One To one [User -> Address, Phone]</div>
                                          <div class="card-body">                       
                                             <table class="table table-bordered">
                                                <thead class="text-center">
                                                   <tr>
                                                      <th>id</th>
                                                      <th>Step</th>
                                                      <th>Code</th>
                                                   </tr>
                                                </thead>
                                                <tbody>
                                                   @php
                                                      $all_data = App\One_to_one::all();
                                                   @endphp
                                                   @foreach($all_data as $data)
                                                      <tr>
                                                         <td>{{ $data->id}}</td>
                                                         <td>{{ $data->Step}}</td>
                                                         <td> <pre>{{ $data->Code}}</pre></td>
                                                      </tr>
                                                    @endforeach                                               
                                                </tbody>
                                             </table>
                                          </div>
                                    </div>
                                 </div>
                                 </div>
                           </div>

                           <div class="tab-pane fade" id="nav-121_output" role="tabpanel" aria-labelledby="nav-121_output-tab">
                              <div class="row">
                                 <div class="col">
                                    <div class="card">
                                       <div class="card-header success">One To one [User -> address/Phone]</div>
                                          <div class="card-body">                       
                                             <table class="table table-bordered">
                                                <thead>
                                                   <tr class="text-center">
                                                      <th>id</th>
                                                      <th>Name</th>
                                                      <th>Email</th>
                                                      <th class="bg-warning">Address</th>
                                                      <th class="bg-warning">Phone</th>
                                                   </tr>
                                                </thead>
                                                <tbody>
                                                   @php
                                                      $Users = App\User::all();
                                                   @endphp
                                                   @foreach($Users as $User)
                                                      <tr class="text-center">
                                                         <td>{{ $User->id}}</td>
                                                         <td>{{ $User->name}}</td>
                                                         <td>{{ $User->email}}</td>
                                                         <td>{{ $User->getAddress->address}}</td>
                                                         <td>{{ $User->getPhone->phone}}</td>
                                                      </tr>
                                                    @endforeach                                               
                                                </tbody>
                                             </table>
                                          </div>
                                    </div>
                                 </div>
                              </div>
                           </div>                   
                        </div>
                     </div>

                  {{-- One to One [Inverse] --}}
                     <div class="tab-pane fade show " id="v-pills-121i">
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                           <button class="nav-link bg-info active" data-bs-toggle="tab" data-bs-target="#nav-121i_code">Code</button>
                           <button class="nav-link bg-success" data-bs-toggle="tab" data-bs-target="#nav-121i_output">Output</button>
                        </div>

                        <div class="tab-content" id="nav-tabContent">
                           <div class="tab-pane fade show active resp-tab-content" id="nav-121i_code" role="tabpanel" aria-labelledby="nav-121i_code-tab">   
                              <div class="row">
                                 <div class="col">
                                    <div class="card">
                                       <div class="card-header info">One To one [Inverse] [Phone -> User]</div>
                                          <div class="card-body">                       
                                             <table class="table table-bordered">
                                                <thead class="text-center">
                                                   <tr>
                                                      <th>id</th>
                                                      <th>Step</th>
                                                      <th>Code</th>
                                                   </tr>
                                                </thead>
                                                <tbody>
                                                   @php
                                                      $all_data = App\One_to_one_inverse::all();
                                                   @endphp
                                                   @foreach($all_data as $data)
                                                      <tr>
                                                         <td>{{ $data->id}}</td>
                                                         <td>{{ $data->Step}}</td>
                                                         <td> <pre>{{ $data->Code}}</pre></td>
                                                      </tr>
                                                    @endforeach                                               
                                                </tbody>
                                             </table>
                                          </div>
                                    </div>
                                 </div>
                              </div>
                           </div>

                           <div class="tab-pane fade" id="nav-121i_output" role="tabpanel" aria-labelledby="nav-121i_output-tab">
                              <div class="row">
                                 <div class="col">
                                    <div class="card">
                                       <div class="card-header success">One To one [Inverse] [Phone -> User]</div>
                                          <div class="card-body">                       
                                             <table class="table table-bordered">
                                                <thead>
                                                   <tr class="text-center">
                                                      <th>id</th>
                                                      <th>Phone</th>
                                                      <th class="bg-warning">Name</th>
                                                      <th class="bg-warning">Email</th>
                                                   </tr>
                                                </thead>
                                                <tbody>
                                                   @php
                                                      $phones = App\Phone::with('user')->get();

                                                   @endphp
                                                   @foreach($phones as $phone)
                                                      <tr class="text-center">
                                                         <td>{{ $phone->id}}</td>
                                                         <td>{{ $phone->phone}}</td>
                                                         <td>{{ $phone->user->name}}</td>
                                                         <td>{{ $phone->user->email}}</td>
                                                      </tr>
                                                    @endforeach                                               
                                                </tbody>
                                             </table>
                                          </div>
                                    </div>
                                 </div>
                              </div>
                           </div>                   
                        </div>
                     </div>

                  {{-- One To Many --}}
                     <div class="tab-pane fade show " id="v-pills-12m">
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                           <button class="nav-link bg-info active" data-bs-toggle="tab" data-bs-target="#nav-12m_code">Code</button>
                           <button class="nav-link bg-success" data-bs-toggle="tab" data-bs-target="#nav-12m_output">Output</button>
                        </div>

                        <div class="tab-content" id="nav-tabContent">
                           <div class="tab-pane fade show active resp-tab-content" id="nav-12m_code" role="tabpanel" aria-labelledby="nav-12m_code-tab">   
                              <div class="row">
                                 <div class="col">
                                    <div class="card">
                                       <div class="card-header info">One To Many [Post ->Comments]</div>
                                          <div class="card-body">                       
                                             <table class="table table-bordered">
                                                <thead class="text-center">
                                                   <tr>
                                                      <th>id</th>
                                                      <th>Step</th>
                                                      <th>Code</th>
                                                   </tr>
                                                </thead>
                                                <tbody>
                                                   @php
                                                      $all_data = App\One_to_many::all();
                                                   @endphp
                                                   @foreach($all_data as $data)
                                                      <tr>
                                                         <td>{{ $data->id}}</td>
                                                         <td>{{ $data->Step}}</td>
                                                         <td><pre>{{ $data->Code}}</pre></td>
                                                      </tr>
                                                    @endforeach                                               
                                                </tbody>
                                             </table>
                                          </div>
                                    </div>
                                 </div>
                              </div>
                           </div>

                           <div class="tab-pane fade" id="nav-12m_output" role="tabpanel" aria-labelledby="nav-12m_output-tab">
                              <div class="row">
                                 <div class="col">
                                    <div class="card">
                                       <div class="card-header success">One To Many [Post ->Comments]</div>
                                          <div class="card-body">                       
                                             <table class="table table-bordered">
                                                <thead>
                                                   <tr class="text-center">
                                                      <th>id</th>
                                                      <th>Post Title</th>
                                                      <th class="bg-warning">Comments</th>
                                                   </tr>
                                                </thead>
                                                <tbody>
                                                   @php
                                                      $posts = App\Post::all();
                                                   @endphp
                                                   @foreach($posts as $post)
                                                      <tr class="text-center">
                                                         @php
                                                            $rowspan =$post->comments->count();
                                                            $totalRow = $rowspan+1;
                                                         @endphp

                                                         <td rowspan="{{$totalRow}}">{{ $post->id}}</td>
                                                         <td rowspan="{{$totalRow}}">{{ $post->post}}</td>
                                                         @foreach($post->comments as $comment)
                                                            <tr>
                                                               <td>{{ $comment->comment}}</td>                                       
                                                            </tr>
                                                         @endforeach
                                                      </tr>
                                                    @endforeach                                               
                                                </tbody>
                                             </table>
                                          </div>
                                    </div>

                                    <div class="card mt-3">
                                       <div class="card-header success">
                                          <h6>Different Design</h6> One To Many [Post ->Comments]
                                       </div>
                                          <div class="card-body">
                                             <table class="table table-bordered">
                                                <thead>
                                                   <tr class="text-center">
                                                      <th>id</th>
                                                      <th>Post Title</th>
                                                      <th class="bg-warning">Comments</th>
                                                   </tr>
                                                </thead>
                                                <tbody>
                                                   @php
                                                      $posts = App\Post::all();
                                                   @endphp
                                                   @foreach($posts as $post)
                                                      <tr class="text-center">
                                                         <td>{{ $post->id}}</td>
                                                         <td>{{ $post->post}}</td>
                                                         <td>
                                                            @foreach($post->comments as $comment)
                                                               {{$loop->index+1}}) {{ $comment->comment}}</br>                                   
                                                            @endforeach
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
                        </div>
                     </div>

                  {{-- One To Many [Inverse] --}}
                     <div class="tab-pane fade show " id="v-pills-12mi">
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                           <button class="nav-link bg-info active" data-bs-toggle="tab" data-bs-target="#nav-12mi_code">Code</button>
                           <button class="nav-link bg-success" data-bs-toggle="tab" data-bs-target="#nav-12mi_output">Output</button>
                        </div>

                        <div class="tab-content" id="nav-tabContent">
                           <div class="tab-pane fade show active resp-tab-content" id="nav-12mi_code" role="tabpanel" aria-labelledby="nav-12mi_code-tab">   
                              <div class="row">
                                 <div class="col">
                                    <div class="card">
                                       <div class="card-header info">One To Many [Inverse] [Post ->User, Category]</div>
                                          <div class="card-body">
                                             <table class="table table-bordered">
                                                <thead class="text-center">
                                                   <tr>
                                                      <th>id</th>
                                                      <th>Step</th>
                                                      <th>Code</th>
                                                   </tr>
                                                </thead>
                                                <tbody>
                                                   @php
                                                      $all_data = App\One_to_many_inverse::all();
                                                   @endphp
                                                   @foreach($all_data as $data)
                                                      <tr>
                                                         <td>{{ $data->id}}</td>
                                                         <td>{{ $data->Step}}</td>
                                                         <td> <pre>{{ $data->Code}}</pre>
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

                           <div class="tab-pane fade" id="nav-12mi_output" role="tabpanel" aria-labelledby="nav-12mi_output-tab">
                              <div class="row">
                                 <div class="col">
                                    <div class="card">
                                       <div class="card-header success">One To Many [Inverse] [Post ->User, Category]</div>
                                          <div class="card-body">                       
                                             <table class="table table-bordered">
                                                <thead>
                                                   <tr class="text-center">
                                                      <th>id</th>
                                                      <th class="bg-warning">User Name</th>
                                                      <th class="bg-warning">Category Name</th>
                                                      <th>Post Title</th>
                                                      <th>Description</th>
                                                   </tr>
                                                </thead>
                                                <tbody>
                                                   @php
                                                      $posts = App\Post::all();
                                                   @endphp
                                                   @foreach($posts as $post)
                                                      <tr class="text-center">
                                                         <td>{{ $post->id}}</td>
                                                         <td>{{ $post->user->name}}</td>
                                                         <td>{{ $post->category->categoryName}}</td>
                                                         <td>{{ $post->post}}</td>
                                                         <td>{{ $post->description}}</td>
                                                      </tr>
                                                    @endforeach                                               
                                                </tbody>
                                             </table>
                                          </div>
                                    </div>
                                 </div>
                              </div>
                           </div>                   
                        </div>
                     </div>

                  {{-- Many To Many --}}
                     <div class="tab-pane fade show " id="v-pills-m2m">
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                           <button class="nav-link bg-info active" data-bs-toggle="tab" data-bs-target="#nav-m2m_code">Code</button>
                           <button class="nav-link bg-success" data-bs-toggle="tab" data-bs-target="#nav-m2m_output">Output</button>
                        </div>

                        <div class="tab-content" id="nav-tabContent">
                           <div class="tab-pane fade show active resp-tab-content" id="nav-m2m_code" role="tabpanel" aria-labelledby="nav-m2m_code-tab">
                              <div class="row">
                                 <div class="col">
                                    <div class="card">
                                       <div class="card-header info">Many To Many [User ->Category [Via Post]]</div>
                                          <div class="card-body">                       
                                             <table class="table table-bordered">
                                                <thead class="text-center">
                                                   <tr>
                                                      <th>id</th>
                                                      <th>Step</th>
                                                      <th>Code</th>
                                                   </tr>
                                                </thead>
                                                <tbody>
                                                   @php
                                                      $all_data = App\Many_to_many::all();
                                                   @endphp
                                                   @foreach($all_data as $data)
                                                      <tr>
                                                         <td>{{ $data->id}}</td>
                                                         <td>{{ $data->Step}}</td>
                                                         <td> <pre>{{ $data->Code}}</pre>
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
                           
                           <div class="tab-pane fade" id="nav-m2m_output" role="tabpanel" aria-labelledby="nav-m2m_output-tab">
                              <div class="row">
                                 <div class="col">
                                    <div class="card">
                                       <div class="card-header success">Many To Many [User ->Category [Via Post]]</div>
                                          <div class="card-body">                       
                                             <table class="table table-bordered">
                                                <thead>
                                                   <tr class="text-center">
                                                      <th>User Id</th>
                                                      <th>User Name</th>
                                                      <th class="bg-warning">Category Name[Job]</th>
                                                   </tr>
                                                </thead>
                                                <tbody>
                                                   @php
                                                      $users = App\User::all();
                                                   @endphp
                                                   @foreach($users as $user)
                                                      <tr class="text-center">
                                                         @php
                                                            $rowspan =$user->category->count();
                                                            $totalRow = $rowspan+1;
                                                         @endphp

                                                         <td rowspan="{{$totalRow}}">{{ $user->id}}</td>
                                                         <td rowspan="{{$totalRow}}">{{ $user->name}}</td>
                                                         @foreach($user->category as $categoryName)
                                                            <tr  class="text-center">
                                                               <td>{{ $categoryName->categoryName }}</td>
                                                            </tr>      
                                                         @endforeach     
                                                      </tr>
                                                   @endforeach     
                                                </tbody>
                                             </table>
                                          </div>
                                    </div>
                                 </div>
                              </div>
                           </div>                   
                        </div>
                     </div>
               </div>
            </div>
      </fieldset>
   </div>
@endsection