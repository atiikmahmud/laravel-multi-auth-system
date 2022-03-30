<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DropzoneController extends Controller
{
    public function dropzone()
    {
        return view('admin.dropzone');
    }

    public function dropZoneStore(Request $request)
    {
        $image = $request->file('file');
        $imageName = time(). '.' .$image->extension();
        $image->move(public_path('images'),$imageName);
        return response()->json(['success'=>$imageName]);
    } 
}
