<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddUserPlanCheckoutTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('checkout', function (Blueprint $table) {
            $table->unsignedBigInteger('plan_id')->nullable()->after('user_id');
            $table->unsignedBigInteger('status_id')->nullable()->after('status');

            $table->foreign('plan_id')
                ->on('plan')
                ->references('id');

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
        Schema::table('checkout', function (Blueprint $table) {
            //
        });
    }
}
