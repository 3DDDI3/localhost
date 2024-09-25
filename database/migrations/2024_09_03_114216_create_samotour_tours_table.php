<?php

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
        Schema::create('samotour_tours', function (Blueprint $table) {
            $table->id();
            $table->integer('id_tour')->nullable();
            $table->string('tour', 1000)->nullable();
            $table->integer('id_city')->nullable();
            $table->string('city', 500)->nullable();
            $table->integer('id_country')->nullable();
            $table->string('country', 500)->nullable();
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
        Schema::dropIfExists('samotour_tours');
    }
};
