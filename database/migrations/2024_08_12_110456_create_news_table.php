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
        Schema::create('news', function (Blueprint $table) {
            $table->id()->autoIncrement();
            $table->text('url')->nullable();
            $table->longText('text')->nullable();
            $table->text('image')->nullable();
            $table->string('title', 1000)->nullable();
            $table->text('preview_text')->nullable();
            $table->text('preview_image')->nullable();
            $table->integer('rating')->nullable()->default(0);
            $table->tinyInteger('hide')->nullable()->default(0);
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
        Schema::dropIfExists('news');
    }
};
