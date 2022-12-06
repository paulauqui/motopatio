<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldsMotorcycleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('motorcycle', function (Blueprint $table) {
            $table->boolean('sold_out')->default(0)->after('featured');
            $table->smallInteger('year')->after('model_id');
            $table->string('stock_id', 20)->after('year')->nullable();
            $table->string('vin', 20)->after('stock_id')->nullable();
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
            $table->dropColumn('sold_out');
            $table->dropColumn('year');
            $table->dropColumn('stock_id');
            $table->dropColumn('vin');
        });
    }
}
