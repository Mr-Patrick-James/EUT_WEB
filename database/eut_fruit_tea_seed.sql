-- ============================================================
-- EUT Snack House - FRUIT TEA Seed
-- Menu Special
-- 6 Flavors: Strawberry, Taro, Melon, Mango, Lychee, Passionfruit
-- 2 Sizes:   16oz = P39.00 | 22oz = P49.00 (+P10)
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - Fruit Tea
--    id = 9 (susunod sa id=8)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(9, 'Fruit Tea', 'fruit-tea', 'cup-soda', '#84cc16', 'Refreshing fruit teas in 6 flavors – 16oz or 22oz!', 0, 9, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEM - Fruit Tea (single item, flavor+size via modifiers)
--    id = 49 (susunod sa id=48)
--    Base price = 16oz price = P39.00
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(49, 9, 'Fruit Tea',
 'Refreshing fruit tea available in 6 flavors. Choose your flavor and size: 16oz (P39) or 22oz (P49).',
 39.00, NULL, 1, 0, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER GROUPS
--    id=61: Flavor (required)
--    id=62: Size   (required)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(61, 49, 'flavor',   'Flavor', 'Choose your fruit tea flavor',   1, 1, 1, NOW(), NOW()),
(62, 49, 'modifier', 'Size',   '16oz (P39) or 22oz (P49)',       1, 1, 2, NOW(), NOW());

-- --------------------------------------------------------
-- 4. MODIFIER OPTIONS
--    ids 168-175 (susunod sa id=167)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- Flavors (group 61) — all same price, no adjustment
(168, 61, 'Strawberry',   'none', 0.00, 1, 1, 1, NOW(), NOW()),
(169, 61, 'Taro',         'none', 0.00, 0, 1, 2, NOW(), NOW()),
(170, 61, 'Melon',        'none', 0.00, 0, 1, 3, NOW(), NOW()),
(171, 61, 'Mango',        'none', 0.00, 0, 1, 4, NOW(), NOW()),
(172, 61, 'Lychee',       'none', 0.00, 0, 1, 5, NOW(), NOW()),
(173, 61, 'Passionfruit', 'none', 0.00, 0, 1, 6, NOW(), NOW()),

-- Size (group 62) — 16oz base, 22oz adds P10
(174, 62, '16oz',         'none', 0.00,  1, 1, 1, NOW(), NOW()),
(175, 62, '22oz',         'add',  10.00, 0, 1, 2, NOW(), NOW());
