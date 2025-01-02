-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Янв 02 2025 г., 22:52
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `finalDiplom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accessories`
--

CREATE TABLE `accessories` (
  `id` bigint NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` blob,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_lots` blob,
  `price_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `accessories`
--

INSERT INTO `accessories` (`id`, `title`, `desc`, `img`, `img_lots`, `price_discount`, `price`, `color_id`, `brand_id`, `size_id`, `updated_at`, `created_at`) VALUES
(1, 'Cолнцезащитные очки Mindset', 0x43d0bed0bbd0bdd186d0b5d0b7d0b0d189d0b8d182d0bdd18bd0b520d0bed187d0bad0b8204d696e64736574204444535534322d444430312d39393737, 'accessories\\December2024\\s0PxZOCMTUP20MTcGad8.webp', 0x5b226163636573736f726965735c5c446563656d626572323032345c5c4a79744e5676766e7262445a7463497956556f472e77656270222c226163636573736f726965735c5c446563656d626572323032345c5c3452586d6b7436424a397339394f5077544b47482e77656270225d, NULL, '3990', 'Оранжевый', 'BoardRiders', 'XS', '2024-12-31 11:58:45', '2024-12-07 16:24:33'),
(2, 'Шапка с отворотом Valwood', 0xd0a8d0b0d0bfd0bad0b020d18120d0bed182d0b2d0bed180d0bed182d0bed0bc2056616c776f6f642045524a484130343238342d4b564a3020d0a5d0b0d180d0b0d0bad182d0b5d180d0b8d181d182d0b8d0bad0b820d0a8d0b5d180d0bfd0b020d0b8d0b720d0bfd0bed0bbd0b8d18dd181d182d0b5d180d0b020d0a120d0bed182d0b2d0bed180d0bed182d0bed0bc20d0a1d0bfd0bbd0bed188d0bdd0b0d18f20d184d0bbd0b8d181d0bed0b2d0b0d18f20d0bfd0bed0b4d0bad0bbd0b0d0b4d0bad0b0, 'accessories\\December2024\\7JGDUgasEPZnrASfIKYv.jpg', 0x5b226163636573736f726965735c5c446563656d626572323032345c5c336b4c4e53316b325a576547646e3748795a4f442e6a7067222c226163636573736f726965735c5c446563656d626572323032345c5c4a44306872664f615968793975786a4d47675a572e6a7067222c226163636573736f726965735c5c446563656d626572323032345c5c416b7a756b3449546a7a516a6e39536556424a332e6a7067222c226163636573736f726965735c5c446563656d626572323032345c5c636c4f573066325750783859515030635948637a2e6a7067225d, NULL, '4990', 'Черный', 'DC Shoes', 'M', '2024-12-31 11:57:34', '2024-12-07 16:25:36'),
(3, 'Шапка с отворотом Freja', NULL, 'accessories\\December2024\\rfv6Cw3bLqK8XICSMGsy.jpg', 0x5b226163636573736f726965735c5c446563656d626572323032345c5c545853695a423250735934517a586171586b6e4d2e6a7067222c226163636573736f726965735c5c446563656d626572323032345c5c77616c4c334572564e42505270556755644341532e6a7067222c226163636573736f726965735c5c446563656d626572323032345c5c746d56706d72494f7834426a53376e70446a554e2e6a7067225d, NULL, '2490', 'Черный', 'Quicksilver', 'XL', '2024-12-31 11:56:12', '2024-12-07 16:26:35'),
(4, 'Женский рюкзак Sugar Baby', 0xd096d0b5d0bdd181d0bad0b8d0b920d180d18ed0bad0b7d0b0d0ba20537567617220426162792045524a425030343530342d4b564a30, 'accessories\\December2024\\d0wNMk0FVFLkBzAvIxZk.webp', 0x5b226163636573736f726965735c5c446563656d626572323032345c5c72584259653565457a786566364b566133334b462e77656270222c226163636573736f726965735c5c446563656d626572323032345c5c6e784a72493262676b77546b494750705a68566b2e77656270222c226163636573736f726965735c5c446563656d626572323032345c5c364b776f6f356b6133494a7652576352535464762e77656270225d, '50', '1845', 'Черный', 'DC Shoes', 'XS', '2024-12-14 14:02:19', '2024-12-12 17:06:25');

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banIMG` blob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`id`, `title`, `banIMG`, `created_at`, `updated_at`) VALUES
(1, 'Скидка для нового года', 0x62616e6e6572735c446563656d626572323032345c65597463666c47655731533141597a304930554c2e6a7067, '2024-12-20 13:04:26', '2024-12-20 13:04:26'),
(2, 'Скидка 50% Holliday', 0x62616e6e6572735c446563656d626572323032345c564a56466e30396c454e686232534e42626c6e6d2e6a7067, '2024-12-20 13:06:40', '2024-12-20 13:06:40');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Новинки', '2024-12-14 12:55:16', '2024-12-14 12:55:16'),
(2, 'Сноуборды', '2024-12-14 13:08:21', '2024-12-14 13:08:21'),
(3, 'Лыжи', '2024-12-14 13:08:29', '2024-12-14 13:08:29'),
(4, 'Скейтборды', '2024-12-14 13:08:43', '2024-12-14 13:08:43'),
(5, 'Лонгборды', '2024-12-14 13:08:54', '2024-12-14 13:08:54'),
(6, 'Серфинг', '2024-12-14 13:09:04', '2024-12-14 13:09:04'),
(7, 'Sup', '2024-12-14 13:09:14', '2024-12-14 13:09:14'),
(8, 'Одежда', '2024-12-14 13:09:26', '2024-12-14 13:09:26'),
(9, 'Аксессуары', '2024-12-14 13:09:46', '2024-12-14 13:09:46');

-- --------------------------------------------------------

--
-- Структура таблицы `category_brands`
--

CREATE TABLE `category_brands` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category_brands`
--

INSERT INTO `category_brands` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'DC Shoes', '2024-12-09 09:46:27', '2024-12-09 09:46:27'),
(2, 'Quicksilver', '2024-12-09 09:46:38', '2024-12-09 09:46:38'),
(3, 'BoardRiders', '2024-12-09 09:46:46', '2024-12-09 09:46:46');

-- --------------------------------------------------------

--
-- Структура таблицы `clothes`
--

CREATE TABLE `clothes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` blob,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_lots` blob,
  `price_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `clothes`
--

INSERT INTO `clothes` (`id`, `title`, `desc`, `img`, `img_lots`, `price_discount`, `price`, `color_id`, `brand_id`, `size_id`, `updated_at`, `created_at`) VALUES
(1, 'Женский топ My Sunshine', 0xd096d0b5d0bdd181d0bad0b8d0b920d182d0bed0bf204d792053756e7368696e65205a33545033302d424946312d3832313820d0a5d0b0d180d0b0d0bad182d0b5d180d0b8d181d182d0b8d0bad0b820d09ad0bed180d0bed182d0bad0b8d0b520d0bed0b1d18ad0b5d0bcd0bdd18bd0b520d180d183d0bad0b0d0b2d0b020d09fd0b0d0bdd0b5d0bbd18c20d181d0be20d181d0b1d0bed180d0bad0b0d0bcd0b820d0bdd0b020d181d0bfd0b8d0bdd0b5, 'clothes\\December2024\\9vYFkrMUxfMmXBcOXAQG.webp', 0x5b22636c6f746865735c5c446563656d626572323032345c5c66564f774e7657614c32596778705a714947367a2e77656270222c22636c6f746865735c5c446563656d626572323032345c5c5a7843346a305368675a6d52306833634c6475322e77656270222c22636c6f746865735c5c446563656d626572323032345c5c734a53476c7970577262466b424272656f744b6e2e77656270225d, NULL, '7190', 'Черный', 'DC Shoes', 'M', '2025-01-01 17:32:44', '2024-12-07 16:03:44'),
(2, 'Женская толстовка SHIFT', 0xd096d0b5d0bdd181d0bad0b0d18f20d182d0bed0bbd181d182d0bed0b2d0bad0b02053484946542041444a465430333034352d5853534b20d0a5d0b0d180d0b0d0bad182d0b5d180d0b8d181d182d0b8d0bad0b820d096d0b5d0bdd181d0bad0bed0b520d185d183d0b4d0b82e20d0a5d090d0a0d090d09ad0a2d095d0a0d098d0a1d0a2d098d09ad0983a20d0add0bad0bed0bbd0bed0b3d0b8d187d0bdd18bd0b920d187d0b5d181d0b0d0bdd18bd0b920d184d183d182d0b5d18020d0b8d0b720d185d0bbd0bed0bfd0bad0b020d0b820d0bfd0b5d180d0b5d180d0b0d0b1d0bed182d0b0d0bdd0bdd0bed0b3d0be20d0bfd0bed0bbd0b8d18dd181d182d0b5d180d0b020d18120d0bbd0b5d0b3d0bad0b8d0bc20d0bdd0b0d187d0b5d181d0bed0bc20d18120d0b8d0b7d0bdd0b0d0bdd0bad0b820d0b820d0bfd0bbd0bed182d0bdd0bed181d182d18cd18e2032383020d0b32fd0bad0b22e20d0bc207c20d0a1d0b2d0bed0b1d0bed0b4d0bdd18bd0b920d0bad180d0bed0b920c2abd0bed0b2d0b5d180d181d0b0d0b9d0b7c2bb20286f76657273697a656429207c20d09dd0b0d0b4d0b5d0b2d0b0d0b5d182d181d18f20d187d0b5d180d0b5d0b720d0b3d0bed0bbd0bed0b2d183207c20d0a120d0bad0b0d0bfd18ed188d0bed0bdd0bed0bc207c20d0a120d0b4d0bbd0b8d0bdd0bdd18bd0bc20d180d183d0bad0b0d0b2d0bed0bc207c20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d181d0bfd0b5d180d0b5d0b4d0b8207c20d091d180d0b5d0bdd0b4d0bed0b2d18bd0b920d0bfd180d0b8d0bdd18220d0bdd0b020d0b3d180d183d0b4d0b8207c20d092d0bed180d0bed182d0bdd0b8d0ba20d181d0b7d0b0d0b4d0b820d0bed182d0b4d0b5d0bbd0b0d0bd20d182d0b5d181d18cd0bcd0bed0b9207c20d09cd0b5d182d0b0d0bbd0bbd0b8d187d0b5d181d0bad0b8d0b520d0bbd18ed0b2d0b5d180d181d18b20d0b820d0bfd0bbd0bed181d0bad0b8d0b520d183d182d18fd0b6d0bad0b8207c20d0a0d0b0d0b7d0bdd0bed186d0b2d0b5d182d0bdd18bd0b920d0bfd0b0d0bdd0b5d0bbd18cd0bdd18bd0b920d0bad180d0bed0b920d0b220d181d182d0b8d0bbd0b520636f6c6f72626c6f636b, 'clothes\\December2024\\6bqFyELEFlc42tVhgtjt.webp', 0x5b22636c6f746865735c5c446563656d626572323032345c5c5333633949374c5a7547384667304d37644d55792e77656270222c22636c6f746865735c5c446563656d626572323032345c5c69454c775a4354794e3057466535754f62744d742e77656270222c22636c6f746865735c5c446563656d626572323032345c5c66395549456474634e475943544e5551794539732e77656270222c22636c6f746865735c5c446563656d626572323032345c5c37414a7a536468366f32324473353769683777492e77656270225d, '7', '9390', 'Красный', 'DC Shoes', 'S', '2025-01-01 17:34:06', '2024-12-07 16:05:35'),
(3, 'Флисовая куртка на молнии Blurry Cloud', 0xd0a4d0bbd0b8d181d0bed0b2d0b0d18f20d0bad183d180d182d0bad0b020d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820426c7572727920436c6f75642045524a465430343833312d4b564a3520d0a5d0b0d180d0b0d0bad182d0b5d180d0b8d181d182d0b8d0bad0b820d0a4d0bbd0b8d18120d0b8d0b720313030252dd0b3d0be20d0bfd0b5d180d0b5d180d0b0d0b1d0bed182d0b0d0bdd0bdd0bed0b3d0be20d0bfd0bed0bbd0b8d18dd181d182d0b5d180d0b020d0a2d0b5d180d0bcd0bed0bfd0bed0b4d0bad0bbd0b0d0b4d0bad0b0205761726d466c69676874c2ae20d0bfd0bed0b4d0b4d0b5d180d0b6d0b8d0b2d0b0d0b5d18220d0bed0bfd182d0b8d0bcd0b0d0bbd18cd0bdd18bd0b920d183d180d0bed0b2d0b5d0bdd18c20d182d0b5d0bfd0bbd0b020d09ad0bed180d0bed182d0bad0b8d0b920d0bcd18fd0b3d0bad0b8d0b920d0b2d0bed180d0bed182d0bdd0b8d0ba20d0a120d0b4d0bbd0b8d0bdd0bdd18bd0bc20d180d183d0bad0b0d0b2d0bed0bc20d09dd0b020d0bad0bed180d0bed182d0bad0bed0b920d0bcd0bed0bbd0bdd0b8d0b820d0b820d18120d183d182d18fd0b6d0bad0bed0b920d09ad0b0d180d0bcd0b0d0bdd18b20d0b4d0bbd18f20d180d183d0ba20d09cd18fd0b3d0bad0b0d18f20d0b7d0b0d189d0b8d182d0b020d0bfd0bed0b4d0b1d0bed180d0bed0b4d0bad0b0, 'clothes\\December2024\\ZoYamvBwWGkd6BcBkTki.jpg', 0x5b22636c6f746865735c5c446563656d626572323032345c5c33795953576242463541594757736872546c78342e6a7067222c22636c6f746865735c5c446563656d626572323032345c5c453076436c424b537147524666716a69586c52332e6a7067222c22636c6f746865735c5c446563656d626572323032345c5c734c7a384a4d64654d6c71464a765151335650462e6a7067222c22636c6f746865735c5c446563656d626572323032345c5c656a695641496c627a3262594f6b7668545169352e6a7067225d, '10', '8990', 'Черный', 'DC Shoes', 'M', '2025-01-01 17:33:18', '2024-12-07 16:06:00');

-- --------------------------------------------------------

--
-- Структура таблицы `colors`
--

CREATE TABLE `colors` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `colors`
--

INSERT INTO `colors` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Черный', '2024-12-11 13:35:59', '2024-12-11 13:35:59'),
(2, 'Красный', '2024-12-11 13:36:14', '2024-12-11 13:36:14'),
(3, 'Оранжевый', '2024-12-11 13:36:27', '2024-12-11 13:36:27'),
(4, 'Синий', '2024-12-11 13:36:39', '2024-12-11 13:36:39');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 6, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 6, 'desc', 'text', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 6, 'img', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 6, 'price_discount', 'text', 'Скидка в %', 0, 1, 1, 1, 1, 1, '{}', 6),
(27, 6, 'price', 'text', 'Цена', 1, 1, 1, 1, 1, 1, '{}', 7),
(28, 6, 'created_at', 'timestamp', 'Создано', 0, 0, 0, 0, 0, 0, '{}', 8),
(29, 6, 'updated_at', 'timestamp', 'Обновлено', 0, 0, 0, 0, 0, 0, '{}', 9),
(137, 24, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(138, 24, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(140, 24, 'created_at', 'timestamp', 'Создано', 0, 0, 0, 0, 0, 0, '{}', 4),
(141, 24, 'updated_at', 'timestamp', 'Обновлено', 0, 0, 0, 0, 0, 0, '{}', 5),
(144, 6, 'snow_belongsto_category_brand_relationship', 'relationship', 'Брэнд', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category_brand\",\"table\":\"category_brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(145, 6, 'snow_belongsto_color_relationship', 'relationship', 'Цвет', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Colors\",\"table\":\"colors\",\"type\":\"belongsTo\",\"column\":\"color_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(158, 6, 'snow_hasone_size_relationship', 'relationship', 'Размер', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Size\",\"table\":\"sizes\",\"type\":\"belongsTo\",\"column\":\"size_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(159, 41, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(160, 41, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(161, 41, 'color_id', 'text', 'Color Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(162, 41, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(163, 41, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(164, 6, 'color_id', 'text', 'Color Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(167, 24, 'brand_id', 'text', 'Brand Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(175, 42, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(176, 42, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(177, 42, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(178, 42, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(179, 6, 'brand_id', 'text', 'Brand Id', 0, 1, 1, 1, 1, 1, '{}', 11),
(180, 6, 'size_id', 'text', 'Size Id', 0, 1, 1, 1, 1, 1, '{}', 12),
(181, 6, 'img_lots', 'multiple_images', 'Много картинок', 0, 1, 1, 1, 1, 1, '{}', 5),
(203, 47, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(204, 47, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(205, 47, 'desc', 'text', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(206, 47, 'img', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{}', 4),
(207, 47, 'img_lots', 'multiple_images', 'Много картинок', 0, 1, 1, 1, 1, 1, '{}', 5),
(208, 47, 'price_discount', 'text', 'Скидка в %', 0, 1, 1, 1, 1, 1, '{}', 6),
(209, 47, 'price', 'text', 'Цена', 1, 1, 1, 1, 1, 1, '{}', 7),
(210, 47, 'brand_id', 'text', 'Brand Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(211, 47, 'color_id', 'text', 'Color Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(212, 47, 'size_id', 'text', 'Size Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(213, 47, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(214, 47, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 12),
(215, 47, 'ski_belongsto_category_brand_relationship', 'relationship', 'Брэнд', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category_brand\",\"table\":\"category_brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(216, 47, 'ski_belongsto_color_relationship', 'relationship', 'Цвет', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Colors\",\"table\":\"colors\",\"type\":\"belongsTo\",\"column\":\"color_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(217, 47, 'ski_belongsto_size_relationship', 'relationship', 'Размер', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Size\",\"table\":\"sizes\",\"type\":\"belongsTo\",\"column\":\"size_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(218, 48, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(219, 48, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(220, 48, 'desc', 'text', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 3),
(221, 48, 'img', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{}', 4),
(222, 48, 'img_lots', 'multiple_images', 'Много картинок', 0, 1, 1, 1, 1, 1, '{}', 5),
(223, 48, 'price_discount', 'text', 'Скидка в %', 0, 1, 1, 1, 1, 1, '{}', 6),
(224, 48, 'price', 'text', 'Цена', 1, 1, 1, 1, 1, 1, '{}', 7),
(225, 48, 'size_id', 'text', 'Size Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(226, 48, 'brand_id', 'text', 'Brand Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(227, 48, 'color_id', 'text', 'Color Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(228, 48, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 11),
(229, 48, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(230, 48, 'skateboard_belongsto_category_brand_relationship', 'relationship', 'Брэнд', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category_brand\",\"table\":\"category_brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(231, 48, 'skateboard_belongsto_color_relationship', 'relationship', 'Цвет', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Colors\",\"table\":\"colors\",\"type\":\"belongsTo\",\"column\":\"color_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(232, 48, 'skateboard_belongsto_size_relationship', 'relationship', 'Размер', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Size\",\"table\":\"sizes\",\"type\":\"belongsTo\",\"column\":\"size_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(252, 51, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(253, 51, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(254, 51, 'desc', 'text', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 3),
(255, 51, 'img', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{}', 4),
(256, 51, 'img_lots', 'multiple_images', 'Много картинок', 0, 1, 1, 1, 1, 1, '{}', 5),
(257, 51, 'price_discount', 'text', 'Скидка в %', 0, 1, 1, 1, 1, 1, '{}', 6),
(258, 51, 'price', 'text', 'Цена', 1, 1, 1, 1, 1, 1, '{}', 7),
(259, 51, 'size_id', 'text', 'Size Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(260, 51, 'brand_id', 'text', 'Brand Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(261, 51, 'color_id', 'text', 'Color Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(262, 51, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(263, 51, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(264, 51, 'longboard_belongsto_category_brand_relationship', 'relationship', 'Брэнд', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category_brand\",\"table\":\"category_brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(265, 51, 'longboard_belongsto_color_relationship', 'relationship', 'Цвет', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Colors\",\"table\":\"colors\",\"type\":\"belongsTo\",\"column\":\"color_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(266, 51, 'longboard_belongsto_size_relationship', 'relationship', 'Размер', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Size\",\"table\":\"sizes\",\"type\":\"belongsTo\",\"column\":\"size_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(267, 52, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(268, 52, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(269, 52, 'desc', 'text', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 3),
(270, 52, 'img', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{}', 4),
(271, 52, 'img_lots', 'multiple_images', 'Много картинок', 0, 1, 1, 1, 1, 1, '{}', 5),
(272, 52, 'price_discount', 'text', 'Скидка в %', 0, 1, 1, 1, 1, 1, '{}', 6),
(273, 52, 'price', 'text', 'Цена', 1, 1, 1, 1, 1, 1, '{}', 7),
(274, 52, 'color_id', 'text', 'Color Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(275, 52, 'brand_id', 'text', 'Brand Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(276, 52, 'size_id', 'text', 'Size Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(277, 52, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(278, 52, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 12),
(279, 52, 'surfing_belongsto_category_brand_relationship', 'relationship', 'Брэнд', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category_brand\",\"table\":\"category_brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(280, 52, 'surfing_belongsto_color_relationship', 'relationship', 'Цвет', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Colors\",\"table\":\"colors\",\"type\":\"belongsTo\",\"column\":\"color_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(281, 52, 'surfing_belongsto_size_relationship', 'relationship', 'Размер', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Size\",\"table\":\"sizes\",\"type\":\"belongsTo\",\"column\":\"size_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(301, 65, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(302, 65, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(303, 65, 'created_at', 'timestamp', 'Создано', 0, 0, 0, 0, 0, 0, '{}', 3),
(304, 65, 'updated_at', 'timestamp', 'Обновлено', 0, 0, 0, 0, 0, 0, '{}', 4),
(305, 66, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(306, 66, 'products_id', 'text', 'Категория', 0, 1, 1, 1, 1, 1, '{}', 3),
(307, 66, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(308, 66, 'desc', 'text', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 4),
(309, 66, 'img', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{}', 5),
(310, 66, 'img_lots', 'multiple_images', 'Много картинок', 0, 1, 1, 1, 1, 1, '{}', 6),
(311, 66, 'price_discount', 'text', 'Скидка в %', 0, 1, 1, 1, 1, 1, '{}', 7),
(312, 66, 'price', 'text', 'Цена', 1, 1, 1, 1, 1, 1, '{}', 8),
(313, 66, 'color_id', 'text', 'Color Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(314, 66, 'brand_id', 'text', 'Brand Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(315, 66, 'size_id', 'text', 'Size Id', 0, 1, 1, 1, 1, 1, '{}', 11),
(316, 66, 'created_at', 'timestamp', 'Создано', 0, 1, 1, 1, 0, 1, '{}', 12),
(317, 66, 'updated_at', 'timestamp', 'Обновлено', 0, 0, 0, 0, 0, 0, '{}', 13),
(318, 66, 'product_belongsto_category_relationship', 'relationship', 'Категории товаров', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Categories\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"products_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(319, 66, 'product_belongsto_category_brand_relationship', 'relationship', 'Брэнд', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category_brand\",\"table\":\"category_brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(320, 66, 'product_belongsto_color_relationship', 'relationship', 'Цвет', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Colors\",\"table\":\"colors\",\"type\":\"belongsTo\",\"column\":\"color_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(321, 66, 'product_belongsto_size_relationship', 'relationship', 'Размер', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Size\",\"table\":\"sizes\",\"type\":\"belongsTo\",\"column\":\"size_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(322, 67, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(323, 67, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(324, 67, 'desc', 'text', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 3),
(325, 67, 'img', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{}', 4),
(326, 67, 'price_discount', 'text', 'Скидка в %', 0, 1, 1, 1, 1, 1, '{}', 6),
(327, 67, 'price', 'text', 'Цена', 1, 1, 1, 1, 1, 1, '{}', 7),
(328, 67, 'size_id', 'text', 'Size Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(329, 67, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(330, 67, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(331, 67, 'img_lots', 'multiple_images', 'Много картинок', 0, 1, 1, 1, 1, 1, '{}', 5),
(332, 67, 'brand_id', 'text', 'Brand Id', 0, 1, 1, 1, 1, 1, '{}', 11),
(333, 67, 'color_id', 'text', 'Color Id', 0, 1, 1, 1, 1, 1, '{}', 12),
(334, 67, 'sup_belongsto_category_brand_relationship', 'relationship', 'category_brands', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category_brand\",\"table\":\"category_brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":null}', 13),
(335, 67, 'sup_belongsto_color_relationship', 'relationship', 'colors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Colors\",\"table\":\"colors\",\"type\":\"belongsTo\",\"column\":\"color_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":null}', 14),
(336, 67, 'sup_belongsto_size_relationship', 'relationship', 'sizes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Size\",\"table\":\"sizes\",\"type\":\"belongsTo\",\"column\":\"size_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":null}', 15),
(337, 68, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(338, 68, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(339, 68, 'desc', 'text', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 3),
(340, 68, 'img', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{}', 4),
(341, 68, 'img_lots', 'multiple_images', 'Много картинок', 0, 1, 1, 1, 1, 1, '{}', 5),
(342, 68, 'price_discount', 'text', 'Скидка в %', 0, 1, 1, 1, 1, 1, '{}', 6),
(343, 68, 'price', 'text', 'Цена', 1, 1, 1, 1, 1, 1, '{}', 7),
(344, 68, 'color_id', 'text', 'Color Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(345, 68, 'brand_id', 'text', 'Brand Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(346, 68, 'size_id', 'text', 'Size Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(347, 68, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(348, 68, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 12),
(349, 68, 'clothes_belongsto_category_brand_relationship', 'relationship', 'Бренд', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category_brand\",\"table\":\"category_brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(350, 68, 'clothes_belongsto_color_relationship', 'relationship', 'Цвет', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Colors\",\"table\":\"colors\",\"type\":\"belongsTo\",\"column\":\"color_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(351, 68, 'clothes_belongsto_size_relationship', 'relationship', 'Размер', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Size\",\"table\":\"sizes\",\"type\":\"belongsTo\",\"column\":\"size_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(352, 69, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(353, 69, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(354, 69, 'desc', 'text', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 3),
(355, 69, 'img', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{}', 4),
(356, 69, 'img_lots', 'multiple_images', 'Много картинок', 0, 1, 1, 1, 1, 1, '{}', 5),
(357, 69, 'price_discount', 'text', 'Скидка в %', 0, 1, 1, 1, 1, 1, '{}', 6),
(358, 69, 'price', 'text', 'Цена', 1, 1, 1, 1, 1, 1, '{}', 7),
(359, 69, 'size_id', 'text', 'Size Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(360, 69, 'brand_id', 'text', 'Brand Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(361, 69, 'color_id', 'text', 'Color Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(362, 69, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(363, 69, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 12),
(364, 69, 'shoe_belongsto_category_brand_relationship', 'relationship', 'Брэнд', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category_brand\",\"table\":\"category_brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(365, 69, 'shoe_belongsto_color_relationship', 'relationship', 'Цвет', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Colors\",\"table\":\"colors\",\"type\":\"belongsTo\",\"column\":\"color_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(366, 69, 'shoe_belongsto_size_relationship', 'relationship', 'Размер', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Size\",\"table\":\"sizes\",\"type\":\"belongsTo\",\"column\":\"size_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(367, 71, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(368, 71, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(369, 71, 'desc', 'text', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 3),
(370, 71, 'img', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{}', 4),
(371, 71, 'img_lots', 'multiple_images', 'Много картинок', 0, 1, 1, 1, 1, 1, '{}', 5),
(372, 71, 'price_discount', 'text', 'Скидка в %', 0, 1, 1, 1, 1, 1, '{}', 6),
(373, 71, 'price', 'text', 'Цена', 1, 1, 1, 1, 1, 1, '{}', 7),
(374, 71, 'color_id', 'text', 'Color Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(375, 71, 'brand_id', 'text', 'Brand Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(376, 71, 'size_id', 'text', 'Size Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(377, 71, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(378, 71, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 12),
(379, 71, 'accessory_belongsto_category_brand_relationship', 'relationship', 'Бренд', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category_brand\",\"table\":\"category_brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(380, 71, 'accessory_belongsto_color_relationship', 'relationship', 'Цвет', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Colors\",\"table\":\"colors\",\"type\":\"belongsTo\",\"column\":\"color_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(381, 71, 'accessory_belongsto_size_relationship', 'relationship', 'Размер', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Size\",\"table\":\"sizes\",\"type\":\"belongsTo\",\"column\":\"size_id\",\"key\":\"title\",\"label\":\"title\",\"pivot_table\":\"accessories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(382, 72, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(383, 72, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(385, 72, 'created_at', 'timestamp', 'Создано', 0, 0, 0, 0, 0, 0, '{}', 4),
(386, 72, 'updated_at', 'timestamp', 'Обновлено', 0, 0, 0, 0, 0, 0, '{}', 5),
(387, 72, 'banIMG', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{}', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(6, 'snows', 'snows', 'Сноуборд', 'Сноуборды', 'voyager-news', 'App\\Models\\Snow', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-02 16:44:59', '2024-12-12 15:12:03'),
(24, 'category_brands', 'category-brands', 'Брэнд', 'Брэнды', 'voyager-news', 'App\\Models\\Category_brand', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-09 09:21:30', '2024-12-12 08:07:30'),
(41, 'colors', 'colors', 'Цвет', 'Цвета', 'voyager-news', 'App\\Models\\Colors', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-12-11 13:35:31', '2024-12-11 13:35:31'),
(42, 'sizes', 'sizes', 'Размер', 'Размеры', 'voyager-news', 'App\\Models\\Size', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-12-12 08:51:52', '2024-12-12 08:51:52'),
(47, 'skis', 'skis', 'Лыжи', 'Лыжи', 'voyager-news', 'App\\Models\\Ski', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-13 10:09:18', '2024-12-13 10:12:42'),
(48, 'skateboards', 'skateboards', 'Скейтборд', 'Скейтборды', 'voyager-news', 'App\\Models\\Skateboard', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-13 16:57:41', '2024-12-13 16:59:50'),
(51, 'longboards', 'longboards', 'Лонгборд', 'Лонгборды', 'voyager-news', 'App\\Models\\longboard', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-13 18:19:37', '2024-12-13 18:25:49'),
(52, 'surfings', 'surfings', 'Серфинг', 'Серфинг', 'voyager-news', 'App\\Models\\Surfing', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-14 11:27:45', '2024-12-14 11:29:59'),
(56, 'сategoryItems', 'sategoryitems', 'Категории Товара', 'Категории Товаров', 'voyager-categories', 'App\\Models\\CategoryItems', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-12-14 12:14:00', '2024-12-14 12:14:00'),
(59, 'categoryItems', 'categoryitems', 'Категории Товара', 'Категории Товаров', 'voyager-categories', 'App\\Models\\CategoryItems', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-12-14 12:34:26', '2024-12-14 12:34:26'),
(63, 'Category', 'category', 'Категория', 'Категории', NULL, 'App\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-12-14 12:50:41', '2024-12-14 12:50:41'),
(65, 'categories', 'categories', 'Категория', 'Категории', 'voyager-news', 'App\\Models\\Categories', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-12-14 12:54:39', '2024-12-14 12:54:39'),
(66, 'products', 'products', 'Товар', 'Товары', 'voyager-news', 'App\\Models\\Products', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-14 12:57:14', '2024-12-14 13:05:33'),
(67, 'sups', 'sups', 'Sup', 'Sups', 'voyager-news', 'App\\Models\\Sup', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-14 13:27:09', '2024-12-14 13:28:30'),
(68, 'clothes', 'clothes', 'Одежда', 'Одежда', 'voyager-news', 'App\\Models\\Clothes', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-14 13:36:55', '2024-12-14 13:40:00'),
(69, 'shoes', 'shoes', 'Обувь', 'Обувь', 'voyager-news', 'App\\Models\\Shoe', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-14 13:48:48', '2024-12-14 13:50:51'),
(71, 'accessories', 'accessories', 'Аксессуар', 'Аксессуары', 'voyager-news', 'App\\Models\\Accessorie', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-14 14:00:20', '2024-12-14 14:02:00'),
(72, 'banners', 'banners', 'Баннер', 'Баннеры', 'voyager-images', 'App\\Models\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-20 13:01:04', '2024-12-20 16:46:33');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `longboards`
--

CREATE TABLE `longboards` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` blob,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_lots` blob,
  `price_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `longboards`
--

INSERT INTO `longboards` (`id`, `title`, `desc`, `img`, `img_lots`, `price_discount`, `price`, `size_id`, `brand_id`, `color_id`, `updated_at`, `created_at`) VALUES
(1, 'Лонгборд Street Hit с двумя ручками, 68 см, Белый', NULL, 'longboards\\December2024\\7lFE7cB4lR8ioFnS02Fq.jpg', 0x5b226c6f6e67626f617264735c5c446563656d626572323032345c5c41484d31524c3279747a454936344a616b4938762e6a7067222c226c6f6e67626f617264735c5c446563656d626572323032345c5c5862674f41544d5a4a4457546f5a6d684d4761362e6a7067225d, '24', '3099', 'L', 'Quicksilver', 'Оранжевый', '2024-12-13 18:27:10', '2024-12-07 15:06:00'),
(2, 'Лонгборд Street Surfing Curve Freeride Drop Through Holy Cube 39\"', NULL, 'longboards\\December2024\\MnsAD4879RjRP2Q7ZrqY.jpg', 0x5b226c6f6e67626f617264735c5c446563656d626572323032345c5c546f523745626149437641425756364b523673522e6a7067222c226c6f6e67626f617264735c5c446563656d626572323032345c5c7844556f366961664376364c4c51464f4c69304f2e6a7067225d, '10', '8999', 'XL', 'Quicksilver', 'Красный', '2024-12-13 18:26:46', '2024-12-07 15:08:00'),
(3, 'Лонгборд Street Surfing Dancing Angel Arrow 46\"', NULL, 'longboards\\December2024\\K8cZedKbdh79AwnOX0bX.jpg', 0x5b226c6f6e67626f617264735c5c446563656d626572323032345c5c585059477756334f53336b4d47774174775874332e6a7067222c226c6f6e67626f617264735c5c446563656d626572323032345c5c617532313145416375624d786f6233595341796e2e6a7067222c226c6f6e67626f617264735c5c446563656d626572323032345c5c4155644651754a61755a4a5a7963794a3841644f2e6a7067225d, NULL, '8799', 'L', 'DC Shoes', 'Черный', '2024-12-13 18:26:22', '2024-12-07 15:09:00');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-12-02 16:26:53', '2024-12-02 16:26:53');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-12-02 16:26:53', '2024-12-02 16:26:53', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2024-12-02 16:26:53', '2024-12-09 13:34:58', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2024-12-02 16:26:53', '2024-12-02 16:26:53', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2024-12-02 16:26:53', '2024-12-02 16:26:53', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2024-12-02 16:26:53', '2024-12-09 13:34:58', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2024-12-02 16:26:53', '2024-12-09 13:34:58', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2024-12-02 16:26:53', '2024-12-09 13:34:58', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2024-12-02 16:26:53', '2024-12-09 13:34:58', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2024-12-02 16:26:53', '2024-12-09 13:34:58', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2024-12-02 16:26:53', '2024-12-09 13:34:58', 'voyager.settings.index', NULL),
(13, 1, 'Сноуборды', '', '_self', 'voyager-news', NULL, 24, 2, '2024-12-02 16:44:59', '2024-12-14 13:06:32', 'voyager.snows.index', NULL),
(23, 1, 'Брэнды', '', '_self', 'voyager-news', NULL, 31, 1, '2024-12-09 09:21:30', '2024-12-12 16:36:31', 'voyager.category-brands.index', NULL),
(24, 1, 'Товары', '', '_self', 'voyager-folder', '#7ca3fe', NULL, 7, '2024-12-09 13:34:40', '2024-12-12 16:37:36', NULL, ''),
(29, 1, 'Цвета', '', '_self', 'voyager-news', NULL, 31, 2, '2024-12-11 13:35:31', '2024-12-12 16:36:46', 'voyager.colors.index', NULL),
(30, 1, 'Размеры', '', '_self', 'voyager-news', NULL, 31, 3, '2024-12-12 08:51:52', '2024-12-12 16:36:48', 'voyager.sizes.index', NULL),
(31, 1, 'Категории', '', '_self', 'voyager-categories', '#00bd74', NULL, 8, '2024-12-12 16:36:19', '2024-12-12 16:36:19', NULL, ''),
(32, 1, 'Лыжи', '', '_self', 'voyager-news', NULL, 24, 3, '2024-12-13 10:09:18', '2024-12-14 13:06:29', 'voyager.skis.index', NULL),
(33, 1, 'Скейтборды', '', '_self', 'voyager-news', NULL, 24, 4, '2024-12-13 16:57:41', '2024-12-14 13:06:29', 'voyager.skateboards.index', NULL),
(35, 1, 'Лонгборды', '', '_self', 'voyager-news', NULL, 24, 5, '2024-12-13 18:19:37', '2024-12-14 13:06:29', 'voyager.longboards.index', NULL),
(36, 1, 'Серфинг', '', '_self', 'voyager-news', NULL, 24, 6, '2024-12-14 11:27:45', '2024-12-14 13:06:29', 'voyager.surfings.index', NULL),
(43, 1, 'Категории', '', '_self', 'voyager-news', NULL, 31, 4, '2024-12-14 12:54:39', '2024-12-14 13:06:14', 'voyager.categories.index', NULL),
(44, 1, 'Товары', '', '_self', 'voyager-news', NULL, 24, 1, '2024-12-14 12:57:14', '2024-12-14 13:06:32', 'voyager.products.index', NULL),
(45, 1, 'Sups', '', '_self', 'voyager-news', NULL, 24, 7, '2024-12-14 13:27:09', '2024-12-14 13:35:12', 'voyager.sups.index', NULL),
(46, 1, 'Одежда', '', '_self', 'voyager-news', '#000000', 24, 8, '2024-12-14 13:36:55', '2024-12-14 16:42:40', 'voyager.clothes.index', 'null'),
(47, 1, 'Обувь', '', '_self', 'voyager-news', NULL, 24, 9, '2024-12-14 13:48:48', '2024-12-14 16:42:40', 'voyager.shoes.index', NULL),
(48, 1, 'Аксессуары', '', '_self', 'voyager-news', NULL, 24, 10, '2024-12-14 14:00:20', '2024-12-14 16:42:45', 'voyager.accessories.index', NULL),
(49, 1, 'Баннеры', '', '_self', 'voyager-images', NULL, NULL, 9, '2024-12-20 13:01:04', '2024-12-20 13:01:04', 'voyager.banners.index', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2024_12_02_194152_create_snows_table', 2),
(27, '2024_12_06_084933_create_kreplenies_table', 3),
(28, '2024_12_07_162601_create_skis_table', 4),
(29, '2024_12_07_173653_create_skateboards_table', 5),
(30, '2024_12_07_175806_create_longboards_table', 6),
(31, '2024_12_07_181646_create_sups_table', 7),
(32, '2024_12_07_184333_create_surfings_table', 8),
(33, '2024_12_07_185817_create_clothes_table', 9),
(34, '2024_12_07_190846_create_shoes_table', 10),
(35, '2024_12_07_191752_create_accessories_table', 11),
(37, '2024_12_09_121619_create_category_brands_table', 12),
(47, '2024_12_11_151000_create_sizes_table', 13),
(48, '2024_12_11_163228_create_colors_table', 14),
(50, '2024_12_12_195811_update_accessories', 15),
(53, '2024_12_14_145731_create_products_table', 16),
(57, '2024_12_14_155208_create_categories_table', 17),
(58, '2024_12_20_154306_create_banners_table', 18);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(2, 'browse_bread', NULL, '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(3, 'browse_database', NULL, '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(4, 'browse_media', NULL, '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(5, 'browse_compass', NULL, '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(6, 'browse_menus', 'menus', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(7, 'read_menus', 'menus', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(8, 'edit_menus', 'menus', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(9, 'add_menus', 'menus', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(10, 'delete_menus', 'menus', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(11, 'browse_roles', 'roles', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(12, 'read_roles', 'roles', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(13, 'edit_roles', 'roles', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(14, 'add_roles', 'roles', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(15, 'delete_roles', 'roles', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(16, 'browse_users', 'users', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(17, 'read_users', 'users', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(18, 'edit_users', 'users', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(19, 'add_users', 'users', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(20, 'delete_users', 'users', '2024-12-02 16:26:54', '2024-12-02 16:26:54'),
(21, 'browse_settings', 'settings', '2024-12-02 16:26:54', '2024-12-02 16:26:54'),
(22, 'read_settings', 'settings', '2024-12-02 16:26:54', '2024-12-02 16:26:54'),
(23, 'edit_settings', 'settings', '2024-12-02 16:26:54', '2024-12-02 16:26:54'),
(24, 'add_settings', 'settings', '2024-12-02 16:26:54', '2024-12-02 16:26:54'),
(25, 'delete_settings', 'settings', '2024-12-02 16:26:54', '2024-12-02 16:26:54'),
(36, 'browse_snows', 'snows', '2024-12-02 16:44:59', '2024-12-02 16:44:59'),
(37, 'read_snows', 'snows', '2024-12-02 16:44:59', '2024-12-02 16:44:59'),
(38, 'edit_snows', 'snows', '2024-12-02 16:44:59', '2024-12-02 16:44:59'),
(39, 'add_snows', 'snows', '2024-12-02 16:44:59', '2024-12-02 16:44:59'),
(40, 'delete_snows', 'snows', '2024-12-02 16:44:59', '2024-12-02 16:44:59'),
(86, 'browse_category_brands', 'category_brands', '2024-12-09 09:21:30', '2024-12-09 09:21:30'),
(87, 'read_category_brands', 'category_brands', '2024-12-09 09:21:30', '2024-12-09 09:21:30'),
(88, 'edit_category_brands', 'category_brands', '2024-12-09 09:21:30', '2024-12-09 09:21:30'),
(89, 'add_category_brands', 'category_brands', '2024-12-09 09:21:30', '2024-12-09 09:21:30'),
(90, 'delete_category_brands', 'category_brands', '2024-12-09 09:21:30', '2024-12-09 09:21:30'),
(111, 'browse_colors', 'colors', '2024-12-11 13:35:31', '2024-12-11 13:35:31'),
(112, 'read_colors', 'colors', '2024-12-11 13:35:31', '2024-12-11 13:35:31'),
(113, 'edit_colors', 'colors', '2024-12-11 13:35:31', '2024-12-11 13:35:31'),
(114, 'add_colors', 'colors', '2024-12-11 13:35:31', '2024-12-11 13:35:31'),
(115, 'delete_colors', 'colors', '2024-12-11 13:35:31', '2024-12-11 13:35:31'),
(116, 'browse_sizes', 'sizes', '2024-12-12 08:51:52', '2024-12-12 08:51:52'),
(117, 'read_sizes', 'sizes', '2024-12-12 08:51:52', '2024-12-12 08:51:52'),
(118, 'edit_sizes', 'sizes', '2024-12-12 08:51:52', '2024-12-12 08:51:52'),
(119, 'add_sizes', 'sizes', '2024-12-12 08:51:52', '2024-12-12 08:51:52'),
(120, 'delete_sizes', 'sizes', '2024-12-12 08:51:52', '2024-12-12 08:51:52'),
(121, 'browse_skis', 'skis', '2024-12-13 10:09:18', '2024-12-13 10:09:18'),
(122, 'read_skis', 'skis', '2024-12-13 10:09:18', '2024-12-13 10:09:18'),
(123, 'edit_skis', 'skis', '2024-12-13 10:09:18', '2024-12-13 10:09:18'),
(124, 'add_skis', 'skis', '2024-12-13 10:09:18', '2024-12-13 10:09:18'),
(125, 'delete_skis', 'skis', '2024-12-13 10:09:18', '2024-12-13 10:09:18'),
(126, 'browse_skateboards', 'skateboards', '2024-12-13 16:57:41', '2024-12-13 16:57:41'),
(127, 'read_skateboards', 'skateboards', '2024-12-13 16:57:41', '2024-12-13 16:57:41'),
(128, 'edit_skateboards', 'skateboards', '2024-12-13 16:57:41', '2024-12-13 16:57:41'),
(129, 'add_skateboards', 'skateboards', '2024-12-13 16:57:41', '2024-12-13 16:57:41'),
(130, 'delete_skateboards', 'skateboards', '2024-12-13 16:57:41', '2024-12-13 16:57:41'),
(136, 'browse_longboards', 'longboards', '2024-12-13 18:19:37', '2024-12-13 18:19:37'),
(137, 'read_longboards', 'longboards', '2024-12-13 18:19:37', '2024-12-13 18:19:37'),
(138, 'edit_longboards', 'longboards', '2024-12-13 18:19:37', '2024-12-13 18:19:37'),
(139, 'add_longboards', 'longboards', '2024-12-13 18:19:37', '2024-12-13 18:19:37'),
(140, 'delete_longboards', 'longboards', '2024-12-13 18:19:37', '2024-12-13 18:19:37'),
(141, 'browse_surfings', 'surfings', '2024-12-14 11:27:45', '2024-12-14 11:27:45'),
(142, 'read_surfings', 'surfings', '2024-12-14 11:27:45', '2024-12-14 11:27:45'),
(143, 'edit_surfings', 'surfings', '2024-12-14 11:27:45', '2024-12-14 11:27:45'),
(144, 'add_surfings', 'surfings', '2024-12-14 11:27:45', '2024-12-14 11:27:45'),
(145, 'delete_surfings', 'surfings', '2024-12-14 11:27:45', '2024-12-14 11:27:45'),
(151, 'browse_сategoryItems', 'сategoryItems', '2024-12-14 12:14:00', '2024-12-14 12:14:00'),
(152, 'read_сategoryItems', 'сategoryItems', '2024-12-14 12:14:00', '2024-12-14 12:14:00'),
(153, 'edit_сategoryItems', 'сategoryItems', '2024-12-14 12:14:00', '2024-12-14 12:14:00'),
(154, 'add_сategoryItems', 'сategoryItems', '2024-12-14 12:14:00', '2024-12-14 12:14:00'),
(155, 'delete_сategoryItems', 'сategoryItems', '2024-12-14 12:14:00', '2024-12-14 12:14:00'),
(161, 'browse_categoryItems', 'categoryItems', '2024-12-14 12:34:26', '2024-12-14 12:34:26'),
(162, 'read_categoryItems', 'categoryItems', '2024-12-14 12:34:26', '2024-12-14 12:34:26'),
(163, 'edit_categoryItems', 'categoryItems', '2024-12-14 12:34:26', '2024-12-14 12:34:26'),
(164, 'add_categoryItems', 'categoryItems', '2024-12-14 12:34:26', '2024-12-14 12:34:26'),
(165, 'delete_categoryItems', 'categoryItems', '2024-12-14 12:34:26', '2024-12-14 12:34:26'),
(171, 'browse_Category', 'Category', '2024-12-14 12:50:41', '2024-12-14 12:50:41'),
(172, 'read_Category', 'Category', '2024-12-14 12:50:41', '2024-12-14 12:50:41'),
(173, 'edit_Category', 'Category', '2024-12-14 12:50:41', '2024-12-14 12:50:41'),
(174, 'add_Category', 'Category', '2024-12-14 12:50:41', '2024-12-14 12:50:41'),
(175, 'delete_Category', 'Category', '2024-12-14 12:50:41', '2024-12-14 12:50:41'),
(176, 'browse_categories', 'categories', '2024-12-14 12:54:39', '2024-12-14 12:54:39'),
(177, 'read_categories', 'categories', '2024-12-14 12:54:39', '2024-12-14 12:54:39'),
(178, 'edit_categories', 'categories', '2024-12-14 12:54:39', '2024-12-14 12:54:39'),
(179, 'add_categories', 'categories', '2024-12-14 12:54:39', '2024-12-14 12:54:39'),
(180, 'delete_categories', 'categories', '2024-12-14 12:54:39', '2024-12-14 12:54:39'),
(181, 'browse_products', 'products', '2024-12-14 12:57:14', '2024-12-14 12:57:14'),
(182, 'read_products', 'products', '2024-12-14 12:57:14', '2024-12-14 12:57:14'),
(183, 'edit_products', 'products', '2024-12-14 12:57:14', '2024-12-14 12:57:14'),
(184, 'add_products', 'products', '2024-12-14 12:57:14', '2024-12-14 12:57:14'),
(185, 'delete_products', 'products', '2024-12-14 12:57:14', '2024-12-14 12:57:14'),
(186, 'browse_sups', 'sups', '2024-12-14 13:27:09', '2024-12-14 13:27:09'),
(187, 'read_sups', 'sups', '2024-12-14 13:27:09', '2024-12-14 13:27:09'),
(188, 'edit_sups', 'sups', '2024-12-14 13:27:09', '2024-12-14 13:27:09'),
(189, 'add_sups', 'sups', '2024-12-14 13:27:09', '2024-12-14 13:27:09'),
(190, 'delete_sups', 'sups', '2024-12-14 13:27:09', '2024-12-14 13:27:09'),
(191, 'browse_clothes', 'clothes', '2024-12-14 13:36:55', '2024-12-14 13:36:55'),
(192, 'read_clothes', 'clothes', '2024-12-14 13:36:55', '2024-12-14 13:36:55'),
(193, 'edit_clothes', 'clothes', '2024-12-14 13:36:55', '2024-12-14 13:36:55'),
(194, 'add_clothes', 'clothes', '2024-12-14 13:36:55', '2024-12-14 13:36:55'),
(195, 'delete_clothes', 'clothes', '2024-12-14 13:36:55', '2024-12-14 13:36:55'),
(196, 'browse_shoes', 'shoes', '2024-12-14 13:48:48', '2024-12-14 13:48:48'),
(197, 'read_shoes', 'shoes', '2024-12-14 13:48:48', '2024-12-14 13:48:48'),
(198, 'edit_shoes', 'shoes', '2024-12-14 13:48:48', '2024-12-14 13:48:48'),
(199, 'add_shoes', 'shoes', '2024-12-14 13:48:48', '2024-12-14 13:48:48'),
(200, 'delete_shoes', 'shoes', '2024-12-14 13:48:48', '2024-12-14 13:48:48'),
(201, 'browse_accessories', 'accessories', '2024-12-14 14:00:20', '2024-12-14 14:00:20'),
(202, 'read_accessories', 'accessories', '2024-12-14 14:00:20', '2024-12-14 14:00:20'),
(203, 'edit_accessories', 'accessories', '2024-12-14 14:00:20', '2024-12-14 14:00:20'),
(204, 'add_accessories', 'accessories', '2024-12-14 14:00:20', '2024-12-14 14:00:20'),
(205, 'delete_accessories', 'accessories', '2024-12-14 14:00:20', '2024-12-14 14:00:20'),
(206, 'browse_banners', 'banners', '2024-12-20 13:01:04', '2024-12-20 13:01:04'),
(207, 'read_banners', 'banners', '2024-12-20 13:01:04', '2024-12-20 13:01:04'),
(208, 'edit_banners', 'banners', '2024-12-20 13:01:04', '2024-12-20 13:01:04'),
(209, 'add_banners', 'banners', '2024-12-20 13:01:04', '2024-12-20 13:01:04'),
(210, 'delete_banners', 'banners', '2024-12-20 13:01:04', '2024-12-20 13:01:04');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 2),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(121, 2),
(122, 1),
(122, 2),
(123, 1),
(123, 2),
(124, 1),
(124, 2),
(125, 1),
(125, 2),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `products_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` blob,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_lots` blob,
  `price_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-12-02 16:26:53', '2024-12-02 16:26:53'),
(2, 'user', 'Normal User', '2024-12-02 16:26:53', '2024-12-02 16:26:53');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `shoes`
--

CREATE TABLE `shoes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` blob,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_lots` blob,
  `price_discount` int DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `shoes`
--

INSERT INTO `shoes` (`id`, `title`, `desc`, `img`, `img_lots`, `price_discount`, `price`, `size_id`, `brand_id`, `color_id`, `updated_at`, `created_at`) VALUES
(1, 'Tahiti ARJL100869-WCW', 0xd096d0b5d0bdd181d0bad0b8d0b52063d0bbd0b0d0bdd186d18b205461686974692041524a4c3130303836392d57435720d0a5d0b0d180d0b0d0bad182d0b5d180d0b8d181d182d0b8d0bad0b820d09cd18fd0b3d0bad0b8d0b920d094d0b2d183d185d186d0b2d0b5d182d0bdd18bd0b920d092d0b5d180d18520d098d0b720d0a2d18dd0bf20d0a1d182d0b5d0bbd18cd0bad0b020d0a120d09fd180d0b8d0bdd182d0bed0bc20d098d0b720d09fd0bed0bbd0b8d0bcd0b5d180d0b020d0add0b2d0b020d094d0b2d0bed0b9d0bdd0bed0b920d09fd0bbd0bed182d0bdd0bed181d182d0b820d09fd0bed0b4d0bed188d0b2d0b020d098d0b720d09fd0bed0bbd0b8d0bcd0b5d180d0b020d0add0b2d0b020d0a120d09ad0bbd0b0d181d181d0b8d187d0b5d181d0bad0bed0b920d093d180d0b0d184d0b8d0bad0bed0b920526f7879, 'shoes\\December2024\\5qz45lscFC6GrzS0hjhP.webp', 0x5b2273686f65735c5c446563656d626572323032345c5c737754474c3545656a4774665871537a765961372e77656270222c2273686f65735c5c446563656d626572323032345c5c32754e656f4f7a594e5266553943417776764f6b2e77656270222c2273686f65735c5c446563656d626572323032345c5c636b6951506f77505a4a3255444d4870354948422e77656270225d, NULL, '1990', 'L', 'DC Shoes', 'Красный', '2024-12-31 11:13:54', '2024-12-07 16:13:12'),
(2, 'Женские кеды Bayshore Plus LX', 0xd0a5d0b0d180d0b0d0bad182d0b5d180d0b8d181d182d0b8d0bad0b820d0add0bbd0b0d181d182d0b8d187d0bdd18bd0b920d0b2d0b5d180d18520d0b8d0b720d0bad0bed0b6d0b7d0b0d0bcd0b5d0bdd0b8d182d0b5d0bbd18f20d18120d0bed0bad0b0d0bdd182d0bed0b2d0b0d0bdd0bdd0bed0b920d0bfd18fd182d0bad0bed0b920d0a5d0bbd0bed0bfd0bad0bed0b2d18bd0b520d188d0bdd183d180d0bad0b820c2abd0a3d0bcd0bdd0b0d18fc2bb20d0b2d0bfd0b5d0bdd0b5d0bdd0bdd0b0d18f20d181d182d0b5d0bbd18cd0bad0b020d0a3d182d0bed0bbd189d0b5d0bdd0bdd0b0d18f20d18dd0bbd0b0d181d182d0b8d187d0bdd0b0d18f20d0bfd0bed0b4d0bed188d0b2d0b020d0b8d0b720d0bfd0b5d180d0b5d180d0b0d0b1d0bed182d0b0d0bdd0bdd0bed0b3d0be20d0a2d0add09f20d18120d181d183d0bfd0b8d0bdd0b0d182d0bed180d0bed0bc20d0b820d0bad0bbd0b0d181d181d0b8d187d0b5d181d0bad0b8d0bc20d0bfd180d0bed182d0b5d0bad182d0bed180d0bed0bc20524f585920d09cd0b0d185d180d0bed0b2d0b0d18f20d0bfd0bed0b4d0bad0bbd0b0d0b4d0bad0b020d0b8d0b720d0bcd0b0d182d0b5d180d0b8d0b0d0bbd0b02052455052455645e284a2, 'shoes\\December2024\\AcHxt8zXd57rnd4pQcus.webp', 0x5b2273686f65735c5c446563656d626572323032345c5c333441615446737a6541377a684e6f49787a4e472e77656270222c2273686f65735c5c446563656d626572323032345c5c756a32344e6c5a535239735247447674705466712e77656270222c2273686f65735c5c446563656d626572323032345c5c42446650425662784a576834443862486e7748712e77656270222c2273686f65735c5c446563656d626572323032345c5c7a4c474d7a6e6b42447732575045615a4738324f2e77656270225d, 35, '7999', 'M', 'DC Shoes', 'Черный', '2024-12-31 11:07:09', '2024-12-07 16:14:07'),
(3, 'Manteca 4 HI ADJS100164-TRW', 0xd096d0b5d0bdd181d0bad0b8d0b520d0bad0b5d0b4d18b2044432053686f657320437572652041444a533130303136392d504f5720d0a5d0b0d180d0b0d0bad182d0b5d180d0b8d181d182d0b8d0bad0b820d0a1d0b8d0bdd182d0b5d182d0b8d187d0b5d181d0bad0b8d0b920d0b2d0b5d180d18520d0a0d0b5d0b7d0b8d0bdd0bed0b2d0b0d18f20d0bfd0bed0b4d0bed188d0b2d0b020d0a2d0b5d0bad181d182d0b8d0bbd18cd0bdd0b0d18f20d0bfd0bed0b4d0bad0bbd0b0d0b4d0bad0b0, 'shoes\\December2024\\NOXeiPk6i4nSthTSn4KQ.jpg', 0x5b2273686f65735c5c446563656d626572323032345c5c44756563495473787645394637774377557557532e6a7067222c2273686f65735c5c446563656d626572323032345c5c4d4b583473526c4e4445436a706469704634705a2e6a7067222c2273686f65735c5c446563656d626572323032345c5c65575730725536564e673874466a6636644c65562e6a7067222c2273686f65735c5c446563656d626572323032345c5c4c32576d6342756f4465483279345864714148482e6a7067225d, NULL, '9590', 'L', 'DC Shoes', 'Синий', '2024-12-31 11:11:17', '2024-12-07 16:15:00');

-- --------------------------------------------------------

--
-- Структура таблицы `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sizes`
--

INSERT INTO `sizes` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'S', '2024-12-12 08:52:08', '2024-12-12 08:52:08'),
(2, 'XS', '2024-12-12 08:52:13', '2024-12-12 08:52:13'),
(3, 'M', '2024-12-12 08:52:23', '2024-12-12 08:52:23'),
(4, 'L', '2024-12-12 08:52:29', '2024-12-12 08:52:29'),
(5, 'XL', '2024-12-12 08:52:36', '2024-12-12 08:52:36');

-- --------------------------------------------------------

--
-- Структура таблицы `skateboards`
--

CREATE TABLE `skateboards` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` blob,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_lots` blob,
  `price_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `skateboards`
--

INSERT INTO `skateboards` (`id`, `title`, `desc`, `img`, `img_lots`, `price_discount`, `price`, `size_id`, `brand_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 'Скейтборд детский Termit 100 22\"', 0xd0a1d0bad0b5d0b9d182d0b1d0bed180d0b420313030202d2032322220d0bed182205465726d697420e2809420d0bed182d0bbd0b8d187d0bdd18bd0b920d0b2d18bd0b1d0bed1802c20d187d182d0bed0b1d18b20d0bed181d0b2d0bed0b8d182d18c20d0b1d0b0d0b7d0bed0b2d18bd0b520d0bdd0b0d0b2d18bd0bad0b820d0bad0b0d182d0b0d0bdd0b8d18f2e20d0afd180d0bad0b8d0b920d0b4d0b8d0b7d0b0d0b9d0bd20d0bdd0b8d0bad0bed0b3d0be20d0bdd0b520d0bed181d182d0b0d0b2d0b8d18220d180d0b0d0b2d0bdd0bed0b4d183d188d0bdd18bd0bc2e20d09fd0bed0b4d185d0bed0b4d0b8d18220d0b4d0bbd18f20d0b4d0b5d182d0b5d0b920d0b2d0b5d181d0bed0bc20d0b4d0be20333520d0bad0b32e, 'skateboards\\December2024\\W6CtCCnZyeTLcm5AL4Se.jpg', 0x5b22736b617465626f617264735c5c446563656d626572323032345c5c78336f466477673655563853666264654e6b726b2e6a7067222c22736b617465626f617264735c5c446563656d626572323032345c5c557a395533433976414b42683042754f687576592e6a7067222c22736b617465626f617264735c5c446563656d626572323032345c5c4e6f6c6f306f55306b4534637a556b75767431712e6a7067225d, NULL, '1999', 'L', 'BoardRiders', 'Синий', '2024-12-07 14:49:35', '2024-12-31 11:37:08'),
(2, 'Скейтборд Termit 300 - 29\"', 0xd0a1d0bad0b5d0b9d182d0b1d0bed180d0b420333030202d2032392220d0bed182205465726d697420d18120d18fd180d0bad0b8d0bc20d0b4d0b8d0b7d0b0d0b9d0bdd0bed0bc20d0b820d183d0b2d0b5d0bbd0b8d187d0b5d0bdd0bdd0bed0b920d0b4d0b5d0bad0bed0b920d0bfd0bed0b4d0bed0b9d0b4d0b5d18220d0b4d0bbd18f20d0bfd0bed0b4d180d0bed181d182d0bad0bed0b22e20d09fd180d0bed187d0bdd0b0d18f20d0bad0bed0bdd181d182d180d183d0bad186d0b8d18f20d0b8d0b720d0bad0b8d182d0b0d0b9d181d0bad0bed0b3d0be20d0bad0bbd0b5d0bdd0b02e, 'skateboards\\December2024\\ICyyPVsJwTVvA4AKxwIq.jpg', 0x5b22736b617465626f617264735c5c446563656d626572323032345c5c445339515a4a6c636448674b70366f696a6e35712e6a7067222c22736b617465626f617264735c5c446563656d626572323032345c5c4864536631506d4572614453745947423546646b2e6a7067222c22736b617465626f617264735c5c446563656d626572323032345c5c34734d30303462737241335a55694c7a347131432e6a7067225d, '75', '2999', 'XL', 'Quicksilver', 'Красный', '2024-12-07 14:54:24', '2024-12-31 11:38:04'),
(3, 'Скейтборд Termit 900', 0xd0a1d0bad0b5d0b9d182d0b1d0bed180d0b42039303020d0bed182205465726d69742c20d0bfd180d0b5d0b4d0bdd0b0d0b7d0bdd0b0d187d0b5d0bdd0bdd18bd0b920d0b4d0bbd18f20d0bfd0b0d180d0bad0bed0b2d0bed0b3d0be20d0bad0b0d182d0b0d0bdd0b8d18f2c20d181d182d0b0d0bdd0b5d18220d0bed182d0bbd0b8d187d0bdd18bd0bc20d0b2d18bd0b1d0bed180d0bed0bc20d0b4d0bbd18f20d0bfd180d0bed0b3d180d0b5d181d181d0b8d180d183d18ed189d0b8d18520d180d0b0d0b9d0b4d0b5d180d0bed0b22e20d09dd0b0d0b4d0b5d0b6d0bdd0b0d18f20d0bad0bbd0b5d0bdd0bed0b2d0b0d18f20d0b4d0b5d0bad0b020d0bed0b1d0b5d181d0bfd0b5d187d0b8d0b2d0b0d0b5d18220d0bcd0bed189d0bdd18bd0b920d189d0b5d0bbd187d0bed0ba20d0b820d0bfd180d0bed187d0bdd0bed181d182d18c2c20d0b020d183d0bbd183d187d188d0b5d0bdd0bdd0b0d18f20d184d0b8d0bad181d0b0d186d0b8d18f20d0bfd0bed0b4d0b2d0b5d181d0bad0b820d0b4d0b0d0b5d18220d0b1d0bed0bbd18cd188d183d18e20d183d181d182d0bed0b9d187d0b8d0b2d0bed181d182d18c20d0bfd0bed181d0bbd0b520d0b2d18bd0bfd0bed0bbd0bdd0b5d0bdd0b8d18f20d182d180d18ed0bad0bed0b22e, 'skateboards\\December2024\\MPIUdnSMzgTUQwyrQAXu.jpg', 0x5b22736b617465626f617264735c5c446563656d626572323032345c5c764252326972675a7169397575655466344846382e6a7067222c22736b617465626f617264735c5c446563656d626572323032345c5c51724d54646b76424866563247455851575465422e6a7067222c22736b617465626f617264735c5c446563656d626572323032345c5c42737037353041766e387775794666586f706b722e6a7067225d, NULL, '6999', 'XS', 'DC Shoes', 'Оранжевый', '2024-12-07 14:55:19', '2024-12-31 11:39:04'),
(4, 'Скейтборд 29,625\"х7,375\" Ridex Mosaic', 0xd09220d0bfd0bed0b8d181d0bad0b0d18520d18fd180d0bad0bed0b3d0be20d0b820d181d182d0b8d0bbd18cd0bdd0bed0b3d0be20d181d0bfd0bed181d0bed0b1d0b020d0bfd0b5d180d0b5d0b4d0b2d0b8d0b6d0b5d0bdd0b8d18f3f20d09fd180d0b5d0b4d181d182d0b0d0b2d0bbd18fd0b5d0bc20d0b2d0b0d0bc20d183d0bdd0b8d0bad0b0d0bbd18cd0bdd18bd0b9205249444558204d6f73616963202d20d0b8d0b4d0b5d0b0d0bbd18cd0bdd18bd0b920d0b2d18bd0b1d0bed18020d0b4d0bbd18f20d0b0d0bad182d0b8d0b2d0bdd18bd18520d0b820d18dd0bdd0b5d180d0b3d0b8d187d0bdd18bd18520d0bbd18ed0b4d0b5d0b92c20d0bad0bed182d0bed180d18bd0b520d185d0bed182d18fd18220d0b2d18bd180d0b0d0b7d0b8d182d18c20d181d0b5d0b1d18f20d187d0b5d180d0b5d0b720d181d0bad0b5d0b9d182d0b1d0bed180d0b4d0b8d0bdd0b32e20d09cd18fd0b3d0bad0b8d0b520d0b1d183d188d0b8d0bdd0b3d0b82038354120d0bfd0bed0b7d0b2d0bed0bbd18fd18ed18220d181d0bad0b5d0b9d182d0b1d0bed180d0b4d18320d0bbd0b5d0b3d0bad0be20d0bcd0b0d0bdd0b5d0b2d180d0b8d180d0bed0b2d0b0d182d18c20d0b820d0bfd0bed0b2d0bed180d0b0d187d0b8d0b2d0b0d182d18c20d0bdd0b020d0bcd0b0d0bbd18bd18520d181d0bad0bed180d0bed181d182d18fd1852c20d0b020d0bad0bed0bbd0b5d181d0b020d0b6d0b5d181d182d0bad0bed181d182d18cd18e203932d09020d0bed182d0bad180d18bd0b2d0b0d18ed18220d0b5d189d0b520d0b1d0bed0bbd18cd188d0b520d0b2d0bed0b7d0bcd0bed0b6d0bdd0bed181d182d0b5d0b920d0b4d0bbd18f20d0b2d18bd0bfd0bed0bbd0bdd0b5d0bdd0b8d18f20d182d180d18ed0bad0bed0b22e20d0a3d181d182d0bed0b9d187d0b8d0b2d0b0d18f20d0b4d0b5d0bad0b020d18120d0bfd180d0bed0b3d0b8d0b1d0bed0bc20436f6e63617665204c6974746c6520d0b8d0b4d0b5d0b0d0bbd18cd0bdd0b020d0b4d0bbd18f20d0bed0b1d18bd187d0bdd0bed0b3d0be20d0bad0b0d182d0b0d0bdd0b8d18f2c20d0b020d182d0b0d0bad0b6d0b520d0b7d0bdd0b0d0bad0bed0bcd181d182d0b220d18120d180d0b0d0bcd0bfd0b0d0bcd0b820d0b820d0bfd183d0bbd0b0d0bcd0b82e, 'skateboards\\December2024\\ZieEjpEuzzSii8ZurLhJ.png', 0x5b22736b617465626f617264735c5c446563656d626572323032345c5c62314439455934774a623249676e4457554e63392e706e67222c22736b617465626f617264735c5c446563656d626572323032345c5c5a6f74666a39337a4d337437747138454e444c4d2e6a666966225d, '70', '3499', 'XS', 'DC Shoes', 'Красный', '2024-12-13 17:19:15', '2024-12-14 16:39:01');

-- --------------------------------------------------------

--
-- Структура таблицы `skis`
--

CREATE TABLE `skis` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` blob NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_lots` blob,
  `price_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `skis`
--

INSERT INTO `skis` (`id`, `title`, `desc`, `img`, `img_lots`, `price_discount`, `price`, `brand_id`, `color_id`, `size_id`, `updated_at`, `created_at`) VALUES
(1, 'Комплект лыжный детский Nordway Flame 75 mm', 0xd09bd18bd0b6d0bdd18bd0b920d0bad0bed0bcd0bfd0bbd0b5d0bad18220d0b4d0bbd18f20d0b4d0b5d182d0b5d0b920d0bed182203420d0b4d0be203820d0bbd0b5d1822c20d0bad0bed182d0bed180d18bd0b920d0b8d0b4d0b5d0b0d0bbd18cd0bdd0be20d0bfd0bed0b4d0bed0b9d0b4d0b5d18220d0b4d0bbd18f20d0bed0b1d183d187d0b5d0bdd0b8d18f20d0bad0b0d182d0b0d0bdd0b8d18e20d0bdd0b020d0bbd18bd0b6d0b0d1852e20d09220d0bad0bed0bcd0bfd0bbd0b5d0bad1822c20d0bfd0bed0bcd0b8d0bcd0be20d0bbd18bd0b620d18120d0bdd0b0d181d0b5d187d0bad0bed0b92c20d0b2d185d0bed0b4d18fd18220d0bbd0b5d0b3d0bad0b8d0b520d183d0b4d0bed0b1d0bdd18bd0b520d0bfd0b0d0bbd0bad0b820d0b820d0bad180d0b5d0bfd0bbd0b5d0bdd0b8d18f20373520d0bcd0bc2e, 'skis\\December2024\\Ik8tdhqI9MVmFwNTqPqd.jpg', 0x5b22736b69735c5c446563656d626572323032345c5c6c3532646761495979304c5341437977305153332e6a7067222c22736b69735c5c446563656d626572323032345c5c4e4e6c6a51386b6557636c6a304537306e4b4b782e6a7067222c22736b69735c5c446563656d626572323032345c5c4a70614e455730676450497757765446655a7a6d2e6a7067225d, NULL, '3299', 'Quicksilver', 'Оранжевый', 'XS', '2024-12-31 11:35:05', '2024-12-07 13:51:06'),
(2, 'Беговые лыжи Madshus CT90 + крепления Step', 0xd09ad0bed0bcd0bfd0bbd0b5d0bad18220d0bfd180d0bed0b3d183d0bbd0bed187d0bdd18bd18520d0bad0bbd0b0d181d181d0b8d187d0b5d181d0bad0b8d18520d0b1d0b5d0b3d0bed0b2d18bd18520d0bbd18bd0b620d0bed18220d0bdd0bed180d0b2d0b5d0b6d181d0bad0bed0b3d0be20d0b1d180d0b5d0bdd0b4d0b0204d6164736875732e20d09220d0bad0bed0bcd0bfd0bbd0b5d0bad18220d0b2d185d0bed0b4d18fd18220d0bbd18bd0b6d0b820d0b820d0bad180d0b5d0bfd0bbd0b5d0bdd0b8d18f204e4e4e20537465702e, 'skis\\December2024\\bqV4hlKEUU73pimp8lw6.jpg', 0x5b22736b69735c5c446563656d626572323032345c5c796a61724a5147634946514a374b4235717047482e6a7067222c22736b69735c5c446563656d626572323032345c5c664435587363747a795656435457636a4a43756f2e6a7067225d, NULL, '5599', 'DC Shoes', 'Оранжевый', 'M', '2024-12-31 11:33:22', '2024-12-07 14:10:39'),
(3, 'Комплект лыжный детский Nordway Bliss NNN', 0xd09ad0bed0bcd0bfd0bbd0b5d0bad182204e6f726477617920d0b4d0bbd18f20d0b4d0b5d0b2d0bed187d0b5d0ba20e2809420d0bed182d0bbd0b8d187d0bdd18bd0b920d0b2d18bd0b1d0bed18020d0b4d0bbd18f20d0bdd0b0d187d0b0d0bbd0b020d0b7d0b0d0bdd18fd182d0b8d0b920d0bbd18bd0b6d0bdd18bd0bc20d181d0bfd0bed180d182d0bed0bc20d0b8d0bbd0b820d0b4d0bbd18f20d183d180d0bed0bad0bed0b220d184d0b8d0b7d0bad183d0bbd18cd182d183d180d18b20d0b220d188d0bad0bed0bbd0b52e20d09220d0bad0bed0bcd0bfd0bbd0b5d0bad18220d0b2d185d0bed0b4d18fd18220d0bbd18bd0b6d0b82c20d0bfd0b0d0bbd0bad0b820d0b820d0bad180d0b5d0bfd0bbd0b5d0bdd0b8d18f20d181d0b8d181d182d0b5d0bcd18b204e4e4e2e20d09bd0b5d0b3d0bad0b8d0b520d0b820d0bfd180d0bed187d0bdd18bd0b520d0bbd18bd0b6d0b820d18120d0b4d0b5d180d0b5d0b2d18fd0bdd0bdd18bd0bc20d181d0b5d180d0b4d0b5d187d0bdd0b8d0bad0bed0bc20d0b820d183d0bdd0b8d0b2d0b5d180d181d0b0d0bbd18cd0bdd0bed0b920d181d0bad0bed0bbd18cd0b7d18fd189d0b5d0b920d0bfd0bed0b2d0b5d180d185d0bdd0bed181d182d18cd18e2c20d0bed0b1d180d0b0d0b1d0bed182d0b0d0bdd0bdd0bed0b920d0bfd0be20d182d0b5d185d0bdd0bed0bbd0bed0b3d0b8d0b820426173652054756e696e672e20d0a3d0bdd0b8d0b2d0b5d180d181d0b0d0bbd18cd0bdd0b0d18f20d181d0b8d181d182d0b5d0bcd0b020d0bdd0b0d181d0b5d187d0b5d0ba2053746570204772697020d0bed0b1d0b5d181d0bfd0b5d187d0b8d0b2d0b0d0b5d18220d185d0bed180d0bed188d0b5d0b520d181d186d0b5d0bfd0bbd0b5d0bdd0b8d0b520d181d0be20d181d0bdd0b5d0b3d0bed0bc20d0bfd180d0b820d0bed182d182d0b0d0bbd0bad0b8d0b2d0b0d0bdd0b8d0b82e, 'skis\\December2024\\Og70sUyF0NtWhnrl9EjR.jpg', 0x5b22736b69735c5c446563656d626572323032345c5c4c6752327965374d52593364426a6b68677753492e6a7067222c22736b69735c5c446563656d626572323032345c5c4d706e4c50315179304b354a4e473368694f784d2e6a7067222c22736b69735c5c446563656d626572323032345c5c6441706a6f41434f634f586a524b327742374f672e6a7067222c22736b69735c5c446563656d626572323032345c5c6c6d77424248667662745772384e566d6b4249692e6a7067225d, NULL, '3599', 'DC Shoes', 'Черный', 'XL', '2024-12-31 11:31:18', '2024-12-07 14:23:47'),
(4, 'Горные лыжи Atomic Bent 110', 0xd093d0bed180d0bdd18bd0b520d0bbd18bd0b6d0b820d09fd180d0be2dd0bcd0bed0b4d0b5d0bbd18c3a2043687269732042656e74636865746c657220d093d0b5d0bed0bcd0b5d182d180d0b8d18f20446972656374696f6e616c20536861706520d09fd180d0bed0b3d0b8d0b120506f7764657220526f636b65722032352f35302f3235202d20d0bad18dd0bcd0b1d0b5d180d0bdd18bd0b920d0bfd180d0bed0b3d0b8d0b120d0bfd0bed0b420d0bad180d0b5d0bfd0bbd0b5d0bdd0b8d18fd0bcd0b820d0b820d0bfd0bed0b4d0bdd18fd182d18bd0b520d0b220d180d0bed0bad0b5d18020d0bdd0bed18120d0b820d185d0b2d0bed181d18220d18dd182d0b8d18520d0bbd18bd0b620d0bfd0bed0bcd0bed0b3d0b0d0b5d18220d0bbd0b5d0b3d187d0b520d0b2d181d0bfd0bbd18bd0b2d0b0d182d18c20d0b220d0b3d0bbd183d0b1d0bed0bad0bed0bc20d181d0bdd0b5d0b3d183, 'skis\\December2024\\X8B8F4WzTdIlBFETT97U.jpg', 0x5b22736b69735c5c446563656d626572323032345c5c5a59704737336a6a494363424f4d6d44746b70312e6a7067222c22736b69735c5c446563656d626572323032345c5c514c44656c45546e4e3761336143526c754a64502e6a7067222c22736b69735c5c446563656d626572323032345c5c62647230754c3661595a65424a444e72577441452e6a7067225d, '15', '84950', 'Quicksilver', 'Красный', 'L', '2024-12-13 10:14:29', '2024-12-13 10:14:29');

-- --------------------------------------------------------

--
-- Структура таблицы `snows`
--

CREATE TABLE `snows` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` blob NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_lots` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `snows`
--

INSERT INTO `snows` (`id`, `title`, `desc`, `img`, `price_discount`, `price`, `created_at`, `updated_at`, `color_id`, `brand_id`, `size_id`, `img_lots`) VALUES
(1, 'Сноуборд Jones Aviator 2.0', 0xd09bd0b5d0b3d0bad0b0d18f2c20d0bed0b4d0bdd0bed0b2d180d0b5d0bcd0b5d0bdd0bdd0be20d0b6d0b5d181d182d0bad0b0d18f20d0b820d0bed182d0b7d18bd0b2d187d0b8d0b2d0b0d18f20d0b4d0bed181d0bad0b02046757475726520e2809420d0b8d0b4d0b5d0b0d0bbd18cd0bdd18bd0b920d0b2d0b0d180d0b8d0b0d0bdd18220d0b4d0bbd18f20d184d180d0b8d181d182d0b0d0b9d0bbd0b02c20d0bdd0be20d0bed0bdd0b020d182d0b0d0bad0b6d0b520d0bfd0bed0b4d185d0bed0b4d0b8d18220d0b4d0bbd18f20d183d0bdd0b8d0b2d0b5d180d181d0b0d0bbd18cd0bdd0bed0b3d0be20d0bad0b0d182d0b0d0bdd0b8d18f20d0b820d184d180d0b8d180d0b0d0b9d0b4d0b02e, 'snows\\December2024\\KLQGiY6nOvR3U5Ob029k.png', NULL, '24899', '2024-12-02 16:54:00', '2024-12-30 12:17:25', 'Красный', 'DC Shoes', 'XS', 0x5b22736e6f77735c5c446563656d626572323032345c5c3736744f72735832416a5051336f4533644a49532e6a7067222c22736e6f77735c5c446563656d626572323032345c5c4a587164714e4f56426743453566464a55554b782e6a7067222c22736e6f77735c5c446563656d626572323032345c5c48416f42343562585a376633454f34684f784f702e6a7067222c22736e6f77735c5c446563656d626572323032345c5c70516e466d4e6b724a30636d7343646951344e542e6a7067222c22736e6f77735c5c446563656d626572323032345c5c746c58396178624671484139426f4f574c5a467a2e6a7067222c22736e6f77735c5c446563656d626572323032345c5c464d4f554e41794a7969525933317555375164322e6a7067222c22736e6f77735c5c446563656d626572323032345c5c527443764c596f44486f49424170576b7434534e2e6a7067222c22736e6f77735c5c446563656d626572323032345c5c4f3866694b5a54424d4a56554e335461426954492e6a7067225d),
(6, 'Сноуборд Termit Savage', 0xd0a1d0bdd0bed183d0b1d0bed180d0b42053617661676520d0bed182205465726d697420e2809420d0b8d0b4d0b5d0b0d0bbd18cd0bdd18bd0b920d0b2d18bd0b1d0bed18020d0b4d0bbd18f20d0bbd18ed0b1d0b8d182d0b5d0bbd0b5d0b920d184d180d0b8d180d0b0d0b9d0b4d0b02e20d09dd0b0d0b4d0b5d0b6d0bdd0b0d18f20d183d0bdd0b8d0b2d0b5d180d181d0b0d0bbd18cd0bdd0b0d18f20d0b4d0bed181d0bad0b020d0bfd0bed0b4d185d0bed0b4d0b8d18220d0b4d0bbd18f20d0bad0b0d182d0b0d0bdd0b8d18f20d0bdd0b020d0b2d18bd181d0bed0bad0b8d18520d181d0bad0bbd0bed0bdd0b0d1852c20d0bed182d0bbd0b8d187d0bdd0be20d181d0bfd180d0b0d0b2d0bbd18fd0b5d182d181d18f20d181d0be20d181d0bad0bed180d0bed181d182d0bdd18bd0bc20d181d0bfd183d181d0bad0bed0bc20d0bfd0be20d182d180d0b0d181d181d0b520d0b820d0b2d181d0bfd0bbd18bd0b2d0b0d0b5d18220d0b220d0bbd0b5d0b3d0bad0bed0bc20d0bfd183d185d0bbd18fd0bad0b52e, 'snows\\December2024\\Hw95CN5UP08vXIasPfoi.jpg', '35', '27999', '2024-12-11 12:47:29', '2024-12-12 15:49:38', 'Красный', 'DC Shoes', 'XL', 0x5b22736e6f77735c5c446563656d626572323032345c5c306e48384433364356374e7665466f54455137312e6a7067222c22736e6f77735c5c446563656d626572323032345c5c6b67676c467268315a6c5858704a4665336478522e6a7067222c22736e6f77735c5c446563656d626572323032345c5c7270695151417437726a6e6d505572444d3951662e6a7067222c22736e6f77735c5c446563656d626572323032345c5c6d3668444348514669414d4276774f686464716c2e6a7067222c22736e6f77735c5c446563656d626572323032345c5c496163714d305956344268366647444674435a6a2e6a7067225d),
(7, 'Сноуборд детский Termit Jockey', 0xd09cd18fd0b3d0bad0b8d0b920d181d0bdd0bed183d0b1d0bed180d0b4205465726d697420d0b4d0bbd18f20d0bdd0b0d187d0b8d0bdd0b0d18ed189d0b8d18520d0bfd0bed0bad0bed180d0b8d182d0b5d0bbd0b5d0b920d181d0bad0bbd0bed0bdd0bed0b22e20d09fd180d0b8d0bfd0bed0b4d0bdd18fd182d18bd0b920d0bad0b0d0bdd18220d181d0bdd0bed183d0b1d0bed180d0b4d0b020d0bfd180d0bed189d0b0d0b5d18220d0bed188d0b8d0b1d0bad0b820d0b820d0bfd0bed0b7d0b2d0bed0bbd18fd0b5d18220d181d0b4d0b5d0bbd0b0d182d18c20d0bfd180d0bed186d0b5d181d18120d0bed0b1d183d187d0b5d0bdd0b8d18f20d0b1d0bed0bbd0b5d0b520d0bbd0b5d0b3d0bad0b8d0bc20d0b820d0bfd180d0b8d18fd182d0bdd18bd0bc2e20d0a120d18dd182d0b8d0bc20d0bfd0bed181d0bbd183d188d0bdd18bd0bc20d181d0bdd0b0d180d18fd0b4d0bed0bc20d181d0bfd180d0b0d0b2d0b8d182d181d18f20d0b4d0b0d0b6d0b520d181d0b0d0bcd18bd0b920d18ed0bdd18bd0b920d180d0b0d0b9d0b4d0b5d1802e20d09fd180d0bed181d182d0b0d18f20d0b820d0bdd0b0d0b4d0b5d0b6d0bdd0b0d18f20d0bad0bed0bdd181d182d180d183d0bad186d0b8d18f2c20d18fd180d0bad0b8d0b920d0b4d0b8d0b7d0b0d0b9d0bd20e2809320d0b2d181d0b52c20d187d182d0be20d0bdd183d0b6d0bdd0be20d0b4d0bbd18f20d0bfd0b5d180d0b2d18bd18520d188d0b0d0b3d0bed0b220d0b220d181d0bdd0bed183d0b1d0bed180d0b4d0b8d0bdd0b3d0b52e, 'snows\\December2024\\P1qvyLPskgZyqnj8uURO.jpg', NULL, '13999', '2024-12-31 11:27:36', '2024-12-31 11:27:36', 'Красный', 'DC Shoes', 'L', 0x5b22736e6f77735c5c446563656d626572323032345c5c364d79746c5667796c366b6637425a664f4a42712e6a7067222c22736e6f77735c5c446563656d626572323032345c5c5a7130444151356561536342434c573931356a392e6a7067225d);

-- --------------------------------------------------------

--
-- Структура таблицы `sups`
--

CREATE TABLE `sups` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` blob,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_lots` blob,
  `price_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sups`
--

INSERT INTO `sups` (`id`, `title`, `desc`, `img`, `img_lots`, `price_discount`, `price`, `size_id`, `brand_id`, `color_id`, `updated_at`, `created_at`) VALUES
(1, 'SUP доска надувная Adventum 10.6 Orange, полная комплектация', 0xd09fd180d0b5d0b4d181d182d0b0d0b2d0bbd18fd0b5d0bc20d183d0bdd0b8d0b2d0b5d180d181d0b0d0bbd18cd0bdd183d18e20d0bcd0bed0b4d0b5d0bbd18c20d0b220d181d0b0d0bcd0bed0bc20d0bfd0bed0bfd183d0bbd18fd180d0bdd0bed0bc20d180d0b0d0b7d0bcd0b5d180d0b5203130e28099362e205375702dd0b4d0bed181d0bad0b020d180d0b0d181d181d187d0b8d182d0b0d0bdd0b020d0bdd0b020d0bcd0b0d0bad181d0b8d0bcd0b0d0bbd18cd0bdd18bd0b920d0b2d0b5d18120d180d0b0d0b9d0b4d0b5d180d0b020d0b22031323020d0bad0b320d0b820d0bfd0bed0b4d185d0bed0b4d0b8d18220d0b4d0bbd18f20d0bcd183d0b6d187d0b8d0bd20d0b820d0b6d0b5d0bdd189d0b8d0bd2e20416476656e74756d203130e280993620d0bfd0bed0b4d0bed0b9d0b4d0b5d18220d0b4d0bbd18f20d182d0b5d1852c20d0bad182d0be20d185d0bed187d0b5d18220d0bed181d0b2d0bed0b8d182d18c207375702dd0b1d0bed180d0b42c20d0bdd0be20d0bdd0b520d0b3d0bed182d0bed0b220d181d180d0b0d0b7d18320d0bed181d0bdd0bed0b2d0b0d182d0b5d0bbd18cd0bdd0be20d0bfd0bed182d180d0b0d182d0b8d182d18cd181d18f20d0bdd0b020d0bdd0bed0b2d0bed0b520d183d0b2d0bbd0b5d187d0b5d0bdd0b8d0b52e20d0add182d0b020d0bcd0bed0b4d0b5d0bbd18c20d0bfd0bed0b4d0bed0b9d0b4d0b5d18220d0b4d0bbd18f20d0bcd0bed180d18f20d0b820d0b3d0bbd0b0d0b4d0bad0bed0b920d0b2d0bed0b4d18b2e20d09ed0bdd0b020d0bed182d0bbd0b8d187d0bdd0be20d0b2d18bd0b3d0bbd18fd0b4d0b8d1822c20d0bbd0b5d0b3d0bad0be20d181d0bad0bed0bbd18cd0b7d0b8d18220d0bfd0be20d0b2d0bed0b4d0b520d0b820d183d0bad0bed0bcd0bfd0bbd0b5d0bad182d0bed0b2d0b0d0bdd0b020d0b2d181d0b5d0bc20d0bdd0b5d0bed0b1d185d0bed0b4d0b8d0bcd18bd0bc20e2809420d0b2d181d0b52c20d187d182d0be20d0bdd183d0b6d0bdd0be20d0b4d0bbd18f20d185d0bed180d0bed188d0b5d0b3d0be20d181d182d0b0d180d182d0b02e20d0add182d0b020d0b4d0bed181d0bad0b020416476656e74756d20d0b8d0b7d0b3d0bed182d0bed0b2d0bbd0b5d0bdd0b020d0b8d0b720d0b2d18bd181d0bed0bad0bed0bad0b0d187d0b5d181d182d0b2d0b5d0bdd0bdd0bed0b3d0be20d09fd092d0a520d0bdd0b020d0bfd180d0bed187d0bdd0bed0b920d182d0b5d0bad181d182d0b8d0bbd18cd0bdd0bed0b920d0bed181d0bdd0bed0b2d0b520d0bfd0bbd0bed182d0bdd0bed181d182d18cd18e203130303020d0b4d0b5d0bd2e20d0a2d0bed180d186d18b20d0b4d0bed181d0bad0b820d0bed182d0b4d0b5d0bbd0b0d0bdd18b20d0b4d0b2d0bed0b9d0bdd18bd0bc20d183d181d0b8d0bbd0b5d0bdd0bdd18bd0bc20d0bad0b0d0bdd182d0bed0bc2c20d187d182d0be20d182d0b0d0bad0b6d0b520d0b4d0bed0b1d0b0d0b2d0bbd18fd0b5d18220d0b5d0b920d0bed181d0bdd0bed0b2d0b0d182d0b5d0bbd18cd0bdd0bed181d182d0b82e20d09220d0bad0bed0bcd0bfd0bbd0b5d0bad182d0b520d18120d0bdd0b0d0b4d183d0b2d0bdd0bed0b920d0b4d0bed181d0bad0bed0b920d0b8d0b4d0b5d18220d0a1d183d0bcd0bad0b020d0b4d0bbd18f20d0bfd0b5d180d0b5d0bdd0bed181d0bad0b83a20d0b0d0bbd18ed0bcd0b8d0bdd0b8d0b5d0b2d0bed0b520d0b2d0b5d181d0bbd0be20d18120d0b4d0b2d183d0bcd18f20d0bbd0bed0bfd0b0d181d182d18fd0bcd0b83b20d0bfd0bbd0b0d0b2d0bdd0b8d0ba3b20d181d182d180d0b0d185d0bed0b2d0bed187d0bdd18bd0b920d0bbd0b8d1883b20d181d0b8d0b4d0b5d0bdd18cd0b53b20d180d0b5d0bcd0bdd0b0d0b1d0bed1803b20d0bdd0b0d181d0bed18120427261766f2048502050756d703b20d0bad180d0b5d181d0bbd0be2e20d0a5d0b0d180d0b0d0bad182d0b5d180d0b8d181d182d0b8d0bad0b8, 'sups\\December2024\\Q589ZnRqruUPg3vTay0f.jpg', 0x5b22737570735c5c446563656d626572323032345c5c4932346e4a4f575145424e34654d6947736247532e6a7067222c22737570735c5c446563656d626572323032345c5c57596a6162324e48634e434f616d5633465845442e6a7067222c22737570735c5c446563656d626572323032345c5c6b664e4c5557654641704e62533836414c4761622e6a7067222c22737570735c5c446563656d626572323032345c5c48705478625568325a476d4276497271445235512e6a7067222c22737570735c5c446563656d626572323032345c5c446736526277454f424f426972615834427853312e6a7067225d, NULL, '30200', 'L', 'DC Shoes', 'Синий', '2024-12-31 11:51:58', '2024-12-07 15:23:06'),
(2, 'SUP доска надувная Adventum 11.6 Mint 2024', 0xd09dd0b0d0b4d183d0b2d0bdd0b0d18f20d181d0b0d0bfd0b4d0bed181d0bad0b020416476656e74756d2052616e67652031312e3620486f74204d696e7420e2809420d18dd182d0be20d181d182d0b8d0bbd18cd0bdd0bed0b520d0b820d184d183d0bdd0bad186d0b8d0bed0bdd0b0d0bbd18cd0bdd0bed0b520d181d180d0b5d0b4d181d182d0b2d0be20d0b4d0bbd18f20d0b2d0bed0b4d0bdd18bd18520d0bfd180d0b8d0bad0bbd18ed187d0b5d0bdd0b8d0b92e20d095d0b520d0b2d0bdd183d188d0b8d182d0b5d0bbd18cd0bdd18bd0b920d186d0b2d0b5d18220d0bfd180d0b8d0b2d0bbd0b5d0bad0b0d0b5d18220d0b2d0bdd0b8d0bcd0b0d0bdd0b8d0b52c20d0b020d181d0bed0b2d180d0b5d0bcd0b5d0bdd0bdd18bd0b920d0b4d0b8d0b7d0b0d0b9d0bd20d0bed0b1d0b5d181d0bfd0b5d187d0b8d0b2d0b0d0b5d18220d183d181d182d0bed0b9d187d0b8d0b2d0bed181d182d18c20d0b820d0bad0bed0bcd184d0bed180d1822e20d098d0b7d0b3d0bed182d0bed0b2d0bbd0b5d0bdd0b020d0b8d0b720d0b2d18bd181d0bed0bad0bed0bad0b0d187d0b5d181d182d0b2d0b5d0bdd0bdd18bd18520d0bcd0b0d182d0b5d180d0b8d0b0d0bbd0bed0b22c20d187d182d0be20d0b3d0b0d180d0b0d0bdd182d0b8d180d183d0b5d18220d0b4d0bed0bbd0b3d0bed0b2d0b5d187d0bdd0bed181d182d18c20d0b820d0bfd180d0b5d0b2d0bed181d185d0bed0b4d0bdd0bed0b520d0bad0b0d187d0b5d181d182d0b2d0be2e20d09dd0b0d0b4d0b5d0b6d0bdd0bed181d182d18c20d18dd182d0bed0b920d0b4d0bed181d0bad0b820d0bfd0bed0b4d182d0b2d0b5d180d0b6d0b4d0b5d0bdd0b020d0b4d0b0d0b6d0b520d0bfd180d0b820d0b8d0bdd182d0b5d0bdd181d0b8d0b2d0bdd0bed0bc20d0b8d181d0bfd0bed0bbd18cd0b7d0bed0b2d0b0d0bdd0b8d0b82e, 'sups\\December2024\\PgAebJJftNIBrfTNy3hD.jpg', 0x5b22737570735c5c446563656d626572323032345c5c5064694175453363744330305479635a796a7a732e6a7067222c22737570735c5c446563656d626572323032345c5c74706d33596776486c454e7a7a326565637770452e6a7067222c22737570735c5c446563656d626572323032345c5c74334f766236637951326832784c416a63784f702e6a7067222c22737570735c5c446563656d626572323032345c5c69714a58754146315275774e394735554a6470322e6a7067225d, NULL, '34700', 'L', 'DC Shoes', 'Черный', '2024-12-31 11:50:18', '2024-12-07 15:24:00'),
(3, 'Сапборд ADVENTUM 11.4 Orange', 0xd0a1d0b5d180d0b8d18f20416476656e74756d20506164646c65626f6172647320e2809420d18dd182d0be20d0bfd183d182d0b5d188d0b5d181d182d0b2d0b8d0b520d0b220d0bcd0b8d18020d181d0bed0b2d0b5d180d188d0b5d0bdd181d182d0b2d0b02e20d09ad0b0d0b6d0b4d0b0d18f20d0b4d0bed181d0bad0b020d0b220d18dd182d0bed0b920d181d0b5d180d0b8d0b820322dd181d0bbd0bed0b9d0bdd0b0d18f2c20d180d0b0d0b7d180d0b0d0b1d0b0d182d18bd0b2d0b0d0b5d182d181d18f20d18120d0b8d181d0bfd0bed0bbd18cd0b7d0bed0b2d0b0d0bdd0b8d0b5d0bc20d0bfd0b5d180d0b5d0b4d0bed0b2d18bd18520d182d0b5d185d0bdd0bed0bbd0bed0b3d0b8d0b920d0b820d0b1d0bed0b3d0b0d182d0bed0b3d0be20d0bed0bfd18bd182d0b020d0b1d180d0b5d0bdd0b4d0b020476c61646961746f722e2020d0a2d189d0b0d182d0b5d0bbd18cd0bdd0be20d0bfd180d0bed0b4d183d0bcd0b0d0bdd0bdd0b0d18f20d0bad0bed0bcd0bfd0bbd0b5d0bad182d0b0d186d0b8d18f20d181d0b0d0bfd0b4d0bed181d0bed0ba20d0b4d0bbd18f20d0b3d180d0b5d0b1d0bbd0b820d0bed0b1d0b5d181d0bfd0b5d187d0b8d18220d0b2d0b0d0bc20d0b820d0b2d0b0d188d0b5d0b920d181d0b5d0bcd18cd0b520d0bdd0b5d0b7d0b0d0b1d18bd0b2d0b0d0b5d0bcd18bd0b520d0b2d0bfd0b5d187d0b0d182d0bbd0b5d0bdd0b8d18f20d0bed18220d0bad0b0d182d0b0d0bdd0b8d18f20d0bdd0b020d0b2d0bed0b4d0b52e, 'sups\\December2024\\OCwNTEhNyiRPwFkXeacb.jpg', 0x5b22737570735c5c446563656d626572323032345c5c4c4c4d515667567531456a3955507534586d4a4d2e6a7067222c22737570735c5c446563656d626572323032345c5c62704f7263395538494d42506547495769386f362e6a7067222c22737570735c5c446563656d626572323032345c5c3650476e77476774724a74326a7a5a426b4d50462e6a7067222c22737570735c5c446563656d626572323032345c5c33756d6b654c45454a6c7350433168477454454f2e6a7067225d, NULL, '34500', 'L', 'DC Shoes', 'Красный', '2024-12-31 11:49:00', '2024-12-07 15:28:42');

-- --------------------------------------------------------

--
-- Структура таблицы `surfings`
--

CREATE TABLE `surfings` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` blob,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_lots` blob,
  `price_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `surfings`
--

INSERT INTO `surfings` (`id`, `title`, `desc`, `img`, `img_lots`, `price_discount`, `price`, `color_id`, `brand_id`, `size_id`, `updated_at`, `created_at`) VALUES
(1, 'Cерфборд Joys Peak 5\'3', 0x5065616b20e2809320686172642dd0b4d0bed181d0bad0b020d0b4d0bbd18f20d181d0b8d182d0b8d0b2d0b5d0b9d0b2d0b0202c20d180d0b8d0b2d0b5d180d181d0b5d180d184d0b8d0bdd0b3d0b020d0b820d0bcd0b8d0bbd0bbd0b8d0bed0bdd0b020d0bdd0b0d0b7d0b2d0b0d0bdd0b8d0b920d0bad0bbd0b0d181d181d0bdd18bd18520d181d182d0b0d186d0b8d0bed0bdd0b0d180d0bdd18bd18520d0b2d0bed0bbd0bd2c20d0b8d0bcd0b8d182d0b8d180d183d18ed189d0b8d18520d0bed0bad0b5d0b0d0bdd0b8d187d0b5d181d0bad0b8d0b52e2020d09220d09cd0bed181d0bad0b2d0b520d182d0b0d0bad0b8d18520d0b2d0bed0bbd0bd20d181d0b5d0b9d187d0b0d18120333a2022466c6f77204d6f73636f77222c20225375726662726f746865727320536b6f6c6b6f766f222c2022467265657a6f6e65222c20d0bed0b4d0bdd0b020d0b220d0a1d0b0d0bdd0bad1822dd09fd0b5d182d0b5d180d0b1d183d180d0b3d0b5202d202250697465726c616e642220d0b820d0b5d0b4d0b8d0bdd181d182d0b2d0b5d0bdd0bdd0b0d18f20d0b2d0bed0bbd0bdd0b020d0bdd0b020d0bed182d0bad180d18bd182d0bed0bc20d0b2d0bed0b7d0b4d183d185d0b52c20d183d181d182d0b0d0bdd0bed0b2d0bbd0b5d0bdd0bdd0b0d18f20d0bdd0b020d180d0b5d0bad0b520d0bfd0bed0b420d09bd0b8d0bfd0b5d186d0bad0bed0bc20d0b220d0b32e20d09bd0b5d0b1d0b5d0b4d18fd0bdd18c202d2022446f6e73757266222e, 'surfings\\December2024\\67ihlmxUfK6JyFup5byj.jpg', 0x5b2273757266696e67735c5c446563656d626572323032345c5c61704157364436325049767258386f58534b34392e6a7067222c2273757266696e67735c5c446563656d626572323032345c5c4463443157307a4d6a4476466d6e5443446d53692e6a7067222c2273757266696e67735c5c446563656d626572323032345c5c7a49554a386d76565237556c32624767396a6a6c2e6a7067225d, NULL, '95000', 'Черный', 'BoardRiders', 'L', '2024-12-31 11:46:39', '2024-12-07 15:49:47'),
(2, 'Сёрфборд SCISSORS Scramble 6\'2\"', 0x536372616d626c6520d18dd182d0be20d0b4d0bed181d0bad0b020d0bdd0b020d0b2d181d0b520d0b2d180d0b5d0bcd0b5d0bdd0b020d0b820d0bdd0b020d0bbd18ed0b1d0bed0b920d180d0b0d0b7d0bcd0b5d18020d0b2d0bed0bbd0bd2e2020d094d0bed181d182d0b0d182d0bed187d0bdd0be20d0b0d0b3d180d0b5d181d181d0b8d0b2d0bdd18bd0b920d0b4d0bbd18f20d184d0b0d0bdd0b1d0bed180d0b4d0b020d180d0bed0bad0b5d18020d0b220d181d0bed187d0b5d182d0b0d0bdd0b8d0b820d18120d181d0b8d0bdd0b3d0bb20d182d18320d0b4d0b0d0b1d0bb20d0bad0bed0bdd0bad0b5d0b9d0b2d0bed0bc2020d0b4d0b0d181d18220d0b1d0bed0bbd18cd188d183d18e20d181d0bad0bed180d0bed181d182d18c20d0b820d185d0bed180d0bed188d183d18e20d183d0bfd180d0b0d0b2d0bbd18fd0b5d0bcd0bed181d182d18c2e, 'surfings\\December2024\\w2DSfRB7xCD4ePQJEGCN.jpg', 0x5b2273757266696e67735c5c446563656d626572323032345c5c485379675836316a74484d5a3553626851486f342e6a7067222c2273757266696e67735c5c446563656d626572323032345c5c59357772515637766a53644c4e3477457a784c462e6a7067222c2273757266696e67735c5c446563656d626572323032345c5c744a6a3454744e33467837686963436c317246572e6a706567225d, '25', '79000', 'Красный', 'DC Shoes', 'L', '2024-12-31 11:45:20', '2024-12-07 15:51:26'),
(3, 'Сёрфборд SCISSORS Low Bro Neon Green 5\'5', 0x4c6f7742726f202d20d0bfd0b5d180d184d0bed180d0bcd0b0d0bdd18120d188d0bed180d182d0b1d0bed180d0b42c20d180d0b0d0b7d180d0b0d0b1d0bed182d0b0d0bdd0bdd18bd0b920d181d0bfd0b5d186d0b8d0b0d0bbd18cd0bdd0be20d0b4d0bbd18f20d180d0b8d0b2d0b5d18020d181d191d180d184d0b8d0bdd0b3d0b020d0b820d0b8d181d0bad183d181d181d182d0b2d0b5d0bdd0bdd18bd18520d0b2d0bed0bbd0bd2e20d0a0d0b0d181d181d0bbd0b0d0b1d0bbd0b5d0bdd0bdd18bd0b920d180d0bed0bad0b5d1802c20d0bfd0bed0b7d0b2d0bed0bbd0b8d18220d0b4d0b5d180d0b6d0b0d182d18cd181d18f20d0b2d18bd188d0b520d0bdd0b020d0b2d0b5d180d185d0bdd0b5d0b920d181d0b5d0bad186d0b8d0b820d0b2d0bed0bbd0bdd18b2c20d0b8d0b4d0b5d0b0d0bbd18cd0bdd0be20d181d0b1d0b0d0bbd0b0d0bdd181d0b8d180d0bed0b2d0b0d0bdd0bdd0b0d18f20d0bad183d180d0b2d0b0d182d183d180d0b020d0b0d183d182d0bbd0b0d0b9d0bdd0b020d0b820d181d0bad0b2d0bed18820d182d0b5d0b9d0bb2c20d0b2d0bcd0b5d181d182d0b520d18120d181d0b8d0bdd0b3d0bb20d0bad0bed0bdd0bad0b5d0b9d0b2d0bed0bc20d0b4d0b5d0bbd0b0d18ed18220d18dd182d18320d0b4d0bed181d0bad18320d0bed182d0b7d18bd0b2d187d0b8d0b2d0bed0b92c20d0b1d18bd181d182d180d0bed0b920d0b820d0bfd180d18bd0b3d183d187d0b5d0b92e20d0a8d0b5d0b9d0bf20d0bdd0b0d181d182d180d0bed0b5d0bd20d0b820d0bed182d0bbd0b0d0b6d0b5d0bd20d0bad0bed0bcd0b0d0bdd0b4d0bed0b92053636973736f72732053757266626f6172647320d0b4d0bbd18f20d0b2d18bd0bfd0bed0bbd0bdd0b5d0bdd0b8d18f20d181d0bed180d0b5d0b2d0bdd0bed0b2d0b0d182d0b5d0bbd18cd0bdd18bd18520d182d180d18ed0bad0bed0b22c20d0b8d18520d183d181d0bfd0b5d188d0bdd0bed0b3d0be20d0bfd180d0b8d0b7d0b5d0bcd0bbd0b5d0bdd0b8d18f20d0b820d0b2d0b0d188d0b5d0b3d0be20d0bfd180d0bed0b3d180d0b5d181d181d0b02e, 'surfings\\December2024\\j5IJ0103wAFPBiXBD9TV.jpg', 0x5b2273757266696e67735c5c446563656d626572323032345c5c594f554b57374b514f76796e54687238437149482e6a706567222c2273757266696e67735c5c446563656d626572323032345c5c773153306553546d646b6c71575848686a5348392e6a7067225d, NULL, '60000', 'Красный', 'DC Shoes', 'L', '2024-12-31 11:42:28', '2024-12-07 15:55:20'),
(5, 'Серфборд NSP Soft Long Tail DIP', 0xd0a1d0b5d180d184d0b1d0bed180d0b420d0a3d180d0bed0b2d0b5d0bdd18c20d180d0b0d0b9d0b4d0b5d180d0b03a20d0bdd0b0d187d0b8d0bdd0b0d18ed189d0b8d0b92c20d0bfd180d0bed0b4d0b2d0b8d0bdd183d182d18bd0b920d094d0bdd0be3a20d0bfd0bbd0bed181d0bad0bed0b520d0b4d0bdd0be20d098d0b4d0b5d0b0d0bbd18cd0bdd18bd0b520d0b2d0bed0bbd0bdd18b3a20312d3620d184d183d182d0bed0b220d09ad0bed0bdd181d182d180d183d0bad186d0b8d18f20503220536f66743a20d182d0b5d185d0bdd0bed0bbd0bed0b3d0b8d187d0bdd0b0d18f20d0bad0bed0bdd181d182d180d183d0bad186d0b8d18f2c20d0bfd180d0b5d0b4d0bdd0b0d0b7d0bdd0b0d187d0b5d0bdd0bdd0b0d18f20d0b4d0bbd18f20d0bed0b1d183d187d0b5d0bdd0b8d18f20d181d191d180d184d0b8d0bdd0b3d1832e20d094d0bed181d182d0b0d182d0bed187d0bdd0be20d0bcd18fd0b3d0bad0b0d18f2c20d0bfd180d0bed187d0bdd0b0d18f2c20d183d0b4d0bed0b1d0bdd0b0d18f20d0b820d0b1d0b5d0b7d0bed0bfd0b0d181d0bdd0b0d18f20d0a3d181d0b8d0bbd0b8d0b2d0b0d18ed189d0b8d0b520d0b6d0b5d181d182d0bad0bed181d182d18c20d181d182d180d0b8d0bdd0b3d0b5d180d18b20d0b8d0b720d0b1d0b0d0bcd0b1d183d0bad0b020283220d188d1822e20d0b4d0bbd18f20d180d0b0d0b7d0bcd0b5d180d0bed0b2203130273220d0b8203131273029, 'surfings\\December2024\\998uhYC8hzsJX9k4TUZF.jpg', 0x5b2273757266696e67735c5c446563656d626572323032345c5c74596b6b51743371657539346454576f387238372e6a7067222c2273757266696e67735c5c446563656d626572323032345c5c6a4b4a415578763649785158365a4735636631652e6a7067225d, '13', '68950', 'Черный', 'DC Shoes', 'S', '2024-12-14 11:46:07', '2024-12-14 11:46:07');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@mail.com', 'users/default.png', NULL, '$2y$12$fojTBEADvnsOijLnVfwVA.PEjfJQY3uFqmR4Xeqkdf3Zo8Am/VDsG', 'wrhbA1JGuce1VClXM5jhC08sF30jwjF10dUyWEHYak7gSA934MJ2NTfXzjPv', NULL, '2024-12-02 16:27:08', '2024-12-02 16:27:08'),
(4, 2, 'aaa', 'aaa@mail.com', 'users/default.png', NULL, '$2y$12$KY2yOJkkCWwjtLI/8ARlDOSeu52dpbdAuHj7.BRreaDLe5Yh1YZ.q', NULL, NULL, '2025-01-02 15:04:36', '2025-01-02 15:04:36');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category_brands`
--
ALTER TABLE `category_brands`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `longboards`
--
ALTER TABLE `longboards`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `skateboards`
--
ALTER TABLE `skateboards`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `skis`
--
ALTER TABLE `skis`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `snows`
--
ALTER TABLE `snows`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sups`
--
ALTER TABLE `sups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `surfings`
--
ALTER TABLE `surfings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `category_brands`
--
ALTER TABLE `category_brands`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `clothes`
--
ALTER TABLE `clothes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `longboards`
--
ALTER TABLE `longboards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `shoes`
--
ALTER TABLE `shoes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `skateboards`
--
ALTER TABLE `skateboards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `skis`
--
ALTER TABLE `skis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `snows`
--
ALTER TABLE `snows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `sups`
--
ALTER TABLE `sups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `surfings`
--
ALTER TABLE `surfings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
