<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class OrderItem extends Model
{
    protected $fillable = [
        'order_id', 'menu_item_id',
        'item_name', 'unit_price', 'quantity', 'subtotal',
        'modifiers',
    ];

    protected $casts = [
        'unit_price' => 'float',
        'subtotal'   => 'float',
        'modifiers'  => 'array',
    ];

    public function order(): BelongsTo
    {
        return $this->belongsTo(Order::class);
    }

    public function menuItem(): BelongsTo
    {
        return $this->belongsTo(MenuItem::class);
    }
}
