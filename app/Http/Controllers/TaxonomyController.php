<?php

namespace App\Http\Controllers;

use App\Http\Resources\TaxonomyResource;
use App\Taxonomy;
use Illuminate\Http\Request;

class TaxonomyController extends Controller
{
  public function index()
  {
    return TaxonomyResource::collection(Taxonomy::query()->has('portfolios')->get());
  }
}
