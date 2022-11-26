<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PostCategory extends Model
{
  protected $fillable = [
    'title',
    'image',
    'status',
  ];

  public function posts()
  {
    return $this->hasMany(Post::class);
  }
}
