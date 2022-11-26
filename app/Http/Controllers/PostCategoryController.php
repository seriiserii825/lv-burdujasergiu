<?php

namespace App\Http\Controllers;

use App\PostCategory;
use Illuminate\Http\Request;

class PostCategoryController extends Controller
{
  public function index()
  {
    return PostCategory::query()
      ->has('posts')
      ->orderBy('title')
      ->get();
  }
}
