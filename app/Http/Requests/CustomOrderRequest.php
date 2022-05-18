<?php

namespace App\Http\Requests;

use App\Enums\VatType;
use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class CustomOrderRequest extends FormRequest
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
            'customerId'               => 'required',
            'vehicleId'                => 'required|numeric',
            'vehicleModelId'           => 'required|numeric',
            'bodywork'                 => 'required|string|max:100',
            'vehicleManufactureYear'   => 'required|max:100',
            'vehicleColor'             => 'required|string|max:100',
            'vehicleNote'              => 'nullable|string|max:500',
            'notConditioned'           => 'required|integer',
            'designNote'               => 'nullable|string|max:500',
            'categoryId'               => 'required',
            'rangeFrom'                => 'required|numeric|min:0',
            'rangeTo'                  => 'required|numeric|min:0',
            'depositAmount'            => 'required|numeric|min:0',
            'customerAmount'           => 'required|numeric|min:0',
            'customerCurrency'         => 'required|string',
            'vat'                      => 'required|numeric|min:0',
            'vatType'                  => ['required', Rule::in(VatType::toArray())],
            'vatAmount'                => 'required|numeric|min:0',
            'customerVatAmount'        => 'required|numeric|min:0',
            'colors'                   => 'required',
            'colors.*'                 => 'required|numeric',
            'tags'                     => 'required',
            'tags.*'                   => 'required|numeric',
            'products'                 => 'required',
            'products.*'               => 'required|numeric',
            // Medias
            'vehiclePhotos.*'          => 'required|image|mimes:jpg,png,jpeg',
            'referenceDesigns.*'       => 'required|image|mimes:jpg,png,jpeg',
        ];
    }
}
