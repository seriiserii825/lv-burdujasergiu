<?php

namespace App\Http\Controllers;

use App\Http\Resources\PostResource;
use App\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $query = Post::query();
        $posts = PostResource::collection($query->offset(0)->orderBy('updated_at')->limit(5)->get());
        return response()->json(
            [
                'posts' => $posts
            ]
        );
    }
}
