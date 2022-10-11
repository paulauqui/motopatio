<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payments', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_plan_id');
            $table->unsignedBigInteger('payment_method_id');
            $table->unsignedBigInteger('checkout_id');
            $table->string('status');

            $table->foreign('user_plan_id')
                ->references('id')
                ->on('user_plan')
                ->constrained()
                ->onDelete('cascade');

            $table->foreign('payment_method_id')
                ->references('id')
                ->on('payments_methods')
                ->constrained()
                ->onDelete('cascade');

            $table->foreign('checkout_id')
                ->references('id')
                ->on('checkout')
                ->constrained()
                ->onDelete('cascade');

            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('payments');
    }
}
