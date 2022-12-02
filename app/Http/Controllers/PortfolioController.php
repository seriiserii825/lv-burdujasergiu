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
    /* $limit = $request->limit; */
    /* $offset = $request->offset; */
    /* $s = $request->search; */


    /* if (isset($request->taxonomy_id) && $request->taxonomy_id !== "0") { */
    /*   $query = $query->where('taxonomy_id', '=', $request->taxonomy_id); */
    /* } */

    return PortfolioResource::collection($query->get());
  }
}
