<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdatePostRequest extends FormRequest
{
  /**
   * Determine if the user is authorized to make this request.
   *
   * @return bool
   */
  public function authorize()
  {
    return true;
  }

  /**
   * Get the validation rules that apply to the request.
   *
   * @return array
   */
  public function rules()
  {
    return [
      'title' => 'required|string|max:255,unique:posts,title,' . $this->id,
      'slug' => 'required|string|max:255,unique:posts,slug,' . $this->id,
      'text' => 'required|string',
      'status' => 'required|boolean',
      'post_category_id' => 'required|integer|exists:post_categories,id',
    ];
  }
}
