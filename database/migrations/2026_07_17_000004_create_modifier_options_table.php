<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('modifier_options', function (Blueprint $table) {
            $table->id();
            $table->foreignId('modifier_group_id')->constrained()->cascadeOnDelete();

            $table->string('name');                         // e.g. "Large", "Spicy", "Extra Cheese"

            // Price adjustment strategy:
            //   'none'    — does NOT affect the base price
            //   'add'     — adds  price_adjustment to base price
            //   'replace' — replaces base price entirely
            $table->enum('price_type', ['none', 'add', 'replace'])->default('none');
            $table->decimal('price_adjustment', 10, 2)->default(0);  // used for 'add' and 'replace'

            $table->boolean('is_default')->default(false);  // pre-selected option
            $table->boolean('is_active')->default(true);
            $table->integer('sort_order')->default(0);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('modifier_options');
    }
};
