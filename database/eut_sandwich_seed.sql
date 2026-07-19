-- ============================================================
-- EUT Snack House - E.U.T. SANDWICH Seed
-- Menu Special - 14 sandwich items with fixed prices
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - EUT Sandwich
--    id = 18 (susunod sa id=17)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(18, 'EUT Sandwich', 'eut-sandwich', 'sandwich', '#059669', 'EUT signature sandwiches – 14 varieties from classic to seafood!', 0, 18, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS - 14 sandwiches with individual prices
--    ids 107-120 (susunod sa id=106)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(107, 18, 'Classic Hotdog Sandwich',       'Classic Filipino hotdog on toasted bread',                           79.00, NULL, 1, 0,  1, NOW(), NOW()),
(108, 18, 'Ham and Tuna Sandwich',          'Savory combination of ham & tuna filling',                          149.00, NULL, 0, 0,  2, NOW(), NOW()),
(109, 18, 'Ham and Egg Sandwich',           'Ham & egg on toasted sandwich bread',                               129.00, NULL, 0, 0,  3, NOW(), NOW()),
(110, 18, 'Ham and Bacon Sandwich',         'Loaded ham & crispy bacon sandwich',                                159.00, NULL, 0, 0,  4, NOW(), NOW()),
(111, 18, 'Clubhouse Sandwich',             'Triple-decker clubhouse with ham, egg & veggies',                   169.00, NULL, 1, 0,  5, NOW(), NOW()),
(112, 18, 'Tuna Sandwich',                  'Classic tuna filling on toasted bread',                             139.00, NULL, 0, 0,  6, NOW(), NOW()),
(113, 18, 'Ham Sandwich',                   'Simple & savory ham sandwich',                                      129.00, NULL, 0, 0,  7, NOW(), NOW()),
(114, 18, 'Tuna and Egg Sandwich',          'Creamy tuna & egg sandwich',                                        149.00, NULL, 0, 0,  8, NOW(), NOW()),
(115, 18, 'Bacon Sandwich',                 'Crispy bacon sandwich on toasted bread',                            149.00, NULL, 0, 0,  9, NOW(), NOW()),
(116, 18, 'Hungarian Sandwich',             'Hungarian sausage sandwich with toppings',                          149.00, NULL, 0, 0, 10, NOW(), NOW()),
(117, 18, 'Crispy Chicken Sandwich',        'Crunchy crispy fried chicken sandwich',                             149.00, NULL, 1, 0, 11, NOW(), NOW()),
(118, 18, 'Shawarma Chicken Sandwich',      'Middle Eastern-style shawarma chicken in sandwich form',            149.00, NULL, 0, 0, 12, NOW(), NOW()),
(119, 18, 'Grilled Mozzarella Cheese',      'Warm grilled mozzarella cheese sandwich',                           139.00, NULL, 0, 0, 13, NOW(), NOW()),
(120, 18, 'Seafood Sandwich',               'Fresh seafood medley in a toasted sandwich',                        169.00, NULL, 0, 0, 14, NOW(), NOW());
