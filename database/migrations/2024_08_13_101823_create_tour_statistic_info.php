<?php

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
        Schema::create('tour_statistic_info', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Tour::class)
                ->constrained()
                ->cascadeOnDelete()
                ->cascadeOnUpdate();
            $table->text('icon')->nullable();
            $table->string('title', 1000)->nullable();
            $table->string('text', 1000)->nullable();
            $table->string('subtitle', 1000)->nullable();
            $table->integer('rating')->nullable();
            $table->tinyInteger('hide')->nullable()->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tour_statistic_info');
    }
};
