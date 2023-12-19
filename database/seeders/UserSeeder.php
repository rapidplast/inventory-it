<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'admin',
            'email' => 'admin@gmail.com',
            'password' => '$2y$10$5JmMgLyy1Pc92U2O/d9H2ODu61m3Zr4EfxrWc5xsvufsVKYVGpsRS',
            'created_at' => '2023-07-09 17:24:29',
            'updated_at' => '2023-07-09 17:24:29',
        ]);
    }
}
