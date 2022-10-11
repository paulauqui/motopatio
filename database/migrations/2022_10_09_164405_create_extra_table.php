<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExtraTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('extra', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('extra_type_id');
            $table->unsignedBigInteger('motorcycle_id');
            $table->boolean('status');

            $table->foreign('extra_type_id')
                ->references('id')
                ->on('extra_type')
                ->constrained()
                ->onDelete('cascade');

            $table->foreign('motorcycle_id')
                ->references('id')
                ->on('motorcycle')
                ->constrained()
                ->onDelete('cascade');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('extra');
    }
}
