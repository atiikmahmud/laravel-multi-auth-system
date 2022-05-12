<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Config;

class ConfigController extends Controller
{
    public function index(Request $request)
    {
        $config_value = $request->except('_token');
        if(!empty($config_value)){
            $data = [];
            $fileData = "<?php \n return [ \n";
            foreach($config_value as $key => $value)
            {
                $filterKey = trim($key);
                $filterValue = trim($value);
                $fileData = "$fileData '$filterKey' => '$filterValue', \n";
            }
            $fileData = $fileData."];";
            //echo $fileData;
            //dd(nl2br($fileData));
            file_put_contents('../config/settings.php',$fileData);
            Artisan::call('config:cache');
        }
        $config = config('settings');
        return view('admin.form.config-settings',compact('config'));
    }
}
