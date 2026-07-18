<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('order_items', function (Blueprint $table) {
            $table->id();
            $table->foreignId('order_id')->constrained()->onDelete('cascade');
            $table->foreignId('menu_item_id')->constrained()->onDelete('cascade');
            $table->string('item_name');          // snapshot at time of order
            $table->decimal('unit_price', 8, 2);  // snapshot at time of order
            $table->unsignedTinyInteger('quantity')->default(1);
            $table->decimal('subtotal', 10, 2);
            $table->json('modifiers')->nullable();  // selected modifiers snapshot
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('order_items');
    }
};
