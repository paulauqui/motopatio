<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCheckoutTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('checkout', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->string('name', 150);
            $table->string('last_name', 150);
            $table->string('business', 150)->nullable();
            $table->string('country', 150);
            $table->string('address', 150);
            $table->string('address_aditional', 150)->nullable();
            $table->string('city', 150);
            $table->string('postal', 20);
            $table->string('phone', 50);
            $table->string('email', 100);
            $table->text('information')->nullable();
            $table->boolean('newsletter')->default(1)->nullable();
            $table->boolean('status')->default(1);

            $table->foreign('user_id')
                ->references('id')
                ->on('users')
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
        Schema::dropIfExists('checkout');
    }
}
