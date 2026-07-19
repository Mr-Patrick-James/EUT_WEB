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
    <div class="filter-bar">
        <div style="display:flex;align-items:center;gap:.5rem;">
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
@endsection
