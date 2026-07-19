-- ============================================================
-- EUT Snack House - ICED COFFEE MACCHIATO Seed
-- Menu Special - All items P79.00
-- 13 Variants: Almond, Caramel, Salted Caramel,
--              Chocolate Peppermint, Vanilla, Hazelnut,
--              Butterscotch, Matcha, Brown Sugar,
--              Strawberry, Ube, Taro, Cookies & Cream
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - Iced Coffee Macchiato
--    id = 12 (susunod sa id=11)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(12, 'Iced Coffee Macchiato', 'iced-coffee-macchiato', 'coffee', '#78350f', 'Premium iced coffee macchiatos in 13 flavors – all at P79!', 0, 12, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEM - Iced Coffee Macchiato
--    id = 52 (susunod sa id=51)
--    Price = P79.00
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(52, 12, 'Iced Coffee Macchiato',
 'Premium iced coffee macchiato available in 13 delicious flavors – all at P79. Choose your flavor!',
 79.00, NULL, 1, 0, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER GROUP
--    id=66: Flavor (required)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(66, 52, 'flavor', 'Flavor', 'Choose your iced coffee macchiato flavor', 1, 1, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 4. MODIFIER OPTIONS - 13 flavors
--    ids 204-216 (susunod sa id=203)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(204, 66, 'Iced Almond Macchiato',           'none', 0.00, 1, 1,  1, NOW(), NOW()),
(205, 66, 'Iced Caramel Macchiato',          'none', 0.00, 0, 1,  2, NOW(), NOW()),
(206, 66, 'Iced Salted Caramel Macchiato',   'none', 0.00, 0, 1,  3, NOW(), NOW()),
(207, 66, 'Iced Chocolate Peppermint',       'none', 0.00, 0, 1,  4, NOW(), NOW()),
(208, 66, 'Iced Vanilla Macchiato',          'none', 0.00, 0, 1,  5, NOW(), NOW()),
(209, 66, 'Iced Hazelnut Macchiato',         'none', 0.00, 0, 1,  6, NOW(), NOW()),
(210, 66, 'Iced Butterscotch Macchiato',     'none', 0.00, 0, 1,  7, NOW(), NOW()),
(211, 66, 'Iced Matcha Macchiato',           'none', 0.00, 0, 1,  8, NOW(), NOW()),
(212, 66, 'Iced Brown Sugar Macchiato',      'none', 0.00, 0, 1,  9, NOW(), NOW()),
(213, 66, 'Iced Strawberry Macchiato',       'none', 0.00, 0, 1, 10, NOW(), NOW()),
(214, 66, 'Iced Ube Macchiato',              'none', 0.00, 0, 1, 11, NOW(), NOW()),
(215, 66, 'Iced Taro Macchiato',             'none', 0.00, 0, 1, 12, NOW(), NOW()),
(216, 66, 'Iced Cookies & Cream Macchiato',  'none', 0.00, 0, 1, 13, NOW(), NOW());
