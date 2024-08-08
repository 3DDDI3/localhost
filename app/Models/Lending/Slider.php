<?php

namespace App\Models\Lending;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    protected $table = 'slider';

    public $fillable = [
        'title',
        'text',
        'text2',
        'fact1',
        'fact2',
        'fact3',
        'image',
        'preview',
        'hide',
        'rating'
    ];

}