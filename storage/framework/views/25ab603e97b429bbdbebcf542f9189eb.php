<?php $__env->startSection('title', 'Dashboard'); ?>

<?php $__env->startSection('content'); ?>
<div class="page-header">
    <h1>Dashboard</h1>
    <p>Welcome back, <?php echo e(auth()->user()->name); ?>. Here's what's happening at EUT today.</p>
</div>


<div class="grid grid-cols-2 lg:grid-cols-5 gap-4 mb-8">
    <?php
        $statCards = [
            [
                'label'  => 'Total Users',
                'value'  => $stats['total_users'],
                'sub'    => 'Registered accounts',
                'icon'   => 'users',
                'color'  => '#6366f1',   /* indigo */
                'bg'     => 'rgba(99,102,241,0.12)',
            ],
            [
                'label'  => 'Admins',
                'value'  => $stats['admin_users'],
                'sub'    => 'Admin accounts',
                'icon'   => 'shield-check',
                'color'  => '#dc2626',   /* red — always */
                'bg'     => 'rgba(220,38,38,0.10)',
            ],
            [
                'label'  => 'Menu Items',
                'value'  => $stats['total_items'],
                'sub'    => 'Across all categories',
                'icon'   => 'utensils',
                'color'  => '#f59e0b',   /* amber */
                'bg'     => 'rgba(245,158,11,0.12)',
            ],
            [
                'label'  => 'Categories',
                'value'  => $stats['total_categories'],
                'sub'    => 'Active categories',
                'icon'   => 'layout-grid',
                'color'  => '#10b981',   /* emerald */
                'bg'     => 'rgba(16,185,129,0.12)',
            ],
            [
                'label'  => 'Featured',
                'value'  => $stats['featured_items'],
                'sub'    => 'Highlighted items',
                'icon'   => 'star',
                'color'  => '#f59e0b',   /* amber */
                'bg'     => 'rgba(245,158,11,0.12)',
            ],
        ];
    ?>

    <?php $__currentLoopData = $statCards; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="stat-card" style="position:relative;overflow:hidden;">
        
        <div style="width:2.5rem;height:2.5rem;border-radius:.75rem;background:<?php echo e($s['bg']); ?>;display:flex;align-items:center;justify-content:center;margin-bottom:.875rem;">
            <i data-lucide="<?php echo e($s['icon']); ?>" style="width:1.25rem;height:1.25rem;color:<?php echo e($s['color']); ?>;stroke-width:2;"></i>
        </div>
        <p style="font-size:.7rem;color:var(--text-muted);text-transform:uppercase;letter-spacing:.07em;margin:0 0 .3rem;font-weight:600;"><?php echo e($s['label']); ?></p>
        <p style="font-size:2rem;font-weight:800;color:<?php echo e($s['color']); ?>;margin:0 0 .2rem;line-height:1;"><?php echo e($s['value']); ?></p>
        <p style="font-size:.7rem;color:var(--text-muted);margin:0;"><?php echo e($s['sub']); ?></p>
        
        <div style="position:absolute;bottom:-1rem;right:-1rem;width:4rem;height:4rem;border-radius:50%;background:<?php echo e($s['bg']); ?>;filter:blur(12px);pointer-events:none;"></div>
    </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>


<div class="grid lg:grid-cols-2 gap-6 mb-8">

    
    <div class="section-card">
        <div class="px-5 py-4 card-header-border" style="display:flex;align-items:center;justify-content:space-between;">
            <div style="display:flex;align-items:center;gap:.5rem;">
                <i data-lucide="pie-chart" style="width:1rem;height:1rem;color:var(--accent);stroke-width:2;"></i>
                <h2 style="font-size:.875rem;font-weight:600;color:var(--text-strong);margin:0;">Menu by Category</h2>
            </div>
            <a href="<?php echo e(route('admin.menu-items')); ?>" style="font-size:.7rem;color:var(--accent);text-decoration:none;font-weight:500;">View all →</a>
        </div>
        <div class="p-5" style="display:flex;flex-direction:column;gap:1rem;">
            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div style="display:flex;align-items:center;gap:.875rem;">
                <div style="width:2rem;height:2rem;border-radius:.5rem;background:<?php echo e($cat['hex']); ?>18;display:flex;align-items:center;justify-content:center;flex-shrink:0;">
                    <i data-lucide="<?php echo e($cat['icon']); ?>" style="width:.9rem;height:.9rem;color:<?php echo e($cat['hex']); ?>;stroke-width:2.5;"></i>
                </div>
                <div style="flex:1;min-width:0;">
                    <div style="display:flex;justify-content:space-between;align-items:center;margin-bottom:.3rem;">
                        <span style="font-size:.8rem;font-weight:500;color:var(--text-strong);"><?php echo e($cat['name']); ?></span>
                        <span style="font-size:.8rem;font-weight:700;color:<?php echo e($cat['hex']); ?>;"><?php echo e($cat['count']); ?></span>
                    </div>
                    <div style="height:5px;background:var(--border-card);border-radius:9999px;overflow:hidden;">
                        <div style="height:100%;border-radius:9999px;background:<?php echo e($cat['hex']); ?>;width:<?php echo e($stats['total_items'] > 0 ? min(100,($cat['count']/$stats['total_items'])*100) : 0); ?>%;transition:width .6s ease;"></div>
                    </div>
                </div>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>

    
    <div class="section-card">
        <div class="px-5 py-4 card-header-border" style="display:flex;justify-content:space-between;align-items:center;">
            <div style="display:flex;align-items:center;gap:.5rem;">
                <i data-lucide="users-round" style="width:1rem;height:1rem;color:var(--accent);stroke-width:2;"></i>
                <h2 style="font-size:.875rem;font-weight:600;color:var(--text-strong);margin:0;">Recent Users</h2>
            </div>
            <a href="<?php echo e(route('admin.users')); ?>" style="font-size:.7rem;color:var(--accent);text-decoration:none;font-weight:500;">View all →</a>
        </div>
        <table class="admin-table">
            <thead>
                <tr><th>Name</th><th>Email</th><th>Role</th><th>Joined</th></tr>
            </thead>
            <tbody>
                <?php $__empty_1 = true; $__currentLoopData = $recent_users; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $user): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                <tr>
                    <td>
                        <div style="display:flex;align-items:center;gap:.5rem;">
                            <?php if($user->avatar): ?>
                                <img src="<?php echo e($user->avatar); ?>" class="w-7 h-7 rounded-full object-cover" style="border:1px solid var(--border-card);" alt="">
                            <?php else: ?>
                                <div class="w-7 h-7 rounded-full flex items-center justify-center font-bold text-xs shrink-0"
                                     style="background:var(--accent);color:#fff;">
                                    <?php echo e(strtoupper(substr($user->name,0,1))); ?>

                                </div>
                            <?php endif; ?>
                            <span style="font-weight:500;color:var(--text-strong);font-size:.875rem;"><?php echo e($user->name); ?></span>
                        </div>
                    </td>
                    <td style="color:var(--text-muted);font-size:.8rem;"><?php echo e($user->email); ?></td>
                    <td><span class="badge <?php echo e($user->role==='admin' ? 'badge-admin' : 'badge-user'); ?>"><?php echo e($user->role ?? 'user'); ?></span></td>
                    <td style="color:var(--text-muted);font-size:.75rem;"><?php echo e($user->created_at->format('M d, Y')); ?></td>
                </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                <tr><td colspan="4" style="text-align:center;color:var(--text-muted);padding:1.5rem;">No users yet.</td></tr>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
</div>


<div class="section-card">
    <div class="px-5 py-4 card-header-border" style="display:flex;align-items:center;gap:.5rem;">
        <i data-lucide="zap" style="width:1rem;height:1rem;color:var(--accent);stroke-width:2;"></i>
        <h2 style="font-size:.875rem;font-weight:600;color:var(--text-strong);margin:0;">Quick Actions</h2>
    </div>
    <div class="p-5 grid grid-cols-2 md:grid-cols-4 gap-3">
        <?php
            $actions = [
                ['href'=>route('admin.users'),      'icon'=>'users',        'label'=>'Manage Users',  'color'=>'#6366f1','bg'=>'rgba(99,102,241,.10)'],
                ['href'=>route('admin.menu-items'), 'icon'=>'utensils',     'label'=>'Menu Items',    'color'=>'#f59e0b','bg'=>'rgba(245,158,11,.10)'],
                ['href'=>route('admin.orders'),     'icon'=>'shopping-bag', 'label'=>'View Orders',   'color'=>'#10b981','bg'=>'rgba(16,185,129,.10)'],
                ['href'=>route('admin.settings'),   'icon'=>'settings-2',   'label'=>'Settings',      'color'=>'#94a3b8','bg'=>'rgba(148,163,184,.10)'],
            ];
        ?>
        <?php $__currentLoopData = $actions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $a): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <a href="<?php echo e($a['href']); ?>"
           style="display:flex;flex-direction:column;align-items:center;gap:.625rem;padding:1.25rem 1rem;border-radius:.875rem;border:1px solid var(--border-card);text-decoration:none;transition:all .2s;background:transparent;"
           onmouseenter="this.style.borderColor='<?php echo e($a['color']); ?>44';this.style.background='<?php echo e($a['bg']); ?>';this.style.transform='translateY(-2px)';this.style.boxShadow='0 6px 20px <?php echo e($a['color']); ?>22';"
           onmouseleave="this.style.borderColor='var(--border-card)';this.style.background='transparent';this.style.transform='none';this.style.boxShadow='none';">
            <div style="width:2.75rem;height:2.75rem;border-radius:.75rem;background:<?php echo e($a['bg']); ?>;display:flex;align-items:center;justify-content:center;transition:background .2s;">
                <i data-lucide="<?php echo e($a['icon']); ?>" style="width:1.25rem;height:1.25rem;color:<?php echo e($a['color']); ?>;stroke-width:2;"></i>
            </div>
            <span style="font-size:.75rem;font-weight:600;color:var(--text-subtle);text-align:center;transition:color .2s;"><?php echo e($a['label']); ?></span>
        </a>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layout', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\Users\patri\Desktop\EUT_WEB\resources\views/admin/dashboard.blade.php ENDPATH**/ ?>