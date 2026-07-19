-- ============================================================
-- EUT Snack House - E.U.T. SEX COMBO Seed
-- SEX = Sinangag + Egg + viand(s)
-- Serve with Drinks and Egg
-- 14 fixed combo items (SEX-11 to SEX-24)
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - EUT Sex Combo
--    id = 25 (susunod sa id=24)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(25, 'EUT Sex Combo', 'eut-sex-combo', 'utensils-crossed', '#7c3aed', 'Sinangag + Egg + Viand combos served with Drinks and Egg!', 0, 25, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS - 14 combo items
--    ids 173-186 (susunod sa id=172)
--    All fixed prices, no modifiers needed
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(173, 25, 'SEX-11: Lumpia + Sisig + Balony',        'CODE: SEX-11 | Sinangag + Egg + Lumpia + Sisig + Balony. Served with drinks.',           209.00, NULL, 0, 0,  1, NOW(), NOW()),
(174, 25, 'SEX-12: Spam + Sisig',                   'CODE: SEX-12 | Sinangag + Egg + Spam + Sisig. Served with drinks.',                      199.00, NULL, 0, 0,  2, NOW(), NOW()),
(175, 25, 'SEX-13: Sisig + Bacon + Hotdog',         'CODE: SEX-13 | Sinangag + Egg + Sisig + Bacon + Hotdog. Served with drinks.',            209.00, NULL, 0, 0,  3, NOW(), NOW()),
(176, 25, 'SEX-14: Tocino + Tapa + Hungarian',      'CODE: SEX-14 | Sinangag + Egg + Tocino + Tapa + Hungarian. Served with drinks.',         239.00, NULL, 0, 0,  4, NOW(), NOW()),
(177, 25, 'SEX-15: Longanisa + FC + Spam',          'CODE: SEX-15 | Sinangag + Egg + Longanisa + Fried Chicken + Spam. Served with drinks.',  199.00, NULL, 0, 0,  5, NOW(), NOW()),
(178, 25, 'SEX-16: Sisig + Tapa + FC',              'CODE: SEX-16 | Sinangag + Egg + Sisig + Tapa + Fried Chicken. Served with drinks.',      219.00, NULL, 0, 0,  6, NOW(), NOW()),
(179, 25, 'SEX-17: Sisig + Fillet + Hotdog',        'CODE: SEX-17 | Sinangag + Egg + Sisig + Fillet + Hotdog. Served with drinks.',           199.00, NULL, 0, 0,  7, NOW(), NOW()),
(180, 25, 'SEX-18: Lumpia + Sisig + Tapa',          'CODE: SEX-18 | Sinangag + Egg + Lumpia + Sisig + Tapa. Served with drinks.',             219.00, NULL, 0, 0,  8, NOW(), NOW()),
(181, 25, 'SEX-19: Bangus + Sisig',                 'CODE: SEX-19 | Sinangag + Egg + Bangus + Sisig. Served with drinks.',                    199.00, NULL, 0, 0,  9, NOW(), NOW()),
(182, 25, 'SEX-20: Sisig + Bacon + Hotdog',         'CODE: SEX-20 | Sinangag + Egg + Sisig + Bacon + Hotdog. Served with drinks.',            229.00, NULL, 0, 0, 10, NOW(), NOW()),
(183, 25, 'SEX-21: Tocino + Tapa + FC',             'CODE: SEX-21 | Sinangag + Egg + Tocino + Tapa + Fried Chicken. Served with drinks.',     229.00, NULL, 0, 0, 11, NOW(), NOW()),
(184, 25, 'SEX-22: Longanisa + FC + Spam',          'CODE: SEX-22 | Sinangag + Egg + Longanisa + Fried Chicken + Spam. Served with drinks.',  199.00, NULL, 0, 0, 12, NOW(), NOW()),
(185, 25, 'SEX-23: Sisig + Tapa + Hotdog',          'CODE: SEX-23 | Sinangag + Egg + Sisig + Tapa + Hotdog. Served with drinks.',             229.00, NULL, 0, 0, 13, NOW(), NOW()),
(186, 25, 'SEX-24: Sisig + Fillet + Hungarian',     'CODE: SEX-24 | Sinangag + Egg + Sisig + Fillet + Hungarian. Served with drinks.',        239.00, NULL, 0, 0, 14, NOW(), NOW());
