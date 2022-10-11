<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCompareTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('compare', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('motorcycle_id');
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('session', 250);

            $table->foreign('motorcycle_id')
                ->references('id')
                ->on('motorcycle')
                ->constrained()
                ->onDelete('cascade');

            $table->foreign('user_id')
                ->references('id')
                ->on('users')
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
        Schema::dropIfExists('compare');
    }
}
