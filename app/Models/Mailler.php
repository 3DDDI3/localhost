<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mailler extends Model
{
    use HasFactory;

    protected $table = 'mailling';

    protected $fillable = [
        'email',
        'type',
        'name',
        'city',
    ];

    protected $casts = [
        'created_at' => 'datetime:H:i d.m.Y',
    ];
}
