<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('last_name')->nullable();
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->date('dob')->nullable();
            $table->tinyInteger('gender')->comment('0-female,1-male')->nullable();
            $table->string('annual_income')->nullable();
            $table->tinyInteger('occupation')->comment('0-private job, 1-government job, 2-bussiness')->nullable();
            $table->tinyInteger('family_type')->comment('0-Join family, 1-Nuclear family')->nullable();
            $table->tinyInteger('manglik')->comment('0-yes, 1-No')->nullable();
            $table->rememberToken();
            $table->foreignId('current_team_id')->nullable();
            $table->string('profile_photo_path', 2048)->nullable();
            $table->tinyInterger('role')->default(0)->comment('0-Users, 1-Admin');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
};
