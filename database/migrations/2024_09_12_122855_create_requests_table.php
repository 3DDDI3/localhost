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
        Schema::create('requests', function (Blueprint $table) {
            $table->id();
            $table->string('name', 256)->nullable();
            $table->string('phone', 30)->nullable();
            $table->string('email', 256)->nullable();
            $table->string('range', 50)->comment('диапазон даты вылета')->nullable();
            $table->string('from', 500)->nullable();
            $table->string('to', 500)->nullable();
            $table->integer('nights')->nullable();
            $table->decimal('budget')->nullable();
            $table->integer('tourist_count')->nullable();
            $table->text('description')->nullable();
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
        Schema::dropIfExists('requests');
    }
};
