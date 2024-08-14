<?php

namespace App\Models\Lending;

use App\Models\Service\Country;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Relations\HasOneThrough;

class Tour extends Model
{
    use HasFactory;

    protected $table = 'tours';

    public function country(): HasOne
    {
        return $this->hasOne(TourCountry::class);
    }

    public function tours(): HasMany
    {
        return $this->hasMany(TourCountry::class);
    }

    public function infografika(): HasMany
    {
        return $this->hasMany(infografika::class);
    }

    public function programs(): HasMany
    {
        return $this->hasMany(Programs::class)->orderBy('day', 'desc');
    }

    protected $fillable = [
        'title',
        'text',
        'preview_text',
        'path',
    ];
}
