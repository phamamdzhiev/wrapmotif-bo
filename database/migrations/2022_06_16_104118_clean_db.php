<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CleanDb extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement('DELETE FROM `preview_designs` WHERE vehicle_id IN (8, 10, 11)');
        DB::statement('DELETE FROM `vehicle_models` WHERE vehicle_id IN (8, 10, 11)');
        DB::statement('DELETE FROM `custom_order_tags` WHERE custom_order_id IN (1,2,3)');
        DB::statement('DELETE FROM `custom_order_products` WHERE custom_order_id IN (1,2,3)');
        DB::statement('DELETE FROM `custom_order_colors` WHERE custom_order_id IN (1,2,3)');
        DB::statement('DELETE FROM `custom_orders` WHERE id IN (1,2,3)');
        DB::statement('DELETE FROM `vehicles` WHERE id IN (8, 10, 11)');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
