<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DoctorList;
use App\Http\Controllers\ReservationList;

Route::get("/",function(){
    return view("welcome");
});

Route::get("/listDoctor",[DoctorList::class,"listDoctor"]);

Route::get("/listReservation",[ReservationList::class,"listReservation"]);

Route::get("/showReservation/{doctorName}",[ReservationList::class,"showReservation"]);



