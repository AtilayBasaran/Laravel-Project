<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\doctors;

class DoctorList extends Controller
{
    function listDoctor()
    {
        $data = doctors::all();
        return view("list", ["doctors"=>$data]);
    }
}
