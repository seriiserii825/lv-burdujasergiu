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

    if (isset($request->post_category_id) && $request->post_category_id !== "0") {
      $query = $query->where('post_category_id', '=', $request->post_category_id);
    }

    $result = PostResource::collection($query->offset($offset)->orderBy('updated_at')->limit($limit)->get());

    return response()->json(
      [
        'data' => $result,
        'total' => $query->count()
      ]
    );
  }
}