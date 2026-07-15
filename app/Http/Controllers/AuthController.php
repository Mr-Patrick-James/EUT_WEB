<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Socialite\Facades\Socialite;

class AuthController extends Controller
{
    // -------------------------------------------------------
    // EMAIL LOGIN
    // -------------------------------------------------------
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email'    => 'required|email',
            'password' => 'required|string|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'errors'  => $validator->errors(),
            ], 422);
        }

        $credentials = $request->only('email', 'password');
        $remember    = $request->boolean('remember');

        if (Auth::attempt($credentials, $remember)) {
            $request->session()->regenerate();

            return response()->json([
                'success'  => true,
                'message'  => 'Login successful.',
                'redirect' => route('home'),
                'user'     => [
                    'name'   => Auth::user()->name,
                    'email'  => Auth::user()->email,
                    'avatar' => Auth::user()->avatar,
                ],
            ]);
        }

        return response()->json([
            'success' => false,
            'message' => 'Invalid email or password.',
        ], 401);
    }

    // -------------------------------------------------------
    // EMAIL SIGN UP
    // -------------------------------------------------------
    public function signup(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'first_name'            => 'required|string|max:100',
            'last_name'             => 'required|string|max:100',
            'email'                 => 'required|email|unique:users,email',
            'password'              => 'required|string|min:6|confirmed',
            'password_confirmation' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'errors'  => $validator->errors(),
            ], 422);
        }

        $user = User::create([
            'name'     => trim($request->first_name . ' ' . $request->last_name),
            'email'    => $request->email,
            'password' => Hash::make($request->password),
            'provider' => 'email',
            'role'     => 'user',
        ]);

        Auth::login($user);
        $request->session()->regenerate();

        return response()->json([
            'success'  => true,
            'message'  => 'Account created successfully.',
            'redirect' => route('home'),
            'user'     => [
                'name'   => $user->name,
                'email'  => $user->email,
                'avatar' => $user->avatar,
            ],
        ]);
    }

    // -------------------------------------------------------
    // LOGOUT
    // -------------------------------------------------------
    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect()->route('home');
    }

    // -------------------------------------------------------
    // GOOGLE REDIRECT
    // -------------------------------------------------------
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    // -------------------------------------------------------
    // GOOGLE CALLBACK
    // -------------------------------------------------------
    public function handleGoogleCallback()
    {
        try {
            $googleUser = Socialite::driver('google')->user();
        } catch (\Exception $e) {
            return redirect()->route('home')->with('error', 'Google login failed. Please try again.');
        }

        // Find or create user
        $user = User::updateOrCreate(
            ['google_id' => $googleUser->getId()],
            [
                'name'              => $googleUser->getName(),
                'email'             => $googleUser->getEmail(),
                'avatar'            => $googleUser->getAvatar(),
                'provider'          => 'google',
                'role'              => 'user',
                'email_verified_at' => now(),
            ]
        );

        Auth::login($user, true);

        return redirect()->route('home')->with('success', 'Welcome, ' . $user->name . '!');
    }
}
