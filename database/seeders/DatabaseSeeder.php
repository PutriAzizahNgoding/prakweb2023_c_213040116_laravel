<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        
        User::create([
            'name' => 'Putri Azizah',
            'email' => 'putri@gmail.com',
            'password' => bcrypt('12345')
        ]);

        User::create([
            'name' => 'Yuni Cahya',
            'email' => 'yunicahya@gmail.com',
            'password' => bcrypt('123456')
        ]);

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::create([
            'title' => 'Judul Pertama',
            'slug' => 'judul-pertama',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia eligendi nisi architecto eum porro maxime voluptatum laudantium illo itaque beatae, assumenda minus exercitationem?',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia eligendi nisi architecto eum porro maxime voluptatum laudantium illo itaque beatae, assumenda sed incidunt cumque minus exercitationem? Maxime ut, eum beatae sit reiciendis quaerat voluptates cum necessitatibus accusamus repellat itaque, sequi omnis voluptate veritatis repellendus eaque totam? Aperiam excepturi repellendus ipsum, molestias tenetur provident minus temporibus corporis cupiditate reiciendis voluptatum numquam ab optio quod commodi fuga cum, perferendis facere. Temporibus aliquam, iste est eum, culpa sequi cum deleniti quo, alias quia ad assumenda quod deserunt quidem. Beatae similique dolor earum officiis velit necessitatibus officia rem repellendus tempora cumque. Quaerat, id praesentium.',
            'category_id'=>1,
            'user_id'=>1
        ]);

        Post::create([
            'title' => 'Judul Ke Dua',
            'slug' => 'judul-ke-dua',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia eligendi nisi architecto eum porro maxime voluptatum laudantium illo itaque beatae, assumenda minus exercitationem?',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia eligendi nisi architecto eum porro maxime voluptatum laudantium illo itaque beatae, assumenda sed incidunt cumque minus exercitationem? Maxime ut, eum beatae sit reiciendis quaerat voluptates cum necessitatibus accusamus repellat itaque, sequi omnis voluptate veritatis repellendus eaque totam? Aperiam excepturi repellendus ipsum, molestias tenetur provident minus temporibus corporis cupiditate reiciendis voluptatum numquam ab optio quod commodi fuga cum, perferendis facere. Temporibus aliquam, iste est eum, culpa sequi cum deleniti quo, alias quia ad assumenda quod deserunt quidem. Beatae similique dolor earum officiis velit necessitatibus officia rem repellendus tempora cumque. Quaerat, id praesentium.',
            'category_id'=>1,
            'user_id'=>1
        ]);

        Post::create([
            'title' => 'Judul Ke Tiga',
            'slug' => 'judul-ke-tiga',
            'excerpt'=>'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia eligendi nisi architecto eum porro maxime voluptatum laudantium illo itaque beatae, assumenda minus exercitationem?',
            'body' =>'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia eligendi nisi architecto eum porro maxime voluptatum laudantium illo itaque beatae, assumenda sed incidunt cumque minus exercitationem? Maxime ut, eum beatae sit reiciendis quaerat voluptates cum necessitatibus accusamus repellat itaque, sequi omnis voluptate veritatis repellendus eaque totam? Aperiam excepturi repellendus ipsum, molestias tenetur provident minus temporibus corporis cupiditate reiciendis voluptatum numquam ab optio quod commodi fuga cum, perferendis facere. Temporibus aliquam, iste est eum, culpa sequi cum deleniti quo, alias quia ad assumenda quod deserunt quidem. Beatae similique dolor earum officiis velit necessitatibus officia rem repellendus tempora cumque. Quaerat, id praesentium.',
            'category_id' => 2,
            'user_id' => 1
        ]);

        Post::create([
            'title' => 'Judul Ke Empat',
            'slug' => 'judul-ke-empat',
            'excerpt'=>'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia eligendi nisi architecto eum porro maxime voluptatum laudantium illo itaque beatae, assumenda minus exercitationem?',
            'body' =>'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia eligendi nisi architecto eum porro maxime voluptatum laudantium illo itaque beatae, assumenda sed incidunt cumque minus exercitationem? Maxime ut, eum beatae sit reiciendis quaerat voluptates cum necessitatibus accusamus repellat itaque, sequi omnis voluptate veritatis repellendus eaque totam? Aperiam excepturi repellendus ipsum, molestias tenetur provident minus temporibus corporis cupiditate reiciendis voluptatum numquam ab optio quod commodi fuga cum, perferendis facere. Temporibus aliquam, iste est eum, culpa sequi cum deleniti quo, alias quia ad assumenda quod deserunt quidem. Beatae similique dolor earum officiis velit necessitatibus officia rem repellendus tempora cumque. Quaerat, id praesentium.',
            'category_id' => 2,
            'user_id' => 2
        ]);


        
    }
}
