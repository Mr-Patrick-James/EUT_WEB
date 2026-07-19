-- ============================================================
-- EUT Snack House - HIWA HIWALAY SA E.U.T. Seed (CORRECTED)
-- Correct prices from actual menu image
-- MAG-ISA = solo serving | MAY KALAGUYO = with companion/kanin
-- P16 (Pork Sisig) and P17 (Crispy Pata) = single price only
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY
--    id = 21
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(21, 'Hiwa Hiwalay Sa E.U.T.', 'hiwa-hiwalay', 'utensils', '#15803d', 'Filipino favorites – order Mag-Isa or May Kalaguyo!', 0, 21, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS — ids 143-159
--    Base price = MAG-ISA price
--    P16 Pork Sisig & P17 Crispy Pata = single price (no May Kalaguyo)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(143, 21, 'Sinigang na Baboy',       'Classic pork sinigang in tamarind broth',                          350.00, NULL, 1, 0,  1, NOW(), NOW()),
(144, 21, 'Sinigang na Hipon',       'Fresh shrimp sinigang in tamarind broth',                          400.00, NULL, 0, 0,  2, NOW(), NOW()),
(145, 21, 'Sinigang na Bangus',      'Milkfish sinigang in tamarind broth',                              300.00, NULL, 0, 0,  3, NOW(), NOW()),
(146, 21, 'Chopsuey',                'Stir-fried mixed vegetables Filipino style',                        280.00, NULL, 0, 0,  4, NOW(), NOW()),
(147, 21, 'Pinakbet',                'Classic pinakbet with bagoong',                                    260.00, NULL, 0, 0,  5, NOW(), NOW()),
(148, 21, 'Pork Binagoongan',        'Crispy pork cooked in shrimp paste (bagoong)',                     320.00, NULL, 0, 0,  6, NOW(), NOW()),
(149, 21, 'Pork Bicol Express',      'Spicy pork & coconut milk Bicol Express',                          320.00, NULL, 0, 0,  7, NOW(), NOW()),
(150, 21, 'Bangus Bicol Express',    'Milkfish Bicol Express in spicy coconut milk',                     320.00, NULL, 0, 0,  8, NOW(), NOW()),
(151, 21, 'Lumpia Shanghai',         'Crispy fried pork spring rolls',                                   159.00, NULL, 1, 0,  9, NOW(), NOW()),
(152, 21, 'Beef Kare-Kare',          'Beef kare-kare in rich peanut sauce',                              380.00, NULL, 0, 0, 10, NOW(), NOW()),
(153, 21, 'Crispy Pork Kare-Kare',   'Crispy pork belly kare-kare in peanut sauce',                     360.00, NULL, 0, 0, 11, NOW(), NOW()),
(154, 21, 'Fish Fillet',             'Tender fish fillet with sweet & sour sauce',                       270.00, NULL, 0, 0, 12, NOW(), NOW()),
(155, 21, 'Pork BBQ',                'Grilled pork BBQ skewers',                                        199.00, NULL, 1, 0, 13, NOW(), NOW()),
(156, 21, 'Sizzling Tofu',           'Crispy tofu on a sizzling plate with sauce',                       130.00, NULL, 0, 0, 14, NOW(), NOW()),
(157, 21, 'Bulalo',                  'Slow-cooked beef shank & bone marrow soup',                        549.00, NULL, 1, 0, 15, NOW(), NOW()),
(158, 21, 'Pork Sisig',              'Sizzling chopped pork sisig with calamansi',                       179.00, NULL, 0, 0, 16, NOW(), NOW()),
(159, 21, 'Crispy Pata',             'Deep-fried whole pork leg – crispy outside, tender inside',        850.00, NULL, 1, 0, 17, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER GROUPS - Mag-Isa / May Kalaguyo
--    Only for items 143-157 (NOT Pork Sisig & Crispy Pata)
--    ids 106-120 (susunod sa id=105)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(106, 143, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW()),
(107, 144, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW()),
(108, 145, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW()),
(109, 146, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW()),
(110, 147, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW()),
(111, 148, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW()),
(112, 149, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW()),
(113, 150, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW()),
(114, 151, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW()),
(115, 152, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW()),
(116, 153, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW()),
(117, 154, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW()),
(118, 155, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW()),
(119, 156, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW()),
(120, 157, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, 1, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 4. MODIFIER OPTIONS — Mag-Isa (base) + May Kalaguyo (+adj)
--    ids 351-380
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- Sinigang na Baboy (106): ₱350 | ₱659 (+309)
(351, 106, 'Mag-Isa',      'none', 0.00,  1, 1, 1, NOW(), NOW()),
(352, 106, 'May Kalaguyo', 'add', 309.00, 0, 1, 2, NOW(), NOW()),
-- Sinigang na Hipon (107): ₱400 | ₱790 (+390)
(353, 107, 'Mag-Isa',      'none', 0.00,  1, 1, 1, NOW(), NOW()),
(354, 107, 'May Kalaguyo', 'add', 390.00, 0, 1, 2, NOW(), NOW()),
-- Sinigang na Bangus (108): ₱300 | ₱559 (+259)
(355, 108, 'Mag-Isa',      'none', 0.00,  1, 1, 1, NOW(), NOW()),
(356, 108, 'May Kalaguyo', 'add', 259.00, 0, 1, 2, NOW(), NOW()),
-- Chopsuey (109): ₱280 | ₱550 (+270)
(357, 109, 'Mag-Isa',      'none', 0.00,  1, 1, 1, NOW(), NOW()),
(358, 109, 'May Kalaguyo', 'add', 270.00, 0, 1, 2, NOW(), NOW()),
-- Pinakbet (110): ₱260 | ₱500 (+240)
(359, 110, 'Mag-Isa',      'none', 0.00,  1, 1, 1, NOW(), NOW()),
(360, 110, 'May Kalaguyo', 'add', 240.00, 0, 1, 2, NOW(), NOW()),
-- Pork Binagoongan (111): ₱320 | ₱620 (+300)
(361, 111, 'Mag-Isa',      'none', 0.00,  1, 1, 1, NOW(), NOW()),
(362, 111, 'May Kalaguyo', 'add', 300.00, 0, 1, 2, NOW(), NOW()),
-- Pork Bicol Express (112): ₱320 | ₱620 (+300)
(363, 112, 'Mag-Isa',      'none', 0.00,  1, 1, 1, NOW(), NOW()),
(364, 112, 'May Kalaguyo', 'add', 300.00, 0, 1, 2, NOW(), NOW()),
-- Bangus Bicol Express (113): ₱320 | ₱600 (+280)
(365, 113, 'Mag-Isa',      'none', 0.00,  1, 1, 1, NOW(), NOW()),
(366, 113, 'May Kalaguyo', 'add', 280.00, 0, 1, 2, NOW(), NOW()),
-- Lumpia Shanghai (114): ₱159 | ₱329 (+170)
(367, 114, 'Mag-Isa',      'none', 0.00,  1, 1, 1, NOW(), NOW()),
(368, 114, 'May Kalaguyo', 'add', 170.00, 0, 1, 2, NOW(), NOW()),
-- Beef Kare-Kare (115): ₱380 | ₱750 (+370)
(369, 115, 'Mag-Isa',      'none', 0.00,  1, 1, 1, NOW(), NOW()),
(370, 115, 'May Kalaguyo', 'add', 370.00, 0, 1, 2, NOW(), NOW()),
-- Crispy Pork Kare-Kare (116): ₱360 | ₱700 (+340)
(371, 116, 'Mag-Isa',      'none', 0.00,  1, 1, 1, NOW(), NOW()),
(372, 116, 'May Kalaguyo', 'add', 340.00, 0, 1, 2, NOW(), NOW()),
-- Fish Fillet (117): ₱270 | ₱520 (+250)
(373, 117, 'Mag-Isa',      'none', 0.00,  1, 1, 1, NOW(), NOW()),
(374, 117, 'May Kalaguyo', 'add', 250.00, 0, 1, 2, NOW(), NOW()),
-- Pork BBQ (118): ₱199 | ₱390 (+191)
(375, 118, 'Mag-Isa',      'none', 0.00,  1, 1, 1, NOW(), NOW()),
(376, 118, 'May Kalaguyo', 'add', 191.00, 0, 1, 2, NOW(), NOW()),
-- Sizzling Tofu (119): ₱130 | ₱190 (+60)
(377, 119, 'Mag-Isa',      'none', 0.00, 1, 1, 1, NOW(), NOW()),
(378, 119, 'May Kalaguyo', 'add',  60.00, 0, 1, 2, NOW(), NOW()),
-- Bulalo (120): ₱549 | ₱999 (+450)
(379, 120, 'Mag-Isa',      'none', 0.00,  1, 1, 1, NOW(), NOW()),
(380, 120, 'May Kalaguyo', 'add', 450.00, 0, 1, 2, NOW(), NOW());
