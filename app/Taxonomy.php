<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Taxonomy extends Model
{
  protected $fillable = ['title'];

  public function portfolios()
  {
    return $this->hasMany(Portfolio::class);
  }
}
