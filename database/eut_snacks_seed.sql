-- ============================================================
-- EUT Snack House - SNACKS Seed
-- Menu Special - 17 items
-- Notable modifiers:
--   Special Fries: Flavor (Cheese/Sour Cream/Barbeque/Garlic Parmesan)
--   Siomai Big & Small: Cooking Method (Steam or Fried)
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - Snacks
--    id = 20 (susunod sa id=19)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(20, 'Snacks', 'snacks', 'package-open', '#f97316', 'EUT snacks – fries, nachos, siomai, shawarma, quesadillas, burritos & more!', 0, 20, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS - 17 snack items
--    ids 126-142 (susunod sa id=125)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(126, 20, 'Classic Fries',             'Crispy classic salted fries',                                               60.00, NULL, 0, 0,  1, NOW(), NOW()),
(127, 20, 'Couple Fries',              'Bigger fries serving – perfect for two!',                                  139.00, NULL, 0, 0,  2, NOW(), NOW()),
(128, 20, 'Family Fries',              'Large family-sized serving of crispy fries',                               189.00, NULL, 0, 0,  3, NOW(), NOW()),
(129, 20, 'Special Fries',             'Seasoned fries with your choice of flavor: Cheese, Sour Cream, Barbeque, or Garlic Parmesan', 159.00, NULL, 1, 0, 4, NOW(), NOW()),
(130, 20, 'Classic Nachos',            'Crunchy tortilla chips with classic nacho dip',                             69.00, NULL, 0, 0,  5, NOW(), NOW()),
(131, 20, 'Special Nachos',            'Loaded special nachos with premium toppings',                              159.00, NULL, 0, 0,  6, NOW(), NOW()),
(132, 20, 'Nachos Fries Kana Ba?',     'The best of both worlds – nachos AND fries combo!',                        169.00, NULL, 1, 0,  7, NOW(), NOW()),
(133, 20, 'Bread Roll',                'Soft & freshly baked bread roll',                                           69.00, NULL, 0, 0,  8, NOW(), NOW()),
(134, 20, 'Tuna Bread Roll',           'Bread roll filled with savory tuna filling',                                89.00, NULL, 0, 0,  9, NOW(), NOW()),
(135, 20, 'Siomai Big',                'Big siomai – choose Steam or Fried',                                        69.00, NULL, 0, 0, 10, NOW(), NOW()),
(136, 20, 'Siomai Small',              'Small siomai – choose Steam or Fried',                                      59.00, NULL, 0, 0, 11, NOW(), NOW()),
(137, 20, 'Beef Shawarma',             'Juicy beef shawarma wrap with garlic sauce',                               119.00, NULL, 1, 0, 12, NOW(), NOW()),
(138, 20, 'Chicken Shawarma',          'Tender chicken shawarma wrap with garlic sauce',                           109.00, NULL, 0, 0, 13, NOW(), NOW()),
(139, 20, 'Beef Quesadillas',          'Crispy quesadilla filled with seasoned beef',                              149.00, NULL, 0, 0, 14, NOW(), NOW()),
(140, 20, 'Cheese Quesadillas',        'Crispy quesadilla loaded with melted cheese',                              129.00, NULL, 0, 0, 15, NOW(), NOW()),
(141, 20, 'Beef Burrito',              'Hearty beef burrito with rice, beans & toppings',                          129.00, NULL, 0, 0, 16, NOW(), NOW()),
(142, 20, 'Pork Burrito',              'Savory pork burrito with rice, beans & toppings',                          119.00, NULL, 0, 0, 17, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER GROUPS
--    id=100: Special Fries Flavor (item 129)
--    id=101: Siomai Big Cooking Method (item 135)
--    id=102: Siomai Small Cooking Method (item 136)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(100, 129, 'flavor',   'Flavor',          'Choose your fries flavor',         1, 1, 1, NOW(), NOW()),
(101, 135, 'modifier', 'Cooking Method',  'Steam or Fried – your choice!',    1, 1, 1, NOW(), NOW()),
(102, 136, 'modifier', 'Cooking Method',  'Steam or Fried – your choice!',    1, 1, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 4. MODIFIER OPTIONS
--    ids 331-338 (susunod sa id=330)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- Special Fries Flavors (group 100) — all same price
(331, 100, 'Cheese',          'none', 0.00, 1, 1, 1, NOW(), NOW()),
(332, 100, 'Sour Cream',      'none', 0.00, 0, 1, 2, NOW(), NOW()),
(333, 100, 'Barbeque',        'none', 0.00, 0, 1, 3, NOW(), NOW()),
(334, 100, 'Garlic Parmesan', 'none', 0.00, 0, 1, 4, NOW(), NOW()),

-- Siomai Big Cooking Method (group 101) — same price
(335, 101, 'Steamed', 'none', 0.00, 1, 1, 1, NOW(), NOW()),
(336, 101, 'Fried',   'none', 0.00, 0, 1, 2, NOW(), NOW()),

-- Siomai Small Cooking Method (group 102) — same price
(337, 102, 'Steamed', 'none', 0.00, 1, 1, 1, NOW(), NOW()),
(338, 102, 'Fried',   'none', 0.00, 0, 1, 2, NOW(), NOW());
