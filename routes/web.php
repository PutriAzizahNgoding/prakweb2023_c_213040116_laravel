<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

//Route::get('/', function () {
    // TAMPILKAN SEBUAH VIEW WELCOME
//    return view('welcome');
//});

// Route::get('/', function () {
//    return 'Halaman Home';
// });

// Route::get('/about', function () {
//     return 'Halaman About';
//  });

//  Route::get('/blog', function () {
//     return 'Halaman Blog';
//  });
 
Route::get('/', function () {
    return view ('home');
 });

 Route::get('/about', function () {
    return view ('about',[
        "name" => "Putri Azizah",
        "email" => "putriazizahqudsiyah@gmail.com",
        "image" => "profil.png"
    ]);
 });

 Route::get('/blog', function () {
    return view ('posts');
 });


