<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddStatusUserPlanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('user_plan', function (Blueprint $table) {
            $table->unsignedBigInteger('status_id')->nullable()->after('checkout_id');

            $table->foreign('status_id')
                ->on('status')
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
        Schema::table('user_plan', function (Blueprint $table) {
            //
        });
    }
}
