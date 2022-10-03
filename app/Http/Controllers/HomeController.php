<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Http;
use App\corona_update_ban;
use App\important_video;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\services;
use App\info_services;
use Illuminate\Support\Arr;

use App\News;

class HomeController extends Controller
{


    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
       $video_Data=important_video::orderBy('id', 'desc')->take(6)->get();

        $services = services::orderBy('id', 'desc')->take(6)->get();
        $info_services = info_services::orderBy('id', 'desc')->take(6)->get();

        $latestNews = News::orderBy('id', 'desc')->take(5)->get();

        $response = Http::get('https://api.covid19api.com/summary');

        $data=$response->json();
        $filtered = Arr::first($data['Countries'], function ($value, $key) {
            if($value['Country'] == "Bangladesh"){
                return $key;
                }
        });


        $global = $data['Global'];
        $corona_update_ban = corona_update_ban::whereDate('created_at', date('Y-m-d'))->first();
        if(!$corona_update_ban) {
            $coronaUpdate = new corona_update_ban;
            $coronaUpdate->type = "BD";
            $coronaUpdate->NewConfirmed = $filtered['NewConfirmed'];
            $coronaUpdate->TotalConfirmed = $filtered['TotalConfirmed'];
            $coronaUpdate->NewDeaths = $filtered['NewDeaths'];
            $coronaUpdate->TotalDeaths = $filtered['TotalDeaths'];
            $coronaUpdate->NewRecovered = $filtered['NewRecovered'];
            $coronaUpdate->TotalRecovered = $filtered['TotalRecovered'];
            $coronaUpdate->save();


            $coronaUpdate = new corona_update_ban;
            $coronaUpdate->type = "Global";
            $coronaUpdate->NewConfirmed = $global['NewConfirmed'];
            $coronaUpdate->TotalConfirmed = $global['TotalConfirmed'];
            $coronaUpdate->NewDeaths = $global['NewDeaths'];
            $coronaUpdate->TotalDeaths = $global['TotalDeaths'];
            $coronaUpdate->NewRecovered = $global['NewRecovered'];
            $coronaUpdate->TotalRecovered = $global['TotalRecovered'];
            $coronaUpdate->save();
        }

        return view('frontend.home.index', compact('video_Data', 'services', 'latestNews','info_services','filtered','global'));
    }

    public function info_corona_update_history($type){

        if($type == "bangladesh"){
            $type= "Bangladesh";
            $data = corona_update_ban::where('type',"BD")->orderBy('created_at','desc')->get();
        } else{
            $type= "Worldwide";
            $data = corona_update_ban::where('type',"Global")->orderBy('created_at','desc')->get();
        }
        return view('frontend.home.corona-history', compact('data','type'));
    }
}
