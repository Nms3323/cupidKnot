<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
 use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\rand;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=0; $i<20; $i++){
            $check_admin = DB::table('users')->select('*')->where('role',1)->first();
            
            if(empty($check_admin)){
                $admin = DB::table('users')->insertGetId([
                    'name' => "Admin",
                    'last_name' => "Admin",
                    'email' => 'admin@gmail.com',
                    'password' => Hash::make('admin@123'),
                    'created_at' => date('Y-m-d H:i:s'),
                    'updated_at' => date('Y-m-d H:i:s')
                ]);
            }

            $user = DB::table('users')->insertGetId([
                'name' => Str::random(10),
                'last_name' => Str::random(10),
                'dob' => date('Y-m-d'),
                'email' => Str::random(10).'@gmail.com',
                'password' => Hash::make('password'),
                'gender' => rand(0,1),
                'annual_income' => rand(1000,1000000),
                'occupation' => rand(0,2),
                'family_type' => rand(0,1),
                'manglik' => rand(0,1),
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
            ]);

            DB::table('partner_preference')->insert([
                'user_id' => $user,
                'min_income' => rand(1000,5000),
                'max_income' => rand(10000,1000000),
                'manglik_type' => rand(0,2),
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
            ]);

            DB::table('partner_occupation')->insert([
                'user_id' => $user,
                'occupation_type' => rand(0,1),
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
            ]);

            DB::table('partner_occupation')->insert([
                'user_id' => $user,
                'occupation_type' => rand(2,2),
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
            ]);

            DB::table('partner_family')->insert([
                'user_id' => $user,
                'family_type' => rand(0,1),
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
            ]);
        }
    }
}
