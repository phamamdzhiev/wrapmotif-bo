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
     * Get the about page settings view
     */
    public function index()
    {
        return Inertia::render('Appearance/AboutUs/Index', [
            'aboutUs' => Appearance::where('name', AppearanceType::ABOUT_US_PAGE())->first() ?? null,
        ]);
    }

    /**
     * Save about page content
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:100',
            'content' => 'required|string',
            'image' => 'nullable|image|mimes:png,jpg,jpeg|max:10240',
            'image_sign' => 'nullable|image|mimes:png,jpg,jpeg|max:10240'
        ]);

        DB::transaction(function () use ($request) {
            $about = Appearance::updateOrCreate(
                [
                    'name' => AppearanceType::ABOUT_US_PAGE()
                ],
                [
                    'data' => [
                        'title' => $request->title,
                        'content' => $request->get('content'),
                        'image' => $request->image,
                        'image_sign' => $request->image_sign,
                    ]
                ]
            );

            if ($request->file('image')) {
                $about->addMedia($request->image)->toMediaCollection('primary');
            }

            if ($request->file('image_sign')) {
                $about->addMedia($request->image_sign)->toMediaCollection('secondary');
            }

        });

        session()->flash('flash.banner', 'Updated successfullly.');
        session()->flash('flash.bannerStyle', 'success');

        return redirect()->route('appearance.about');
    }
}
