<?php

namespace App\Http\Controllers\Api\V1;

use Dingo\Api\Routing\Helpers;
use Illuminate\Routing\Controller;

class UserController extends Controller
{
    use Helpers;

    public function __construct()
    {
        $this->middleware('oauth-client');
    }

    public function test()
    {
        
        return "Selamat Anda Telah Berhasil login / Mengakses halaman ini";
        //return $user;

    }
}