<?php
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;




Route::get('admin/login', function () {
    return view('admin/login');
});

Route::get('admin/register', function () {
    return view('admin/register');
});

Route::get('forgot_password', function () {
    return view('admin/forgot_password');
});
Route::post('logout', '\App\Http\Controllers\Auth\LoginController@logout');
Route::post('front_end_logout', 'Auth\LoginController@front_end_logout')->name("front_end_logout");



Route::middleware('auth')->group(function () {

    Route::group(['prefix'=>'admin'], function(){
             Route::get('homepage', function () {
                 return view('admin/homepage');
             });
        Route::resource('/homepage', 'Dashboard_controller');

        Route::get('add_slider', function () {
            return view('admin/add_slider');
        });
        Route::get('corona_update', 'corona_update_controller@create');
        Route::post('/add_corona_update', 'corona_update_controller@store')->name("add_corona_update");
        Route::resource('/services', 'Service_controller');
        Route::resource('/videos', 'Video_controller');
        Route::resource('/ambulance', 'AmbulanceServiceController');
        Route::get('/ambulance-rent', 'AmbulanceServiceController@ambulanceRentList');
        Route::get('news', 'NewsController@index')->name('news.index');
        Route::get('news/create', 'NewsController@create');
        Route::post('news/store', 'NewsController@store')->name('news.store');
        Route::patch('news/{id}/update', 'NewsController@update')->name('news.update');
        Route::delete('news/{id}/delete', 'NewsController@destroy')->name('news.destroy');

        Route::get('info', 'Info_services_controller@index')->name('info.index');
        Route::get('info/create', 'Info_services_controller@create');
        Route::post('info/store', 'Info_services_controller@store')->name('info.store');
        Route::patch('info/{id}/update', 'Info_services_controller@update')->name('info.update');
        Route::delete('info/{id}/delete', 'Info_services_controller@destroy')->name('info.destroy');

        Route::get('add_service', function () {
            return view('admin/add_service');
        });

    });

    Route::get('/user/profile', 'UserController@userProfile');
    Route::get('/user/profile/order', 'UserController@orderList')->name('user-order');
    Route::post('/user/profile/update', 'UserController@updateUser')->name('user-update');
    Route::post('/user/change-password', 'UserController@setUserPassword')->name('user-password-update');
    Route::get('/ambulance', 'AmbulanceServiceController@frontendAmbulanceList');
    Route::get('/ambulance/{district}', 'AmbulanceServiceController@frontendGetAmbulance');

    Route::resource('/ambulance-rent', 'AmbulanceRentController');
});


Auth::routes();


Route::get('/', 'HomeController@index')->name("user_homepage");
Route::get('/info_corona_update_history/{id}', 'HomeController@info_corona_update_history');
Route::get('/news', 'NewsController@frontendNews');
Route::get('/news/{slug}', 'NewsController@frontendSingleNews');

Route::get('/about', function () {
    return view('frontend/home/about');
});

Route::get('/services', 'Service_controller@frontEndService');
Route::get('/service/{slug}', 'Service_controller@frontEndSingleService');
Route::get('/info-service/{slug}', 'Info_services_controller@frontEndSingleInfoService');


Route::get('/contact', 'contact_controller@create');
Route::post('/contact', 'contact_controller@store')->name('contact.store');
Route::get('/important_video', function () {
    return view('users/important_video');
});

Route::get('/user_register', function () {
    return view('frontend/home/user_register');
});
Route::get('/user_login', function () {
    return view('frontend/home/user_login');
});

Route::get('successful-page', function () {
    return view('frontend.ambulance.successful-order');
});
