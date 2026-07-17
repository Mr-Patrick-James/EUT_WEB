-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 17, 2026 at 12:58 PM
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
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tag',
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#6b7280',
  `description` text COLLATE utf8mb4_unicode_ci,
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
(1, 'Burgers', 'burgers', 'beef', '#dc2626', 'Juicy handcrafted beef & veggie burgers', 0, 1, '2026-07-17 18:13:07', '2026-07-17 18:13:07'),
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
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_archived` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(18, 4, 'Spicy Combo', 'Spicy Jalapeño Burger + Onion Rings + Lemonade', 740.00, '/images/combo-meal.jpg', 0, 0, 3, '2026-07-17 18:13:07', '2026-07-17 18:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(8, '2026_07_17_000004_create_modifier_options_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `modifier_groups`
--

DROP TABLE IF EXISTS `modifier_groups`;
CREATE TABLE IF NOT EXISTS `modifier_groups` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_item_id` bigint UNSIGNED NOT NULL,
  `type` enum('flavor','modifier') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'modifier',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modifier_groups_menu_item_id_foreign` (`menu_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modifier_options`
--

DROP TABLE IF EXISTS `modifier_options`;
CREATE TABLE IF NOT EXISTS `modifier_options` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `modifier_group_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_type` enum('none','add','replace') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `price_adjustment` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modifier_options_modifier_group_id_foreign` (`modifier_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_google_id_unique` (`google_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `google_id`, `avatar`, `provider`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@eut.com', NULL, '$2y$12$6hPU/7FEZT1eRFPOZnVUYOv4etJ6kQw3ACcrL4U38UrSZY64jg.16', NULL, NULL, 'email', 'user', NULL, '2026-07-15 07:52:11', '2026-07-15 07:52:11'),
(2, 'jumyr moreno', 'morenochristian20051225@gmail.com', NULL, '$2y$12$AqkEurM65mDdNRyb1mJCD.bHZoPCY.OFAT2YJEV1irnIPQ/sBvvde', NULL, NULL, 'email', 'user', NULL, '2026-07-15 07:55:13', '2026-07-15 07:55:13'),
(3, 'Jumyr Moreno', 'moreno@gmail.com', NULL, '$2y$12$Vsaq6DcAT6ZLumAbDjouTOxfmeYSbMJ3YZe8BCNZx96lQ5h3En70O', NULL, NULL, 'email', 'admin', '95On2qvYckoxAx078oHeZp3bAPY3WHI63Y7ykS0vwQESbamGMjX2ChZKlZb5', '2026-07-17 16:56:03', '2026-07-17 16:56:03');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
