<?php

namespace App\Console\Commands;

use App\Imports\BrandImport;
use App\Imports\ModelImport;
use App\Models\Brand;
use App\Models\Models;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Storage;

class BrandCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'motopatio:brand-model-insert';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Migrar marcas y modelos desde origen (excel)';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
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
        return 0;
    }
}
