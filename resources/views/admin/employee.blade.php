<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Employee List</title>

    <style>
        @page {
            size: 7in 9.25in;
            margin: 16mm 16mm 16mm 16mm;
        }

        #header {
            text-align: center;
            padding-top: 10px;
            padding-bottom: 10px;
            color: black;
            font-size: 20px;
        }

        #emp {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
            font: 10px;
        }

        #emp td,
        #emp th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #emp tr:nth-child(even) {
            background-color: #E7E9EB;
        }

        #emp th {
            padding-top: 12px;
            padding-bottom: 12px;
            background-color: #82e0aa;
        }
    </style>

</head>

<body>

    <div id="header">Employee List</div>
    <h3 style="text-align: center; "><a href="{{ Route('excel') }}" style="margin-right: 5px;">Export Excel</a><a href="{{ Route('csv') }}" style="margin-right: 5px;">Export CSV</a><a href="{{ Route('pdf') }}" style="margin-right: 5px;">Export PDF</a></h3>

    <table id="emp">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Salary</th>
                <th>Department</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($employee as $emp)
            <tr>
                <td>{{$emp->id}}</td>
                <td>{{$emp->name}}</td>
                <td>{{$emp->email}}</td>
                <td>{{$emp->phone}}</td>
                <td>{{$emp->salary}}</td>
                <td>{{$emp->department}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>

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