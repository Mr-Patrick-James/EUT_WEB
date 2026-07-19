-- ============================================================
-- EUT Snack House - PASTA AND PANCIT Seed
-- Serve with Slice Bread
-- 16 items (P1-P16) with Regular and Special sizes
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - Pasta and Pancit
--    id = 17 (susunod sa id=16)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(17, 'Pasta and Pancit', 'pasta-and-pancit', 'utensils', '#b45309', 'Served with slice bread – guisado, palabok, spaghetti, carbonara & more!', 0, 17, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS - 16 items
--    ids 91-106 (susunod sa id=90)
--    Base price = Regular price
--    P9 & P11 are single-price (no Special size)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
( 91, 17, 'Miki Guisado',              'CODE: P1  | Stir-fried miki noodles. Served with slice bread.',                          119.00, NULL, 1, 0,  1, NOW(), NOW()),
( 92, 17, 'Bihon Guisado',             'CODE: P2  | Stir-fried bihon noodles. Served with slice bread.',                         119.00, NULL, 0, 0,  2, NOW(), NOW()),
( 93, 17, 'Canton Guisado',            'CODE: P3  | Stir-fried canton noodles. Served with slice bread.',                        129.00, NULL, 0, 0,  3, NOW(), NOW()),
( 94, 17, 'Miki-Bihon Guisado',        'CODE: P4  | Mix of miki & bihon noodles. Served with slice bread.',                      139.00, NULL, 0, 0,  4, NOW(), NOW()),
( 95, 17, 'Bihon-Canton Guisado',      'CODE: P5  | Mix of bihon & canton noodles. Served with slice bread.',                    139.00, NULL, 0, 0,  5, NOW(), NOW()),
( 96, 17, 'Miki-Canton Guisado',       'CODE: P6  | Mix of miki & canton noodles. Served with slice bread.',                     139.00, NULL, 0, 0,  6, NOW(), NOW()),
( 97, 17, 'Sotanghon Guisado',         'CODE: P7  | Stir-fried glass noodles. Served with slice bread.',                         119.00, NULL, 0, 0,  7, NOW(), NOW()),
( 98, 17, 'Palabok',                   'CODE: P8  | Classic Filipino palabok with savory sauce. Served with slice bread.',        119.00, NULL, 1, 0,  8, NOW(), NOW()),
( 99, 17, 'Loming Bitin Sa E.U.T.',    'CODE: P9  | EUT small lomi bowl – just a little taste! Served with slice bread.',         89.00, NULL, 0, 0,  9, NOW(), NOW()),
(100, 17, 'Loming Sabik Sa E.U.T.',    'CODE: P10 | EUT medium lomi bowl – for the craving! Served with slice bread.',           209.00, NULL, 0, 0, 10, NOW(), NOW()),
(101, 17, 'Loming Sagad Sa E.U.T.',    'CODE: P11 | EUT large lomi bowl – full & hearty! Served with slice bread.',              399.00, NULL, 0, 0, 11, NOW(), NOW()),
(102, 17, 'Seafood Pancit Guisado',    'CODE: P12 | Stir-fried pancit with fresh seafood. Served with slice bread.',             189.00, NULL, 0, 0, 12, NOW(), NOW()),
(103, 17, 'Spaghetti',                 'CODE: P13 | Filipino-style spaghetti with sweet sauce. Served with slice bread.',        129.00, NULL, 1, 0, 13, NOW(), NOW()),
(104, 17, 'Ham and Tuna Pasta',         'CODE: P14 | Creamy pasta with ham & tuna. Served with slice bread.',                    129.00, NULL, 0, 0, 14, NOW(), NOW()),
(105, 17, 'Seafood Pasta',             'CODE: P15 | Pasta with fresh seafood medley. Served with slice bread.',                  189.00, NULL, 0, 0, 15, NOW(), NOW()),
(106, 17, 'Carbonara',                 'CODE: P16 | Creamy Filipino-style carbonara. Served with slice bread.',                  169.00, NULL, 0, 0, 16, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER GROUPS - Regular/Special size
--    P9 (id=99) and P11 (id=101) have NO size modifier
--    ids 86-99 (susunod sa id=85) — 14 groups
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
( 86,  91, 'modifier', 'Size', 'Regular or Special serving',  1, 1, 1, NOW(), NOW()),
( 87,  92, 'modifier', 'Size', 'Regular or Special serving',  1, 1, 1, NOW(), NOW()),
( 88,  93, 'modifier', 'Size', 'Regular or Special serving',  1, 1, 1, NOW(), NOW()),
( 89,  94, 'modifier', 'Size', 'Regular or Special serving',  1, 1, 1, NOW(), NOW()),
( 90,  95, 'modifier', 'Size', 'Regular or Special serving',  1, 1, 1, NOW(), NOW()),
( 91,  96, 'modifier', 'Size', 'Regular or Special serving',  1, 1, 1, NOW(), NOW()),
( 92,  97, 'modifier', 'Size', 'Regular or Special serving',  1, 1, 1, NOW(), NOW()),
( 93,  98, 'modifier', 'Size', 'Regular or Special serving',  1, 1, 1, NOW(), NOW()),
-- P9 & P11 skipped (single price)
( 94, 100, 'modifier', 'Size', 'Regular or Special serving',  1, 1, 1, NOW(), NOW()),
( 95, 102, 'modifier', 'Size', 'Regular or Special serving',  1, 1, 1, NOW(), NOW()),
( 96, 103, 'modifier', 'Size', 'Regular or Special serving',  1, 1, 1, NOW(), NOW()),
( 97, 104, 'modifier', 'Size', 'Regular or Special serving',  1, 1, 1, NOW(), NOW()),
( 98, 105, 'modifier', 'Size', 'Regular or Special serving',  1, 1, 1, NOW(), NOW()),
( 99, 106, 'modifier', 'Size', 'Regular or Special serving',  1, 1, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 4. MODIFIER OPTIONS - Regular (base) and Special (+adjustment)
--    ids 303-330 (susunod sa id=302)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- P1 Miki Guisado (86): Reg=₱119, Spec=₱199 (+80)
(303, 86, 'Regular', 'none',  0.00, 1, 1, 1, NOW(), NOW()),
(304, 86, 'Special', 'add',  80.00, 0, 1, 2, NOW(), NOW()),
-- P2 Bihon Guisado (87): Reg=₱119, Spec=₱199 (+80)
(305, 87, 'Regular', 'none',  0.00, 1, 1, 1, NOW(), NOW()),
(306, 87, 'Special', 'add',  80.00, 0, 1, 2, NOW(), NOW()),
-- P3 Canton Guisado (88): Reg=₱129, Spec=₱209 (+80)
(307, 88, 'Regular', 'none',  0.00, 1, 1, 1, NOW(), NOW()),
(308, 88, 'Special', 'add',  80.00, 0, 1, 2, NOW(), NOW()),
-- P4 Miki-Bihon (89): Reg=₱139, Spec=₱219 (+80)
(309, 89, 'Regular', 'none',  0.00, 1, 1, 1, NOW(), NOW()),
(310, 89, 'Special', 'add',  80.00, 0, 1, 2, NOW(), NOW()),
-- P5 Bihon-Canton (90): Reg=₱139, Spec=₱219 (+80)
(311, 90, 'Regular', 'none',  0.00, 1, 1, 1, NOW(), NOW()),
(312, 90, 'Special', 'add',  80.00, 0, 1, 2, NOW(), NOW()),
-- P6 Miki-Canton (91): Reg=₱139, Spec=₱219 (+80)
(313, 91, 'Regular', 'none',  0.00, 1, 1, 1, NOW(), NOW()),
(314, 91, 'Special', 'add',  80.00, 0, 1, 2, NOW(), NOW()),
-- P7 Sotanghon (92): Reg=₱119, Spec=₱209 (+90)
(315, 92, 'Regular', 'none',  0.00, 1, 1, 1, NOW(), NOW()),
(316, 92, 'Special', 'add',  90.00, 0, 1, 2, NOW(), NOW()),
-- P8 Palabok (93): Reg=₱119, Spec=₱209 (+90)
(317, 93, 'Regular', 'none',  0.00, 1, 1, 1, NOW(), NOW()),
(318, 93, 'Special', 'add',  90.00, 0, 1, 2, NOW(), NOW()),
-- P10 Loming Sabik (94): Reg=₱209, Spec=₱259 (+50)
(319, 94, 'Regular', 'none',  0.00, 1, 1, 1, NOW(), NOW()),
(320, 94, 'Special', 'add',  50.00, 0, 1, 2, NOW(), NOW()),
-- P12 Seafood Pancit (95): Reg=₱189, Spec=₱199 (+10)
(321, 95, 'Regular', 'none',  0.00, 1, 1, 1, NOW(), NOW()),
(322, 95, 'Special', 'add',  10.00, 0, 1, 2, NOW(), NOW()),
-- P13 Spaghetti (96): Reg=₱129, Spec=₱199 (+70)
(323, 96, 'Regular', 'none',  0.00, 1, 1, 1, NOW(), NOW()),
(324, 96, 'Special', 'add',  70.00, 0, 1, 2, NOW(), NOW()),
-- P14 Ham & Tuna Pasta (97): Reg=₱129, Spec=₱199 (+70)
(325, 97, 'Regular', 'none',  0.00, 1, 1, 1, NOW(), NOW()),
(326, 97, 'Special', 'add',  70.00, 0, 1, 2, NOW(), NOW()),
-- P15 Seafood Pasta (98): Reg=₱189, Spec=₱269 (+80)
(327, 98, 'Regular', 'none',  0.00, 1, 1, 1, NOW(), NOW()),
(328, 98, 'Special', 'add',  80.00, 0, 1, 2, NOW(), NOW()),
-- P16 Carbonara (99): Reg=₱169, Spec=₱199 (+30)
(329, 99, 'Regular', 'none',  0.00, 1, 1, 1, NOW(), NOW()),
(330, 99, 'Special', 'add',  30.00, 0, 1, 2, NOW(), NOW());
