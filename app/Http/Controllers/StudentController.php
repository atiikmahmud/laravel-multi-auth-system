<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;

class StudentController extends Controller
{
    //Add Student Page View Funcion
    public function addStudent()
    {
        return view('student.add-student');
    }

    //Student information with image insert
    public function storeStudent(Request $request)
    {
        $name = $request->name;
        $image = $request->file('file');
        $imageName = time() . '.' . $image->extension();
        $image->move(public_path('images'), $imageName);
        
        $student = new Student();
        $student->name = $name;
        $student->profileimage = $imageName;
        $student->save();

        return back()->with('student_added', 'Student record has been inserted');
    }

    //All Student information show function
    public function students()
    {
        $students = Student::all();
        //return view('student.all-student', compact('students'));
        return Response::json($students);
    }

    //Student information edit
    public function editStudent($id)
    {
        $student = Student::find($id);
        return view('student.edit-student', compact('student'));
    }

    public function updateStudent(Request $request)
    {
        $name = $request->name;
        $image = $request->file('file');
        $student = Student::find($request->id);

        if ($image) {
            $imageName = time() . '.' . $image->extension();
            $image->move(public_path('images'), $imageName);
            $student->profileimage = $imageName;
        }
       
        $student->name = $name;        
        $student->save();

        return back()->with('student_updated', 'Student record has been updated');
    }

    public function deleteStudent($id)
    {
        $student = Student::find($id);
        unlink(public_path('images') . '/' . $student->profileimage);
        $student->delete();
        return back()->with('student_deleted', 'Student record has been deleted');
    }
}
