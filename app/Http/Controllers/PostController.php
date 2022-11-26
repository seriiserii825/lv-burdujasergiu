<?php

namespace App\Http\Controllers;

use App\Http\Resources\PostResource;
use App\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{

  public function index(Request $request)
  {
    $query = Post::query();
    $limit = $request->limit;
    $offset = $request->offset;
    $s = $request->search;

    if (isset($request->post_category_id) && $request->post_category_id !== "0") {
      $query = $query->where('post_category_id', '=', $request->post_category_id);
    }

    if (isset($s) && $s !== "") {
      $query = $query->where('title', 'like', '%' . $s . '%');
    }

    $result = PostResource::collection($query->offset($offset)->orderBy('updated_at')->limit($limit)->get());

    return response()->json(
      [
        'data' => $result,
        'total' => $query->count()
      ]
    );
  }

  public function show($slug)
  {
    return new PostResource(Post::query()->where('slug', '=', $slug)->first());
  }
}
