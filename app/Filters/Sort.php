<?php

namespace App\Filters;

use Closure;

class Sort
{
    public function handle($request, Closure $next)
    {
        if (!request()->has('sort')) {
            return $next($request);
        }

        return 'ok';
    }
}
