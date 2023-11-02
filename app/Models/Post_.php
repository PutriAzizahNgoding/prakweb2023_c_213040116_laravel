<?php

namespace App\Models;


class Post 
{
   private static $blog_posts= [
    [
       "title" => "Judul Tulisan Pertama",
       "slug" => "judul-tulisan-pertama",
       "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia cum, amet, eum sunt animi
        quos quae nisi maiores optio eius ipsa pariatur. Veniam quae sapiente assumenda praesentium a dolorum. 
        Et est animi eveniet expedita fuga ratione repellat quidem sequi! Quia omnis voluptatum 
       aperiam a nesciunt cumque fuga maxime repudiandae similique numquam, quam dolorum officiis blanditiis sit facere expedita ipsum veniam pariatur fugit natus quibusdam ad? Dolor corrupti hic odio, laboriosam eveniet labore dignissimos voluptate incidunt
       consequatur fugit aut optio obcaecati." 
    ],
    [
        "title" => "Judul Tulisan Kedua",
        "slug" => "judul-tulisan-kedua",
        "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus, velit provident, ex 
        et a nobis qui maiores, optio ducimus enim id iure non! Itaque iste, quam officiis recusandae quisquam 
        ea saepe deleniti placeat magnam non, et enim eligendi? A saepe laudantium officiis omnis alias eveniet 
        blanditiis error necessitatibus sed eum quasi, fugiat excepturi porro minus harum iusto voluptas animi 
        quam commodi. Quas saepe maiores molestias minus et recusandae doloremque tempore, deleniti nihil quibusdam
        officia nostrum inventore nesciunt, laborum ipsa, itaque quisquam ex? Sint quidem, esse soluta excepturi
        inventore eum maxime natus culpa labore. Molestias corrupti dolores tempore, ipsum voluptatum quidem?" 
     ],

    ];


    public static function all() {
        return collect (self::$blog_posts);
    }


    public static function find($slug) {
         $posts = static::all();

        //   $post = [];
        // foreach ($posts as $p) {
        //     if($p["slug"] === $slug) {
        //         $post = $p;
        //     }
        // }
        
        return $posts->firstWhere('slug',$slug);

    }
}
