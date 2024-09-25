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

    private $samotour_url;
    private $samotour_token;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->samotour_url = config('samotour.samotour_api_url');
        $this->samotour_token = config('samotour.samotour_api_token');
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

            $citiesResult = $client->get("$this->samotour_url&oauth_token=$this->samotour_token&type=json&action=SearchTour_TOWNFROMS");

            foreach (json_decode($citiesResult->getBody()->getContents())->SearchTour_TOWNFROMS as $city) {
                $countriesResult = $client->get("$this->samotour_url&oauth_token=$this->samotour_token&type=json&action=SearchTour_STATES&TOWNFROMINC=$city->id");

                foreach (json_decode($countriesResult->getBody()->getContents())->SearchTour_STATES as $country) {
                    $tourResult = $client->get("$this->samotour_url&oauth_token=$this->samotour_token&type=json&action=SearchTour_TOURS&TOWNFROMINC=$city->id&STATEINC=$country->id");

                    foreach (json_decode($tourResult->getBody()->getContents())->SearchTour_TOURS as $tour) {
                        SamotourTour::query()->where(['id_tour' => $tour->id, 'tour' => $tour->name])->count() == 0
                            ? SamotourTour::create([
                                'id_tour' => $tour->id,
                                'tour' => $tour->name,
                                'id_city' => $city->id,
                                'city' => $city->name,
                                'id_country' => $country->id,
                                'country' => $country->name,
                            ])
                            : SamotourTour::query()
                            ->where([
                                'id_tour' => $tour->id,
                                'id_city' => $city->id,
                                'id_country' => $country->id,
                                'tour' => $tour->name
                            ])
                            ->first()
                            ->fill([
                                'id_tour' => $tour->id,
                                'tour' => $tour->name,
                                'id_city' => $city->id,
                                'city' => $city->name,
                                'id_country' => $country->id,
                                'country' => $country->name,
                            ])->save();
                    }
                }
            }
        } catch (\Throwable $th) {
            //throw $th;
        }
    }
}
