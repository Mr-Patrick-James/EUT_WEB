-- ============================================================
-- EUT Snack House - SABIK SA EUT Package Seed
-- Good for 3-5 persons | Price: P1,499.00
-- Includes: Nachos (Special), Wings (2 flavours),
--           Pasta or Pancit, Burger (Aloha with Ham),
--           Fries (Special), Sweets, Drinks
-- ============================================================

-- --------------------------------------------------------
-- 1. MENU ITEM - Sabik Sa EUT
--    id = 27 (susunod sa id=26)
--    category_id = 6 (Sagana Package)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(27, 6, 'Sabik Sa EUT',
 'Good for 3-5 persons. Includes: Special Nachos, Wings (2 flavours), Pasta or Pancit (choice), Burger Aloha with Ham, Special Fries, Sweets, and Drinks.',
 1499.00, NULL, 1, 0, 4, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MODIFIER GROUPS - 4 groups para sa bawat choice
--    ids 52-55 (susunod sa id=51)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(52, 27, 'flavor', 'Wings',         'Choose 2 flavours only',                                       1, 1, 1, NOW(), NOW()),
(53, 27, 'flavor', 'Pasta / Pancit','Choose your pasta or pancit variant',                          1, 1, 2, NOW(), NOW()),
(54, 27, 'flavor', 'Sweets',        'Choose your dessert',                                          1, 1, 3, NOW(), NOW()),
(55, 27, 'flavor', 'Drinks',        'Choose your lemonade drink',                                   1, 1, 4, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER OPTIONS
--    ids 140-157 (susunod sa id=139)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- Wings - 2 Flavours only (group 52)
(140, 52, 'Buffalo',              'none', 0.00, 1, 1, 1, NOW(), NOW()),
(141, 52, 'Garlic Parmesan',      'none', 0.00, 0, 1, 2, NOW(), NOW()),
(142, 52, 'BBQ Honey',            'none', 0.00, 0, 1, 3, NOW(), NOW()),

-- Pasta / Pancit (group 53)
(143, 53, 'Spaghetti',            'none', 0.00, 1, 1, 1, NOW(), NOW()),
(144, 53, 'Palabok',              'none', 0.00, 0, 1, 2, NOW(), NOW()),
(145, 53, 'Carbonara',            'none', 0.00, 0, 1, 3, NOW(), NOW()),
(146, 53, 'Shrimp Pasta',         'none', 0.00, 0, 1, 4, NOW(), NOW()),
(147, 53, 'Tuna Pasta',           'none', 0.00, 0, 1, 5, NOW(), NOW()),
(148, 53, 'Miki Guisado',         'none', 0.00, 0, 1, 6, NOW(), NOW()),
(149, 53, 'Bihon Guisado',        'none', 0.00, 0, 1, 7, NOW(), NOW()),
(150, 53, 'Canton Guisado',       'none', 0.00, 0, 1, 8, NOW(), NOW()),

-- Sweets (group 54)
(151, 54, 'Halo-Halo',            'none', 0.00, 1, 1, 1, NOW(), NOW()),
(152, 54, 'Buko Pandan',          'none', 0.00, 0, 1, 2, NOW(), NOW()),
(153, 54, 'Leche Flan',           'none', 0.00, 0, 1, 3, NOW(), NOW()),

-- Drinks (group 55)
(154, 55, 'Cucumber Lemonade',    'none', 0.00, 1, 1, 1, NOW(), NOW()),
(155, 55, 'Blue Lemonade',        'none', 0.00, 0, 1, 2, NOW(), NOW()),
(156, 55, 'Ice Tea Lemonade',     'none', 0.00, 0, 1, 3, NOW(), NOW()),
(157, 55, 'Pineapple Lemonade',   'none', 0.00, 0, 1, 4, NOW(), NOW());
