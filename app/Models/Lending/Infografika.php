<?php

namespace App\Models\Lending;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Infografika extends Model
{
    use HasFactory;

    protected $table = "tour_statistic_info";

    public $timestamps = false;

    protected $fillable = [
        'icon',
        'title',
        'text',
        'subtitle',
    ];
}
