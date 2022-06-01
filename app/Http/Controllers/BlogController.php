<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class BlogController extends Controller
{
    public function index()
    {
        $posts = Post::get();
        return view('blog', compact('posts'));
    }

    public function show(Post $post)
    {
        $posts = Post::get();
        return view('post', compact('post'));
    }
}
