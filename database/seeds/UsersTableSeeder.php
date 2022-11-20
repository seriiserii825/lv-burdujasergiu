<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
  /**
   * Run the database seeds.
   *
   * @return void
   */
  public function run()
  {
    $data = [
      [
        'id' => 1,
        'name' => 'admin',
        'email' => 'seriiburduja@gmail.com',
        'password' => bcrypt('Denay2015;'),
      ],
    ];
    DB::table('users')->insert($data);
  }
}
