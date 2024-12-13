<?php

namespace App\Http\Controllers;

use App\Http\Resources\PortfolioResource;
use App\Http\Resources\TaxonomyResource;
use App\Portfolio;
use App\Taxonomy;
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

    if (isset($request->offset) && isset($request->limit)) {
      $query = $query->offset($offset)->limit($limit);
    }


    if (isset($s) && $s !== "") {
      $query = $query->where('title', 'like', '%' . $s . '%');
    }

    $result = PortfolioResource::collection($query->get());
    $taxonomies = TaxonomyResource::collection(Taxonomy::all());

    return response()->json(
      [
        'total' => $query->count(),
        'offset' => $offset,
        'limit' => $limit,
        'data' => $result,
        'taxonomies' => $taxonomies
      ]
    );
  }

  public function show($slug)
  {
    return new PortfolioResource(Portfolio::query()->where('slug', '=', $slug)->first());
  }
}
