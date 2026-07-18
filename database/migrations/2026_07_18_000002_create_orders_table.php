<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->foreignId('rider_id')->nullable()->constrained()->onDelete('set null');

            $table->enum('status', [
                'pending',
                'accepted',
                'preparing',
                'rider_assigned',
                'out_for_delivery',
                'delivered',
                'cancelled',
            ])->default('pending');

            // Pricing
            $table->decimal('subtotal', 10, 2)->default(0);
            $table->decimal('delivery_fee', 8, 2)->default(50);
            $table->decimal('total', 10, 2)->default(0);

            // Payment
            $table->enum('payment_method', ['cash', 'gcash', 'card'])->default('cash');
            $table->enum('payment_status', ['pending', 'paid'])->default('pending');

            // Delivery info
            $table->string('delivery_address');
            $table->string('delivery_barangay')->nullable();
            $table->decimal('delivery_lat', 10, 7)->nullable();
            $table->decimal('delivery_lng', 10, 7)->nullable();
            $table->text('notes')->nullable();

            // Proof of delivery
            $table->string('proof_photo')->nullable();
            $table->enum('delivery_type', ['handover', 'photo'])->nullable();

            // Cancellation
            $table->text('cancel_reason')->nullable();

            // Timestamps for each status change
            $table->timestamp('accepted_at')->nullable();
            $table->timestamp('assigned_at')->nullable();
            $table->timestamp('picked_up_at')->nullable();
            $table->timestamp('delivered_at')->nullable();
            $table->timestamp('cancelled_at')->nullable();

            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
