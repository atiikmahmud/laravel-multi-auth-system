<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DataTables\employerDataTable;

class EmployerController extends Controller
{
    public function index(employerDataTable $dataTable)
    {
        return $dataTable->render('admin.employer');
    }
}
