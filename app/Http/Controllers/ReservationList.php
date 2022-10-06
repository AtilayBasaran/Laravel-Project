<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\reservation;

class ReservationList extends Controller
{
    function listReservation()
    {
        $data = reservation::all();
        return view("listReservation", ["reservation"=>$data]);
    }

    function showReservation($dID)
    {
        $data = reservation::find($dID);
        return view("showReservation", compact(['reservationID','treatmentName','treatmentFee','dID','doctorName']));
    }
}
