-- ============================================================
-- EUT Snack House - SIGAD SA EUT Package Seed
-- Good for 4-6 persons | Price: P2,999.00
-- Includes: Rice, Sinigang, Crispy Pata, Chopsuey/Pakbet,
--           Pork Sisig, Lumpia Shanghai (Beef & Pork),
--           Sweets, Drinks
-- ============================================================

-- --------------------------------------------------------
-- 1. MENU ITEM - Sigad Sa EUT
--    id = 25 (susunod sa id=24)
--    category_id = 6 (Sagana Package)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(25, 6, 'Sigad Sa EUT',
 'Good for 4-6 persons. Includes: Rice, Sinigang, Crispy Pata, Chopsuey or Pakbet, Pork Sisig, Lumpia Shanghai (Beef & Pork), Sweets, and Drinks. Choose your preferred variant per dish.',
 2999.00, NULL, 1, 0, 2, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MODIFIER GROUPS - 5 groups para sa bawat choice
--    ids 39-43 (susunod sa id=38)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(39, 25, 'flavor',   'Rice',             'Plain Rice or Garlic Fried Rice',       1, 1, 1, NOW(), NOW()),
(40, 25, 'flavor',   'Sinigang',         'Choose your Sinigang variant',           1, 1, 2, NOW(), NOW()),
(41, 25, 'flavor',   'Chopsuey / Pakbet','Choose between Chopsuey or Pakbet',      1, 1, 3, NOW(), NOW()),
(42, 25, 'flavor',   'Sweets',           'Choose your dessert',                    1, 1, 4, NOW(), NOW()),
(43, 25, 'flavor',   'Drinks',           'Choose your lemonade drink',             1, 1, 5, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER OPTIONS
--    ids 104-118 (susunod sa id=103)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- Rice (group 39)
(104, 39, 'Plain Rice',           'none', 0.00, 1, 1, 1, NOW(), NOW()),
(105, 39, 'Garlic Fried Rice',    'none', 0.00, 0, 1, 2, NOW(), NOW()),

-- Sinigang (group 40)
(106, 40, 'Pork',                 'none', 0.00, 1, 1, 1, NOW(), NOW()),
(107, 40, 'Shrimp',               'none', 0.00, 0, 1, 2, NOW(), NOW()),
(108, 40, 'Bangus',               'none', 0.00, 0, 1, 3, NOW(), NOW()),

-- Chopsuey / Pakbet (group 41)
(109, 41, 'Chopsuey',             'none', 0.00, 1, 1, 1, NOW(), NOW()),
(110, 41, 'Pakbet',               'none', 0.00, 0, 1, 2, NOW(), NOW()),

-- Sweets (group 42)
(111, 42, 'Halo-Halo',            'none', 0.00, 1, 1, 1, NOW(), NOW()),
(112, 42, 'Buko Pandan',          'none', 0.00, 0, 1, 2, NOW(), NOW()),
(113, 42, 'Leche Flan',           'none', 0.00, 0, 1, 3, NOW(), NOW()),

-- Drinks (group 43)
(114, 43, 'Cucumber Lemonade',    'none', 0.00, 1, 1, 1, NOW(), NOW()),
(115, 43, 'Blue Lemonade',        'none', 0.00, 0, 1, 2, NOW(), NOW()),
(116, 43, 'Ice Tea Lemonade',     'none', 0.00, 0, 1, 3, NOW(), NOW()),
(117, 43, 'Strawberry Lemonade',  'none', 0.00, 0, 1, 4, NOW(), NOW()),
(118, 43, 'Pineapple Lemonade',   'none', 0.00, 0, 1, 5, NOW(), NOW());
