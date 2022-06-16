<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\Appearance;
use Illuminate\Http\Request;
use App\Enums\AppearanceType;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class AboutUsPageController extends Controller
{
    /**
     * Get the Partner page settings view
     */
    public function index()
    {
//        Appearance::updateOrCreate(
//            [
//                'name' => AppearanceType::ABOUT_US_PAGE()
//            ],
//            [
//                'data' => [
//                    'title'    => 'About us - azis page',
//                ]
//            ]
//        );

        return Inertia::render('Appearance/AboutUs/Index', [
            'partner' => Appearance::where('name', AppearanceType::ABOUT_US_PAGE())->first() ?? null,
        ]);
    }

    /**
     * Save partner page content
     */
    public function store(Request $request)
    {
        dd($request->all());

        $request->validate([
            'title'    => 'required|string|max:100',
            'content'  => 'required|string',
            'image'    => 'nullable|image|mimes:png,jpg,jpeg|max:10240',
            'title_sign'    => 'required|string|max:100',
            'content_sign'  => 'required|string',
            'image_sign'    => 'nullable|image|mimes:png,jpg,jpeg|max:10240'
        ]);

        DB::transaction(function () use ($request) {
            $partner = Appearance::updateOrCreate(
                [
                    'name' => AppearanceType::ABOUT_US_PAGE()
                ],
                [
                    'data' => [
                        'title'    => $request->title,
                        'content'  => $request->get('content'),
                        'title_sign'    => $request->title_sign,
                        'content_sign'  => $request->content_sign,
                    ]
                ]
            );

            if ($request->file('image')) {
                $partner->addMedia($request->image)->toMediaCollection('primary');
            }

            if ($request->file('image_sign')) {
                $partner->addMedia($request->image_sign)->toMediaCollection('secondary');
            }

        });

        session()->flash('flash.banner', 'Updated successfullly.');
        session()->flash('flash.bannerStyle', 'success');

        return redirect()->route('appearance.partner');
    }
}
