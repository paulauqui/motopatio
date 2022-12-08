<?php

namespace Database\Seeders;

use App\Models\Cities;
use App\Models\Countries;
use App\Models\States;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class InsertCountriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement("SET foreign_key_checks=0");
        Countries::truncate();
        DB::statement("SET foreign_key_checks=1");

        DB::statement("SET foreign_key_checks=0");
        States::truncate();
        DB::statement("SET foreign_key_checks=1");

        DB::statement("SET foreign_key_checks=0");
        Cities::truncate();
        DB::statement("SET foreign_key_checks=1");

        $insert = Storage::disk('public')->get('sql/insert-countries.sql');
        DB::select(DB::raw($insert));

        $insert = Storage::disk('public')->get('sql/insert-states.sql');
        DB::select(DB::raw($insert));

        $insert = Storage::disk('public')->get('sql/sql-cities.sql');
        DB::select(DB::raw($insert));
    }
}
