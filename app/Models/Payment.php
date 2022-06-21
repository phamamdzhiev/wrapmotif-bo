<?php

namespace App\Models;

use App\Traits\Trashed;
use Illuminate\Database\Eloquent\SoftDeletes;

class Payment extends Model
{
    use SoftDeletes, Trashed;

    protected $guarded = [];
}
