<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Page</title>
    </head>
    <body>
        <h1>Reservation List</h1>


        <table border="1">
            <tr>
                <td>ReservationId</td>
                <td>Treatment Name</td>
                <td>Treatment Fee</td>
                <td>Doctor Id</td>
            </tr>
            @foreach($reservation as $reservation)
            <tr>
                <td>{{$reservation["reservationID"]}}</td>
                <td>{{$reservation["treatmentName"]}}</td>
                <td>{{$reservation["treatmentFee"]}}</td>
                <td>{{$reservation["dID"]}}</td>
            </tr>
            @endforeach
        </table>
    </body>
</html>
