<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
  protected $fillable = [
    'title',
    'parent_id',
  ];

  public function parent()
  {
    return $this->belongsTo(Category::class, 'parent_id');
  }
}
