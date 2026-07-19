-- ============================================================
-- EUT Snack House - E.U.T. SIGNATURE SHAKES Seed
-- Menu Special - 10 items with unique prices
-- Codes: FS1-FS10
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORY - E.U.T. Signature Shakes
--    id = 13 (susunod sa id=12)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(13, 'Signature Shakes', 'signature-shakes', 'glass-water', '#dc2626', 'EUT premium signature milk shakes – rich, creamy & indulgent!', 0, 13, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS - 10 signature shakes with individual prices
--    ids 53-62 (susunod sa id=52)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(53, 13, 'Strawberry Chocolate Milk Shake', 'CODE: FS1 | Rich strawberry & chocolate blended milk shake',             149.00, NULL, 1, 0,  1, NOW(), NOW()),
(54, 13, 'Dark Chocolate Milk Shake',       'CODE: FS2 | Intense dark chocolate premium milk shake',                  139.00, NULL, 1, 0,  2, NOW(), NOW()),
(55, 13, 'Oreo Chocolate Milk Shake',       'CODE: FS3 | Creamy Oreo & chocolate blended milk shake',                 129.00, NULL, 0, 0,  3, NOW(), NOW()),
(56, 13, 'White Chocolate Milk Shake',      'CODE: FS4 | Smooth & sweet white chocolate milk shake',                  129.00, NULL, 0, 0,  4, NOW(), NOW()),
(57, 13, 'Nutella Chocolate Milk Shake',    'CODE: FS5 | Indulgent Nutella & chocolate blended milk shake',           139.00, NULL, 1, 0,  5, NOW(), NOW()),
(58, 13, 'Manggo Graham Milk Shake',        'CODE: FS6 | Sweet mango graham cracker blended milk shake',              149.00, NULL, 0, 0,  6, NOW(), NOW()),
(59, 13, 'Peanut Butter Chocolate Shake',   'CODE: FS7 | Classic peanut butter & chocolate milk shake',              119.00, NULL, 0, 0,  7, NOW(), NOW()),
(60, 13, 'Chocolate Milk Shake',            'CODE: FS8 | Classic rich chocolate milk shake',                         139.00, NULL, 0, 0,  8, NOW(), NOW()),
(61, 13, 'Matcha Milk Shake',               'CODE: FS9 | Premium Japanese matcha blended milk shake',                149.00, NULL, 0, 0,  9, NOW(), NOW()),
(62, 13, 'Biscof Milk Shake',               'CODE: FS10 | Creamy Biscoff cookie-flavored milk shake',                129.00, NULL, 0, 0, 10, NOW(), NOW());
