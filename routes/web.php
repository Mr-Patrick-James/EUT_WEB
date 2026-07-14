<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('restaurant');
});

Route::get('/welcome', function () {
    return view('welcome');
});

Route::get('/example', function () {
    return view('example');
});
