<?php

namespace App\Http\Controllers\Admin;

use App\Media;
use Illuminate\Support\Facades\DB;

class AdminController extends AdminBaseController
{
  public function index()
  {
    $entry = scandir(public_path('uploads'));

    foreach ($entry as $key => $value) {
      if ($value != "." && $value != "..") {
        $image =  Media::where('name', $value)->first();
        if(!$image){
          Media::create([
            'name' => "$value",
            'url' => "/uploads/$value",
          ]);
        }
      }
    }

    $orders_count = DB::table('orders')->count();
    $products_count = DB::table('products')->count();
    $users_count = DB::table('users')->count();
    $categories_count = DB::table('categories')->count();
    return response()->json([
      'orders_count' => $orders_count,
      'products_count' => $products_count,
      'users_count' => $users_count,
      'categories_count' => $categories_count,
    ]);
  }
}
