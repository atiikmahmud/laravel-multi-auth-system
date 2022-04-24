<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Admin | Add User </title>
</head>

<body>
    <x-app-layout>

    </x-app-layout>

    <section class="pt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <div class="card">
                        <div class="card-header">
                            Update User Profile
                        </div>
                        <div class="card-body">

                            @error('name')
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                {{$message}}
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                            @enderror

                            @error('role')
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                {{$message}}
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                            @enderror

                            @error('email')
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                {{$message}}
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                            @enderror

                            @error('password')
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                {{$message}}
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                            @enderror

                            @if(Session::has('userUpdate'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                {{Session::get('userUpdate')}}
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                            @endif
                            
                            <form action="{{ route('updateAdmin') }}" method="POST">
                                @csrf
                                <div class="row pb-3">
                                    <div class="col">

                                        <input type="hidden" name="id" value="{{$user->id}}">

                                        <label for="inputEmail4" class="form-label">Name</label>
                                        <input type="text" class="form-control" name="name" value="{{$user->name}}" aria-label="name" required>
                                    </div>
                                    <div class="col">
                                        <label for="inputState" class="form-label">User Type</label>
                                        <select id="inputState" class="form-select" name="role" value="{{ $user->role }}" required>
                                            
                                            {{-- @php
                                                $userRole = $user->role;
                                            @endphp

                                            @if($userRole == 1)
                                            <option value="1" selected>Admin</option>
                                            <option value="2">Seller</option>
                                            <option value="0">User</option>
                                            @elseif($userRole == 2)
                                            <option value="1">Admin</option>
                                            <option value="2" selected>Seller</option>
                                            <option value="0">User</option>
                                            @elseif($userRole == 0)
                                            <option value="1">Admin</option>
                                            <option value="2">Seller</option>
                                            <option value="0" selected>User</option>
                                            @endif --}}
                                            
                                            @foreach($roles as $index =>$role)
                                            <option value="{{$index}}" @if($user->role == $index) selected @endif>{{$role}}</option>
                                            @endforeach

                                        </select>
                                    </div>
                                </div>

                                <div class="row pb-3">
                                    <div class="col">
                                        <label for="inputEmail4" class="form-label">Email Address</label>
                                        <input type="email" class="form-control" name="email" value="{{$user->email}}" aria-label="email" required>
                                    </div>
                                    <div class="col">
                                        <label for="inputEmail4" class="form-label">Password</label>
                                        <input type="password" class="form-control" name="password" value="password" aria-label="password" required>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Update</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>

</html>