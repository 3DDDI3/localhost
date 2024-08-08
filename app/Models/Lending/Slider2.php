<?php

namespace App\Models\Lending;

use Illuminate\Database\Eloquent\Model;

class Slider2 extends Model
{
    protected $table = 'slider2';

    public $fillable = [
        'title',
        'text',
        'image',
        'hide',
        'rating'
    ];

}