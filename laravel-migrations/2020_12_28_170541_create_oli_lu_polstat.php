<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOliLuPolStat extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('oli_lu_polstat', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('value')->nullable(false)->unique();
            $table->text('description')->nullable();
            $table->string('name', 50)->nullable(false)->unique();
            $table->text('definition')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('oli_lu_polstat');
    }
}
