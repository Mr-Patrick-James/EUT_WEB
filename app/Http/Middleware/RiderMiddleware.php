<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class RiderMiddleware
{
    public function handle(Request $request, Closure $next): Response
    {
        if (!auth()->check()) {
            return redirect()->route('home')->with('error', 'Please log in.');
        }

        if (!in_array(auth()->user()->role, ['rider', 'admin'])) {
            abort(403, 'Rider access only.');
        }

        return $next($request);
    }
}
