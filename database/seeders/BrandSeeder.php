<?php

namespace Database\Seeders;

use App\Imports\BrandImport;
use App\Imports\ModelImport;
use App\Models\Brand;
use App\Models\Models;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Facades\Excel;

class BrandSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        try {
            DB::statement("SET foreign_key_checks=0");
            Brand::truncate();
            DB::statement("SET foreign_key_checks=1");

            DB::statement("SET foreign_key_checks=0");
            Models::truncate();
            DB::statement("SET foreign_key_checks=1");

            Excel::import(new BrandImport(), Storage::path('public/excel/marcas.xlsx'));

            Excel::import(new ModelImport(), Storage::path('public/excel/modelos.xlsx'));

            DB::commit();
        } catch (\Exception $e) {
            DB::rollBack();
        }
    }
}
