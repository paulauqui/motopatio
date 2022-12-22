<?php

namespace Database\Seeders;

use App\Imports\BrandImport;
use App\Imports\ModelImport;
use App\Models\Brand;
use App\Models\Models;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;
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
        Artisan::call('motopatio:brand-model-insert');
    }
}
