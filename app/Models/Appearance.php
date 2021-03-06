<?php

namespace App\Models;

use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Appearance extends Model implements HasMedia
{
    use InteractsWithMedia;

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'data' => 'array',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    protected $appends = ['primaryMedia', 'secondaryMedia',
        'mediaCollection', 'primaryMediaUrl', 'secondaryMediaUrl',
        'videoMobile', 'posterMobile', 'videoMobileMediaUrl', 'posterMobileMediaUrl'];

    /**
     * Register the media collections
     *
     * @return void
     */
    public function registerMediaCollections(): void
    {
        $this
            ->addMediaCollection('primary')
            ->singleFile();

        $this
            ->addMediaCollection('secondary')
            ->singleFile();

        $this
            ->addMediaCollection('video_mobile')
            ->singleFile();

        $this
                ->addMediaCollection('poster_mobile')
            ->singleFile();

        $this
            ->addMediaCollection('collection');
    }

    /**
     * Get the primary media
     */
    public function getPrimaryMediaAttribute()
    {
        return $this->getFirstMedia('primary') ?? null;
    }

    /**
     * Get the secondary media
     */
    public function getSecondaryMediaAttribute()
    {
        return $this->getFirstMedia('secondary') ?? null;
    }

    /**
     * Gte the video mobile media
     */
    public function getVideoMobileAttribute(){
        return $this->getFirstMedia('video_mobile') ?? null;
    }

    /**
     * Gte the video mobile media
     */
    public function getPosterMobileAttribute(){
        return $this->getFirstMedia('poster_mobile') ?? null;
    }

    /**
     * Get the primary media
     */
    public function getPrimaryMediaUrlAttribute()
    {
        return $this->getFirstMediaUrl('primary') ?? null;
    }

    /**
     * Get the secondary media
     */
    public function getSecondaryMediaUrlAttribute()
    {
        return $this->getFirstMediaUrl('secondary') ?? null;
    }

    /**
     * Get the video mobile media
     */
    public function getVideoMobileMediaUrlAttribute()
    {
        return $this->getFirstMediaUrl('video_mobile') ?? null;
    }

    /**
     * Get the poster mobile media
     */
    public function getPosterMobileMediaUrlAttribute()
    {
        return $this->getFirstMediaUrl('poster_mobile') ?? null;
    }

    /**
     * Get the media collection
     */
    public function getMediaCollectionAttribute()
    {
        $result = [];
        foreach ($this->getMedia('collection') as $media) {
            array_push($result, ['id' => $media->id, 'name' => $media->name, 'fileName' => $media->file_name,  'url' => $media->getFullUrl(), 'mimeType' => $media->mime_type]);
        }

        return $result;
    }
}
