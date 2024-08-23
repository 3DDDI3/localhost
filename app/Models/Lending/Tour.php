<?php

namespace App\Models\Lending;

use App\Models\Gallery;
use App\Models\Lending\Country as LendingCountry;
use App\Models\Service\Country;
use App\Models\Services\Infografika;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Relations\HasOneThrough;
use PhpParser\ErrorHandler\Collecting;

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
        return $this->hasMany(Infografika::class);
    }

    public function programs(): HasMany
    {
        return $this->hasMany(Programs::class);
    }

    public function gallery(): HasMany
    {
        return $this->hasMany(Gallery::class, "item_id", "id")->where(['item_type' => 'tour']);
    }

    public function tourType(): HasMany
    {
        return $this->hasMany(TourType::class);
    }

    public function tourTypes(): Collection
    {
        return LendingCountry::query()->where(['hide' => 0])->orderBy('id')->get();
    }

    public function tourStatus()
    {
        if ($this->hasMany(TourStatus::class, 'tour_id', 'id')->count() > 0) return $this->hasMany(TourStatus::class, 'tour_id', 'id')->first();
        else new TourStatus();
    }

    protected $fillable = [
        'title',
        'subtitle',
        'description',
        'description',
        'preview_title',
        'preview_header',
        'preview_text',
        'preview_price',
        'preview_nights',
        'tour_cost_info',
        'tour_additional_cost',
        'agreement_info',
        'background_image'
    ];
}
