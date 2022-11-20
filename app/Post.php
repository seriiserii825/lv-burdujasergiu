<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
  protected $fillable = [
    'title',
    'slug',
    'text',
    'status',
    'post_category_id',
  ];

  public function category()
  {
    return $this->belongsTo(PostCategory::class, 'post_category_id');
  }
}
