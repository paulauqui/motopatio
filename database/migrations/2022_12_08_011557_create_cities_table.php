<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class CreateCitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('countries', function (Blueprint $table) {
            $table->id('id');
            $table->string('name', 100);
        });

        Schema::create('states', function (Blueprint $table) {
            $table->id('id');
            $table->unsignedBigInteger('id_country');
            $table->string('name', 100);

            $table->foreign('id_country')
                ->on('countries')
                ->references('id');
        });

        Schema::create('cities', function (Blueprint $table) {
            $table->id('id');
            $table->unsignedBigInteger('id_state');
            $table->string('name', 100);

            $table->foreign('id_state')
                ->on('states')
                ->references('id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('countries');
        Schema::dropIfExists('states');
        Schema::dropIfExists('cities');
    }
}
