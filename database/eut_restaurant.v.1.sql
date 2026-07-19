-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 19, 2026 at 08:56 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `color`, `description`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(5, 'Unlimited', 'unlimited', 'flame', '#f97316', 'Unli Rice with Drinks ??? Choose your favorite main!', 0, 5, '2026-07-19 06:37:33', '2026-07-19 06:37:33'),
(6, 'Sagana Package', 'sagana-package', 'package', '#16a34a', 'Good for 8-10 persons ??? Full boodle feast package!', 0, 6, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(7, 'Sweets Corner', 'sweets-corner', 'ice-cream', '#ec4899', 'Sweet treats & desserts ??? Halo-Halo, Con-Yelo, Pandan & more!', 0, 7, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(8, 'Cream Milk Series', 'cream-milk-series', 'milk', '#f59e0b', 'Premium cream milk drinks in 12 delicious flavors ??? all at P59!', 0, 8, '2026-07-19 06:54:56', '2026-07-19 06:54:56'),
(9, 'Fruit Tea', 'fruit-tea', 'cup-soda', '#84cc16', 'Refreshing fruit teas in 6 flavors ??? 16oz or 22oz!', 0, 9, '2026-07-19 06:57:34', '2026-07-19 06:57:34'),
(10, 'Milk Teas', 'milk-teas', 'cup-soda', '#a855f7', 'Premium milk teas in 15 amazing flavors ??? 16oz or 22oz!', 0, 10, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(11, 'Iced Coffee Latte', 'iced-coffee-latte', 'coffee', '#92400e', 'Premium iced coffee lattes in 11 flavors ??? all at P79!', 0, 11, '2026-07-19 07:01:06', '2026-07-19 07:01:06'),
(12, 'Iced Coffee Macchiato', 'iced-coffee-macchiato', 'coffee', '#78350f', 'Premium iced coffee macchiatos in 13 flavors ??? all at P79!', 0, 12, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(13, 'Signature Shakes', 'signature-shakes', 'glass-water', '#dc2626', 'EUT premium signature milk shakes ??? rich, creamy & indulgent!', 0, 13, '2026-07-19 07:06:14', '2026-07-19 07:06:14'),
(14, 'Fruit Shakes', 'fruit-shakes', 'glass-water', '#16a34a', 'Fresh & natural fruit shakes in 9 flavors ??? all at P99!', 0, 14, '2026-07-19 07:08:34', '2026-07-19 07:08:34'),
(15, 'Drinks', 'drinks', 'glass-water', '#0ea5e9', 'Refreshing drinks available in Single or Tower size!', 0, 15, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(16, 'Bilao-Kan', 'bilao-kan', 'package', '#d97706', 'EUT Bilao feast! Choose your size and what goes in your bilao.', 0, 16, '2026-07-19 07:15:50', '2026-07-19 07:15:50'),
(17, 'Pasta and Pancit', 'pasta-and-pancit', 'utensils', '#b45309', 'Served with slice bread ??? guisado, palabok, spaghetti, carbonara & more!', 0, 17, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(18, 'EUT Sandwich', 'eut-sandwich', 'sandwich', '#059669', 'EUT signature sandwiches ??? 14 varieties from classic to seafood!', 0, 18, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(19, 'EUT Giant Burger', 'eut-giant-burger', 'beef', '#dc2626', 'EUT premium giant burgers ??? oversized, indulgent & absolutely delicious!', 0, 19, '2026-07-19 07:54:46', '2026-07-19 07:54:46'),
(20, 'Snacks', 'snacks', 'package-open', '#f97316', 'EUT snacks ??? fries, nachos, siomai, shawarma, quesadillas, burritos & more!', 0, 20, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(21, 'Hiwa Hiwalay Sa E.U.T.', 'hiwa-hiwalay', 'utensils', '#15803d', 'Filipino favorites ??? order Mag-Isa or May Kalaguyo!', 0, 21, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(22, 'EUT Sa Pak-Pak', 'eut-sa-pak-pak', 'drumstick', '#ea580c', 'Single Serve ??? Wings Only! Choose your flavor(s).', 0, 22, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(23, 'EUT Sa Hita', 'eut-sa-hita', 'drumstick', '#7c3aed', 'Single Serve ??? Drumstick/Legs Only! Choose your flavor(s). Spicy +P10.', 0, 23, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(24, 'Rice Bowl', 'rice-bowl', 'bowl-rice', '#ca8a04', 'Serve with Toppings ??? your choice of topping or sauce!', 0, 24, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(25, 'EUT Sex Combo', 'eut-sex-combo', 'utensils-crossed', '#7c3aed', 'Sinangag + Egg + Viand combos served with Drinks and Egg!', 0, 25, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(26, 'EUT Burgers', 'eut-burgers', 'beef', '#b91c1c', 'EUT Burger Menu Special – 16 burger varieties from classic to signature!', 0, 26, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(27, 'Sinangag Express', 'sinangag-express', 'sun', '#d97706', 'Sinangag + Egg + your choice of viand!', 0, 27, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(28, 'Rice Meal', 'rice-meal', 'utensils', '#065f46', 'Rice meal combos – RM1 to RM14. Served with rice!', 0, 28, '2026-07-19 08:53:24', '2026-07-19 08:53:24');

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
) ENGINE=MyISAM AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `featured`, `is_archived`, `sort_order`, `created_at`, `updated_at`) VALUES
(20, 5, 'Pork Inasal', 'CODE: U1 | Unli Rice with Drinks ??? Grilled pork inasal basted with our special marinade', 229.00, NULL, 1, 0, 1, '2026-07-19 06:37:33', '2026-07-19 06:37:33'),
(21, 5, 'Chicken Inasal', 'CODE: U2 | Unli Rice with Drinks ??? Juicy grilled chicken inasal with special baste', 199.00, NULL, 1, 0, 2, '2026-07-19 06:37:33', '2026-07-19 06:37:33'),
(22, 5, '3 Pcs. Wings', 'CODE: U3 | Unli Rice with Drinks ??? 3 pieces of crispy fried chicken wings', 179.00, NULL, 0, 0, 3, '2026-07-19 06:37:33', '2026-07-19 06:37:33'),
(23, 5, '5 Pcs. Wings', 'CODE: U4 | Unli Rice with Drinks ??? 5 pieces of crispy fried chicken wings', 279.00, NULL, 0, 0, 4, '2026-07-19 06:37:33', '2026-07-19 06:37:33'),
(24, 6, 'Sagana Sa EUT', 'Good for 8-10 persons. Includes: Rice, Sinigang, Kare-Kare, Crispy Pata, Bangus, Pork, Pakbet/Chopsuey, Wings (3 flavours), Sweets, and Drinks. Choose your preferred variant per dish.', 6499.00, NULL, 1, 0, 1, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(25, 6, 'Sigad Sa EUT', 'Good for 4-6 persons. Includes: Rice, Sinigang, Crispy Pata, Chopsuey or Pakbet, Pork Sisig, Lumpia Shanghai (Beef & Pork), Sweets, and Drinks. Choose your preferred variant per dish.', 2999.00, NULL, 1, 0, 2, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(26, 6, 'Sawa Sa EUT', 'Good for 5-7 persons. Includes: Rice, Sinigang, Kare-Kare, Bangus, Crispy Pata, Pakbet or Chopsuey, Wings (2 flavours), Sweets, and Drinks. Choose your preferred variant per dish.', 3999.00, NULL, 1, 0, 3, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(27, 6, 'Sabik Sa EUT', 'Good for 3-5 persons. Includes: Special Nachos, Wings (2 flavours), Pasta or Pancit (choice), Burger Aloha with Ham, Special Fries, Sweets, and Drinks.', 1499.00, NULL, 1, 0, 4, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(28, 7, 'Classic Halo-Halo', 'Classic Filipino halo-halo with mixed ingredients, shaved ice & milk', 99.00, NULL, 1, 0, 1, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(29, 7, 'Special Halo-Halo', 'Upgraded halo-halo with premium toppings, leche flan & ube ice cream', 139.00, NULL, 1, 0, 2, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(30, 7, 'Halo-Halong E.U.T.', 'EUT signature halo-halo ??? the ultimate halo-halo experience!', 199.00, NULL, 1, 0, 3, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(31, 7, 'Leche Flan', 'Creamy Filipino-style leche flan. Choose size: Small (S) or Large (L)', 35.00, NULL, 0, 0, 4, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(32, 7, 'Mais Con-Yelo', 'Sweet corn with shaved ice & milk. Choose size: Small (S) or Large (L)', 89.00, NULL, 0, 0, 5, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(33, 7, 'Mango Tappioca', 'Fresh mango with tapioca pearls. Choose size: Small (S) or Large (L)', 99.00, NULL, 0, 0, 6, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(34, 7, 'Buko Pandan', 'Refreshing young coconut & pandan dessert. Choose size: Small (S) or Large (L)', 99.00, NULL, 0, 0, 7, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(35, 7, 'Saging Con-Yelo', 'Banana with shaved ice & sweet milk. Choose size: Small (S) or Large (L)', 79.00, NULL, 0, 0, 8, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(36, 7, 'Vegetable Salad', 'Fresh & healthy vegetable salad with special dressing', 139.00, NULL, 0, 0, 9, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(37, 8, 'Taro Cream Milk', 'Creamy taro-flavored milk drink', 59.00, NULL, 1, 0, 1, '2026-07-19 06:54:56', '2026-07-19 06:54:56'),
(38, 8, 'Melon Cream Milk', 'Fresh melon-flavored creamy milk drink', 59.00, NULL, 0, 0, 2, '2026-07-19 06:54:56', '2026-07-19 06:54:56'),
(39, 8, 'Java Chip Vanilla', 'Vanilla cream milk with java chip bits', 59.00, NULL, 0, 0, 3, '2026-07-19 06:54:56', '2026-07-19 06:54:56'),
(40, 8, 'Mango Cheesecake', 'Mango cheesecake-flavored cream milk', 59.00, NULL, 0, 0, 4, '2026-07-19 06:54:56', '2026-07-19 06:54:56'),
(41, 8, 'Okinawa Cream Milk', 'Japanese-inspired Okinawa brown sugar milk', 59.00, NULL, 0, 0, 5, '2026-07-19 06:54:56', '2026-07-19 06:54:56'),
(42, 8, 'Strawberry Cream Milk', 'Sweet strawberry-flavored creamy milk drink', 59.00, NULL, 0, 0, 6, '2026-07-19 06:54:56', '2026-07-19 06:54:56'),
(43, 8, 'Matcha Cream Milk', 'Premium matcha green tea cream milk', 59.00, NULL, 0, 0, 7, '2026-07-19 06:54:56', '2026-07-19 06:54:56'),
(44, 8, 'Chocolate Cream Milk', 'Rich chocolate-flavored cream milk drink', 59.00, NULL, 0, 0, 8, '2026-07-19 06:54:56', '2026-07-19 06:54:56'),
(45, 8, 'Salted Caramel', 'Salted caramel cream milk ??? sweet & salty!', 59.00, NULL, 0, 0, 9, '2026-07-19 06:54:56', '2026-07-19 06:54:56'),
(46, 8, 'Vanilla Cream Milk', 'Classic smooth vanilla cream milk', 59.00, NULL, 0, 0, 10, '2026-07-19 06:54:56', '2026-07-19 06:54:56'),
(47, 8, 'Cookies & Cream', 'Cookies & cream-flavored premium milk drink', 59.00, NULL, 0, 0, 11, '2026-07-19 06:54:56', '2026-07-19 06:54:56'),
(48, 8, 'Milk Chocolate', 'Classic milk chocolate cream drink', 59.00, NULL, 0, 0, 12, '2026-07-19 06:54:56', '2026-07-19 06:54:56'),
(49, 9, 'Fruit Tea', 'Refreshing fruit tea available in 6 flavors. Choose your flavor and size: 16oz (P39) or 22oz (P49).', 39.00, NULL, 1, 0, 1, '2026-07-19 06:57:34', '2026-07-19 06:57:34'),
(50, 10, 'Milk Tea', 'Premium milk tea available in 15 flavors. Choose your flavor and size: 16oz (P39) or 22oz (P49).', 39.00, NULL, 1, 0, 1, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(51, 11, 'Iced Coffee Latte', 'Premium iced coffee latte available in 11 delicious flavors ??? all at P79. Choose your flavor!', 79.00, NULL, 1, 0, 1, '2026-07-19 07:01:06', '2026-07-19 07:01:06'),
(52, 12, 'Iced Coffee Macchiato', 'Premium iced coffee macchiato available in 13 delicious flavors ??? all at P79. Choose your flavor!', 79.00, NULL, 1, 0, 1, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(53, 13, 'Strawberry Chocolate Milk Shake', 'CODE: FS1 | Rich strawberry & chocolate blended milk shake', 149.00, NULL, 1, 0, 1, '2026-07-19 07:06:14', '2026-07-19 07:06:14'),
(54, 13, 'Dark Chocolate Milk Shake', 'CODE: FS2 | Intense dark chocolate premium milk shake', 139.00, NULL, 1, 0, 2, '2026-07-19 07:06:14', '2026-07-19 07:06:14'),
(55, 13, 'Oreo Chocolate Milk Shake', 'CODE: FS3 | Creamy Oreo & chocolate blended milk shake', 129.00, NULL, 0, 0, 3, '2026-07-19 07:06:14', '2026-07-19 07:06:14'),
(56, 13, 'White Chocolate Milk Shake', 'CODE: FS4 | Smooth & sweet white chocolate milk shake', 129.00, NULL, 0, 0, 4, '2026-07-19 07:06:14', '2026-07-19 07:06:14'),
(57, 13, 'Nutella Chocolate Milk Shake', 'CODE: FS5 | Indulgent Nutella & chocolate blended milk shake', 139.00, NULL, 1, 0, 5, '2026-07-19 07:06:14', '2026-07-19 07:06:14'),
(58, 13, 'Manggo Graham Milk Shake', 'CODE: FS6 | Sweet mango graham cracker blended milk shake', 149.00, NULL, 0, 0, 6, '2026-07-19 07:06:14', '2026-07-19 07:06:14'),
(59, 13, 'Peanut Butter Chocolate Shake', 'CODE: FS7 | Classic peanut butter & chocolate milk shake', 119.00, NULL, 0, 0, 7, '2026-07-19 07:06:14', '2026-07-19 07:06:14'),
(60, 13, 'Chocolate Milk Shake', 'CODE: FS8 | Classic rich chocolate milk shake', 139.00, NULL, 0, 0, 8, '2026-07-19 07:06:14', '2026-07-19 07:06:14'),
(61, 13, 'Matcha Milk Shake', 'CODE: FS9 | Premium Japanese matcha blended milk shake', 149.00, NULL, 0, 0, 9, '2026-07-19 07:06:14', '2026-07-19 07:06:14'),
(62, 13, 'Biscof Milk Shake', 'CODE: FS10 | Creamy Biscoff cookie-flavored milk shake', 129.00, NULL, 0, 0, 10, '2026-07-19 07:06:14', '2026-07-19 07:06:14'),
(63, 14, 'Manggo Shake', 'CODE: F1 | Fresh mango blended into a thick & creamy shake', 99.00, NULL, 1, 0, 1, '2026-07-19 07:08:34', '2026-07-19 07:08:34'),
(64, 14, 'Avocado Shake', 'CODE: F2 | Creamy avocado blended into a rich smooth shake', 99.00, NULL, 1, 0, 2, '2026-07-19 07:08:34', '2026-07-19 07:08:34'),
(65, 14, 'Banana Shake', 'CODE: F3 | Sweet & creamy banana blended shake', 99.00, NULL, 0, 0, 3, '2026-07-19 07:08:34', '2026-07-19 07:08:34'),
(66, 14, 'Melon Shake', 'CODE: F4 | Refreshing fresh melon blended shake', 99.00, NULL, 0, 0, 4, '2026-07-19 07:08:34', '2026-07-19 07:08:34'),
(67, 14, 'Watermelon Shake', 'CODE: F5 | Light & refreshing watermelon blended shake', 99.00, NULL, 0, 0, 5, '2026-07-19 07:08:34', '2026-07-19 07:08:34'),
(68, 14, 'Apple Shake', 'CODE: F6 | Crisp & sweet fresh apple blended shake', 99.00, NULL, 0, 0, 6, '2026-07-19 07:08:34', '2026-07-19 07:08:34'),
(69, 14, 'Dragon Fruit Shake', 'CODE: F7 | Vibrant & exotic dragon fruit blended shake', 99.00, NULL, 0, 0, 7, '2026-07-19 07:08:34', '2026-07-19 07:08:34'),
(70, 14, 'Cucumber Shake', 'CODE: F8 | Cool & refreshing cucumber blended shake', 99.00, NULL, 0, 0, 8, '2026-07-19 07:08:34', '2026-07-19 07:08:34'),
(71, 14, 'Strawberry Shake', 'CODE: F9 | Sweet & tangy fresh strawberry blended shake', 99.00, NULL, 0, 0, 9, '2026-07-19 07:08:34', '2026-07-19 07:08:34'),
(72, 15, 'Cucumber Lemonade', 'Refreshing cucumber lemonade. Single (P49) or Tower (P179)', 49.00, NULL, 1, 0, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(73, 15, 'Red Ice Tea', 'Sweet & bold red ice tea. Single (P49) or Tower (P179)', 49.00, NULL, 0, 0, 2, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(74, 15, 'Ice Tea', 'Classic brewed ice tea. Single (P59) or Tower (P199)', 59.00, NULL, 0, 0, 3, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(75, 15, 'Blue Lemonade', 'Eye-catching blue lemonade drink. Single (P49) or Tower (P179)', 49.00, NULL, 1, 0, 4, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(76, 15, 'Black Gulaman', 'Sweet black gulaman drink. Single (P49) or Tower (P179)', 49.00, NULL, 0, 0, 5, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(77, 15, 'Strawberry Lemonade', 'Fresh strawberry lemonade. Single (P59) or Tower (P189)', 59.00, NULL, 0, 0, 6, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(78, 15, 'Calamansi Lemonade', 'Tangy calamansi lemonade. Single (P49) or Tower (P179)', 49.00, NULL, 0, 0, 7, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(79, 15, 'Lychee Lemonade', 'Floral lychee lemonade. Single (P49) or Tower (P179)', 49.00, NULL, 0, 0, 8, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(80, 15, 'Orange Lemonade', 'Zesty orange lemonade. Single (P59) or Tower (P189)', 59.00, NULL, 0, 0, 9, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(81, 15, 'Lemon Ade', 'Classic fresh lemonade. Single (P39) or Tower (P159)', 39.00, NULL, 0, 0, 10, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(82, 15, 'Yakult Lemonade', 'Probiotic yakult lemonade. Single (P69) or Tower (P209)', 69.00, NULL, 0, 0, 11, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(83, 15, 'Pineapple Juice', 'Fresh pineapple juice. Single (P59) or Tower (P189)', 59.00, NULL, 0, 0, 12, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(84, 15, 'Four Seasons', 'Mixed Four Seasons juice blend. Single (P69) or Tower (P209)', 69.00, NULL, 0, 0, 13, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(85, 16, 'B8 Bilao', 'CODE: B8 | Good for ~8 pax. Choose what goes in your bilao! Tier 1 (P209), Tier 2 (P259), Tier 3 (P299)', 209.00, NULL, 1, 0, 1, '2026-07-19 07:15:50', '2026-07-19 07:15:50'),
(86, 16, 'B10 Bilao', 'CODE: B10 | Good for ~10 pax. Choose what goes in your bilao! Tier 1 (P399), Tier 2 (P499), Tier 3 (P599)', 399.00, NULL, 0, 0, 2, '2026-07-19 07:15:50', '2026-07-19 07:15:50'),
(87, 16, 'B12 Bilao', 'CODE: B12 | Good for ~12 pax. Choose what goes in your bilao! Tier 1 (P599), Tier 2 (P699), Tier 3 (P799)', 599.00, NULL, 0, 0, 3, '2026-07-19 07:15:50', '2026-07-19 07:15:50'),
(88, 16, 'B14 Bilao', 'CODE: B14 | Good for ~14 pax. Choose what goes in your bilao! Tier 1 (P799), Tier 2 (P999), Tier 3 (P1299)', 799.00, NULL, 0, 0, 4, '2026-07-19 07:15:50', '2026-07-19 07:15:50'),
(89, 16, 'B16 Bilao', 'CODE: B16 | Good for ~16 pax. Choose what goes in your bilao! Tier 1 (P999), Tier 2 (P1299), Tier 3 (P1599)', 999.00, NULL, 0, 0, 5, '2026-07-19 07:15:50', '2026-07-19 07:15:50'),
(90, 16, 'B18 Bilao', 'CODE: B18 | Good for ~18 pax. Choose what goes in your bilao! Tier 1 (P1299), Tier 2 (P1599), Tier 3 (P1999)', 1299.00, NULL, 0, 0, 6, '2026-07-19 07:15:50', '2026-07-19 07:15:50'),
(91, 17, 'Miki Guisado', 'CODE: P1  | Stir-fried miki noodles. Served with slice bread.', 119.00, NULL, 1, 0, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(92, 17, 'Bihon Guisado', 'CODE: P2  | Stir-fried bihon noodles. Served with slice bread.', 119.00, NULL, 0, 0, 2, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(93, 17, 'Canton Guisado', 'CODE: P3  | Stir-fried canton noodles. Served with slice bread.', 129.00, NULL, 0, 0, 3, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(94, 17, 'Miki-Bihon Guisado', 'CODE: P4  | Mix of miki & bihon noodles. Served with slice bread.', 139.00, NULL, 0, 0, 4, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(95, 17, 'Bihon-Canton Guisado', 'CODE: P5  | Mix of bihon & canton noodles. Served with slice bread.', 139.00, NULL, 0, 0, 5, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(96, 17, 'Miki-Canton Guisado', 'CODE: P6  | Mix of miki & canton noodles. Served with slice bread.', 139.00, NULL, 0, 0, 6, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(97, 17, 'Sotanghon Guisado', 'CODE: P7  | Stir-fried glass noodles. Served with slice bread.', 119.00, NULL, 0, 0, 7, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(98, 17, 'Palabok', 'CODE: P8  | Classic Filipino palabok with savory sauce. Served with slice bread.', 109.00, NULL, 1, 0, 8, '2026-07-19 07:39:44', '2026-07-19 14:46:42'),
(99, 17, 'Loming Bitin Sa E.U.T.', 'CODE: P9  | EUT small lomi bowl ??? just a little taste! Served with slice bread.', 89.00, NULL, 0, 0, 9, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(100, 17, 'Loming Sabik Sa E.U.T.', 'CODE: P10 | EUT medium lomi bowl ??? for the craving! Served with slice bread.', 209.00, NULL, 0, 0, 10, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(101, 17, 'Loming Sagad Sa E.U.T.', 'CODE: P11 | EUT large lomi bowl ??? full & hearty! Served with slice bread.', 399.00, NULL, 0, 0, 11, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(102, 17, 'Seafood Pancit Guisado', 'CODE: P12 | Stir-fried pancit with fresh seafood. Served with slice bread.', 189.00, NULL, 0, 0, 12, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(103, 17, 'Spaghetti', 'CODE: P13 | Filipino-style spaghetti with sweet sauce. Served with slice bread.', 129.00, NULL, 1, 0, 13, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(104, 17, 'Ham and Tuna Pasta', 'CODE: P14 | Creamy pasta with ham & tuna. Served with slice bread.', 129.00, NULL, 0, 0, 14, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(105, 17, 'Seafood Pasta', 'CODE: P15 | Pasta with fresh seafood medley. Served with slice bread.', 189.00, NULL, 0, 0, 15, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(106, 17, 'Carbonara', 'CODE: P16 | Creamy Filipino-style carbonara. Served with slice bread.', 169.00, NULL, 0, 0, 16, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(107, 18, 'Classic Hotdog Sandwich', 'Classic Filipino hotdog on toasted bread', 79.00, NULL, 1, 0, 1, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(108, 18, 'Ham and Tuna Sandwich', 'Savory combination of ham & tuna filling', 149.00, NULL, 0, 0, 2, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(109, 18, 'Ham and Egg Sandwich', 'Ham & egg on toasted sandwich bread', 129.00, NULL, 0, 0, 3, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(110, 18, 'Ham and Bacon Sandwich', 'Loaded ham & crispy bacon sandwich', 159.00, NULL, 0, 0, 4, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(111, 18, 'Clubhouse Sandwich', 'Triple-decker clubhouse with ham, egg & veggies', 169.00, NULL, 1, 0, 5, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(112, 18, 'Tuna Sandwich', 'Classic tuna filling on toasted bread', 139.00, NULL, 0, 0, 6, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(113, 18, 'Ham Sandwich', 'Simple & savory ham sandwich', 129.00, NULL, 0, 0, 7, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(114, 18, 'Tuna and Egg Sandwich', 'Creamy tuna & egg sandwich', 149.00, NULL, 0, 0, 8, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(115, 18, 'Bacon Sandwich', 'Crispy bacon sandwich on toasted bread', 149.00, NULL, 0, 0, 9, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(116, 18, 'Hungarian Sandwich', 'Hungarian sausage sandwich with toppings', 149.00, NULL, 0, 0, 10, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(117, 18, 'Crispy Chicken Sandwich', 'Crunchy crispy fried chicken sandwich', 149.00, NULL, 1, 0, 11, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(118, 18, 'Shawarma Chicken Sandwich', 'Middle Eastern-style shawarma chicken in sandwich form', 149.00, NULL, 0, 0, 12, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(119, 18, 'Grilled Mozzarella Cheese', 'Warm grilled mozzarella cheese sandwich', 139.00, NULL, 0, 0, 13, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(120, 18, 'Seafood Sandwich', 'Fresh seafood medley in a toasted sandwich', 169.00, NULL, 0, 0, 14, '2026-07-19 07:51:38', '2026-07-19 07:51:38'),
(121, 19, 'Giant Classic Mozzarella Burger', 'A giant classic burger loaded with creamy mozzarella cheese', 289.00, NULL, 1, 0, 1, '2026-07-19 07:54:46', '2026-07-19 07:54:46'),
(122, 19, 'Giant Seafood Burger', 'Oversized seafood patty burger with fresh toppings', 429.00, NULL, 0, 0, 2, '2026-07-19 07:54:46', '2026-07-19 07:54:46'),
(123, 19, 'Aloha Giant Seafood Burger', 'Tropical-inspired giant seafood burger with aloha flair', 489.00, NULL, 1, 0, 3, '2026-07-19 07:54:46', '2026-07-19 07:54:46'),
(124, 19, 'Aloha Giant Mozzarella Burger', 'Tropical aloha-style giant burger with mozzarella cheese', 329.00, NULL, 0, 0, 4, '2026-07-19 07:54:46', '2026-07-19 07:54:46'),
(125, 19, 'EUT Giant Signature Burger', 'The ultimate EUT signature giant burger ??? our house special!', 499.00, NULL, 1, 0, 5, '2026-07-19 07:54:46', '2026-07-19 07:54:46'),
(126, 20, 'Classic Fries', 'Crispy classic salted fries', 60.00, NULL, 0, 0, 1, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(127, 20, 'Couple Fries', 'Bigger fries serving ??? perfect for two!', 139.00, NULL, 0, 0, 2, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(128, 20, 'Family Fries', 'Large family-sized serving of crispy fries', 189.00, NULL, 0, 0, 3, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(129, 20, 'Special Fries', 'Seasoned fries with your choice of flavor: Cheese, Sour Cream, Barbeque, or Garlic Parmesan', 159.00, NULL, 1, 0, 4, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(130, 20, 'Classic Nachos', 'Crunchy tortilla chips with classic nacho dip', 69.00, NULL, 0, 0, 5, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(131, 20, 'Special Nachos', 'Loaded special nachos with premium toppings', 159.00, NULL, 0, 0, 6, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(132, 20, 'Nachos Fries Kana Ba?', 'The best of both worlds ??? nachos AND fries combo!', 169.00, NULL, 1, 0, 7, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(133, 20, 'Bread Roll', 'Soft & freshly baked bread roll', 69.00, NULL, 0, 0, 8, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(134, 20, 'Tuna Bread Roll', 'Bread roll filled with savory tuna filling', 89.00, NULL, 0, 0, 9, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(135, 20, 'Siomai Big', 'Big siomai ??? choose Steam or Fried', 69.00, NULL, 0, 0, 10, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(136, 20, 'Siomai Small', 'Small siomai ??? choose Steam or Fried', 59.00, NULL, 0, 0, 11, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(137, 20, 'Beef Shawarma', 'Juicy beef shawarma wrap with garlic sauce', 119.00, NULL, 1, 0, 12, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(138, 20, 'Chicken Shawarma', 'Tender chicken shawarma wrap with garlic sauce', 109.00, NULL, 0, 0, 13, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(139, 20, 'Beef Quesadillas', 'Crispy quesadilla filled with seasoned beef', 149.00, NULL, 0, 0, 14, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(140, 20, 'Cheese Quesadillas', 'Crispy quesadilla loaded with melted cheese', 129.00, NULL, 0, 0, 15, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(141, 20, 'Beef Burrito', 'Hearty beef burrito with rice, beans & toppings', 129.00, NULL, 0, 0, 16, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(142, 20, 'Pork Burrito', 'Savory pork burrito with rice, beans & toppings', 119.00, NULL, 0, 0, 17, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(156, 21, 'Sizzling Tofu', 'Crispy tofu on a sizzling plate with sauce', 130.00, NULL, 0, 0, 14, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(155, 21, 'Pork BBQ', 'Grilled pork BBQ skewers', 199.00, NULL, 1, 0, 13, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(154, 21, 'Fish Fillet', 'Tender fish fillet with sweet & sour sauce', 270.00, NULL, 0, 0, 12, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(153, 21, 'Crispy Pork Kare-Kare', 'Crispy pork belly kare-kare in peanut sauce', 360.00, NULL, 0, 0, 11, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(152, 21, 'Beef Kare-Kare', 'Beef kare-kare in rich peanut sauce', 380.00, NULL, 0, 0, 10, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(151, 21, 'Lumpia Shanghai', 'Crispy fried pork spring rolls', 159.00, NULL, 1, 0, 9, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(150, 21, 'Bangus Bicol Express', 'Milkfish Bicol Express in spicy coconut milk', 320.00, NULL, 0, 0, 8, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(149, 21, 'Pork Bicol Express', 'Spicy pork & coconut milk Bicol Express', 320.00, NULL, 0, 0, 7, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(148, 21, 'Pork Binagoongan', 'Crispy pork cooked in shrimp paste (bagoong)', 320.00, NULL, 0, 0, 6, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(147, 21, 'Pinakbet', 'Classic pinakbet with bagoong', 260.00, NULL, 0, 0, 5, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(146, 21, 'Chopsuey', 'Stir-fried mixed vegetables Filipino style', 280.00, NULL, 0, 0, 4, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(145, 21, 'Sinigang na Bangus', 'Milkfish sinigang in tamarind broth', 300.00, NULL, 0, 0, 3, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(144, 21, 'Sinigang na Hipon', 'Fresh shrimp sinigang in tamarind broth', 400.00, NULL, 0, 0, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(143, 21, 'Sinigang na Baboy', 'Classic pork sinigang in tamarind broth', 350.00, NULL, 1, 0, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(157, 21, 'Bulalo', 'Slow-cooked beef shank & bone marrow soup', 549.00, NULL, 1, 0, 15, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(158, 21, 'Pork Sisig', 'Sizzling chopped pork sisig with calamansi', 179.00, NULL, 0, 0, 16, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(159, 21, 'Crispy Pata', 'Deep-fried whole pork leg ??? crispy outside, tender inside', 850.00, NULL, 1, 0, 17, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(160, 22, 'W1 ??? 3 Pcs Wings', 'CODE: W1 | 3 pcs wings ??? choose 1 flavor', 169.00, NULL, 1, 0, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(161, 22, 'W2 ??? 6 Pcs Wings', 'CODE: W2 | 6 pcs wings ??? choose 2 flavors', 399.00, NULL, 0, 0, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(162, 22, 'W3 ??? 9 Pcs Wings', 'CODE: W3 | 9 pcs wings ??? choose 3 flavors', 499.00, NULL, 0, 0, 3, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(163, 22, 'W4 ??? 12 Pcs Wings', 'CODE: W4 | 12 pcs wings ??? choose 4 flavors', 668.00, NULL, 0, 0, 4, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(164, 22, 'W5 ??? 24 Pcs Wings', 'CODE: W5 | 24 pcs wings ??? choose 5 flavors', 1339.00, NULL, 0, 0, 5, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(165, 23, 'H1 ??? 3 Pcs Hita', 'CODE: H1 | 3 pcs drumstick/legs. Spicy +P10.', 229.00, NULL, 1, 0, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(166, 23, 'H2 ??? 6 Pcs Hita', 'CODE: H2 | 6 pcs drumstick/legs. Spicy +P10.', 459.00, NULL, 0, 0, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(167, 23, 'H3 ??? 9 Pcs Hita', 'CODE: H3 | 9 pcs drumstick/legs. Spicy +P10.', 689.00, NULL, 0, 0, 3, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(168, 23, 'H4 ??? 12 Pcs Hita', 'CODE: H4 | 12 pcs drumstick/legs. Spicy +P10.', 919.00, NULL, 0, 0, 4, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(169, 23, 'H5 ??? 24 Pcs Hita', 'CODE: H5 | 24 pcs drumstick/legs. Spicy +P10.', 1839.00, NULL, 0, 0, 5, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(170, 24, 'Rice Bowl', 'Choose your topping: Nuggets, Ham, Fried Egg, Balony, Spam, Fried Siomai, Lumpia Shanghai, Steam Siomai, Corned Beef, or Hotdog Balls!', 89.00, NULL, 1, 0, 1, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(171, 24, 'Fried Chicken Rice Bowl', 'Crispy fried chicken on rice ??? choose your sauce!', 109.00, NULL, 1, 0, 2, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(172, 24, 'Fried Pork Rice Bowl', 'Crispy fried pork on rice ??? choose your sauce!', 129.00, NULL, 0, 0, 3, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(173, 25, 'SEX-11: Lumpia + Sisig + Balony', 'CODE: SEX-11 | Sinangag + Egg + Lumpia + Sisig + Balony. Served with drinks.', 209.00, NULL, 0, 0, 1, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(174, 25, 'SEX-12: Spam + Sisig', 'CODE: SEX-12 | Sinangag + Egg + Spam + Sisig. Served with drinks.', 199.00, NULL, 0, 0, 2, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(175, 25, 'SEX-13: Sisig + Bacon + Hotdog', 'CODE: SEX-13 | Sinangag + Egg + Sisig + Bacon + Hotdog. Served with drinks.', 209.00, NULL, 0, 0, 3, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(176, 25, 'SEX-14: Tocino + Tapa + Hungarian', 'CODE: SEX-14 | Sinangag + Egg + Tocino + Tapa + Hungarian. Served with drinks.', 239.00, NULL, 0, 0, 4, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(177, 25, 'SEX-15: Longanisa + FC + Spam', 'CODE: SEX-15 | Sinangag + Egg + Longanisa + Fried Chicken + Spam. Served with drinks.', 199.00, NULL, 0, 0, 5, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(178, 25, 'SEX-16: Sisig + Tapa + FC', 'CODE: SEX-16 | Sinangag + Egg + Sisig + Tapa + Fried Chicken. Served with drinks.', 219.00, NULL, 0, 0, 6, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(179, 25, 'SEX-17: Sisig + Fillet + Hotdog', 'CODE: SEX-17 | Sinangag + Egg + Sisig + Fillet + Hotdog. Served with drinks.', 199.00, NULL, 0, 0, 7, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(180, 25, 'SEX-18: Lumpia + Sisig + Tapa', 'CODE: SEX-18 | Sinangag + Egg + Lumpia + Sisig + Tapa. Served with drinks.', 219.00, NULL, 0, 0, 8, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(181, 25, 'SEX-19: Bangus + Sisig', 'CODE: SEX-19 | Sinangag + Egg + Bangus + Sisig. Served with drinks.', 199.00, NULL, 0, 0, 9, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(182, 25, 'SEX-20: Sisig + Bacon + Hotdog', 'CODE: SEX-20 | Sinangag + Egg + Sisig + Bacon + Hotdog. Served with drinks.', 229.00, NULL, 0, 0, 10, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(183, 25, 'SEX-21: Tocino + Tapa + FC', 'CODE: SEX-21 | Sinangag + Egg + Tocino + Tapa + Fried Chicken. Served with drinks.', 229.00, NULL, 0, 0, 11, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(184, 25, 'SEX-22: Longanisa + FC + Spam', 'CODE: SEX-22 | Sinangag + Egg + Longanisa + Fried Chicken + Spam. Served with drinks.', 199.00, NULL, 0, 0, 12, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(185, 25, 'SEX-23: Sisig + Tapa + Hotdog', 'CODE: SEX-23 | Sinangag + Egg + Sisig + Tapa + Hotdog. Served with drinks.', 229.00, NULL, 0, 0, 13, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(186, 25, 'SEX-24: Sisig + Fillet + Hungarian', 'CODE: SEX-24 | Sinangag + Egg + Sisig + Fillet + Hungarian. Served with drinks.', 239.00, NULL, 0, 0, 14, '2026-07-19 08:40:42', '2026-07-19 08:40:42'),
(187, 25, 'SEX-1: Lumpia + Tocino + Hotdog', 'CODE: SEX-1  | Sinangag + Egg + Lumpia + Tocino + Hotdog. Served with drinks.', 179.00, NULL, 0, 0, 101, '2026-07-19 08:43:35', '2026-07-19 08:43:35'),
(188, 25, 'SEX-2: Tapa + Hotdog + Lumpia', 'CODE: SEX-2  | Sinangag + Egg + Tapa + Hotdog + Lumpia. Served with drinks.', 189.00, NULL, 0, 0, 102, '2026-07-19 08:43:35', '2026-07-19 08:43:35'),
(189, 25, 'SEX-3: FC + Hotdog + Lumpia', 'CODE: SEX-3  | Sinangag + Egg + Fried Chicken + Hotdog + Lumpia. Served with drinks.', 189.00, NULL, 0, 0, 103, '2026-07-19 08:43:35', '2026-07-19 08:43:35'),
(190, 25, 'SEX-4: Fried Pork + Lumpia + Tocino', 'CODE: SEX-4  | Sinangag + Egg + Fried Pork + Lumpia + Tocino. Served with drinks.', 209.00, NULL, 0, 0, 104, '2026-07-19 08:43:35', '2026-07-19 08:43:35'),
(191, 25, 'SEX-5: Tapa + Bacon + Hotdog', 'CODE: SEX-5  | Sinangag + Egg + Tapa + Bacon + Hotdog. Served with drinks.', 199.00, NULL, 0, 0, 105, '2026-07-19 08:43:35', '2026-07-19 08:43:35'),
(192, 25, 'SEX-6: Bangus + Lumpia + Tapa', 'CODE: SEX-6  | Sinangag + Egg + Bangus + Lumpia + Tapa. Served with drinks.', 209.00, NULL, 0, 0, 106, '2026-07-19 08:43:35', '2026-07-19 08:43:35'),
(193, 25, 'SEX-7: Bacon + Ham + Tocino', 'CODE: SEX-7  | Sinangag + Egg + Bacon + Ham + Tocino. Served with drinks.', 199.00, NULL, 0, 0, 107, '2026-07-19 08:43:35', '2026-07-19 08:43:35'),
(194, 25, 'SEX-8: Longanisa + Bacon + Lumpia', 'CODE: SEX-8  | Sinangag + Egg + Longanisa + Bacon + Lumpia. Served with drinks.', 209.00, NULL, 0, 0, 108, '2026-07-19 08:43:35', '2026-07-19 08:43:35'),
(195, 25, 'SEX-9: Bangus + Hotdog + Bacon', 'CODE: SEX-9  | Sinangag + Egg + Bangus + Hotdog + Bacon. Served with drinks.', 199.00, NULL, 0, 0, 109, '2026-07-19 08:43:35', '2026-07-19 08:43:35'),
(196, 25, 'SEX-10: Tocino + Hotdog + Bacon', 'CODE: SEX-10 | Sinangag + Egg + Tocino + Hotdog + Bacon. Served with drinks.', 189.00, NULL, 0, 0, 110, '2026-07-19 08:43:35', '2026-07-19 08:43:35'),
(197, 26, 'Classic Beef Burger', 'Juicy classic beef burger patty', 79.00, NULL, 1, 0, 1, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(198, 26, 'Classic Mozzarella Burger', 'Classic beef burger with melted mozzarella', 99.00, NULL, 0, 0, 2, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(199, 26, 'Aloha Beef Burger', 'Tropical aloha-style beef burger', 134.00, NULL, 0, 0, 3, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(200, 26, 'Ham and Bacon Burger', 'Burger loaded with ham and crispy bacon', 139.00, NULL, 0, 0, 4, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(201, 26, 'Crispy Chicken Burger', 'Crunchy crispy fried chicken burger', 169.00, NULL, 1, 0, 5, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(202, 26, 'Bounty Burger', 'EUT signature bounty-style burger', 119.00, NULL, 0, 0, 6, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(203, 26, 'Ham Burger', 'Classic ham burger patty', 119.00, NULL, 0, 0, 7, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(204, 26, 'Seafood Burger', 'Fresh seafood patty burger', 179.00, NULL, 0, 0, 8, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(205, 26, 'Ham and Mushroom Burger', 'Ham burger with savory mushroom topping', 129.00, NULL, 0, 0, 9, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(206, 26, 'Double Mozzarella Burger', 'Double-stacked burger with mozzarella cheese', 179.00, NULL, 0, 0, 10, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(207, 26, 'Triplets Mozzarella Burger', 'Triple-stacked mozzarella burger – for the big appetite!', 199.00, NULL, 0, 0, 11, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(208, 26, 'Sizzling Mozzarella Burger', 'Hot sizzling burger with melted mozzarella', 169.00, NULL, 0, 0, 12, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(209, 26, 'Beef Shawarma Burger', 'Middle Eastern-inspired beef shawarma in burger form', 169.00, NULL, 0, 0, 13, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(210, 26, 'Chicken Shawarma Burger', 'Tender chicken shawarma in burger form', 159.00, NULL, 0, 0, 14, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(211, 26, 'Cutties Burger (3 pcs)', '3 pieces of EUT cutties burger bites', 109.00, NULL, 0, 0, 15, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(212, 26, 'EUT Signature Burger', 'The ultimate EUT signature burger – our best!', 239.00, NULL, 1, 0, 16, '2026-07-19 08:46:20', '2026-07-19 08:46:20'),
(213, 27, 'S1 SEX-Pork', 'CODE: S1  | Sinangag + Egg + Pork', 179.00, NULL, 0, 0, 1, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(214, 27, 'S2 SEX-Chicken Leg Quarter', 'CODE: S2  | Sinangag + Egg + Chicken Leg Quarter', 169.00, NULL, 0, 0, 2, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(215, 27, 'S3 SEX-Chicken Leg', 'CODE: S3  | Sinangag + Egg + Chicken Leg', 149.00, NULL, 0, 0, 3, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(216, 27, 'S4 SEX-Beef Tapa', 'CODE: S4  | Sinangag + Egg + Beef Tapa', 179.00, NULL, 1, 0, 4, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(217, 27, 'S5 SEX-Pork Tapa', 'CODE: S5  | Sinangag + Egg + Pork Tapa', 169.00, NULL, 0, 0, 5, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(218, 27, 'S6 SEX-Chicken Tocino', 'CODE: S6  | Sinangag + Egg + Chicken Tocino', 129.00, NULL, 0, 0, 6, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(219, 27, 'S7 SEX-Pork Tocino', 'CODE: S7  | Sinangag + Egg + Pork Tocino', 139.00, NULL, 0, 0, 7, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(220, 27, 'S8 SEX-Lumpia', 'CODE: S8  | Sinangag + Egg + Lumpia Shanghai', 109.00, NULL, 0, 0, 8, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(221, 27, 'S9 SEX-Bangus', 'CODE: S9  | Sinangag + Egg + Bangus (Milkfish)', 139.00, NULL, 0, 0, 9, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(222, 27, 'S10 SEX-Chicken Longanisa', 'CODE: S10 | Sinangag + Egg + Chicken Longanisa', 129.00, NULL, 0, 0, 10, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(223, 27, 'S11 SEX-Pork Longanisa', 'CODE: S11 | Sinangag + Egg + Pork Longanisa', 139.00, NULL, 0, 0, 11, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(224, 27, 'S12 SEX-Hungarian', 'CODE: S12 | Sinangag + Egg + Hungarian Sausage', 149.00, NULL, 0, 0, 12, '2026-07-19 08:48:35', '2026-07-19 15:50:30'),
(225, 27, 'S13 SEX-Footlong', 'CODE: S13 | Sinangag + Egg + Footlong Hotdog', 98.00, NULL, 0, 0, 13, '2026-07-19 08:48:35', '2026-07-19 15:50:16'),
(226, 27, 'S14 SEX-Pork Hotdog', 'CODE: S14 | Sinangag + Egg + Pork Hotdog', 119.00, NULL, 0, 0, 14, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(227, 27, 'S15 SEX-Chicken Hotdog', 'CODE: S15 | Sinangag + Egg + Chicken Hotdog', 109.00, NULL, 0, 0, 15, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(228, 27, 'S16 SEX-Ham and Bacon', 'CODE: S16 | Sinangag + Egg + Ham & Bacon', 129.00, NULL, 0, 0, 16, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(229, 27, 'S17 SEX-Spam', 'CODE: S17 | Sinangag + Egg + Spam', 109.00, NULL, 0, 0, 17, '2026-07-19 08:48:35', '2026-07-19 08:48:35'),
(230, 28, 'RM1 Sizzling Pork Sisig', 'CODE: RM1  | Sizzling pork sisig served with rice', 179.00, NULL, 1, 0, 1, '2026-07-19 08:53:24', '2026-07-19 08:53:24'),
(231, 28, 'RM2 2 Pcs Fried Chicken Leg', 'CODE: RM2  | 2 pieces fried chicken leg served with rice', 199.00, NULL, 0, 0, 2, '2026-07-19 08:53:24', '2026-07-19 08:53:24'),
(232, 28, 'RM3 Sizzling Burger Patty', 'CODE: RM3  | Sizzling burger patty served with rice', 99.00, NULL, 0, 0, 3, '2026-07-19 08:53:24', '2026-07-19 08:53:24'),
(233, 28, 'RM4 1 Pc Fried Chicken Leg', 'CODE: RM4  | 1 piece fried chicken leg served with rice', 119.00, NULL, 0, 0, 4, '2026-07-19 08:53:24', '2026-07-19 08:53:24'),
(234, 28, 'RM5 Sizzling Bangus', 'CODE: RM5  | Sizzling milkfish served with rice', 139.00, NULL, 0, 0, 5, '2026-07-19 08:53:24', '2026-07-19 08:53:24'),
(235, 28, 'RM6 2 Pcs Wings', 'CODE: RM6  | 2 pieces chicken wings served with rice', 139.00, NULL, 0, 0, 6, '2026-07-19 08:53:24', '2026-07-19 08:53:24'),
(236, 28, 'RM7 Fried Pork Liempo', 'CODE: RM7  | Crispy fried pork liempo served with rice', 149.00, NULL, 0, 0, 7, '2026-07-19 08:53:24', '2026-07-19 08:53:24'),
(237, 28, 'RM8 Pork BBQ', 'CODE: RM8  | Grilled pork BBQ served with rice', 139.00, NULL, 0, 0, 8, '2026-07-19 08:53:24', '2026-07-19 08:53:24'),
(238, 28, 'RM9 Chicken Kare-Kare', 'CODE: RM9  | Chicken kare-kare in peanut sauce with rice', 199.00, NULL, 0, 0, 9, '2026-07-19 08:53:24', '2026-07-19 08:53:24'),
(239, 28, 'RM10 Pork Binagoongan', 'CODE: RM10 | Crispy pork with bagoong served with rice', 189.00, NULL, 0, 0, 10, '2026-07-19 08:53:24', '2026-07-19 08:53:24'),
(240, 28, 'RM11 Pork Kare-Kare', 'CODE: RM11 | Pork kare-kare in peanut sauce with rice', 199.00, NULL, 0, 0, 11, '2026-07-19 08:53:24', '2026-07-19 08:53:24'),
(241, 28, 'RM12 Bangus Bicol Express', 'CODE: RM12 | Bangus Bicol Express in coconut milk with rice', 169.00, NULL, 0, 0, 12, '2026-07-19 08:53:24', '2026-07-19 08:53:24'),
(242, 28, 'RM13 Chicken Shawarma Rice', 'CODE: RM13 | Chicken shawarma served over rice', 119.00, NULL, 0, 0, 13, '2026-07-19 08:53:24', '2026-07-19 08:53:24'),
(243, 28, 'RM14 Beef Shawarma Rice', 'CODE: RM14 | Beef shawarma served over rice', 139.00, NULL, 0, 0, 14, '2026-07-19 08:53:24', '2026-07-19 08:53:24');

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
  `type` enum('flavor','modifier','addon') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'modifier',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `max_selections` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modifier_groups_menu_item_id_foreign` (`menu_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modifier_groups`
--

INSERT INTO `modifier_groups` (`id`, `menu_item_id`, `type`, `name`, `description`, `required`, `max_selections`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(27, 20, 'addon', 'Upgrade', 'Add 60 for an upgrade option', 0, NULL, 1, 1, '2026-07-19 06:37:33', '2026-07-19 06:37:33'),
(28, 21, 'addon', 'Upgrade', 'Add 60 for an upgrade option', 0, NULL, 1, 1, '2026-07-19 06:37:33', '2026-07-19 06:37:33'),
(29, 22, 'addon', 'Upgrade', 'Add 60 for an upgrade option', 0, NULL, 1, 1, '2026-07-19 06:37:33', '2026-07-19 06:37:33'),
(30, 23, 'addon', 'Upgrade', 'Add 60 for an upgrade option', 0, NULL, 1, 1, '2026-07-19 06:37:33', '2026-07-19 06:37:33'),
(31, 24, 'flavor', 'Rice', 'Plain Rice or Garlic Fried Rice', 1, NULL, 1, 1, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(32, 24, 'flavor', 'Sinigang', 'Choose your Sinigang variant', 1, NULL, 1, 2, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(33, 24, 'flavor', 'Kare-Kare', 'Choose your Kare-Kare variant', 1, NULL, 1, 3, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(34, 24, 'flavor', 'Bangus', 'Sizzling Cheesy or Grilled Bangus', 1, NULL, 1, 4, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(35, 24, 'flavor', 'Pork', 'Binagoongan or Bicol Express', 1, NULL, 1, 5, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(36, 24, 'flavor', 'Wings', '3 Flavours of your choice', 1, NULL, 1, 6, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(37, 24, 'flavor', 'Sweets', 'Choose your dessert', 1, NULL, 1, 7, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(38, 24, 'flavor', 'Drinks', 'Choose your lemonade drink', 1, NULL, 1, 8, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(39, 25, 'flavor', 'Rice', 'Plain Rice or Garlic Fried Rice', 1, NULL, 1, 1, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(40, 25, 'flavor', 'Sinigang', 'Choose your Sinigang variant', 1, NULL, 1, 2, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(41, 25, 'flavor', 'Chopsuey / Pakbet', 'Choose between Chopsuey or Pakbet', 1, NULL, 1, 3, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(42, 25, 'flavor', 'Sweets', 'Choose your dessert', 1, NULL, 1, 4, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(43, 25, 'flavor', 'Drinks', 'Choose your lemonade drink', 1, NULL, 1, 5, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(44, 26, 'flavor', 'Rice', 'Plain Rice or Garlic Fried Rice', 1, NULL, 1, 1, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(45, 26, 'flavor', 'Sinigang', 'Choose your Sinigang variant', 1, NULL, 1, 2, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(46, 26, 'flavor', 'Kare-Kare', 'Choose your Kare-Kare variant', 1, NULL, 1, 3, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(47, 26, 'flavor', 'Bangus', 'Sizzling Cheesy or Grilled Bangus', 1, NULL, 1, 4, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(48, 26, 'flavor', 'Pakbet / Chopsuey', 'Choose between Pakbet or Chopsuey', 1, NULL, 1, 5, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(49, 26, 'flavor', 'Wings', 'Choose 2 flavours only', 1, NULL, 1, 6, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(50, 26, 'flavor', 'Sweets', 'Choose your dessert', 1, NULL, 1, 7, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(51, 26, 'flavor', 'Drinks', 'Choose your lemonade drink', 1, NULL, 1, 8, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(52, 27, 'flavor', 'Wings', 'Choose 2 flavours only', 1, NULL, 1, 1, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(53, 27, 'flavor', 'Pasta / Pancit', 'Choose your pasta or pancit variant', 1, NULL, 1, 2, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(54, 27, 'flavor', 'Sweets', 'Choose your dessert', 1, NULL, 1, 3, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(55, 27, 'flavor', 'Drinks', 'Choose your lemonade drink', 1, NULL, 1, 4, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(56, 31, 'modifier', 'Size', 'Small (P35) or Large (P90)', 1, NULL, 1, 1, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(57, 32, 'modifier', 'Size', 'Small (P89) or Large (P129)', 1, NULL, 1, 1, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(58, 33, 'modifier', 'Size', 'Small (P99) or Large (P139)', 1, NULL, 1, 1, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(59, 34, 'modifier', 'Size', 'Small (P99) or Large (P129)', 1, NULL, 1, 1, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(60, 35, 'modifier', 'Size', 'Small (P79) or Large (P129)', 1, NULL, 1, 1, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(61, 49, 'flavor', 'Flavor', 'Choose your fruit tea flavor', 1, NULL, 1, 1, '2026-07-19 06:57:34', '2026-07-19 06:57:34'),
(62, 49, 'modifier', 'Size', '16oz (P39) or 22oz (P49)', 1, NULL, 1, 2, '2026-07-19 06:57:34', '2026-07-19 06:57:34'),
(63, 50, 'flavor', 'Flavor', 'Choose your milk tea flavor', 1, NULL, 1, 1, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(64, 50, 'modifier', 'Size', '16oz (P39) or 22oz (P49)', 1, NULL, 1, 2, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(65, 51, 'flavor', 'Flavor', 'Choose your iced coffee latte flavor', 1, NULL, 1, 1, '2026-07-19 07:01:06', '2026-07-19 07:01:06'),
(66, 52, 'flavor', 'Flavor', 'Choose your iced coffee macchiato flavor', 1, NULL, 1, 1, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(67, 72, 'modifier', 'Size', 'Single (P49) or Tower (P179)', 1, NULL, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(68, 73, 'modifier', 'Size', 'Single (P49) or Tower (P179)', 1, NULL, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(69, 74, 'modifier', 'Size', 'Single (P59) or Tower (P199)', 1, NULL, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(70, 75, 'modifier', 'Size', 'Single (P49) or Tower (P179)', 1, NULL, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(71, 76, 'modifier', 'Size', 'Single (P49) or Tower (P179)', 1, NULL, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(72, 77, 'modifier', 'Size', 'Single (P59) or Tower (P189)', 1, NULL, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(73, 78, 'modifier', 'Size', 'Single (P49) or Tower (P179)', 1, NULL, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(74, 79, 'modifier', 'Size', 'Single (P49) or Tower (P179)', 1, NULL, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(75, 80, 'modifier', 'Size', 'Single (P59) or Tower (P189)', 1, NULL, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(76, 81, 'modifier', 'Size', 'Single (P39) or Tower (P159)', 1, NULL, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(77, 82, 'modifier', 'Size', 'Single (P69) or Tower (P209)', 1, NULL, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(78, 83, 'modifier', 'Size', 'Single (P59) or Tower (P189)', 1, NULL, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(79, 84, 'modifier', 'Size', 'Single (P69) or Tower (P209)', 1, NULL, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(80, 85, 'flavor', 'Bilao Contents', 'Choose what goes in your B8 Bilao', 1, NULL, 1, 0, '2026-07-19 07:15:50', '2026-07-19 14:22:43'),
(81, 86, 'flavor', 'Bilao Contents', 'Choose what goes in your B10 Bilao', 1, NULL, 1, 0, '2026-07-19 07:15:50', '2026-07-19 14:26:39'),
(82, 87, 'flavor', 'Bilao Contents', 'Choose what goes in your B12 Bilao', 1, NULL, 1, 0, '2026-07-19 07:15:50', '2026-07-19 14:29:28'),
(83, 88, 'flavor', 'Bilao Contents', 'Choose what goes in your B14 Bilao', 1, NULL, 1, 0, '2026-07-19 07:15:50', '2026-07-19 14:31:24'),
(84, 89, 'flavor', 'Bilao Contents', 'Choose what goes in your B16 Bilao', 1, NULL, 1, 0, '2026-07-19 07:15:50', '2026-07-19 14:33:27'),
(85, 90, 'flavor', 'Bilao Contents', 'Choose what goes in your B18 Bilao', 1, NULL, 1, 0, '2026-07-19 07:15:50', '2026-07-19 14:34:45'),
(86, 91, 'modifier', 'Size', 'Regular or Special serving', 1, NULL, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(87, 92, 'modifier', 'Size', 'Regular or Special serving', 1, NULL, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(88, 93, 'modifier', 'Size', 'Regular or Special serving', 1, NULL, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(89, 94, 'modifier', 'Size', 'Regular or Special serving', 1, NULL, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(90, 95, 'modifier', 'Size', 'Regular or Special serving', 1, NULL, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(91, 96, 'modifier', 'Size', 'Regular or Special serving', 1, NULL, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(92, 97, 'modifier', 'Size', 'Regular or Special serving', 1, NULL, 1, 0, '2026-07-19 07:39:44', '2026-07-19 14:47:13'),
(93, 98, 'modifier', 'Size', 'Regular or Special serving', 1, NULL, 1, 0, '2026-07-19 07:39:44', '2026-07-19 14:46:42'),
(94, 100, 'modifier', 'Size', 'Regular or Special serving', 1, NULL, 1, 0, '2026-07-19 07:39:44', '2026-07-19 14:45:15'),
(95, 102, 'modifier', 'Size', 'Regular or Special serving', 1, NULL, 1, 0, '2026-07-19 07:39:44', '2026-07-19 14:44:48'),
(96, 103, 'modifier', 'Size', 'Regular or Special serving', 1, NULL, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(97, 104, 'modifier', 'Size', 'Regular or Special serving', 1, NULL, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(98, 105, 'modifier', 'Size', 'Regular or Special serving', 1, NULL, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(99, 106, 'modifier', 'Size', 'Regular or Special serving', 1, NULL, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(100, 129, 'flavor', 'Flavor', 'Choose your fries flavor', 1, NULL, 1, 1, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(101, 135, 'modifier', 'Cooking Method', 'Steam or Fried ??? your choice!', 1, NULL, 1, 1, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(102, 136, 'modifier', 'Cooking Method', 'Steam or Fried ??? your choice!', 1, NULL, 1, 1, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(103, 126, 'flavor', 'Flavor', 'Choose your fries flavor', 1, NULL, 1, 1, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(104, 127, 'flavor', 'Flavor', 'Choose your fries flavor', 1, NULL, 1, 1, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(105, 128, 'flavor', 'Flavor', 'Choose your fries flavor', 1, NULL, 1, 1, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(122, 159, 'modifier', 'Serving', 'Available May Kalaguyo lang', 1, NULL, 1, 1, '2026-07-19 08:15:02', '2026-07-19 08:15:02'),
(121, 158, 'modifier', 'Serving', 'Available May Kalaguyo lang', 1, NULL, 1, 1, '2026-07-19 08:15:02', '2026-07-19 08:15:02'),
(120, 157, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(119, 156, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(118, 155, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(117, 154, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(116, 153, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(115, 152, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(114, 151, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(113, 150, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(112, 149, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(111, 148, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(110, 147, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(109, 146, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(108, 145, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(107, 144, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(106, 143, 'modifier', 'Serving', 'Mag-Isa o May Kalaguyo?', 1, NULL, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(123, 160, 'flavor', 'Flavor', 'Choose 1 flavor for your 3 pcs wings', 1, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(124, 161, 'flavor', 'Flavor', 'Choose 2 flavors for your 6 pcs wings', 1, 2, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(125, 162, 'flavor', 'Flavor', 'Choose 3 flavors for your 9 pcs wings', 1, 3, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(126, 163, 'flavor', 'Flavor', 'Choose 4 flavors for your 12 pcs wings', 1, 4, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(127, 164, 'flavor', 'Flavor', 'Choose 5 flavors for your 24 pcs wings', 1, 5, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(128, 165, 'flavor', 'Flavor', 'Choose your flavor (Spicy +P10)', 1, NULL, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(129, 166, 'flavor', 'Flavor', 'Choose your flavor (Spicy +P10)', 1, NULL, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(130, 167, 'flavor', 'Flavor', 'Choose your flavor (Spicy +P10)', 1, NULL, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(131, 168, 'flavor', 'Flavor', 'Choose your flavor (Spicy +P10)', 1, NULL, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(132, 169, 'flavor', 'Flavor', 'Choose your flavor (Spicy +P10)', 1, NULL, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(133, 165, 'modifier', 'Spicy Add-On', 'Add P10 for Spicy version', 0, NULL, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(134, 166, 'modifier', 'Spicy Add-On', 'Add P10 for Spicy version', 0, NULL, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(135, 167, 'modifier', 'Spicy Add-On', 'Add P10 for Spicy version', 0, NULL, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(136, 168, 'modifier', 'Spicy Add-On', 'Add P10 for Spicy version', 0, NULL, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(137, 169, 'modifier', 'Spicy Add-On', 'Add P10 for Spicy version', 0, NULL, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(138, 170, 'modifier', 'Topping', 'Choose your topping', 1, NULL, 1, 1, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(139, 171, 'flavor', 'Sauce', 'Choose your sauce', 1, NULL, 1, 1, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(140, 172, 'flavor', 'Sauce', 'Choose your sauce', 1, NULL, 1, 1, '2026-07-19 08:37:32', '2026-07-19 08:37:32');

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
) ENGINE=MyISAM AUTO_INCREMENT=511 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modifier_options`
--

INSERT INTO `modifier_options` (`id`, `modifier_group_id`, `name`, `price_type`, `price_adjustment`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(79, 27, 'Add 60 Upgrade', 'add', 60.00, 0, 1, 1, '2026-07-19 06:37:33', '2026-07-19 06:37:33'),
(80, 28, 'Add 60 Upgrade', 'add', 60.00, 0, 1, 1, '2026-07-19 06:37:33', '2026-07-19 06:37:33'),
(81, 29, 'Add 60 Upgrade', 'add', 60.00, 0, 1, 1, '2026-07-19 06:37:33', '2026-07-19 06:37:33'),
(82, 30, 'Add 60 Upgrade', 'add', 60.00, 0, 1, 1, '2026-07-19 06:37:33', '2026-07-19 06:37:33'),
(83, 31, 'Plain Rice', 'none', 0.00, 1, 1, 1, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(84, 31, 'Garlic Fried Rice', 'none', 0.00, 0, 1, 2, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(85, 32, 'Pork', 'none', 0.00, 1, 1, 1, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(86, 32, 'Shrimp', 'none', 0.00, 0, 1, 2, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(87, 32, 'Bangus', 'none', 0.00, 0, 1, 3, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(88, 33, 'Beef', 'none', 0.00, 1, 1, 1, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(89, 33, 'Crispy Pork', 'none', 0.00, 0, 1, 2, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(90, 34, 'Sizzling Cheesy', 'none', 0.00, 1, 1, 1, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(91, 34, 'Grilled', 'none', 0.00, 0, 1, 2, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(92, 35, 'Binagoongan', 'none', 0.00, 1, 1, 1, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(93, 35, 'Bicol Express', 'none', 0.00, 0, 1, 2, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(94, 36, 'Buffalo', 'none', 0.00, 1, 1, 1, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(95, 36, 'Garlic Parmesan', 'none', 0.00, 0, 1, 2, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(96, 36, 'BBQ Honey', 'none', 0.00, 0, 1, 3, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(97, 37, 'Halo-Halo', 'none', 0.00, 1, 1, 1, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(98, 37, 'Buko Pandan', 'none', 0.00, 0, 1, 2, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(99, 37, 'Leche Flan', 'none', 0.00, 0, 1, 3, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(100, 38, 'Cucumber Lemonade', 'none', 0.00, 1, 1, 1, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(101, 38, 'Blue Lemonade', 'none', 0.00, 0, 1, 2, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(102, 38, 'Ice Tea Lemonade', 'none', 0.00, 0, 1, 3, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(103, 38, 'Pineapple Lemonade', 'none', 0.00, 0, 1, 4, '2026-07-19 06:46:47', '2026-07-19 06:46:47'),
(104, 39, 'Plain Rice', 'none', 0.00, 1, 1, 1, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(105, 39, 'Garlic Fried Rice', 'none', 0.00, 0, 1, 2, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(106, 40, 'Pork', 'none', 0.00, 1, 1, 1, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(107, 40, 'Shrimp', 'none', 0.00, 0, 1, 2, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(108, 40, 'Bangus', 'none', 0.00, 0, 1, 3, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(109, 41, 'Chopsuey', 'none', 0.00, 1, 1, 1, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(110, 41, 'Pakbet', 'none', 0.00, 0, 1, 2, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(111, 42, 'Halo-Halo', 'none', 0.00, 1, 1, 1, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(112, 42, 'Buko Pandan', 'none', 0.00, 0, 1, 2, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(113, 42, 'Leche Flan', 'none', 0.00, 0, 1, 3, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(114, 43, 'Cucumber Lemonade', 'none', 0.00, 1, 1, 1, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(115, 43, 'Blue Lemonade', 'none', 0.00, 0, 1, 2, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(116, 43, 'Ice Tea Lemonade', 'none', 0.00, 0, 1, 3, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(117, 43, 'Strawberry Lemonade', 'none', 0.00, 0, 1, 4, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(118, 43, 'Pineapple Lemonade', 'none', 0.00, 0, 1, 5, '2026-07-19 06:48:25', '2026-07-19 06:48:25'),
(119, 44, 'Plain Rice', 'none', 0.00, 1, 1, 1, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(120, 44, 'Garlic Fried Rice', 'none', 0.00, 0, 1, 2, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(121, 45, 'Pork', 'none', 0.00, 1, 1, 1, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(122, 45, 'Shrimp', 'none', 0.00, 0, 1, 2, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(123, 45, 'Bangus', 'none', 0.00, 0, 1, 3, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(124, 46, 'Beef', 'none', 0.00, 1, 1, 1, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(125, 46, 'Crispy Pork', 'none', 0.00, 0, 1, 2, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(126, 47, 'Sizzling Cheesy', 'none', 0.00, 1, 1, 1, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(127, 47, 'Grilled', 'none', 0.00, 0, 1, 2, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(128, 48, 'Pakbet', 'none', 0.00, 1, 1, 1, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(129, 48, 'Chopsuey', 'none', 0.00, 0, 1, 2, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(130, 49, 'Buffalo', 'none', 0.00, 1, 1, 1, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(131, 49, 'Garlic Parmesan', 'none', 0.00, 0, 1, 2, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(132, 49, 'BBQ Honey', 'none', 0.00, 0, 1, 3, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(133, 50, 'Halo-Halo', 'none', 0.00, 1, 1, 1, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(134, 50, 'Buko Pandan', 'none', 0.00, 0, 1, 2, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(135, 50, 'Leche Flan', 'none', 0.00, 0, 1, 3, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(136, 51, 'Cucumber Lemonade', 'none', 0.00, 1, 1, 1, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(137, 51, 'Blue Lemonade', 'none', 0.00, 0, 1, 2, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(138, 51, 'Ice Tea Lemonade', 'none', 0.00, 0, 1, 3, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(139, 51, 'Strawberry Lemonade', 'none', 0.00, 0, 1, 4, '2026-07-19 06:49:50', '2026-07-19 06:49:50'),
(140, 52, 'Buffalo', 'none', 0.00, 1, 1, 1, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(141, 52, 'Garlic Parmesan', 'none', 0.00, 0, 1, 2, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(142, 52, 'BBQ Honey', 'none', 0.00, 0, 1, 3, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(143, 53, 'Spaghetti', 'none', 0.00, 1, 1, 1, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(144, 53, 'Palabok', 'none', 0.00, 0, 1, 2, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(145, 53, 'Carbonara', 'none', 0.00, 0, 1, 3, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(146, 53, 'Shrimp Pasta', 'none', 0.00, 0, 1, 4, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(147, 53, 'Tuna Pasta', 'none', 0.00, 0, 1, 5, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(148, 53, 'Miki Guisado', 'none', 0.00, 0, 1, 6, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(149, 53, 'Bihon Guisado', 'none', 0.00, 0, 1, 7, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(150, 53, 'Canton Guisado', 'none', 0.00, 0, 1, 8, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(151, 54, 'Halo-Halo', 'none', 0.00, 1, 1, 1, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(152, 54, 'Buko Pandan', 'none', 0.00, 0, 1, 2, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(153, 54, 'Leche Flan', 'none', 0.00, 0, 1, 3, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(154, 55, 'Cucumber Lemonade', 'none', 0.00, 1, 1, 1, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(155, 55, 'Blue Lemonade', 'none', 0.00, 0, 1, 2, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(156, 55, 'Ice Tea Lemonade', 'none', 0.00, 0, 1, 3, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(157, 55, 'Pineapple Lemonade', 'none', 0.00, 0, 1, 4, '2026-07-19 06:51:29', '2026-07-19 06:51:29'),
(158, 56, 'Small', 'none', 0.00, 1, 1, 1, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(159, 56, 'Large', 'add', 55.00, 0, 1, 2, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(160, 57, 'Small', 'none', 0.00, 1, 1, 1, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(161, 57, 'Large', 'add', 40.00, 0, 1, 2, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(162, 58, 'Small', 'none', 0.00, 1, 1, 1, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(163, 58, 'Large', 'add', 40.00, 0, 1, 2, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(164, 59, 'Small', 'none', 0.00, 1, 1, 1, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(165, 59, 'Large', 'add', 30.00, 0, 1, 2, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(166, 60, 'Small', 'none', 0.00, 1, 1, 1, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(167, 60, 'Large', 'add', 50.00, 0, 1, 2, '2026-07-19 06:53:19', '2026-07-19 06:53:19'),
(168, 61, 'Strawberry', 'none', 0.00, 1, 1, 1, '2026-07-19 06:57:34', '2026-07-19 06:57:34'),
(169, 61, 'Taro', 'none', 0.00, 0, 1, 2, '2026-07-19 06:57:34', '2026-07-19 06:57:34'),
(170, 61, 'Melon', 'none', 0.00, 0, 1, 3, '2026-07-19 06:57:34', '2026-07-19 06:57:34'),
(171, 61, 'Mango', 'none', 0.00, 0, 1, 4, '2026-07-19 06:57:34', '2026-07-19 06:57:34'),
(172, 61, 'Lychee', 'none', 0.00, 0, 1, 5, '2026-07-19 06:57:34', '2026-07-19 06:57:34'),
(173, 61, 'Passionfruit', 'none', 0.00, 0, 1, 6, '2026-07-19 06:57:34', '2026-07-19 06:57:34'),
(174, 62, '16oz', 'none', 0.00, 1, 1, 1, '2026-07-19 06:57:34', '2026-07-19 06:57:34'),
(175, 62, '22oz', 'add', 10.00, 0, 1, 2, '2026-07-19 06:57:34', '2026-07-19 06:57:34'),
(176, 63, 'Okinawa', 'none', 0.00, 1, 1, 1, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(177, 63, 'Winter Melon', 'none', 0.00, 0, 1, 2, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(178, 63, 'Chocolate', 'none', 0.00, 0, 1, 3, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(179, 63, 'Matcha', 'none', 0.00, 0, 1, 4, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(180, 63, 'Dark Chocolate', 'none', 0.00, 0, 1, 5, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(181, 63, 'Red Velvet', 'none', 0.00, 0, 1, 6, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(182, 63, 'Java Chip', 'none', 0.00, 0, 1, 7, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(183, 63, 'Hokkaido', 'none', 0.00, 0, 1, 8, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(184, 63, 'Cheesecake', 'none', 0.00, 0, 1, 9, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(185, 63, 'Salted Caramel', 'none', 0.00, 0, 1, 10, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(186, 63, 'Brown Sugar', 'none', 0.00, 0, 1, 11, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(187, 63, 'Cookies & Cream', 'none', 0.00, 0, 1, 12, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(188, 63, 'Milk Chocolate', 'none', 0.00, 0, 1, 13, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(189, 63, 'Vanilla', 'none', 0.00, 0, 1, 14, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(190, 63, 'Caramel', 'none', 0.00, 0, 1, 15, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(191, 64, '16oz', 'none', 0.00, 1, 1, 1, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(192, 64, '22oz', 'add', 10.00, 0, 1, 2, '2026-07-19 06:59:15', '2026-07-19 06:59:15'),
(193, 65, 'Iced Almond Latte', 'none', 0.00, 1, 1, 1, '2026-07-19 07:01:06', '2026-07-19 07:01:06'),
(194, 65, 'Iced Caramel Latte', 'none', 0.00, 0, 1, 2, '2026-07-19 07:01:06', '2026-07-19 07:01:06'),
(195, 65, 'Iced Matcha Latte', 'none', 0.00, 0, 1, 3, '2026-07-19 07:01:06', '2026-07-19 07:01:06'),
(196, 65, 'Iced Salted Caramel Latte', 'none', 0.00, 0, 1, 4, '2026-07-19 07:01:06', '2026-07-19 07:01:06'),
(197, 65, 'Iced Vanilla Latte', 'none', 0.00, 0, 1, 5, '2026-07-19 07:01:06', '2026-07-19 07:01:06'),
(198, 65, 'Iced Butterscotch Latte', 'none', 0.00, 0, 1, 6, '2026-07-19 07:01:06', '2026-07-19 07:01:06'),
(199, 65, 'Iced Brown Sugar Latte', 'none', 0.00, 0, 1, 7, '2026-07-19 07:01:06', '2026-07-19 07:01:06'),
(200, 65, 'Iced Strawberry Latte', 'none', 0.00, 0, 1, 8, '2026-07-19 07:01:06', '2026-07-19 07:01:06'),
(201, 65, 'Iced Cookies & Cream Latte', 'none', 0.00, 0, 1, 9, '2026-07-19 07:01:06', '2026-07-19 07:01:06'),
(202, 65, 'Iced Ube Latte', 'none', 0.00, 0, 1, 10, '2026-07-19 07:01:06', '2026-07-19 07:01:06'),
(203, 65, 'Iced Hazelnut Latte', 'none', 0.00, 0, 1, 11, '2026-07-19 07:01:06', '2026-07-19 07:01:06'),
(204, 66, 'Iced Almond Macchiato', 'none', 0.00, 1, 1, 1, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(205, 66, 'Iced Caramel Macchiato', 'none', 0.00, 0, 1, 2, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(206, 66, 'Iced Salted Caramel Macchiato', 'none', 0.00, 0, 1, 3, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(207, 66, 'Iced Chocolate Peppermint', 'none', 0.00, 0, 1, 4, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(208, 66, 'Iced Vanilla Macchiato', 'none', 0.00, 0, 1, 5, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(209, 66, 'Iced Hazelnut Macchiato', 'none', 0.00, 0, 1, 6, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(210, 66, 'Iced Butterscotch Macchiato', 'none', 0.00, 0, 1, 7, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(211, 66, 'Iced Matcha Macchiato', 'none', 0.00, 0, 1, 8, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(212, 66, 'Iced Brown Sugar Macchiato', 'none', 0.00, 0, 1, 9, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(213, 66, 'Iced Strawberry Macchiato', 'none', 0.00, 0, 1, 10, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(214, 66, 'Iced Ube Macchiato', 'none', 0.00, 0, 1, 11, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(215, 66, 'Iced Taro Macchiato', 'none', 0.00, 0, 1, 12, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(216, 66, 'Iced Cookies & Cream Macchiato', 'none', 0.00, 0, 1, 13, '2026-07-19 07:04:13', '2026-07-19 07:04:13'),
(217, 67, 'Single', 'none', 0.00, 1, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(218, 67, 'Tower', 'add', 130.00, 0, 1, 2, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(219, 68, 'Single', 'none', 0.00, 1, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(220, 68, 'Tower', 'add', 130.00, 0, 1, 2, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(221, 69, 'Single', 'none', 0.00, 1, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(222, 69, 'Tower', 'add', 140.00, 0, 1, 2, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(223, 70, 'Single', 'none', 0.00, 1, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(224, 70, 'Tower', 'add', 130.00, 0, 1, 2, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(225, 71, 'Single', 'none', 0.00, 1, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(226, 71, 'Tower', 'add', 130.00, 0, 1, 2, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(227, 72, 'Single', 'none', 0.00, 1, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(228, 72, 'Tower', 'add', 130.00, 0, 1, 2, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(229, 73, 'Single', 'none', 0.00, 1, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(230, 73, 'Tower', 'add', 130.00, 0, 1, 2, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(231, 74, 'Single', 'none', 0.00, 1, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(232, 74, 'Tower', 'add', 130.00, 0, 1, 2, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(233, 75, 'Single', 'none', 0.00, 1, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(234, 75, 'Tower', 'add', 130.00, 0, 1, 2, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(235, 76, 'Single', 'none', 0.00, 1, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(236, 76, 'Tower', 'add', 120.00, 0, 1, 2, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(237, 77, 'Single', 'none', 0.00, 1, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(238, 77, 'Tower', 'add', 140.00, 0, 1, 2, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(239, 78, 'Single', 'none', 0.00, 1, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(240, 78, 'Tower', 'add', 130.00, 0, 1, 2, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(241, 79, 'Single', 'none', 0.00, 1, 1, 1, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(242, 79, 'Tower', 'add', 140.00, 0, 1, 2, '2026-07-19 07:11:33', '2026-07-19 07:11:33'),
(243, 80, 'Miki', 'none', 0.00, 1, 1, 0, '2026-07-19 07:15:50', '2026-07-19 14:22:43'),
(244, 80, 'Canton', 'add', 50.00, 0, 1, 1, '2026-07-19 07:15:50', '2026-07-19 14:22:43'),
(245, 80, 'Spag', 'add', 90.00, 0, 1, 2, '2026-07-19 07:15:50', '2026-07-19 14:24:34'),
(246, 80, 'Sotanghon', 'add', 50.00, 0, 1, 3, '2026-07-19 07:15:50', '2026-07-19 14:23:31'),
(247, 80, 'Bihon', 'none', 0.00, 0, 1, 4, '2026-07-19 07:15:50', '2026-07-19 14:22:43'),
(248, 80, 'Palabok', 'add', 90.00, 0, 1, 5, '2026-07-19 07:15:50', '2026-07-19 14:24:34'),
(249, 80, 'Biko', 'add', 50.00, 0, 1, 6, '2026-07-19 07:15:50', '2026-07-19 14:22:43'),
(250, 80, 'Maja', 'add', 90.00, 0, 1, 7, '2026-07-19 07:15:50', '2026-07-19 14:24:34'),
(251, 80, 'Mix Pancit', 'add', 50.00, 0, 1, 8, '2026-07-19 07:15:50', '2026-07-19 14:23:31'),
(252, 80, 'Carbonara', 'add', 90.00, 0, 1, 9, '2026-07-19 07:15:50', '2026-07-19 14:22:43'),
(253, 81, 'Miki', 'none', 0.00, 1, 1, 0, '2026-07-19 07:15:50', '2026-07-19 14:26:39'),
(254, 81, 'Canton', 'add', 100.00, 0, 1, 1, '2026-07-19 07:15:50', '2026-07-19 14:26:39'),
(255, 81, 'Spag', 'add', 200.00, 0, 1, 2, '2026-07-19 07:15:50', '2026-07-19 14:26:39'),
(256, 81, 'Sotanghon', 'add', 100.00, 0, 1, 3, '2026-07-19 07:15:50', '2026-07-19 14:26:39'),
(257, 81, 'Bihon', 'none', 0.00, 0, 1, 4, '2026-07-19 07:15:50', '2026-07-19 14:26:39'),
(258, 81, 'Palabok', 'add', 200.00, 0, 1, 5, '2026-07-19 07:15:50', '2026-07-19 14:26:39'),
(259, 81, 'Biko', 'add', 100.00, 0, 1, 6, '2026-07-19 07:15:50', '2026-07-19 14:26:39'),
(260, 81, 'Maja', 'add', 200.00, 0, 1, 7, '2026-07-19 07:15:50', '2026-07-19 14:26:39'),
(261, 81, 'Mix Pancit', 'add', 100.00, 0, 1, 8, '2026-07-19 07:15:50', '2026-07-19 14:26:39'),
(262, 81, 'Carbonara', 'add', 200.00, 0, 1, 9, '2026-07-19 07:15:50', '2026-07-19 14:26:39'),
(263, 82, 'Miki', 'none', 0.00, 1, 1, 0, '2026-07-19 07:15:50', '2026-07-19 14:29:28'),
(264, 82, 'Canton', 'add', 100.00, 0, 1, 1, '2026-07-19 07:15:50', '2026-07-19 14:29:28'),
(265, 82, 'Spag', 'add', 200.00, 0, 1, 2, '2026-07-19 07:15:50', '2026-07-19 14:29:28'),
(266, 82, 'Sotanghon', 'add', 100.00, 0, 1, 3, '2026-07-19 07:15:50', '2026-07-19 14:29:28'),
(267, 82, 'Bihon', 'none', 0.00, 0, 1, 4, '2026-07-19 07:15:50', '2026-07-19 14:29:28'),
(268, 82, 'Palabok', 'add', 200.00, 0, 1, 5, '2026-07-19 07:15:50', '2026-07-19 14:29:28'),
(269, 82, 'Biko', 'add', 100.00, 0, 1, 6, '2026-07-19 07:15:50', '2026-07-19 14:29:28'),
(270, 82, 'Maja', 'add', 200.00, 0, 1, 7, '2026-07-19 07:15:50', '2026-07-19 14:29:28'),
(271, 82, 'Mix Pancit', 'add', 100.00, 0, 1, 8, '2026-07-19 07:15:50', '2026-07-19 14:29:28'),
(272, 82, 'Carbonara', 'add', 200.00, 0, 1, 9, '2026-07-19 07:15:50', '2026-07-19 14:29:28'),
(273, 83, 'Miki', 'none', 0.00, 1, 1, 0, '2026-07-19 07:15:50', '2026-07-19 14:31:24'),
(274, 83, 'Canton', 'add', 200.00, 0, 1, 1, '2026-07-19 07:15:50', '2026-07-19 14:31:24'),
(275, 83, 'Spag', 'add', 500.00, 0, 1, 2, '2026-07-19 07:15:50', '2026-07-19 14:31:24'),
(276, 83, 'Sotanghon', 'add', 200.00, 0, 1, 3, '2026-07-19 07:15:50', '2026-07-19 14:31:24'),
(277, 83, 'Bihon', 'none', 0.00, 0, 1, 4, '2026-07-19 07:15:50', '2026-07-19 14:31:24'),
(278, 83, 'Palabok', 'add', 500.00, 0, 1, 5, '2026-07-19 07:15:50', '2026-07-19 14:31:24'),
(279, 83, 'Biko', 'add', 200.00, 0, 1, 6, '2026-07-19 07:15:50', '2026-07-19 14:31:24'),
(280, 83, 'Maja', 'add', 500.00, 0, 1, 7, '2026-07-19 07:15:50', '2026-07-19 14:31:24'),
(281, 83, 'Mix Pancit', 'add', 200.00, 0, 1, 8, '2026-07-19 07:15:50', '2026-07-19 14:31:24'),
(282, 83, 'Carbonara', 'add', 500.00, 0, 1, 9, '2026-07-19 07:15:50', '2026-07-19 14:31:24'),
(283, 84, 'Miki', 'none', 0.00, 1, 1, 0, '2026-07-19 07:15:50', '2026-07-19 14:33:27'),
(284, 84, 'Canton', 'add', 300.00, 0, 1, 1, '2026-07-19 07:15:50', '2026-07-19 14:33:27'),
(285, 84, 'Spag', 'add', 600.00, 0, 1, 2, '2026-07-19 07:15:50', '2026-07-19 14:33:27'),
(286, 84, 'Sotanghon', 'add', 300.00, 0, 1, 3, '2026-07-19 07:15:50', '2026-07-19 14:33:27'),
(287, 84, 'Bihon', 'none', 0.00, 0, 1, 4, '2026-07-19 07:15:50', '2026-07-19 14:33:27'),
(288, 84, 'Palabok', 'add', 600.00, 0, 1, 5, '2026-07-19 07:15:50', '2026-07-19 14:33:27'),
(289, 84, 'Biko', 'add', 300.00, 0, 1, 6, '2026-07-19 07:15:50', '2026-07-19 14:33:27'),
(290, 84, 'Maja', 'add', 600.00, 0, 1, 7, '2026-07-19 07:15:50', '2026-07-19 14:33:27'),
(291, 84, 'Mix Pancit', 'add', 300.00, 0, 1, 8, '2026-07-19 07:15:50', '2026-07-19 14:33:27'),
(292, 84, 'Carbonara', 'add', 600.00, 0, 1, 9, '2026-07-19 07:15:50', '2026-07-19 14:33:27'),
(293, 85, 'Miki', 'none', 0.00, 1, 1, 0, '2026-07-19 07:15:50', '2026-07-19 14:34:45'),
(294, 85, 'Canton', 'add', 300.00, 0, 1, 1, '2026-07-19 07:15:50', '2026-07-19 14:34:45'),
(295, 85, 'Spag', 'add', 700.00, 0, 1, 2, '2026-07-19 07:15:50', '2026-07-19 14:34:45'),
(296, 85, 'Sotanghon', 'add', 300.00, 0, 1, 3, '2026-07-19 07:15:50', '2026-07-19 14:34:45'),
(297, 85, 'Bihon', 'none', 0.00, 0, 1, 4, '2026-07-19 07:15:50', '2026-07-19 14:34:45'),
(298, 85, 'Palabok', 'add', 700.00, 0, 1, 5, '2026-07-19 07:15:50', '2026-07-19 14:34:45'),
(299, 85, 'Biko', 'add', 300.00, 0, 1, 6, '2026-07-19 07:15:50', '2026-07-19 14:34:45'),
(300, 85, 'Maja', 'add', 700.00, 0, 1, 7, '2026-07-19 07:15:50', '2026-07-19 14:34:45'),
(301, 85, 'Mix Pancit', 'add', 300.00, 0, 1, 8, '2026-07-19 07:15:50', '2026-07-19 14:34:45'),
(302, 85, 'Carbonara', 'add', 700.00, 0, 1, 9, '2026-07-19 07:15:50', '2026-07-19 14:34:45'),
(303, 86, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(304, 86, 'Special', 'add', 80.00, 0, 1, 2, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(305, 87, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(306, 87, 'Special', 'add', 80.00, 0, 1, 2, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(307, 88, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(308, 88, 'Special', 'add', 80.00, 0, 1, 2, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(309, 89, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(310, 89, 'Special', 'add', 80.00, 0, 1, 2, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(311, 90, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(312, 90, 'Special', 'add', 80.00, 0, 1, 2, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(313, 91, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(314, 91, 'Special', 'add', 80.00, 0, 1, 2, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(315, 92, 'Regular', 'none', 0.00, 1, 1, 0, '2026-07-19 07:39:44', '2026-07-19 14:47:13'),
(316, 92, 'Special', 'add', 90.00, 0, 1, 1, '2026-07-19 07:39:44', '2026-07-19 14:47:13'),
(317, 93, 'Regular', 'none', 0.00, 1, 1, 0, '2026-07-19 07:39:44', '2026-07-19 14:46:42'),
(318, 93, 'Special', 'add', 100.00, 0, 1, 1, '2026-07-19 07:39:44', '2026-07-19 14:46:42'),
(319, 94, 'Regular', 'none', 0.00, 1, 1, 0, '2026-07-19 07:39:44', '2026-07-19 14:45:15'),
(331, 100, 'Cheese', 'none', 0.00, 1, 1, 1, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(321, 95, 'Regular', 'none', 0.00, 1, 1, 0, '2026-07-19 07:39:44', '2026-07-19 14:44:48'),
(322, 95, 'Special', 'add', 70.00, 0, 1, 1, '2026-07-19 07:39:44', '2026-07-19 14:44:48'),
(323, 96, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(324, 96, 'Special', 'add', 70.00, 0, 1, 2, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(325, 97, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(326, 97, 'Special', 'add', 70.00, 0, 1, 2, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(327, 98, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(328, 98, 'Special', 'add', 80.00, 0, 1, 2, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(329, 99, 'Regular', 'none', 0.00, 1, 1, 1, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(330, 99, 'Special', 'add', 30.00, 0, 1, 2, '2026-07-19 07:39:44', '2026-07-19 07:39:44'),
(332, 100, 'Sour Cream', 'none', 0.00, 0, 1, 2, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(333, 100, 'Barbeque', 'none', 0.00, 0, 1, 3, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(334, 100, 'Garlic Parmesan', 'none', 0.00, 0, 1, 4, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(335, 101, 'Steamed', 'none', 0.00, 1, 1, 1, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(336, 101, 'Fried', 'none', 0.00, 0, 1, 2, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(337, 102, 'Steamed', 'none', 0.00, 1, 1, 1, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(338, 102, 'Fried', 'none', 0.00, 0, 1, 2, '2026-07-19 07:57:55', '2026-07-19 07:57:55'),
(339, 103, 'Cheese', 'none', 0.00, 1, 1, 1, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(340, 103, 'Sour Cream', 'none', 0.00, 0, 1, 2, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(341, 103, 'Barbeque', 'none', 0.00, 0, 1, 3, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(342, 103, 'Garlic Parmesan', 'none', 0.00, 0, 1, 4, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(343, 104, 'Cheese', 'none', 0.00, 1, 1, 1, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(344, 104, 'Sour Cream', 'none', 0.00, 0, 1, 2, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(345, 104, 'Barbeque', 'none', 0.00, 0, 1, 3, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(346, 104, 'Garlic Parmesan', 'none', 0.00, 0, 1, 4, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(347, 105, 'Cheese', 'none', 0.00, 1, 1, 1, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(348, 105, 'Sour Cream', 'none', 0.00, 0, 1, 2, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(349, 105, 'Barbeque', 'none', 0.00, 0, 1, 3, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(350, 105, 'Garlic Parmesan', 'none', 0.00, 0, 1, 4, '2026-07-19 08:02:39', '2026-07-19 08:02:39'),
(382, 122, 'May Kalaguyo', 'none', 0.00, 1, 1, 1, '2026-07-19 08:15:02', '2026-07-19 08:15:02'),
(381, 121, 'May Kalaguyo', 'none', 0.00, 1, 1, 1, '2026-07-19 08:15:02', '2026-07-19 08:15:02'),
(380, 120, 'May Kalaguyo', 'add', 450.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(379, 120, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(378, 119, 'May Kalaguyo', 'add', 60.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(377, 119, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(376, 118, 'May Kalaguyo', 'add', 191.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(375, 118, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(374, 117, 'May Kalaguyo', 'add', 250.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(373, 117, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(372, 116, 'May Kalaguyo', 'add', 340.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(371, 116, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(370, 115, 'May Kalaguyo', 'add', 370.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(369, 115, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(368, 114, 'May Kalaguyo', 'add', 170.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(367, 114, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(366, 113, 'May Kalaguyo', 'add', 280.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(365, 113, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(364, 112, 'May Kalaguyo', 'add', 300.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(363, 112, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(362, 111, 'May Kalaguyo', 'add', 300.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(361, 111, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(360, 110, 'May Kalaguyo', 'add', 240.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(359, 110, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(358, 109, 'May Kalaguyo', 'add', 270.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(357, 109, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(356, 108, 'May Kalaguyo', 'add', 259.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(355, 108, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(354, 107, 'May Kalaguyo', 'add', 390.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(353, 107, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(352, 106, 'May Kalaguyo', 'add', 309.00, 0, 1, 2, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(351, 106, 'Mag-Isa', 'none', 0.00, 1, 1, 1, '2026-07-19 08:11:47', '2026-07-19 08:11:47'),
(383, 123, 'Sweet Chili', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(384, 123, 'Barbecue', 'none', 0.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(385, 123, 'Buffalo', 'none', 0.00, 0, 1, 3, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(386, 123, 'Yangnyeom', 'none', 0.00, 0, 1, 4, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(387, 123, 'Teriyaki', 'none', 0.00, 0, 1, 5, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(388, 123, 'Lemon Glaze', 'none', 0.00, 0, 1, 6, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(389, 123, 'Honey Butter', 'none', 0.00, 0, 1, 7, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(390, 123, 'Soy Garlic', 'none', 0.00, 0, 1, 8, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(391, 123, 'Garlic Parmesan Cheese', 'none', 0.00, 0, 1, 9, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(392, 124, 'Sweet Chili', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(393, 124, 'Barbecue', 'none', 0.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(394, 124, 'Buffalo', 'none', 0.00, 0, 1, 3, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(395, 124, 'Yangnyeom', 'none', 0.00, 0, 1, 4, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(396, 124, 'Teriyaki', 'none', 0.00, 0, 1, 5, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(397, 124, 'Lemon Glaze', 'none', 0.00, 0, 1, 6, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(398, 124, 'Honey Butter', 'none', 0.00, 0, 1, 7, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(399, 124, 'Soy Garlic', 'none', 0.00, 0, 1, 8, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(400, 124, 'Garlic Parmesan Cheese', 'none', 0.00, 0, 1, 9, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(401, 125, 'Sweet Chili', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(402, 125, 'Barbecue', 'none', 0.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(403, 125, 'Buffalo', 'none', 0.00, 0, 1, 3, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(404, 125, 'Yangnyeom', 'none', 0.00, 0, 1, 4, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(405, 125, 'Teriyaki', 'none', 0.00, 0, 1, 5, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(406, 125, 'Lemon Glaze', 'none', 0.00, 0, 1, 6, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(407, 125, 'Honey Butter', 'none', 0.00, 0, 1, 7, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(408, 125, 'Soy Garlic', 'none', 0.00, 0, 1, 8, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(409, 125, 'Garlic Parmesan Cheese', 'none', 0.00, 0, 1, 9, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(410, 126, 'Sweet Chili', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(411, 126, 'Barbecue', 'none', 0.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(412, 126, 'Buffalo', 'none', 0.00, 0, 1, 3, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(413, 126, 'Yangnyeom', 'none', 0.00, 0, 1, 4, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(414, 126, 'Teriyaki', 'none', 0.00, 0, 1, 5, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(415, 126, 'Lemon Glaze', 'none', 0.00, 0, 1, 6, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(416, 126, 'Honey Butter', 'none', 0.00, 0, 1, 7, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(417, 126, 'Soy Garlic', 'none', 0.00, 0, 1, 8, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(418, 126, 'Garlic Parmesan Cheese', 'none', 0.00, 0, 1, 9, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(419, 127, 'Sweet Chili', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(420, 127, 'Barbecue', 'none', 0.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(421, 127, 'Buffalo', 'none', 0.00, 0, 1, 3, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(422, 127, 'Yangnyeom', 'none', 0.00, 0, 1, 4, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(423, 127, 'Teriyaki', 'none', 0.00, 0, 1, 5, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(424, 127, 'Lemon Glaze', 'none', 0.00, 0, 1, 6, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(425, 127, 'Honey Butter', 'none', 0.00, 0, 1, 7, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(426, 127, 'Soy Garlic', 'none', 0.00, 0, 1, 8, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(427, 127, 'Garlic Parmesan Cheese', 'none', 0.00, 0, 1, 9, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(428, 128, 'Sweet Chili', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(429, 128, 'Barbecue', 'none', 0.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(430, 128, 'Buffalo', 'none', 0.00, 0, 1, 3, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(431, 128, 'Yangnyeom', 'none', 0.00, 0, 1, 4, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(432, 128, 'Teriyaki', 'none', 0.00, 0, 1, 5, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(433, 128, 'Lemon Glaze', 'none', 0.00, 0, 1, 6, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(434, 128, 'Honey Butter', 'none', 0.00, 0, 1, 7, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(435, 128, 'Soy Garlic', 'none', 0.00, 0, 1, 8, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(436, 128, 'Garlic Parmesan Cheese', 'none', 0.00, 0, 1, 9, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(437, 129, 'Sweet Chili', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(438, 129, 'Barbecue', 'none', 0.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(439, 129, 'Buffalo', 'none', 0.00, 0, 1, 3, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(440, 129, 'Yangnyeom', 'none', 0.00, 0, 1, 4, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(441, 129, 'Teriyaki', 'none', 0.00, 0, 1, 5, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(442, 129, 'Lemon Glaze', 'none', 0.00, 0, 1, 6, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(443, 129, 'Honey Butter', 'none', 0.00, 0, 1, 7, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(444, 129, 'Soy Garlic', 'none', 0.00, 0, 1, 8, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(445, 129, 'Garlic Parmesan Cheese', 'none', 0.00, 0, 1, 9, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(446, 130, 'Sweet Chili', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(447, 130, 'Barbecue', 'none', 0.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(448, 130, 'Buffalo', 'none', 0.00, 0, 1, 3, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(449, 130, 'Yangnyeom', 'none', 0.00, 0, 1, 4, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(450, 130, 'Teriyaki', 'none', 0.00, 0, 1, 5, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(451, 130, 'Lemon Glaze', 'none', 0.00, 0, 1, 6, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(452, 130, 'Honey Butter', 'none', 0.00, 0, 1, 7, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(453, 130, 'Soy Garlic', 'none', 0.00, 0, 1, 8, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(454, 130, 'Garlic Parmesan Cheese', 'none', 0.00, 0, 1, 9, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(455, 131, 'Sweet Chili', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(456, 131, 'Barbecue', 'none', 0.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(457, 131, 'Buffalo', 'none', 0.00, 0, 1, 3, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(458, 131, 'Yangnyeom', 'none', 0.00, 0, 1, 4, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(459, 131, 'Teriyaki', 'none', 0.00, 0, 1, 5, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(460, 131, 'Lemon Glaze', 'none', 0.00, 0, 1, 6, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(461, 131, 'Honey Butter', 'none', 0.00, 0, 1, 7, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(462, 131, 'Soy Garlic', 'none', 0.00, 0, 1, 8, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(463, 131, 'Garlic Parmesan Cheese', 'none', 0.00, 0, 1, 9, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(464, 132, 'Sweet Chili', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(465, 132, 'Barbecue', 'none', 0.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(466, 132, 'Buffalo', 'none', 0.00, 0, 1, 3, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(467, 132, 'Yangnyeom', 'none', 0.00, 0, 1, 4, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(468, 132, 'Teriyaki', 'none', 0.00, 0, 1, 5, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(469, 132, 'Lemon Glaze', 'none', 0.00, 0, 1, 6, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(470, 132, 'Honey Butter', 'none', 0.00, 0, 1, 7, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(471, 132, 'Soy Garlic', 'none', 0.00, 0, 1, 8, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(472, 132, 'Garlic Parmesan Cheese', 'none', 0.00, 0, 1, 9, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(473, 133, 'No Spicy', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(474, 133, 'Spicy', 'add', 10.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(475, 134, 'No Spicy', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(476, 134, 'Spicy', 'add', 10.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(477, 135, 'No Spicy', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(478, 135, 'Spicy', 'add', 10.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(479, 136, 'No Spicy', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(480, 136, 'Spicy', 'add', 10.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(481, 137, 'No Spicy', 'none', 0.00, 1, 1, 1, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(482, 137, 'Spicy', 'add', 10.00, 0, 1, 2, '2026-07-19 08:20:24', '2026-07-19 08:20:24'),
(483, 138, 'Nuggets', 'none', 0.00, 1, 1, 1, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(484, 138, 'Ham', 'none', 0.00, 0, 1, 2, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(485, 138, 'Fried Egg', 'none', 0.00, 0, 1, 3, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(486, 138, 'Balony', 'none', 0.00, 0, 1, 4, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(487, 138, 'Spam', 'none', 0.00, 0, 1, 5, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(488, 138, 'Fried Siomai', 'none', 0.00, 0, 1, 6, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(489, 138, 'Lumpia Shanghai', 'none', 0.00, 0, 1, 7, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(490, 138, 'Steam Siomai', 'none', 0.00, 0, 1, 8, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(491, 138, 'Corned Beef', 'none', 0.00, 0, 1, 9, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(492, 138, 'Hotdog Balls', 'none', 0.00, 0, 1, 10, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(493, 139, 'Barbecue', 'none', 0.00, 1, 1, 1, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(494, 139, 'Buffalo', 'none', 0.00, 0, 1, 2, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(495, 139, 'Chili Sauce', 'none', 0.00, 0, 1, 3, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(496, 139, 'Sweet and Sour', 'none', 0.00, 0, 1, 4, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(497, 139, 'Sweet Chili', 'none', 0.00, 0, 1, 5, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(498, 139, 'Yangyeom', 'none', 0.00, 0, 1, 6, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(499, 139, 'Honey Butter', 'none', 0.00, 0, 1, 7, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(500, 139, 'Teriyaki', 'none', 0.00, 0, 1, 8, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(501, 139, 'Soy Garlic', 'none', 0.00, 0, 1, 9, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(502, 140, 'Barbecue', 'none', 0.00, 1, 1, 1, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(503, 140, 'Buffalo', 'none', 0.00, 0, 1, 2, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(504, 140, 'Chili Sauce', 'none', 0.00, 0, 1, 3, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(505, 140, 'Sweet and Sour', 'none', 0.00, 0, 1, 4, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(506, 140, 'Sweet Chili', 'none', 0.00, 0, 1, 5, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(507, 140, 'Yangyeom', 'none', 0.00, 0, 1, 6, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(508, 140, 'Honey Butter', 'none', 0.00, 0, 1, 7, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(509, 140, 'Teriyaki', 'none', 0.00, 0, 1, 8, '2026-07-19 08:37:32', '2026-07-19 08:37:32'),
(510, 140, 'Soy Garlic', 'none', 0.00, 0, 1, 9, '2026-07-19 08:37:32', '2026-07-19 08:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `rider_id` bigint UNSIGNED DEFAULT NULL,
  `status` enum('pending','accepted','preparing','rider_assigned','out_for_delivery','delivered','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `subtotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `delivery_fee` decimal(8,2) NOT NULL DEFAULT '50.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_method` enum('cash','gcash','card') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `payment_status` enum('pending','paid') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `delivery_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_barangay` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_lat` decimal(10,7) DEFAULT NULL,
  `delivery_lng` decimal(10,7) DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `proof_photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` enum('handover','photo') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `item_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_type` enum('motorcycle','bicycle') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'motorcycle',
  `plate_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
