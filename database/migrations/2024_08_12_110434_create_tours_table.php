<?php

use App\Models\Lending\TourType;
use App\Models\Services\SamotourTour;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tours', function (Blueprint $table) {
            $table->id()->autoIncrement();
            $table->text('url');
            $table->longText('description')->nullable();
            $table->string('title', 1000)->nullable();
            $table->string('subtitle', 1000)->nullable();
            $table->string('preview_title', 1000)->nullable();
            $table->string('preview_header', 1000)->nullable();
            $table->text('preview_text')->nullable();
            $table->string('preview_price', 256)->nullable();
            $table->string('preview_nights', 256)->nullable();
            $table->text('preview_image')->nullable();
            $table->longText('agreement_info')->nullable();
            $table->longText('tour_cost_info')->nullable();
            $table->longText('tour_additional_cost')->nullable();
            $table->foreignIdFor(SamotourTour::class)
                ->nullable()
                ->constrained()
                ->cascadeOnDelete()
                ->cascadeOnUpdate();
            $table->tinyInteger('isHiddenCountryInfo')->nullable()->default(0);
            $table->tinyInteger('isHiddenTouristInfo')->nullable()->default(0);
            $table->integer('rating')->nullable()->default(0);
            $table->tinyInteger('hide')->nullable()->default(0);
            $table->text('background_image')->nullable();
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tours');
    }
};
