<?php

use App\Models\Post;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;

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
        "title" => "Home"
    ]);
 });

 Route::get('/about', function () {
    return view ('about',[
        "title" => "About",
        "name" => "Putri Azizah",
        "email" => "putriazizahqudsiyah@gmail.com",
        "image" => "profil.png"
    ]);
 });


 Route::get('/blog', function () {
    $blog_posts = [
        [
           "title" => "Judul Post Pertama",
           "slug" => "judul-post-pertama",
           "author" => "Putri Azizah",
           "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia cum, amet, eum sunt animi
            quos quae nisi maiores optio eius ipsa pariatur. Veniam quae sapiente assumenda praesentium a dolorum. 
            Et est animi eveniet expedita fuga ratione repellat quidem sequi! Quia omnis voluptatum 
           aperiam a nesciunt cumque fuga maxime repudiandae similique numquam, quam dolorum officiis blanditiis sit facere expedita ipsum veniam pariatur fugit natus quibusdam ad? Dolor corrupti hic odio, laboriosam eveniet labore dignissimos voluptate incidunt
           consequatur fugit aut optio obcaecati." 
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Mput",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus, velit provident, ex 
            et a nobis qui maiores, optio ducimus enim id iure non! Itaque iste, quam officiis recusandae quisquam 
            ea saepe deleniti placeat magnam non, et enim eligendi? A saepe laudantium officiis omnis alias eveniet 
            blanditiis error necessitatibus sed eum quasi, fugiat excepturi porro minus harum iusto voluptas animi 
            quam commodi. Quas saepe maiores molestias minus et recusandae doloremque tempore, deleniti nihil quibusdam
            officia nostrum inventore nesciunt, laborum ipsa, itaque quisquam ex? Sint quidem, esse soluta excepturi
            inventore eum maxime natus culpa labore. Molestias corrupti dolores tempore, ipsum voluptatum quidem?" 
         ],
    
        ];

        return view('posts',[
            "title" => "Posts",
            "posts" => $blog_posts
        ]);
     });

Route::get('/posts', [PostController::class,'index']);

Route::get('posts/{slug}',[PostController::class, 'show']);
   



