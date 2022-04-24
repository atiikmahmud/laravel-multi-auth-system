<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Admin | Users </title>
</head>

<body>
    <x-app-layout>

    </x-app-layout>

    <section class="pt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            All User
                        </div>
                        <div class="card-body">

                            @if(Session::has('userDeleted'))
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                {{Session::get('userDeleted')}}
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                            @elseif(Session::has('statusUpdate'))
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                {{Session::get('statusUpdate')}}
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                            @endif

                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">No.</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Role</th>
                                        <th scope="col">Email Address</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if($users)
                                    @foreach($users as $user)
                                    <tr>
                                        <td>{{$user->id}}</td>
                                        <td>{{$user->name}}</td>

                                        @php
                                        $role = $user->role;
                                        @endphp

                                        @if($role == '1')
                                        <td><span class="badge bg-success">Admin</span></td>
                                        @elseif($role == '2')
                                        <td><span class="badge bg-warning text-dark">Seller</span></td>
                                        @else
                                        <td><span class="badge bg-primary">User</span></td>
                                        @endif


                                        <td>{{$user->email}}</td>
                                        <td><h5><a href="/update-user-status/{{ $user->id }}" type="button"  class="text-decoration-none badge rounded-pill @if($user->status == 1) bg-success @else bg-danger @endif" onclick="return confirm('Are you sure to change this user active status ?')">
                                        @if($user->status == 1)
                                        Active
                                        @else
                                        Disable
                                        @endif
                                        
                                        </a></h5></td>
                                        <td style="width: 150px;">
                                            <a href="/edit-admin-user/{{ $user->id }}" type="button" class="btn btn-primary ml-1" onclick="return confirm('Are you edit this user profile ?')">Edit</a>
                                            <a href="/delete-admin-user/{{ $user->id }}" type="button" class="btn btn-danger" onclick="return confirm('Are you sure delete this user ?')">Delete</a>
                                        </td>
                                    </tr>
                                    @endforeach
                                    @endif
                                </tbody>
                            </table>
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