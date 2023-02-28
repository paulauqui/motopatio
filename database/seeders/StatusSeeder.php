<?php

namespace Database\Seeders;

use App\Models\Status;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StatusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement("SET foreign_key_checks=0");
        Status::truncate();
        DB::statement("SET foreign_key_checks=1");

        Status::create(['description' => 'Aprobado', 'key' => 'aprobado', 'order' => 1]);
        Status::create(['description' => 'Revisión', 'key' => 'revision', 'order' => 1]);
        Status::create(['description' => 'Cancelado', 'key' => 'cancelado', 'order' => 1]);
    }
}
