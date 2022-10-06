<h1>Reservation List</h1>


<table border="1">
    <tr>
        <td>ReservationId</td>
        <td>Treatment Name</td>
        <td>Treatment Fee</td>
        <td>Doctor Id</td>
        <td>Doctor Name</td>
    </tr>
    @foreach($reservation as $reservation)
    <tr>
        <td>{{$reservation["reservationID"]}}</td>
        <td>{{$reservation["treatmentName"]}}</td>
        <td>{{$reservation["treatmentFee"]}}</td>
        <td>{{$reservation["dID"]}}</td>
        <td>{{$reservation["doctorName"]}}</td>
    </tr>
    @endforeach
</table>