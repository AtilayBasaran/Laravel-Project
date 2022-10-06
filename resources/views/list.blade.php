<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Page</title>
    </head>
    <body>
        <h1>Doctor List</h1>


        <table border="1">
            <tr>
                <td>Id</td>
                <td>Doctor Name</td>
                <td>Doctor Branch</td>
                <td>Details</td>
            </tr>
            @foreach($doctors as $doctor)
            <tr>
                <td>{{$doctor["doctorID"]}}</td>
                <td>{{$doctor["doctorName"]}}</td>
                <td>{{$doctor["doctorBranch"]}}</td>
                <td><button><a href="/showReservation/{{$doctor['doctorID']}}" class="showReservation">Details</a></button></td>
                
            </tr>
            @endforeach
        </table>
    </body>
</html>
