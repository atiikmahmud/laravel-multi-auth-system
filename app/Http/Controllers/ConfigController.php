<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Config;

class ConfigController extends Controller
{
    public function index()
    {
        $config = config('settings');
        //dd($config);
        return view('admin.form.config-settings',compact('config'));
    }

    public function store(Request $request)
    {
        $config_value = $request->except('_token');
        if(!empty($config_value)){
            $data = [];
            $fileData = "<?php \n return [ \n";
            foreach($config_value as $key => $value)
            {
                $filterKey = trim($key);
                $filterValue = $value;//php chartacter remove 
                if(is_array($filterValue))
                {
                    $fileData = "$fileData \t'$filterKey' => [ \n";
                    foreach($filterValue as $value){
                        $fileData = "$fileData \t\t'$value',\n"; 
                    }
                    $fileData = "$fileData \t],\n";
                }
                else
                {
                    
                    $fileData = "$fileData \t'$filterKey' => '$filterValue', \n";
                }
                
            }
            $fileData = $fileData."];";

            file_put_contents('../config/settings.php',$fileData);
            Artisan::call('config:cache');
        }
        
        $config = config('settings');
        return view('admin.form.config-settings',compact('config'));
    }

    public function view()
    {
        return view('admin.form.config-view');
    }
}
