<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMotorcycleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('motorcycle', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_plan_id');
            $table->unsignedBigInteger('transmission_id')->nullable();
            $table->unsignedBigInteger('brake_id')->nullable();
            $table->unsignedBigInteger('color_id')->nullable();
            $table->unsignedBigInteger('condition_id')->nullable();
            $table->unsignedBigInteger('brand_id');
            $table->unsignedBigInteger('model_id');
            $table->string('name', 250)->nullable();
            $table->integer('motor');
            $table->integer('kilometres');
            $table->text('notes')->nullable();
            $table->text('price')->nullable();
            $table->boolean('status')->nullable();

            $table->foreign('user_plan_id')
                ->references('id')
                ->on('user_plan')
                ->constrained()
                ->onDelete('cascade');

            $table->foreign('transmission_id')
                ->references('id')
                ->on('transmission')
                ->constrained()
                ->onDelete('cascade');

            $table->foreign('brake_id')
                ->references('id')
                ->on('brake')
                ->constrained()
                ->onDelete('cascade');

            $table->foreign('color_id')
                ->references('id')
                ->on('color')
                ->constrained()
                ->onDelete('cascade');

            $table->foreign('condition_id')
                ->references('id')
                ->on('condition')
                ->constrained()
                ->onDelete('cascade');

            $table->foreign('brand_id')
                ->references('id')
                ->on('brand')
                ->constrained()
                ->onDelete('cascade');

            $table->foreign('model_id')
                ->references('id')
                ->on('model')
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
        Schema::dropIfExists('motorcycle');
    }
}
