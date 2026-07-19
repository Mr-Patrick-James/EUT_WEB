@extends('admin.layout')
@section('title', 'Orders')

@section('content')

{{-- ── PAGE HEADER ── --}}
<div class="page-header" style="display:flex;flex-wrap:wrap;align-items:flex-start;justify-content:space-between;gap:1rem;">
    <div style="display:flex;align-items:center;gap:.75rem;">
        <div style="width:2.5rem;height:2.5rem;border-radius:.75rem;background:rgba(16,185,129,.12);display:flex;align-items:center;justify-content:center;">
            <i data-lucide="shopping-bag" style="width:1.2rem;height:1.2rem;color:#10b981;stroke-width:2;"></i>
        </div>
        <div>
            <h1 style="margin:0 0 .15rem;">Orders</h1>
            <p style="margin:0;">Track and manage customer orders.</p>
        </div>
    </div>
    <span style="font-size:.72rem;color:var(--text-muted);border:1px solid var(--border-card);border-radius:.5rem;padding:.35rem .875rem;display:inline-flex;align-items:center;gap:.35rem;">
        <i data-lucide="info" style="width:.8rem;height:.8rem;stroke-width:2;"></i>
        Sample data — connect a real orders table to go live
    </span>
</div>

{{-- ── STATUS STAT CARDS (big, like categories) ── --}}
@php
$statusConfig = [
    'pending'   => ['label'=>'Pending',    'sub'=>'Awaiting confirmation', 'icon'=>'clock',        'color'=>'#f59e0b','bg'=>'rgba(245,158,11,.10)'],
    'preparing' => ['label'=>'Preparing',  'sub'=>'Being cooked now',      'icon'=>'chef-hat',     'color'=>'#3b82f6','bg'=>'rgba(59,130,246,.10)'],
    'out'       => ['label'=>'On the Way', 'sub'=>'Out for delivery',      'icon'=>'bike',         'color'=>'#8b5cf6','bg'=>'rgba(139,92,246,.10)'],
    'delivered' => ['label'=>'Delivered',  'sub'=>'Completed orders',      'icon'=>'circle-check', 'color'=>'#10b981','bg'=>'rgba(16,185,129,.10)'],
    'cancelled' => ['label'=>'Cancelled',  'sub'=>'Cancelled by customer', 'icon'=>'circle-x',     'color'=>'#ef4444','bg'=>'rgba(239,68,68,.10)'],
];
@endphp

<div class="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-5 gap-5 mb-6">
    @foreach($statusCounts as $status => $count)
    @php $sc = $statusConfig[$status]; @endphp
    <a href="{{ route('admin.orders',['status'=>$status]) }}"
       class="stat-card"
       style="text-decoration:none;position:relative;overflow:hidden;border-color:{{ $sc['color'] }}22;
              {{ request('status')===$status ? 'border-color:'.$sc['color'].'55;box-shadow:0 0 0 3px '.$sc['color'].'18;' : '' }}">

        {{-- Icon + number row --}}
        <div style="display:flex;align-items:flex-start;justify-content:space-between;margin-bottom:.875rem;">
            <div style="width:3rem;height:3rem;border-radius:.875rem;background:{{ $sc['bg'] }};display:flex;align-items:center;justify-content:center;">
                <i data-lucide="{{ $sc['icon'] }}" style="width:1.4rem;height:1.4rem;color:{{ $sc['color'] }};stroke-width:2;"></i>
            </div>
            <span style="font-size:2.5rem;font-weight:900;color:{{ $sc['color'] }};line-height:1;">{{ $count }}</span>
        </div>

        <h3 style="font-size:.9375rem;font-weight:700;color:var(--text-strong);margin:0 0 .25rem;">{{ $sc['label'] }}</h3>
        <p style="font-size:.72rem;color:var(--text-muted);margin:0 0 .875rem;">{{ $sc['sub'] }}</p>

        <span style="font-size:.7rem;font-weight:600;color:{{ $sc['color'] }};display:inline-flex;align-items:center;gap:.3rem;">
            Filter orders <i data-lucide="arrow-right" style="width:.65rem;height:.65rem;stroke-width:2.5;"></i>
        </span>

        {{-- corner glow --}}
        <div style="position:absolute;bottom:-1.5rem;right:-1.5rem;width:5.5rem;height:5.5rem;border-radius:50%;background:{{ $sc['bg'] }};filter:blur(18px);pointer-events:none;"></div>
    </a>
    @endforeach
</div>

{{-- ── TABLE CARD ── --}}
<div class="section-card">
    <div class="filter-bar">        <div style="display:flex;align-items:center;gap:.5rem;">
            <i data-lucide="filter" style="width:.875rem;height:.875rem;color:var(--text-muted);stroke-width:2;"></i>
            <select onchange="location='{{ route('admin.orders') }}?status='+this.value" class="admin-input" style="max-width:160px;">
                <option value="" {{ !request('status') ? 'selected':'' }}>All Statuses</option>
                @foreach($statusConfig as $val => $cfg)
                    <option value="{{ $val }}" {{ request('status')===$val ? 'selected':'' }}>{{ $cfg['label'] }}</option>
                @endforeach
            </select>
        </div>
        @if(request('status'))
            <a href="{{ route('admin.orders') }}" class="btn-ghost" style="display:inline-flex;align-items:center;gap:.3rem;">
                <i data-lucide="x" style="width:.8rem;height:.8rem;stroke-width:2.5;"></i> Show All
            </a>
        @endif
    </div>

    <table class="admin-table">
        <thead>
            <tr>
                <th>Order #</th><th>Customer</th><th>Items</th>
                <th>Total</th><th>Status</th><th>Date & Time</th><th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @forelse($orders as $order)
            @php
                $statusKey = $order->status;
                $sc = $statusConfig[$statusKey] ?? $statusConfig['pending'];
                $customerName = $order->user?->name ?? 'Guest';
                $initials = strtoupper(substr($customerName, 0, 1));
            @endphp
            <tr>
                {{-- Order # --}}
                <td>
                    <span style="font-family:monospace;font-weight:700;color:var(--accent);font-size:.875rem;">{{ $order->order_number }}</span>
                </td>

                {{-- Customer --}}
                <td>
                    <div style="display:flex;align-items:center;gap:.5rem;">
                        <div style="width:1.875rem;height:1.875rem;border-radius:50%;background:var(--accent);display:flex;align-items:center;justify-content:center;color:#000;font-weight:700;font-size:.7rem;flex-shrink:0;">
                            {{ $initials }}
                        </div>
                        <div>
                            <p style="font-weight:600;color:var(--text-strong);font-size:.8rem;margin:0;">{{ $customerName }}</p>
                            <p style="font-size:.68rem;color:var(--text-muted);margin:0;">{{ $order->delivery_address }}</p>
                        </div>
                    </div>
                </td>

                {{-- Items (formatted) --}}
                <td style="max-width:200px;">
                    @php $allItems = $order->items; @endphp
                    @foreach($allItems->take(2) as $item)
                        <div style="display:flex;align-items:center;gap:4px;margin-bottom:2px;">
                            <span style="font-size:.72rem;font-weight:700;color:var(--accent);background:rgba(250,204,21,.1);border-radius:4px;padding:1px 5px;flex-shrink:0;">×{{ $item->quantity }}</span>
                            <span style="font-size:.75rem;color:var(--text-strong);white-space:nowrap;overflow:hidden;text-overflow:ellipsis;max-width:140px;" title="{{ $item->item_name }}">{{ $item->item_name }}</span>
                        </div>
                    @endforeach
                    @if($allItems->count() > 2)
                        <span style="font-size:.68rem;color:var(--text-muted);">+{{ $allItems->count() - 2 }} more item(s)</span>
                    @endif
                </td>

                {{-- Total --}}
                <td style="font-weight:700;color:var(--accent);">₱{{ number_format($order->total) }}</td>

                {{-- Status --}}
                <td>
                    <span class="badge badge-{{ $statusKey }}" style="display:inline-flex;align-items:center;gap:.3rem;">
                        <i data-lucide="{{ $sc['icon'] }}" style="width:.65rem;height:.65rem;stroke-width:2.5;"></i>
                        {{ $sc['label'] }}
                    </span>
                </td>

                {{-- Date --}}
                <td style="color:var(--text-muted);font-size:.75rem;">{{ $order->created_at->format('M d, Y g:i A') }}</td>

                {{-- Actions --}}
                <td>
                    <div style="display:flex;gap:.5rem;flex-wrap:wrap;">
                        <button class="btn-ghost" style="font-size:.75rem;display:inline-flex;align-items:center;gap:.3rem;"
                                onclick="showOrderDetail({{ $order->id }})">
                            <i data-lucide="eye" style="width:.8rem;height:.8rem;stroke-width:2;"></i> View
                        </button>
                        @if($order->status === 'pending')
                            <form method="POST" action="{{ route('admin.orders.accept', $order) }}" style="display:inline;">
                                @csrf
                                <button type="submit" class="btn-success" style="font-size:.75rem;display:inline-flex;align-items:center;gap:.3rem;">
                                    <i data-lucide="check" style="width:.8rem;height:.8rem;stroke-width:2.5;"></i> Accept
                                </button>
                            </form>
                        @endif
                    </div>
                </td>
            </tr>
            @empty
            <tr><td colspan="7" style="text-align:center;color:var(--text-muted);padding:3rem;">No orders found.</td></tr>
            @endforelse
        </tbody>
    </table>
</div>

{{-- ══════════ ORDER DETAIL MODAL ══════════ --}}
<div id="orderDetailModal" class="modal-backdrop" onclick="closeModalBackdrop(event,'orderDetailModal')">
    <div class="modal-box modal-lg">
        <div class="modal-header">
            <div style="display:flex;align-items:center;gap:.5rem;">
                <i data-lucide="receipt" style="width:1.1rem;height:1.1rem;color:#10b981;stroke-width:2;"></i>
                <h3 class="modal-title" id="odTitle">Order Detail</h3>
            </div>
            <button onclick="closeModal('orderDetailModal')" class="modal-close">
                <i data-lucide="x" style="width:1rem;height:1rem;stroke-width:2.5;"></i>
            </button>
        </div>
        <div id="odBody" class="modal-body" style="gap:.75rem;">
            <div style="text-align:center;padding:2rem;color:var(--text-muted);">Loading...</div>
        </div>
    </div>
</div>

{{-- Build order data map for JS --}}
@php
$ordersMap = [];
foreach($orders as $o) {
    $ordersMap[$o->id] = [
        'id'           => $o->id,
        'order_number' => $o->order_number,
        'status'       => $o->status,
        'customer'     => $o->user?->name ?? 'Guest',
        'email'        => $o->user?->email ?? '',
        'address'      => $o->delivery_address,
        'payment'      => $o->payment_method,
        'subtotal'     => $o->subtotal,
        'delivery_fee' => $o->delivery_fee,
        'total'        => $o->total,
        'notes'        => $o->notes,
        'date'         => $o->created_at->format('M d, Y g:i A'),
        'items'        => $o->items->map(fn($i) => [
            'name'      => $i->item_name,
            'qty'       => $i->quantity,
            'price'     => $i->unit_price,
            'subtotal'  => $i->subtotal,
            'modifiers' => $i->modifiers ?? [],  // JSON column — flavors, modifiers, addons
        ])->toArray(),
    ];
}
@endphp

<script>
var ORDERS_MAP = @json($ordersMap);
var STATUS_CONFIG = @json($statusConfig);

function showOrderDetail(id) {
    var o = ORDERS_MAP[id];
    if (!o) { alert('Order not found.'); return; }

    var sc = STATUS_CONFIG[o.status] || STATUS_CONFIG['pending'];

    // Badge color map
    var badgeMap = {
        pending:   'background:rgba(245,158,11,.12);color:#d97706;',
        preparing: 'background:rgba(59,130,246,.12);color:#2563eb;',
        out:       'background:rgba(139,92,246,.12);color:#7c3aed;',
        delivered: 'background:rgba(16,185,129,.12);color:#16a34a;',
        cancelled: 'background:rgba(239,68,68,.12);color:#dc2626;',
    };
    var badgeStyle = badgeMap[o.status] || badgeMap['pending'];

    // Build items rows
    var itemsHtml = '';
    o.items.forEach(function(item) {
        // ── Build modifier tags ──────────────────────────────
        var modHtml = '';
        var mods = item.modifiers || [];
        if (Array.isArray(mods) && mods.length) {
            var tagColors = {
                flavor:   { bg:'rgba(59,130,246,.12)',  color:'#3b82f6' },
                modifier: { bg:'rgba(139,92,246,.12)',  color:'#8b5cf6' },
                addon:    { bg:'rgba(245,158,11,.12)',   color:'#d97706' },
            };
            var tags = '';
            mods.forEach(function(mod) {
                if (!mod || !mod.name) return;
                // Skip "No Flavor" / "No X" defaults in display
                if (/^no\s/i.test(mod.name)) return;
                var type   = mod.type || 'modifier';
                var tc     = tagColors[type] || tagColors['modifier'];
                var price  = '';
                if (mod.price_type === 'add' && parseFloat(mod.price_adjustment) > 0) {
                    price = ' <span style="color:#4ade80;font-size:.6rem;">+₱' + Number(mod.price_adjustment).toLocaleString() + '</span>';
                } else if (mod.price_type === 'replace') {
                    price = ' <span style="color:#a78bfa;font-size:.6rem;">=₱' + Number(mod.price_adjustment).toLocaleString() + '</span>';
                }
                var typeIcon = type === 'flavor' ? '🌶' : (type === 'addon' ? '➕' : '⚙');
                tags +=
                    '<span style="display:inline-flex;align-items:center;gap:.25rem;padding:.15rem .55rem;border-radius:9999px;font-size:.68rem;font-weight:600;background:' + tc.bg + ';color:' + tc.color + ';border:1px solid ' + tc.color + '30;">' +
                        typeIcon + ' ' + mod.name + price +
                    '</span>';
            });
            if (tags) {
                modHtml = '<div style="display:flex;flex-wrap:wrap;gap:.3rem;margin-top:.35rem;">' + tags + '</div>';
            }
        }

        itemsHtml +=
            '<div style="padding:.625rem 0;border-bottom:1px solid var(--border-divider);">' +
                '<div style="display:flex;justify-content:space-between;align-items:flex-start;gap:.5rem;">' +
                    '<div style="display:flex;align-items:center;gap:.5rem;flex:1;min-width:0;">' +
                        '<span style="font-size:.7rem;font-weight:700;background:rgba(250,204,21,.12);color:#d97706;border-radius:4px;padding:2px 7px;flex-shrink:0;">×' + item.qty + '</span>' +
                        '<span style="font-size:.8rem;color:var(--text-strong);font-weight:600;">' + item.name + '</span>' +
                    '</div>' +
                    '<span style="font-size:.8rem;font-weight:700;color:var(--text-body);flex-shrink:0;">₱' + Number(item.subtotal).toLocaleString() + '</span>' +
                '</div>' +
                modHtml +
            '</div>';
    });

    var html =
        // Header info row
        '<div style="display:grid;grid-template-columns:1fr 1fr;gap:.75rem;">' +
            '<div style="background:var(--bg-filter);border-radius:.625rem;padding:.875rem 1rem;">' +
                '<p style="font-size:.68rem;color:var(--text-muted);text-transform:uppercase;letter-spacing:.06em;margin:0 0 .3rem;">Order Number</p>' +
                '<p style="font-size:.9375rem;font-weight:800;color:var(--text-strong);margin:0;font-family:monospace;">' + o.order_number + '</p>' +
            '</div>' +
            '<div style="background:var(--bg-filter);border-radius:.625rem;padding:.875rem 1rem;">' +
                '<p style="font-size:.68rem;color:var(--text-muted);text-transform:uppercase;letter-spacing:.06em;margin:0 0 .3rem;">Status</p>' +
                '<span style="display:inline-flex;align-items:center;gap:.3rem;padding:.25rem .75rem;border-radius:9999px;font-size:.75rem;font-weight:700;text-transform:uppercase;letter-spacing:.04em;' + badgeStyle + '">' + sc.label + '</span>' +
            '</div>' +
        '</div>' +

        // Customer info
        '<div style="background:var(--bg-filter);border-radius:.625rem;padding:.875rem 1rem;">' +
            '<p style="font-size:.68rem;color:var(--text-muted);text-transform:uppercase;letter-spacing:.06em;margin:0 0 .5rem;">Customer</p>' +
            '<div style="display:flex;align-items:center;gap:.625rem;">' +
                '<div style="width:2.25rem;height:2.25rem;border-radius:50%;background:var(--accent);color:#fff;display:flex;align-items:center;justify-content:center;font-weight:700;font-size:.875rem;flex-shrink:0;">' + o.customer.charAt(0).toUpperCase() + '</div>' +
                '<div>' +
                    '<p style="font-weight:600;color:var(--text-strong);margin:0 0 .1rem;font-size:.875rem;">' + o.customer + '</p>' +
                    '<p style="color:var(--text-muted);font-size:.75rem;margin:0;">' + o.email + '</p>' +
                '</div>' +
            '</div>' +
        '</div>' +

        // Delivery address + date
        '<div style="display:grid;grid-template-columns:1fr 1fr;gap:.75rem;">' +
            '<div style="background:var(--bg-filter);border-radius:.625rem;padding:.875rem 1rem;">' +
                '<p style="font-size:.68rem;color:var(--text-muted);text-transform:uppercase;letter-spacing:.06em;margin:0 0 .3rem;">Delivery Address</p>' +
                '<p style="font-size:.8rem;color:var(--text-body);margin:0;line-height:1.4;">' + o.address + '</p>' +
            '</div>' +
            '<div style="background:var(--bg-filter);border-radius:.625rem;padding:.875rem 1rem;">' +
                '<p style="font-size:.68rem;color:var(--text-muted);text-transform:uppercase;letter-spacing:.06em;margin:0 0 .3rem;">Payment · Date</p>' +
                '<p style="font-size:.8rem;font-weight:600;color:var(--text-body);margin:0 0 .2rem;text-transform:capitalize;">' + o.payment + '</p>' +
                '<p style="font-size:.72rem;color:var(--text-muted);margin:0;">' + o.date + '</p>' +
            '</div>' +
        '</div>' +

        // Items
        '<div>' +
            '<p style="font-size:.68rem;color:var(--text-muted);text-transform:uppercase;letter-spacing:.06em;margin:0 0 .5rem;">Items Ordered</p>' +
            '<div style="background:var(--bg-filter);border-radius:.625rem;padding:.75rem 1rem;">' +
                itemsHtml +
                // Totals
                '<div style="display:flex;justify-content:space-between;padding:.5rem 0;font-size:.8rem;">' +
                    '<span style="color:var(--text-muted);">Subtotal</span><span style="color:var(--text-body);">₱' + Number(o.subtotal).toLocaleString() + '</span>' +
                '</div>' +
                '<div style="display:flex;justify-content:space-between;padding:.3rem 0;font-size:.8rem;">' +
                    '<span style="color:var(--text-muted);">Delivery Fee</span><span style="color:var(--text-body);">₱' + Number(o.delivery_fee).toLocaleString() + '</span>' +
                '</div>' +
                '<div style="display:flex;justify-content:space-between;padding:.5rem 0;border-top:1px solid var(--border-divider);margin-top:.25rem;">' +
                    '<span style="font-weight:700;color:var(--text-strong);">Total</span>' +
                    '<span style="font-weight:800;font-size:1rem;color:var(--accent);">₱' + Number(o.total).toLocaleString() + '</span>' +
                '</div>' +
            '</div>' +
        '</div>' +

        // Notes
        (o.notes ? '<div style="background:rgba(245,158,11,.06);border:1px solid rgba(245,158,11,.2);border-radius:.625rem;padding:.75rem 1rem;"><p style="font-size:.68rem;color:#d97706;text-transform:uppercase;letter-spacing:.06em;margin:0 0 .3rem;font-weight:700;">📝 Note from Customer</p><p style="font-size:.8rem;color:var(--text-body);margin:0;">' + o.notes + '</p></div>' : '');

    document.getElementById('odTitle').textContent = 'Order ' + o.order_number;
    document.getElementById('odBody').innerHTML = html;
    openModal('orderDetailModal');
    lucide.createIcons();
}
</script>

@endsection
