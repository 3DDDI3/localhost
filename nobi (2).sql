-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 23 2024 г., 17:55
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
-- База данных: `nobi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` bigint UNSIGNED NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hide` tinyint UNSIGNED DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_access_rights`
--

CREATE TABLE `admin_access_rights` (
  `id` bigint UNSIGNED NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_class_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_access_rights`
--

INSERT INTO `admin_access_rights` (`id`, `path`, `type`, `user_class_id`, `created_at`, `updated_at`) VALUES
(213, 'lending.text', 'edit', '4', '2023-04-26 10:15:33', '2023-04-26 10:15:33'),
(214, 'users.users', 'edit', '4', '2023-04-26 10:15:33', '2023-04-26 10:15:33'),
(215, 'settings', 'edit', '4', '2023-04-26 10:15:33', '2023-04-26 10:15:33'),
(276, 'lending.slider', 'read', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(277, 'lending.slider', 'edit', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(278, 'lending.slider', 'delete', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(279, 'lending.slider2', 'read', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(280, 'lending.slider2', 'edit', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(281, 'lending.slider2', 'delete', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(282, 'lending.text', 'read', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(283, 'lending.text', 'edit', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(284, 'lending.text', 'delete', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(285, 'lending.specs', 'read', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(286, 'lending.specs', 'edit', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(287, 'lending.specs', 'delete', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(288, 'users.users', 'read', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(289, 'users.users', 'edit', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(290, 'users.users', 'delete', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(291, 'users.classes', 'read', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(292, 'users.classes', 'edit', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(293, 'users.classes', 'delete', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(294, 'requests', 'read', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(295, 'requests', 'edit', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(296, 'requests', 'delete', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(297, 'settings', 'read', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(298, 'settings', 'edit', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(299, 'settings', 'delete', '1', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(300, 'lending.tours', 'edit', '1', NULL, NULL),
(301, 'lending.tours', 'read', '1', NULL, NULL),
(302, 'lending.tours', 'delete', '1', NULL, NULL),
(303, 'lending.tours.countries', 'edit', '1', NULL, NULL),
(304, 'lending.tours.countries', 'delete', '1', NULL, NULL),
(305, 'lending.tours.countries', 'read', '1', NULL, NULL),
(306, 'lending.tours', 'edit', '1', NULL, NULL),
(307, 'lending.tours', 'delete', '1', NULL, NULL),
(312, 'lending.tours.programs', 'edit', '1', NULL, NULL),
(313, 'lending.tours.programs', 'delete', '1', NULL, NULL),
(314, 'lending.tours.programs', 'read', '1', NULL, NULL),
(315, 'lending.news', 'edit', '1', NULL, NULL),
(316, 'lending.news', 'delete', '1', NULL, NULL),
(317, 'lending.news', 'read', '1', NULL, NULL),
(318, 'lending.blogs', 'edit', '1', NULL, NULL),
(319, 'lending.blogs', 'delete', '1', NULL, NULL),
(320, 'lending.blogs', 'read', '1', NULL, NULL),
(321, 'lending.blogs', 'edit', '1', NULL, NULL),
(322, 'lending.blogs', 'delete', '1', NULL, NULL),
(323, 'lending.pages', 'read', '1', NULL, NULL),
(324, 'lending.pages', 'delete', '1', NULL, NULL),
(325, 'lending.pages', 'edit', '1', NULL, NULL),
(326, 'services.infografika', 'read', '1', NULL, NULL),
(327, 'services.infografika', 'delete', '1', NULL, NULL),
(328, 'services.infografika', 'edit', '1', NULL, NULL),
(329, 'services.personal', 'edit', '1', NULL, NULL),
(330, 'services.personal', 'delete', '1', NULL, NULL),
(331, 'services.personal', 'read', '1', NULL, NULL),
(332, 'services.documents', 'edit', '1', NULL, NULL),
(333, 'services.documents', 'read', '1', NULL, NULL),
(334, 'services.documents', 'delete', '1', NULL, NULL),
(335, 'services.advs', 'edit', '1', NULL, NULL),
(336, 'services.advs', 'delete', '1', NULL, NULL),
(337, 'services.advs', 'read', '1', NULL, NULL),
(338, 'lending.tours.types', 'read', '1', NULL, NULL),
(339, 'lending.tours.types', 'edit', '1', NULL, NULL),
(340, 'lending.tours.types', 'delete', '1', NULL, NULL),
(341, 'lending.tours.status', 'edit', '1', NULL, NULL),
(342, 'lending.tours.status', 'delete', '1', NULL, NULL),
(343, 'lending.tours.status', 'read', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_event_logs`
--

CREATE TABLE `admin_event_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `action` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_model` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_event_logs`
--

INSERT INTO `admin_event_logs` (`id`, `action`, `path`, `user_id`, `item_id`, `item_model`, `created_at`, `updated_at`) VALUES
(1, 'update', 'users.classes', '4', '1', 'App\\Models\\User\\UserСlass', '2023-04-25 12:33:30', '2023-04-25 12:33:30'),
(2, 'create', 'slider', '4', '1', 'App\\Models\\Slider', '2023-04-25 12:45:13', '2023-04-25 12:45:13'),
(3, 'update', 'slider', '4', '1', 'App\\Models\\Slider', '2023-04-25 12:45:16', '2023-04-25 12:45:16'),
(4, 'update', 'slider', '4', '1', 'App\\Models\\Slider', '2023-04-25 12:46:16', '2023-04-25 12:46:16'),
(5, 'update', 'slider', '4', '1', 'App\\Models\\Slider', '2023-04-25 12:47:25', '2023-04-25 12:47:25'),
(6, 'update', 'slider', '4', '1', 'App\\Models\\Slider', '2023-04-25 12:47:57', '2023-04-25 12:47:57'),
(7, 'update', 'slider', '4', '1', 'App\\Models\\Slider', '2023-04-25 13:42:42', '2023-04-25 13:42:42'),
(8, 'update', 'users.classes', '4', '1', 'App\\Models\\User\\UserСlass', '2023-04-25 13:57:24', '2023-04-25 13:57:24'),
(9, 'update', 'users.classes', '4', '1', 'App\\Models\\User\\UserСlass', '2023-04-25 13:58:36', '2023-04-25 13:58:36'),
(10, 'update', 'users.classes', '4', '1', 'App\\Models\\User\\UserСlass', '2023-04-25 14:03:22', '2023-04-25 14:03:22'),
(11, 'update', 'users.classes', '4', '1', 'App\\Models\\User\\UserСlass', '2023-04-25 14:15:43', '2023-04-25 14:15:43'),
(12, 'update', 'users.classes', '4', '1', 'App\\Models\\User\\UserСlass', '2023-04-25 14:22:28', '2023-04-25 14:22:28'),
(13, 'update', 'users.classes', '4', '1', 'App\\Models\\User\\UserСlass', '2023-04-25 14:25:32', '2023-04-25 14:25:32'),
(14, 'update', 'users.classes', '4', '1', 'App\\Models\\User\\UserСlass', '2023-04-25 14:36:47', '2023-04-25 14:36:47'),
(15, 'create', 'lending.text', '4', '1', 'App\\Models\\Lending\\Texts', '2023-04-25 14:50:03', '2023-04-25 14:50:03'),
(16, 'create', 'lending.text', '4', '2', 'App\\Models\\Lending\\Texts', '2023-04-25 14:50:37', '2023-04-25 14:50:37'),
(17, 'create', 'lending.text', '4', '3', 'App\\Models\\Lending\\Texts', '2023-04-25 14:51:02', '2023-04-25 14:51:02'),
(18, 'create', 'lending.text', '4', '4', 'App\\Models\\Lending\\Texts', '2023-04-25 14:51:34', '2023-04-25 14:51:34'),
(19, 'create', 'lending.text', '4', '5', 'App\\Models\\Lending\\Texts', '2023-04-25 14:52:07', '2023-04-25 14:52:07'),
(20, 'create', 'lending.text', '4', '6', 'App\\Models\\Lending\\Texts', '2023-04-25 14:52:22', '2023-04-25 14:52:22'),
(21, 'update', 'lending.text', '4', '6', 'App\\Models\\Lending\\Texts', '2023-04-25 14:52:27', '2023-04-25 14:52:27'),
(22, 'create', 'lending.text', '4', '7', 'App\\Models\\Lending\\Texts', '2023-04-25 14:53:20', '2023-04-25 14:53:20'),
(23, 'create', 'lending.text', '4', '8', 'App\\Models\\Lending\\Texts', '2023-04-25 14:53:39', '2023-04-25 14:53:39'),
(24, 'create', 'lending.text', '4', '9', 'App\\Models\\Lending\\Texts', '2023-04-25 14:53:59', '2023-04-25 14:53:59'),
(25, 'create', 'lending.text', '4', '10', 'App\\Models\\Lending\\Texts', '2023-04-25 14:54:13', '2023-04-25 14:54:13'),
(26, 'update', 'lending.text', '4', '1', 'App\\Models\\Lending\\Texts', '2023-04-25 15:04:53', '2023-04-25 15:04:53'),
(27, 'update', 'lending.text', '4', '5', 'App\\Models\\Lending\\Texts', '2023-04-25 15:20:41', '2023-04-25 15:20:41'),
(28, 'create', 'lending.slider', '4', '2', 'App\\Models\\Lending\\Slider', '2023-04-25 15:25:18', '2023-04-25 15:25:18'),
(29, 'update', 'lending.slider', '4', '1', 'App\\Models\\Lending\\Slider', '2023-04-25 15:25:38', '2023-04-25 15:25:38'),
(30, 'update', 'lending.slider', '4', '1', 'App\\Models\\Lending\\Slider', '2023-04-25 15:25:56', '2023-04-25 15:25:56'),
(31, 'create', 'lending.slider', '4', '3', 'App\\Models\\Lending\\Slider', '2023-04-25 15:26:26', '2023-04-25 15:26:26'),
(32, 'create', 'lending.slider', '4', '4', 'App\\Models\\Lending\\Slider', '2023-04-25 15:27:01', '2023-04-25 15:27:01'),
(33, 'update', 'lending.slider', '4', '4', 'App\\Models\\Lending\\Slider', '2023-04-25 15:27:26', '2023-04-25 15:27:26'),
(34, 'create', 'lending.slider', '4', '5', 'App\\Models\\Lending\\Slider', '2023-04-25 15:28:00', '2023-04-25 15:28:00'),
(35, 'create', 'lending.slider', '4', '6', 'App\\Models\\Lending\\Slider', '2023-04-25 15:29:06', '2023-04-25 15:29:06'),
(36, 'create', 'lending.slider', '4', '7', 'App\\Models\\Lending\\Slider', '2023-04-25 15:29:06', '2023-04-25 15:29:06'),
(37, 'update', 'lending.slider', '4', '7', 'App\\Models\\Lending\\Slider', '2023-04-25 15:29:25', '2023-04-25 15:29:25'),
(38, 'create', 'lending.slider', '4', '8', 'App\\Models\\Lending\\Slider', '2023-04-25 15:29:38', '2023-04-25 15:29:38'),
(39, 'create', 'lending.slider', '4', '9', 'App\\Models\\Lending\\Slider', '2023-04-25 15:29:56', '2023-04-25 15:29:56'),
(40, 'create', 'lending.slider', '4', '10', 'App\\Models\\Lending\\Slider', '2023-04-25 15:30:10', '2023-04-25 15:30:10'),
(41, 'create', 'lending.slider', '4', '11', 'App\\Models\\Lending\\Slider', '2023-04-25 15:30:26', '2023-04-25 15:30:26'),
(42, 'update', 'lending.slider', '4', '6', 'App\\Models\\Lending\\Slider', '2023-04-25 15:35:07', '2023-04-25 15:35:07'),
(43, 'update', 'lending.slider', '4', '6', 'App\\Models\\Lending\\Slider', '2023-04-25 15:35:24', '2023-04-25 15:35:24'),
(44, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2023-04-26 09:57:00', '2023-04-26 09:57:00'),
(45, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2023-04-26 09:57:04', '2023-04-26 09:57:04'),
(46, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2023-04-26 09:58:50', '2023-04-26 09:58:50'),
(47, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2023-04-26 09:59:22', '2023-04-26 09:59:22'),
(48, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2023-04-26 09:59:59', '2023-04-26 09:59:59'),
(49, 'create', 'users.users', '4', '5', 'App\\Models\\User\\User', '2023-04-26 10:08:36', '2023-04-26 10:08:36'),
(50, 'update', 'users.users', '4', '6', 'App\\Models\\User\\UserСlass', '2023-04-26 10:12:54', '2023-04-26 10:12:54'),
(51, 'create', 'users.classes', '4', '4', 'App\\Models\\User\\UserСlass', '2023-04-26 10:15:33', '2023-04-26 10:15:33'),
(52, 'create', 'users.classes', '4', '5', 'App\\Models\\User\\UserСlass', '2023-04-26 10:16:50', '2023-04-26 10:16:50'),
(53, 'update', 'users.classes', '4', '5', 'App\\Models\\User\\UserСlass', '2023-04-26 10:16:55', '2023-04-26 10:16:55'),
(54, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2023-04-26 10:21:03', '2023-04-26 10:21:03'),
(55, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2023-04-26 10:21:20', '2023-04-26 10:21:20'),
(56, 'update', 'users.classes', '4', '1', 'App\\Models\\User\\UserСlass', '2023-04-26 10:32:21', '2023-04-26 10:32:21'),
(57, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2023-04-26 13:43:59', '2023-04-26 13:43:59'),
(58, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2023-04-26 13:44:05', '2023-04-26 13:44:05'),
(59, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2023-04-26 13:44:11', '2023-04-26 13:44:11'),
(60, 'update', 'lending.text', '4', '2', 'App\\Models\\Lending\\Texts', '2023-04-27 10:55:56', '2023-04-27 10:55:56'),
(61, 'update', 'lending.slider', '4', '10', 'App\\Models\\Lending\\Slider', '2023-04-27 10:56:25', '2023-04-27 10:56:25'),
(62, 'update', 'lending.slider', '4', '9', 'App\\Models\\Lending\\Slider', '2023-04-27 10:56:37', '2023-04-27 10:56:37'),
(63, 'update', 'lending.slider', '4', '8', 'App\\Models\\Lending\\Slider', '2023-04-27 10:56:48', '2023-04-27 10:56:48'),
(64, 'update', 'lending.slider', '4', '6', 'App\\Models\\Lending\\Slider', '2023-04-27 10:57:01', '2023-04-27 10:57:01'),
(65, 'update', 'lending.slider', '4', '5', 'App\\Models\\Lending\\Slider', '2023-04-27 10:57:14', '2023-04-27 10:57:14'),
(66, 'update', 'lending.slider', '4', '4', 'App\\Models\\Lending\\Slider', '2023-04-27 10:57:30', '2023-04-27 10:57:30'),
(67, 'update', 'lending.slider', '4', '3', 'App\\Models\\Lending\\Slider', '2023-04-27 10:57:54', '2023-04-27 10:57:54'),
(68, 'update', 'lending.slider', '4', '1', 'App\\Models\\Lending\\Slider', '2023-04-27 10:58:11', '2023-04-27 10:58:11'),
(69, 'update', 'lending.text', '4', '6', 'App\\Models\\Lending\\Texts', '2023-04-27 10:59:21', '2023-04-27 10:59:21'),
(70, 'update', 'lending.text', '4', '6', 'App\\Models\\Lending\\Texts', '2023-04-27 10:59:56', '2023-04-27 10:59:56'),
(71, 'update', 'lending.text', '4', '4', 'App\\Models\\Lending\\Texts', '2023-04-27 13:48:14', '2023-04-27 13:48:14'),
(72, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2023-04-28 14:50:27', '2023-04-28 14:50:27'),
(73, 'update', 'lending.text', '4', '2', 'App\\Models\\Lending\\Texts', '2023-04-28 14:52:24', '2023-04-28 14:52:24'),
(74, 'update', 'lending.text', '4', '2', 'App\\Models\\Lending\\Texts', '2023-04-28 14:52:46', '2023-04-28 14:52:46'),
(75, 'update', 'lending.text', '4', '3', 'App\\Models\\Lending\\Texts', '2023-04-28 14:53:14', '2023-04-28 14:53:14'),
(76, 'update', 'lending.text', '4', '6', 'App\\Models\\Lending\\Texts', '2023-04-28 14:55:52', '2023-04-28 14:55:52'),
(77, 'create', 'lending.text', '4', '7', 'App\\Models\\Lending\\Texts', '2023-05-02 08:22:12', '2023-05-02 08:22:12'),
(78, 'update', 'lending.text', '4', '7', 'App\\Models\\Lending\\Texts', '2023-05-02 08:23:00', '2023-05-02 08:23:00'),
(79, 'create', 'lending.text', '4', '8', 'App\\Models\\Lending\\Texts', '2023-05-02 08:23:43', '2023-05-02 08:23:43'),
(80, 'update', 'users.classes', '4', '1', 'App\\Models\\User\\UserСlass', '2023-05-02 08:33:24', '2023-05-02 08:33:24'),
(81, 'create', 'lending.about', '4', '13', 'App\\Models\\Lending\\About', '2023-05-02 08:50:20', '2023-05-02 08:50:20'),
(82, 'update', 'lending.about', '4', '13', 'App\\Models\\Lending\\About', '2023-05-02 08:50:24', '2023-05-02 08:50:24'),
(83, 'update', 'lending.slider', '4', '11', 'App\\Models\\Lending\\Slider', '2023-05-12 07:50:23', '2023-05-12 07:50:23'),
(84, 'update', 'lending.slider', '4', '9', 'App\\Models\\Lending\\Slider', '2023-05-12 07:55:58', '2023-05-12 07:55:58'),
(85, 'update', 'lending.slider', '4', '8', 'App\\Models\\Lending\\Slider', '2023-05-12 07:56:00', '2023-05-12 07:56:00'),
(86, 'update', 'lending.slider', '4', '5', 'App\\Models\\Lending\\Slider', '2023-05-12 07:56:02', '2023-05-12 07:56:02'),
(87, 'update', 'lending.slider', '4', '4', 'App\\Models\\Lending\\Slider', '2023-05-12 07:56:05', '2023-05-12 07:56:05'),
(88, 'update', 'lending.slider', '4', '2', 'App\\Models\\Lending\\Slider', '2023-05-12 07:56:08', '2023-05-12 07:56:08'),
(89, 'update', 'lending.slider', '4', '1', 'App\\Models\\Lending\\Slider', '2023-05-12 07:56:10', '2023-05-12 07:56:10'),
(90, 'update', 'lending.slider', '4', '3', 'App\\Models\\Lending\\Slider', '2023-05-12 07:56:15', '2023-05-12 07:56:15'),
(91, 'update', 'lending.slider', '4', '6', 'App\\Models\\Lending\\Slider', '2023-05-12 07:56:16', '2023-05-12 07:56:16'),
(92, 'update', 'lending.slider', '4', '10', 'App\\Models\\Lending\\Slider', '2023-05-12 07:56:19', '2023-05-12 07:56:19'),
(93, 'update', 'users.classes', '4', '1', 'App\\Models\\User\\UserСlass', '2023-05-12 08:07:23', '2023-05-12 08:07:23'),
(94, 'update', 'lending.text', '4', '1', 'App\\Models\\Lending\\Texts', '2023-05-12 08:10:40', '2023-05-12 08:10:40'),
(95, 'update', 'lending.text', '4', '2', 'App\\Models\\Lending\\Texts', '2023-05-12 08:10:41', '2023-05-12 08:10:41'),
(96, 'update', 'lending.text', '4', '3', 'App\\Models\\Lending\\Texts', '2023-05-12 08:10:42', '2023-05-12 08:10:42'),
(97, 'update', 'lending.text', '4', '4', 'App\\Models\\Lending\\Texts', '2023-05-12 08:10:44', '2023-05-12 08:10:44'),
(98, 'update', 'lending.text', '4', '5', 'App\\Models\\Lending\\Texts', '2023-05-12 08:10:45', '2023-05-12 08:10:45'),
(99, 'update', 'lending.text', '4', '6', 'App\\Models\\Lending\\Texts', '2023-05-12 08:10:46', '2023-05-12 08:10:46'),
(100, 'update', 'lending.text', '4', '7', 'App\\Models\\Lending\\Texts', '2023-05-12 08:10:48', '2023-05-12 08:10:48'),
(101, 'update', 'lending.text', '4', '8', 'App\\Models\\Lending\\Texts', '2023-05-12 08:10:49', '2023-05-12 08:10:49'),
(102, 'create', 'lending.text', '4', '9', 'App\\Models\\Lending\\Texts', '2023-05-12 08:11:09', '2023-05-12 08:11:09'),
(103, 'create', 'lending.text', '4', '2', 'App\\Models\\Lending\\Texts', '2023-05-12 08:12:37', '2023-05-12 08:12:37'),
(104, 'create', 'lending.text', '4', '3', 'App\\Models\\Lending\\Texts', '2023-05-12 08:13:05', '2023-05-12 08:13:05'),
(105, 'update', 'lending.text', '4', '2', 'App\\Models\\Lending\\Texts', '2023-05-12 08:13:15', '2023-05-12 08:13:15'),
(106, 'create', 'lending.text', '4', '4', 'App\\Models\\Lending\\Texts', '2023-05-12 08:13:36', '2023-05-12 08:13:36'),
(107, 'create', 'lending.text', '4', '5', 'App\\Models\\Lending\\Texts', '2023-05-12 08:13:58', '2023-05-12 08:13:58'),
(108, 'create', 'lending.text', '4', '6', 'App\\Models\\Lending\\Texts', '2023-05-12 08:14:18', '2023-05-12 08:14:18'),
(109, 'create', 'lending.text', '4', '7', 'App\\Models\\Lending\\Texts', '2023-05-12 08:15:00', '2023-05-12 08:15:00'),
(110, 'create', 'lending.slider', '4', '12', 'App\\Models\\Lending\\Slider', '2023-05-12 08:31:03', '2023-05-12 08:31:03'),
(111, 'create', 'lending.slider', '4', '13', 'App\\Models\\Lending\\Slider', '2023-05-12 08:31:14', '2023-05-12 08:31:14'),
(112, 'create', 'lending.slider', '4', '14', 'App\\Models\\Lending\\Slider', '2023-05-12 08:31:22', '2023-05-12 08:31:22'),
(113, 'create', 'lending.slider2', '4', '15', 'App\\Models\\Lending\\Slider2', '2023-05-12 08:33:15', '2023-05-12 08:33:15'),
(114, 'update', 'lending.text', '4', '8', 'App\\Models\\Lending\\Texts', '2023-05-12 09:04:50', '2023-05-12 09:04:50'),
(115, 'update', 'lending.text', '4', '9', 'App\\Models\\Lending\\Texts', '2023-05-12 09:04:56', '2023-05-12 09:04:56'),
(116, 'update', 'lending.text', '4', '8', 'App\\Models\\Lending\\Texts', '2023-05-12 09:05:09', '2023-05-12 09:05:09'),
(117, 'update', 'lending.text', '4', '9', 'App\\Models\\Lending\\Texts', '2023-05-12 09:06:21', '2023-05-12 09:06:21'),
(118, 'update', 'users.classes', '4', '1', 'App\\Models\\User\\UserСlass', '2023-05-12 09:14:50', '2023-05-12 09:14:50'),
(119, 'create', 'lending.specs', '4', '2', 'App\\Models\\Lending\\Specs', '2023-05-12 09:15:46', '2023-05-12 09:15:46'),
(120, 'create', 'lending.specs', '4', '11', 'App\\Models\\Lending\\Specs', '2023-05-16 09:51:28', '2023-05-16 09:51:28'),
(121, 'create', 'lending.specs', '4', '12', 'App\\Models\\Lending\\Specs', '2023-05-16 09:52:17', '2023-05-16 09:52:17'),
(122, 'update', 'lending.specs', '4', '12', 'App\\Models\\Lending\\Specs', '2023-05-16 09:52:50', '2023-05-16 09:52:50'),
(123, 'update', 'lending.slider', '4', '12', 'App\\Models\\Lending\\Slider', '2023-05-16 12:06:55', '2023-05-16 12:06:55'),
(124, 'create', 'lending.slider', '4', '1', 'App\\Models\\Lending\\Slider', '2023-05-16 12:12:27', '2023-05-16 12:12:27'),
(125, 'update', 'lending.slider', '4', '1', 'App\\Models\\Lending\\Slider', '2023-05-16 12:12:41', '2023-05-16 12:12:41'),
(126, 'create', 'lending.text', '4', '9', 'App\\Models\\Lending\\Texts', '2023-05-16 12:14:23', '2023-05-16 12:14:23'),
(127, 'create', 'lending.text', '4', '10', 'App\\Models\\Lending\\Texts', '2023-05-16 12:15:06', '2023-05-16 12:15:06'),
(128, 'create', 'lending.text', '4', '11', 'App\\Models\\Lending\\Texts', '2023-05-16 12:15:24', '2023-05-16 12:15:24'),
(129, 'create', 'lending.specs', '4', '12', 'App\\Models\\Lending\\Specs', '2023-05-16 12:18:06', '2023-05-16 12:18:06'),
(130, 'create', 'lending.specs', '4', '13', 'App\\Models\\Lending\\Specs', '2023-05-16 12:18:10', '2023-05-16 12:18:10'),
(131, 'create', 'lending.specs', '4', '14', 'App\\Models\\Lending\\Specs', '2023-05-16 12:18:13', '2023-05-16 12:18:13'),
(132, 'update', 'lending.slider', '4', '2', 'App\\Models\\Lending\\Slider', '2023-05-16 12:30:00', '2023-05-16 12:30:00'),
(133, 'update', 'lending.specs', '4', '14', 'App\\Models\\Lending\\Specs', '2023-05-16 12:33:16', '2023-05-16 12:33:16'),
(134, 'update', 'lending.text', '4', '11', 'App\\Models\\Lending\\Texts', '2023-05-16 12:35:05', '2023-05-16 12:35:05'),
(135, 'update', 'lending.specs', '4', '14', 'App\\Models\\Lending\\Specs', '2023-05-16 13:24:32', '2023-05-16 13:24:32'),
(136, 'update', 'lending.slider', '4', '3', 'App\\Models\\Lending\\Slider', '2023-05-16 13:24:48', '2023-05-16 13:24:48'),
(137, 'update', 'lending.slider', '4', '3', 'App\\Models\\Lending\\Slider', '2023-05-16 13:24:49', '2023-05-16 13:24:49'),
(138, 'update', 'lending.slider', '4', '3', 'App\\Models\\Lending\\Slider', '2023-05-16 13:26:46', '2023-05-16 13:26:46'),
(139, 'create', 'lending.specs', '4', '15', 'App\\Models\\Lending\\Specs', '2023-05-29 07:34:23', '2023-05-29 07:34:23'),
(140, 'update', 'lending.specs', '4', '15', 'App\\Models\\Lending\\Specs', '2023-05-29 07:34:26', '2023-05-29 07:34:26'),
(141, 'create', 'lending.specs', '4', '16', 'App\\Models\\Lending\\Specs', '2023-05-29 07:34:32', '2023-05-29 07:34:32'),
(142, 'create', 'lending.specs', '4', '17', 'App\\Models\\Lending\\Specs', '2023-05-29 07:34:43', '2023-05-29 07:34:43'),
(143, 'create', 'lending.text', '4', '12', 'App\\Models\\Lending\\Texts', '2023-05-29 07:36:07', '2023-05-29 07:36:07'),
(144, 'create', 'lending.text', '4', '13', 'App\\Models\\Lending\\Texts', '2023-05-29 07:36:13', '2023-05-29 07:36:13'),
(145, 'create', 'lending.text', '4', '14', 'App\\Models\\Lending\\Texts', '2023-05-29 07:36:18', '2023-05-29 07:36:18'),
(146, 'update', 'lending.text', '4', '9', 'App\\Models\\Lending\\Texts', '2023-05-29 07:36:47', '2023-05-29 07:36:47'),
(147, 'update', 'lending.text', '4', '10', 'App\\Models\\Lending\\Texts', '2023-05-29 07:36:56', '2023-05-29 07:36:56'),
(148, 'update', 'lending.text', '4', '11', 'App\\Models\\Lending\\Texts', '2023-05-29 07:37:08', '2023-05-29 07:37:08'),
(149, 'update', 'lending.text', '4', '11', 'App\\Models\\Lending\\Texts', '2023-05-29 07:37:26', '2023-05-29 07:37:26'),
(150, 'update', 'lending.text', '4', '12', 'App\\Models\\Lending\\Texts', '2023-05-29 07:37:33', '2023-05-29 07:37:33'),
(151, 'update', 'lending.text', '4', '13', 'App\\Models\\Lending\\Texts', '2023-05-29 07:37:44', '2023-05-29 07:37:44'),
(152, 'update', 'lending.text', '4', '14', 'App\\Models\\Lending\\Texts', '2023-05-29 07:37:57', '2023-05-29 07:37:57'),
(153, 'create', 'lending.text', '4', '15', 'App\\Models\\Lending\\Texts', '2023-05-29 07:38:08', '2023-05-29 07:38:08'),
(154, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2023-05-29 07:38:30', '2023-05-29 07:38:30'),
(155, 'update', 'lending.slider', '4', '1', 'App\\Models\\Lending\\Slider', '2023-05-29 07:38:54', '2023-05-29 07:38:54'),
(156, 'update', 'lending.slider', '4', '3', 'App\\Models\\Lending\\Slider', '2023-05-29 07:39:10', '2023-05-29 07:39:10'),
(157, 'update', 'lending.slider', '4', '2', 'App\\Models\\Lending\\Slider', '2023-05-29 07:39:22', '2023-05-29 07:39:22'),
(158, 'update', 'lending.specs', '4', '12', 'App\\Models\\Lending\\Specs', '2023-05-29 07:40:16', '2023-05-29 07:40:16'),
(159, 'update', 'lending.specs', '4', '13', 'App\\Models\\Lending\\Specs', '2023-05-29 07:40:22', '2023-05-29 07:40:22'),
(160, 'update', 'lending.specs', '4', '14', 'App\\Models\\Lending\\Specs', '2023-05-29 07:40:32', '2023-05-29 07:40:32'),
(161, 'update', 'lending.specs', '4', '17', 'App\\Models\\Lending\\Specs', '2023-05-29 07:40:39', '2023-05-29 07:40:39'),
(162, 'update', 'lending.specs', '4', '16', 'App\\Models\\Lending\\Specs', '2023-05-29 07:40:47', '2023-05-29 07:40:47'),
(163, 'update', 'lending.specs', '4', '15', 'App\\Models\\Lending\\Specs', '2023-05-29 07:40:54', '2023-05-29 07:40:54'),
(164, 'update', 'lending.text', '4', '11', 'App\\Models\\Lending\\Texts', '2023-05-29 07:48:44', '2023-05-29 07:48:44'),
(165, 'update', 'lending.text', '4', '13', 'App\\Models\\Lending\\Texts', '2023-05-29 07:52:35', '2023-05-29 07:52:35'),
(166, 'update', 'lending.text', '4', '14', 'App\\Models\\Lending\\Texts', '2023-05-29 07:52:58', '2023-05-29 07:52:58'),
(167, 'create', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-12 11:16:41', '2024-08-12 11:16:41'),
(168, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-12 11:16:49', '2024-08-12 11:16:49'),
(169, 'create', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-12 11:59:01', '2024-08-12 11:59:01'),
(170, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-12 11:59:15', '2024-08-12 11:59:15'),
(171, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-12 12:00:04', '2024-08-12 12:00:04'),
(172, 'create', 'service.countries', '4', '1', 'App\\Models\\Service\\Country', '2024-08-12 12:34:09', '2024-08-12 12:34:09'),
(173, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-12 12:37:45', '2024-08-12 12:37:45'),
(174, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-12 13:31:15', '2024-08-12 13:31:15'),
(175, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-12 13:42:28', '2024-08-12 13:42:28'),
(176, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-12 14:10:01', '2024-08-12 14:10:01'),
(177, 'create', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-12 14:15:54', '2024-08-12 14:15:54'),
(178, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-12 14:25:13', '2024-08-12 14:25:13'),
(179, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-12 14:27:11', '2024-08-12 14:27:11'),
(180, 'create', 'service.countries', '4', '2', 'App\\Models\\Service\\Country', '2024-08-12 14:30:22', '2024-08-12 14:30:22'),
(181, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-12 14:37:45', '2024-08-12 14:37:45'),
(182, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-12 14:37:50', '2024-08-12 14:37:50'),
(183, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-12 14:43:37', '2024-08-12 14:43:37'),
(184, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-13 07:45:56', '2024-08-13 07:45:56'),
(185, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 08:13:04', '2024-08-13 08:13:04'),
(186, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 08:18:44', '2024-08-13 08:18:44'),
(187, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 08:59:09', '2024-08-13 08:59:09'),
(188, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 09:00:30', '2024-08-13 09:00:30'),
(189, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 09:08:34', '2024-08-13 09:08:34'),
(190, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 09:16:29', '2024-08-13 09:16:29'),
(191, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 09:18:40', '2024-08-13 09:18:40'),
(192, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 09:52:23', '2024-08-13 09:52:23'),
(193, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 09:57:00', '2024-08-13 09:57:00'),
(194, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 09:57:29', '2024-08-13 09:57:29'),
(195, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 10:09:55', '2024-08-13 10:09:55'),
(196, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 10:23:35', '2024-08-13 10:23:35'),
(197, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 10:29:08', '2024-08-13 10:29:08'),
(198, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 10:31:19', '2024-08-13 10:31:19'),
(199, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 10:31:24', '2024-08-13 10:31:24'),
(200, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 10:46:58', '2024-08-13 10:46:58'),
(201, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 10:47:05', '2024-08-13 10:47:05'),
(202, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 10:47:12', '2024-08-13 10:47:12'),
(203, 'update', 'lending.tours.countries', '4', '1', 'App\\Models\\Service\\Country', '2024-08-13 14:12:28', '2024-08-13 14:12:28'),
(204, 'create', 'lending.tours.countries', '4', '3', 'App\\Models\\Service\\Country', '2024-08-13 14:13:16', '2024-08-13 14:13:16'),
(205, 'create', 'lending.tours.countries', '4', '4', 'App\\Models\\Service\\Country', '2024-08-13 14:13:25', '2024-08-13 14:13:25'),
(206, 'create', 'lending.tours.countries', '4', '5', 'App\\Models\\Service\\Country', '2024-08-13 14:13:41', '2024-08-13 14:13:41'),
(207, 'create', 'lending.tours.countries', '4', '6', 'App\\Models\\Service\\Country', '2024-08-13 14:13:49', '2024-08-13 14:13:49'),
(208, 'create', 'lending.tours.countries', '4', '7', 'App\\Models\\Service\\Country', '2024-08-13 14:13:57', '2024-08-13 14:13:57'),
(209, 'create', 'lending.tours.countries', '4', '8', 'App\\Models\\Service\\Country', '2024-08-13 14:14:10', '2024-08-13 14:14:10'),
(210, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 14:18:23', '2024-08-13 14:18:23'),
(211, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 14:19:12', '2024-08-13 14:19:12'),
(212, 'create', 'lending.tours.infografika', '4', '1', 'App\\Models\\Lending\\Infografika', '2024-08-14 08:58:55', '2024-08-14 08:58:55'),
(213, 'update', 'lending.tours.infografika', '4', '1', 'App\\Models\\Lending\\Infografika', '2024-08-14 09:06:28', '2024-08-14 09:06:28'),
(214, 'update', 'lending.tours.infografika', '4', '1', 'App\\Models\\Lending\\Infografika', '2024-08-14 09:07:59', '2024-08-14 09:07:59'),
(215, 'update', 'lending.tours.infografika', '4', '1', 'App\\Models\\Lending\\Infografika', '2024-08-14 09:08:03', '2024-08-14 09:08:03'),
(216, 'update', 'lending.tours.infografika', '4', '1', 'App\\Models\\Lending\\Infografika', '2024-08-14 09:08:57', '2024-08-14 09:08:57'),
(217, 'update', 'lending.tours.infografika', '4', '1', 'App\\Models\\Lending\\Infografika', '2024-08-14 09:11:14', '2024-08-14 09:11:14'),
(218, 'update', 'lending.tours.infografika', '4', '1', 'App\\Models\\Lending\\Infografika', '2024-08-14 09:11:19', '2024-08-14 09:11:19'),
(219, 'create', 'lending.tours.infografika', '4', '1', 'App\\Models\\Lending\\Infografika', '2024-08-14 09:24:19', '2024-08-14 09:24:19'),
(220, 'update', 'lending.tours.infografika', '4', '1', 'App\\Models\\Lending\\Infografika', '2024-08-14 09:28:36', '2024-08-14 09:28:36'),
(221, 'update', 'lending.tours.infografika', '4', '1', 'App\\Models\\Lending\\Infografika', '2024-08-14 09:28:41', '2024-08-14 09:28:41'),
(222, 'update', 'lending.tours.infografika', '4', '1', 'App\\Models\\Lending\\Infografika', '2024-08-14 09:29:58', '2024-08-14 09:29:58'),
(223, 'update', 'lending.tours.infografika', '4', '1', 'App\\Models\\Lending\\Infografika', '2024-08-14 11:09:48', '2024-08-14 11:09:48'),
(224, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-14 11:10:42', '2024-08-14 11:10:42'),
(225, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-14 11:17:15', '2024-08-14 11:17:15'),
(226, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-14 11:17:21', '2024-08-14 11:17:21'),
(227, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-14 11:23:50', '2024-08-14 11:23:50'),
(228, 'create', 'lending.tours.infografika', '4', '2', 'App\\Models\\Lending\\Infografika', '2024-08-14 12:01:29', '2024-08-14 12:01:29'),
(229, 'update', 'lending.tours.infografika', '4', '2', 'App\\Models\\Lending\\Infografika', '2024-08-14 12:02:05', '2024-08-14 12:02:05'),
(230, 'create', 'lending.tours.infografika', '4', '3', 'App\\Models\\Lending\\Infografika', '2024-08-14 12:02:31', '2024-08-14 12:02:31'),
(231, 'create', 'lending.tours.infografika', '4', '4', 'App\\Models\\Lending\\Infografika', '2024-08-14 12:09:59', '2024-08-14 12:09:59'),
(232, 'update', 'lending.tours.infografika', '4', '4', 'App\\Models\\Lending\\Infografika', '2024-08-14 12:10:46', '2024-08-14 12:10:46'),
(233, 'update', 'lending.tours.infografika', '4', '4', 'App\\Models\\Lending\\Infografika', '2024-08-14 12:10:53', '2024-08-14 12:10:53'),
(234, 'update', 'lending.tours.infografika', '4', '4', 'App\\Models\\Lending\\Infografika', '2024-08-14 12:10:57', '2024-08-14 12:10:57'),
(235, 'create', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 13:10:58', '2024-08-14 13:10:58'),
(236, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 13:21:52', '2024-08-14 13:21:52'),
(237, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 13:21:56', '2024-08-14 13:21:56'),
(238, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 13:22:03', '2024-08-14 13:22:03'),
(239, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 13:22:08', '2024-08-14 13:22:08'),
(240, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 13:22:12', '2024-08-14 13:22:12'),
(241, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 13:22:17', '2024-08-14 13:22:17'),
(242, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 13:23:32', '2024-08-14 13:23:32'),
(243, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 13:31:10', '2024-08-14 13:31:10'),
(244, 'create', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 13:47:36', '2024-08-14 13:47:36'),
(245, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 13:48:57', '2024-08-14 13:48:57'),
(246, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 13:54:18', '2024-08-14 13:54:18'),
(247, 'create', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 14:25:16', '2024-08-14 14:25:16'),
(248, 'create', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 14:26:18', '2024-08-14 14:26:18'),
(249, 'create', 'lending.tours.programms', '4', '2', 'App\\Models\\Lending\\Programs', '2024-08-14 14:28:24', '2024-08-14 14:28:24'),
(250, 'create', 'lending.tours.programms', '4', '3', 'App\\Models\\Lending\\Programs', '2024-08-14 14:28:37', '2024-08-14 14:28:37'),
(251, 'create', 'lending.tours.programms', '4', '4', 'App\\Models\\Lending\\Programs', '2024-08-14 14:28:50', '2024-08-14 14:28:50'),
(252, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 14:29:07', '2024-08-14 14:29:07'),
(253, 'update', 'lending.tours.programms', '4', '4', 'App\\Models\\Lending\\Programs', '2024-08-14 14:29:50', '2024-08-14 14:29:50'),
(254, 'update', 'lending.tours.programms', '4', '4', 'App\\Models\\Lending\\Programs', '2024-08-14 14:30:05', '2024-08-14 14:30:05'),
(255, 'update', 'lending.tours.programms', '4', '3', 'App\\Models\\Lending\\Programs', '2024-08-14 14:30:26', '2024-08-14 14:30:26'),
(256, 'update', 'lending.tours.programms', '4', '3', 'App\\Models\\Lending\\Programs', '2024-08-14 14:30:47', '2024-08-14 14:30:47'),
(257, 'update', 'lending.tours.programms', '4', '2', 'App\\Models\\Lending\\Programs', '2024-08-14 14:31:05', '2024-08-14 14:31:05'),
(258, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-14 14:31:21', '2024-08-14 14:31:21'),
(259, 'update', 'lending.tours.programms', '4', '4', 'App\\Models\\Lending\\Programs', '2024-08-15 07:35:15', '2024-08-15 07:35:15'),
(260, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-15 07:39:11', '2024-08-15 07:39:11'),
(261, 'update', 'lending.tours.programms', '4', '4', 'App\\Models\\Lending\\Programs', '2024-08-15 09:25:21', '2024-08-15 09:25:21'),
(262, 'update', 'lending.tours.programms', '4', '4', 'App\\Models\\Lending\\Programs', '2024-08-15 09:25:39', '2024-08-15 09:25:39'),
(263, 'update', 'lending.tours.programms', '4', '3', 'App\\Models\\Lending\\Programs', '2024-08-15 09:25:54', '2024-08-15 09:25:54'),
(264, 'update', 'lending.tours.programms', '4', '2', 'App\\Models\\Lending\\Programs', '2024-08-15 09:26:07', '2024-08-15 09:26:07'),
(265, 'update', 'lending.tours.programms', '4', '2', 'App\\Models\\Lending\\Programs', '2024-08-15 09:26:07', '2024-08-15 09:26:07'),
(266, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-15 09:26:59', '2024-08-15 09:26:59'),
(267, 'create', 'lending.tours.countries', '4', '1', 'App\\Models\\Service\\Country', '2024-08-15 10:24:20', '2024-08-15 10:24:20'),
(268, 'create', 'lending.tours.countries', '4', '2', 'App\\Models\\Service\\Country', '2024-08-15 10:24:29', '2024-08-15 10:24:29'),
(269, 'create', 'lending.tours.countries', '4', '3', 'App\\Models\\Service\\Country', '2024-08-15 10:24:37', '2024-08-15 10:24:37'),
(270, 'create', 'lending.tours.countries', '4', '1', 'App\\Models\\Service\\Country', '2024-08-15 10:38:50', '2024-08-15 10:38:50'),
(271, 'create', 'lending.tours.countries', '4', '1', 'App\\Models\\Service\\Country', '2024-08-15 10:43:00', '2024-08-15 10:43:00'),
(272, 'create', 'lending.tours.countries', '4', '1', 'App\\Models\\Service\\Country', '2024-08-15 10:47:05', '2024-08-15 10:47:05'),
(273, 'create', 'lending.tours', '4', '12', 'App\\Models\\Lending\\Tour', '2024-08-15 10:55:35', '2024-08-15 10:55:35'),
(274, 'create', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 11:01:32', '2024-08-15 11:01:32'),
(275, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 11:03:31', '2024-08-15 11:03:31'),
(276, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 11:04:10', '2024-08-15 11:04:10'),
(277, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 11:06:09', '2024-08-15 11:06:09'),
(278, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 11:07:36', '2024-08-15 11:07:36'),
(279, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 11:08:48', '2024-08-15 11:08:48'),
(280, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 11:27:55', '2024-08-15 11:27:55'),
(281, 'create', 'lending.tours.infografika', '4', '1', 'App\\Models\\Lending\\Infografika', '2024-08-15 11:44:59', '2024-08-15 11:44:59'),
(282, 'create', 'lending.tours.infografika', '4', '2', 'App\\Models\\Lending\\Infografika', '2024-08-15 11:45:34', '2024-08-15 11:45:34'),
(283, 'create', 'lending.tours.infografika', '4', '3', 'App\\Models\\Lending\\Infografika', '2024-08-15 11:46:06', '2024-08-15 11:46:06'),
(284, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 11:47:58', '2024-08-15 11:47:58'),
(285, 'update', 'lending.tours.programms', '4', '4', 'App\\Models\\Lending\\Programs', '2024-08-15 11:53:11', '2024-08-15 11:53:11'),
(286, 'update', 'lending.tours.programms', '4', '4', 'App\\Models\\Lending\\Programs', '2024-08-15 11:53:23', '2024-08-15 11:53:23'),
(287, 'update', 'lending.tours.programms', '4', '1', 'App\\Models\\Lending\\Programs', '2024-08-15 11:58:27', '2024-08-15 11:58:27'),
(288, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 12:10:52', '2024-08-15 12:10:52'),
(289, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 12:17:30', '2024-08-15 12:17:30'),
(290, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 12:17:39', '2024-08-15 12:17:39'),
(291, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 12:17:39', '2024-08-15 12:17:39'),
(292, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 12:21:24', '2024-08-15 12:21:24'),
(293, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 12:21:32', '2024-08-15 12:21:32'),
(294, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 12:23:03', '2024-08-15 12:23:03'),
(295, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-15 12:52:16', '2024-08-15 12:52:16'),
(296, 'create', 'lending.tours.countries', '4', '1', 'App\\Models\\Service\\Country', '2024-08-16 07:06:34', '2024-08-16 07:06:34'),
(297, 'create', 'lending.tours.countries', '4', '2', 'App\\Models\\Service\\Country', '2024-08-16 07:06:45', '2024-08-16 07:06:45'),
(298, 'create', 'lending.news', '4', '1', 'App\\Models\\Lending\\News', '2024-08-16 07:12:18', '2024-08-16 07:12:18'),
(299, 'update', 'lending.news', '4', '1', 'App\\Models\\Lending\\News', '2024-08-16 07:23:14', '2024-08-16 07:23:14'),
(300, 'update', 'lending.news', '4', '1', 'App\\Models\\Lending\\News', '2024-08-16 07:24:26', '2024-08-16 07:24:26'),
(301, 'create', 'lending.blogs', '4', '1', 'App\\Models\\Lending\\Blog', '2024-08-16 07:57:02', '2024-08-16 07:57:02'),
(302, 'update', 'lending.blogs', '4', '1', 'App\\Models\\Lending\\Blog', '2024-08-16 07:58:42', '2024-08-16 07:58:42'),
(303, 'create', 'lending.pages', '4', '1', 'App\\Models\\Lending\\Page', '2024-08-16 09:29:39', '2024-08-16 09:29:39'),
(304, 'update', 'lending.pages', '4', '1', 'App\\Models\\Lending\\Page', '2024-08-16 10:20:50', '2024-08-16 10:20:50'),
(305, 'update', 'lending.pages', '4', '1', 'App\\Models\\Lending\\Page', '2024-08-16 10:37:13', '2024-08-16 10:37:13'),
(306, 'create', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-16 10:39:29', '2024-08-16 10:39:29'),
(307, 'create', 'lending.pages', '4', '3', 'App\\Models\\Lending\\Page', '2024-08-16 10:41:33', '2024-08-16 10:41:33'),
(308, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-16 10:42:01', '2024-08-16 10:42:01'),
(309, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-16 10:43:55', '2024-08-16 10:43:55'),
(310, 'update', 'lending.pages', '4', '1', 'App\\Models\\Lending\\Page', '2024-08-16 11:27:25', '2024-08-16 11:27:25'),
(311, 'update', 'lending.pages', '4', '1', 'App\\Models\\Lending\\Page', '2024-08-16 11:31:16', '2024-08-16 11:31:16'),
(312, 'create', 'lending.blogs', '4', '1', 'App\\Models\\Lending\\Blog', '2024-08-16 11:39:09', '2024-08-16 11:39:09'),
(313, 'update', 'lending.pages', '4', '3', 'App\\Models\\Lending\\Page', '2024-08-16 11:48:05', '2024-08-16 11:48:05'),
(314, 'update', 'lending.pages', '4', '3', 'App\\Models\\Lending\\Page', '2024-08-16 11:48:09', '2024-08-16 11:48:09'),
(315, 'update', 'lending.pages', '4', '1', 'App\\Models\\Lending\\Page', '2024-08-16 11:53:38', '2024-08-16 11:53:38'),
(316, 'update', 'lending.pages', '4', '1', 'App\\Models\\Lending\\Page', '2024-08-16 11:53:55', '2024-08-16 11:53:55'),
(317, 'update', 'lending.pages', '4', '1', 'App\\Models\\Lending\\Page', '2024-08-16 11:57:56', '2024-08-16 11:57:56'),
(318, 'update', 'services.infografika', '4', '1', 'App\\Models\\Services\\Infografika', '2024-08-16 13:56:46', '2024-08-16 13:56:46'),
(319, 'create', 'services.infografika', '4', '2', 'App\\Models\\Services\\Infografika', '2024-08-16 13:57:59', '2024-08-16 13:57:59'),
(320, 'update', 'services.infografika', '4', '2', 'App\\Models\\Services\\Infografika', '2024-08-16 13:58:17', '2024-08-16 13:58:17'),
(321, 'update', 'services.infografika', '4', '2', 'App\\Models\\Services\\Infografika', '2024-08-16 13:58:25', '2024-08-16 13:58:25'),
(322, 'update', 'services.infografika', '4', '2', 'App\\Models\\Services\\Infografika', '2024-08-16 13:58:41', '2024-08-16 13:58:41'),
(323, 'update', 'services.infografika', '4', '2', 'App\\Models\\Services\\Infografika', '2024-08-16 14:05:19', '2024-08-16 14:05:19'),
(324, 'update', 'services.infografika', '4', '2', 'App\\Models\\Services\\Infografika', '2024-08-16 14:05:24', '2024-08-16 14:05:24'),
(325, 'update', 'services.infografika', '4', '1', 'App\\Models\\Services\\Infografika', '2024-08-16 14:11:55', '2024-08-16 14:11:55'),
(326, 'create', 'services.infografika', '4', '3', 'App\\Models\\Services\\Infografika', '2024-08-16 14:18:20', '2024-08-16 14:18:20'),
(327, 'update', 'services.infografika', '4', '3', 'App\\Models\\Services\\Infografika', '2024-08-16 14:18:29', '2024-08-16 14:18:29'),
(328, 'create', 'services.infografika', '4', '4', 'App\\Models\\Services\\Infografika', '2024-08-16 14:24:06', '2024-08-16 14:24:06'),
(329, 'update', 'services.infografika', '4', '4', 'App\\Models\\Services\\Infografika', '2024-08-16 14:24:12', '2024-08-16 14:24:12'),
(330, 'update', 'services.infografika', '4', '4', 'App\\Models\\Services\\Infografika', '2024-08-16 14:27:36', '2024-08-16 14:27:36'),
(331, 'update', 'services.infografika', '4', '1', 'App\\Models\\Services\\Infografika', '2024-08-16 14:27:50', '2024-08-16 14:27:50'),
(332, 'update', 'services.infografika', '4', '4', 'App\\Models\\Services\\Infografika', '2024-08-16 14:28:07', '2024-08-16 14:28:07'),
(333, 'update', 'services.infografika', '4', '4', 'App\\Models\\Services\\Infografika', '2024-08-16 14:30:14', '2024-08-16 14:30:14'),
(334, 'update', 'services.infografika', '4', '4', 'App\\Models\\Services\\Infografika', '2024-08-16 14:53:42', '2024-08-16 14:53:42'),
(335, 'update', 'services.infografika', '4', '3', 'App\\Models\\Services\\Infografika', '2024-08-16 14:58:21', '2024-08-16 14:58:21'),
(336, 'update', 'services.infografika', '4', '3', 'App\\Models\\Services\\Infografika', '2024-08-16 14:58:33', '2024-08-16 14:58:33'),
(337, 'update', 'services.infografika', '4', '4', 'App\\Models\\Services\\Infografika', '2024-08-16 15:00:28', '2024-08-16 15:00:28'),
(338, 'create', 'services.personal', '4', '1', 'App\\Models\\Lending\\Personal', '2024-08-19 07:38:36', '2024-08-19 07:38:36'),
(339, 'create', 'services.personal', '4', '2', 'App\\Models\\Lending\\Personal', '2024-08-19 07:51:33', '2024-08-19 07:51:33'),
(340, 'create', 'services.personal', '4', '3', 'App\\Models\\Lending\\Personal', '2024-08-19 07:51:53', '2024-08-19 07:51:53'),
(341, 'create', 'services.personal', '4', '4', 'App\\Models\\Lending\\Personal', '2024-08-19 07:52:20', '2024-08-19 07:52:20'),
(342, 'create', 'services.personal', '4', '5', 'App\\Models\\Lending\\Personal', '2024-08-19 07:53:10', '2024-08-19 07:53:10'),
(343, 'create', 'services.personal', '4', '6', 'App\\Models\\Lending\\Personal', '2024-08-19 07:53:30', '2024-08-19 07:53:30'),
(344, 'create', 'services.personal', '4', '7', 'App\\Models\\Lending\\Personal', '2024-08-19 07:53:55', '2024-08-19 07:53:55'),
(345, 'create', 'services.personal', '4', '8', 'App\\Models\\Lending\\Personal', '2024-08-19 07:54:18', '2024-08-19 07:54:18'),
(346, 'create', 'services.personal', '4', '9', 'App\\Models\\Lending\\Personal', '2024-08-19 07:54:33', '2024-08-19 07:54:33'),
(347, 'create', 'services.personal', '4', '10', 'App\\Models\\Lending\\Personal', '2024-08-19 07:54:49', '2024-08-19 07:54:49'),
(348, 'create', 'services.personal', '4', '11', 'App\\Models\\Lending\\Personal', '2024-08-19 07:55:02', '2024-08-19 07:55:02'),
(349, 'create', 'services.personal', '4', '12', 'App\\Models\\Lending\\Personal', '2024-08-19 07:55:20', '2024-08-19 07:55:20'),
(350, 'create', 'services.personal', '4', '13', 'App\\Models\\Lending\\Personal', '2024-08-19 07:55:43', '2024-08-19 07:55:43'),
(351, 'update', 'lending.pages', '4', '1', 'App\\Models\\Lending\\Page', '2024-08-19 08:10:53', '2024-08-19 08:10:53'),
(352, 'update', 'lending.pages', '4', '1', 'App\\Models\\Lending\\Page', '2024-08-19 08:11:14', '2024-08-19 08:11:14'),
(353, 'update', 'services.infografika', '4', '4', 'App\\Models\\Services\\Infografika', '2024-08-19 08:11:48', '2024-08-19 08:11:48'),
(354, 'update', 'services.infografika', '4', '3', 'App\\Models\\Services\\Infografika', '2024-08-19 08:11:51', '2024-08-19 08:11:51'),
(355, 'update', 'services.infografika', '4', '2', 'App\\Models\\Services\\Infografika', '2024-08-19 08:11:54', '2024-08-19 08:11:54'),
(356, 'update', 'services.infografika', '4', '1', 'App\\Models\\Services\\Infografika', '2024-08-19 08:11:56', '2024-08-19 08:11:56'),
(357, 'create', 'services.infografika', '4', '5', 'App\\Models\\Services\\Infografika', '2024-08-19 08:13:00', '2024-08-19 08:13:00'),
(358, 'create', 'services.infografika', '4', '6', 'App\\Models\\Services\\Infografika', '2024-08-19 08:13:24', '2024-08-19 08:13:24'),
(359, 'create', 'services.infografika', '4', '7', 'App\\Models\\Services\\Infografika', '2024-08-19 08:13:50', '2024-08-19 08:13:50'),
(360, 'create', 'services.infografika', '4', '8', 'App\\Models\\Services\\Infografika', '2024-08-19 08:14:09', '2024-08-19 08:14:09'),
(361, 'create', 'services.infografika', '4', '9', 'App\\Models\\Services\\Infografika', '2024-08-19 08:14:33', '2024-08-19 08:14:33'),
(362, 'create', 'services.infografika', '4', '10', 'App\\Models\\Services\\Infografika', '2024-08-19 08:14:56', '2024-08-19 08:14:56'),
(363, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2024-08-19 09:19:43', '2024-08-19 09:19:43'),
(364, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2024-08-19 09:19:59', '2024-08-19 09:19:59'),
(365, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2024-08-19 09:21:20', '2024-08-19 09:21:20'),
(366, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2024-08-19 09:22:10', '2024-08-19 09:22:10'),
(367, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-19 10:01:12', '2024-08-19 10:01:12'),
(368, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-19 11:05:15', '2024-08-19 11:05:15'),
(369, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-19 11:06:07', '2024-08-19 11:06:07'),
(370, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-19 11:06:57', '2024-08-19 11:06:57'),
(371, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-19 11:08:54', '2024-08-19 11:08:54'),
(372, 'create', 'lending.pages', '4', '4', 'App\\Models\\Lending\\Page', '2024-08-19 12:16:14', '2024-08-19 12:16:14'),
(373, 'create', 'lending.pages', '4', '5', 'App\\Models\\Lending\\Page', '2024-08-19 12:20:43', '2024-08-19 12:20:43'),
(374, 'create', 'lending.pages', '4', '6', 'App\\Models\\Lending\\Page', '2024-08-19 12:22:22', '2024-08-19 12:22:22'),
(375, 'create', 'lending.pages', '4', '7', 'App\\Models\\Lending\\Page', '2024-08-19 12:22:34', '2024-08-19 12:22:34'),
(376, 'create', 'lending.pages', '4', '8', 'App\\Models\\Lending\\Page', '2024-08-19 12:22:45', '2024-08-19 12:22:45'),
(377, 'create', 'lending.pages', '4', '9', 'App\\Models\\Lending\\Page', '2024-08-19 12:22:57', '2024-08-19 12:22:57'),
(378, 'create', 'lending.pages', '4', '10', 'App\\Models\\Lending\\Page', '2024-08-19 12:23:14', '2024-08-19 12:23:14'),
(379, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-19 12:23:47', '2024-08-19 12:23:47'),
(380, 'update', 'lending.pages', '4', '5', 'App\\Models\\Lending\\Page', '2024-08-19 12:24:17', '2024-08-19 12:24:17'),
(381, 'update', 'lending.blogs', '4', '1', 'App\\Models\\Lending\\Blog', '2024-08-19 14:20:14', '2024-08-19 14:20:14'),
(382, 'update', 'lending.blogs', '4', '1', 'App\\Models\\Lending\\Blog', '2024-08-19 14:20:26', '2024-08-19 14:20:26'),
(383, 'update', 'lending.blogs', '4', '1', 'App\\Models\\Lending\\Blog', '2024-08-19 14:21:44', '2024-08-19 14:21:44'),
(384, 'update', 'lending.blogs', '4', '1', 'App\\Models\\Lending\\Blog', '2024-08-19 14:22:03', '2024-08-19 14:22:03'),
(385, 'update', 'lending.blogs', '4', '1', 'App\\Models\\Lending\\Blog', '2024-08-19 14:23:40', '2024-08-19 14:23:40'),
(386, 'update', 'services.documents', '4', '4', 'App\\Models\\Services\\File', '2024-08-19 15:03:25', '2024-08-19 15:03:25'),
(387, 'update', 'services.documents', '4', '3', 'App\\Models\\Services\\File', '2024-08-20 08:49:57', '2024-08-20 08:49:57'),
(388, 'update', 'services.infografika', '4', '10', 'App\\Models\\Services\\Infografika', '2024-08-20 09:53:52', '2024-08-20 09:53:52'),
(389, 'update', 'services.infografika', '4', '10', 'App\\Models\\Services\\Infografika', '2024-08-20 09:54:13', '2024-08-20 09:54:13'),
(390, 'update', 'services.infografika', '4', '10', 'App\\Models\\Services\\Infografika', '2024-08-20 09:54:21', '2024-08-20 09:54:21'),
(391, 'create', 'lending.tours.types', '4', '2', 'App\\Models\\Lending\\TourTypes', '2024-08-20 10:40:00', '2024-08-20 10:40:00'),
(392, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-20 10:42:44', '2024-08-20 10:42:44'),
(393, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-20 10:50:50', '2024-08-20 10:50:50'),
(394, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-20 10:55:34', '2024-08-20 10:55:34'),
(395, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-20 11:00:06', '2024-08-20 11:00:06'),
(396, 'create', 'lending.tours.types', '4', '3', 'App\\Models\\Lending\\TourTypes', '2024-08-20 11:00:27', '2024-08-20 11:00:27'),
(397, 'create', 'lending.tours.types', '4', '4', 'App\\Models\\Lending\\TourTypes', '2024-08-20 11:00:38', '2024-08-20 11:00:38'),
(398, 'create', 'lending.tours.types', '4', '5', 'App\\Models\\Lending\\TourTypes', '2024-08-20 11:00:49', '2024-08-20 11:00:49'),
(399, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-20 11:01:45', '2024-08-20 11:01:45'),
(400, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-20 11:01:50', '2024-08-20 11:01:50'),
(401, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-20 11:02:06', '2024-08-20 11:02:06'),
(402, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-20 11:02:57', '2024-08-20 11:02:57'),
(403, 'create', 'lending.news', '4', '1', 'App\\Models\\Lending\\News', '2024-08-20 11:08:48', '2024-08-20 11:08:48'),
(404, 'update', 'lending.news', '4', '1', 'App\\Models\\Lending\\News', '2024-08-20 11:08:59', '2024-08-20 11:08:59'),
(405, 'create', 'lending.news', '4', '2', 'App\\Models\\Lending\\News', '2024-08-20 11:44:49', '2024-08-20 11:44:49'),
(406, 'update', 'lending.news', '4', '2', 'App\\Models\\Lending\\News', '2024-08-20 11:45:20', '2024-08-20 11:45:20'),
(407, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-20 11:59:36', '2024-08-20 11:59:36'),
(408, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-20 11:59:41', '2024-08-20 11:59:41');
INSERT INTO `admin_event_logs` (`id`, `action`, `path`, `user_id`, `item_id`, `item_model`, `created_at`, `updated_at`) VALUES
(409, 'update', 'services.infografika', '4', '10', 'App\\Models\\Services\\Infografika', '2024-08-20 13:14:53', '2024-08-20 13:14:53'),
(410, 'update', 'services.infografika', '4', '10', 'App\\Models\\Services\\Infografika', '2024-08-20 13:14:59', '2024-08-20 13:14:59'),
(411, 'update', 'services.documents', '4', '4', 'App\\Models\\Services\\File', '2024-08-20 14:18:36', '2024-08-20 14:18:36'),
(412, 'update', 'services.documents', '4', '3', 'App\\Models\\Services\\File', '2024-08-20 14:18:46', '2024-08-20 14:18:46'),
(413, 'update', 'services.documents', '4', '3', 'App\\Models\\Services\\File', '2024-08-20 14:19:16', '2024-08-20 14:19:16'),
(414, 'update', 'services.documents', '4', '3', 'App\\Models\\Services\\File', '2024-08-20 14:20:35', '2024-08-20 14:20:35'),
(415, 'update', 'services.documents', '4', '3', 'App\\Models\\Services\\File', '2024-08-20 14:20:46', '2024-08-20 14:20:46'),
(416, 'update', 'services.documents', '4', '3', 'App\\Models\\Services\\File', '2024-08-20 14:21:43', '2024-08-20 14:21:43'),
(417, 'create', 'services.documents', '4', '5', 'App\\Models\\Services\\File', '2024-08-21 12:30:40', '2024-08-21 12:30:40'),
(418, 'update', 'services.documents', '4', '4', 'App\\Models\\Services\\File', '2024-08-21 12:47:40', '2024-08-21 12:47:40'),
(419, 'update', 'services.documents', '4', '4', 'App\\Models\\Services\\File', '2024-08-21 12:48:10', '2024-08-21 12:48:10'),
(420, 'create', 'services.documents', '4', '1', 'App\\Models\\Services\\File', '2024-08-21 14:07:02', '2024-08-21 14:07:02'),
(421, 'update', 'services.documents', '4', '1', 'App\\Models\\Services\\File', '2024-08-21 14:08:10', '2024-08-21 14:08:10'),
(422, 'update', 'services.documents', '4', '1', 'App\\Models\\Services\\File', '2024-08-21 14:23:55', '2024-08-21 14:23:55'),
(423, 'update', 'services.documents', '4', '1', 'App\\Models\\Services\\File', '2024-08-21 14:23:59', '2024-08-21 14:23:59'),
(424, 'update', 'services.documents', '4', '1', 'App\\Models\\Services\\File', '2024-08-21 14:26:12', '2024-08-21 14:26:12'),
(425, 'update', 'services.documents', '4', '1', 'App\\Models\\Services\\File', '2024-08-21 14:40:47', '2024-08-21 14:40:47'),
(426, 'create', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 07:59:01', '2024-08-22 07:59:01'),
(427, 'update', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 07:59:04', '2024-08-22 07:59:04'),
(428, 'update', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 07:59:07', '2024-08-22 07:59:07'),
(429, 'update', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 08:08:51', '2024-08-22 08:08:51'),
(430, 'update', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 08:08:56', '2024-08-22 08:08:56'),
(431, 'update', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 08:09:52', '2024-08-22 08:09:52'),
(432, 'update', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 08:10:12', '2024-08-22 08:10:12'),
(433, 'update', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 08:19:14', '2024-08-22 08:19:14'),
(434, 'update', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 08:20:38', '2024-08-22 08:20:38'),
(435, 'update', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 08:21:10', '2024-08-22 08:21:10'),
(436, 'update', 'services.infografika', '4', '10', 'App\\Models\\Services\\Infografika', '2024-08-22 08:21:55', '2024-08-22 08:21:55'),
(437, 'update', 'services.infografika', '4', '10', 'App\\Models\\Services\\Infografika', '2024-08-22 08:22:10', '2024-08-22 08:22:10'),
(438, 'update', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 08:23:49', '2024-08-22 08:23:49'),
(439, 'update', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 08:57:33', '2024-08-22 08:57:33'),
(440, 'update', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 08:57:46', '2024-08-22 08:57:46'),
(441, 'update', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 09:45:53', '2024-08-22 09:45:53'),
(442, 'update', 'services.advs', '4', '1', 'App\\Models\\Lending\\Adv', '2024-08-22 09:52:47', '2024-08-22 09:52:47'),
(443, 'create', 'services.advs', '4', '2', 'App\\Models\\Lending\\Adv', '2024-08-22 09:54:13', '2024-08-22 09:54:13'),
(444, 'create', 'lending.tours.countries', '4', '3', 'App\\Models\\Lending\\Country', '2024-08-22 10:14:58', '2024-08-22 10:14:58'),
(445, 'create', 'lending.tours.countries', '4', '4', 'App\\Models\\Lending\\Country', '2024-08-22 10:15:14', '2024-08-22 10:15:14'),
(446, 'create', 'lending.tours.countries', '4', '5', 'App\\Models\\Lending\\Country', '2024-08-22 10:15:25', '2024-08-22 10:15:25'),
(447, 'create', 'lending.tours.countries', '4', '6', 'App\\Models\\Lending\\Country', '2024-08-22 10:15:35', '2024-08-22 10:15:35'),
(448, 'create', 'lending.tours.countries', '4', '7', 'App\\Models\\Lending\\Country', '2024-08-22 10:15:44', '2024-08-22 10:15:44'),
(449, 'create', 'lending.tours.countries', '4', '8', 'App\\Models\\Lending\\Country', '2024-08-22 10:17:15', '2024-08-22 10:17:15'),
(450, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-22 10:21:52', '2024-08-22 10:21:52'),
(451, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-22 10:22:14', '2024-08-22 10:22:14'),
(452, 'create', 'lending.tours.countries', '4', '1', 'App\\Models\\Lending\\Country', '2024-08-22 10:59:11', '2024-08-22 10:59:11'),
(453, 'create', 'lending.tours.countries', '4', '2', 'App\\Models\\Lending\\Country', '2024-08-22 10:59:22', '2024-08-22 10:59:22'),
(454, 'create', 'lending.tours.countries', '4', '3', 'App\\Models\\Lending\\Country', '2024-08-22 10:59:30', '2024-08-22 10:59:30'),
(455, 'create', 'lending.tours.countries', '4', '4', 'App\\Models\\Lending\\Country', '2024-08-22 11:30:38', '2024-08-22 11:30:38'),
(456, 'update', 'lending.tours.countries', '4', '4', 'App\\Models\\Lending\\Country', '2024-08-22 11:30:43', '2024-08-22 11:30:43'),
(457, 'create', 'lending.tours.countries', '4', '5', 'App\\Models\\Lending\\Country', '2024-08-22 11:30:52', '2024-08-22 11:30:52'),
(458, 'create', 'lending.tours.countries', '4', '6', 'App\\Models\\Lending\\Country', '2024-08-22 11:31:00', '2024-08-22 11:31:00'),
(459, 'create', 'lending.tours.countries', '4', '7', 'App\\Models\\Lending\\Country', '2024-08-22 11:31:11', '2024-08-22 11:31:11'),
(460, 'create', 'lending.tours.countries', '4', '8', 'App\\Models\\Lending\\Country', '2024-08-22 11:31:27', '2024-08-22 11:31:27'),
(461, 'create', 'lending.tours.types', '4', '1', 'App\\Models\\Lending\\TourTypes', '2024-08-22 11:40:35', '2024-08-22 11:40:35'),
(462, 'create', 'lending.tours.types', '4', '2', 'App\\Models\\Lending\\TourTypes', '2024-08-22 11:41:25', '2024-08-22 11:41:25'),
(463, 'create', 'lending.tours.types', '4', '3', 'App\\Models\\Lending\\TourTypes', '2024-08-22 11:41:46', '2024-08-22 11:41:46'),
(464, 'create', 'lending.tours.types', '4', '4', 'App\\Models\\Lending\\TourTypes', '2024-08-22 11:42:01', '2024-08-22 11:42:01'),
(465, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-22 11:50:49', '2024-08-22 11:50:49'),
(466, 'create', 'lending.tours.status', '4', '1', 'App\\Models\\Lending\\Status', '2024-08-22 12:17:12', '2024-08-22 12:17:12'),
(467, 'update', 'lending.tours.status', '4', '1', 'App\\Models\\Lending\\Status', '2024-08-22 12:17:19', '2024-08-22 12:17:19'),
(468, 'update', 'lending.tours.status', '4', '1', 'App\\Models\\Lending\\Status', '2024-08-22 12:18:16', '2024-08-22 12:18:16'),
(469, 'create', 'lending.tours.status', '4', '1', 'App\\Models\\Lending\\Status', '2024-08-22 12:56:24', '2024-08-22 12:56:24'),
(470, 'create', 'lending.tours.types', '4', '1', 'App\\Models\\Lending\\TourTypes', '2024-08-22 13:02:53', '2024-08-22 13:02:53'),
(471, 'create', 'lending.tours.types', '4', '2', 'App\\Models\\Lending\\TourTypes', '2024-08-22 13:03:02', '2024-08-22 13:03:02'),
(472, 'create', 'lending.tours.types', '4', '4', 'App\\Models\\Lending\\TourTypes', '2024-08-22 13:03:23', '2024-08-22 13:03:23'),
(473, 'create', 'lending.tours.types', '4', '5', 'App\\Models\\Lending\\TourTypes', '2024-08-22 13:03:23', '2024-08-22 13:03:23'),
(474, 'create', 'lending.tours.types', '4', '3', 'App\\Models\\Lending\\TourTypes', '2024-08-22 13:03:23', '2024-08-22 13:03:23'),
(475, 'create', 'lending.tours.types', '4', '6', 'App\\Models\\Lending\\TourTypes', '2024-08-22 13:03:26', '2024-08-22 13:03:26'),
(476, 'update', 'lending.tours.types', '4', '4', 'App\\Models\\Lending\\TourTypes', '2024-08-22 13:03:42', '2024-08-22 13:03:42'),
(477, 'update', 'lending.tours.types', '4', '5', 'App\\Models\\Lending\\TourTypes', '2024-08-22 13:03:46', '2024-08-22 13:03:46'),
(478, 'update', 'lending.tours.types', '4', '6', 'App\\Models\\Lending\\TourTypes', '2024-08-22 13:03:49', '2024-08-22 13:03:49'),
(479, 'create', 'lending.tours.types', '4', '7', 'App\\Models\\Lending\\TourTypes', '2024-08-22 13:05:12', '2024-08-22 13:05:12'),
(480, 'create', 'lending.tours.types', '4', '8', 'App\\Models\\Lending\\TourTypes', '2024-08-22 13:06:32', '2024-08-22 13:06:32'),
(481, 'update', 'lending.tours.types', '4', '8', 'App\\Models\\Lending\\TourTypes', '2024-08-22 13:06:42', '2024-08-22 13:06:42'),
(482, 'create', 'lending.tours.countries', '4', '9', 'App\\Models\\Lending\\Country', '2024-08-22 13:06:54', '2024-08-22 13:06:54'),
(483, 'update', 'lending.tours.countries', '4', '9', 'App\\Models\\Lending\\Country', '2024-08-22 13:07:07', '2024-08-22 13:07:07'),
(484, 'create', 'lending.tours.countries', '4', '10', 'App\\Models\\Lending\\Country', '2024-08-22 13:07:34', '2024-08-22 13:07:34'),
(485, 'update', 'lending.tours.countries', '4', '10', 'App\\Models\\Lending\\Country', '2024-08-22 13:07:40', '2024-08-22 13:07:40'),
(486, 'create', 'lending.tours.countries', '4', '11', 'App\\Models\\Lending\\Country', '2024-08-22 13:08:07', '2024-08-22 13:08:07'),
(487, 'update', 'lending.tours.countries', '4', '11', 'App\\Models\\Lending\\Country', '2024-08-22 13:08:20', '2024-08-22 13:08:20'),
(488, 'create', 'lending.tours.status', '4', '2', 'App\\Models\\Lending\\Status', '2024-08-22 13:08:33', '2024-08-22 13:08:33'),
(489, 'update', 'lending.tours.status', '4', '2', 'App\\Models\\Lending\\Status', '2024-08-22 13:08:57', '2024-08-22 13:08:57'),
(490, 'create', 'lending.tours.status', '4', '3', 'App\\Models\\Lending\\Status', '2024-08-22 13:10:36', '2024-08-22 13:10:36'),
(491, 'update', 'lending.tours.status', '4', '3', 'App\\Models\\Lending\\Status', '2024-08-22 13:11:11', '2024-08-22 13:11:11'),
(492, 'create', 'lending.tours.status', '4', '4', 'App\\Models\\Lending\\Status', '2024-08-22 13:19:21', '2024-08-22 13:19:21'),
(493, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-22 13:19:36', '2024-08-22 13:19:36'),
(494, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-22 13:21:46', '2024-08-22 13:21:46'),
(495, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-22 13:21:51', '2024-08-22 13:21:51'),
(496, 'create', 'lending.blogs', '4', '5', 'App\\Models\\Lending\\Blog', '2024-08-22 13:23:36', '2024-08-22 13:23:36'),
(497, 'create', 'lending.blogs', '4', '6', 'App\\Models\\Lending\\Blog', '2024-08-22 13:23:43', '2024-08-22 13:23:43'),
(498, 'create', 'lending.blogs', '4', '7', 'App\\Models\\Lending\\Blog', '2024-08-22 13:23:50', '2024-08-22 13:23:50'),
(499, 'create', 'lending.blogs', '4', '8', 'App\\Models\\Lending\\Blog', '2024-08-22 13:23:57', '2024-08-22 13:23:57'),
(500, 'create', 'lending.blogs', '4', '9', 'App\\Models\\Lending\\Blog', '2024-08-22 13:24:04', '2024-08-22 13:24:04'),
(501, 'create', 'lending.blogs', '4', '10', 'App\\Models\\Lending\\Blog', '2024-08-22 13:24:11', '2024-08-22 13:24:11'),
(502, 'create', 'lending.blogs', '4', '11', 'App\\Models\\Lending\\Blog', '2024-08-22 13:24:17', '2024-08-22 13:24:17'),
(503, 'create', 'lending.blogs', '4', '12', 'App\\Models\\Lending\\Blog', '2024-08-22 13:24:25', '2024-08-22 13:24:25'),
(504, 'create', 'lending.blogs', '4', '13', 'App\\Models\\Lending\\Blog', '2024-08-22 14:20:40', '2024-08-22 14:20:40'),
(505, 'create', 'lending.blogs', '4', '14', 'App\\Models\\Lending\\Blog', '2024-08-22 14:20:49', '2024-08-22 14:20:49'),
(506, 'create', 'lending.blogs', '4', '15', 'App\\Models\\Lending\\Blog', '2024-08-22 14:20:56', '2024-08-22 14:20:56'),
(507, 'create', 'lending.blogs', '4', '16', 'App\\Models\\Lending\\Blog', '2024-08-22 14:21:06', '2024-08-22 14:21:06'),
(508, 'create', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-23 08:56:01', '2024-08-23 08:56:01'),
(509, 'create', 'lending.tours', '4', '3', 'App\\Models\\Lending\\Tour', '2024-08-23 08:56:08', '2024-08-23 08:56:08'),
(510, 'create', 'lending.tours', '4', '4', 'App\\Models\\Lending\\Tour', '2024-08-23 08:56:16', '2024-08-23 08:56:16'),
(511, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-23 09:06:16', '2024-08-23 09:06:16'),
(512, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-23 09:13:30', '2024-08-23 09:13:30'),
(513, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-23 09:17:04', '2024-08-23 09:17:04'),
(514, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-23 09:17:26', '2024-08-23 09:17:26'),
(515, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-23 09:17:37', '2024-08-23 09:17:37'),
(516, 'update', 'lending.tours', '4', '3', 'App\\Models\\Lending\\Tour', '2024-08-23 09:22:46', '2024-08-23 09:22:46'),
(517, 'update', 'lending.tours', '4', '4', 'App\\Models\\Lending\\Tour', '2024-08-23 09:23:51', '2024-08-23 09:23:51'),
(518, 'update', 'lending.news', '4', '2', 'App\\Models\\Lending\\News', '2024-08-23 10:06:34', '2024-08-23 10:06:34'),
(519, 'update', 'lending.news', '4', '2', 'App\\Models\\Lending\\News', '2024-08-23 10:10:24', '2024-08-23 10:10:24'),
(520, 'update', 'lending.news', '4', '2', 'App\\Models\\Lending\\News', '2024-08-23 10:11:05', '2024-08-23 10:11:05'),
(521, 'create', 'lending.news', '4', '3', 'App\\Models\\Lending\\News', '2024-08-23 10:17:19', '2024-08-23 10:17:19'),
(522, 'create', 'lending.news', '4', '4', 'App\\Models\\Lending\\News', '2024-08-23 10:17:48', '2024-08-23 10:17:48'),
(523, 'create', 'lending.tours', '4', '5', 'App\\Models\\Lending\\Tour', '2024-08-23 13:14:51', '2024-08-23 13:14:51'),
(524, 'create', 'lending.tours', '4', '6', 'App\\Models\\Lending\\Tour', '2024-08-23 13:14:57', '2024-08-23 13:14:57'),
(525, 'create', 'lending.tours', '4', '7', 'App\\Models\\Lending\\Tour', '2024-08-23 13:15:03', '2024-08-23 13:15:03'),
(526, 'create', 'lending.tours', '4', '8', 'App\\Models\\Lending\\Tour', '2024-08-23 13:15:09', '2024-08-23 13:15:09'),
(527, 'create', 'lending.tours', '4', '9', 'App\\Models\\Lending\\Tour', '2024-08-23 13:15:16', '2024-08-23 13:15:16'),
(528, 'create', 'lending.tours', '4', '10', 'App\\Models\\Lending\\Tour', '2024-08-23 13:15:23', '2024-08-23 13:15:23'),
(529, 'create', 'lending.tours', '4', '11', 'App\\Models\\Lending\\Tour', '2024-08-23 13:15:32', '2024-08-23 13:15:32'),
(530, 'create', 'lending.tours', '4', '12', 'App\\Models\\Lending\\Tour', '2024-08-23 13:15:40', '2024-08-23 13:15:40'),
(531, 'create', 'lending.tours', '4', '13', 'App\\Models\\Lending\\Tour', '2024-08-23 13:16:02', '2024-08-23 13:16:02'),
(532, 'create', 'lending.tours', '4', '14', 'App\\Models\\Lending\\Tour', '2024-08-23 13:16:13', '2024-08-23 13:16:13'),
(533, 'create', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-08-23 13:16:25', '2024-08-23 13:16:25'),
(534, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-08-23 14:38:57', '2024-08-23 14:38:57'),
(535, 'update', 'lending.tours', '4', '14', 'App\\Models\\Lending\\Tour', '2024-08-23 14:40:33', '2024-08-23 14:40:33');

-- --------------------------------------------------------

--
-- Структура таблицы `advs`
--

CREATE TABLE `advs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `img` text COLLATE utf8mb4_unicode_ci,
  `hide` tinyint DEFAULT '0',
  `rating` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `advs`
--

INSERT INTO `advs` (`id`, `title`, `subtitle`, `text`, `img`, `hide`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'Hard Rock', 'HotelMaldives', '<p><span style=\"color: rgb(79, 54, 82); font-family: Inter, sans-serif; font-size: 22px; letter-spacing: -0.44px;\">Это больше, чем просто роскошный курорт</span><br></p>', 'images/advs/0nn4J7a1kJsPX8tFwRyT4q2XNuBqkDPLDM9fhOqN.png', 0, 0, '2024-08-22 07:59:01', '2024-08-22 09:52:47'),
(2, 'news adv', 'new adv subtitle', '<p>some new adv text</p>', 'images/advs/WRL6L6iQxLpHesA1Zqo111wg0ujoE7QrSB8z0bge.jpg', 0, 0, '2024-08-22 09:54:13', '2024-08-22 09:54:13');

-- --------------------------------------------------------

--
-- Структура таблицы `attached_files`
--

CREATE TABLE `attached_files` (
  `id` bigint UNSIGNED NOT NULL,
  `page_id` bigint UNSIGNED DEFAULT NULL,
  `file_id` bigint UNSIGNED DEFAULT NULL,
  `rating` int DEFAULT '0',
  `hide` tinyint UNSIGNED DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `attached_files`
--

INSERT INTO `attached_files` (`id`, `page_id`, `file_id`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(2, 2, 3, 0, 0, '2024-08-19 11:09:18', '2024-08-19 11:09:18'),
(3, 2, 4, 0, 0, '2024-08-19 11:09:28', '2024-08-19 11:09:28');

-- --------------------------------------------------------

--
-- Структура таблицы `attached_pages`
--

CREATE TABLE `attached_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `page_id` bigint UNSIGNED DEFAULT NULL,
  `attached_page_id` bigint UNSIGNED NOT NULL,
  `rating` int DEFAULT '0',
  `hide` tinyint UNSIGNED DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `attached_pages`
--

INSERT INTO `attached_pages` (`id`, `page_id`, `attached_page_id`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(6, 3, 2, 0, 0, '2024-08-16 11:48:09', '2024-08-16 11:48:09'),
(23, 1, 3, 0, 0, '2024-08-19 08:11:14', '2024-08-19 08:11:14'),
(24, 1, 2, 0, 0, '2024-08-19 08:11:14', '2024-08-19 08:11:14'),
(47, 2, 10, 0, 0, '2024-08-19 12:23:47', '2024-08-19 12:23:47'),
(48, 2, 9, 0, 0, '2024-08-19 12:23:47', '2024-08-19 12:23:47'),
(49, 2, 8, 10, 0, '2024-08-19 12:23:47', '2024-08-20 13:43:47'),
(50, 2, 7, 0, 0, '2024-08-19 12:23:47', '2024-08-19 12:23:47'),
(51, 2, 6, 0, 0, '2024-08-19 12:23:47', '2024-08-19 12:23:47'),
(52, 2, 3, 0, 0, '2024-08-19 12:23:47', '2024-08-19 12:23:47'),
(53, 5, 10, 0, 0, '2024-08-19 12:24:17', '2024-08-19 12:24:17'),
(54, 5, 9, 0, 0, '2024-08-19 12:24:17', '2024-08-19 12:24:17'),
(55, 5, 8, 0, 0, '2024-08-19 12:24:17', '2024-08-19 12:24:17'),
(56, 5, 7, 0, 0, '2024-08-19 12:24:17', '2024-08-19 12:24:17'),
(57, 5, 6, 0, 0, '2024-08-19 12:24:17', '2024-08-19 12:24:17'),
(58, 5, 3, 0, 0, '2024-08-19 12:24:17', '2024-08-19 12:24:17');

-- --------------------------------------------------------

--
-- Структура таблицы `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `preview_image` text COLLATE utf8mb4_unicode_ci,
  `preview_text` text COLLATE utf8mb4_unicode_ci,
  `rating` int DEFAULT '0',
  `hide` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `blogs`
--

INSERT INTO `blogs` (`id`, `url`, `text`, `title`, `image`, `preview_image`, `preview_text`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(1, 'test', '<h3 class=\"blog-detailed-block__title\" style=\"margin-top: 50px; margin-bottom: 20px; font-family: Inter, sans-serif; font-size: 32px; font-weight: 500; line-height: 38.73px; letter-spacing: -0.02em; color: rgb(52, 38, 53);\">Примите участие в акции туристический кешбэк</h3><p class=\"blog-detailed-block__text\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 17px; line-height: 20.57px; letter-spacing: -0.02em; color: rgb(52, 38, 53);\">Спешите отправиться в путешествие по нашей стране с очень хорошей скидкой!</p><h3 class=\"blog-detailed-block__title\" style=\"margin-top: 50px; margin-bottom: 20px; font-family: Inter, sans-serif; font-size: 32px; font-weight: 500; line-height: 38.73px; letter-spacing: -0.02em; color: rgb(52, 38, 53);\">Скидка за туры 20%</h3><p class=\"blog-detailed-block__text\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 17px; line-height: 20.57px; letter-spacing: -0.02em; color: rgb(52, 38, 53);\">предоставляется при единовременной оплате онлайн с помощью карты МИР, зарегистрированной в программе. Оплатить туристические услуги необходимо&nbsp;до 30.04.2022&nbsp;включительно, а ваша поездка должна состояться&nbsp;до 30.06.2022.&nbsp;Максимальная сумма к возврату - 20 000 рублей. Кешбэк возможен не только за пакетные туры, но и за отдельные услуги, такие как проживание в отеле, санатории или путешествие-круиз. Важно, чтобы длительность вашей поездки была&nbsp;дольше 2-х ночей&nbsp;включительно.Кроме того, есть возможность получить возврат за детский лагерь! В этом случае кешбэк составит 50% стоимости путевки, но также не более 20 000 рублей. Приобрести детскую путевку нужно до 31.08.2022.</p><h3 class=\"blog-detailed-block__title\" style=\"margin-top: 50px; margin-bottom: 20px; font-family: Inter, sans-serif; font-size: 32px; font-weight: 500; line-height: 38.73px; letter-spacing: -0.02em; color: rgb(52, 38, 53);\">Выбирайте любой регион России</h3><p class=\"blog-detailed-block__text\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 17px; line-height: 20.57px; letter-spacing: -0.02em; color: rgb(52, 38, 53);\">- Байкал, Казань, Карелия, Кавказ, Калининград, Владивосток, Камчатка, Сочи, Алтай, Крым и многие-многие другие! А мы поможем в организации вашего лучшего путешествия.</p><p><a href=\"http://localhost/blogs/1\" class=\"blog-detailed-block__search-tours\" style=\"font-family: Inter, sans-serif; font-size: 17px; font-weight: 400; line-height: 20.57px; letter-spacing: -0.02em; color: rgb(0, 0, 0); margin-top: 50px; display: block;\">Поиск туров с кешбэк 20%</a></p>', 'Какие города стоит посетить в Индии', 'images/blogs//xAxjQKMLgmueUZYnNzq2DFB2FgBJb2d6CmT25y5z.png', 'images/blogs//rjZtqT7YVFRJt6ZccfBN30UBxsi56tfH4ZbhJQ91.png', '<p><span style=\"color: rgb(88, 47, 154); font-family: Inter, sans-serif; font-size: 17px; letter-spacing: -0.34px;\">Индия – самобытная страна с древней историей, необычными и действенными духовными практиками, развитой древней народной медициной. Читайте, какие города стоит посмотреть во время путешествия в Индию.</span><br></p>', 0, 0, '2024-08-16 11:39:08', '2024-08-19 14:23:40'),
(5, 'kakie-goroda-stoit-posetit-v-indii', NULL, 'Какие города стоит посетить в Индии', NULL, NULL, NULL, 0, 0, '2024-08-22 13:23:36', '2024-08-22 13:23:36'),
(6, 'kakie-goroda-stoit-posetit-v-indii', NULL, 'Какие города стоит посетить в Индии', NULL, NULL, NULL, 0, 0, '2024-08-22 13:23:43', '2024-08-22 13:23:43'),
(7, 'kakie-goroda-stoit-posetit-v-indii', NULL, 'Какие города стоит посетить в Индии', NULL, NULL, NULL, 0, 0, '2024-08-22 13:23:50', '2024-08-22 13:23:50'),
(8, 'kakie-goroda-stoit-posetit-v-indii', NULL, 'Какие города стоит посетить в Индии', NULL, NULL, NULL, 0, 0, '2024-08-22 13:23:57', '2024-08-22 13:23:57'),
(9, 'kakie-goroda-stoit-posetit-v-indii', NULL, 'Какие города стоит посетить в Индии', NULL, NULL, NULL, 0, 0, '2024-08-22 13:24:04', '2024-08-22 13:24:04'),
(10, 'kakie-goroda-stoit-posetit-v-indii', NULL, 'Какие города стоит посетить в Индии', NULL, NULL, NULL, 0, 0, '2024-08-22 13:24:11', '2024-08-22 13:24:11'),
(11, 'kakie-goroda-stoit-posetit-v-indii', NULL, 'Какие города стоит посетить в Индии', NULL, NULL, NULL, 0, 0, '2024-08-22 13:24:17', '2024-08-22 13:24:17'),
(12, 'kakie-goroda-stoit-posetit-v-indii', NULL, 'Какие города стоит посетить в Индии', NULL, NULL, NULL, 0, 0, '2024-08-22 13:24:25', '2024-08-22 13:24:25'),
(13, '122', NULL, '122', NULL, NULL, NULL, 0, 0, '2024-08-22 14:20:40', '2024-08-22 14:20:40'),
(14, '11', NULL, '11', NULL, NULL, NULL, 0, 0, '2024-08-22 14:20:49', '2024-08-22 14:20:49'),
(15, '11', NULL, '11', NULL, NULL, NULL, 0, 0, '2024-08-22 14:20:56', '2024-08-22 14:20:56'),
(16, '11', NULL, '11', NULL, NULL, NULL, 0, 0, '2024-08-22 14:21:06', '2024-08-22 14:21:06');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide` tinyint DEFAULT '0',
  `rating` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `name`, `hide`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'Индонезия', 0, 2, '2024-08-22 10:59:11', '2024-08-22 11:02:19'),
(2, 'Шри Ланка', 0, 0, '2024-08-22 10:59:22', '2024-08-22 10:59:22'),
(3, 'Вьетнам', 0, 1, '2024-08-22 10:59:30', '2024-08-22 11:02:19'),
(4, 'Китай', 0, 0, '2024-08-22 11:30:38', '2024-08-22 11:30:43'),
(5, 'Япония', 0, 0, '2024-08-22 11:30:52', '2024-08-22 11:30:52'),
(6, 'Кения', 0, 0, '2024-08-22 11:31:00', '2024-08-22 11:31:00'),
(7, 'ЮАР', 0, 0, '2024-08-22 11:31:11', '2024-08-22 11:31:11'),
(8, 'Тайланд', 0, 0, '2024-08-22 11:31:27', '2024-08-22 11:31:27');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `path` text COLLATE utf8mb4_unicode_ci,
  `rating` int DEFAULT '0',
  `hide` tinyint UNSIGNED DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `files`
--

INSERT INTO `files` (`id`, `name`, `path`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(1, '<p>Агентский договор</p>', NULL, 0, 0, '2024-08-21 14:22:20', '2024-08-21 14:41:21');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint UNSIGNED NOT NULL,
  `original` varchar(255) NOT NULL COMMENT 'Основное изображение',
  `thumbnail` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL COMMENT 'Имя файла до присвоения уникального имени',
  `rating` int DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  `item_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `original`, `thumbnail`, `alt`, `file_name`, `rating`, `item_id`, `item_type`) VALUES
(34, 'images/tours/programs/vb7BV28zxIIz9CypR4eFZyLUJG7vTJgIbIGY4JIW.png', NULL, NULL, 'images/tours/programs/vb7BV28zxIIz9CypR4eFZyLUJG7vTJgIbIGY4JIW.png', NULL, 4, 'programs'),
(35, 'images/tours/programs/WV2VMOM2ujSHfcD7fXihw8y7WHH6K9PpnWPRMEMk.png', NULL, NULL, 'images/tours/programs/WV2VMOM2ujSHfcD7fXihw8y7WHH6K9PpnWPRMEMk.png', NULL, 4, 'programs'),
(36, 'images/tours/programs/FPeRJWQQo14XBysgyherT70tkTcuvSj5EyFvzM6U.png', NULL, NULL, 'images/tours/programs/FPeRJWQQo14XBysgyherT70tkTcuvSj5EyFvzM6U.png', NULL, 4, 'programs'),
(37, 'images/tours/programs/KAwoBhcWMnDkFBH35uPh88DuBmGlTvrjaFiFRxY3.png', NULL, NULL, 'images/tours/programs/KAwoBhcWMnDkFBH35uPh88DuBmGlTvrjaFiFRxY3.png', NULL, 4, 'programs'),
(38, 'images/tours/programs/Btdl0wzVAcnJ8qX7kJtctJn5rpBOHlixdBDZZfMo.png', NULL, NULL, 'images/tours/programs/Btdl0wzVAcnJ8qX7kJtctJn5rpBOHlixdBDZZfMo.png', NULL, 1, 'programs'),
(39, 'images/tours/programs/DlwK8InUkt1nGqD2eNszyxpkskC8FH3pTaFGvewe.png', NULL, NULL, 'images/tours/programs/DlwK8InUkt1nGqD2eNszyxpkskC8FH3pTaFGvewe.png', NULL, 1, 'programs'),
(40, 'images/tours/programs/2Ysp6hvvfiSUtlUBaBuObm7iA8BU5h38YS5p1aNV.png', NULL, NULL, 'images/tours/programs/2Ysp6hvvfiSUtlUBaBuObm7iA8BU5h38YS5p1aNV.png', NULL, 1, 'programs'),
(41, 'images/tours/programs/26c6yMjtFUVmNL3Zvr8xZZmDctr9LrHbOg1OS9NX.png', NULL, NULL, 'images/tours/programs/26c6yMjtFUVmNL3Zvr8xZZmDctr9LrHbOg1OS9NX.png', NULL, 1, 'programs'),
(42, 'images/tours/gallary/W0WJwU3QXzNijy6rpO0AoX60hSIcN0fMmMOM1PJa.png', NULL, NULL, 'images/tours/gallary/W0WJwU3QXzNijy6rpO0AoX60hSIcN0fMmMOM1PJa.png', 3, 1, 'tour'),
(43, 'images/tours/gallary/rwscbHcdpViSG6PP4Kz7M2EVCnakRNbW6Ibb6mlM.png', NULL, 'Дели', 'images/tours/gallary/rwscbHcdpViSG6PP4Kz7M2EVCnakRNbW6Ibb6mlM.png', 11, 1, 'tour'),
(44, 'images/tours/gallary/DPe4qNiL29zO2cXakuXF3HQQEbOcDZnYjHzWOAIZ.png', NULL, NULL, 'images/tours/gallary/DPe4qNiL29zO2cXakuXF3HQQEbOcDZnYjHzWOAIZ.png', 2, 1, 'tour'),
(45, 'images/tours/gallary/OZTjbh7XB4YwLVXIQSUEiibS4DxXslnJtONn34U7.png', NULL, NULL, 'images/tours/gallary/OZTjbh7XB4YwLVXIQSUEiibS4DxXslnJtONn34U7.png', NULL, 1, 'tour');

-- --------------------------------------------------------

--
-- Структура таблицы `infografika`
--

CREATE TABLE `infografika` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_id` bigint UNSIGNED DEFAULT NULL,
  `about_id` bigint UNSIGNED DEFAULT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `hide` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `infografika`
--

INSERT INTO `infografika` (`id`, `tour_id`, `about_id`, `icon`, `title`, `text`, `subtitle`, `rating`, `hide`) VALUES
(5, NULL, 1, 'images/tours/statistic_icons//4KM0Fuvb1hRxLsouG7SQdVMcKsbHpvQCf0G0JsOo.svg', 'Работаем с 2004 года', NULL, NULL, NULL, 0),
(6, NULL, 1, 'images/tours/statistic_icons//IBqamQWLfUDIu2gb8ojoTQGtZKTfQjSJy2masY5k.svg', 'Создаем пакетные туры и индивидуальные программы', NULL, NULL, NULL, 0),
(7, NULL, 1, 'images/tours/statistic_icons//0VZxE6tQTa29qjgf0Dmq1OirhpCYqSrBE0KyMgIP.svg', 'Работаем с проверенными и надежными партнерами по всему миру', NULL, NULL, NULL, 0),
(8, NULL, 1, 'images/tours/statistic_icons//QJyrIMRvLwJA2f8XwqhnvLEnWAsxSenTAk4y1oxr.svg', 'Наша команда – это квалифицированные менеджеры с опытом работы от 10 лет', NULL, NULL, NULL, 0),
(9, NULL, 1, 'images/tours/statistic_icons//UQ8I5MvIZ8xljbKmvGorbW6zHSbcDaeA5gIY7qO3.svg', 'Наш опыт и знание туристического рынка позволяют формировать для туристов интересные программы и выгодные цены', NULL, NULL, NULL, 0),
(10, NULL, 1, 'images/tours/statistic_icons//jf4v4yz6XaNyFmpgZiOwj8lGEOe7XDgdqTOIZHXF.svg', 'Наши туристы страхуются в стабильных страховых компаниях: «ЕВРОИНС» и «АльфаСтрахование»', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(159, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(162, '2024_08_12_110434_create_tours_table', 1),
(166, '2024_08_13_101205_create_tour_day_table', 1),
(168, '2024_08_14_152618_create_tour_programms_table', 1),
(175, '2024_08_12_110456_create_news_table', 2),
(176, '2024_08_12_110516_create_blogs_table', 2),
(177, '2024_08_12_110730_create_about_table', 2),
(178, '2024_08_13_101823_create_tour_statistic_info', 2),
(179, '2024_08_16_110335_create_personal_table', 2),
(187, '2024_08_16_115416_create_pages_table', 5),
(188, '2024_08_16_120704_create_attached_pages_table', 6),
(190, '2024_08_13_101823_create_infografika_table', 7),
(194, '2024_08_19_101108_create_attached_files_table', 8),
(195, '2024_08_19_120145_create_settings_table', 8),
(205, '2024_08_16_121346_create_files_table', 12),
(208, '2024_08_20_115414_create_advs_table', 13),
(209, '2024_08_12_103832_create_countries', 14),
(210, '2024_08_12_102141_create_tour_type_table', 15),
(234, '2024_08_20_125537_create_tour_types_table', 16),
(235, '2024_08_20_130037_create_tour_type_table', 16),
(236, '2024_08_22_145931_create_status_table', 16),
(237, '2024_08_22_150108_create_tour_status_table', 16),
(238, '2024_08_12_143948_create_tour_country_table', 17);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_text` text COLLATE utf8mb4_unicode_ci,
  `preview_image` text COLLATE utf8mb4_unicode_ci,
  `rating` int DEFAULT '0',
  `hide` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `url`, `text`, `image`, `title`, `preview_text`, `preview_image`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(2, 'test', '<p>test</p>', 'images/news//bLBEhNxIIEOnkZI0Z4qjcqxQhVtDPohQ13E7b2i2.png', 'Авиакомпания Utair повезет туристов в Анталью и Сочи', '<p>test</p>', 'images/news//xGpxjP84jqHemkJDG8I0oay3WXcb1LOEUyWU8Vbj.png', 0, 0, '2024-08-20 11:44:49', '2024-08-23 10:11:05'),
(3, 'belgorodskii-centr-turizma-polucil-gran-pri', NULL, NULL, 'Белгородский центр туризма получил Гран-при', NULL, 'images/news//ichSZ4GOPBBORZIHDEgNWyOyxnWPekHovjURe7Lm.png', 0, 0, '2024-08-23 10:17:19', '2024-08-23 10:17:19'),
(4, 'na-granice-s-kitaem-v-sumke-turista-nasli-zuby-kasalota', NULL, NULL, 'На границе с Китаем в сумке туриста нашли зубы кашалота', NULL, 'images/news//iwR38Zjx8HSACoqOb4QA4lkF892KQqJ1ZyewT8RE.png', 0, 0, '2024-08-23 10:17:47', '2024-08-23 10:17:48');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `about_text_1` text COLLATE utf8mb4_unicode_ci,
  `about_text_2` text COLLATE utf8mb4_unicode_ci,
  `definition` text COLLATE utf8mb4_unicode_ci,
  `rating` int DEFAULT '0',
  `hide` tinyint UNSIGNED DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `url`, `text`, `about_text_1`, `about_text_2`, `definition`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(1, 'О компании', 'o-kompanii', '<p>text</p>', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 20px; letter-spacing: -0.4px; background-color: rgb(254, 254, 254);\">До 2020 года основным видом деятельности компании была организация туров в Италию. Сегодня, активное использование современных цифровых технологий и интеграционных решений позволяют нам создавать для туристов качественный продукт по конкурентным ценам по таким странам как ОАЭ, Мальдивы, Сейшелы, Египет, Турция, Шри-Ланка, Таиланд, страны ЮВА, Китай и другим направлениям.</span><br></p>', '<p class=\"company-description__text\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 20px; line-height: 40px; letter-spacing: -0.02em; color: rgb(52, 38, 53); background-color: rgb(254, 254, 254);\">Наша компания сотрудничает с регулярными перевозчиками, что гарантирует выполнение всех обязательств перед клиентами и партнерами точно и в срок.</p><p class=\"company-description__text\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 20px; line-height: 40px; letter-spacing: -0.02em; color: rgb(52, 38, 53); background-color: rgb(254, 254, 254);\"><br></p><p class=\"company-description__text\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 20px; line-height: 40px; letter-spacing: -0.02em; color: rgb(52, 38, 53); background-color: rgb(254, 254, 254);\">За 20 лет работы на туристическом рынке мы зарекомендовали себя как надежная компания с безупречной финансовой репутацией.</p>', NULL, 0, 0, '2024-08-16 10:37:13', '2024-08-19 08:11:14'),
(2, 'Туристам', 'turistam', '<h1 class=\"agency-description__header\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 32px; line-height: 38.73px; letter-spacing: -0.02em; color: rgb(52, 38, 53);\">Сведения о туроператоре:</h1><p class=\"agency-description__text\" style=\"margin-top: 30px; margin-bottom: 30px; font-family: Inter, sans-serif; font-size: 18px; line-height: 30px; letter-spacing: -0.02em;\">В соответствии с требованиями федерального закона «О внесении изменений в Федеральный закон» об основах туристской деятельности в Российской Федерации», вступившего в действие 1 июня 2007 г., ООО «Туристическая фирма «Меркурий», ОГРН 1047833025635, внесена в единый федеральный реестр туроператоров под номером 017558, серия РТ0.</p><h2 class=\"agency-description__title\" style=\"margin-top: unset; margin-right: unset; margin-bottom: 30px; margin-left: unset; font-family: Inter, sans-serif; font-size: 24px; line-height: 30px; letter-spacing: -0.02em;\">Ответственность Туроператора застрахована в страховой компании:</h2><h3 class=\"agency-description__subtitle\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 18px; line-height: 30px; letter-spacing: -0.02em; color: rgb(52, 38, 53);\">Международный выездной туризм</h3><p class=\"agency-description__text\" style=\"margin-top: 30px; margin-bottom: 30px; font-family: Inter, sans-serif; font-size: 18px; line-height: 30px; letter-spacing: -0.02em;\">На основании решения Ассоциации \"Объединение туроператоров всфере выездного туризма \"ТУРПОМОЩЬ\" № 317 от 07.03.2024 г. длясферы \"выездной туризм\" финансовое обеспечение не требуется до01.04.2025г.</p><h3 class=\"agency-description__subtitle\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 18px; line-height: 30px; letter-spacing: -0.02em; color: rgb(52, 38, 53);\">Внутренний туризм, международный въездной</h3><p class=\"agency-description__text\" style=\"margin-top: 30px; margin-bottom: 30px; font-family: Inter, sans-serif; font-size: 18px; line-height: 30px; letter-spacing: -0.02em;\">Общество с Ограниченной Ответственностью «Русское Страховое Общество«Евроинс». Адрес (место нахождения) организации: Смоленская обл, г Смоленск, улГлинки, д 7Документ:№ № ЛСП02/23/ГО-ТУР№ 2671163 от 06/12/2023Срок действия финансового обеспечения: с с 29/01/2024 по 28/01/2025 г.Размер финансового обеспечения: 500000 р.</p><p class=\"agency-description__text\" style=\"margin-top: 30px; margin-bottom: 30px; font-family: Inter, sans-serif; font-size: 18px; line-height: 30px; letter-spacing: -0.02em;\">ООО «Туристическая фирма «МЕРКУРИЙ» в&nbsp;<a href=\"http://localhost/pages/turistam\" class=\"agency-description-text_link\" style=\"font-family: Inter, sans-serif; font-weight: 400; line-height: 30px; letter-spacing: -0.02em; color: rgb(52, 38, 53); text-decoration: none; border-bottom: 1px solid rgb(52, 38, 53);\">Едином федеральном реестре на сайте Ростуризма</a>&nbsp;Желаем Вам успешных продаж и надеемся на плодотворное сотрудничество!</p>', NULL, NULL, NULL, 0, 0, '2024-08-16 10:39:29', '2024-08-19 10:01:12'),
(3, 'Страхование', 'straxovanie', NULL, NULL, NULL, NULL, 0, 0, '2024-08-16 10:41:33', '2024-08-16 10:41:33'),
(4, 'Контакты', 'kontakty', NULL, NULL, NULL, NULL, 0, 0, '2024-08-19 12:16:14', '2024-08-19 12:16:14'),
(5, 'Агентствам', 'agentstvam', NULL, NULL, NULL, NULL, 0, 0, '2024-08-19 12:20:43', '2024-08-19 12:20:43'),
(6, 'Рекламные туры', 'reklamnye-tury', NULL, NULL, NULL, NULL, 0, 0, '2024-08-19 12:22:22', '2024-08-19 12:22:22'),
(7, 'Сотрудничество', 'sotrudnicestvo', NULL, NULL, NULL, NULL, 0, 0, '2024-08-19 12:22:33', '2024-08-19 12:22:33'),
(8, 'Документы', 'dokumenty', NULL, NULL, NULL, NULL, 0, 0, '2024-08-19 12:22:45', '2024-08-19 12:22:45'),
(9, 'Способ оплаты', 'sposob-oplaty', NULL, NULL, NULL, NULL, 0, 0, '2024-08-19 12:22:57', '2024-08-19 12:22:57'),
(10, 'Партнерская программа', 'partnerskaia-programma', NULL, NULL, NULL, NULL, 0, 0, '2024-08-19 12:23:14', '2024-08-19 12:23:14');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal`
--

CREATE TABLE `personal` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `email` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide` tinyint UNSIGNED DEFAULT '0',
  `rating` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `personal`
--

INSERT INTO `personal` (`id`, `name`, `description`, `email`, `hide`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'Татьяна Худякова', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 17px; letter-spacing: -0.34px; background-color: rgb(254, 254, 254);\">Африка - Кения, Танзания, Намибия, ЮАР, Намибия, Куба, Индийский океан - Сейшелы, Мальдивы, ЮВА - Индонезия, Латинская Америка - Перу, Европа - Франция и Португалия</span><br></p>', 'exotic1@mercury-europe.ru', 0, 0, '2024-08-19 07:38:36', '2024-08-19 07:38:36'),
(2, 'Светлана Сапега', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 17px; letter-spacing: -0.34px; background-color: rgb(254, 254, 254);\">ОАЭ, Индия, Катар, Оман, Таиланд, Филиппины, Малайзия, Сингапур, Иран</span><br></p>', 'svetlana@mercury-europe.ru', 0, 0, '2024-08-19 07:51:33', '2024-08-19 07:51:33'),
(3, 'Екатерина Тарасенкова', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 17px; letter-spacing: -0.34px; background-color: rgb(254, 254, 254);\">Италия, Хорватия, Черногория, Венгрия, Турция, Испания, Кипр, Индонезия, Вьетнам, Египет, Шри-Ланка</span><br></p>', 'ekaterina@italy-spb.ru', 0, 0, '2024-08-19 07:51:53', '2024-08-19 07:51:53'),
(4, 'Екатерина Тарасенкова', '<p>Италия, Хорватия, Черногория, Венгрия, Турция, Испания, Кипр, Индонезия, Вьетнам, Египет, Шри-Ланка<br></p>', 'ekaterina@italy-spb.ru', 0, 0, '2024-08-19 07:52:20', '2024-08-19 07:52:20'),
(5, 'Татьяна Иванова', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 17px; letter-spacing: -0.34px; background-color: rgb(254, 254, 254);\">Италия, Франция, Испания, Сербия, Китай, Израиль, Кипр, Узбекистан, Армения, Скандинавия, Прибалтика, Болгария</span><br></p>', 'booking@italy-spb.ru', 0, 0, '2024-08-19 07:53:10', '2024-08-19 07:53:10'),
(6, 'Кристина Калашникова', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 17px; letter-spacing: -0.34px; background-color: rgb(254, 254, 254);\">Мальдивы, Маврикий, Мексика, Доминикана, Греция, Великобритания, Япония</span><br></p>', 'kristina@mercury-europe.ru', 0, 0, '2024-08-19 07:53:30', '2024-08-19 07:53:30'),
(7, 'Мария Слободян', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 17px; letter-spacing: -0.34px; background-color: rgb(254, 254, 254);\">Россия, Абхазия, Венгрия, Беларусь, Мальта, Словения, Швейцария, Южная Корея</span><br></p>', 'booking1@mercury-europe.ru', 0, 0, '2024-08-19 07:53:55', '2024-08-19 07:53:55'),
(8, 'Наталья Денисюк', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 17px; letter-spacing: -0.34px; background-color: rgb(254, 254, 254);\">Италия, Андорра, Португалия, Испания (острова)</span><br></p>', 'natalia@italy-spb.ru', 0, 0, '2024-08-19 07:54:18', '2024-08-19 07:54:18'),
(9, 'Бухгалтерия', NULL, 'buh@ mercury-europe.ru', 0, 0, '2024-08-19 07:54:33', '2024-08-19 07:54:33'),
(10, 'Отдел по работе с агентствами', NULL, 'travel@ mercury-europe.ru', 0, 0, '2024-08-19 07:54:49', '2024-08-19 07:54:49'),
(11, 'Отдел тарификации', NULL, 'epavel@mercury-europe.ru', 0, 0, '2024-08-19 07:55:02', '2024-08-19 07:55:02'),
(12, 'Добрев Александр', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 17px; letter-spacing: -0.34px; background-color: rgb(254, 254, 254);\">Директор по продукту</span><br></p>', 'product@mercury-europe.ru', 0, 0, '2024-08-19 07:55:20', '2024-08-19 07:55:20'),
(13, 'Логачева Юлия Юрьевна', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 17px; letter-spacing: -0.34px; background-color: rgb(254, 254, 254);\">Генеральный директор</span><br></p>', 'info@mercury-europe.ru', 0, 0, '2024-08-19 07:55:43', '2024-08-19 07:55:43');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

CREATE TABLE `requests` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `seo`
--

CREATE TABLE `seo` (
  `id` bigint NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `canonical` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `og_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `og_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `og_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `twitter_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `twitter_site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `jsonld_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `jsonld_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `jsonld_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `setting`
--

CREATE TABLE `setting` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `setting`
--

INSERT INTO `setting` (`id`, `title`, `notice`, `address`, `email`, `phone`, `phone2`, `footer_text`, `logo`, `created_at`, `updated_at`) VALUES
(1, '', NULL, '129626, г. Москва,  вн. тер. г. муниципальный округ Алексеевский, ул. 1-я Мытищинская, д.3, стр.1, этаж/кабинет 4/403, ком.8', 'mistral997mos@mail.ru', '+7 (111) 111-11-11', '+7 (968) 584-99-05', NULL, NULL, NULL, '2023-05-29 07:38:30');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phones` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `address`, `phones`, `email`, `whatsapp`, `telegram`, `vk`, `created_at`, `updated_at`) VALUES
(1, 'Санкт-Петербург, 7-я Красноармейская ул, дом 7 пом 7Н, домофон 3', '+7 (812) 957-01-85,+7 (812) 702-77-85', 'info@mercury-europe.ru', NULL, NULL, NULL, NULL, '2024-08-19 09:22:10');

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `text2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `preview` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fact1` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fact2` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fact3` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `hide` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `title`, `text`, `text2`, `image`, `preview`, `fact1`, `fact2`, `fact3`, `hide`, `rating`, `updated_at`, `created_at`) VALUES
(1, 'Бытовая техника', 'пылесосы, фены, телевизоры, стиральные машины, стайлеры', NULL, 'images/slider/H5Pu4xAi4RuZnIX7nZxUmpdkjH2RtUSCRe5Ua0eU.svg', NULL, NULL, NULL, NULL, NULL, 2, '2024-08-13 08:31:13', '2023-05-16 12:12:27'),
(2, 'Офисная техника', 'ноутбуки, принтеры, сканеры, планшеты, Клавиатуры, компьютерные мыши', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-29 07:39:22', '2023-05-16 12:12:27'),
(3, 'Электроника', 'телефоны, принтеры, часы, гаджеты, игровые приставки', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-29 07:39:10', '2023-05-16 12:12:27');

-- --------------------------------------------------------

--
-- Структура таблицы `slider2`
--

CREATE TABLE `slider2` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `hide` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `slider2`
--

INSERT INTO `slider2` (`id`, `title`, `text`, `image`, `hide`, `rating`, `updated_at`, `created_at`) VALUES
(14, 'Videos card', 'Auis nostrud exercitation', NULL, NULL, NULL, '2023-05-12 08:33:01', '2023-05-12 08:33:01'),
(15, 'Videos card', 'Auis nostrud exercitation', NULL, NULL, NULL, '2023-05-12 08:33:15', '2023-05-12 08:33:15');

-- --------------------------------------------------------

--
-- Структура таблицы `specs`
--

CREATE TABLE `specs` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `hide` int DEFAULT '0',
  `rating` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `specs`
--

INSERT INTO `specs` (`id`, `title`, `text`, `image`, `hide`, `rating`, `updated_at`, `created_at`) VALUES
(12, 'Prompt delivery of orders', NULL, NULL, 0, 2, '2023-05-29 07:40:16', '2023-05-16 12:18:06'),
(13, 'Quality inspection', NULL, NULL, 0, 1, '2023-05-29 07:40:22', '2023-05-16 12:18:10'),
(14, 'Latest generation electronics', NULL, NULL, 0, 0, '2023-05-29 07:40:32', '2023-05-16 12:18:13'),
(15, 'Installation assistance', NULL, NULL, 0, NULL, '2023-05-29 07:40:54', '2023-05-29 07:34:23'),
(16, 'Manufacturer\'s warranty', NULL, NULL, 0, NULL, '2023-05-29 07:55:46', '2023-05-29 07:34:32'),
(17, 'Expert advice on equipment selection', NULL, NULL, 0, NULL, '2023-05-29 07:55:57', '2023-05-29 07:34:43');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int DEFAULT '0',
  `hide` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `name`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(1, 'Хит', 0, 0, '2024-08-22 12:56:24', '2024-08-22 12:56:24'),
(4, 'Новинка', 0, 0, '2024-08-22 13:19:21', '2024-08-22 13:19:21');

-- --------------------------------------------------------

--
-- Структура таблицы `texts`
--

CREATE TABLE `texts` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `subtext` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `texts`
--

INSERT INTO `texts` (`id`, `name`, `text`, `title`, `subtext`, `updated_at`, `created_at`) VALUES
(9, NULL, '<p><br></p>', 'Innovative solutions', 'Open up a world of limitless possibilities with networking equipment and electronics from SkyWalk', '2023-05-29 07:36:47', '2023-05-16 12:14:23'),
(10, NULL, NULL, 'Our equipment', NULL, '2023-05-29 07:36:56', '2023-05-16 12:15:06'),
(11, NULL, '<p>\r\n                        Stability and efficiency of business processes. In today\'s world, without electronic devices and\r\n                        computer technology, it would be impossible to manage business and\r\n                        production processes efficiently.\r\n                    </p>\r\n                    <br>\r\n                    <p>\r\n                        High-quality electronic devices ensure fast and accurate information exchange, increase\r\n                        efficiency, reduce processing time and reduce the likelihood of errors. When you\r\n                        turn to trusted electronics suppliers, you get the reliability of your equipment and the maximum\r\n                        benefit from modern technology.\r\n                    </p>', 'Networking equipment  and electronics', NULL, '2023-05-29 07:48:44', '2023-05-16 12:15:24'),
(12, NULL, NULL, 'High-tech equipment from renowned manufacturers', NULL, '2023-05-29 07:37:33', '2023-05-29 07:36:07'),
(13, NULL, '<p>\r\n                        When you contact us, you get high-tech equipment and professional support from our team. We\r\n                        provide our customers with the best service and are always ready to help\r\n                        solve any technical problems.\r\n                    </p>\r\n                    <br>\r\n                    <p>\r\n                        We offer competitive prices for all our products and are constantly updating our range to meet\r\n                        the latest technological requirements. Contact us, our team will answer\r\n                        any questions and suggest the products that are right for you.\r\n                    </p>', 'Reliable equipment and professional service', NULL, '2023-05-29 07:52:35', '2023-05-29 07:36:13'),
(14, NULL, '<p>Our experts will give you professional advice and help you choose the right equipment for your\r\n                        needs</p>\r\n                    <p>\r\n                        We provide our clients with the best to optimise and improve the efficiency of their business\r\n                        processes. SkyWalk supplies a wide range of networking equipment and\r\n                        electronics and is a trusted partner for many companies in various industries.\r\n                    </p>\r\n                    <p>\r\n                        We collaborate with renowned equipment manufacturers: Dell, Intel, Seagate, Samsung, Cisco,\r\n                        Toshiba, HP, lenovo. We offer a wide range of products: switches, routers,\r\n                        firewalls, wireless equipment, laptops, computers, monitors and other devices.\r\n                    </p>', 'About us', NULL, '2023-05-29 07:52:58', '2023-05-29 07:36:18'),
(15, NULL, NULL, 'Оur contacts', NULL, '2023-05-29 07:38:08', '2023-05-29 07:38:08');

-- --------------------------------------------------------

--
-- Структура таблицы `tours`
--

CREATE TABLE `tours` (
  `id` bigint UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_header` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_text` text COLLATE utf8mb4_unicode_ci,
  `preview_price` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_nights` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_image` text COLLATE utf8mb4_unicode_ci,
  `agreement_info` longtext COLLATE utf8mb4_unicode_ci,
  `tour_cost_info` longtext COLLATE utf8mb4_unicode_ci,
  `tour_additional_cost` longtext COLLATE utf8mb4_unicode_ci,
  `rating` int DEFAULT '0',
  `hide` tinyint DEFAULT '0',
  `background_image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tours`
--

INSERT INTO `tours` (`id`, `url`, `description`, `title`, `subtitle`, `preview_title`, `preview_header`, `preview_text`, `preview_price`, `preview_nights`, `preview_image`, `agreement_info`, `tour_cost_info`, `tour_additional_cost`, `rating`, `hide`, `background_image`, `created_at`, `updated_at`) VALUES
(1, 'ekskursionnyy-tur-zolotoy-treugolnik', '<span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 20px; letter-spacing: -0.6px;\">Все, что есть в Индии, создано благодаря любви. Любовь к науке и истине позволяет сегодня лицезреть нам обсерваторию Джантар Мантар в Джайпуре. Благодаря бхакти, любви к богу, люди возвели храмы Вриндавана, Храм Лотоса и Акшардхам в Дели. Любовь к женам один из правителей реализовал в великолепном дворце Хава Махал - где жили женщины гарема. Хрестоматиен пример любви, благодаря которой мы можем любоваться мавзолеем Тадж Махал. Да и в нашем случае виновата любовь к путешествиям – с нее обычно и начинается любовь к Индии.</span>', 'Экскурсионный тур: «Золотой треугольник»', 'Самый лучший тур по Индии для первого знакомства!', 'Касабланка - Рабат - Шефшауэн - (Волюбилис) - Фес - Мерзуга - Уарзазат - Айт бен Хадду', 'Майские праздники в Тайланде', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; letter-spacing: -0.48px;\">Таиланд- это сказочный «остров богов», «остров тысячи храмов» и драгоценная жемчужина Индонезии... В цене проживани...</span><br></p>', 'от 120 587 ₽', '7-12 ночей', NULL, '<p><span style=\"color: rgb(97, 97, 97); font-family: Inter, sans-serif; font-size: 15px; font-style: italic; letter-spacing: -0.3px;\">Туроператор оставляет за собой право менять время и порядок проведения экскурсий, при этом не меняя общую программу обслуживания.</span><br style=\"color: rgb(97, 97, 97); font-family: Inter, sans-serif; font-size: 15px; font-style: italic; letter-spacing: -0.3px;\"><br style=\"color: rgb(97, 97, 97); font-family: Inter, sans-serif; font-size: 15px; font-style: italic; letter-spacing: -0.3px;\"><span style=\"color: rgb(97, 97, 97); font-family: Inter, sans-serif; font-size: 15px; font-style: italic; letter-spacing: -0.3px;\">Принимающая сторона несет ответственность за организацию программ, работу сотрудников компании, уровень предоставляемого сервиса и своевременную оплату контрагентам, тем не менее мы хотели бы обратить ваше внимание на следующие обстоятельства, которые выходят за рамки прямого контроля, и мы сделаем все возможное, чтобы оптимизировать любые расходы в чрезвычайных ситуациях. К таким ситуациям относятся случаи задержки/ отмены/ изменения расписания рейсов и поездов, а также стихийные бедствия, погодные аномалии, закрытия дорог, болезни и т.д.</span><br style=\"color: rgb(97, 97, 97); font-family: Inter, sans-serif; font-size: 15px; font-style: italic; letter-spacing: -0.3px;\"><br style=\"color: rgb(97, 97, 97); font-family: Inter, sans-serif; font-size: 15px; font-style: italic; letter-spacing: -0.3px;\"><span style=\"color: rgb(97, 97, 97); font-family: Inter, sans-serif; font-size: 15px; font-style: italic; letter-spacing: -0.3px;\">Принимающая сторона оставляет за собой право изменять отели с учетом их соответствия стандартам в случае, если в указанных отелях номера закончились. Стандартное время заселения и выселения в отелях 12.00 дня. Время переездов указано индикативно и может меняться в зависимости от трафика.</span><br></p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Международный перелет (включен или не включен в зависимости от выбранного типа подпакета)\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Проживание в выбранном отеле с указанным типом питания\r\n                            </p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Личные расходы и все, что не указано явно в программе тура\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Страховка от невыезда 3,5% или 5,5% от стоимости тура (оформляется по желанию)\r\n                            </p>', 0, 0, 'images/tours/4qRsuekB357BdhjFBrvADP3w48A51SUJLDUlLDFJ.png', '2024-08-15 08:01:32', '2024-08-15 11:47:58'),
(2, '11', NULL, 'Касабланка - Рабат - Шефшауэн - (Волюбилис) - Фес - Мерзуга - Уарзазат - Айт бен Хадду', NULL, 'Касабланка - Рабат - Шефшауэн - (Волюбилис) - Фес - Мерзуга - Уарзазат - Айт бен Хадду', 'Отдых в Као-Лаке', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; letter-spacing: -0.48px;\">От 2 до 21 ночей отдыха в курортном городке Таиланда Као-Лак. В цене - п роживание в выбранном отеле, индивидуальны трансферы, мед. страховки.</span><br></p>', 'от 120 587 ₽', '7-12 ночей', 'images/tours/bnEd97vYHPFfjKyp7P3oxbhsDZqLDgF9iR6qXPDd.png', NULL, NULL, NULL, 0, 0, NULL, '2024-08-23 08:56:01', '2024-08-23 09:17:37'),
(3, '12', NULL, 'Паттайя - о. Ко-Чанг - Бангкок', NULL, 'Паттайя - о. Ко-Чанг - Бангкок', 'Комбинированный тур: \"Паттайя + о. Ко-Чанг + Бангкок\"', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; letter-spacing: -0.48px;\">От 2 до 21 ночей отдыха в курортном городке Таиланда Као-Лак. В цене - проживание в выбранном отеле</span><br></p>', 'от 89 600 ₽', '6 ночей', 'images/tours/B6BPGz40jeXHk2dErdvi1OycKRTadpkPThYDKJFd.png', NULL, NULL, NULL, 0, 0, NULL, '2024-08-23 08:56:08', '2024-08-23 09:22:46'),
(4, '13', NULL, 'Сан Пауло - Парати - Ангра - Рио-де-Жанейро - Игуаcу - Буэнос-Айрес', NULL, 'Сан Пауло - Парати - Ангра - Рио-де-Жанейро - Игуаcу - Буэнос-Айрес', 'Отдых на о. Самуи', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; letter-spacing: -0.48px;\">Бали - это сказочный «остров богов», «остров тысячи храмов» и драгоценная жемчужина Индонезии... В цене проживание в выбранном отеле, трансферы, страховка</span><br></p>', 'от 360 400 ₽', '10-12 ночей', 'images/tours/GGUXvkSm8EqGX1UBku1ChWxEIxT7Vy7feMNORA4H.png', NULL, NULL, NULL, 0, 0, NULL, '2024-08-23 08:56:16', '2024-08-23 09:23:51'),
(5, '11', NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2024-08-23 13:14:51', '2024-08-23 13:14:51'),
(6, '12', NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2024-08-23 13:14:57', '2024-08-23 13:14:57'),
(7, '13', NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2024-08-23 13:15:03', '2024-08-23 13:15:03'),
(8, '14', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2024-08-23 13:15:09', '2024-08-23 13:15:09'),
(9, '15', NULL, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2024-08-23 13:15:16', '2024-08-23 13:15:16'),
(10, '16', NULL, '16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2024-08-23 13:15:23', '2024-08-23 13:15:23'),
(11, '17', NULL, '17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2024-08-23 13:15:32', '2024-08-23 13:15:32'),
(12, '18', NULL, '18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2024-08-23 13:15:40', '2024-08-23 13:15:40'),
(13, '19', NULL, '19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2024-08-23 13:16:02', '2024-08-23 13:16:02'),
(14, '20', NULL, '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2024-08-23 13:16:13', '2024-08-23 13:16:13'),
(15, '21', NULL, '21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2024-08-23 13:16:25', '2024-08-23 13:16:25');

-- --------------------------------------------------------

--
-- Структура таблицы `tour_country`
--

CREATE TABLE `tour_country` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tour_country`
--

INSERT INTO `tour_country` (`id`, `tour_id`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2024-08-23 09:06:15', '2024-08-23 09:06:15'),
(2, 3, 1, '2024-08-23 09:22:46', '2024-08-23 09:22:46'),
(3, 14, 3, '2024-08-23 14:40:33', '2024-08-23 14:40:33');

-- --------------------------------------------------------

--
-- Структура таблицы `tour_days`
--

CREATE TABLE `tour_days` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_id` bigint UNSIGNED NOT NULL,
  `day` int DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tour_programs`
--

CREATE TABLE `tour_programs` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_id` bigint UNSIGNED DEFAULT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide` tinyint DEFAULT '0',
  `rating` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tour_programs`
--

INSERT INTO `tour_programs` (`id`, `tour_id`, `day`, `text`, `title`, `hide`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, '4-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Фатехпур Сикри - Агра', 0, 0, '2024-08-14 11:26:18', '2024-08-14 11:31:59'),
(2, 1, '3-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Джайпур - Фатехпур Сикри', 0, 1, '2024-08-14 11:28:24', '2024-08-14 11:31:59'),
(3, 1, '2-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 2, '2024-08-14 11:28:37', '2024-08-14 11:31:59'),
(4, 1, '1-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 3, '2024-08-14 11:28:50', '2024-08-14 11:31:59');

-- --------------------------------------------------------

--
-- Структура таблицы `tour_status`
--

CREATE TABLE `tour_status` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_id` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED DEFAULT NULL,
  `rating` int DEFAULT '0',
  `hide` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tour_status`
--

INSERT INTO `tour_status` (`id`, `tour_id`, `status_id`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(5, 1, 1, 0, 0, '2024-08-22 13:21:51', '2024-08-22 13:21:51'),
(6, 2, 1, 0, 0, '2024-08-23 09:06:16', '2024-08-23 09:06:16'),
(7, 3, 1, 0, 0, '2024-08-23 09:22:46', '2024-08-23 09:22:46');

-- --------------------------------------------------------

--
-- Структура таблицы `tour_type`
--

CREATE TABLE `tour_type` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_type_id` bigint UNSIGNED DEFAULT NULL,
  `tour_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tour_type`
--

INSERT INTO `tour_type` (`id`, `tour_type_id`, `tour_id`, `created_at`, `updated_at`) VALUES
(1, 1, 15, '2024-08-23 14:38:57', '2024-08-23 14:38:57');

-- --------------------------------------------------------

--
-- Структура таблицы `tour_types`
--

CREATE TABLE `tour_types` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint DEFAULT '0',
  `hide` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tour_types`
--

INSERT INTO `tour_types` (`id`, `type`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(1, 'Гарантированные блоки мест', 0, 0, '2024-08-22 13:02:53', '2024-08-22 13:02:53'),
(2, 'Групповые туры ITM club', 0, 0, '2024-08-22 13:03:02', '2024-08-22 13:03:02'),
(3, 'Серфинг', 0, 0, '2024-08-22 13:03:23', '2024-08-22 13:03:23'),
(7, 'Экспедиционные круизы', 0, 0, '2024-08-22 13:05:12', '2024-08-22 13:05:12');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint DEFAULT '0',
  `class_id` int DEFAULT '3',
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `class_id`, `image`) VALUES
(1, 'parusdan', 'parusdan@vk.com', NULL, '$2y$10$IzlzgwTRVUOxycVXhEmQ8.KNJ8yaQd6mAcPws77onaG3YFRimi1N.', NULL, NULL, NULL, 1, 1, NULL),
(2, 'test', 'test@test.ru', NULL, '$2y$10$xz1BmIq/ArHYyIOyCNfVCO9Znh5N2il4WpHVs.XUah70.esHS/RCS', NULL, '2022-05-23 00:23:37', '2022-05-23 00:26:15', 1, 1, NULL),
(3, 'admin', 'admin', NULL, '$2y$10$Fyc995.Q8YfZFq3q2lpwju46P8Gy.g4a00YxiLgU6ocZjALrIxpPa', NULL, '2022-07-24 13:28:30', '2022-07-24 13:28:30', 1, 1, NULL),
(4, 'test', 'test', NULL, '$2y$10$s2G4lcR2JZqKg1laXouHEuFIqeNCOCKxm9JqXF5Ilvymn37GS8fB2', NULL, '2022-09-06 03:39:58', '2022-10-13 05:55:38', 1, 1, 'images/users/lSnVvBRxR69i6GQVZ2eejrfTJ04zIASouySMEJu4.png');

-- --------------------------------------------------------

--
-- Структура таблицы `users_class`
--

CREATE TABLE `users_class` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_class`
--

INSERT INTO `users_class` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Администратор', NULL, NULL),
(2, 'Модератор', NULL, NULL),
(3, 'Обычный пользователь', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_access_rights`
--
ALTER TABLE `admin_access_rights`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_event_logs`
--
ALTER TABLE `admin_event_logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `advs`
--
ALTER TABLE `advs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `attached_files`
--
ALTER TABLE `attached_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attached_files_page_id_foreign` (`page_id`),
  ADD KEY `attached_files_file_id_foreign` (`file_id`);

--
-- Индексы таблицы `attached_pages`
--
ALTER TABLE `attached_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attached_pages_page_id_foreign` (`page_id`),
  ADD KEY `attached_pages_attached_page_id_foreign` (`attached_page_id`);

--
-- Индексы таблицы `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `infografika`
--
ALTER TABLE `infografika`
  ADD PRIMARY KEY (`id`),
  ADD KEY `infografika_tour_id_foreign` (`tour_id`),
  ADD KEY `infografika_about_id_foreign` (`about_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slider2`
--
ALTER TABLE `slider2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `specs`
--
ALTER TABLE `specs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tour_country`
--
ALTER TABLE `tour_country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_country_tour_id_foreign` (`tour_id`),
  ADD KEY `tour_country_country_id_foreign` (`country_id`);

--
-- Индексы таблицы `tour_days`
--
ALTER TABLE `tour_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_days_tour_id_foreign` (`tour_id`);

--
-- Индексы таблицы `tour_programs`
--
ALTER TABLE `tour_programs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_programs_tour_id_foreign` (`tour_id`);

--
-- Индексы таблицы `tour_status`
--
ALTER TABLE `tour_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_status_tour_id_foreign` (`tour_id`),
  ADD KEY `tour_status_status_id_foreign` (`status_id`);

--
-- Индексы таблицы `tour_type`
--
ALTER TABLE `tour_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_type_tour_type_id_foreign` (`tour_type_id`),
  ADD KEY `tour_type_tour_id_foreign` (`tour_id`);

--
-- Индексы таблицы `tour_types`
--
ALTER TABLE `tour_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_class_id_index` (`class_id`);

--
-- Индексы таблицы `users_class`
--
ALTER TABLE `users_class`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_access_rights`
--
ALTER TABLE `admin_access_rights`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT для таблицы `admin_event_logs`
--
ALTER TABLE `admin_event_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=536;

--
-- AUTO_INCREMENT для таблицы `advs`
--
ALTER TABLE `advs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `attached_files`
--
ALTER TABLE `attached_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `attached_pages`
--
ALTER TABLE `attached_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `infografika`
--
ALTER TABLE `infografika`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `personal`
--
ALTER TABLE `personal`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `slider2`
--
ALTER TABLE `slider2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `specs`
--
ALTER TABLE `specs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `tour_country`
--
ALTER TABLE `tour_country`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tour_days`
--
ALTER TABLE `tour_days`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tour_programs`
--
ALTER TABLE `tour_programs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tour_status`
--
ALTER TABLE `tour_status`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tour_type`
--
ALTER TABLE `tour_type`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tour_types`
--
ALTER TABLE `tour_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `attached_files`
--
ALTER TABLE `attached_files`
  ADD CONSTRAINT `attached_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attached_files_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `attached_pages`
--
ALTER TABLE `attached_pages`
  ADD CONSTRAINT `attached_pages_attached_page_id_foreign` FOREIGN KEY (`attached_page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attached_pages_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `infografika`
--
ALTER TABLE `infografika`
  ADD CONSTRAINT `infografika_about_id_foreign` FOREIGN KEY (`about_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `infografika_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tour_country`
--
ALTER TABLE `tour_country`
  ADD CONSTRAINT `tour_country_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tour_country_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tour_days`
--
ALTER TABLE `tour_days`
  ADD CONSTRAINT `tour_days_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tour_programs`
--
ALTER TABLE `tour_programs`
  ADD CONSTRAINT `tour_programs_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tour_status`
--
ALTER TABLE `tour_status`
  ADD CONSTRAINT `tour_status_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tour_status_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tour_type`
--
ALTER TABLE `tour_type`
  ADD CONSTRAINT `tour_type_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tour_type_tour_type_id_foreign` FOREIGN KEY (`tour_type_id`) REFERENCES `tour_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
