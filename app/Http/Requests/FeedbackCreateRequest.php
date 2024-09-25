<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class FeedbackCreateRequest extends FormRequest
{
    protected $stopOnFirstFailure = true;

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
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'cost' => ['required', ''],
            'tourist' => ['required', 'numeric'],
            'nights' => ['required', 'numeric'],
        ];
    }

    public function messages()
    {
        return [
            'cost.required' => 'Поле предположительный бюджет рождения обязательное',
            'cost.numeric' => 'Неккоректное значение предположительного бюджета',
            'tourist.required' => 'Поле кол-во туристов обязательное',
            'tourist.numeric' => 'Неккоректное значение кол-ва туристов',
            'nights.required' => 'Поле продолжительность тура обязательное',
            'nights.numeric' => 'Неккоректное значение продолжительности тура',
        ];
    }
}
