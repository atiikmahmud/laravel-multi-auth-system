<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;
use App\Exports\EmployeeExport;
use Excel;
use App\Imports\EmployeeImport;

class EmployeeController extends Controller
{
    public function addEmployee()
    {
        $employees = [
            ["name" => "Atik",  "email" => "atik@shajgoj.com",  "phone" => "01749941982", "salary" => "10000", "department" => "Engineering"],
            ["name" => "Adib",  "email" => "adib@shajgoj.com",  "phone" => "01712345666", "salary" => "20000", "department" => "Engineering"],
            ["name" => "Akib",  "email" => "akib@shajgoj.com",  "phone" => "01756789977", "salary" => "30000", "department" => "Accounting"],
            ["name" => "Sakib", "email" => "sakib@shajgoj.com", "phone" => "01734567889", "salary" => "40000", "department" => "HR"],
            ["name" => "Jems",  "email" => "jems@shajgoj.com",  "phone" => "01798765433", "salary" => "50000", "department" => "Admin"]
        ];
        Employee::insert($employees);
        return "Records are inserted!";
    }

    public function exportIntoExcel()
    {
        return Excel::download(new EmployeeExport, 'employeelist.xls');
    }

    public function exportIntoCSV()
    {
        return Excel::download(new EmployeeExport, 'employeelist.csv');
    }

    public function importForm()
    {
        return view('admin.import-form');
    }

    public function import(Request $request)
    {
        Excel::import(new EmployeeImport, $request->file);
        return "Record are imported successfully!";
    }
}
