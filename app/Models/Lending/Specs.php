<?php

namespace App\Models\Lending;

use Illuminate\Database\Eloquent\Model;

class Specs extends Model
{
    protected $table = 'specs';

    public $fillable = [
        'title',
        'text',
        'image',
        'hide',
        'rating'
    ];

}