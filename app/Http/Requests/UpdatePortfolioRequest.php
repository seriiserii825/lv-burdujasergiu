<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdatePortfolioRequest extends FormRequest
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
      'title' => 'required|string|max:255|unique:portfolios,title,' . $this->id,
      'slug' => 'required|string|max:255|unique:portfolios,slug,' . $this->id,
      'image' => 'required|string|max:255',
      'url' => 'required|string|max:255',
      'taxonomy_id' => 'required|exists:taxonomies,id',
    ];
  }
}
