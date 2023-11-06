<?php

use App\Models\Post;
use App\Models\User;
use App\Models\Category;

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardController;

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
    return view ('home',[
        "title" => "Home",
        "active" => 'home'
    ]);
 });

 Route::get('/about', function () {
    return view ('about',[
        "title" => "About",
        "active" =>'about',
        "name" => "Putri Azizah",
        "email" => "putriazizahqudsiyah@gmail.com",
        "image" => "profil.png"
    ]);
 });

   

Route::get('/posts', [PostController::class,'index']);

Route::get('/posts/{post:slug}',[PostController::class, 'show']);


Route::get('/categories', function(){
    return view('categories',[
        'title' => 'Post Categories',
        'active' => 'categories',
        'categories' => Category::all()
    ]);
});

Route::get('/categories/{category:slug}', function(Category $category){
    return view('posts',[
        'title' => "Post By Category: $category->name",
        'active' => 'categories',
        'posts' => $category->posts->load('category','author'),
    ]);
});

Route::get('/authors/{author:username}', function(User $author) {
    return view('posts',[
        'title' =>"Post By Author : $author->name",
        'active'=>'posts',
        'posts' => $author->posts->load('category','author'),
    ]);
});

Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/register', [RegisterController::class, 'index'])->middleware('guest'); // yang bisa mengakses register adalah guest
Route::post('/register', [RegisterController::class, 'store']);
   
Route::get('/dashboard', [DashboardController::class, 'index'])->middleware('auth'); // yg bisa akses yang telah terautentikasi


