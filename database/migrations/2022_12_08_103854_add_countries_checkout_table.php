<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCountriesCheckoutTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('checkout', function (Blueprint $table) {
            $table->unsignedBigInteger('country_id')->nullable()->after('country');
            $table->unsignedBigInteger('state_id')->nullable()->after('country_id');

            $table->foreign('country_id')
                ->on('countries')
                ->references('id');

            $table->foreign('state_id')
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
        Schema::table('checkout', function (Blueprint $table) {
            //
        });
    }
}
