-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 23 2022 г., 07:27
-- Версия сервера: 8.0.31-0ubuntu0.20.04.1
-- Версия PHP: 8.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lv-burdujasergiu`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_order_widgets`
--

CREATE TABLE `admin_order_widgets` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_groups`
--

CREATE TABLE `attribute_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attr_group_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'brand_no_image.jpg',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double(15,2) NOT NULL,
  `base` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `media`
--

INSERT INTO `media` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(1, 'linux.jpg', '/uploads/linux.jpg', '2022-11-20 08:50:17', '2022-11-20 08:50:17'),
(2, 'postman.jpg', '/uploads/postman.jpg', '2022-11-20 08:50:17', '2022-11-20 08:50:17'),
(4, 'vim.jpg', '/uploads/vim.jpg', '2022-11-20 08:50:17', '2022-11-20 08:50:17'),
(5, 'prosecco.jpg', '/uploads/prosecco.jpg', '2022-11-20 09:00:13', '2022-11-20 09:00:13'),
(6, 'neon-lux.jpg', '/uploads/neon-lux.jpg', '2022-11-20 09:00:13', '2022-11-20 09:00:13'),
(7, 'generalcopper.jpg', '/uploads/generalcopper.jpg', '2022-11-20 09:00:13', '2022-11-20 09:00:13'),
(8, 'fima.jpg', '/uploads/fima.jpg', '2022-11-20 09:00:13', '2022-11-20 09:00:13'),
(9, 'caf.jpg', '/uploads/caf.jpg', '2022-11-20 09:00:13', '2022-11-20 09:00:13'),
(10, 'andreabraglia.jpg', '/uploads/andreabraglia.jpg', '2022-11-20 09:00:13', '2022-11-20 09:00:13'),
(11, 'la-fumana.jpg', '/uploads/la-fumana.jpg', '2022-11-20 09:00:13', '2022-11-20 09:00:13'),
(12, 'california.jpg', '/uploads/california.jpg', '2022-11-20 09:00:52', '2022-11-20 09:00:52'),
(13, 'vertop.jpg', '/uploads/vertop.jpg', '2022-11-20 09:00:52', '2022-11-20 09:00:52'),
(14, 'chioggia.jpg', '/uploads/chioggia.jpg', '2022-11-20 09:00:52', '2022-11-20 09:00:52'),
(15, 'gaudenzi-imgalagi.jpg', '/uploads/gaudenzi-imgalagi.jpg', '2022-11-20 09:00:52', '2022-11-20 09:00:52'),
(16, 'mezaparte.jpg', '/uploads/mezaparte.jpg', '2022-11-20 09:00:52', '2022-11-20 09:00:52'),
(17, 'remax-abacus.jpg', '/uploads/remax-abacus.jpg', '2022-11-20 09:00:52', '2022-11-20 09:00:52'),
(18, 'ebabiodecor.jpg', '/uploads/ebabiodecor.jpg', '2022-11-20 09:01:03', '2022-11-20 09:01:03'),
(19, 'ar-group.jpg', '/uploads/ar-group.jpg', '2022-11-20 09:01:03', '2022-11-20 09:01:03'),
(20, '24max.jpg', '/uploads/24max.jpg', '2022-11-20 09:01:03', '2022-11-20 09:01:03'),
(21, 'saccocase.jpg', '/uploads/saccocase.jpg', '2022-11-20 09:01:03', '2022-11-20 09:01:03'),
(22, 'immobiliarevecchi.jpg', '/uploads/immobiliarevecchi.jpg', '2022-11-20 09:01:03', '2022-11-20 09:01:03'),
(23, 'kl-automation.jpg', '/uploads/kl-automation.jpg', '2022-11-20 09:01:03', '2022-11-20 09:01:03'),
(24, 'pcargroup.jpg', '/uploads/pcargroup.jpg', '2022-11-20 09:01:03', '2022-11-20 09:01:03'),
(25, 'autotransportiagliarij.jpg', '/uploads/autotransportiagliarij.jpg', '2022-11-20 09:01:03', '2022-11-20 09:01:03'),
(26, 'salumificotarasconi.jpg', '/uploads/salumificotarasconi.jpg', '2022-11-20 09:01:11', '2022-11-20 09:01:11'),
(27, 'ferramentagazzoti.jpg', '/uploads/ferramentagazzoti.jpg', '2022-11-20 09:01:11', '2022-11-20 09:01:11'),
(28, 'newenergymoda.jpg', '/uploads/newenergymoda.jpg', '2022-11-20 09:01:11', '2022-11-20 09:01:11'),
(29, 'pizzavoglia.jpg', '/uploads/pizzavoglia.jpg', '2022-11-20 09:01:11', '2022-11-20 09:01:11'),
(30, 'zuccatoenergia.jpg', '/uploads/zuccatoenergia.jpg', '2022-11-20 09:01:11', '2022-11-20 09:01:11'),
(31, 'mbfevolution.jpg', '/uploads/mbfevolution.jpg', '2022-11-20 09:01:11', '2022-11-20 09:01:11'),
(32, 'miccigiovani.jpg', '/uploads/miccigiovani.jpg', '2022-11-20 09:01:11', '2022-11-20 09:01:11'),
(33, 'universal_card.jpg', '/uploads/universal_card.jpg', '2022-11-20 09:58:41', '2022-11-20 09:58:41'),
(34, 'git.jpg', '/uploads/git.jpg', '2022-11-22 16:15:18', '2022-11-22 16:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `meta_tags`
--

CREATE TABLE `meta_tags` (
  `id` int UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metatagable_id` int DEFAULT NULL,
  `metatagable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_text` text COLLATE utf8mb4_unicode_ci,
  `canonical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `robots` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changefreq` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_03_17_130122_create_roles_table', 1),
(2, '2018_04_12_000000_create_users_table', 1),
(3, '2018_10_12_100000_create_password_resets_table', 1),
(4, '2019_05_24_072703_create_meta_tags_table', 1),
(5, '2019_05_24_083700_create_user_roles_table', 1),
(6, '2019_05_24_083812_create_attribute_groups_table', 1),
(7, '2019_05_24_083857_create_attribute_values_table', 1),
(8, '2019_05_24_083938_create_attribute_products_table', 1),
(9, '2019_05_24_084002_create_brands_table', 1),
(10, '2019_05_24_084030_create_categories_table', 1),
(11, '2019_05_24_084109_create_currencies_table', 1),
(12, '2019_05_24_084134_create_galleries_table', 1),
(13, '2019_05_24_084159_create_orders_table', 1),
(14, '2019_05_24_084228_create_order_products_table', 1),
(15, '2019_05_24_084249_create_products_table', 1),
(16, '2019_06_09_014818_create_admin_order_widgets_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2022_09_03_040030_create_media_table', 1),
(19, '2022_11_16_131212_create_post_categories_table', 1),
(20, '2022_11_16_161623_create_posts_table', 1),
(21, '2022_11_17_155815_create_taxonomies_table', 1),
(22, '2022_11_18_174141_create_portfolios_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cart` json NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `sum` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `qty` bigint NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxonomy_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `slug`, `image`, `url`, `taxonomy_id`, `created_at`, `updated_at`) VALUES
(1, 'Prossecoborgoluce', 'prossecoborgoluce', '/uploads/prosecco.jpg', 'https://burdujasergiu.com/portfolio/prossecoborgoluce', 1, '2022-11-20 09:33:58', '2022-11-20 09:33:58'),
(2, 'Neonlux', 'neonlux', '/uploads/neon-lux.jpg', 'https://burdujasergiu.com/portfolio/neonlux', 2, '2022-11-20 09:34:43', '2022-11-20 09:34:43'),
(3, 'Generalcopper', 'generalcopper', '/uploads/generalcopper.jpg', 'https://burdujasergiu.com/portfolio/generalcopper', 2, '2022-11-20 09:35:29', '2022-11-20 09:35:29'),
(4, 'Caf', 'caf', '/uploads/caf.jpg', 'https://burdujasergiu.com/portfolio/caf', 2, '2022-11-20 09:59:23', '2022-11-20 09:59:23'),
(5, 'Fimmaimmobilliare', 'fimmaimmobilliare', '/uploads/fima.jpg', 'https://burdujasergiu.com/portfolio/fimmaimmobilliare', 4, '2022-11-21 07:40:50', '2022-11-21 07:40:50'),
(6, 'Andreagraglia', 'andreagraglia', '/uploads/miccigiovani.jpg', 'https://burdujasergiu.com/portfolio/andreagraglia', 2, '2022-11-22 07:52:32', '2022-11-22 07:52:32'),
(7, 'fumana', 'fumana', '/uploads/la-fumana.jpg', 'https://burdujasergiu.com/portfolio/la-fumana', 2, '2022-11-22 08:33:19', '2022-11-22 08:33:19'),
(8, 'Vertop', 'vertop', '/uploads/vertop.jpg', 'https://burdujasergiu.com/portfolio/vertop', 2, '2022-11-22 08:34:44', '2022-11-22 08:34:44'),
(9, 'California', 'california', '/uploads/california.jpg', '/', 2, '2022-11-22 08:35:19', '2022-11-22 08:35:19'),
(10, 'Chioggia', 'chioggia', '/uploads/chioggia.jpg', '/', 2, '2022-11-22 08:57:22', '2022-11-22 08:57:22'),
(11, 'Gaudenzi imbalaggi', 'gaudenzi-imbalaggi', '/uploads/gaudenzi-imgalagi.jpg', '/', 2, '2022-11-22 12:50:29', '2022-11-22 12:50:29'),
(12, 'Mezzaparte', 'mezzaparte', '/uploads/mezaparte.jpg', '/', 2, '2022-11-22 12:51:14', '2022-11-22 12:51:14'),
(13, 'Remax abacus', 'remax-abacus', '/uploads/remax-abacus.jpg', '/', 4, '2022-11-22 12:51:40', '2022-11-22 12:51:40'),
(14, 'Eva bio decor', 'eva-bio-decor', '/uploads/ebabiodecor.jpg', '/', 3, '2022-11-22 12:52:11', '2022-11-22 12:52:11'),
(15, 'Ar group', 'ar-group', '/uploads/ar-group.jpg', '/', 2, '2022-11-22 12:52:46', '2022-11-22 12:52:46'),
(16, '24max', '24max', '/uploads/24max.jpg', '/', 2, '2022-11-22 12:53:11', '2022-11-22 12:53:11'),
(17, 'Saccocase', 'saccocase', '/uploads/saccocase.jpg', '/', 2, '2022-11-22 12:53:44', '2022-11-22 12:53:44'),
(18, 'Immobiliarevecchi', 'immobiliarevecchi', '/uploads/immobiliarevecchi.jpg', '/', 4, '2022-11-22 12:54:12', '2022-11-22 12:54:12'),
(19, 'Salumifico Tarasconi', 'salumifico-tarasconi', '/uploads/salumificotarasconi.jpg', '/', 3, '2022-11-22 12:54:35', '2022-11-22 12:54:35'),
(20, 'Klautomation', 'klautomation', '/uploads/kl-automation.jpg', '/', 2, '2022-11-22 12:55:07', '2022-11-22 12:55:07'),
(21, 'Pcargroup', 'pcargroup', '/uploads/pcargroup.jpg', '/', 2, '2022-11-22 12:55:30', '2022-11-22 12:55:30'),
(22, 'Autotransporti agliari', 'autotransporti-agliari', '/uploads/autotransportiagliarij.jpg', '/', 2, '2022-11-22 12:55:51', '2022-11-22 12:55:51'),
(23, 'Micci giovani', 'micci-giovani', '/uploads/miccigiovani.jpg', '/', 3, '2022-11-22 12:56:23', '2022-11-22 12:56:23'),
(24, 'New energy moda', 'new-energy-moda', '/uploads/newenergymoda.jpg', '/', 2, '2022-11-22 12:56:54', '2022-11-22 12:56:54'),
(25, 'Pizza voglia', 'pizza-voglia', '/uploads/pizzavoglia.jpg', '/', 2, '2022-11-22 12:57:14', '2022-11-22 12:57:14'),
(26, 'Ferramentagazzoti', 'ferramentagazzoti', '/uploads/ferramentagazzoti.jpg', '/', 2, '2022-11-22 12:57:36', '2022-11-22 12:57:36'),
(27, 'Mbf evolution', 'mbf-evolution', '/uploads/mbfevolution.jpg', '/', 2, '2022-11-22 12:58:04', '2022-11-22 12:58:04'),
(28, 'Zuccato energia', 'zuccato-energia', '/uploads/zuccatoenergia.jpg', '/', 2, '2022-11-22 12:58:26', '2022-11-22 12:58:26');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `text`, `status`, `post_category_id`, `created_at`, `updated_at`) VALUES
(1, 'git', 'git', 'Some git file', '1', 1, '2022-11-23 07:17:32', '2022-11-23 07:17:32');

-- --------------------------------------------------------

--
-- Структура таблицы `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_categories`
--

INSERT INTO `post_categories` (`id`, `title`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Git в связке с ssh.', '1', '/uploads/git.jpg', '2022-11-22 16:16:08', '2022-11-22 16:16:08');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` tinyint UNSIGNED NOT NULL,
  `brand_id` tinyint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `old_price` double(8,2) DEFAULT '0.00',
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` json DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `related` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `product_attribute`
--

CREATE TABLE `product_attribute` (
  `attr_id` bigint NOT NULL,
  `product_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'disabled', NULL, NULL),
(2, 'user', NULL, NULL),
(3, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `taxonomies`
--

CREATE TABLE `taxonomies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `taxonomies`
--

INSERT INTO `taxonomies` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Multilang', '2022-11-20 08:57:48', '2022-11-20 08:57:48'),
(2, 'Catalog', '2022-11-20 08:58:10', '2022-11-20 08:58:10'),
(3, 'Ecommerce', '2022-11-20 08:58:23', '2022-11-20 08:58:23'),
(4, 'Immobile', '2022-11-20 08:58:38', '2022-11-20 08:58:38'),
(5, 'Landing', '2022-11-20 08:58:54', '2022-11-20 08:58:54');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'seriiburduja@gmail.com', NULL, '$2y$10$E0g1D4Y3OPJh1ySS9HmFD.2U3SYq3vG.Zz.MjMW7vFLrQzU0i0l9G', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin_order_widgets`
--
ALTER TABLE `admin_order_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_groups_title_unique` (`title`);

--
-- Индексы таблицы `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_values_title_unique` (`title`),
  ADD KEY `attribute_values_attr_group_id_index` (`attr_group_id`);

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_alias_unique` (`alias`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `meta_tags`
--
ALTER TABLE `meta_tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_index` (`order_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portfolios_title_unique` (`title`),
  ADD UNIQUE KEY `portfolios_slug_unique` (`slug`),
  ADD KEY `portfolios_taxonomy_id_foreign` (`taxonomy_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_post_category_id_foreign` (`post_category_id`);

--
-- Индексы таблицы `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_title_unique` (`title`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`),
  ADD KEY `products_category_id_brand_id_index` (`category_id`,`brand_id`),
  ADD KEY `products_hit_index` (`hit`);

--
-- Индексы таблицы `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD PRIMARY KEY (`attr_id`,`product_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `taxonomies`
--
ALTER TABLE `taxonomies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taxonomies_title_unique` (`title`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `user_role_user_id_foreign` (`user_id`),
  ADD KEY `user_role_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin_order_widgets`
--
ALTER TABLE `admin_order_widgets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `attribute_groups`
--
ALTER TABLE `attribute_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `meta_tags`
--
ALTER TABLE `meta_tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `taxonomies`
--
ALTER TABLE `taxonomies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_taxonomy_id_foreign` FOREIGN KEY (`taxonomy_id`) REFERENCES `taxonomies` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_post_category_id_foreign` FOREIGN KEY (`post_category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_role_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
