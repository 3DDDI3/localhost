<?php

use App\Models\Lending\Page;
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
        Schema::create('attached_pages', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Page::class)
                ->nullable()
                ->constrained()
                ->cascadeOnDelete()
                ->cascadeOnUpdate();
            $table->unsignedBigInteger("attached_page_id");
            $table->foreign("attached_page_id")
                ->references("id")
                ->on("pages")
                ->cascadeOnDelete()
                ->cascadeOnUpdate();
            $table->integer('rating')->nullable()->default(0);
            $table->unsignedTinyInteger('hide')->nullable()->default(0);
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
        Schema::dropIfExists('attached_pages');
    }
};
