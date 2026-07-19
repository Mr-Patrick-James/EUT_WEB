-- ============================================================
-- EUT Snack House - SAWA SA EUT Package Seed
-- Good for 5-7 persons | Price: P3,999.00
-- Includes: Rice, Sinigang, Kare-Kare, Bangus,
--           Crispy Pata (fixed), Pakbet/Chopsuey,
--           Wings (2 flavours), Sweets, Drinks
-- ============================================================

-- --------------------------------------------------------
-- 1. MENU ITEM - Sawa Sa EUT
--    id = 26 (susunod sa id=25)
--    category_id = 6 (Sagana Package)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(26, 6, 'Sawa Sa EUT',
 'Good for 5-7 persons. Includes: Rice, Sinigang, Kare-Kare, Bangus, Crispy Pata, Pakbet or Chopsuey, Wings (2 flavours), Sweets, and Drinks. Choose your preferred variant per dish.',
 3999.00, NULL, 1, 0, 3, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MODIFIER GROUPS - 8 groups para sa bawat choice
--    ids 44-51 (susunod sa id=43)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(44, 26, 'flavor', 'Rice',             'Plain Rice or Garlic Fried Rice',         1, 1, 1, NOW(), NOW()),
(45, 26, 'flavor', 'Sinigang',         'Choose your Sinigang variant',             1, 1, 2, NOW(), NOW()),
(46, 26, 'flavor', 'Kare-Kare',        'Choose your Kare-Kare variant',            1, 1, 3, NOW(), NOW()),
(47, 26, 'flavor', 'Bangus',           'Sizzling Cheesy or Grilled Bangus',        1, 1, 4, NOW(), NOW()),
(48, 26, 'flavor', 'Pakbet / Chopsuey','Choose between Pakbet or Chopsuey',        1, 1, 5, NOW(), NOW()),
(49, 26, 'flavor', 'Wings',            'Choose 2 flavours only',                   1, 1, 6, NOW(), NOW()),
(50, 26, 'flavor', 'Sweets',           'Choose your dessert',                      1, 1, 7, NOW(), NOW()),
(51, 26, 'flavor', 'Drinks',           'Choose your lemonade drink',               1, 1, 8, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER OPTIONS
--    ids 119-139 (susunod sa id=118)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- Rice (group 44)
(119, 44, 'Plain Rice',           'none', 0.00, 1, 1, 1, NOW(), NOW()),
(120, 44, 'Garlic Fried Rice',    'none', 0.00, 0, 1, 2, NOW(), NOW()),

-- Sinigang (group 45)
(121, 45, 'Pork',                 'none', 0.00, 1, 1, 1, NOW(), NOW()),
(122, 45, 'Shrimp',               'none', 0.00, 0, 1, 2, NOW(), NOW()),
(123, 45, 'Bangus',               'none', 0.00, 0, 1, 3, NOW(), NOW()),

-- Kare-Kare (group 46)
(124, 46, 'Beef',                 'none', 0.00, 1, 1, 1, NOW(), NOW()),
(125, 46, 'Crispy Pork',          'none', 0.00, 0, 1, 2, NOW(), NOW()),

-- Bangus (group 47)
(126, 47, 'Sizzling Cheesy',      'none', 0.00, 1, 1, 1, NOW(), NOW()),
(127, 47, 'Grilled',              'none', 0.00, 0, 1, 2, NOW(), NOW()),

-- Pakbet / Chopsuey (group 48)
(128, 48, 'Pakbet',               'none', 0.00, 1, 1, 1, NOW(), NOW()),
(129, 48, 'Chopsuey',             'none', 0.00, 0, 1, 2, NOW(), NOW()),

-- Wings - 2 Flavours only (group 49)
(130, 49, 'Buffalo',              'none', 0.00, 1, 1, 1, NOW(), NOW()),
(131, 49, 'Garlic Parmesan',      'none', 0.00, 0, 1, 2, NOW(), NOW()),
(132, 49, 'BBQ Honey',            'none', 0.00, 0, 1, 3, NOW(), NOW()),

-- Sweets (group 50)
(133, 50, 'Halo-Halo',            'none', 0.00, 1, 1, 1, NOW(), NOW()),
(134, 50, 'Buko Pandan',          'none', 0.00, 0, 1, 2, NOW(), NOW()),
(135, 50, 'Leche Flan',           'none', 0.00, 0, 1, 3, NOW(), NOW()),

-- Drinks (group 51)
(136, 51, 'Cucumber Lemonade',    'none', 0.00, 1, 1, 1, NOW(), NOW()),
(137, 51, 'Blue Lemonade',        'none', 0.00, 0, 1, 2, NOW(), NOW()),
(138, 51, 'Ice Tea Lemonade',     'none', 0.00, 0, 1, 3, NOW(), NOW()),
(139, 51, 'Strawberry Lemonade',  'none', 0.00, 0, 1, 4, NOW(), NOW());
