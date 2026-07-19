-- ============================================================
-- EUT Snack House - CREAM MILK SERIES Seed
-- Menu Special - All items P59.00 each
-- 12 flavors: Taro, Melon, Java Chip Vanilla, Mango Cheesecake,
--             Okinawa, Strawberry, Matcha, Chocolate,
--             Salted Caramel, Vanilla, Cookies & Cream,
--             Milk Chocolate
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - Cream Milk Series
--    id = 8 (susunod sa id=7)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(8, 'Cream Milk Series', 'cream-milk-series', 'milk', '#f59e0b', 'Premium cream milk drinks in 12 delicious flavors – all at P59!', 0, 8, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS - 12 flavors, all P59.00
--    ids 37-48 (susunod sa id=36)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(37, 8, 'Taro Cream Milk',        'Creamy taro-flavored milk drink',               59.00, NULL, 1, 0,  1, NOW(), NOW()),
(38, 8, 'Melon Cream Milk',       'Fresh melon-flavored creamy milk drink',        59.00, NULL, 0, 0,  2, NOW(), NOW()),
(39, 8, 'Java Chip Vanilla',      'Vanilla cream milk with java chip bits',        59.00, NULL, 0, 0,  3, NOW(), NOW()),
(40, 8, 'Mango Cheesecake',       'Mango cheesecake-flavored cream milk',          59.00, NULL, 0, 0,  4, NOW(), NOW()),
(41, 8, 'Okinawa Cream Milk',     'Japanese-inspired Okinawa brown sugar milk',    59.00, NULL, 0, 0,  5, NOW(), NOW()),
(42, 8, 'Strawberry Cream Milk',  'Sweet strawberry-flavored creamy milk drink',  59.00, NULL, 0, 0,  6, NOW(), NOW()),
(43, 8, 'Matcha Cream Milk',      'Premium matcha green tea cream milk',           59.00, NULL, 0, 0,  7, NOW(), NOW()),
(44, 8, 'Chocolate Cream Milk',   'Rich chocolate-flavored cream milk drink',      59.00, NULL, 0, 0,  8, NOW(), NOW()),
(45, 8, 'Salted Caramel',         'Salted caramel cream milk – sweet & salty!',   59.00, NULL, 0, 0,  9, NOW(), NOW()),
(46, 8, 'Vanilla Cream Milk',     'Classic smooth vanilla cream milk',             59.00, NULL, 0, 0, 10, NOW(), NOW()),
(47, 8, 'Cookies & Cream',        'Cookies & cream-flavored premium milk drink',  59.00, NULL, 0, 0, 11, NOW(), NOW()),
(48, 8, 'Milk Chocolate',         'Classic milk chocolate cream drink',            59.00, NULL, 0, 0, 12, NOW(), NOW());
