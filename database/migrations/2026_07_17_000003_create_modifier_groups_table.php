<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('modifier_groups', function (Blueprint $table) {
            $table->id();
            $table->foreignId('menu_item_id')->constrained()->cascadeOnDelete();

            // type: 'flavor' | 'modifier'
            // flavors   = taste / variant options (e.g. Spicy, Mild, BBQ)
            // modifiers = size / add-on options  (e.g. Large, Small, Extra Cheese)
            $table->enum('type', ['flavor', 'modifier'])->default('modifier');

            $table->string('name');               // e.g. "Spice Level", "Size", "Add-ons"
            $table->boolean('required')->default(false);   // must the customer pick one?
            $table->boolean('is_active')->default(true);
            $table->integer('sort_order')->default(0);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('modifier_groups');
    }
};
