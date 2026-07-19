-- ============================================================
-- EUT Snack House - MILK TEAS Seed
-- Menu Special
-- 15 Flavors: Okinawa, Winter Melon, Chocolate, Matcha,
--             Dark Chocolate, Red Velvet, Java Chip, Hokkaido,
--             Cheesecake, Salted Caramel, Brown Sugar,
--             Cookies & Cream, Milk Chocolate, Vanilla, Caramel
-- 2 Sizes:   16oz = P39.00 | 22oz = P49.00 (+P10)
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - Milk Teas
--    id = 10 (susunod sa id=9)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(10, 'Milk Teas', 'milk-teas', 'cup-soda', '#a855f7', 'Premium milk teas in 15 amazing flavors – 16oz or 22oz!', 0, 10, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEM - Milk Tea (single item, flavor+size via modifiers)
--    id = 50 (susunod sa id=49)
--    Base price = 16oz price = P39.00
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(50, 10, 'Milk Tea',
 'Premium milk tea available in 15 flavors. Choose your flavor and size: 16oz (P39) or 22oz (P49).',
 39.00, NULL, 1, 0, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER GROUPS
--    id=63: Flavor (required)
--    id=64: Size   (required)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(63, 50, 'flavor',   'Flavor', 'Choose your milk tea flavor',    1, 1, 1, NOW(), NOW()),
(64, 50, 'modifier', 'Size',   '16oz (P39) or 22oz (P49)',       1, 1, 2, NOW(), NOW());

-- --------------------------------------------------------
-- 4. MODIFIER OPTIONS
--    ids 176-192 (susunod sa id=175)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- Flavors (group 63) — all same price, no adjustment
(176, 63, 'Okinawa',         'none', 0.00, 1, 1,  1, NOW(), NOW()),
(177, 63, 'Winter Melon',    'none', 0.00, 0, 1,  2, NOW(), NOW()),
(178, 63, 'Chocolate',       'none', 0.00, 0, 1,  3, NOW(), NOW()),
(179, 63, 'Matcha',          'none', 0.00, 0, 1,  4, NOW(), NOW()),
(180, 63, 'Dark Chocolate',  'none', 0.00, 0, 1,  5, NOW(), NOW()),
(181, 63, 'Red Velvet',      'none', 0.00, 0, 1,  6, NOW(), NOW()),
(182, 63, 'Java Chip',       'none', 0.00, 0, 1,  7, NOW(), NOW()),
(183, 63, 'Hokkaido',        'none', 0.00, 0, 1,  8, NOW(), NOW()),
(184, 63, 'Cheesecake',      'none', 0.00, 0, 1,  9, NOW(), NOW()),
(185, 63, 'Salted Caramel',  'none', 0.00, 0, 1, 10, NOW(), NOW()),
(186, 63, 'Brown Sugar',     'none', 0.00, 0, 1, 11, NOW(), NOW()),
(187, 63, 'Cookies & Cream', 'none', 0.00, 0, 1, 12, NOW(), NOW()),
(188, 63, 'Milk Chocolate',  'none', 0.00, 0, 1, 13, NOW(), NOW()),
(189, 63, 'Vanilla',         'none', 0.00, 0, 1, 14, NOW(), NOW()),
(190, 63, 'Caramel',         'none', 0.00, 0, 1, 15, NOW(), NOW()),

-- Size (group 64) — 16oz base, 22oz adds P10
(191, 64, '16oz',            'none',  0.00, 1, 1, 1, NOW(), NOW()),
(192, 64, '22oz',            'add',  10.00, 0, 1, 2, NOW(), NOW());
