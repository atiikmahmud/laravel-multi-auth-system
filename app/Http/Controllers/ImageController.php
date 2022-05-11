<?php

namespace App\Http\Controllers;

use Image;

use Illuminate\Http\Request;

class ImageController extends Controller
{
    public function resizeImage()
    {
        return view('admin.resize-image');
    }

    // public function resizeImageSubmit(Request $request)
    // {      
    //     $fileName = $request->file;
    //     $imageExt = $fileName->getClientOriginalExtension();
    //     $image = Image::make($fileName->getRealPath());
    //     $imageName = time().'_v1.'.$imageExt;
    //     $image->save(public_path('images/'.$imageName));

    //     $imageName2 = time().'_v2.'.$imageExt;
    //     $image->resize(150,150);
    //     $image->save(public_path('images/'.$imageName2));
        
    //     return back()->with('uploaded', 'Images successfully uploaded !');
    // }

    public function resizeImageSubmit(Request $request)
    {      
        if ($request->hasFile('files')) {
  
            foreach($request->file('files') as $file){
                $fileName = $file;
                $imageExt = $fileName->getClientOriginalExtension();
                $image = Image::make($fileName->getRealPath());
                $imageName = uniqid() . '_v1.' . $imageExt;
                $image->save(public_path('images/' . $imageName));

                $imageName2 = uniqid() . '_v2.' . $imageExt;
                $image->resize(150, 150);
                $image->save(public_path('images/' . $imageName2));
            }
      
            return back()->with('uploaded', 'Images successfully uploaded !');
        }
    }
}

  