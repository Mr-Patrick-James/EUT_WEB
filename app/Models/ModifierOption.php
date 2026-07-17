<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ModifierOption extends Model
{
    protected $fillable = [
        'modifier_group_id',
        'name',
        'price_type',
        'price_adjustment',
        'is_default',
        'is_active',
        'sort_order',
    ];

    protected $casts = [
        'price_adjustment' => 'decimal:2',
        'is_default'       => 'boolean',
        'is_active'        => 'boolean',
        'sort_order'       => 'integer',
    ];

    // ── Relationships ────────────────────────────────────────
    public function group()
    {
        return $this->belongsTo(ModifierGroup::class, 'modifier_group_id');
    }

    // ── Price helpers ────────────────────────────────────────
    /**
     * Calculate the final price given a menu item base price.
     */
    public function resolvePrice(float $basePrice): float
    {
        return match($this->price_type) {
            'add'     => $basePrice + (float) $this->price_adjustment,
            'replace' => (float) $this->price_adjustment,
            default   => $basePrice,
        };
    }

    /**
     * Human-readable price label for display.
     * e.g. "+₱20", "₱350", "Free"
     */
    public function getPriceLabelAttribute(): string
    {
        return match($this->price_type) {
            'add'     => ($this->price_adjustment >= 0 ? '+' : '') . '₱' . number_format((float)$this->price_adjustment, 2),
            'replace' => '₱' . number_format((float)$this->price_adjustment, 2),
            default   => 'Free',
        };
    }
}
