<?php

namespace App\Http\Controllers;

use App\Models\Faq;
use Inertia\Inertia;
use App\Enums\FaqType;
use App\Models\Settings;
use App\Models\Appearance;
use Illuminate\Http\Request;
use App\Enums\AppearanceType;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class OtherPageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Inertia::render('Appearance/Others/Index', [
            'faqTypes'   => FaqType::toSelectOptions(),
            'faqs'       => Faq::orderBy('id', 'desc')->get(),
            'terms'      => Appearance::where('name', AppearanceType::TERMS_CONDITIONS())->first() ?? null,
            'howItWorks' => Appearance::where('name', AppearanceType::HOW_IT_WORKS_PAGE())->first() ?? null,
            'checkout' => Appearance::where('name', AppearanceType::CHECKOUT())->first() ?? null,
            'companies' => Appearance::where('name', AppearanceType::COMPANIES())->first() ?? null,
        ]);
    }
    /**
     * Save Terms & Conditions Settings
     */
    public function termsCondition(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'title'    => 'required|string|max:200',
            // 'subtitle' => 'required|string|max:200',
            'general'  => 'required|string',
            'special'  => 'required|string',
            'license'  => 'required|string',
            'privacy'  => 'required|string',

        ]);

        DB::transaction(function () use ($request) {
            Appearance::updateOrCreate(
                [
                    'name' => AppearanceType::TERMS_CONDITIONS()
                ],
                [
                    'data' => [
                        'title'    => $request->title,
                        // 'subtitle' => $request->subtitle,
                        'general'  => $request->general,
                        'special'  => $request->special,
                        'license'  => $request->license,
                        'privacy'  => $request->privacy,
                    ]
                ]
            );
        });

        session()->flash('flash.banner', 'Terms & Conditions updated successfullly.');
        session()->flash('flash.bannerStyle', 'success');

        return redirect()->route('appearance.others');
    }

    /**
     * Save Terms & Conditions Settings
     */
    public function howItWork(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'title'    => 'required|string|max:200',
            'title_universal'    => 'required|string|max:200',
            'subtitle' => 'required|string|max:200',
            'title_customer' => 'required|string|max:200',
            'customer'  =>  'required|string',
            'universal'  =>  'required|string',


        ]);

        DB::transaction(function () use ($request) {
            Appearance::updateOrCreate(
                [
                    'name' => AppearanceType::HOW_IT_WORKS_PAGE()
                ],
                [
                    'data' => [
                        'title'    => $request->title,
                        'title_universal'    => $request->title_universal,
                        'subtitle' => $request->subtitle,
                        'title_customer' => $request->title_customer,
                        'customer'  => $request->customer,
                        'universal'  => $request->universal,
                    ]
                ]
            );
        });

        session()->flash('flash.banner', 'How it work content updated successfullly.');
        session()->flash('flash.bannerStyle', 'success');

        return redirect()->route('appearance.others');
    }

    /**
     * Save notes of checkout pages
     */
    public function checkout(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'note_universal'  =>  'required|string',
            'note_color'  =>  'required|string',
            'note_preview'  =>  'required|string',


        ]);

        DB::transaction(function () use ($request) {
            Appearance::updateOrCreate(
                [
                    'name' => AppearanceType::CHECKOUT()
                ],
                [
                    'data' => [
                        'note_universal'    => $request->note_universal,
                        'note_color'    => $request->note_color,
                        'note_preview' => $request->note_preview,
                    ]
                ]
            );
        });

        session()->flash('flash.banner', 'Checkout notes updated successfullly.');
        session()->flash('flash.bannerStyle', 'success');

        return redirect()->route('appearance.others');
    }

    /**
     * Save title and description for companies pages
     */
    public function companies(Request $request)
    {
        $request->validate([
            'title'  =>  'required|string|max:200',
            'description'  =>  'required|string',
        ]);

        DB::transaction(function () use ($request) {
            Appearance::updateOrCreate(
                [
                    'name' => AppearanceType::COMPANIES()
                ],
                [
                    'data' => [
                        'title'    => $request->title,
                        'description'    => $request->description,
                    ]
                ]
            );
        });

        session()->flash('flash.banner', 'Companies data updated successfully.');
        session()->flash('flash.bannerStyle', 'success');

        return redirect()->route('appearance.others');
    }
}
