-- ============================================================
-- EUT Snack House - RICE BOWL Seed
-- Serve with Toppings
-- 3 items:
--   1. Rice Bowl (₱89) + Topping modifier (10 choices)
--   2. Fried Chicken Rice Bowl (₱109) + Sauce modifier
--   3. Fried Pork Rice Bowl (₱129) + Sauce modifier
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - Rice Bowl
--    id = 24 (susunod sa id=23)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(24, 'Rice Bowl', 'rice-bowl', 'bowl-rice', '#ca8a04', 'Serve with Toppings – your choice of topping or sauce!', 0, 24, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS - 3 rice bowl items
--    ids 170-172 (susunod sa id=169)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(170, 24, 'Rice Bowl',               'Choose your topping: Nuggets, Ham, Fried Egg, Balony, Spam, Fried Siomai, Lumpia Shanghai, Steam Siomai, Corned Beef, or Hotdog Balls!', 89.00, NULL, 1, 0, 1, NOW(), NOW()),
(171, 24, 'Fried Chicken Rice Bowl', 'Crispy fried chicken on rice – choose your sauce!',                                                                                     109.00, NULL, 1, 0, 2, NOW(), NOW()),
(172, 24, 'Fried Pork Rice Bowl',    'Crispy fried pork on rice – choose your sauce!',                                                                                       129.00, NULL, 0, 0, 3, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER GROUPS
--    id=138: Topping for Rice Bowl (item 170)
--    id=139: Sauce for Fried Chicken Rice Bowl (item 171)
--    id=140: Sauce for Fried Pork Rice Bowl (item 172)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `max_selections`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(138, 170, 'modifier', 'Topping', 'Choose your topping',  1, NULL, 1, 1, NOW(), NOW()),
(139, 171, 'flavor',   'Sauce',   'Choose your sauce',    1, NULL, 1, 1, NOW(), NOW()),
(140, 172, 'flavor',   'Sauce',   'Choose your sauce',    1, NULL, 1, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 4. MODIFIER OPTIONS
--    Toppings (ids 483-492) for group 138 — Rice Bowl
--    Sauces (ids 493-502) for group 139 — Fried Chicken
--    Sauces (ids 503-512) for group 140 — Fried Pork
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- ===== Rice Bowl Toppings (group 138) — all same price =====
(483, 138, 'Nuggets',        'none', 0.00, 1, 1,  1, NOW(), NOW()),
(484, 138, 'Ham',            'none', 0.00, 0, 1,  2, NOW(), NOW()),
(485, 138, 'Fried Egg',      'none', 0.00, 0, 1,  3, NOW(), NOW()),
(486, 138, 'Balony',         'none', 0.00, 0, 1,  4, NOW(), NOW()),
(487, 138, 'Spam',           'none', 0.00, 0, 1,  5, NOW(), NOW()),
(488, 138, 'Fried Siomai',   'none', 0.00, 0, 1,  6, NOW(), NOW()),
(489, 138, 'Lumpia Shanghai','none', 0.00, 0, 1,  7, NOW(), NOW()),
(490, 138, 'Steam Siomai',   'none', 0.00, 0, 1,  8, NOW(), NOW()),
(491, 138, 'Corned Beef',    'none', 0.00, 0, 1,  9, NOW(), NOW()),
(492, 138, 'Hotdog Balls',   'none', 0.00, 0, 1, 10, NOW(), NOW()),

-- ===== Fried Chicken Rice Bowl Sauces (group 139) =====
(493, 139, 'Barbecue',       'none', 0.00, 1, 1,  1, NOW(), NOW()),
(494, 139, 'Buffalo',        'none', 0.00, 0, 1,  2, NOW(), NOW()),
(495, 139, 'Chili Sauce',    'none', 0.00, 0, 1,  3, NOW(), NOW()),
(496, 139, 'Sweet and Sour', 'none', 0.00, 0, 1,  4, NOW(), NOW()),
(497, 139, 'Sweet Chili',    'none', 0.00, 0, 1,  5, NOW(), NOW()),
(498, 139, 'Yangyeom',       'none', 0.00, 0, 1,  6, NOW(), NOW()),
(499, 139, 'Honey Butter',   'none', 0.00, 0, 1,  7, NOW(), NOW()),
(500, 139, 'Teriyaki',       'none', 0.00, 0, 1,  8, NOW(), NOW()),
(501, 139, 'Soy Garlic',     'none', 0.00, 0, 1,  9, NOW(), NOW()),

-- ===== Fried Pork Rice Bowl Sauces (group 140) =====
(502, 140, 'Barbecue',       'none', 0.00, 1, 1,  1, NOW(), NOW()),
(503, 140, 'Buffalo',        'none', 0.00, 0, 1,  2, NOW(), NOW()),
(504, 140, 'Chili Sauce',    'none', 0.00, 0, 1,  3, NOW(), NOW()),
(505, 140, 'Sweet and Sour', 'none', 0.00, 0, 1,  4, NOW(), NOW()),
(506, 140, 'Sweet Chili',    'none', 0.00, 0, 1,  5, NOW(), NOW()),
(507, 140, 'Yangyeom',       'none', 0.00, 0, 1,  6, NOW(), NOW()),
(508, 140, 'Honey Butter',   'none', 0.00, 0, 1,  7, NOW(), NOW()),
(509, 140, 'Teriyaki',       'none', 0.00, 0, 1,  8, NOW(), NOW()),
(510, 140, 'Soy Garlic',     'none', 0.00, 0, 1,  9, NOW(), NOW());
