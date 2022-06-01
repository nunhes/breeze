<?php

namespace Database\Seeders;


use Illuminate\Database\Seeder;
use App\Models\Tag;
use App\Models\Post;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Post::factory(10)->create(); // Create 50 posts
        Tag::factory(8)->create(); // Create 8 tags

        foreach (Post::all() as $post) { // loop through all posts
            $random_tags = Tag::all()->random(rand(2, 5))->pluck('id')->toArray();
            // Insert random post tag
            foreach ($random_tags as $tag) {
                DB::table('post_tags')->insert([
                    'post_id' => $post->id,
                    'tag_id' => Tag::all()->random(1)[0]->id
                ]);
            }
        }
    }
}
