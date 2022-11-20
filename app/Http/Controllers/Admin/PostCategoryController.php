<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\PostCategoryRequest;
use App\PostCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\UpdatePostCategoryRequest;

class PostCategoryController extends Controller
{
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {
    return PostCategory::all();
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function create()
  {
    //
  }

  /**
   * Store a newly created resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
  public function store(PostCategoryRequest $request)
  {
    PostCategory::create($request->all());
    return response()->json([
      'message' => 'Post category created successfully',
    ]);
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function show($id)
  {
    $postCategory = PostCategory::find($id);
    return $postCategory;
  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function edit($id)
  {
    $postCategory = PostCategory::findOrFail($id);
    return $postCategory;
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function update(UpdatePostCategoryRequest $request, $id)
  {
    $postCategory = PostCategory::findOrFail($id);
    $postCategory->update($request->all());
    return response()->json([
      'message' => 'Post category updated successfully',
    ]);
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function destroy($id)
  {
    $postCategory = PostCategory::findOrFail($id);
    $postCategory->delete();
    return response()->json([
      'message' => 'Post category deleted successfully',
    ]);
  }
}
