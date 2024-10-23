<?php

namespace App\Models\Lending;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
    use HasFactory;

    protected $table = "status";

    protected $fillable = [
        'id',
        'name',
        'icon'
    ];

    public function tourStatus()
    {
        return $this->hasMany(TourStatus::class)->whereHas('tours', function ($query) {
            $query->where(['hide' => 0]);
            $query->where(function ($query) {
                $query->where('deadline_date', '>=', Carbon::parse(now())->format('Y-m-d H:i:s'));
                $query->orWhere(['deadline_date' => null]);
            });
        });
    }
}
