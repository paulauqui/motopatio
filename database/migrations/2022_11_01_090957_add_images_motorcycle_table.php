<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddImagesMotorcycleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('motorcycle', function (Blueprint $table) {
            $table->string('image', 500)->nullable()->after('price');
            $table->text('gallery')->nullable()->after('image');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('motorcycle', function (Blueprint $table) {
            $table->dropColumn('image');
            $table->dropColumn('gallery');
        });
    }
}
