-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb:3306
-- Generation Time: Dec 10, 2024 at 09:08 AM
-- Server version: 11.0.3-MariaDB-1:11.0.3+maria~ubu2204
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `burdujasergiu`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(1, 'linux.jpg', '/uploads/linux.jpg', '2022-11-20 08:50:17', '2022-11-20 08:50:17'),
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
(34, 'git.jpg', '/uploads/git.jpg', '2022-11-22 16:15:18', '2022-11-22 16:15:18'),
(35, 'css.jpg', '/uploads/css.jpg', '2022-11-23 09:19:29', '2022-11-23 09:19:29'),
(36, 'postman.jpg', '/uploads/postman.jpg', '2022-11-23 09:41:09', '2022-11-23 09:41:09'),
(37, 'browser.jpg', '/uploads/browser.jpg', '2022-11-23 15:25:35', '2022-11-23 15:25:35'),
(38, 'gpg.jpg', '/uploads/gpg.jpg', '2022-11-23 15:58:28', '2022-11-23 15:58:28'),
(39, 'i3wm.svg', '/uploads/i3wm.svg', '2022-11-23 16:01:54', '2022-11-23 16:01:54'),
(40, 'linux.jpg', '/uploads/linux.jpg', '2022-11-23 16:06:22', '2022-11-23 16:06:22'),
(41, 'vscode.jpg', '/uploads/vscode.jpg', '2022-11-23 16:15:12', '2022-11-23 16:15:12'),
(42, 'zsh.jpg', '/uploads/zsh.jpg', '2022-11-23 16:18:15', '2022-11-23 16:18:15'),
(43, 'gulp.svg', '/uploads/gulp.svg', '2022-11-23 16:20:33', '2022-11-23 16:20:33'),
(44, 'postman.jpg', '/uploads/postman.jpg', '2022-11-23 16:22:30', '2022-11-23 16:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
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
(22, '2022_11_18_174141_create_portfolios_table', 1),
(23, '2022_11_23_075544_change_posts_text_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cart` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`cart`)),
  `currency` varchar(10) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `sum` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `post_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `text`, `status`, `post_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Git в связке с ssh', 'git-в-связке-с-ssh', 'Some git file', '1', 1, '2022-11-23 07:17:32', '2022-11-23 09:21:13'),
(2, 'Text gradient', 'text-gradient', '## Создать в scss mixin\n\n```\n@mixin text_gradient() {\n	background: linear-gradient(to right, #BC912F 0%, #FFDE7F 50%, #E1B855 100%);\n	background-image: linear-gradient(to right, #BC912F 0%, #FFDE7F 50%, #E1B855 100%);\n	-webkit-background-clip: text;\n	-webkit-text-fill-color: transparent;\n}\n```', '1', 2, '2022-11-23 09:18:44', '2022-11-23 09:20:16'),
(3, 'Как скопировать ссылку на текст в странице браузера', 'kak-skopirovat-ssylku-na-tekst-v-stranitce-brauzera', '- Перейти на сайт https://tldrify.com/\n- Установить расширение в chrome\n- https://chrome.google.com/webstore/detail/tldrify/dbphpdgmhigmaepjklmklmlcoinihjdo\n- Перейти на нужную страницу в браузере и выделить текст\n- Из контекстного меню выбрать tldrify\n- Скопировать ссылку', '1', 4, '2022-11-23 15:29:52', '2022-11-23 15:29:52'),
(4, 'Добавить safari в linux', 'dobaviti-safari-v-linux', '## Нужно установить браузер epiphany\n```\nsudo apt install epiphany-browser\n```', '1', 4, '2022-11-23 15:46:42', '2022-11-23 15:46:42'),
(5, 'Ссылки для соц сетей', 'ssilki-dlya-sots-setei', '## Watsapp\n```\nhttps://api.whatsapp.com/send?phone=15551234567\n```', '1', 4, '2022-11-23 15:47:41', '2022-11-23 15:47:41'),
(6, 'Миниатюры для youtube', 'miniatyuri-dlya-youtube', '## Картинки по-умолчанию\n\n```\nhttps://img.youtube.com/vi//default.jpg\n```\n\n## Картинки с высоким разрешением\n\n```\nhttps://img.youtube.com/vi//mqdefault.jpg\n```\n\n## Картинки со стандартным разрешением\n\n```\nhttps://img.youtube.com/vi//sddefault.jpg\n```\n\n## Картинки с максимальным разрешением\n\n```\nhttps://img.youtube.com/vi//maxresdefault.jpg\n```', '1', 4, '2022-11-23 15:51:50', '2022-11-23 15:51:50'),
(7, 'Адаптивное видео на сайте', 'adaptivnoe-video-na-saite', '```\n<video controls poster=\"https://html5book.ru/wp-content/themes/papercuts/video/martynko.png\" preload=\"none\">\n<source src=\"https://html5book.ru/wp-content/themes/papercuts/video/martynko.mp4\" type=\"video/mp4\">\n</video>\n<video id=\"js-home-intro-video\" src=\"<?php echo get_template_directory_uri(); ?>/video/video.mp4?>\" autoplay=\"true\" loop muted=\"muted\"></video>\n<style>\n    video {\n        width: 100%;\n        height: auto;\n        max-height: 100%;\n    }\n</style>\n<div class=\"thumb-wrap\">\n    <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Y421bWMelqE\" frameborder=\"0\" allowfullscreen></iframe>\n</div>\n<style>\n    .thumb-wrap {\n        position: relative;\n        padding-bottom: 56.25%;\n        /* задаёт высоту контейнера для 16:9 (если 4:3 — поставьте 75%) */\n        height: 0;\n        overflow: hidden;\n    }\n\n    .thumb-wrap iframe {\n        position: absolute;\n        top: 0;\n        left: 0;\n        width: 100%;\n        height: 100%;\n        border-width: 0;\n        outline-width: 0;\n    }\n</style>\n```', '1', 4, '2022-11-23 15:54:45', '2022-11-23 15:54:45'),
(8, 'Добавить ssh на github  или bitbucket', 'dobaviti-ssh-na-github--ili-bitbucket', '## Сгенерировать ключ\n\n```\nssh-keygen -t rsa -b 4096 -C \"seriiburduja@mail.com\"\neval \"$(ssh-agent -s)\"\nssh-add ~/.ssh/id_rsa\n```\n\n## Установить xclip\n\n```\nsudo apt-get install xclip\n```\n\n## Скопировать ключ в буфер обмена и вставить на github или bitbucket\n\n```\n    xclip -sel clip < ~/.ssh/id_rsa.pub Copies the contents of the id_rsa.pub file to your clipboard\n```', '1', 1, '2022-11-23 15:56:10', '2022-11-23 15:56:10'),
(9, 'Добавляем второй bitbucket акаунт в системе', 'dobavlyaem-vtoroi-bitbucket-akaunt-v-sisteme', '# Добавить второй акаунт bitbucket в linux\n\n## Добавляем новый ключ\n\n```\nssh-keygen -f ~/.ssh/sites-bludelego -C \"bludelego@gmail.com\"\n```\n\n## Добавляем новый ключ\n\n```\nssh-add ~/.ssh/sites-bludelego\n```\n\n## Копируем ключ\n\n```\nxclip -sel clip < ~/.ssh/sites-bludelego.pub\n```\n\n## В файле ~/.ssh/config добавляем код\n\n```\nHost bitbucket.org\n  Hostname bitbucket.org\n  IdentityFile ~/.ssh/id_rsa\n\nHost bitbucket.org-b\n  Hostname bitbucket.org\n  PreferredAuthentications publickey\n  IdentityFile ~/.ssh/sites-bludelego\n```', '1', 1, '2022-11-23 15:57:42', '2022-11-23 15:57:42'),
(10, 'Gpg и pass – работа с паролями в линукс', 'gpg-i-pass-rabota-s-parolyami-v-linuks', '## Установка pass\n\n```\nsudo apt install pass\n```\n\n## Создаем новый репозиторий\n\n```\npass init serii\n```\n\nВ домашней директории создалась папка .password-store. Можете создать репозиторий на bitbucket и использовать git для управление паролями.\n\n## Установка gpg\n\n```\nsudo apt install gnupg\n```\n\nЕсли у вас уже есть где-то ключи, то можете их импортировать и подключить, об этом ниже, если нету, то можете их сгенирировать\n\n## Генерируем ключи\n\n```\ngpg --full-gen-key\n```\n\n## Проверяем список публичных ключей:\n\n```\ngpg --list-keys\n```\n\n## И своих приватных:\n\n```\ngpg --list-secret-keys\nsec rsa2048 2019-04-25 [SC]\nDEB0D4AD41CC2612B1944D448D22D6610B2F6067\nuid [ultimate] setevoy (my main) <reg@domain.kiev.ua>\n  ssb rsa2048 2019-04-25 [E]\n```\n\n## Удаление ключа\n\nЧто бы удалить ключ — надо удалить его приватную часть, после чего можно удалить публичную.\n\n## Удаляем приватный ключ:\n\n```\ngpg --delete-secret-key E130BB49AAA234F2BE2A7F96714F9CBFDA191430\ngpg --export-secret-keys > ~/Dropbox/Backups/gpg-setevoy-arch-work-secret-backup.gpg\n```\n\nПри экспорте будет запрошен пароль от вашего секретного ключа/ей:\n\nА восстановить его можно с помощью –import.\n\n## Удалим имеющийся ключ:\n\n```\ngpg --delete-secret-key setevoy\n```\n\n## Импорт ключей\n\n```\ngpg --import key\n```\n\n## Чтобы иметь возможность сохранять измененные файлы с помощью импортированного приватного ключа, нужно задать права.\n\n```\ngpg --edit-key\n  gpg> trust\n  Вам будет предложено выбрать уровень доверия из следующего:\n\n  1 = I don\'t know or won\'t say\n  2 = I do NOT trust\n  3 = I trust marginally\n  4 = I trust fully\n  5 = I trust ultimately\n  m = back to the main menu\n```\n\nЯ выбрал 5, так как я создал ключ, поэтому, конечно, я доверяю ему в конечном счете:). Он попросит вас подтвердить свое решение:Gkj', '1', 5, '2022-11-23 16:00:59', '2022-11-23 16:01:09'),
(11, 'Установка i3wm', 'ustanovka-i3wm', '## Установка\n\n```\nwget -O- https://baltocdn.com/i3-window-manager/signing.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/i3wm-signing.gpg\nsudo apt install apt-transport-https --yes\necho \"deb https://baltocdn.com/i3-window-manager/i3/i3-autobuild/ all main\" | sudo tee /etc/apt/sources.list.d/i3-autobuild.list\nsudo apt update\nsudo apt install i3\nsudo apt install feh rofi pulseaudio-utils alsa-tools locate libnotify-bin  lxpolkit\n```\n\n## Установка менеджера окон\n\n```\nsudo apt install lxpolkit\n```\n\n## И прописываем автозапус в файле ~/i3conf\n\n```\nexec --no-startup-id lxpolkit\n```\n\nИнформация об окне, чтобы добавить в i3conf\nxprop', '1', 6, '2022-11-23 16:04:56', '2022-11-23 16:04:56'),
(12, 'Установка ack в ubuntu', 'ustanovka-ack-v-ubuntu', '## Установка ack в убунту\n\n```\nsudo apt update\nsudo apt install ack-grep\n```\n\n## Пропишем следующую команду в терминале, чтобы ack работало в терминале\n\n```\nsudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep\n```', '1', 7, '2022-11-23 16:05:59', '2022-11-23 16:06:58'),
(13, 'Установка alacritty', 'ustanovka-alacritty', '```\nsudo add-apt-repository ppa:mmstick76/alacritty\nUpdate\nInstall alacritty\n```', '1', 7, '2022-11-23 16:07:33', '2022-11-23 16:07:33'),
(14, 'Команды в bash', 'komandi-v-bash', '# Горячие клавиши терминала в Linux\n\n## Управление процессами\n\n```\n\nCtrl + C – прервать процесс (послать сигнал Interrupt).\nCtrl + Z – приостановить процесс (послать сигнал Stop).\n```\n\n## Перемещение курсора\n\n```\n\nCtrl + A – переместить курсор в начало строки.\nCtrl + E – переместить курсор в конец строки (E – End).\nAlt + F – переместить курсор на одно слово вперед (F – Forward).\nAlt + B – переместить курсор на одно слово назад (B – Back).\nCtrl + F – переместить курсор на один символ вперед (F – Forward).\nCtrl + B – переместить курсор на один символ назад (B – Back).\n```\n\n## Редактирование текста\n\n```\n\nCtrl + L – очистить экран. Аналог команде clear.\nCtrl + D – удалить символ под курсором (D – Delete).\nAlt + T – поменять местами два слова. Слово под курсором меняется со словом слева от курсора (T – Translocate)\nCtrl + T – поменять местами два символа. Символ под курсором меняется с символом слева от курсора (T – Translocate).\nAlt + L – перевести символы в нижний регистр, начиная с символа под курсором и до конца слова (L – Lowercase).\nAlt + U – перевести символы в верхний регистр, начиная с символа под курсором и до конца слова (U – Uppercase).\n```\n\n## Вырезание и вставка текста\n\n```\n\nCtrl + K – вырезать текст от курсора до конца строки (K – Kill).\nCtrl + U – вырезать текст от курсора до начала строки.\nAlt + D – вырезать слово от курсора до его конца (D – Delete).\nAlt + Backspace – вырезать слово от курсора до его начала. Если курсор находится на начале слова, то удаляется предыдущее слово.\nCtrl + Y – вставить вырезанный текст из буфера обмена на место курсора.\n```\n\n## Дополнение команды\n\n```\n\nTab – дополнить текст команды. (ls essa => ls essay.txt)\nAlt + ? – вывести все варианты дополнения (тоже если нажать Tab дважды).\nAlt + * – вставить все варианты дополнения в аргументы команды.\n```\n\n## Поиск команд в истории\n\n```\n\nCtrl + R – начать поиск команд в истории. Нажмите еще раз чтобы двигаться вверх по истории. Нажмите Enter чтобы выполнить найденную команду.\nCtrl + J – вставить найденную команду в терминал, без выполнения.\nCtrl + G – прекратить поиск команд в истории.\nCtrl + P – показать предыдущую запись в истории. Аналог клавише со стрелкой вверх. (P – uP).\nCtrl + N – показать следующую запись в истории. Аналог клавише со стрелкой вниз. (N – dowN).\nAlt + < – перейти к первой записи в истории. Alt +> – перейти к последней записи в истории.\nAlt + N – поиск в прямом порядке (ввести команду и нажать Enter).\nAlt + P – поиск в обратном порядке (ввести команду и нажать Enter).\nCtrl + O – выполнить команду из истории и перейти к выполнению следующей по списку. Работает только в поиске Ctrl+R.\n```', '1', 7, '2022-11-23 16:09:22', '2022-11-23 16:09:22'),
(15, 'Добавить bat файл для fzf', 'dobaviti-bat-fail-dlya-fzf', '## Установить через sudo dpgk -i\n```\nhttps://github.com/sharkdp/bat/releases\n```', '1', 7, '2022-11-23 16:10:11', '2022-11-23 16:10:11'),
(16, 'Черный экран в убунту Nvidia', 'chernii-ekran-v-ubuntu-nvidia', '## Открыть tty\n\n```\nCtrl+Alt+F1\n```\n\n## Удалить nvidia\n\n```\nsudo apt purge nvidia*\nsudo dpkg-reconfigure xserver-xorg\nsudo reboot\n```', '1', 7, '2022-11-23 16:13:03', '2022-11-23 16:13:03'),
(17, 'Настройка bluetooth в linux', 'nastroika-bluetooth-v-linux', '## Выполнить команду\n\n```\n\nbluetoothctl\ndevices\nscan on\npair 34:88:5D:51:5A:95 (34:88:5D:51:5A:95 is my device code,replace it with yours)\n```\n\n## Добавить устройство\n\n```\ntrust 34:88:5D:51:5A:95\n```\n\n## Подключить\n\n```\nconnect 34:88:5D:51:5A:95\n```', '1', 7, '2022-11-23 16:14:05', '2022-11-23 16:14:05'),
(18, 'Vscode', 'vscode', '## Установить расширение для статусбара\n\n```\next install JoeBerria.statusbarerror\n```\n\n## Отступы в сайдбаре\n\n```\nWorkbench Appearence -> Workbench Tree indent\n```\n\n## Folding, когда перемещаешься по коду, чтобы не открывались блоки с кодом\n\n```\nvim.foldfix\n```\n\n## Шрифты\n\n```\n\"editor.fontFamily\": \"Menlo, Monaco, \'Courier New\', monospace\",\n```\n\n## Настройки\n\n```\nОни хранятся в ~/.config/Code/User\n```\n\n## Создаем symlinks к файлам settings.json keybindings.json и папке snippets\n\n## Экспорт расширений\n\n```\ncode --list-extensions > vscode-extensions.list\n```\n\n## Импорт расширений\n\n```\ncat vscode.list | xargs -L 1 code --install-extension\n```\n\n## Список расширений\n\n```\n\nalefragnani.project-manager\namiralizadeh9480.laravel-extra-intellisense\nducfilan.pug-formatter\nAtishay-Jain.All-Autocomplete\nbmewburn.vscode-intelephense-client\nchristian-kohler.path-intellisense\nclaudiosanches.woocommerce\ncodingyu.laravel-goto-view\ndbaeumer.vscode-eslint\neamodio.gitlens\nesbenp.prettier-vscode\nformulahendry.auto-close-tag\nformulahendry.auto-complete-tag\nformulahendry.auto-rename-tag\nionutvmi.path-autocomplete\nIronGeek.vscode-env\nJoeBerria.statusbarerror\njohnbillion.vscode-wordpress-hooks\nliximomo.sftp\nmhutchie.git-graph\nmonokai.theme-monokai-pro-vscode\nmrmlnc.vscode-scss\nms-vscode.vscode-typescript-next\nnafiz.php-html-comment\noctref.vetur\noderwat.indent-rainbow\npatbenatar.advanced-new-file\nPKief.material-icon-theme\npucelle.vscode-css-navigation\nrifi2k.format-html-in-php\nShan.code-settings-sync\nsleistner.vscode-fileutils\nSophisticode.php-formatter\nsteoates.autoimport\nstreetsidesoftware.code-spell-checker\nTobermory.es6-string-html\ntuwrraphael.queryselector-completion\nusernamehw.remove-empty-lines\nvikyd.vscode-fold-level\nvscodevim.vim\nwangtao0101.vscode-js-import\nwordpresstoolbox.wordpress-toolbox\nwouterlms.vueimport\nzhubincong.vue-component\n```', '1', 8, '2022-11-23 16:16:47', '2022-11-23 16:16:47'),
(19, 'Установка zsh', 'ustanovka-zsh', '## Установка zsh\n\n```\nsudo apt install zsh\nln -s ~/xubuntu/zshrc .zshrc\n```\n\n## Oh my zsh\n\n```\ncurl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh\n```\n\n## Поменять shell пользователя на zsh\n\n```\nchsh -s $(which zsh) (will work after restart)\n```\n\n## Мой zshrc\n\n```\nexport GO111MODULE=on\n#eval \"$(fasd --init auto)\"\nexport ZSH=\"/home/serii/.oh-my-zsh\"\nexport PATH=\"/home/serii/.cargo/bin/:$PATH\"\n\nZSH_THEME=\"amuse\"\nplugins=(zsh-syntax-highlighting zsh-autosuggestions z npm)\n# zsh-syntax-highlighting\n#\nset ZSH_HIGHLIGHT_MAXLENGTH=100\n\nbindkey \'^[[A\' history-substring-search-up\nbindkey \'^[[B\' history-substring-search-down\n\nsource ~/zsh-autocomplete/zsh-autocomplete.plugin.zsh\nsource ~/xubuntu/zsh_aliases/zsh_apt\nsource ~/xubuntu/zsh_aliases/zsh_node\nsource ~/xubuntu/zsh_aliases/zsh_pm2\n# source ~/xubuntu/zsh_aliases/zsh_vds\n source ~/xubuntu/zsh_aliases/zsh_locale\n source ~/xubuntu/zsh_aliases/zsh_dc\n source ~/xubuntu/zsh_aliases/zsh_git\n# source ~/xubuntu/zsh_aliases/zsh_nginx\nsource ~/xubuntu/zsh_aliases/zsh_rename\n source ~/xubuntu/zsh_aliases/zsh_go\nsource ~/xubuntu/zsh_aliases/zsh_svg\nsource ~/xubuntu/zsh_aliases/zsh_xclip\nsource ~/xubuntu/zsh_aliases/zsh_pass\nsource ~/xubuntu/zsh_aliases/zsh_mogrify\nsource ~/xubuntu/zsh_aliases/zsh_jpg\nsource ~/xubuntu/zsh_aliases/zsh_fzf\nsource ~/xubuntu/zsh_aliases/zsh_ffmpeg\n# source ~/xubuntu/zsh_aliases/zsh-dmenu\n# source ~/xubuntu/zsh_aliases/zsh_video\n# source ~/xubuntu/zsh_aliases/zsh_sequelize\nsource ~/xubuntu/zsh_aliases/zsh_files\nsource ~/xubuntu/zsh_aliases/zsh_mount\nsource ~/xubuntu/zsh_aliases/zsh_mysql\n\nalias jpegtojpg=\"rnst * && rename -v s/jpeg/jpg/g *\"\nalias g=\"gulp\"\n\nalias rmn=\'rm -rf node_modules package-lock.json\'\nalias wh=\"curl -4 wttr.in/Balti\"\nalias n=\"nvim\"\nalias znl=\"cd ~/nvim-lsp\"\nalias zn=\"cd ~/.config/nvim\"\nalias dnst=\"killall dunst;notify-send foo\"\nalias sts=\"synclient TouchpadOff=1\"\nalias str=\"synclient TouchpadOff=0\"\nalias lz=\'lazygit\'\nalias ms=\'mgitstatus -e -d 4\'\nalias msf=\'mgitstatus -f -e -d 4\'\nalias r=\'ranger\'\nalias ck=\"setxkbmap -model pc105 -layout us,ru -option grp:caps_toggle\"\nalias i3conf=\"nvim ~/.config/i3/config\"\n\nmkr() {\n   mkdir -p -- \"$1\" && touch -- \"$1\"/\"$1.js\" \"$1\"/\"$1.module.css\"\n}\n\nalias dg=\'sudo dpkg -i\'\nalias o=\'xdg-open\'\nalias dh=\'du -h --max-depth=1\'\nalias shn=\"sudo shutdown -h now\"\nalias srn=\"sudo shutdown -r now\"\nalias out=\'pastebinit\'\nalias zshrc=\"nvim ~/.zshrc\"\nalias szshrc=\"source ~/.zshrc\"\nalias vimrc=\"nvim ~/.vimrc\"\nalias svimrc=\"source ~/.vimrc\"\nalias b=\"nvim ~/.bashrc\"\nalias sb=\"source ~/.bashrc\"\nalias lla=\'ls -la\'\n\nsource $ZSH/oh-my-zsh.sh\n\nexport NVM_DIR=\"/home/serii/.nvm\"\n[ -s \"$NVM_DIR/nvm.sh\" ] && . \"$NVM_DIR/nvm.sh\"  # This loads nvm\n\n[ -s \"$NVM_DIR/bash_completion\" ] && \\. \"$NVM_DIR/bash_completion\"  # This loads nvm bash_completion\n\n[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh\n\nexport EDITOR=/usr/bin/nvim\nexport VISUAL=/usr/bin/nvim\n\n# zprof\n\n```', '1', 9, '2022-11-23 16:19:46', '2022-11-23 16:19:46'),
(20, 'Работаем с gulp c помощью yarn, вместо npm.', 'rabotaem-s-gulp-c-pomoschiyu-yarn-vmesto-npm', '## Установка yarn\n\n## В убунту или виновс\n\n```\nnpm install --global yarn\n```\n\n## Установка gulp с помощью yarn\n\n```\nyarn global add gulp\n```\n\n## В package.json добавляем кусок кода в теге scripts\n\n```\n\"preinstall\": \"node -e \\\"if(process.env.npm_execpath.indexOf(\'yarn\') === -1) throw new Error(\'You must use Yarn to install, not NPM\')\\\"\"\n```\n\n## Установка пакетов вместо npm i\n\n```\nyarn\n```\n\n## И потом вводим\n\n```\ngulp\n```', '1', 10, '2022-11-23 16:21:50', '2022-11-23 16:21:50'),
(21, 'Установка postman в ubuntu', 'ustanovka-postman-v-ubuntu', '## Скачайте deb пакет с Оф сайта\n\nЗайдите в Downloads\n\n## Распакуйте архив\n\n```\ntar -xzf Postman-linux-....tar.gz\n```\n\n## Выполните следующие команды в терминале\n\n```\nsudo mkdir -p /opt/apps/\nsudo mv Postman /opt/apps/\nsudo ln -s /opt/apps/Postman/Postman /usr/local/bin/postman\n```\n\n## И в конце выполните в терминале\n\n```\npostman\n```', '1', 11, '2022-11-23 16:24:09', '2022-11-23 16:24:09'),
(22, 'Vim surround', 'vim-surround', '## Переименование тега на h2\n\nПереместите курскор на нужном теге, и введите команду ниже cstt и потом h2, в нижнем левом экране увидите как появляется знак <\n\n```\ncstth2\n```\n\n## Добавить кавычки\n\n```\nsome\n```\n\n## Добавьте курсор на букву s, нажмите ysl3″(l3 – 3 раза направо)\n\n```\nys<motion>\"\n```\n\n## Добавить кавычки вокруг слова\n\n```\nysw\"\n```\n\n## Удалить кавычки вокруг слова\n\n```\nds\"\n```\n\n## Поменять двойные кавычки на ординарные\n\nКурсор находится на двойные кавычки\n\n```\ncs\"\'\n```\n\n## Добавить тег h1 вокруг строки\n\n```\nyss<h1\n```\n\n## Удалить тег из строки\n\n```\ndst\n```\n\n## Добавить тег вокруг несколько строк\n\nВыделить строки и выполнить команду\n\n```\nS<ul>\n```', '1', 12, '2022-11-23 16:27:06', '2022-11-23 16:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `title`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Git', '1', '/uploads/git.jpg', '2022-11-22 16:16:08', '2022-11-23 09:20:47'),
(2, 'Css', '1', '/uploads/css.jpg', '2022-11-23 09:19:49', '2022-11-23 09:19:49'),
(4, 'Browser', '1', '/uploads/browser.jpg', '2022-11-23 15:25:49', '2022-11-23 15:25:49'),
(5, 'Gpg', '1', '/uploads/gpg.jpg', '2022-11-23 15:58:39', '2022-11-23 15:58:39'),
(6, 'I3wm', '1', '/uploads/i3wm.svg', '2022-11-23 16:02:09', '2022-11-23 16:02:09'),
(7, 'Linux', '1', '/uploads/linux.jpg', '2022-11-23 16:06:34', '2022-11-23 16:06:34'),
(8, 'Vscode', '1', '/uploads/vscode.jpg', '2022-11-23 16:15:25', '2022-11-23 16:15:25'),
(9, 'Zsh', '1', '/uploads/zsh.jpg', '2022-11-23 16:18:26', '2022-11-23 16:18:26'),
(10, 'Gulp', '1', '/uploads/gulp.svg', '2022-11-23 16:20:48', '2022-11-23 16:20:48'),
(11, 'Postman', '1', '/uploads/postman.jpg', '2022-11-23 16:22:46', '2022-11-23 16:22:46'),
(12, 'Vim', '1', '/uploads/vim.jpg', '2022-11-23 16:24:41', '2022-11-23 16:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'disabled', NULL, NULL),
(2, 'user', NULL, NULL),
(3, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxonomies`
--

CREATE TABLE `taxonomies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxonomies`
--

INSERT INTO `taxonomies` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Multilang', '2022-11-20 08:57:48', '2022-11-20 08:57:48'),
(2, 'Catalog', '2022-11-20 08:58:10', '2022-11-20 08:58:10'),
(3, 'Ecommerce', '2022-11-20 08:58:23', '2022-11-20 08:58:23'),
(4, 'Immobile', '2022-11-20 08:58:38', '2022-11-20 08:58:38'),
(5, 'Landing', '2022-11-20 08:58:54', '2022-11-20 08:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'seriiburduja@gmail.com', NULL, '$2y$10$E0g1D4Y3OPJh1ySS9HmFD.2U3SYq3vG.Zz.MjMW7vFLrQzU0i0l9G', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portfolios_title_unique` (`title`),
  ADD UNIQUE KEY `portfolios_slug_unique` (`slug`),
  ADD KEY `portfolios_taxonomy_id_foreign` (`taxonomy_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_post_category_id_foreign` (`post_category_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_title_unique` (`title`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `taxonomies`
--
ALTER TABLE `taxonomies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taxonomies_title_unique` (`title`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `user_role_user_id_foreign` (`user_id`),
  ADD KEY `user_role_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taxonomies`
--
ALTER TABLE `taxonomies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_taxonomy_id_foreign` FOREIGN KEY (`taxonomy_id`) REFERENCES `taxonomies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_post_category_id_foreign` FOREIGN KEY (`post_category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_role_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
