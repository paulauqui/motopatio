<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCheckoutUserPlanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('user_plan', function (Blueprint $table) {
            $table->unsignedBigInteger('checkout_id')->after('plan_id')->nullable();

            $table->foreign('checkout_id')
                ->on('checkout')
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
