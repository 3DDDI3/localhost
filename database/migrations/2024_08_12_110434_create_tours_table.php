<?php

use App\Models\Lending\TourType;
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
            $table->longText('text')->nullable();
            $table->text('description');
            $table->string('title', 1000);
            $table->timestamp('created_at')->useCurrent();
            $table->text('preview_text')->nullable();
            $table->string('preview_price')->nullable();
            $table->string('preview_nights')->nullable();
            $table->string('preview_title', 1000)->nullable();
            $table->integer('rating')->nullable()->default(0);
            $table->tinyInteger('hide')->nullable()->default(0);
            $table->text('bacground_image')->nullable();
            $table->timestamp('update_at')->useCurrentOnUpdate();
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
