<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreTaxonomyRequest;
use App\Http\Requests\UpdateTaxonomyRequest;
use App\Http\Resources\TaxonomyResource;
use App\Taxonomy;
use Illuminate\Http\Request;

class TaxonomyController extends Controller
{
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {
    return TaxonomyResource::collection(Taxonomy::all());
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function create()
  {
  }

  /**
   * Store a newly created resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
  public function store(StoreTaxonomyRequest $request)
  {
    $taxonomy = Taxonomy::create($request->all());
    return new TaxonomyResource($taxonomy);
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function show($id)
  {
    $taxonomy = Taxonomy::findOrFail($id);
    return new TaxonomyResource($taxonomy);
  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function edit($id)
  {
    $taxonomy = Taxonomy::findOrFail($id);
    return new TaxonomyResource($taxonomy);
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function update(UpdateTaxonomyRequest $request, $id)
  {
    $taxonomy = Taxonomy::findOrFail($id);
    $taxonomy->update($request->all());
    return new TaxonomyResource($taxonomy);
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function destroy($id)
  {
    $taxonomy = Taxonomy::findOrFail($id);
    $taxonomy->delete();
    return response()->json(null, 204);
  }
}
