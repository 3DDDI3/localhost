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
        Schema::create('tour_programs', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Tour::class)
                ->nullable()
                ->constrained()
                ->cascadeOnDelete()
                ->cascadeOnUpdate();
            $table->string('day', 255)->nullable();
            $table->longText('text')->nullable();
            $table->string('title', 1000)->nullable();
            $table->tinyInteger('hide')->nullable()->default(0);
            $table->integer('rating')->nullable()->default(0);
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
        Schema::dropIfExists('tour_programs');
    }
};
