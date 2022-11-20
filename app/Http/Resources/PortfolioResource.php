<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class PortfolioResource extends JsonResource
{
  /**
   * Transform the resource into an array.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return array
   */
  public function toArray($request)
  {
    return [
      'id' => $this->id,
      'title' => $this->title,
      'slug' => $this->slug,
      'image' => $this->image,
      'url' => $this->url,
      'taxonomy_id' => $this->taxonomy_id,
      'taxonomy' => $this->taxonomy,
      'created_at' => $this->created_at,
      'updated_at' => $this->updated_at,
    ];
  }
}
