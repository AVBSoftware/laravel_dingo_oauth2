<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/


$api = app('Dingo\Api\Routing\Router');

//$api->get('users', 'App\Http\Controllers\Api\V1\UserController@test');


$api->version('v1', function ($api) {
    //$api->get('reading',  'App\Http\Controllers\Api\V1\UserController@test');

    $api->post('oauth/access_token', function() {
        return Response::json(Authorizer::issueAccessToken());
    });

    $api->post('reading_data', 'App\Http\Controllers\Api\V1\UserController@test');

});


/*
Route::post('oauth/access_token_tanpa_api', function() {
    return Response::json(Authorizer::issueAccessToken());
});

Route::get('/', function () {
    return view('welcome');
});

*/