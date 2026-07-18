-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2026 at 02:56 PM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eut_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tag',
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#6b7280',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_archived` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Burgers', 'burgers', 'beef', '#dc2626', 'Juicy handcrafted beef & veggie burgers', 0, 1, '2026-07-17 18:13:07', '2026-07-17 06:15:01'),
(2, 'Sides', 'sides', 'flame', '#f59e0b', 'Crispy fries, rings & snack bites', 0, 2, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(3, 'Beverages', 'beverages', 'coffee', '#6b7280', 'Premium teas, coffees & smoothies', 0, 3, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(4, 'Combo Meals', 'combos', 'package', '#7c3aed', 'Full meal deals at great value', 0, 4, '2026-07-17 18:13:07', '2026-07-17 18:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_archived` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'EUT Classic Burger', 'Juicy beef patty, lettuce, tomato, pickles, special sauce on brioche bun', 350.00, '/images/hero-burger.jpg', 1, 0, 1, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(2, 1, 'Gourmet Cheeseburger', 'Premium beef with aged cheddar, caramelized onions, bacon', 420.00, '/images/gourmet-burger.jpg', 1, 0, 2, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(3, 1, 'Spicy Jalapeño Burger', 'Flame-grilled patty with jalapeños, pepper jack cheese, chipotle mayo', 380.00, '/images/delicious-burger-fries.jpg', 0, 0, 3, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(4, 1, 'Mushroom Swiss Burger', 'Sautéed mushrooms, Swiss cheese, garlic aioli on artisan bread', 395.00, '/images/combo-meal.jpg', 0, 0, 4, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(5, 1, 'BBQ Bacon Burger', 'Smoky BBQ sauce, crispy bacon, onion rings, cheddar cheese', 410.00, '/images/hero-burger.jpg', 0, 0, 5, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(6, 1, 'Veggie Delight Burger', 'House-made veggie patty with avocado, sprouts, herbed mayo', 320.00, '/images/gourmet-burger.jpg', 0, 0, 6, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(7, 2, 'Classic French Fries', 'Golden crispy fries with sea salt', 120.00, '/images/french-fries.jpg', 1, 0, 1, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(8, 2, 'Sweet Potato Fries', 'Crispy sweet potato fries with honey mustard dip', 150.00, '/images/fries-cutout.png', 0, 0, 2, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(9, 2, 'Onion Rings', 'Beer-battered onion rings with ranch dip', 135.00, '/images/french-fries.jpg', 0, 0, 3, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(10, 2, 'Loaded Nachos', 'Tortilla chips with cheese sauce, jalapeños, sour cream', 195.00, '/images/single-fries.png', 1, 0, 4, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(11, 2, 'Coleslaw', 'Creamy house coleslaw with a tangy finish', 80.00, '/images/fries-cutout.png', 0, 0, 5, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(12, 3, 'Classic Iced Tea', 'Freshly brewed iced tea with lemon', 80.00, '/images/restaurant-interior.jpg', 1, 0, 1, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(13, 3, 'Mango Smoothie', 'Fresh mango blended with yogurt and honey', 150.00, '/images/restaurant-interior.jpg', 1, 0, 2, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(14, 3, 'Americano', 'Double espresso with hot water, rich and bold', 120.00, '/images/restaurant-interior.jpg', 0, 0, 3, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(15, 3, 'Strawberry Lemonade', 'Fresh strawberries blended with tangy lemonade', 130.00, '/images/restaurant-interior.jpg', 0, 0, 4, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(16, 4, 'EUT Classic Combo', 'Classic Burger + Classic Fries + Iced Tea', 550.00, '/images/combo-meal.jpg', 1, 0, 1, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(17, 4, 'Gourmet Combo', 'Gourmet Cheeseburger + Sweet Potato Fries + Americano', 650.00, '/images/combo-meal.jpg', 1, 0, 2, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(18, 4, 'Spicy Combo', 'Spicy Jalapeño Burger + Onion Rings + Lemonade', 740.00, '/images/combo-meal.jpg', 0, 0, 3, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
(19, 1, 'Manok', 'Masarap na malaki pa', 1000.00, '/images/hero-burger.jpg', 0, 0, 7, '2026-07-17 06:02:08', '2026-07-17 06:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_07_16_004651_create_personal_access_tokens_table', 2),
(5, '2026_07_17_000001_create_categories_table', 3),
(6, '2026_07_17_000002_create_menu_items_table', 3),
(7, '2026_07_17_000003_create_modifier_groups_table', 4),
(8, '2026_07_17_000004_create_modifier_options_table', 4),
(9, '2026_07_17_000005_add_addon_type_to_modifier_groups', 5),
(10, '2026_07_17_000006_add_description_to_modifier_groups', 5),
(11, '2026_07_17_144041_add_addon_type_to_modifier_groups_table', 5),
(12, '2026_07_18_000001_create_riders_table', 6),
(13, '2026_07_18_000002_create_orders_table', 6),
(14, '2026_07_18_000003_create_order_items_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `modifier_groups`
--

DROP TABLE IF EXISTS `modifier_groups`;
CREATE TABLE IF NOT EXISTS `modifier_groups` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_item_id` bigint UNSIGNED NOT NULL,
  `type` enum('flavor','modifier','addon') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'modifier',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modifier_groups_menu_item_id_foreign` (`menu_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modifier_groups`
--

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 19, 'flavor', 'Mahalang', NULL, 1, 1, 0, '2026-07-17 06:02:08', '2026-07-17 06:02:08'),
(2, 19, 'modifier', 'large', NULL, 0, 1, 2, '2026-07-17 06:02:08', '2026-07-17 06:39:55'),
(3, 1, 'flavor', 'Sauce / Flavor', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(4, 1, 'modifier', 'Size', NULL, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(5, 2, 'flavor', 'Sauce / Flavor', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(6, 2, 'modifier', 'Size', NULL, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(7, 3, 'flavor', 'Sauce / Flavor', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(8, 3, 'modifier', 'Size', NULL, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(9, 4, 'flavor', 'Sauce / Flavor', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(10, 4, 'modifier', 'Size', NULL, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(11, 5, 'flavor', 'Sauce / Flavor', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(12, 5, 'modifier', 'Size', NULL, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(13, 6, 'flavor', 'Sauce / Flavor', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(14, 6, 'modifier', 'Size', NULL, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(17, 7, 'modifier', 'Size', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(18, 8, 'modifier', 'Size', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(19, 9, 'modifier', 'Size', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(20, 10, 'modifier', 'Size', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(21, 11, 'modifier', 'Size', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(22, 12, 'modifier', 'Size', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(23, 13, 'modifier', 'Size', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(24, 14, 'modifier', 'Size', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(25, 15, 'modifier', 'Size', NULL, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(26, 19, 'addon', 'with wings', NULL, 0, 1, 0, '2026-07-17 06:41:43', '2026-07-17 06:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `modifier_options`
--

DROP TABLE IF EXISTS `modifier_options`;
CREATE TABLE IF NOT EXISTS `modifier_options` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `modifier_group_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_type` enum('none','add','replace') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `price_adjustment` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modifier_options_modifier_group_id_foreign` (`modifier_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modifier_options`
--

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'hahaha', 'add', 78.00, 0, 1, 0, '2026-07-17 06:02:08', '2026-07-17 06:09:41'),
(2, 3, 'Classic', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(3, 3, 'Spicy', 'none', 0.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(4, 3, 'BBQ Smoke', 'none', 0.00, 0, 1, 3, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(5, 3, 'Garlic Aioli', 'none', 0.00, 0, 1, 4, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(6, 3, 'Honey Sriracha', 'none', 0.00, 0, 1, 5, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(7, 4, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(8, 4, 'Large', 'add', 50.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(9, 4, 'X-Large', 'add', 100.00, 0, 1, 3, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(10, 5, 'Classic', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(11, 5, 'Spicy', 'none', 0.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(12, 5, 'BBQ Smoke', 'none', 0.00, 0, 1, 3, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(13, 5, 'Garlic Aioli', 'none', 0.00, 0, 1, 4, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(14, 5, 'Honey Sriracha', 'none', 0.00, 0, 1, 5, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(15, 6, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(16, 6, 'Large', 'add', 50.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(17, 6, 'X-Large', 'add', 100.00, 0, 1, 3, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(18, 7, 'Classic', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(19, 7, 'Spicy', 'none', 0.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(20, 7, 'BBQ Smoke', 'none', 0.00, 0, 1, 3, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(21, 7, 'Garlic Aioli', 'none', 0.00, 0, 1, 4, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(22, 7, 'Honey Sriracha', 'none', 0.00, 0, 1, 5, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(23, 8, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(24, 8, 'Large', 'add', 50.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(25, 8, 'X-Large', 'add', 100.00, 0, 1, 3, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(26, 9, 'Classic', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(27, 9, 'Spicy', 'none', 0.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(28, 9, 'BBQ Smoke', 'none', 0.00, 0, 1, 3, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(29, 9, 'Garlic Aioli', 'none', 0.00, 0, 1, 4, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(30, 9, 'Honey Sriracha', 'none', 0.00, 0, 1, 5, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(31, 10, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(32, 10, 'Large', 'add', 50.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(33, 10, 'X-Large', 'add', 100.00, 0, 1, 3, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(34, 11, 'Classic', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(35, 11, 'Spicy', 'none', 0.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(36, 11, 'BBQ Smoke', 'none', 0.00, 0, 1, 3, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(37, 11, 'Garlic Aioli', 'none', 0.00, 0, 1, 4, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(38, 11, 'Honey Sriracha', 'none', 0.00, 0, 1, 5, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(39, 12, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(40, 12, 'Large', 'add', 50.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(41, 12, 'X-Large', 'add', 100.00, 0, 1, 3, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(42, 13, 'Classic', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(43, 13, 'Spicy', 'none', 0.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(44, 13, 'BBQ Smoke', 'none', 0.00, 0, 1, 3, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(45, 13, 'Garlic Aioli', 'none', 0.00, 0, 1, 4, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(46, 13, 'Honey Sriracha', 'none', 0.00, 0, 1, 5, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(47, 14, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(48, 14, 'Large', 'add', 50.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(49, 14, 'X-Large', 'add', 100.00, 0, 1, 3, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(50, 15, 'Classic', 'none', 0.00, 1, 1, 0, '2026-07-17 06:15:01', '2026-07-17 06:39:55'),
(51, 15, 'Spicy', 'none', 0.00, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:39:55'),
(52, 15, 'BBQ Smoke', 'none', 0.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:39:55'),
(53, 15, 'Garlic Aioli', 'none', 0.00, 0, 1, 3, '2026-07-17 06:15:01', '2026-07-17 06:39:55'),
(54, 15, 'Honey Sriracha', 'none', 0.00, 0, 1, 4, '2026-07-17 06:15:01', '2026-07-17 06:39:55'),
(55, 16, 'Regular', 'none', 0.00, 1, 1, 0, '2026-07-17 06:15:01', '2026-07-17 06:39:55'),
(56, 16, 'Large', 'add', 50.00, 0, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:39:55'),
(57, 16, 'X-Large', 'add', 100.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:39:55'),
(58, 17, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(59, 17, 'Large', 'add', 30.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(60, 18, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(61, 18, 'Large', 'add', 30.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(62, 19, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(63, 19, 'Large', 'add', 30.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(64, 20, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(65, 20, 'Large', 'add', 30.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(66, 21, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(67, 21, 'Large', 'add', 30.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(68, 22, 'Medium', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(69, 22, 'Large', 'add', 20.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(70, 23, 'Medium', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(71, 23, 'Large', 'add', 20.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(72, 24, 'Medium', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(73, 24, 'Large', 'add', 20.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(74, 25, 'Medium', 'none', 0.00, 1, 1, 1, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(75, 25, 'Large', 'add', 20.00, 0, 1, 2, '2026-07-17 06:15:01', '2026-07-17 06:15:01'),
(78, 26, 'with wings', 'none', 0.00, 1, 1, 0, '2026-07-17 06:41:43', '2026-07-17 06:41:43'),
(77, 2, 'jhj', 'add', 89.00, 0, 1, 0, '2026-07-17 06:41:43', '2026-07-17 06:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `rider_id` bigint UNSIGNED DEFAULT NULL,
  `status` enum('pending','accepted','preparing','rider_assigned','out_for_delivery','delivered','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `subtotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `delivery_fee` decimal(8,2) NOT NULL DEFAULT '50.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_method` enum('cash','gcash','card') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `payment_status` enum('pending','paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `delivery_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_barangay` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_lat` decimal(10,7) DEFAULT NULL,
  `delivery_lng` decimal(10,7) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `proof_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` enum('handover','photo') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_reason` text COLLATE utf8mb4_unicode_ci,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `picked_up_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_rider_id_foreign` (`rider_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint UNSIGNED NOT NULL,
  `menu_item_id` bigint UNSIGNED NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `quantity` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `subtotal` decimal(10,2) NOT NULL,
  `modifiers` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_menu_item_id_foreign` (`menu_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  KEY `personal_access_tokens_expires_at_index` (`expires_at`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riders`
--

DROP TABLE IF EXISTS `riders`;
CREATE TABLE IF NOT EXISTS `riders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_type` enum('motorcycle','bicycle') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'motorcycle',
  `plate_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '0',
  `current_lat` decimal(10,7) DEFAULT NULL,
  `current_lng` decimal(10,7) DEFAULT NULL,
  `rating` decimal(3,2) NOT NULL DEFAULT '5.00',
  `total_deliveries` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `riders_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riders`
--

INSERT INTO `riders` (`id`, `user_id`, `phone`, `vehicle_type`, `plate_number`, `is_available`, `current_lat`, `current_lng`, `rating`, `total_deliveries`, `created_at`, `updated_at`) VALUES
(1, 4, '09171234567', 'motorcycle', 'ABC-1234', 0, 13.2756805, 121.2739965, 4.90, 142, '2026-07-18 06:50:16', '2026-07-18 06:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_google_id_unique` (`google_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `google_id`, `avatar`, `provider`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@eut.com', NULL, '$2y$12$6hPU/7FEZT1eRFPOZnVUYOv4etJ6kQw3ACcrL4U38UrSZY64jg.16', NULL, NULL, 'email', 'user', NULL, '2026-07-15 07:52:11', '2026-07-15 07:52:11'),
(2, 'jumyr moreno', 'morenochristian20051225@gmail.com', NULL, '$2y$12$AqkEurM65mDdNRyb1mJCD.bHZoPCY.OFAT2YJEV1irnIPQ/sBvvde', NULL, NULL, 'email', 'user', NULL, '2026-07-15 07:55:13', '2026-07-15 07:55:13'),
(3, 'Jumyr Moreno', 'moreno@gmail.com', NULL, '$2y$12$Vsaq6DcAT6ZLumAbDjouTOxfmeYSbMJ3YZe8BCNZx96lQ5h3En70O', NULL, NULL, 'email', 'admin', 'IdXB6BZtsYjAuRUda08u9cfb0cFUV3w7KZ3sDmkR9NxtvR29lH3ZFUTnjH94', '2026-07-17 16:56:03', '2026-07-17 16:56:03'),
(4, 'Juan dela Cruz', 'rider@eut.com', NULL, '$2y$12$8wgkyoX7lZLuU14tiJR61OphLPWE8f1wsmYgM8bsYXIL4a0dvslL2', NULL, NULL, NULL, 'rider', NULL, '2026-07-18 06:50:16', '2026-07-18 06:50:16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
