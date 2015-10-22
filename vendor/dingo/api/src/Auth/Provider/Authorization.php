<?php

namespace Dingo\Api\Auth\Provider;

use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Symfony\Component\HttpKernel\Exception\BadRequestHttpException;

abstract class Authorization implements \Dingo\Api\Contract\Auth\Provider
{
    /**
     * Array of provider specific options.
     *
     * @var array
     */
    protected $options = [];

    /**
     * Validate the requests authorization header for the provider.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @throws \Symfony\Component\HttpKernel\Exception\BadRequestHttpException
     *
     * @return bool
     */
    public function validateAuthorizationHeader(Request $request)
    {
        

        //$string_x1 = $request->headers->get('authorization');
        if (Str::startsWith(strtolower($request->headers->get('authorization')), $this->getAuthorizationMethod())) {

        //if (Str::startsWith(strtolower($string_x1), $this->getAuthorizationMethod())) {
            return true;
        }
        
        //echo "string_x1=$string_x1"; 

        //ddd;

        throw new BadRequestHttpException;
    }

    /**
     * Get the providers authorization method.
     *
     * @return string
     */
    abstract public function getAuthorizationMethod();
}
