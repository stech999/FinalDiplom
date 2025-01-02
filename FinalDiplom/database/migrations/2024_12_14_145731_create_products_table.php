<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('desc')->nullable();
            $table->string('img');
            $table->string('img_lots')->nullable();
            $table->string('price_discount')->nullable();
            $table->string('price');
            $table->string('color_id')->nullable();
            $table->string('brand_id')->nullable();
            $table->string('size_id')->nullable();
            $table->string('products_id')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
