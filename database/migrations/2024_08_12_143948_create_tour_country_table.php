<?php

use App\Models\Lending\Country;
use App\Models\Lending\Tour;
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
        Schema::create('tour_country', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Tour::class)
                ->constrained()
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->foreignIdFor(Country::class)
                ->nullable()
                ->constrained()
                ->onDelete('cascade')
                ->onUpdate('cascade');
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
        Schema::dropIfExists('tour_country');
    }
};
