-- ============================================================
-- EUT Snack House - BILAO-KAN Seed
-- Menu Special - 6 Bilao sizes (B8, B10, B12, B14, B16, B18)
-- 3 Price Tiers per size based on item chosen:
--   Tier 1 (Basic): MIKI, CANTON, SPAG, SOTANGHON, BIHON
--   Tier 2 (Mid):   PALABOK, BIKO, MAJA
--   Tier 3 (Premium): MIX PANCIT, CARBONARA
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - Bilao-Kan
--    id = 16 (susunod sa id=15)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(16, 'Bilao-Kan', 'bilao-kan', 'package', '#d97706', 'EUT Bilao feast! Choose your size and what goes in your bilao.', 0, 16, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS - 6 bilao sizes (base price = Tier 1)
--    ids 85-90 (susunod sa id=84)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(85, 16, 'B8 Bilao',  'CODE: B8 | Good for ~8 pax. Choose what goes in your bilao! Tier 1 (P209), Tier 2 (P259), Tier 3 (P299)',     209.00, NULL, 1, 0, 1, NOW(), NOW()),
(86, 16, 'B10 Bilao', 'CODE: B10 | Good for ~10 pax. Choose what goes in your bilao! Tier 1 (P399), Tier 2 (P499), Tier 3 (P599)',  399.00, NULL, 0, 0, 2, NOW(), NOW()),
(87, 16, 'B12 Bilao', 'CODE: B12 | Good for ~12 pax. Choose what goes in your bilao! Tier 1 (P599), Tier 2 (P699), Tier 3 (P799)',  599.00, NULL, 0, 0, 3, NOW(), NOW()),
(88, 16, 'B14 Bilao', 'CODE: B14 | Good for ~14 pax. Choose what goes in your bilao! Tier 1 (P799), Tier 2 (P999), Tier 3 (P1299)', 799.00, NULL, 0, 0, 4, NOW(), NOW()),
(89, 16, 'B16 Bilao', 'CODE: B16 | Good for ~16 pax. Choose what goes in your bilao! Tier 1 (P999), Tier 2 (P1299), Tier 3 (P1599)',999.00, NULL, 0, 0, 5, NOW(), NOW()),
(90, 16, 'B18 Bilao', 'CODE: B18 | Good for ~18 pax. Choose what goes in your bilao! Tier 1 (P1299), Tier 2 (P1599), Tier 3 (P1999)',1299.00, NULL, 0, 0, 6, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER GROUPS - "Bilao Contents" per size
--    ids 80-85 (susunod sa id=79)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(80, 85, 'flavor', 'Bilao Contents', 'Choose what goes in your B8 Bilao',  1, 1, 1, NOW(), NOW()),
(81, 86, 'flavor', 'Bilao Contents', 'Choose what goes in your B10 Bilao', 1, 1, 1, NOW(), NOW()),
(82, 87, 'flavor', 'Bilao Contents', 'Choose what goes in your B12 Bilao', 1, 1, 1, NOW(), NOW()),
(83, 88, 'flavor', 'Bilao Contents', 'Choose what goes in your B14 Bilao', 1, 1, 1, NOW(), NOW()),
(84, 89, 'flavor', 'Bilao Contents', 'Choose what goes in your B16 Bilao', 1, 1, 1, NOW(), NOW()),
(85, 90, 'flavor', 'Bilao Contents', 'Choose what goes in your B18 Bilao', 1, 1, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 4. MODIFIER OPTIONS
--    ids 243-302 (10 options per group, 6 groups)
--    Tier 1 = base price (none, +0)
--    Tier 2 = mid price  (add, +adjustment)
--    Tier 3 = premium    (add, +adjustment)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- ===== B8 Bilao (group 80) | T1=₱209, T2=₱259(+50), T3=₱299(+90) =====
(243, 80, 'Miki',        'none', 0.00,  1, 1,  1, NOW(), NOW()),
(244, 80, 'Canton',      'none', 0.00,  0, 1,  2, NOW(), NOW()),
(245, 80, 'Spag',        'none', 0.00,  0, 1,  3, NOW(), NOW()),
(246, 80, 'Sotanghon',   'none', 0.00,  0, 1,  4, NOW(), NOW()),
(247, 80, 'Bihon',       'none', 0.00,  0, 1,  5, NOW(), NOW()),
(248, 80, 'Palabok',     'add',  50.00, 0, 1,  6, NOW(), NOW()),
(249, 80, 'Biko',        'add',  50.00, 0, 1,  7, NOW(), NOW()),
(250, 80, 'Maja',        'add',  50.00, 0, 1,  8, NOW(), NOW()),
(251, 80, 'Mix Pancit',  'add',  90.00, 0, 1,  9, NOW(), NOW()),
(252, 80, 'Carbonara',   'add',  90.00, 0, 1, 10, NOW(), NOW()),

-- ===== B10 Bilao (group 81) | T1=₱399, T2=₱499(+100), T3=₱599(+200) =====
(253, 81, 'Miki',        'none', 0.00,   1, 1,  1, NOW(), NOW()),
(254, 81, 'Canton',      'none', 0.00,   0, 1,  2, NOW(), NOW()),
(255, 81, 'Spag',        'none', 0.00,   0, 1,  3, NOW(), NOW()),
(256, 81, 'Sotanghon',   'none', 0.00,   0, 1,  4, NOW(), NOW()),
(257, 81, 'Bihon',       'none', 0.00,   0, 1,  5, NOW(), NOW()),
(258, 81, 'Palabok',     'add',  100.00, 0, 1,  6, NOW(), NOW()),
(259, 81, 'Biko',        'add',  100.00, 0, 1,  7, NOW(), NOW()),
(260, 81, 'Maja',        'add',  100.00, 0, 1,  8, NOW(), NOW()),
(261, 81, 'Mix Pancit',  'add',  200.00, 0, 1,  9, NOW(), NOW()),
(262, 81, 'Carbonara',   'add',  200.00, 0, 1, 10, NOW(), NOW()),

-- ===== B12 Bilao (group 82) | T1=₱599, T2=₱699(+100), T3=₱799(+200) =====
(263, 82, 'Miki',        'none', 0.00,   1, 1,  1, NOW(), NOW()),
(264, 82, 'Canton',      'none', 0.00,   0, 1,  2, NOW(), NOW()),
(265, 82, 'Spag',        'none', 0.00,   0, 1,  3, NOW(), NOW()),
(266, 82, 'Sotanghon',   'none', 0.00,   0, 1,  4, NOW(), NOW()),
(267, 82, 'Bihon',       'none', 0.00,   0, 1,  5, NOW(), NOW()),
(268, 82, 'Palabok',     'add',  100.00, 0, 1,  6, NOW(), NOW()),
(269, 82, 'Biko',        'add',  100.00, 0, 1,  7, NOW(), NOW()),
(270, 82, 'Maja',        'add',  100.00, 0, 1,  8, NOW(), NOW()),
(271, 82, 'Mix Pancit',  'add',  200.00, 0, 1,  9, NOW(), NOW()),
(272, 82, 'Carbonara',   'add',  200.00, 0, 1, 10, NOW(), NOW()),

-- ===== B14 Bilao (group 83) | T1=₱799, T2=₱999(+200), T3=₱1299(+500) =====
(273, 83, 'Miki',        'none', 0.00,   1, 1,  1, NOW(), NOW()),
(274, 83, 'Canton',      'none', 0.00,   0, 1,  2, NOW(), NOW()),
(275, 83, 'Spag',        'none', 0.00,   0, 1,  3, NOW(), NOW()),
(276, 83, 'Sotanghon',   'none', 0.00,   0, 1,  4, NOW(), NOW()),
(277, 83, 'Bihon',       'none', 0.00,   0, 1,  5, NOW(), NOW()),
(278, 83, 'Palabok',     'add',  200.00, 0, 1,  6, NOW(), NOW()),
(279, 83, 'Biko',        'add',  200.00, 0, 1,  7, NOW(), NOW()),
(280, 83, 'Maja',        'add',  200.00, 0, 1,  8, NOW(), NOW()),
(281, 83, 'Mix Pancit',  'add',  500.00, 0, 1,  9, NOW(), NOW()),
(282, 83, 'Carbonara',   'add',  500.00, 0, 1, 10, NOW(), NOW()),

-- ===== B16 Bilao (group 84) | T1=₱999, T2=₱1299(+300), T3=₱1599(+600) =====
(283, 84, 'Miki',        'none', 0.00,   1, 1,  1, NOW(), NOW()),
(284, 84, 'Canton',      'none', 0.00,   0, 1,  2, NOW(), NOW()),
(285, 84, 'Spag',        'none', 0.00,   0, 1,  3, NOW(), NOW()),
(286, 84, 'Sotanghon',   'none', 0.00,   0, 1,  4, NOW(), NOW()),
(287, 84, 'Bihon',       'none', 0.00,   0, 1,  5, NOW(), NOW()),
(288, 84, 'Palabok',     'add',  300.00, 0, 1,  6, NOW(), NOW()),
(289, 84, 'Biko',        'add',  300.00, 0, 1,  7, NOW(), NOW()),
(290, 84, 'Maja',        'add',  300.00, 0, 1,  8, NOW(), NOW()),
(291, 84, 'Mix Pancit',  'add',  600.00, 0, 1,  9, NOW(), NOW()),
(292, 84, 'Carbonara',   'add',  600.00, 0, 1, 10, NOW(), NOW()),

-- ===== B18 Bilao (group 85) | T1=₱1299, T2=₱1599(+300), T3=₱1999(+700) =====
(293, 85, 'Miki',        'none', 0.00,   1, 1,  1, NOW(), NOW()),
(294, 85, 'Canton',      'none', 0.00,   0, 1,  2, NOW(), NOW()),
(295, 85, 'Spag',        'none', 0.00,   0, 1,  3, NOW(), NOW()),
(296, 85, 'Sotanghon',   'none', 0.00,   0, 1,  4, NOW(), NOW()),
(297, 85, 'Bihon',       'none', 0.00,   0, 1,  5, NOW(), NOW()),
(298, 85, 'Palabok',     'add',  300.00, 0, 1,  6, NOW(), NOW()),
(299, 85, 'Biko',        'add',  300.00, 0, 1,  7, NOW(), NOW()),
(300, 85, 'Maja',        'add',  300.00, 0, 1,  8, NOW(), NOW()),
(301, 85, 'Mix Pancit',  'add',  700.00, 0, 1,  9, NOW(), NOW()),
(302, 85, 'Carbonara',   'add',  700.00, 0, 1, 10, NOW(), NOW());
