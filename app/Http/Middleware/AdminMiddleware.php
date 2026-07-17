<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     * Allows access only to authenticated users whose role is 'admin'.
     */
    public function handle(Request $request, Closure $next): Response
    {
        if (! auth()->check()) {
            return redirect()->route('home')->with('error', 'Please log in to access the admin panel.');
        }

        if (! auth()->user()->isAdmin()) {
            abort(403, 'Access denied. Admins only.');
        }

        return $next($request);
    }
}
