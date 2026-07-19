-- ============================================================
-- EUT Snack House - E.U.T. SA PAK-PAK & SA HITA Seed
-- PAK-PAK = Wings Only (W1-W5)
-- HITA    = Drumstick/Legs Only (H1-H5)
-- 9 Flavors: Sweet Chili, Barbecue, Buffalo, Yangnyeom,
--            Teriyaki, Lemon Glaze, Honey Butter,
--            Soy Garlic, Garlic Parmesan Cheese
-- Hita: FOR SPICY ONLY ADD P10
-- ============================================================

-- --------------------------------------------------------
-- 1. CATEGORIES
--    id=22: EUT Sa Pak-Pak (Wings)
--    id=23: EUT Sa Hita (Drumstick/Legs)
-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(22, 'EUT Sa Pak-Pak', 'eut-sa-pak-pak', 'drumstick', '#ea580c', 'Single Serve – Wings Only! Choose your flavor(s).', 0, 22, NOW(), NOW()),
(23, 'EUT Sa Hita',    'eut-sa-hita',    'drumstick', '#7c3aed', 'Single Serve – Drumstick/Legs Only! Choose your flavor(s). Spicy +P10.', 0, 23, NOW(), NOW());

-- --------------------------------------------------------
-- 2. MENU ITEMS
--    PAK-PAK: ids 160-164 (W1-W5)
--    HITA:    ids 165-169 (H1-H5)
-- --------------------------------------------------------

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
-- PAK-PAK (Wings)
(160, 22, 'W1 – 3 Pcs Wings',  'CODE: W1 | 3 pcs wings – choose 1 flavor',   169.00, NULL, 1, 0, 1, NOW(), NOW()),
(161, 22, 'W2 – 6 Pcs Wings',  'CODE: W2 | 6 pcs wings – choose 2 flavors',  399.00, NULL, 0, 0, 2, NOW(), NOW()),
(162, 22, 'W3 – 9 Pcs Wings',  'CODE: W3 | 9 pcs wings – choose 3 flavors',  499.00, NULL, 0, 0, 3, NOW(), NOW()),
(163, 22, 'W4 – 12 Pcs Wings', 'CODE: W4 | 12 pcs wings – choose 4 flavors', 668.00, NULL, 0, 0, 4, NOW(), NOW()),
(164, 22, 'W5 – 24 Pcs Wings', 'CODE: W5 | 24 pcs wings – choose 5 flavors', 1339.00, NULL, 0, 0, 5, NOW(), NOW()),
-- HITA (Drumstick/Legs)
(165, 23, 'H1 – 3 Pcs Hita',  'CODE: H1 | 3 pcs drumstick/legs. Spicy +P10.',  229.00, NULL, 1, 0, 1, NOW(), NOW()),
(166, 23, 'H2 – 6 Pcs Hita',  'CODE: H2 | 6 pcs drumstick/legs. Spicy +P10.',  459.00, NULL, 0, 0, 2, NOW(), NOW()),
(167, 23, 'H3 – 9 Pcs Hita',  'CODE: H3 | 9 pcs drumstick/legs. Spicy +P10.',  689.00, NULL, 0, 0, 3, NOW(), NOW()),
(168, 23, 'H4 – 12 Pcs Hita', 'CODE: H4 | 12 pcs drumstick/legs. Spicy +P10.', 919.00, NULL, 0, 0, 4, NOW(), NOW()),
(169, 23, 'H5 – 24 Pcs Hita', 'CODE: H5 | 24 pcs drumstick/legs. Spicy +P10.', 1839.00, NULL, 0, 0, 5, NOW(), NOW());

-- --------------------------------------------------------
-- 3. MODIFIER GROUPS
--    PAK-PAK Flavor: ids 123-127
--    HITA Flavor:    ids 128-132
--    HITA Spicy add-on: ids 133-137
-- --------------------------------------------------------

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- PAK-PAK Flavor groups
(123, 160, 'flavor', 'Flavor', 'Choose 1 flavor for your 3 pcs wings',   1, 1, 1, NOW(), NOW()),
(124, 161, 'flavor', 'Flavor', 'Choose 2 flavors for your 6 pcs wings',  1, 1, 1, NOW(), NOW()),
(125, 162, 'flavor', 'Flavor', 'Choose 3 flavors for your 9 pcs wings',  1, 1, 1, NOW(), NOW()),
(126, 163, 'flavor', 'Flavor', 'Choose 4 flavors for your 12 pcs wings', 1, 1, 1, NOW(), NOW()),
(127, 164, 'flavor', 'Flavor', 'Choose 5 flavors for your 24 pcs wings', 1, 1, 1, NOW(), NOW()),
-- HITA Flavor groups
(128, 165, 'flavor', 'Flavor', 'Choose your flavor (Spicy +P10)',  1, 1, 1, NOW(), NOW()),
(129, 166, 'flavor', 'Flavor', 'Choose your flavor (Spicy +P10)',  1, 1, 1, NOW(), NOW()),
(130, 167, 'flavor', 'Flavor', 'Choose your flavor (Spicy +P10)',  1, 1, 1, NOW(), NOW()),
(131, 168, 'flavor', 'Flavor', 'Choose your flavor (Spicy +P10)',  1, 1, 1, NOW(), NOW()),
(132, 169, 'flavor', 'Flavor', 'Choose your flavor (Spicy +P10)',  1, 1, 1, NOW(), NOW()),
-- HITA Spicy add-on groups
(133, 165, 'modifier', 'Spicy Add-On', 'Add P10 for Spicy version', 0, 1, 2, NOW(), NOW()),
(134, 166, 'modifier', 'Spicy Add-On', 'Add P10 for Spicy version', 0, 1, 2, NOW(), NOW()),
(135, 167, 'modifier', 'Spicy Add-On', 'Add P10 for Spicy version', 0, 1, 2, NOW(), NOW()),
(136, 168, 'modifier', 'Spicy Add-On', 'Add P10 for Spicy version', 0, 1, 2, NOW(), NOW()),
(137, 169, 'modifier', 'Spicy Add-On', 'Add P10 for Spicy version', 0, 1, 2, NOW(), NOW());

-- --------------------------------------------------------
-- 4. MODIFIER OPTIONS
--    PAK-PAK: 9 flavors × 5 groups = 45 options (383–427)
--    HITA Flavor: 9 flavors × 5 groups = 45 options (428–472)
--    HITA Spicy: 2 options × 5 groups = 10 options (473–482)
-- --------------------------------------------------------

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
-- ===== PAK-PAK W1 Flavors (group 123) =====
(383, 123, 'Sweet Chili',          'none', 0.00, 1, 1, 1, NOW(), NOW()),
(384, 123, 'Barbecue',             'none', 0.00, 0, 1, 2, NOW(), NOW()),
(385, 123, 'Buffalo',              'none', 0.00, 0, 1, 3, NOW(), NOW()),
(386, 123, 'Yangnyeom',            'none', 0.00, 0, 1, 4, NOW(), NOW()),
(387, 123, 'Teriyaki',             'none', 0.00, 0, 1, 5, NOW(), NOW()),
(388, 123, 'Lemon Glaze',          'none', 0.00, 0, 1, 6, NOW(), NOW()),
(389, 123, 'Honey Butter',         'none', 0.00, 0, 1, 7, NOW(), NOW()),
(390, 123, 'Soy Garlic',           'none', 0.00, 0, 1, 8, NOW(), NOW()),
(391, 123, 'Garlic Parmesan Cheese','none',0.00, 0, 1, 9, NOW(), NOW()),
-- ===== PAK-PAK W2 Flavors (group 124) =====
(392, 124, 'Sweet Chili',          'none', 0.00, 1, 1, 1, NOW(), NOW()),
(393, 124, 'Barbecue',             'none', 0.00, 0, 1, 2, NOW(), NOW()),
(394, 124, 'Buffalo',              'none', 0.00, 0, 1, 3, NOW(), NOW()),
(395, 124, 'Yangnyeom',            'none', 0.00, 0, 1, 4, NOW(), NOW()),
(396, 124, 'Teriyaki',             'none', 0.00, 0, 1, 5, NOW(), NOW()),
(397, 124, 'Lemon Glaze',          'none', 0.00, 0, 1, 6, NOW(), NOW()),
(398, 124, 'Honey Butter',         'none', 0.00, 0, 1, 7, NOW(), NOW()),
(399, 124, 'Soy Garlic',           'none', 0.00, 0, 1, 8, NOW(), NOW()),
(400, 124, 'Garlic Parmesan Cheese','none',0.00, 0, 1, 9, NOW(), NOW()),
-- ===== PAK-PAK W3 Flavors (group 125) =====
(401, 125, 'Sweet Chili',          'none', 0.00, 1, 1, 1, NOW(), NOW()),
(402, 125, 'Barbecue',             'none', 0.00, 0, 1, 2, NOW(), NOW()),
(403, 125, 'Buffalo',              'none', 0.00, 0, 1, 3, NOW(), NOW()),
(404, 125, 'Yangnyeom',            'none', 0.00, 0, 1, 4, NOW(), NOW()),
(405, 125, 'Teriyaki',             'none', 0.00, 0, 1, 5, NOW(), NOW()),
(406, 125, 'Lemon Glaze',          'none', 0.00, 0, 1, 6, NOW(), NOW()),
(407, 125, 'Honey Butter',         'none', 0.00, 0, 1, 7, NOW(), NOW()),
(408, 125, 'Soy Garlic',           'none', 0.00, 0, 1, 8, NOW(), NOW()),
(409, 125, 'Garlic Parmesan Cheese','none',0.00, 0, 1, 9, NOW(), NOW()),
-- ===== PAK-PAK W4 Flavors (group 126) =====
(410, 126, 'Sweet Chili',          'none', 0.00, 1, 1, 1, NOW(), NOW()),
(411, 126, 'Barbecue',             'none', 0.00, 0, 1, 2, NOW(), NOW()),
(412, 126, 'Buffalo',              'none', 0.00, 0, 1, 3, NOW(), NOW()),
(413, 126, 'Yangnyeom',            'none', 0.00, 0, 1, 4, NOW(), NOW()),
(414, 126, 'Teriyaki',             'none', 0.00, 0, 1, 5, NOW(), NOW()),
(415, 126, 'Lemon Glaze',          'none', 0.00, 0, 1, 6, NOW(), NOW()),
(416, 126, 'Honey Butter',         'none', 0.00, 0, 1, 7, NOW(), NOW()),
(417, 126, 'Soy Garlic',           'none', 0.00, 0, 1, 8, NOW(), NOW()),
(418, 126, 'Garlic Parmesan Cheese','none',0.00, 0, 1, 9, NOW(), NOW()),
-- ===== PAK-PAK W5 Flavors (group 127) =====
(419, 127, 'Sweet Chili',          'none', 0.00, 1, 1, 1, NOW(), NOW()),
(420, 127, 'Barbecue',             'none', 0.00, 0, 1, 2, NOW(), NOW()),
(421, 127, 'Buffalo',              'none', 0.00, 0, 1, 3, NOW(), NOW()),
(422, 127, 'Yangnyeom',            'none', 0.00, 0, 1, 4, NOW(), NOW()),
(423, 127, 'Teriyaki',             'none', 0.00, 0, 1, 5, NOW(), NOW()),
(424, 127, 'Lemon Glaze',          'none', 0.00, 0, 1, 6, NOW(), NOW()),
(425, 127, 'Honey Butter',         'none', 0.00, 0, 1, 7, NOW(), NOW()),
(426, 127, 'Soy Garlic',           'none', 0.00, 0, 1, 8, NOW(), NOW()),
(427, 127, 'Garlic Parmesan Cheese','none',0.00, 0, 1, 9, NOW(), NOW()),
-- ===== HITA H1 Flavors (group 128) =====
(428, 128, 'Sweet Chili',          'none', 0.00, 1, 1, 1, NOW(), NOW()),
(429, 128, 'Barbecue',             'none', 0.00, 0, 1, 2, NOW(), NOW()),
(430, 128, 'Buffalo',              'none', 0.00, 0, 1, 3, NOW(), NOW()),
(431, 128, 'Yangnyeom',            'none', 0.00, 0, 1, 4, NOW(), NOW()),
(432, 128, 'Teriyaki',             'none', 0.00, 0, 1, 5, NOW(), NOW()),
(433, 128, 'Lemon Glaze',          'none', 0.00, 0, 1, 6, NOW(), NOW()),
(434, 128, 'Honey Butter',         'none', 0.00, 0, 1, 7, NOW(), NOW()),
(435, 128, 'Soy Garlic',           'none', 0.00, 0, 1, 8, NOW(), NOW()),
(436, 128, 'Garlic Parmesan Cheese','none',0.00, 0, 1, 9, NOW(), NOW()),
-- ===== HITA H2 Flavors (group 129) =====
(437, 129, 'Sweet Chili',          'none', 0.00, 1, 1, 1, NOW(), NOW()),
(438, 129, 'Barbecue',             'none', 0.00, 0, 1, 2, NOW(), NOW()),
(439, 129, 'Buffalo',              'none', 0.00, 0, 1, 3, NOW(), NOW()),
(440, 129, 'Yangnyeom',            'none', 0.00, 0, 1, 4, NOW(), NOW()),
(441, 129, 'Teriyaki',             'none', 0.00, 0, 1, 5, NOW(), NOW()),
(442, 129, 'Lemon Glaze',          'none', 0.00, 0, 1, 6, NOW(), NOW()),
(443, 129, 'Honey Butter',         'none', 0.00, 0, 1, 7, NOW(), NOW()),
(444, 129, 'Soy Garlic',           'none', 0.00, 0, 1, 8, NOW(), NOW()),
(445, 129, 'Garlic Parmesan Cheese','none',0.00, 0, 1, 9, NOW(), NOW()),
-- ===== HITA H3 Flavors (group 130) =====
(446, 130, 'Sweet Chili',          'none', 0.00, 1, 1, 1, NOW(), NOW()),
(447, 130, 'Barbecue',             'none', 0.00, 0, 1, 2, NOW(), NOW()),
(448, 130, 'Buffalo',              'none', 0.00, 0, 1, 3, NOW(), NOW()),
(449, 130, 'Yangnyeom',            'none', 0.00, 0, 1, 4, NOW(), NOW()),
(450, 130, 'Teriyaki',             'none', 0.00, 0, 1, 5, NOW(), NOW()),
(451, 130, 'Lemon Glaze',          'none', 0.00, 0, 1, 6, NOW(), NOW()),
(452, 130, 'Honey Butter',         'none', 0.00, 0, 1, 7, NOW(), NOW()),
(453, 130, 'Soy Garlic',           'none', 0.00, 0, 1, 8, NOW(), NOW()),
(454, 130, 'Garlic Parmesan Cheese','none',0.00, 0, 1, 9, NOW(), NOW()),
-- ===== HITA H4 Flavors (group 131) =====
(455, 131, 'Sweet Chili',          'none', 0.00, 1, 1, 1, NOW(), NOW()),
(456, 131, 'Barbecue',             'none', 0.00, 0, 1, 2, NOW(), NOW()),
(457, 131, 'Buffalo',              'none', 0.00, 0, 1, 3, NOW(), NOW()),
(458, 131, 'Yangnyeom',            'none', 0.00, 0, 1, 4, NOW(), NOW()),
(459, 131, 'Teriyaki',             'none', 0.00, 0, 1, 5, NOW(), NOW()),
(460, 131, 'Lemon Glaze',          'none', 0.00, 0, 1, 6, NOW(), NOW()),
(461, 131, 'Honey Butter',         'none', 0.00, 0, 1, 7, NOW(), NOW()),
(462, 131, 'Soy Garlic',           'none', 0.00, 0, 1, 8, NOW(), NOW()),
(463, 131, 'Garlic Parmesan Cheese','none',0.00, 0, 1, 9, NOW(), NOW()),
-- ===== HITA H5 Flavors (group 132) =====
(464, 132, 'Sweet Chili',          'none', 0.00, 1, 1, 1, NOW(), NOW()),
(465, 132, 'Barbecue',             'none', 0.00, 0, 1, 2, NOW(), NOW()),
(466, 132, 'Buffalo',              'none', 0.00, 0, 1, 3, NOW(), NOW()),
(467, 132, 'Yangnyeom',            'none', 0.00, 0, 1, 4, NOW(), NOW()),
(468, 132, 'Teriyaki',             'none', 0.00, 0, 1, 5, NOW(), NOW()),
(469, 132, 'Lemon Glaze',          'none', 0.00, 0, 1, 6, NOW(), NOW()),
(470, 132, 'Honey Butter',         'none', 0.00, 0, 1, 7, NOW(), NOW()),
(471, 132, 'Soy Garlic',           'none', 0.00, 0, 1, 8, NOW(), NOW()),
(472, 132, 'Garlic Parmesan Cheese','none',0.00, 0, 1, 9, NOW(), NOW()),
-- ===== HITA Spicy Add-On (groups 133-137) +P10 =====
(473, 133, 'No Spicy', 'none', 0.00,  1, 1, 1, NOW(), NOW()),
(474, 133, 'Spicy',    'add', 10.00,  0, 1, 2, NOW(), NOW()),
(475, 134, 'No Spicy', 'none', 0.00,  1, 1, 1, NOW(), NOW()),
(476, 134, 'Spicy',    'add', 10.00,  0, 1, 2, NOW(), NOW()),
(477, 135, 'No Spicy', 'none', 0.00,  1, 1, 1, NOW(), NOW()),
(478, 135, 'Spicy',    'add', 10.00,  0, 1, 2, NOW(), NOW()),
(479, 136, 'No Spicy', 'none', 0.00,  1, 1, 1, NOW(), NOW()),
(480, 136, 'Spicy',    'add', 10.00,  0, 1, 2, NOW(), NOW()),
(481, 137, 'No Spicy', 'none', 0.00,  1, 1, 1, NOW(), NOW()),
(482, 137, 'Spicy',    'add', 10.00,  0, 1, 2, NOW(), NOW());
