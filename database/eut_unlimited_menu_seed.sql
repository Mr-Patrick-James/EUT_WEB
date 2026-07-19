-- ============================================================
-- EUT Snack House - Unlimited Menu Data Seed
-- Mula sa menu image: Unli Rice with Drinks
-- Codes: U1 = Pork Inasal, U2 = Chicken Inasal,
--        U3 = 3 Pcs. Wings, U4 = 5 Pcs. Wings
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - Unlimited (Unli Rice with Drinks)
--    Gagamitin ang id = 5
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(5, 'Unlimited', 'unlimited', 'flame', '#f97316', 'Unli Rice with Drinks – Choose your favorite main!', 0, 5, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS - 4 Unlimited meals
--    Susunod sa id = 20 (last id ay 19)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(20, 5, 'Pork Inasal',    'CODE: U1 | Unli Rice with Drinks – Grilled pork inasal basted with our special marinade', 229.00, NULL, 1, 0, 1, NOW(), NOW()),
(21, 5, 'Chicken Inasal', 'CODE: U2 | Unli Rice with Drinks – Juicy grilled chicken inasal with special baste', 199.00, NULL, 1, 0, 2, NOW(), NOW()),
(22, 5, '3 Pcs. Wings',   'CODE: U3 | Unli Rice with Drinks – 3 pieces of crispy fried chicken wings', 179.00, NULL, 0, 0, 3, NOW(), NOW()),
(23, 5, '5 Pcs. Wings',   'CODE: U4 | Unli Rice with Drinks – 5 pieces of crispy fried chicken wings', 279.00, NULL, 0, 0, 4, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER GROUPS - "Add 60 Upgrade" para sa bawat item
--    Susunod sa id = 27 (last id ay 26)
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(27, 20, 'addon', 'Upgrade',  'Add 60 for an upgrade option',  0, 1, 1, NOW(), NOW()),
(28, 21, 'addon', 'Upgrade',  'Add 60 for an upgrade option',  0, 1, 1, NOW(), NOW()),
(29, 22, 'addon', 'Upgrade',  'Add 60 for an upgrade option',  0, 1, 1, NOW(), NOW()),
(30, 23, 'addon', 'Upgrade',  'Add 60 for an upgrade option',  0, 1, 1, NOW(), NOW());

-- --------------------------------------------------------
-- 4. MODIFIER OPTIONS - "Add 60" option sa bawat group
--    Susunod sa id = 79 (last id ay 78)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(79, 27, 'Add 60 Upgrade', 'add', 60.00, 0, 1, 1, NOW(), NOW()),
(80, 28, 'Add 60 Upgrade', 'add', 60.00, 0, 1, 1, NOW(), NOW()),
(81, 29, 'Add 60 Upgrade', 'add', 60.00, 0, 1, 1, NOW(), NOW()),
(82, 30, 'Add 60 Upgrade', 'add', 60.00, 0, 1, 1, NOW(), NOW());
