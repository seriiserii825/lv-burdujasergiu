<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/* Route::middleware('auth:api')->get('/user', function (Request $request) { */
/*   return $request->user(); */
/* }); */

Route::group([
  'middleware' => ['auth:api'],
  'prefix' => 'auth'
], function ($router) {
  Route::post('logout', 'AuthController@logout');
  Route::post('refresh', 'AuthController@refresh');
  Route::get('me', 'AuthController@me');
});

Route::group([
  'middleware' => ['auth:api', 'status'],
  'prefix' => 'auth'
], function ($router) {
  Route::apiResources([
    'media' => 'Admin\MediaController',
    'order' => 'Admin\OrderController',
    'product' => 'Admin\ProductController',
    'user' => 'Admin\UserController',
    'category' => 'Admin\CategoryController',
    'attribute' => 'Admin\AttributeController',
    'attribute-value' => 'Admin\AttributeValueController',
    'post-category' => 'Admin\PostCategoryController',
    'post' => 'Admin\PostController',
    'taxonomy' => 'Admin\TaxonomyController',
    'portfolio' => 'Admin\PortfolioController',
  ]);
  Route::get('admin', 'Admin\AdminController@index');
  Route::get('user-get-all', 'Admin\UserController@getAll');
  Route::get('product-search', 'Admin\ProductController@search');
});

Route::get('login', 'AuthController@index')->name('login');
Route::post('login', 'AuthController@login');
Route::post('register', 'AuthController@register');

Route::get('home', 'HomeController@index');
Route::get('post-category', 'PostCategoryController@index');
Route::get('post', 'PostController@index');
Route::get('post/{slug}', 'PostController@show');

Route::get('taxonomy', 'TaxonomyController@index');
Route::get('portfolio', 'PortfolioController@index');
Route::get('portfolio-filter', 'PortfolioController@filter');
Route::get('portfolio/{slug}', 'PortfolioController@show');


