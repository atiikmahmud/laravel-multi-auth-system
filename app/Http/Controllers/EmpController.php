<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employee;
use PDF;

class EmpController extends Controller
{
    public function getAllEmployees()
    {
        $employee = Employee::all();
        return view('admin.employee', compact('employee'));
    }

    public function downloadPDF()
    {
        $employee = Employee::all();
        $pdf = PDF::loadView('admin.employee', compact('employee'));
        return $pdf->download('employee.pdf');
    }
}
