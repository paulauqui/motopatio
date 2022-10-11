<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('plan', function (Blueprint $table) {
            $table->id();
            $table->string('name', 250);
            $table->unsignedBigInteger('payment_period_id')->nullable();
            $table->smallInteger('duration')->nullable();
            $table->smallInteger('publication')->nullable();
            $table->smallInteger('featured')->nullable();
            $table->smallInteger('microsite')->nullable();
            $table->smallInteger('price')->nullable();
            $table->boolean('default');
            $table->boolean('status');

            $table->foreign('payment_period_id')
                ->references('id')
                ->on('payment_period')
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
        Schema::dropIfExists('plan');
    }
}
