-- ============================================================
-- EUT Snack House - FRUIT SHAKES Seed
-- Menu Special - All items P99.00
-- Codes: F1-F9
-- Flavors: Manggo, Avocado, Banana, Melon, Watermelon,
--          Apple, Dragon Fruit, Cucumber, Strawberry
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - Fruit Shakes
--    id = 14 (susunod sa id=13)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(14, 'Fruit Shakes', 'fruit-shakes', 'glass-water', '#16a34a', 'Fresh & natural fruit shakes in 9 flavors – all at P99!', 0, 14, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS - 9 fruit shakes, all P99.00
--    ids 63-71 (susunod sa id=62)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(63, 14, 'Manggo Shake',      'CODE: F1 | Fresh mango blended into a thick & creamy shake',         99.00, NULL, 1, 0, 1, NOW(), NOW()),
(64, 14, 'Avocado Shake',     'CODE: F2 | Creamy avocado blended into a rich smooth shake',         99.00, NULL, 1, 0, 2, NOW(), NOW()),
(65, 14, 'Banana Shake',      'CODE: F3 | Sweet & creamy banana blended shake',                     99.00, NULL, 0, 0, 3, NOW(), NOW()),
(66, 14, 'Melon Shake',       'CODE: F4 | Refreshing fresh melon blended shake',                    99.00, NULL, 0, 0, 4, NOW(), NOW()),
(67, 14, 'Watermelon Shake',  'CODE: F5 | Light & refreshing watermelon blended shake',             99.00, NULL, 0, 0, 5, NOW(), NOW()),
(68, 14, 'Apple Shake',       'CODE: F6 | Crisp & sweet fresh apple blended shake',                 99.00, NULL, 0, 0, 6, NOW(), NOW()),
(69, 14, 'Dragon Fruit Shake','CODE: F7 | Vibrant & exotic dragon fruit blended shake',             99.00, NULL, 0, 0, 7, NOW(), NOW()),
(70, 14, 'Cucumber Shake',    'CODE: F8 | Cool & refreshing cucumber blended shake',                99.00, NULL, 0, 0, 8, NOW(), NOW()),
(71, 14, 'Strawberry Shake',  'CODE: F9 | Sweet & tangy fresh strawberry blended shake',            99.00, NULL, 0, 0, 9, NOW(), NOW());
