<?php

namespace App\Http\Controllers;

use App\Http\Resources\PortfolioResource;
use App\Http\Resources\PostResource;
use App\Portfolio;
use App\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $query = Post::query();
        $posts = PostResource::collection($query->offset(0)->orderBy('updated_at')->limit(6)->get());
        $portfolios_query = Portfolio::query();
        $portfolios = PortfolioResource::collection($portfolios_query->offset(0)->orderBy('updated_at')->limit(8)->get());
        return response()->json(
            [
                'posts' => $posts,
                'portfolios' => $portfolios
            ]
        );
    }
}
