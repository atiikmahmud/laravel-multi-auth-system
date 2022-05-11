<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Config;

class ConfigController extends Controller
{
    public function index(Request $request)
    {
        $config_value = $request->all();
        if(!empty($config_value)){
            foreach($config_value as $key => $value){
                Config::set('settings.'.$key,$value);
            }
            Artisan::call('config:cache');
        }
        $config = config('settings');
        return view('admin.form.config-settings',compact('config'));
    }
}
