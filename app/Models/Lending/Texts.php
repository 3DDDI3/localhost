<?php

namespace App\Models\Lending;

use Illuminate\Database\Eloquent\Model;

class Texts extends Model
{
    protected $table = 'texts';

    public $fillable = [
        'title',
        'text',
        'subtext',
        'name'
    ];

}