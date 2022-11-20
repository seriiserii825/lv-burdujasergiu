<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StorePostRequest extends FormRequest
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
          'title' => 'required|string|max:255|unique:posts',
          'slug' => 'required|string|max:255|unique:posts',
          'text' => 'required|string',
          'status' => 'required|string',
          'post_category_id' => 'required|exists:post_categories,id',
        ];
    }
}
