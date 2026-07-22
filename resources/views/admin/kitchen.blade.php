@extends('admin.layout')
@section('title', 'Kitchen')

@push('head')
<style>
    .kitchen-board {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 1rem;
        min-height: calc(100vh - 220px);
    }
    @media (max-width: 1200px) {
        .kitchen-board { grid-template-columns: repeat(2, 1fr); }
    }
    @media (max-width: 640px) {
        .kitchen-board { grid-template-columns: 1fr; }
    }

    .kitchen-col {
        background: var(--bg-section);
        border: 1px solid var(--border-section);
        border-radius: 1rem;
        display: flex;
        flex-direction: column;
        overflow: hidden;
        min-height: 420px;
    }

    .kitchen-col-header {
        padding: 1rem 1.1rem;
        border-bottom: 1px solid var(--border-divider);
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: .5rem;
    }

    .kitchen-col-title {
        display: flex;
        align-items: center;
        gap: .5rem;
        font-size: .9rem;
        font-weight: 700;
        color: var(--text-strong);
        margin: 0;
    }

    .kitchen-col-count {
        min-width: 1.75rem;
        height: 1.75rem;
        border-radius: 9999px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: .75rem;
        font-weight: 800;
    }

    .kitchen-col-body {
        flex: 1;
        padding: .85rem;
        overflow-y: auto;
        display: flex;
        flex-direction: column;
        gap: .85rem;
    }

    .kitchen-col-body::-webkit-scrollbar { width: 4px; }
    .kitchen-col-body::-webkit-scrollbar-thumb { background: rgba(255,255,255,.12); border-radius: 99px; }

    .k-order-card {
        background: var(--bg-card);
        border: 1px solid var(--border-card);
        border-radius: .875rem;
        overflow: hidden;
        transition: transform .15s, box-shadow .15s;
        animation: kSlideIn .25s ease;
    }
    .k-order-card:hover { transform: translateY(-1px); box-shadow: 0 8px 24px rgba(0,0,0,.25); }
    .k-order-card.is-urgent { border-color: rgba(239,68,68,.45); box-shadow: 0 0 0 1px rgba(239,68,68,.15); }
    .k-order-card.is-picked-up { opacity: .75; border-color: rgba(139,92,246,.35); }

    .k-delivery-banner {
        margin: 0;
        padding: .55rem 1rem;
        font-size: .72rem;
        font-weight: 800;
        letter-spacing: .03em;
        text-transform: uppercase;
        border-bottom: 1px solid var(--border-divider);
    }

    @keyframes kSlideIn {
        from { opacity: 0; transform: translateY(8px); }
        to   { opacity: 1; transform: translateY(0); }
    }

    .k-card-top {
        padding: .85rem 1rem .65rem;
        border-bottom: 1px solid var(--border-divider);
        display: flex;
        align-items: flex-start;
        justify-content: space-between;
        gap: .5rem;
    }

    .k-order-num {
        font-family: monospace;
        font-size: 1.05rem;
        font-weight: 800;
        color: var(--accent);
        letter-spacing: .02em;
    }

    .k-elapsed {
        font-size: .68rem;
        font-weight: 700;
        padding: .2rem .55rem;
        border-radius: 9999px;
        white-space: nowrap;
    }

    .k-customer {
        font-size: .78rem;
        color: var(--text-muted);
        margin-top: .15rem;
    }

    .k-items {
        padding: .65rem 1rem;
        display: flex;
        flex-direction: column;
        gap: .55rem;
    }

    .k-item {
        display: flex;
        align-items: flex-start;
        gap: .6rem;
    }

    .k-item-img {
        width: 42px;
        height: 42px;
        border-radius: .5rem;
        object-fit: cover;
        flex-shrink: 0;
        border: 1px solid var(--border-divider);
    }

    .k-item-qty {
        font-size: .85rem;
        font-weight: 800;
        color: #facc15;
        min-width: 1.5rem;
    }

    .k-item-name {
        font-size: .88rem;
        font-weight: 700;
        color: var(--text-strong);
        line-height: 1.35;
    }

    .k-modifiers {
        display: flex;
        flex-wrap: wrap;
        gap: .25rem;
        margin-top: .25rem;
    }

    .k-mod-tag {
        font-size: .62rem;
        font-weight: 600;
        padding: .15rem .45rem;
        border-radius: .35rem;
        background: rgba(59,130,246,.12);
        color: #60a5fa;
        border: 1px solid rgba(59,130,246,.2);
    }

    .k-notes {
        margin: 0 1rem .65rem;
        padding: .55rem .7rem;
        border-radius: .5rem;
        background: rgba(245,158,11,.08);
        border: 1px solid rgba(245,158,11,.2);
        font-size: .72rem;
        color: #fbbf24;
        line-height: 1.45;
    }

    .k-actions {
        padding: .65rem 1rem .85rem;
        display: flex;
        gap: .5rem;
    }

    .k-btn {
        flex: 1;
        border: none;
        border-radius: .55rem;
        padding: .6rem .75rem;
        font-size: .78rem;
        font-weight: 700;
        cursor: pointer;
        transition: all .15s;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: .35rem;
    }
    .k-btn:disabled { opacity: .55; cursor: not-allowed; }

    .k-btn-accept  { background: #16a34a; color: #fff; }
    .k-btn-accept:hover:not(:disabled)  { background: #15803d; }
    .k-btn-cook    { background: #2563eb; color: #fff; }
    .k-btn-cook:hover:not(:disabled)    { background: #1d4ed8; }
    .k-btn-ready   { background: #d97706; color: #fff; }
    .k-btn-ready:hover:not(:disabled)   { background: #b45309; }

    .k-empty {
        text-align: center;
        padding: 2.5rem 1rem;
        color: var(--text-muted);
        font-size: .8rem;
    }

    .k-empty-icon { font-size: 2rem; margin-bottom: .5rem; opacity: .5; }

    .kitchen-toolbar {
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        justify-content: space-between;
        gap: 1rem;
        margin-bottom: 1.25rem;
    }

    .kitchen-live {
        display: inline-flex;
        align-items: center;
        gap: .45rem;
        font-size: .75rem;
        color: var(--text-muted);
    }

    .live-dot {
        width: 8px;
        height: 8px;
        border-radius: 50%;
        background: #22c55e;
        animation: pulse 1.5s infinite;
    }
    @keyframes pulse {
        0%, 100% { opacity: 1; transform: scale(1); }
        50%      { opacity: .5; transform: scale(.85); }
    }

    body.kitchen-fullscreen .admin-nav { display: none; }
    body.kitchen-fullscreen .admin-content { max-width: none; padding: 1rem; }
    body.kitchen-fullscreen .kitchen-hide-fs { display: none; }
</style>
@endpush

@section('content')

<div class="kitchen-toolbar">
    <div style="display:flex;align-items:center;gap:.75rem;">
        <div style="width:2.75rem;height:2.75rem;border-radius:.75rem;background:rgba(217,119,6,.12);display:flex;align-items:center;justify-content:center;">
            <i data-lucide="chef-hat" style="width:1.3rem;height:1.3rem;color:#d97706;stroke-width:2;"></i>
        </div>
        <div>
            <h1 style="margin:0 0 .15rem;font-family:'Playfair Display',serif;font-size:1.5rem;font-weight:700;color:var(--text-heading);">Kitchen Display</h1>
            <p style="margin:0;font-size:.875rem;color:var(--text-muted);">Track orders from cooking through ready for delivery and rider pickup.</p>
        </div>
    </div>
    <div style="display:flex;align-items:center;gap:.65rem;flex-wrap:wrap;">
        <span class="kitchen-live"><span class="live-dot"></span> Auto-refresh <span id="refreshCountdown">15</span>s</span>
        <button type="button" class="btn-ghost" style="font-size:.75rem;" onclick="refreshKitchen(true)">
            <i data-lucide="refresh-cw" style="width:.8rem;height:.8rem;stroke-width:2;"></i> Refresh
        </button>
        <button type="button" class="btn-ghost" style="font-size:.75rem;" onclick="toggleKitchenFullscreen()">
            <i data-lucide="maximize-2" style="width:.8rem;height:.8rem;stroke-width:2;"></i> Fullscreen
        </button>
    </div>
</div>

<div class="kitchen-board" id="kitchenBoard">
    {{-- New Orders --}}
    <div class="kitchen-col" data-col="new">
        <div class="kitchen-col-header" style="background:rgba(245,158,11,.06);">
            <h2 class="kitchen-col-title">
                <i data-lucide="bell" style="width:1rem;height:1rem;color:#f59e0b;stroke-width:2;"></i>
                New Orders
            </h2>
            <span class="kitchen-col-count" style="background:rgba(245,158,11,.15);color:#f59e0b;" id="count-new">{{ $newOrders->count() }}</span>
        </div>
        <div class="kitchen-col-body" id="col-new">
            @forelse($newOrders as $order)
                @include('admin.partials.kitchen-order-card', ['order' => $order, 'column' => 'new'])
            @empty
                <div class="k-empty"><div class="k-empty-icon">🔔</div>No new orders</div>
            @endforelse
        </div>
    </div>

    {{-- Queue --}}
    <div class="kitchen-col" data-col="queued">
        <div class="kitchen-col-header" style="background:rgba(59,130,246,.06);">
            <h2 class="kitchen-col-title">
                <i data-lucide="list-ordered" style="width:1rem;height:1rem;color:#3b82f6;stroke-width:2;"></i>
                Queue
            </h2>
            <span class="kitchen-col-count" style="background:rgba(59,130,246,.15);color:#3b82f6;" id="count-queued">{{ $queuedOrders->count() }}</span>
        </div>
        <div class="kitchen-col-body" id="col-queued">
            @forelse($queuedOrders as $order)
                @include('admin.partials.kitchen-order-card', ['order' => $order, 'column' => 'queued'])
            @empty
                <div class="k-empty"><div class="k-empty-icon">📋</div>Queue is empty</div>
            @endforelse
        </div>
    </div>

    {{-- Cooking --}}
    <div class="kitchen-col" data-col="cooking">
        <div class="kitchen-col-header" style="background:rgba(220,38,38,.06);">
            <h2 class="kitchen-col-title">
                <i data-lucide="flame" style="width:1rem;height:1rem;color:#dc2626;stroke-width:2;"></i>
                Cooking
            </h2>
            <span class="kitchen-col-count" style="background:rgba(220,38,38,.15);color:#dc2626;" id="count-cooking">{{ $cookingOrders->count() }}</span>
        </div>
        <div class="kitchen-col-body" id="col-cooking">
            @forelse($cookingOrders as $order)
                @include('admin.partials.kitchen-order-card', ['order' => $order, 'column' => 'cooking'])
            @empty
                <div class="k-empty"><div class="k-empty-icon">🍳</div>Nothing cooking</div>
            @endforelse
        </div>
    </div>

    {{-- Ready for Delivery --}}
    <div class="kitchen-col" data-col="ready">
        <div class="kitchen-col-header" style="background:rgba(16,185,129,.06);">
            <h2 class="kitchen-col-title">
                <i data-lucide="package-check" style="width:1rem;height:1rem;color:#10b981;stroke-width:2;"></i>
                Ready for Delivery
            </h2>
            <span class="kitchen-col-count" style="background:rgba(16,185,129,.15);color:#10b981;" id="count-ready">{{ $readyOrders->count() }}</span>
        </div>
        <div class="kitchen-col-body" id="col-ready">
            @forelse($readyOrders as $order)
                @include('admin.partials.kitchen-order-card', ['order' => $order, 'column' => 'ready'])
            @empty
                <div class="k-empty"><div class="k-empty-icon">📦</div>No orders ready for delivery</div>
            @endforelse
        </div>
    </div>
</div>

@endsection

@push('scripts')
<script>
const CSRF_TOKEN = document.querySelector('meta[name="csrf-token"]').content;
const KITCHEN_URL = '{{ route('admin.kitchen.orders') }}';
const ACCEPT_URL  = id => `/admin/orders/${id}/accept`;
const START_URL   = id => `/admin/kitchen/orders/${id}/start`;
const READY_URL   = id => `/admin/kitchen/orders/${id}/ready`;

let refreshTimer = 15;
let countdownTimer = null;
let lastNewCount = {{ $newOrders->count() }};

function elapsedBadge(mins) {
    let bg, color, label;
    if (mins >= 20)      { bg = 'rgba(239,68,68,.15)';  color = '#ef4444'; label = mins + 'm — URGENT'; }
    else if (mins >= 10) { bg = 'rgba(245,158,11,.15)'; color = '#f59e0b'; label = mins + 'm'; }
    else                 { bg = 'rgba(255,255,255,.06)'; color = 'var(--text-muted)'; label = mins + 'm ago'; }
    return `<span class="k-elapsed" style="background:${bg};color:${color};">${label}</span>`;
}

function renderItems(items) {
    return items.map(item => {
        const mods = (item.modifiers || []).map(m =>
            `<span class="k-mod-tag">${escapeHtml(m)}</span>`
        ).join('');
        return `
            <div class="k-item">
                <img class="k-item-img" src="${item.image}" alt="">
                <div style="flex:1;min-width:0;">
                    <div style="display:flex;align-items:baseline;gap:.4rem;">
                        <span class="k-item-qty">${item.qty}×</span>
                        <span class="k-item-name">${escapeHtml(item.name)}</span>
                    </div>
                    ${mods ? `<div class="k-modifiers">${mods}</div>` : ''}
                </div>
            </div>`;
    }).join('');
}

function renderActions(order, column) {
    if (column === 'new') {
        return `<button class="k-btn k-btn-accept" onclick="kitchenAction('accept', ${order.id}, this)">✓ Accept</button>`;
    }
    if (column === 'queued') {
        return `<button class="k-btn k-btn-cook" onclick="kitchenAction('start', ${order.id}, this)">🍳 Start Cooking</button>`;
    }
    if (column === 'cooking') {
        return `<button class="k-btn k-btn-ready" onclick="kitchenAction('ready', ${order.id}, this)">✅ Mark Ready</button>`;
    }
    const detail = order.delivery_detail || 'Ready for delivery';
    const color = order.delivery_color || '#10b981';
    return `<div style="text-align:center;width:100%;font-size:.72rem;color:${color};font-weight:700;padding:.4rem;line-height:1.45;">${escapeHtml(detail)}</div>`;
}

function renderOrderCard(order, column) {
    const urgent = order.elapsed_mins >= 20 && column !== 'ready' ? ' is-urgent' : '';
    const pickedUp = column === 'ready' && order.delivery_status === 'picked_up' ? ' is-picked-up' : '';
    const notes = order.notes
        ? `<div class="k-notes">📝 ${escapeHtml(order.notes)}</div>`
        : '';

    const deliveryBanner = column === 'ready'
        ? `<div class="k-delivery-banner" style="background:${order.delivery_bg || 'rgba(16,185,129,.14)'};color:${order.delivery_color || '#10b981'};">${escapeHtml(order.delivery_label || 'Ready for Delivery')}</div>`
        : '';

    const elapsed = column !== 'ready'
        ? elapsedBadge(order.elapsed_mins)
        : '';

    return `
        <div class="k-order-card${urgent}${pickedUp}" data-order-id="${order.id}">
            ${deliveryBanner}
            <div class="k-card-top">
                <div>
                    <div class="k-order-num">${escapeHtml(order.order_number)}</div>
                    <div class="k-customer">${escapeHtml(order.customer)} · ${order.placed_at}</div>
                </div>
                ${elapsed}
            </div>
            <div class="k-items">${renderItems(order.items)}</div>
            ${notes}
            <div class="k-actions">${renderActions(order, column)}</div>
        </div>`;
}

function renderColumn(col, orders) {
    const el = document.getElementById('col-' + col);
    const countEl = document.getElementById('count-' + col);
    if (!el) return;

    countEl.textContent = orders.length;

    if (!orders.length) {
        const emptyMsg = { new: 'No new orders', queued: 'Queue is empty', cooking: 'Nothing cooking', ready: 'No orders ready for delivery' };
        const emptyIcon = { new: '🔔', queued: '📋', cooking: '🍳', ready: '📦' };
        el.innerHTML = `<div class="k-empty"><div class="k-empty-icon">${emptyIcon[col]}</div>${emptyMsg[col]}</div>`;
        return;
    }

    el.innerHTML = orders.map(o => renderOrderCard(o, col)).join('');
}

function escapeHtml(str) {
    if (!str) return '';
    return String(str)
        .replace(/&/g, '&amp;')
        .replace(/</g, '&lt;')
        .replace(/>/g, '&gt;')
        .replace(/"/g, '&quot;');
}

async function kitchenAction(action, orderId, btn) {
    const urls = {
        accept: ACCEPT_URL(orderId),
        start:  START_URL(orderId),
        ready:  READY_URL(orderId),
    };

    btn.disabled = true;
    btn.textContent = '…';

    try {
        const res = await fetch(urls[action], {
            method: 'POST',
            headers: {
                'X-CSRF-TOKEN': CSRF_TOKEN,
                'Accept': 'application/json',
                'Content-Type': 'application/json',
            },
        });
        const data = await res.json();
        if (!data.success) {
            alert(data.message || 'Action failed.');
            btn.disabled = false;
            return;
        }
        await refreshKitchen(true);
    } catch (e) {
        alert('Network error. Please try again.');
        btn.disabled = false;
    }
}

async function refreshKitchen(manual) {
    try {
        const res = await fetch(KITCHEN_URL, { headers: { 'Accept': 'application/json' } });
        const data = await res.json();

        const newCount = data.new.length;
        if (newCount > lastNewCount) {
            playNewOrderSound();
        }
        lastNewCount = newCount;

        renderColumn('new', data.new);
        renderColumn('queued', data.queued);
        renderColumn('cooking', data.cooking);
        renderColumn('ready', data.ready);

        if (window.lucide) lucide.createIcons();

        refreshTimer = 15;
    } catch (e) {
        if (manual) alert('Could not refresh kitchen board.');
    }
}

function playNewOrderSound() {
    try {
        const ctx = new (window.AudioContext || window.webkitAudioContext)();
        [880, 1100].forEach((freq, i) => {
            const osc = ctx.createOscillator();
            const gain = ctx.createGain();
            osc.connect(gain);
            gain.connect(ctx.destination);
            osc.frequency.value = freq;
            gain.gain.value = 0.08;
            osc.start(ctx.currentTime + i * 0.15);
            osc.stop(ctx.currentTime + i * 0.15 + 0.12);
        });
    } catch (e) {}
}

function toggleKitchenFullscreen() {
    document.body.classList.toggle('kitchen-fullscreen');
}

function startCountdown() {
    clearInterval(countdownTimer);
    countdownTimer = setInterval(() => {
        refreshTimer--;
        const el = document.getElementById('refreshCountdown');
        if (el) el.textContent = refreshTimer;
        if (refreshTimer <= 0) {
            refreshKitchen(false);
        }
    }, 1000);
}

document.addEventListener('DOMContentLoaded', () => {
    if (window.lucide) lucide.createIcons();
    startCountdown();
});
</script>
@endpush
