<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TestController extends Controller
{
    public function getFirstLastName()
    {
        //return splitName("Atik Mahmud");
        return mix('css/app.css');
    }

    public function addMath()
    {
        return addition(100,50);
    }
}
