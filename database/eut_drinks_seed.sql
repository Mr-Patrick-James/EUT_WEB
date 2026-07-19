-- ============================================================
-- EUT Snack House - DRINKS Seed
-- Menu Special - 13 drinks with 2 sizes: Single & Tower
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - Drinks
--    id = 15 (susunod sa id=14)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(15, 'Drinks', 'drinks', 'glass-water', '#0ea5e9', 'Refreshing drinks available in Single or Tower size!', 0, 15, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS - 13 drinks (base price = Single price)
--    ids 72-84 (susunod sa id=71)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(72, 15, 'Cucumber Lemonade',  'Refreshing cucumber lemonade. Single (P49) or Tower (P179)',       49.00, NULL, 1, 0,  1, NOW(), NOW()),
(73, 15, 'Red Ice Tea',        'Sweet & bold red ice tea. Single (P49) or Tower (P179)',             49.00, NULL, 0, 0,  2, NOW(), NOW()),
(74, 15, 'Ice Tea',            'Classic brewed ice tea. Single (P59) or Tower (P199)',               59.00, NULL, 0, 0,  3, NOW(), NOW()),
(75, 15, 'Blue Lemonade',      'Eye-catching blue lemonade drink. Single (P49) or Tower (P179)',    49.00, NULL, 1, 0,  4, NOW(), NOW()),
(76, 15, 'Black Gulaman',      'Sweet black gulaman drink. Single (P49) or Tower (P179)',           49.00, NULL, 0, 0,  5, NOW(), NOW()),
(77, 15, 'Strawberry Lemonade','Fresh strawberry lemonade. Single (P59) or Tower (P189)',           59.00, NULL, 0, 0,  6, NOW(), NOW()),
(78, 15, 'Calamansi Lemonade', 'Tangy calamansi lemonade. Single (P49) or Tower (P179)',            49.00, NULL, 0, 0,  7, NOW(), NOW()),
(79, 15, 'Lychee Lemonade',    'Floral lychee lemonade. Single (P49) or Tower (P179)',              49.00, NULL, 0, 0,  8, NOW(), NOW()),
(80, 15, 'Orange Lemonade',    'Zesty orange lemonade. Single (P59) or Tower (P189)',               59.00, NULL, 0, 0,  9, NOW(), NOW()),
(81, 15, 'Lemon Ade',          'Classic fresh lemonade. Single (P39) or Tower (P159)',              39.00, NULL, 0, 0, 10, NOW(), NOW()),
(82, 15, 'Yakult Lemonade',    'Probiotic yakult lemonade. Single (P69) or Tower (P209)',           69.00, NULL, 0, 0, 11, NOW(), NOW()),
(83, 15, 'Pineapple Juice',    'Fresh pineapple juice. Single (P59) or Tower (P189)',               59.00, NULL, 0, 0, 12, NOW(), NOW()),
(84, 15, 'Four Seasons',       'Mixed Four Seasons juice blend. Single (P69) or Tower (P209)',      69.00, NULL, 0, 0, 13, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER GROUPS - Size (Single/Tower) per item
--    ids 67-79 (susunod sa id=66)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(67, 72, 'modifier', 'Size', 'Single (P49) or Tower (P179)',   1, 1, 1, NOW(), NOW()),
(68, 73, 'modifier', 'Size', 'Single (P49) or Tower (P179)',   1, 1, 1, NOW(), NOW()),
(69, 74, 'modifier', 'Size', 'Single (P59) or Tower (P199)',   1, 1, 1, NOW(), NOW()),
(70, 75, 'modifier', 'Size', 'Single (P49) or Tower (P179)',   1, 1, 1, NOW(), NOW()),
(71, 76, 'modifier', 'Size', 'Single (P49) or Tower (P179)',   1, 1, 1, NOW(), NOW()),
(72, 77, 'modifier', 'Size', 'Single (P59) or Tower (P189)',   1, 1, 1, NOW(), NOW()),
(73, 78, 'modifier', 'Size', 'Single (P49) or Tower (P179)',   1, 1, 1, NOW(), NOW()),
(74, 79, 'modifier', 'Size', 'Single (P49) or Tower (P179)',   1, 1, 1, NOW(), NOW()),
(75, 80, 'modifier', 'Size', 'Single (P59) or Tower (P189)',   1, 1, 1, NOW(), NOW()),
(76, 81, 'modifier', 'Size', 'Single (P39) or Tower (P159)',   1, 1, 1, NOW(), NOW()),
(77, 82, 'modifier', 'Size', 'Single (P69) or Tower (P209)',   1, 1, 1, NOW(), NOW()),
(78, 83, 'modifier', 'Size', 'Single (P59) or Tower (P189)',   1, 1, 1, NOW(), NOW()),
(79, 84, 'modifier', 'Size', 'Single (P69) or Tower (P209)',   1, 1, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 4. MODIFIER OPTIONS - Single (base) and Tower (+adjustment)
--    ids 217-242 (susunod sa id=216)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- Cucumber Lemonade (group 67): Single=P49, Tower=P179 (+130)
(217, 67, 'Single', 'none', 0.00,   1, 1, 1, NOW(), NOW()),
(218, 67, 'Tower',  'add',  130.00, 0, 1, 2, NOW(), NOW()),
-- Red Ice Tea (group 68): Single=P49, Tower=P179 (+130)
(219, 68, 'Single', 'none', 0.00,   1, 1, 1, NOW(), NOW()),
(220, 68, 'Tower',  'add',  130.00, 0, 1, 2, NOW(), NOW()),
-- Ice Tea (group 69): Single=P59, Tower=P199 (+140)
(221, 69, 'Single', 'none', 0.00,   1, 1, 1, NOW(), NOW()),
(222, 69, 'Tower',  'add',  140.00, 0, 1, 2, NOW(), NOW()),
-- Blue Lemonade (group 70): Single=P49, Tower=P179 (+130)
(223, 70, 'Single', 'none', 0.00,   1, 1, 1, NOW(), NOW()),
(224, 70, 'Tower',  'add',  130.00, 0, 1, 2, NOW(), NOW()),
-- Black Gulaman (group 71): Single=P49, Tower=P179 (+130)
(225, 71, 'Single', 'none', 0.00,   1, 1, 1, NOW(), NOW()),
(226, 71, 'Tower',  'add',  130.00, 0, 1, 2, NOW(), NOW()),
-- Strawberry Lemonade (group 72): Single=P59, Tower=P189 (+130)
(227, 72, 'Single', 'none', 0.00,   1, 1, 1, NOW(), NOW()),
(228, 72, 'Tower',  'add',  130.00, 0, 1, 2, NOW(), NOW()),
-- Calamansi Lemonade (group 73): Single=P49, Tower=P179 (+130)
(229, 73, 'Single', 'none', 0.00,   1, 1, 1, NOW(), NOW()),
(230, 73, 'Tower',  'add',  130.00, 0, 1, 2, NOW(), NOW()),
-- Lychee Lemonade (group 74): Single=P49, Tower=P179 (+130)
(231, 74, 'Single', 'none', 0.00,   1, 1, 1, NOW(), NOW()),
(232, 74, 'Tower',  'add',  130.00, 0, 1, 2, NOW(), NOW()),
-- Orange Lemonade (group 75): Single=P59, Tower=P189 (+130)
(233, 75, 'Single', 'none', 0.00,   1, 1, 1, NOW(), NOW()),
(234, 75, 'Tower',  'add',  130.00, 0, 1, 2, NOW(), NOW()),
-- Lemon Ade (group 76): Single=P39, Tower=P159 (+120)
(235, 76, 'Single', 'none', 0.00,   1, 1, 1, NOW(), NOW()),
(236, 76, 'Tower',  'add',  120.00, 0, 1, 2, NOW(), NOW()),
-- Yakult Lemonade (group 77): Single=P69, Tower=P209 (+140)
(237, 77, 'Single', 'none', 0.00,   1, 1, 1, NOW(), NOW()),
(238, 77, 'Tower',  'add',  140.00, 0, 1, 2, NOW(), NOW()),
-- Pineapple Juice (group 78): Single=P59, Tower=P189 (+130)
(239, 78, 'Single', 'none', 0.00,   1, 1, 1, NOW(), NOW()),
(240, 78, 'Tower',  'add',  130.00, 0, 1, 2, NOW(), NOW()),
-- Four Seasons (group 79): Single=P69, Tower=P209 (+140)
(241, 79, 'Single', 'none', 0.00,   1, 1, 1, NOW(), NOW()),
(242, 79, 'Tower',  'add',  140.00, 0, 1, 2, NOW(), NOW());
