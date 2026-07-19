-- ============================================================
-- EUT Snack House - SWEETS CORNER Seed
-- Menu Special - Individual sweet dessert items
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - Sweets Corner
--    id = 7 (susunod sa id=6)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(7, 'Sweets Corner', 'sweets-corner', 'ice-cream', '#ec4899', 'Sweet treats & desserts – Halo-Halo, Con-Yelo, Pandan & more!', 0, 7, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS - 9 items
--    ids 28-36 (susunod sa id=27)
--    Base price = Small price for items with S/L sizes
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(28, 7, 'Classic Halo-Halo',   'Classic Filipino halo-halo with mixed ingredients, shaved ice & milk',           99.00,  NULL, 1, 0, 1, NOW(), NOW()),
(29, 7, 'Special Halo-Halo',   'Upgraded halo-halo with premium toppings, leche flan & ube ice cream',          139.00,  NULL, 1, 0, 2, NOW(), NOW()),
(30, 7, 'Halo-Halong E.U.T.',  'EUT signature halo-halo – the ultimate halo-halo experience!',                  199.00,  NULL, 1, 0, 3, NOW(), NOW()),
(31, 7, 'Leche Flan',          'Creamy Filipino-style leche flan. Choose size: Small (S) or Large (L)',          35.00,  NULL, 0, 0, 4, NOW(), NOW()),
(32, 7, 'Mais Con-Yelo',       'Sweet corn with shaved ice & milk. Choose size: Small (S) or Large (L)',         89.00,  NULL, 0, 0, 5, NOW(), NOW()),
(33, 7, 'Mango Tappioca',      'Fresh mango with tapioca pearls. Choose size: Small (S) or Large (L)',           99.00,  NULL, 0, 0, 6, NOW(), NOW()),
(34, 7, 'Buko Pandan',         'Refreshing young coconut & pandan dessert. Choose size: Small (S) or Large (L)', 99.00,  NULL, 0, 0, 7, NOW(), NOW()),
(35, 7, 'Saging Con-Yelo',     'Banana with shaved ice & sweet milk. Choose size: Small (S) or Large (L)',       79.00,  NULL, 0, 0, 8, NOW(), NOW()),
(36, 7, 'Vegetable Salad',     'Fresh & healthy vegetable salad with special dressing',                         139.00,  NULL, 0, 0, 9, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER GROUPS - Size (S/L) for items with 2 sizes
--    ids 56-60 (susunod sa id=55)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(56, 31, 'modifier', 'Size', 'Small (P35) or Large (P90)',   1, 1, 1, NOW(), NOW()),
(57, 32, 'modifier', 'Size', 'Small (P89) or Large (P129)',  1, 1, 1, NOW(), NOW()),
(58, 33, 'modifier', 'Size', 'Small (P99) or Large (P139)',  1, 1, 1, NOW(), NOW()),
(59, 34, 'modifier', 'Size', 'Small (P99) or Large (P129)',  1, 1, 1, NOW(), NOW()),
(60, 35, 'modifier', 'Size', 'Small (P79) or Large (P129)',  1, 1, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 4. MODIFIER OPTIONS - S (default/base) and L (+adjustment)
--    ids 158-167 (susunod sa id=157)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- Leche Flan: S=P35 (base), L=P90 (+55)
(158, 56, 'Small',  'none', 0.00,  1, 1, 1, NOW(), NOW()),
(159, 56, 'Large',  'add',  55.00, 0, 1, 2, NOW(), NOW()),

-- Mais Con-Yelo: S=P89 (base), L=P129 (+40)
(160, 57, 'Small',  'none', 0.00,  1, 1, 1, NOW(), NOW()),
(161, 57, 'Large',  'add',  40.00, 0, 1, 2, NOW(), NOW()),

-- Mango Tappioca: S=P99 (base), L=P139 (+40)
(162, 58, 'Small',  'none', 0.00,  1, 1, 1, NOW(), NOW()),
(163, 58, 'Large',  'add',  40.00, 0, 1, 2, NOW(), NOW()),

-- Buko Pandan: S=P99 (base), L=P129 (+30)
(164, 59, 'Small',  'none', 0.00,  1, 1, 1, NOW(), NOW()),
(165, 59, 'Large',  'add',  30.00, 0, 1, 2, NOW(), NOW()),

-- Saging Con-Yelo: S=P79 (base), L=P129 (+50)
(166, 60, 'Small',  'none', 0.00,  1, 1, 1, NOW(), NOW()),
(167, 60, 'Large',  'add',  50.00, 0, 1, 2, NOW(), NOW());
