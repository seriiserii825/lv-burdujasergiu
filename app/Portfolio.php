<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Portfolio extends Model
{
  protected $fillable = [
    'title',
    'slug',
    'image',
    'url',
    'taxonomy_id',
  ];

  public function taxonomy()
  {
    return $this->belongsTo(Taxonomy::class);
  }
}
