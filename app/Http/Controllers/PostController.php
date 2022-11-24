<?php

namespace App\Http\Controllers;

use App\Http\Resources\PostResource;
use App\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{

  public function index()
  {
    $query = Post::query()->paginate(9);
    return PostResource::collection($query);
  }
}
