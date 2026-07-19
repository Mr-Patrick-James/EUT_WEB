-- ============================================================
-- EUT Snack House - E.U.T. GIANT BURGER Seed
-- Menu Special - 5 giant burger items with fixed prices
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - EUT Giant Burger
--    id = 19 (susunod sa id=18)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(19, 'EUT Giant Burger', 'eut-giant-burger', 'beef', '#dc2626', 'EUT premium giant burgers – oversized, indulgent & absolutely delicious!', 0, 19, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS - 5 giant burgers
--    ids 121-125 (susunod sa id=120)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(121, 19, 'Giant Classic Mozzarella Burger', 'A giant classic burger loaded with creamy mozzarella cheese',                        289.00, NULL, 1, 0, 1, NOW(), NOW()),
(122, 19, 'Giant Seafood Burger',            'Oversized seafood patty burger with fresh toppings',                                  429.00, NULL, 0, 0, 2, NOW(), NOW()),
(123, 19, 'Aloha Giant Seafood Burger',      'Tropical-inspired giant seafood burger with aloha flair',                             489.00, NULL, 1, 0, 3, NOW(), NOW()),
(124, 19, 'Aloha Giant Mozzarella Burger',   'Tropical aloha-style giant burger with mozzarella cheese',                           329.00, NULL, 0, 0, 4, NOW(), NOW()),
(125, 19, 'EUT Giant Signature Burger',      'The ultimate EUT signature giant burger – our house special!',                       499.00, NULL, 1, 0, 5, NOW(), NOW());
