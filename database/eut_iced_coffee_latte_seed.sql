-- ============================================================
-- EUT Snack House - ICED COFFEE LATTE Seed
-- Menu Special - All items P79.00
-- 11 Variants: Almond, Caramel, Matcha, Salted Caramel,
--              Vanilla, Butterscotch, Brown Sugar,
--              Strawberry, Cookies & Cream, Ube, Hazelnut
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - Iced Coffee Latte
--    id = 11 (susunod sa id=10)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(11, 'Iced Coffee Latte', 'iced-coffee-latte', 'coffee', '#92400e', 'Premium iced coffee lattes in 11 flavors – all at P79!', 0, 11, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEM - Iced Coffee Latte
--    id = 51 (susunod sa id=50)
--    Price = P79.00 (all variants same price)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(51, 11, 'Iced Coffee Latte',
 'Premium iced coffee latte available in 11 delicious flavors – all at P79. Choose your flavor!',
 79.00, NULL, 1, 0, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER GROUP
--    id=65: Flavor (required)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(65, 51, 'flavor', 'Flavor', 'Choose your iced coffee latte flavor', 1, 1, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 4. MODIFIER OPTIONS - 11 flavors
--    ids 193-203 (susunod sa id=192)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(193, 65, 'Iced Almond Latte',          'none', 0.00, 1, 1,  1, NOW(), NOW()),
(194, 65, 'Iced Caramel Latte',         'none', 0.00, 0, 1,  2, NOW(), NOW()),
(195, 65, 'Iced Matcha Latte',          'none', 0.00, 0, 1,  3, NOW(), NOW()),
(196, 65, 'Iced Salted Caramel Latte',  'none', 0.00, 0, 1,  4, NOW(), NOW()),
(197, 65, 'Iced Vanilla Latte',         'none', 0.00, 0, 1,  5, NOW(), NOW()),
(198, 65, 'Iced Butterscotch Latte',    'none', 0.00, 0, 1,  6, NOW(), NOW()),
(199, 65, 'Iced Brown Sugar Latte',     'none', 0.00, 0, 1,  7, NOW(), NOW()),
(200, 65, 'Iced Strawberry Latte',      'none', 0.00, 0, 1,  8, NOW(), NOW()),
(201, 65, 'Iced Cookies & Cream Latte', 'none', 0.00, 0, 1,  9, NOW(), NOW()),
(202, 65, 'Iced Ube Latte',             'none', 0.00, 0, 1, 10, NOW(), NOW()),
(203, 65, 'Iced Hazelnut Latte',        'none', 0.00, 0, 1, 11, NOW(), NOW());
