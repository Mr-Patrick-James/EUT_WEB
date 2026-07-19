-- ============================================================
-- EUT Snack House - SAGANA SA EUT Package Seed
-- Good for 8-10 persons | Price: P6,499.00
-- Includes: Rice, Sinigang, Kare-Kare, Crispy Pata,
--           Bangus, Pork, Pakbet/Chopsuey, Wings, Sweets, Drinks
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - Sagana Package
--    id = 6 (susunod sa id=5)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(6, 'Sagana Package', 'sagana-package', 'package', '#16a34a', 'Good for 8-10 persons – Full boodle feast package!', 0, 6, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEM - Sagana Sa EUT
--    id = 24 (susunod sa id=23)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(24, 6, 'Sagana Sa EUT',
 'Good for 8-10 persons. Includes: Rice, Sinigang, Kare-Kare, Crispy Pata, Bangus, Pork, Pakbet/Chopsuey, Wings (3 flavours), Sweets, and Drinks. Choose your preferred variant per dish.',
 6499.00, NULL, 1, 0, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER GROUPS - 8 groups para sa bawat choice
--    ids 31-38 (susunod sa id=30)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(31, 24, 'flavor',   'Rice',     'Plain Rice or Garlic Fried Rice',      1, 1, 1, NOW(), NOW()),
(32, 24, 'flavor',   'Sinigang', 'Choose your Sinigang variant',         1, 1, 2, NOW(), NOW()),
(33, 24, 'flavor',   'Kare-Kare','Choose your Kare-Kare variant',        1, 1, 3, NOW(), NOW()),
(34, 24, 'flavor',   'Bangus',   'Sizzling Cheesy or Grilled Bangus',    1, 1, 4, NOW(), NOW()),
(35, 24, 'flavor',   'Pork',     'Binagoongan or Bicol Express',         1, 1, 5, NOW(), NOW()),
(36, 24, 'flavor',   'Wings',    '3 Flavours of your choice',            1, 1, 6, NOW(), NOW()),
(37, 24, 'flavor',   'Sweets',   'Choose your dessert',                  1, 1, 7, NOW(), NOW()),
(38, 24, 'flavor',   'Drinks',   'Choose your lemonade drink',           1, 1, 8, NOW(), NOW());

-- --------------------------------------------------------
-- 4. MODIFIER OPTIONS
--    ids 83-101 (susunod sa id=82)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- Rice (group 31)
(83, 31, 'Plain Rice',          'none', 0.00, 1, 1, 1, NOW(), NOW()),
(84, 31, 'Garlic Fried Rice',   'none', 0.00, 0, 1, 2, NOW(), NOW()),

-- Sinigang (group 32)
(85, 32, 'Pork',                'none', 0.00, 1, 1, 1, NOW(), NOW()),
(86, 32, 'Shrimp',              'none', 0.00, 0, 1, 2, NOW(), NOW()),
(87, 32, 'Bangus',              'none', 0.00, 0, 1, 3, NOW(), NOW()),

-- Kare-Kare (group 33)
(88, 33, 'Beef',                'none', 0.00, 1, 1, 1, NOW(), NOW()),
(89, 33, 'Crispy Pork',         'none', 0.00, 0, 1, 2, NOW(), NOW()),

-- Bangus (group 34)
(90, 34, 'Sizzling Cheesy',     'none', 0.00, 1, 1, 1, NOW(), NOW()),
(91, 34, 'Grilled',             'none', 0.00, 0, 1, 2, NOW(), NOW()),

-- Pork (group 35)
(92, 35, 'Binagoongan',         'none', 0.00, 1, 1, 1, NOW(), NOW()),
(93, 35, 'Bicol Express',       'none', 0.00, 0, 1, 2, NOW(), NOW()),

-- Wings (group 36) - 3 Flavours
(94, 36, 'Buffalo',             'none', 0.00, 1, 1, 1, NOW(), NOW()),
(95, 36, 'Garlic Parmesan',     'none', 0.00, 0, 1, 2, NOW(), NOW()),
(96, 36, 'BBQ Honey',           'none', 0.00, 0, 1, 3, NOW(), NOW()),

-- Sweets (group 37)
(97,  37, 'Halo-Halo',          'none', 0.00, 1, 1, 1, NOW(), NOW()),
(98,  37, 'Buko Pandan',        'none', 0.00, 0, 1, 2, NOW(), NOW()),
(99,  37, 'Leche Flan',         'none', 0.00, 0, 1, 3, NOW(), NOW()),

-- Drinks (group 38)
(100, 38, 'Cucumber Lemonade',  'none', 0.00, 1, 1, 1, NOW(), NOW()),
(101, 38, 'Blue Lemonade',      'none', 0.00, 0, 1, 2, NOW(), NOW()),
(102, 38, 'Ice Tea Lemonade',   'none', 0.00, 0, 1, 3, NOW(), NOW()),
(103, 38, 'Pineapple Lemonade', 'none', 0.00, 0, 1, 4, NOW(), NOW());
