<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class MediaSeeder extends Seeder
{
  /**
   * Run the database seeds.
   *
   * @return void
   */
  public function run()
  {
    $path = public_path();
    $files = File::allFiles($path);

    dd($files);
    DB::table('media')->insert($media);
  }
}
