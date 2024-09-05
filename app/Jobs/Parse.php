<?php

namespace App\Jobs;

use App\Models\Services\SamotourTour;
use GuzzleHttp\Client;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class Parse implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        try {
            $client = new Client(['verify' => false]);
            $citiesResult = $client->get('https://online.mercury-europe.ru/export/default.php?samo_action=api&version=1.0&oauth_token=5104feaa290d42d7a60d4b8710451fcd&type=json&action=SearchTour_TOWNFROMS');

            foreach (json_decode($citiesResult->getBody()->getContents())->SearchTour_TOWNFROMS as $city) {
                $countriesResult = $client->get('https://online.mercury-europe.ru/export/default.php?samo_action=api&version=1.0&oauth_token=5104feaa290d42d7a60d4b8710451fcd&type=json&action=SearchTour_STATES&TOWNFROMINC=' . $city->id);

                foreach (json_decode($countriesResult->getBody()->getContents())->SearchTour_STATES as $country) {
                    $tourResult = $client->get('https://online.mercury-europe.ru/export/default.php?samo_action=api&version=1.0&oauth_token=5104feaa290d42d7a60d4b8710451fcd&type=json&action=SearchTour_TOURS&TOWNFROMINC=' . $city->id . '&STATEINC=' . $country->id);

                    foreach (json_decode($tourResult->getBody()->getContents())->SearchTour_TOURS as $tour) {
                        SamotourTour::query()->where(['id_tour' => $tour->id, 'name' => $tour->name])->count() == 0
                            ? SamotourTour::create([
                                'id_tour' => $tour->id,
                                'id_city' => $city->id,
                                'id_country' => $country->id,
                                'name' => $tour->name
                            ])
                            : SamotourTour::query()
                            ->where([
                                'id_tour' => $tour->id,
                                'id_city' => $city->id,
                                'id_country' => $country->id,
                                'name' => $tour->name
                            ])
                            ->first()
                            ->fill([
                                'id_tour' => $tour->id,
                                'id_city' => $city->id,
                                'id_country' => $country->id,
                                'name' => $tour->name
                            ])->save();
                    }
                }
            }
        } catch (\Throwable $th) {
            //throw $th;
        }
    }
}
