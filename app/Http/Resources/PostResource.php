<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class PostResource extends JsonResource
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
        'content' => $this->content,
        'status' => $this->status,
        'post_category_id' => $this->post_category_id,
        'category' => $this->category,
        'created_at' => $this->created_at,
        'updated_at' => $this->updated_at,
      ];
    }
}
