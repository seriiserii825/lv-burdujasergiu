<?php

namespace App\Http\Controllers;

use App\Http\Resources\PortfolioResource;
use App\Portfolio;
use Illuminate\Http\Request;

class PortfolioController extends Controller
{
  public function index(Request $request)
  {
    $query = Portfolio::query();
    $limit = $request->limit;
    $offset = $request->offset;
    $s = $request->search;


    if (isset($request->taxonomy_id) && $request->taxonomy_id !== "0") {
      $query = $query->where('taxonomy_id', '=', $request->taxonomy_id);
    }

    $query = $query->offset($offset)->limit($limit);


    if (isset($s) && $s !== "") {
      $query = $query->where('title', 'like', '%' . $s . '%');
    }

    $result = PortfolioResource::collection($query->get());

    return response()->json(
      [
        'total' => $query->count(),
        'offset' => $offset,
        'limit' => $limit,
        'data' => $result
      ]
    );
  }

  public function show($slug)
  {
    return new PortfolioResource(Portfolio::query()->where('slug', '=', $slug)->first());
  }
}
