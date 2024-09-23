-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 18 2024 г., 10:57
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
  `definition` text,
  `description` longtext,
  `logo` text,
  `url` text NOT NULL,
  `hide` tinyint UNSIGNED DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_access_rights`
--

CREATE TABLE `admin_access_rights` (
  `id` bigint UNSIGNED NOT NULL,
  `path` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `user_class_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(343, 'lending.tours.status', 'read', '1', NULL, NULL),
(346, 'mailling', 'edit', '1', NULL, NULL),
(348, 'mailling', 'read', '1', NULL, NULL),
(349, 'mailling', 'delete', '1', NULL, NULL),
(351, 'users.agents', 'edit', '1', NULL, NULL),
(352, 'users.agents', 'delete', '1', NULL, NULL),
(353, 'users.agents', 'read', '1', NULL, NULL),
(354, 'services.export', 'edit', '1', NULL, NULL),
(355, 'services.export', 'read', '1', NULL, NULL),
(356, 'services.export', 'delete', '1', NULL, NULL),
(357, 'lending.sliders', 'delete', '1', NULL, NULL),
(358, 'lending.sliders', 'read', '1', NULL, NULL),
(359, 'lending.sliders', 'edit', '1\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_event_logs`
--

CREATE TABLE `admin_event_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `action` varchar(191) NOT NULL,
  `path` varchar(191) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `item_id` varchar(191) NOT NULL,
  `item_model` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(535, 'update', 'lending.tours', '4', '14', 'App\\Models\\Lending\\Tour', '2024-08-23 14:40:33', '2024-08-23 14:40:33'),
(536, 'update', 'lending.tours', '4', '14', 'App\\Models\\Lending\\Tour', '2024-08-26 08:30:24', '2024-08-26 08:30:24'),
(537, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-26 08:30:41', '2024-08-26 08:30:41'),
(538, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 08:31:34', '2024-08-26 08:31:34'),
(539, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-26 08:33:16', '2024-08-26 08:33:16'),
(540, 'update', 'lending.news', '4', '4', 'App\\Models\\Lending\\News', '2024-08-26 08:57:48', '2024-08-26 08:57:48'),
(541, 'update', 'lending.news', '4', '4', 'App\\Models\\Lending\\News', '2024-08-26 09:01:19', '2024-08-26 09:01:19'),
(542, 'update', 'lending.news', '4', '4', 'App\\Models\\Lending\\News', '2024-08-26 09:02:34', '2024-08-26 09:02:34'),
(543, 'update', 'lending.news', '4', '4', 'App\\Models\\Lending\\News', '2024-08-26 09:02:42', '2024-08-26 09:02:42'),
(544, 'update', 'lending.blogs', '4', '1', 'App\\Models\\Lending\\Blog', '2024-08-26 09:44:25', '2024-08-26 09:44:25'),
(545, 'update', 'services.documents', '4', '1', 'App\\Models\\Services\\File', '2024-08-26 09:57:45', '2024-08-26 09:57:45'),
(546, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-26 10:14:20', '2024-08-26 10:14:20'),
(547, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-26 10:14:59', '2024-08-26 10:14:59'),
(548, 'update', 'settings', '4', '1', 'App\\Models\\Setting', '2024-08-26 10:20:42', '2024-08-26 10:20:42'),
(549, 'update', 'lending.news', '4', '4', 'App\\Models\\Lending\\News', '2024-08-26 10:22:18', '2024-08-26 10:22:18'),
(550, 'update', 'lending.news', '4', '4', 'App\\Models\\Lending\\News', '2024-08-26 10:22:51', '2024-08-26 10:22:51'),
(551, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-26 10:34:49', '2024-08-26 10:34:49'),
(552, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-26 10:35:19', '2024-08-26 10:35:19'),
(553, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-26 10:39:03', '2024-08-26 10:39:03'),
(554, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-26 10:39:09', '2024-08-26 10:39:09'),
(555, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-26 10:42:10', '2024-08-26 10:42:10'),
(556, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-26 10:42:32', '2024-08-26 10:42:32'),
(557, 'update', 'lending.pages', '4', '2', 'App\\Models\\Lending\\Page', '2024-08-26 10:42:36', '2024-08-26 10:42:36'),
(558, 'update', 'lending.pages', '4', '5', 'App\\Models\\Lending\\Page', '2024-08-26 11:44:44', '2024-08-26 11:44:44'),
(559, 'update', 'lending.pages', '4', '5', 'App\\Models\\Lending\\Page', '2024-08-26 11:44:49', '2024-08-26 11:44:49'),
(560, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 12:27:06', '2024-08-26 12:27:06'),
(561, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:10:51', '2024-08-26 13:10:51'),
(562, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:11:23', '2024-08-26 13:11:23'),
(563, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:12:24', '2024-08-26 13:12:24'),
(564, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:14:05', '2024-08-26 13:14:05'),
(565, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:15:17', '2024-08-26 13:15:17'),
(566, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:16:12', '2024-08-26 13:16:12'),
(567, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:16:46', '2024-08-26 13:16:46'),
(568, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:17:34', '2024-08-26 13:17:34'),
(569, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:17:54', '2024-08-26 13:17:54'),
(570, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:18:33', '2024-08-26 13:18:33'),
(571, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:19:24', '2024-08-26 13:19:24'),
(572, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:19:28', '2024-08-26 13:19:28'),
(573, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:21:59', '2024-08-26 13:21:59'),
(574, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:22:06', '2024-08-26 13:22:06'),
(575, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-26 13:22:09', '2024-08-26 13:22:09'),
(576, 'update', 'lending.pages', '4', '10', 'App\\Models\\Lending\\Page', '2024-08-28 15:06:47', '2024-08-28 15:06:47'),
(577, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-08-29 10:01:03', '2024-08-29 10:01:03'),
(578, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-08-29 10:06:28', '2024-08-29 10:06:28'),
(579, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-29 10:07:40', '2024-08-29 10:07:40'),
(580, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-08-29 10:07:56', '2024-08-29 10:07:56'),
(581, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-08-29 10:16:07', '2024-08-29 10:16:07'),
(582, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-08-29 10:18:26', '2024-08-29 10:18:26'),
(583, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-08-29 10:19:07', '2024-08-29 10:19:07'),
(584, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-08-29 10:19:42', '2024-08-29 10:19:42'),
(585, 'update', 'lending.tours', '4', '14', 'App\\Models\\Lending\\Tour', '2024-08-29 10:22:29', '2024-08-29 10:22:29'),
(586, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-29 10:22:50', '2024-08-29 10:22:50'),
(587, 'update', 'lending.tours', '4', '14', 'App\\Models\\Lending\\Tour', '2024-08-29 10:23:19', '2024-08-29 10:23:19'),
(588, 'update', 'lending.tours', '4', '13', 'App\\Models\\Lending\\Tour', '2024-08-29 10:25:16', '2024-08-29 10:25:16'),
(589, 'update', 'lending.tours', '4', '13', 'App\\Models\\Lending\\Tour', '2024-08-29 10:27:10', '2024-08-29 10:27:10'),
(590, 'update', 'lending.tours', '4', '13', 'App\\Models\\Lending\\Tour', '2024-08-29 10:27:32', '2024-08-29 10:27:32'),
(591, 'update', 'lending.tours', '4', '12', 'App\\Models\\Lending\\Tour', '2024-08-29 10:29:16', '2024-08-29 10:29:16'),
(592, 'update', 'lending.tours', '4', '12', 'App\\Models\\Lending\\Tour', '2024-08-29 10:29:35', '2024-08-29 10:29:35'),
(593, 'update', 'lending.tours', '4', '12', 'App\\Models\\Lending\\Tour', '2024-08-29 10:29:41', '2024-08-29 10:29:41'),
(594, 'update', 'lending.tours', '4', '12', 'App\\Models\\Lending\\Tour', '2024-08-29 10:31:15', '2024-08-29 10:31:15'),
(595, 'update', 'lending.tours', '4', '11', 'App\\Models\\Lending\\Tour', '2024-08-29 10:33:14', '2024-08-29 10:33:14'),
(596, 'update', 'lending.tours', '4', '10', 'App\\Models\\Lending\\Tour', '2024-08-29 10:34:27', '2024-08-29 10:34:27'),
(597, 'update', 'lending.tours', '4', '9', 'App\\Models\\Lending\\Tour', '2024-08-29 10:35:26', '2024-08-29 10:35:26'),
(598, 'update', 'lending.tours', '4', '8', 'App\\Models\\Lending\\Tour', '2024-08-29 10:36:48', '2024-08-29 10:36:48'),
(599, 'update', 'lending.tours', '4', '7', 'App\\Models\\Lending\\Tour', '2024-08-29 10:38:01', '2024-08-29 10:38:01'),
(600, 'update', 'lending.tours', '4', '6', 'App\\Models\\Lending\\Tour', '2024-08-29 10:39:03', '2024-08-29 10:39:03'),
(601, 'update', 'lending.tours', '4', '5', 'App\\Models\\Lending\\Tour', '2024-08-29 10:40:12', '2024-08-29 10:40:12'),
(602, 'update', 'lending.tours', '4', '6', 'App\\Models\\Lending\\Tour', '2024-08-29 10:41:08', '2024-08-29 10:41:08'),
(603, 'update', 'lending.tours', '4', '11', 'App\\Models\\Lending\\Tour', '2024-08-29 10:41:24', '2024-08-29 10:41:24'),
(604, 'update', 'lending.tours', '4', '10', 'App\\Models\\Lending\\Tour', '2024-08-29 10:41:51', '2024-08-29 10:41:51'),
(605, 'update', 'lending.tours', '4', '10', 'App\\Models\\Lending\\Tour', '2024-08-29 10:43:57', '2024-08-29 10:43:57'),
(606, 'update', 'lending.tours', '4', '9', 'App\\Models\\Lending\\Tour', '2024-08-29 10:44:26', '2024-08-29 10:44:26'),
(607, 'update', 'lending.tours', '4', '9', 'App\\Models\\Lending\\Tour', '2024-08-29 10:45:16', '2024-08-29 10:45:16'),
(608, 'update', 'lending.tours', '4', '8', 'App\\Models\\Lending\\Tour', '2024-08-29 10:45:25', '2024-08-29 10:45:25'),
(609, 'update', 'lending.tours', '4', '7', 'App\\Models\\Lending\\Tour', '2024-08-29 10:45:38', '2024-08-29 10:45:38'),
(610, 'update', 'lending.tours', '4', '6', 'App\\Models\\Lending\\Tour', '2024-08-29 10:45:46', '2024-08-29 10:45:46'),
(611, 'update', 'lending.tours', '4', '12', 'App\\Models\\Lending\\Tour', '2024-08-29 10:45:59', '2024-08-29 10:45:59'),
(612, 'update', 'lending.tours', '4', '14', 'App\\Models\\Lending\\Tour', '2024-08-29 10:46:10', '2024-08-29 10:46:10'),
(613, 'update', 'lending.tours', '4', '5', 'App\\Models\\Lending\\Tour', '2024-08-29 10:46:23', '2024-08-29 10:46:23'),
(614, 'update', 'lending.tours', '4', '4', 'App\\Models\\Lending\\Tour', '2024-08-29 10:46:47', '2024-08-29 10:46:47'),
(615, 'update', 'lending.tours', '4', '1', 'App\\Models\\Lending\\Tour', '2024-08-29 10:48:38', '2024-08-29 10:48:38'),
(616, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-29 10:50:48', '2024-08-29 10:50:48'),
(617, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-29 10:50:54', '2024-08-29 10:50:54'),
(618, 'create', 'lending.tours.programs', '4', '5', 'App\\Models\\Lending\\Programs', '2024-08-29 10:52:39', '2024-08-29 10:52:39'),
(619, 'create', 'lending.tours.programs', '4', '6', 'App\\Models\\Lending\\Programs', '2024-08-29 10:53:23', '2024-08-29 10:53:23'),
(620, 'update', 'lending.tours.programs', '4', '6', 'App\\Models\\Lending\\Programs', '2024-08-29 10:53:26', '2024-08-29 10:53:26'),
(621, 'create', 'lending.tours.programs', '4', '7', 'App\\Models\\Lending\\Programs', '2024-08-29 10:53:58', '2024-08-29 10:53:58'),
(622, 'update', 'lending.tours.programs', '4', '7', 'App\\Models\\Lending\\Programs', '2024-08-29 10:54:04', '2024-08-29 10:54:04'),
(623, 'create', 'lending.tours.programs', '4', '8', 'App\\Models\\Lending\\Programs', '2024-08-29 10:54:32', '2024-08-29 10:54:32'),
(624, 'create', 'lending.tours.programs', '4', '9', 'App\\Models\\Lending\\Programs', '2024-08-29 10:55:00', '2024-08-29 10:55:00'),
(625, 'create', 'lending.tours.programs', '4', '10', 'App\\Models\\Lending\\Programs', '2024-08-29 10:55:25', '2024-08-29 10:55:25'),
(626, 'create', 'lending.tours.programs', '4', '11', 'App\\Models\\Lending\\Programs', '2024-08-29 10:55:47', '2024-08-29 10:55:47'),
(627, 'update', 'lending.tours.programs', '4', '11', 'App\\Models\\Lending\\Programs', '2024-08-29 10:55:53', '2024-08-29 10:55:53'),
(628, 'create', 'lending.tours.programs', '4', '12', 'App\\Models\\Lending\\Programs', '2024-08-29 10:56:17', '2024-08-29 10:56:17'),
(629, 'create', 'lending.tours.programs', '4', '13', 'App\\Models\\Lending\\Programs', '2024-08-29 10:56:41', '2024-08-29 10:56:41'),
(630, 'create', 'lending.tours.programs', '4', '14', 'App\\Models\\Lending\\Programs', '2024-08-29 10:57:48', '2024-08-29 10:57:48'),
(631, 'create', 'lending.tours.programs', '4', '15', 'App\\Models\\Lending\\Programs', '2024-08-29 10:58:15', '2024-08-29 10:58:15'),
(632, 'create', 'lending.tours.programs', '4', '16', 'App\\Models\\Lending\\Programs', '2024-08-29 10:58:41', '2024-08-29 10:58:41'),
(633, 'create', 'lending.tours.programs', '4', '17', 'App\\Models\\Lending\\Programs', '2024-08-29 10:59:04', '2024-08-29 10:59:04'),
(634, 'create', 'lending.tours.programs', '4', '18', 'App\\Models\\Lending\\Programs', '2024-08-29 11:00:13', '2024-08-29 11:00:13'),
(635, 'update', 'services.infografika', '4', '10', 'App\\Models\\Services\\Infografika', '2024-08-29 11:13:08', '2024-08-29 11:13:08'),
(636, 'update', 'services.infografika', '4', '9', 'App\\Models\\Services\\Infografika', '2024-08-29 11:13:19', '2024-08-29 11:13:19'),
(637, 'update', 'services.infografika', '4', '8', 'App\\Models\\Services\\Infografika', '2024-08-29 11:13:28', '2024-08-29 11:13:28'),
(638, 'update', 'services.infografika', '4', '7', 'App\\Models\\Services\\Infografika', '2024-08-29 11:13:42', '2024-08-29 11:13:42'),
(639, 'update', 'services.infografika', '4', '6', 'App\\Models\\Services\\Infografika', '2024-08-29 11:13:52', '2024-08-29 11:13:52'),
(640, 'update', 'services.infografika', '4', '5', 'App\\Models\\Services\\Infografika', '2024-08-29 11:14:05', '2024-08-29 11:14:05'),
(641, 'update', 'services.infografika', '4', '10', 'App\\Models\\Services\\Infografika', '2024-08-29 11:14:55', '2024-08-29 11:14:55'),
(642, 'update', 'services.infografika', '4', '9', 'App\\Models\\Services\\Infografika', '2024-08-29 11:15:01', '2024-08-29 11:15:01'),
(643, 'update', 'services.infografika', '4', '8', 'App\\Models\\Services\\Infografika', '2024-08-29 11:15:11', '2024-08-29 11:15:11'),
(644, 'update', 'services.infografika', '4', '7', 'App\\Models\\Services\\Infografika', '2024-08-29 11:15:20', '2024-08-29 11:15:20'),
(645, 'update', 'services.infografika', '4', '7', 'App\\Models\\Services\\Infografika', '2024-08-29 11:16:12', '2024-08-29 11:16:12'),
(646, 'update', 'services.infografika', '4', '6', 'App\\Models\\Services\\Infografika', '2024-08-29 11:16:23', '2024-08-29 11:16:23'),
(647, 'update', 'services.infografika', '4', '5', 'App\\Models\\Services\\Infografika', '2024-08-29 11:16:32', '2024-08-29 11:16:32'),
(648, 'create', 'services.infografika', '4', '11', 'App\\Models\\Services\\Infografika', '2024-08-29 11:18:55', '2024-08-29 11:18:55'),
(649, 'create', 'services.infografika', '4', '12', 'App\\Models\\Services\\Infografika', '2024-08-29 11:21:20', '2024-08-29 11:21:20'),
(650, 'create', 'services.infografika', '4', '13', 'App\\Models\\Services\\Infografika', '2024-08-29 11:23:26', '2024-08-29 11:23:26'),
(651, 'update', 'services.infografika', '4', '11', 'App\\Models\\Services\\Infografika', '2024-08-29 11:25:00', '2024-08-29 11:25:00'),
(652, 'update', 'services.infografika', '4', '13', 'App\\Models\\Services\\Infografika', '2024-08-29 11:25:28', '2024-08-29 11:25:28'),
(653, 'update', 'services.infografika', '4', '11', 'App\\Models\\Services\\Infografika', '2024-08-29 11:26:02', '2024-08-29 11:26:02'),
(654, 'update', 'services.infografika', '4', '11', 'App\\Models\\Services\\Infografika', '2024-08-29 11:26:05', '2024-08-29 11:26:05'),
(655, 'update', 'services.infografika', '4', '11', 'App\\Models\\Services\\Infografika', '2024-08-29 11:27:04', '2024-08-29 11:27:04'),
(656, 'update', 'services.infografika', '4', '13', 'App\\Models\\Services\\Infografika', '2024-08-29 11:27:34', '2024-08-29 11:27:34'),
(657, 'create', 'services.infografika', '4', '14', 'App\\Models\\Services\\Infografika', '2024-08-29 11:29:53', '2024-08-29 11:29:53'),
(658, 'create', 'services.infografika', '4', '15', 'App\\Models\\Services\\Infografika', '2024-08-29 11:30:21', '2024-08-29 11:30:21'),
(659, 'create', 'services.infografika', '4', '16', 'App\\Models\\Services\\Infografika', '2024-08-29 11:31:06', '2024-08-29 11:31:06'),
(660, 'create', 'services.infografika', '4', '17', 'App\\Models\\Services\\Infografika', '2024-08-29 11:31:25', '2024-08-29 11:31:25'),
(661, 'create', 'services.infografika', '4', '18', 'App\\Models\\Services\\Infografika', '2024-08-29 11:31:52', '2024-08-29 11:31:52'),
(662, 'create', 'services.infografika', '4', '19', 'App\\Models\\Services\\Infografika', '2024-08-29 11:32:15', '2024-08-29 11:32:15'),
(663, 'create', 'services.infografika', '4', '20', 'App\\Models\\Services\\Infografika', '2024-08-29 11:32:39', '2024-08-29 11:32:39'),
(664, 'create', 'services.infografika', '4', '21', 'App\\Models\\Services\\Infografika', '2024-08-29 11:33:04', '2024-08-29 11:33:04'),
(665, 'create', 'services.infografika', '4', '22', 'App\\Models\\Services\\Infografika', '2024-08-29 11:33:24', '2024-08-29 11:33:24'),
(666, 'create', 'services.infografika', '4', '23', 'App\\Models\\Services\\Infografika', '2024-08-29 11:33:42', '2024-08-29 11:33:42'),
(667, 'create', 'services.infografika', '4', '24', 'App\\Models\\Services\\Infografika', '2024-08-29 11:34:08', '2024-08-29 11:34:08'),
(668, 'create', 'services.infografika', '4', '25', 'App\\Models\\Services\\Infografika', '2024-08-29 11:34:29', '2024-08-29 11:34:29'),
(669, 'create', 'services.infografika', '4', '26', 'App\\Models\\Services\\Infografika', '2024-08-29 11:34:44', '2024-08-29 11:34:44'),
(670, 'create', 'services.infografika', '4', '27', 'App\\Models\\Services\\Infografika', '2024-08-29 11:35:42', '2024-08-29 11:35:42'),
(671, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-29 11:56:13', '2024-08-29 11:56:13'),
(672, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 07:53:11', '2024-09-13 07:53:11'),
(673, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 07:55:05', '2024-09-13 07:55:05'),
(674, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 07:58:48', '2024-09-13 07:58:48'),
(675, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:02:33', '2024-09-13 08:02:33'),
(676, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:05:54', '2024-09-13 08:05:54'),
(677, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:05:58', '2024-09-13 08:05:58'),
(678, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:06:01', '2024-09-13 08:06:01'),
(679, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:06:36', '2024-09-13 08:06:36'),
(680, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:07:28', '2024-09-13 08:07:28'),
(681, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:08:07', '2024-09-13 08:08:07'),
(682, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:08:11', '2024-09-13 08:08:11'),
(683, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:08:14', '2024-09-13 08:08:14'),
(684, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:29:08', '2024-09-13 08:29:08'),
(685, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:31:10', '2024-09-13 08:31:10'),
(686, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:37:42', '2024-09-13 08:37:42'),
(687, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:38:06', '2024-09-13 08:38:06'),
(688, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:38:22', '2024-09-13 08:38:22'),
(689, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:39:17', '2024-09-13 08:39:17'),
(690, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 08:39:56', '2024-09-13 08:39:56'),
(691, 'update', 'lending.tours.status', '4', '1', 'App\\Models\\Lending\\Status', '2024-09-13 08:50:11', '2024-09-13 08:50:11'),
(692, 'update', 'lending.tours.countries', '4', '1', 'App\\Models\\Lending\\Country', '2024-09-13 08:58:07', '2024-09-13 08:58:07'),
(693, 'update', 'lending.tours.countries', '4', '1', 'App\\Models\\Lending\\Country', '2024-09-13 08:58:45', '2024-09-13 08:58:45'),
(694, 'update', 'lending.tours.types', '4', '1', 'App\\Models\\Lending\\TourTypes', '2024-09-13 10:34:37', '2024-09-13 10:34:37'),
(695, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 12:52:14', '2024-09-13 12:52:14'),
(696, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 12:53:42', '2024-09-13 12:53:42'),
(697, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 12:53:58', '2024-09-13 12:53:58'),
(698, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 12:56:40', '2024-09-13 12:56:40'),
(699, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 12:59:23', '2024-09-13 12:59:23'),
(700, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 13:06:24', '2024-09-13 13:06:24'),
(701, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 13:17:56', '2024-09-13 13:17:56'),
(702, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 13:18:47', '2024-09-13 13:18:47'),
(703, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 13:20:25', '2024-09-13 13:20:25'),
(704, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 13:20:55', '2024-09-13 13:20:55'),
(705, 'update', 'services.documents', '4', '1', 'App\\Models\\Services\\File', '2024-09-13 13:21:20', '2024-09-13 13:21:20'),
(706, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 13:31:08', '2024-09-13 13:31:08'),
(707, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 13:58:00', '2024-09-13 13:58:00'),
(708, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 13:58:15', '2024-09-13 13:58:15'),
(709, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 13:59:44', '2024-09-13 13:59:44'),
(710, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 14:03:21', '2024-09-13 14:03:21'),
(711, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 14:11:07', '2024-09-13 14:11:07'),
(712, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 14:12:18', '2024-09-13 14:12:18'),
(713, 'update', 'users.agents', '4', '1', 'App\\Models\\Services\\Agent', '2024-09-13 14:13:13', '2024-09-13 14:13:13'),
(714, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 14:34:10', '2024-09-13 14:34:10'),
(715, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 14:34:52', '2024-09-13 14:34:52'),
(716, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 14:34:56', '2024-09-13 14:34:56'),
(717, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 14:35:00', '2024-09-13 14:35:00'),
(718, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-13 14:35:04', '2024-09-13 14:35:04'),
(719, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-16 07:24:06', '2024-09-16 07:24:06'),
(720, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-16 07:25:52', '2024-09-16 07:25:52'),
(721, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-16 07:28:13', '2024-09-16 07:28:13'),
(722, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-16 07:30:48', '2024-09-16 07:30:48'),
(723, 'update', 'lending.tours', '4', '15', 'App\\Models\\Lending\\Tour', '2024-09-16 07:32:52', '2024-09-16 07:32:52'),
(724, 'update', 'users.agents', '4', '2', 'App\\Models\\Services\\Agent', '2024-09-16 07:53:06', '2024-09-16 07:53:06'),
(725, 'update', 'users.agents', '4', '2', 'App\\Models\\Services\\Agent', '2024-09-16 07:55:40', '2024-09-16 07:55:40'),
(726, 'update', 'users.agents', '4', '2', 'App\\Models\\Services\\Agent', '2024-09-16 07:56:10', '2024-09-16 07:56:10'),
(727, 'update', 'users.agents', '4', '2', 'App\\Models\\Services\\Agent', '2024-09-16 08:01:21', '2024-09-16 08:01:21'),
(728, 'update', 'users.agents', '4', '2', 'App\\Models\\Services\\Agent', '2024-09-16 08:09:39', '2024-09-16 08:09:39'),
(729, 'update', 'users.users', '4', '4', 'App\\Models\\User\\User', '2024-09-16 09:03:02', '2024-09-16 09:03:02'),
(730, 'update', 'lending.pages', '6', '1', 'App\\Models\\Lending\\Page', '2024-09-16 09:36:35', '2024-09-16 09:36:35'),
(731, 'update', 'lending.pages', '6', '1', 'App\\Models\\Lending\\Page', '2024-09-16 09:38:34', '2024-09-16 09:38:34'),
(732, 'update', 'lending.pages', '6', '1', 'App\\Models\\Lending\\Page', '2024-09-16 09:40:07', '2024-09-16 09:40:07'),
(733, 'update', 'lending.pages', '6', '1', 'App\\Models\\Lending\\Page', '2024-09-16 09:43:47', '2024-09-16 09:43:47'),
(734, 'update', 'users.agents', '6', '3', 'App\\Models\\Services\\Agent', '2024-09-16 10:09:36', '2024-09-16 10:09:36'),
(735, 'update', 'users.agents', '6', '3', 'App\\Models\\Services\\Agent', '2024-09-16 10:17:11', '2024-09-16 10:17:11'),
(736, 'update', 'lending.tours', '6', '1', 'App\\Models\\Lending\\Tour', '2024-09-16 11:22:07', '2024-09-16 11:22:07'),
(737, 'update', 'lending.tours', '6', '1', 'App\\Models\\Lending\\Tour', '2024-09-16 11:22:20', '2024-09-16 11:22:20'),
(738, 'update', 'users.agents', '6', '4', 'App\\Models\\Services\\Agent', '2024-09-16 11:38:52', '2024-09-16 11:38:52'),
(739, 'update', 'users.agents', '6', '4', 'App\\Models\\Services\\Agent', '2024-09-16 12:25:57', '2024-09-16 12:25:57'),
(740, 'update', 'users.agents', '6', '2', 'App\\Models\\Services\\Agent', '2024-09-16 12:27:17', '2024-09-16 12:27:17'),
(741, 'update', 'users.agents', '6', '2', 'App\\Models\\Services\\Agent', '2024-09-16 12:31:39', '2024-09-16 12:31:39'),
(742, 'update', 'lending.blogs', '6', '16', 'App\\Models\\Lending\\Blog', '2024-09-17 12:22:00', '2024-09-17 12:22:00'),
(743, 'update', 'lending.blogs', '6', '16', 'App\\Models\\Lending\\Blog', '2024-09-17 12:22:04', '2024-09-17 12:22:04'),
(744, 'update', 'lending.blogs', '6', '16', 'App\\Models\\Lending\\Blog', '2024-09-17 12:22:08', '2024-09-17 12:22:08'),
(745, 'update', 'lending.sliders', '6', '4', 'App\\Models\\Lending\\Slider', '2024-09-17 12:44:24', '2024-09-17 12:44:24'),
(746, 'update', 'lending.sliders', '6', '6', 'App\\Models\\Lending\\Slider', '2024-09-17 12:44:40', '2024-09-17 12:44:40'),
(747, 'update', 'lending.sliders', '6', '7', 'App\\Models\\Lending\\Slider', '2024-09-17 14:48:47', '2024-09-17 14:48:47'),
(748, 'update', 'lending.sliders', '6', '5', 'App\\Models\\Lending\\Slider', '2024-09-17 14:49:03', '2024-09-17 14:49:03'),
(749, 'update', 'users.agents', '6', '4', 'App\\Models\\Services\\Agent', '2024-09-17 14:52:15', '2024-09-17 14:52:15'),
(750, 'update', 'users.agents', '6', '4', 'App\\Models\\Services\\Agent', '2024-09-17 14:52:20', '2024-09-17 14:52:20'),
(751, 'update', 'lending.sliders', '6', '13', 'App\\Models\\Lending\\Slider', '2024-09-17 15:05:31', '2024-09-17 15:05:31'),
(752, 'update', 'lending.sliders', '6', '14', 'App\\Models\\Lending\\Slider', '2024-09-17 15:05:35', '2024-09-17 15:05:35'),
(753, 'update', 'lending.sliders', '6', '15', 'App\\Models\\Lending\\Slider', '2024-09-17 15:05:39', '2024-09-17 15:05:39'),
(754, 'update', 'lending.sliders', '6', '11', 'App\\Models\\Lending\\Slider', '2024-09-17 15:05:43', '2024-09-17 15:05:43'),
(755, 'update', 'lending.sliders', '6', '9', 'App\\Models\\Lending\\Slider', '2024-09-17 15:05:46', '2024-09-17 15:05:46'),
(756, 'update', 'users.agents', '6', '4', 'App\\Models\\Services\\Agent', '2024-09-18 07:04:08', '2024-09-18 07:04:08'),
(757, 'update', 'users.agents', '6', '4', 'App\\Models\\Services\\Agent', '2024-09-18 07:04:13', '2024-09-18 07:04:13'),
(758, 'update', 'lending.sliders', '6', '10', 'App\\Models\\Lending\\Slider', '2024-09-18 07:04:32', '2024-09-18 07:04:32'),
(759, 'update', 'lending.sliders', '6', '12', 'App\\Models\\Lending\\Slider', '2024-09-18 07:04:35', '2024-09-18 07:04:35'),
(760, 'update', 'lending.sliders', '6', '17', 'App\\Models\\Lending\\Slider', '2024-09-18 07:04:39', '2024-09-18 07:04:39'),
(761, 'update', 'lending.tours', '6', '15', 'App\\Models\\Lending\\Tour', '2024-09-18 07:16:28', '2024-09-18 07:16:28'),
(762, 'update', 'lending.tours.status', '6', '4', 'App\\Models\\Lending\\Status', '2024-09-18 07:19:20', '2024-09-18 07:19:20'),
(763, 'update', 'lending.tours', '6', '15', 'App\\Models\\Lending\\Tour', '2024-09-18 07:20:12', '2024-09-18 07:20:12'),
(764, 'update', 'users.agents', '6', '1', 'App\\Models\\Services\\Agent', '2024-09-18 07:35:36', '2024-09-18 07:35:36'),
(765, 'update', 'lending.sliders', '6', '14', 'App\\Models\\Lending\\Slider', '2024-09-18 07:47:20', '2024-09-18 07:47:20');

-- --------------------------------------------------------

--
-- Структура таблицы `advs`
--

CREATE TABLE `advs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `subtitle` varchar(1000) DEFAULT NULL,
  `text` longtext,
  `img` text,
  `hide` tinyint DEFAULT '0',
  `rating` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `advs`
--

INSERT INTO `advs` (`id`, `title`, `subtitle`, `text`, `img`, `hide`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'Hard Rock', 'HotelMaldives', '<p><span style=\"color: rgb(79, 54, 82); font-family: Inter, sans-serif; font-size: 22px; letter-spacing: -0.44px;\">Это больше, чем просто роскошный курорт</span><br></p>', 'images/advs/0nn4J7a1kJsPX8tFwRyT4q2XNuBqkDPLDM9fhOqN.png', 0, 0, '2024-08-22 07:59:01', '2024-08-22 09:52:47'),
(2, 'news adv', 'new adv subtitle', '<p>some new adv text</p>', 'images/advs/WRL6L6iQxLpHesA1Zqo111wg0ujoE7QrSB8z0bge.jpg', 0, 0, '2024-08-22 09:54:13', '2024-08-22 09:54:13');

-- --------------------------------------------------------

--
-- Структура таблицы `agents`
--

CREATE TABLE `agents` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `isConfirmed` tinyint(1) DEFAULT '0',
  `isActive` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `agents`
--

INSERT INTO `agents` (`id`, `name`, `url`, `phone`, `address`, `logo`, `user_id`, `isConfirmed`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Название компании', 'edik', '+7 (899) 999-99-99', 'Адрес офиса', NULL, 7, 1, 1, '2024-09-18 07:28:34', '2024-09-18 07:35:36');

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `attached_files`
--

INSERT INTO `attached_files` (`id`, `page_id`, `file_id`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(6, 2, 1, 0, 0, '2024-08-26 10:42:36', '2024-08-26 10:42:36');

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `attached_pages`
--

INSERT INTO `attached_pages` (`id`, `page_id`, `attached_page_id`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(6, 3, 2, 0, 0, '2024-08-16 11:48:09', '2024-08-16 11:48:09'),
(23, 1, 3, 0, 0, '2024-08-19 08:11:14', '2024-08-19 08:11:14'),
(24, 1, 2, 0, 0, '2024-08-19 08:11:14', '2024-08-19 08:11:14'),
(53, 5, 10, 0, 0, '2024-08-19 12:24:17', '2024-08-19 12:24:17'),
(54, 5, 9, 0, 0, '2024-08-19 12:24:17', '2024-08-19 12:24:17'),
(55, 5, 8, 0, 0, '2024-08-19 12:24:17', '2024-08-19 12:24:17'),
(56, 5, 7, 0, 0, '2024-08-19 12:24:17', '2024-08-19 12:24:17'),
(57, 5, 6, 0, 0, '2024-08-19 12:24:17', '2024-08-19 12:24:17'),
(58, 5, 3, 0, 0, '2024-08-19 12:24:17', '2024-08-19 12:24:17'),
(143, 2, 10, 0, 0, '2024-08-26 10:42:10', '2024-08-26 10:42:10'),
(144, 2, 9, 0, 0, '2024-08-26 10:42:10', '2024-08-26 10:42:10'),
(145, 2, 8, 0, 0, '2024-08-26 10:42:10', '2024-08-26 10:42:10'),
(146, 2, 7, 0, 0, '2024-08-26 10:42:10', '2024-08-26 10:42:10'),
(147, 2, 6, 0, 0, '2024-08-26 10:42:10', '2024-08-26 10:42:10'),
(148, 2, 3, 0, 0, '2024-08-26 10:42:10', '2024-08-26 10:42:10');

-- --------------------------------------------------------

--
-- Структура таблицы `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `url` text,
  `text` longtext,
  `title` varchar(1000) DEFAULT NULL,
  `image` text,
  `preview_image` text,
  `preview_text` text,
  `rating` int DEFAULT '0',
  `hide` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `blogs`
--

INSERT INTO `blogs` (`id`, `url`, `text`, `title`, `image`, `preview_image`, `preview_text`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(1, 'test', '<h3 class=\"blog-detailed-block__title\">Примите участие в акции туристический кешбэк</h3>\r\n            <p class=\"blog-detailed-block__text\">Спешите отправиться в путешествие по нашей стране с очень хорошей\r\n                скидкой!\r\n            </p>\r\n            <h3 class=\"blog-detailed-block__title\">Скидка за туры 20%</h3>\r\n            <p class=\"blog-detailed-block__text\">предоставляется при единовременной оплате онлайн с помощью карты МИР,\r\n                зарегистрированной в программе. Оплатить туристические услуги необходимо&nbsp;до 30.04.2022&nbsp;включительно, а\r\n                ваша\r\n                поездка должна состояться&nbsp;до 30.06.2022.&nbsp;Максимальная сумма к\r\n                возврату - 20 000 рублей. Кешбэк возможен не только за пакетные туры, но и за отдельные услуги, такие\r\n                как\r\n                проживание в отеле, санатории или путешествие-круиз. Важно, чтобы длительность вашей поездки была&nbsp;дольше\r\n                2-х\r\n                ночей&nbsp;включительно.Кроме\r\n                того, есть возможность получить возврат за детский лагерь! В этом случае кешбэк составит 50% стоимости\r\n                путевки, но также не более 20 000 рублей. Приобрести детскую путевку нужно до 31.08.2022.</p>\r\n            <h3 class=\"blog-detailed-block__title\">Выбирайте любой регион России</h3>\r\n            <p class=\"blog-detailed-block__text\">- Байкал, Казань, Карелия, Кавказ, Калининград, Владивосток, Камчатка,\r\n                Сочи, Алтай, Крым и многие-многие другие! А мы поможем в организации вашего лучшего путешествия.</p>\r\n            <a href=\"\" class=\"blog-detailed-block__search-tours\">Поиск туров с кешбэк 20%</a>', 'Какие города стоит посетить в Индии', 'images/blogs//xAxjQKMLgmueUZYnNzq2DFB2FgBJb2d6CmT25y5z.png', 'images/blogs//rjZtqT7YVFRJt6ZccfBN30UBxsi56tfH4ZbhJQ91.png', '<p><span style=\"color: rgb(88, 47, 154); font-family: Inter, sans-serif; font-size: 17px; letter-spacing: -0.34px;\">Индия – самобытная страна с древней историей, необычными и действенными духовными практиками, развитой древней народной медициной. Читайте, какие города стоит посмотреть во время путешествия в Индию.</span><br></p>', 0, 0, '2024-08-16 11:39:08', '2024-08-26 09:44:25'),
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
(16, '11', NULL, '11', NULL, NULL, NULL, 0, 0, '2024-08-22 14:21:06', '2024-09-17 12:22:08');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `icon` text,
  `image` text,
  `hide` tinyint DEFAULT '0',
  `rating` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `name`, `icon`, `image`, `hide`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'Индонезия', 'images/tours/static_icons/iUBWi1RQrFxc7Vp0afKMIEMFrdHjYhLr8YQnszfy.svg', 'images/tours/static_icons/KpCkCH4T4WfdtdE3LHPsETbSoMcnM2OOZ2AeOa4R.png', 0, 2, '2024-08-22 10:59:11', '2024-09-13 08:58:45'),
(2, 'Шри Ланка', NULL, NULL, 0, 0, '2024-08-22 10:59:22', '2024-08-22 10:59:22'),
(3, 'Вьетнам', NULL, NULL, 0, 1, '2024-08-22 10:59:30', '2024-08-22 11:02:19'),
(4, 'Китай', NULL, NULL, 0, 0, '2024-08-22 11:30:38', '2024-08-22 11:30:43'),
(5, 'Япония', NULL, NULL, 0, 0, '2024-08-22 11:30:52', '2024-08-22 11:30:52'),
(6, 'Кения', NULL, NULL, 0, 0, '2024-08-22 11:31:00', '2024-08-22 11:31:00'),
(7, 'ЮАР', NULL, NULL, 0, 0, '2024-08-22 11:31:11', '2024-08-22 11:31:11'),
(8, 'Тайланд', NULL, NULL, 0, 0, '2024-08-22 11:31:27', '2024-08-22 11:31:27');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `name` longtext,
  `path` text,
  `rating` int DEFAULT '0',
  `hide` tinyint UNSIGNED DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `files`
--

INSERT INTO `files` (`id`, `name`, `path`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(1, '<p>Агентский договор</p>', 'Пресс-релиз для сайта (3).docx', 0, 0, '2024-08-21 14:22:20', '2024-09-13 13:21:20');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(45, 'images/tours/gallary/OZTjbh7XB4YwLVXIQSUEiibS4DxXslnJtONn34U7.png', NULL, NULL, 'images/tours/gallary/OZTjbh7XB4YwLVXIQSUEiibS4DxXslnJtONn34U7.png', NULL, 1, 'tour'),
(46, 'images/tours/gallary/Q4kyNb1ysk32L4fXHGIO4T0r8y0rLyx8UGibtINb.png', NULL, NULL, 'images/tours/gallary/Q4kyNb1ysk32L4fXHGIO4T0r8y0rLyx8UGibtINb.png', NULL, 15, 'tour'),
(47, 'images/tours/gallary/IJ4miy5uVZOSjOLVghIYwPbH0ru6re0b9E5NvBBs.png', NULL, NULL, 'images/tours/gallary/IJ4miy5uVZOSjOLVghIYwPbH0ru6re0b9E5NvBBs.png', NULL, 14, 'tour'),
(48, 'images/tours/gallary/OX7grJwvFbodZgWSaqzMWwRWrrz8cLMnwwT6QYFr.png', NULL, NULL, 'images/tours/gallary/OX7grJwvFbodZgWSaqzMWwRWrrz8cLMnwwT6QYFr.png', NULL, 13, 'tour'),
(49, 'images/tours/gallary/x1N4qZ2SR2GDV0jMXOwpa5WaRANg3ji9Qe9qLHP8.png', NULL, NULL, 'images/tours/gallary/x1N4qZ2SR2GDV0jMXOwpa5WaRANg3ji9Qe9qLHP8.png', NULL, 12, 'tour'),
(50, 'images/tours/gallary/ZIXynQbqwZnNGeb8ZdfP9yTkiVPyNQQwGx0YWPT5.png', NULL, NULL, 'images/tours/gallary/ZIXynQbqwZnNGeb8ZdfP9yTkiVPyNQQwGx0YWPT5.png', NULL, 11, 'tour'),
(51, 'images/tours/gallary/DoJ8ebplCDGyovHW5MFKen1369xpLtGsGHkEGPdC.png', NULL, NULL, 'images/tours/gallary/DoJ8ebplCDGyovHW5MFKen1369xpLtGsGHkEGPdC.png', NULL, 10, 'tour'),
(52, 'images/tours/gallary/YREMSsF1l070SRzklRx7enOWXswnOQhzxMbJ5oiG.png', NULL, NULL, 'images/tours/gallary/YREMSsF1l070SRzklRx7enOWXswnOQhzxMbJ5oiG.png', NULL, 9, 'tour'),
(53, 'images/tours/gallary/NZeNyeiiyam3KiCZD5SGPC6ttT5ABztQCjDuwiUP.png', NULL, NULL, 'images/tours/gallary/NZeNyeiiyam3KiCZD5SGPC6ttT5ABztQCjDuwiUP.png', NULL, 8, 'tour'),
(54, 'images/tours/gallary/DmnJ7Sr7Jx6Z98rvVaRxH0hzySp129BXfJm80ghI.png', NULL, NULL, 'images/tours/gallary/DmnJ7Sr7Jx6Z98rvVaRxH0hzySp129BXfJm80ghI.png', NULL, 7, 'tour'),
(55, 'images/tours/gallary/C5XKPu3F6xOC3WRWlxSwAQVNCEmGFbkec4mP8amz.png', NULL, NULL, 'images/tours/gallary/C5XKPu3F6xOC3WRWlxSwAQVNCEmGFbkec4mP8amz.png', NULL, 6, 'tour'),
(56, 'images/tours/gallary/U1VZF4JazGV7GWF6vmMAVnruOqjllEu3P7ncPi08.png', NULL, NULL, 'images/tours/gallary/U1VZF4JazGV7GWF6vmMAVnruOqjllEu3P7ncPi08.png', NULL, 5, 'tour'),
(57, 'images/tours/programs/l5hAhPKQ4EDI3mYR5vMgW02HQulZSMMPjwr8txlh.png', NULL, NULL, 'images/tours/programs/l5hAhPKQ4EDI3mYR5vMgW02HQulZSMMPjwr8txlh.png', NULL, 5, 'programs'),
(58, 'images/tours/programs/Kb6s5DnfyqIuhgFXmdyfpLGnK8AlN19j5tBy3rKB.png', NULL, NULL, 'images/tours/programs/Kb6s5DnfyqIuhgFXmdyfpLGnK8AlN19j5tBy3rKB.png', NULL, 5, 'programs'),
(59, 'images/tours/programs/NKXoeTQ4QgiBAFt54HiBqS9zceBwOCdUxja3YDCl.png', NULL, NULL, 'images/tours/programs/NKXoeTQ4QgiBAFt54HiBqS9zceBwOCdUxja3YDCl.png', NULL, 5, 'programs'),
(60, 'images/tours/programs/kDLXgAJ20XBjGwIFGS07TlsCxDmUJnsDS8lEflGa.png', NULL, NULL, 'images/tours/programs/kDLXgAJ20XBjGwIFGS07TlsCxDmUJnsDS8lEflGa.png', NULL, 5, 'programs'),
(61, 'images/tours/programs/3KlTr7sdQuXIot9fTWfS2hSNemWvQR1sjr28vg5l.png', NULL, NULL, 'images/tours/programs/3KlTr7sdQuXIot9fTWfS2hSNemWvQR1sjr28vg5l.png', NULL, 6, 'programs'),
(62, 'images/tours/programs/D4gUWn1HZEdOngTDSVePir2Q2W14KlO5XCUMLkON.png', NULL, NULL, 'images/tours/programs/D4gUWn1HZEdOngTDSVePir2Q2W14KlO5XCUMLkON.png', NULL, 6, 'programs'),
(63, 'images/tours/programs/d4F60TvU8RtacrPh6IZ67a41LmfSOeamtmW8Jm6C.png', NULL, NULL, 'images/tours/programs/d4F60TvU8RtacrPh6IZ67a41LmfSOeamtmW8Jm6C.png', NULL, 6, 'programs'),
(64, 'images/tours/programs/Yad0SKbkZmJdPr6Nw7o0fqO3XwnobwIbtv5vEVjc.png', NULL, NULL, 'images/tours/programs/Yad0SKbkZmJdPr6Nw7o0fqO3XwnobwIbtv5vEVjc.png', NULL, 6, 'programs'),
(65, 'images/tours/programs/l7Na7y0ymOG6VRItMefFsGPk4fZ33KwC2Svn5Yo2.png', NULL, NULL, 'images/tours/programs/l7Na7y0ymOG6VRItMefFsGPk4fZ33KwC2Svn5Yo2.png', NULL, 7, 'programs'),
(66, 'images/tours/programs/RZBtRgef8TuOfxVLbm6CE69QPd9wlHE7F40BNjeh.png', NULL, NULL, 'images/tours/programs/RZBtRgef8TuOfxVLbm6CE69QPd9wlHE7F40BNjeh.png', NULL, 7, 'programs'),
(67, 'images/tours/programs/tR44xY6UnKVWcNTCfAPdKwQvrc9kLY36y5AqbNaj.png', NULL, NULL, 'images/tours/programs/tR44xY6UnKVWcNTCfAPdKwQvrc9kLY36y5AqbNaj.png', NULL, 7, 'programs'),
(68, 'images/tours/programs/DqeUTiJcBYJ4Ceix7VYZtMPN2EW57ECRSXKhIqlc.png', NULL, NULL, 'images/tours/programs/DqeUTiJcBYJ4Ceix7VYZtMPN2EW57ECRSXKhIqlc.png', NULL, 7, 'programs'),
(69, 'images/tours/programs/zD22FIEfpThL17QrDHPg8kUZcezbnnZtsZTos6As.png', NULL, NULL, 'images/tours/programs/zD22FIEfpThL17QrDHPg8kUZcezbnnZtsZTos6As.png', NULL, 8, 'programs'),
(70, 'images/tours/programs/UxEBrNEArU23dhY6l692hW7ul7zgsDg5Bri2thFF.png', NULL, NULL, 'images/tours/programs/UxEBrNEArU23dhY6l692hW7ul7zgsDg5Bri2thFF.png', NULL, 8, 'programs'),
(71, 'images/tours/programs/RenmCFQ33ka8naLb5dwNTNSXVbkeQMhlxzcWj4Gc.png', NULL, NULL, 'images/tours/programs/RenmCFQ33ka8naLb5dwNTNSXVbkeQMhlxzcWj4Gc.png', NULL, 8, 'programs'),
(72, 'images/tours/programs/8d556QLEnjfj4RX5B1Spb3tbUDrXzUmkkomyNufC.png', NULL, NULL, 'images/tours/programs/8d556QLEnjfj4RX5B1Spb3tbUDrXzUmkkomyNufC.png', NULL, 8, 'programs'),
(73, 'images/tours/programs/jGmApwTp413AxbLe6vFq7qjRW8bI4a8iTshEaqiu.png', NULL, NULL, 'images/tours/programs/jGmApwTp413AxbLe6vFq7qjRW8bI4a8iTshEaqiu.png', NULL, 9, 'programs'),
(74, 'images/tours/programs/jejPeU85aDQw0cBMiBWL0oxYxCH9gB4EdGCumnag.png', NULL, NULL, 'images/tours/programs/jejPeU85aDQw0cBMiBWL0oxYxCH9gB4EdGCumnag.png', NULL, 9, 'programs'),
(75, 'images/tours/programs/tS0WGsMWZXSN29PCdi0x4Sq9tfqnJ0wxzFHjcjrx.png', NULL, NULL, 'images/tours/programs/tS0WGsMWZXSN29PCdi0x4Sq9tfqnJ0wxzFHjcjrx.png', NULL, 9, 'programs'),
(76, 'images/tours/programs/5dzPQVVL4tcEcQvtdacRSjvcrsfz6A0Hg0Z3YQi8.png', NULL, NULL, 'images/tours/programs/5dzPQVVL4tcEcQvtdacRSjvcrsfz6A0Hg0Z3YQi8.png', NULL, 9, 'programs'),
(77, 'images/tours/programs/klCQRu1bhHzyE4cgRRocet0zOBUgoljAgFtAap9X.png', NULL, NULL, 'images/tours/programs/klCQRu1bhHzyE4cgRRocet0zOBUgoljAgFtAap9X.png', NULL, 10, 'programs'),
(78, 'images/tours/programs/jhwJx5CCm3dRMOK7nCUyxuTNSQAPBfOOOfcQJB9W.png', NULL, NULL, 'images/tours/programs/jhwJx5CCm3dRMOK7nCUyxuTNSQAPBfOOOfcQJB9W.png', NULL, 10, 'programs'),
(79, 'images/tours/programs/rAlRGGfnE2JQvV8ilYixhvNndwBBTQgivqj6nnhG.png', NULL, NULL, 'images/tours/programs/rAlRGGfnE2JQvV8ilYixhvNndwBBTQgivqj6nnhG.png', NULL, 10, 'programs'),
(80, 'images/tours/programs/G8nh9P3PZyGc4lJjrECihOfpxlrw5RbIRhUl9PB4.png', NULL, NULL, 'images/tours/programs/G8nh9P3PZyGc4lJjrECihOfpxlrw5RbIRhUl9PB4.png', NULL, 10, 'programs'),
(81, 'images/tours/programs/cXTbh4JPqqW7D5VTC3JU051Rfr4uc6Oy3VXsXclF.png', NULL, NULL, 'images/tours/programs/cXTbh4JPqqW7D5VTC3JU051Rfr4uc6Oy3VXsXclF.png', NULL, 11, 'programs'),
(82, 'images/tours/programs/ZeMePAiVFHeQO6GpRiXkmY7HNX6xOBeZTOJD7xxl.png', NULL, NULL, 'images/tours/programs/ZeMePAiVFHeQO6GpRiXkmY7HNX6xOBeZTOJD7xxl.png', NULL, 11, 'programs'),
(83, 'images/tours/programs/nN7UGdhOIwVPSeXKRNHmQGd9SoVrCQHNA0ByFJM4.png', NULL, NULL, 'images/tours/programs/nN7UGdhOIwVPSeXKRNHmQGd9SoVrCQHNA0ByFJM4.png', NULL, 11, 'programs'),
(84, 'images/tours/programs/pBJTgbwhOKN2ej42TNJCR9K2VLL908liM1X2uMuX.png', NULL, NULL, 'images/tours/programs/pBJTgbwhOKN2ej42TNJCR9K2VLL908liM1X2uMuX.png', NULL, 11, 'programs'),
(85, 'images/tours/programs/lO9DgtiGAPPB9dc1VfXnUwFatElb9bWMKb8lyVfl.png', NULL, NULL, 'images/tours/programs/lO9DgtiGAPPB9dc1VfXnUwFatElb9bWMKb8lyVfl.png', NULL, 12, 'programs'),
(86, 'images/tours/programs/O8H3MMh2pJTuTB3ApCFhd2YcxpxKF4W9CdSQ0PfB.png', NULL, NULL, 'images/tours/programs/O8H3MMh2pJTuTB3ApCFhd2YcxpxKF4W9CdSQ0PfB.png', NULL, 12, 'programs'),
(87, 'images/tours/programs/vdxGxhhzyBkSIVzsjMerEWsPnnC0mUuk4uzg9Hot.png', NULL, NULL, 'images/tours/programs/vdxGxhhzyBkSIVzsjMerEWsPnnC0mUuk4uzg9Hot.png', NULL, 12, 'programs'),
(88, 'images/tours/programs/X254YunUAhG2I1bMyLpisqncrM8KW1BRw9pEArzM.png', NULL, NULL, 'images/tours/programs/X254YunUAhG2I1bMyLpisqncrM8KW1BRw9pEArzM.png', NULL, 12, 'programs'),
(89, 'images/tours/programs/wheeOfbqnuhuryRLnUSXaLO4fB9FSmByrCh493qD.png', NULL, NULL, 'images/tours/programs/wheeOfbqnuhuryRLnUSXaLO4fB9FSmByrCh493qD.png', NULL, 13, 'programs'),
(90, 'images/tours/programs/Q7W1UAOCojFLPsjmMhHIDcPbyABrt4kvDLcUbqa4.png', NULL, NULL, 'images/tours/programs/Q7W1UAOCojFLPsjmMhHIDcPbyABrt4kvDLcUbqa4.png', NULL, 13, 'programs'),
(91, 'images/tours/programs/WchQyyBkXzJm4WqnQeo7edxs1XQaD8kViHjHYdBQ.png', NULL, NULL, 'images/tours/programs/WchQyyBkXzJm4WqnQeo7edxs1XQaD8kViHjHYdBQ.png', NULL, 13, 'programs'),
(92, 'images/tours/programs/mRPs7ZVzrgvEzBMC55AEpU6dkdurM74v7CWYKnEs.png', NULL, NULL, 'images/tours/programs/mRPs7ZVzrgvEzBMC55AEpU6dkdurM74v7CWYKnEs.png', NULL, 13, 'programs'),
(93, 'images/tours/programs/0hfkAbcZ5dCDF9N0ZDgn8mVdJ1YEdlPsUnfGAsZS.png', NULL, NULL, 'images/tours/programs/0hfkAbcZ5dCDF9N0ZDgn8mVdJ1YEdlPsUnfGAsZS.png', NULL, 14, 'programs'),
(94, 'images/tours/programs/rdUslIHZYIZ1BLKVlpcK7aoigwAscKfuoDLBV2lt.png', NULL, NULL, 'images/tours/programs/rdUslIHZYIZ1BLKVlpcK7aoigwAscKfuoDLBV2lt.png', NULL, 14, 'programs'),
(95, 'images/tours/programs/SDE7u9IJrarMpOrMw7R0l2AAUP50bdFwKHx3tkdw.png', NULL, NULL, 'images/tours/programs/SDE7u9IJrarMpOrMw7R0l2AAUP50bdFwKHx3tkdw.png', NULL, 14, 'programs'),
(96, 'images/tours/programs/BlrVIZ73FOjHhH8Q6NAtgnBdlidDKUSiI5G36OFD.png', NULL, NULL, 'images/tours/programs/BlrVIZ73FOjHhH8Q6NAtgnBdlidDKUSiI5G36OFD.png', NULL, 14, 'programs'),
(97, 'images/tours/programs/WLMUSVkWhgg7qDD9NMH9nQZbMWfAo60Ucsd7CamO.png', NULL, NULL, 'images/tours/programs/WLMUSVkWhgg7qDD9NMH9nQZbMWfAo60Ucsd7CamO.png', NULL, 15, 'programs'),
(98, 'images/tours/programs/qpFgaGXDPlknKoHV5IU6AGzV46QOo3HN74HiCBGx.png', NULL, NULL, 'images/tours/programs/qpFgaGXDPlknKoHV5IU6AGzV46QOo3HN74HiCBGx.png', NULL, 15, 'programs'),
(99, 'images/tours/programs/Y3BzemJOvVHvo4wCWarA3gQoN8ULDiz42szpYAcG.png', NULL, NULL, 'images/tours/programs/Y3BzemJOvVHvo4wCWarA3gQoN8ULDiz42szpYAcG.png', NULL, 15, 'programs'),
(100, 'images/tours/programs/NSyU9M7wHmSa5tLfjIfwvySsjUfCIGyW76xxyZJZ.png', NULL, NULL, 'images/tours/programs/NSyU9M7wHmSa5tLfjIfwvySsjUfCIGyW76xxyZJZ.png', NULL, 15, 'programs'),
(101, 'images/tours/programs/2j5NWuRjW2bUmURKH1WbYLmO0325QROnpX5Kylem.png', NULL, NULL, 'images/tours/programs/2j5NWuRjW2bUmURKH1WbYLmO0325QROnpX5Kylem.png', NULL, 16, 'programs'),
(102, 'images/tours/programs/f4kHJO5YNe7j3G0YDEFr7gn96ygAC57WKOoT74tC.png', NULL, NULL, 'images/tours/programs/f4kHJO5YNe7j3G0YDEFr7gn96ygAC57WKOoT74tC.png', NULL, 16, 'programs'),
(103, 'images/tours/programs/UDF1wQ5j6qg3BOYfjCHWjHSNH0q9cBh4CiHlyd1Q.png', NULL, NULL, 'images/tours/programs/UDF1wQ5j6qg3BOYfjCHWjHSNH0q9cBh4CiHlyd1Q.png', NULL, 16, 'programs'),
(104, 'images/tours/programs/OnWTMcTAN9MoehNDq6GdLEOPXpc1DirkTHT1vvPU.png', NULL, NULL, 'images/tours/programs/OnWTMcTAN9MoehNDq6GdLEOPXpc1DirkTHT1vvPU.png', NULL, 16, 'programs'),
(105, 'images/tours/programs/rToLnNBUoRzhDnBnJIUNm8j48t3J6ZsWZp1GCs8k.png', NULL, NULL, 'images/tours/programs/rToLnNBUoRzhDnBnJIUNm8j48t3J6ZsWZp1GCs8k.png', NULL, 17, 'programs'),
(106, 'images/tours/programs/s5tzTpzwzj3E9b1lKFaa76jXr66limncx8Xj8VGZ.png', NULL, NULL, 'images/tours/programs/s5tzTpzwzj3E9b1lKFaa76jXr66limncx8Xj8VGZ.png', NULL, 17, 'programs'),
(107, 'images/tours/programs/Bcyu6HATtPZ3rrNbcjdc0o6npAUWHwCCaAlc168u.png', NULL, NULL, 'images/tours/programs/Bcyu6HATtPZ3rrNbcjdc0o6npAUWHwCCaAlc168u.png', NULL, 17, 'programs'),
(108, 'images/tours/programs/e1DH4AXzDcnS1GhXqgcYMkQTlvqOlksSXXNr31pY.png', NULL, NULL, 'images/tours/programs/e1DH4AXzDcnS1GhXqgcYMkQTlvqOlksSXXNr31pY.png', NULL, 17, 'programs'),
(109, 'images/tours/programs/WGLbXwypUyLqdx1uD4a8KvBcFIz6zZu6aivGauTE.png', NULL, NULL, 'images/tours/programs/WGLbXwypUyLqdx1uD4a8KvBcFIz6zZu6aivGauTE.png', NULL, 18, 'programs'),
(110, 'images/tours/programs/2kxvMFjJQxDcjLL5cCYFLo8F3Y13zU39O7IIGT2j.png', NULL, NULL, 'images/tours/programs/2kxvMFjJQxDcjLL5cCYFLo8F3Y13zU39O7IIGT2j.png', NULL, 18, 'programs'),
(111, 'images/tours/programs/3P8JidX2FdYMfTuldBVcQ8f2gXl9RguibcIqISbN.png', NULL, NULL, 'images/tours/programs/3P8JidX2FdYMfTuldBVcQ8f2gXl9RguibcIqISbN.png', NULL, 18, 'programs'),
(112, 'images/tours/programs/mUesrXSF7Loq04r0mAsWzGNFufj7k2YsZMztYdMf.png', NULL, NULL, 'images/tours/programs/mUesrXSF7Loq04r0mAsWzGNFufj7k2YsZMztYdMf.png', NULL, 18, 'programs'),
(113, 'images/tours/gallary/hHrAsQ8LzgLZZTw9EnYINphM2xOAFwMBFepWjyV2.png', NULL, NULL, 'images/tours/gallary/hHrAsQ8LzgLZZTw9EnYINphM2xOAFwMBFepWjyV2.png', NULL, 1, 'about'),
(114, 'images/tours/gallary/lrd4fCLhcZxnCIvYeaStgp18Bi0R8oeT2GNVsNdD.png', NULL, NULL, 'images/tours/gallary/lrd4fCLhcZxnCIvYeaStgp18Bi0R8oeT2GNVsNdD.png', NULL, 1, 'about'),
(116, 'images/tours/gallary/gpB5GqjzDIfi5jQ32cDJv5LM98uhvaPViuFGnDmt.png', NULL, NULL, 'images/tours/gallary/gpB5GqjzDIfi5jQ32cDJv5LM98uhvaPViuFGnDmt.png', NULL, 1, 'about'),
(117, 'images/tours/gallary/fvd9Jo5GNkIDBF08GYBObE4nojb6J5O4mU6Gsq4p.png', NULL, NULL, 'images/tours/gallary/fvd9Jo5GNkIDBF08GYBObE4nojb6J5O4mU6Gsq4p.png', NULL, 1, 'about');

-- --------------------------------------------------------

--
-- Структура таблицы `infografika`
--

CREATE TABLE `infografika` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_id` bigint UNSIGNED DEFAULT NULL,
  `about_id` bigint UNSIGNED DEFAULT NULL,
  `icon` text,
  `title` varchar(1000) DEFAULT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `subtitle` varchar(1000) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `hide` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `infografika`
--

INSERT INTO `infografika` (`id`, `tour_id`, `about_id`, `icon`, `title`, `text`, `subtitle`, `rating`, `hide`) VALUES
(5, NULL, 1, 'images/tours/statistic_icons//4KM0Fuvb1hRxLsouG7SQdVMcKsbHpvQCf0G0JsOo.svg', 'Работаем с 2004 года', NULL, NULL, NULL, 0),
(6, NULL, 1, 'images/tours/statistic_icons//IBqamQWLfUDIu2gb8ojoTQGtZKTfQjSJy2masY5k.svg', 'Создаем пакетные туры и индивидуальные программы', NULL, NULL, NULL, 0),
(7, NULL, 1, 'images/tours/statistic_icons//0VZxE6tQTa29qjgf0Dmq1OirhpCYqSrBE0KyMgIP.svg', 'Работаем с проверенными и надежными партнерами по всему миру', NULL, NULL, NULL, 0),
(8, NULL, 1, 'images/tours/statistic_icons//QJyrIMRvLwJA2f8XwqhnvLEnWAsxSenTAk4y1oxr.svg', 'Наша команда – это квалифицированные менеджеры с опытом работы от 10 лет', NULL, NULL, NULL, 0),
(9, NULL, 1, 'images/tours/statistic_icons//UQ8I5MvIZ8xljbKmvGorbW6zHSbcDaeA5gIY7qO3.svg', 'Наш опыт и знание туристического рынка позволяют формировать для туристов интересные программы и выгодные цены', NULL, NULL, NULL, 0),
(10, NULL, 1, 'images/tours/statistic_icons//jf4v4yz6XaNyFmpgZiOwj8lGEOe7XDgdqTOIZHXF.svg', 'Наши туристы страхуются в стабильных страховых компаниях: «ЕВРОИНС» и «АльфаСтрахование»', NULL, NULL, NULL, 0),
(11, 1, NULL, 'images/tours/statistic_icons//7P319vMW9ioKmSVZ8d3p7f3iUgU65TaRFG0GdAw3.svg', 'Маршрут тура:', '<p style=\"font-family: Inter;\r\nfont-size: 20px;\r\nfont-weight: 600;\r\nline-height: 26px;\r\nletter-spacing: -0.02em;\r\ncolor: #342635;\r\n\">Дели-Самод-Джайпу-Фатехпур Сикри-Агра</p>', NULL, NULL, 0),
(12, 1, NULL, 'images/tours/statistic_icons//zNXIstIPFqTJ20kNk7jsgiDdBz5JwQvTWdAvHcTQ.svg', 'Продолжительность:', '<p style=\"color: #342635; font-family: Inter;\r\nfont-size: 20px;\r\nfont-weight: 600;\r\nline-height: 24.2px;\r\nletter-spacing: -0.02em;\r\ntext-align: left;\r\n\">от 3 до 7 дней</p>', NULL, NULL, 0),
(13, 1, NULL, 'images/tours/statistic_icons//qw5u7ONDygRbytBYGsScDM6SdL8pIyaKGogJ8NgA.svg', 'Цена тура:', '<p style=\"font-family: Inter;\r\nfont-size: 20px;\r\nfont-weight: 600;\r\nline-height: 24,2px;\r\nletter-spacing: -0.02em;\r\ncolor: #342635;\r\n\">от 51 105 руб./чел.</p>', 'стоимость указана без перелета', NULL, 0),
(14, 14, NULL, 'images/tours/statistic_icons//SqXe3Ue1EcsSFGfhJcprRIYlLbmP2UZxf4Iot60b.svg', 'Маршрут тура:', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter; font-size: 20px; font-weight: 600; letter-spacing: -0.4px;\">Дели-Самод-Джайпу-Фатехпур Сикри-Агра</span><br></p>', NULL, NULL, 0),
(15, 11, NULL, 'images/tours/statistic_icons//DsMwLU3SnV5t2MzhzxtVHvjH4nrWALHI2uD356GU.svg', 'Маршрут тура:', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter; font-size: 20px; font-weight: 600; letter-spacing: -0.4px;\">Дели-Самод-Джайпу-Фатехпур Сикри-Агра</span><br></p>', NULL, NULL, 0),
(17, 15, NULL, 'images/tours/statistic_icons//DBdyHQGGhXhmde5C5WsZBPrEbELosipc9mctE2k4.svg', 'Маршрут тура:', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter; font-size: 20px; font-weight: 600; letter-spacing: -0.4px;\">Дели-Самод-Джайпу-Фатехпур Сикри-Агра</span><br></p>', NULL, NULL, 0),
(18, 12, NULL, 'images/tours/statistic_icons//tbepMMuAzZ0ppCxEwi2L7wox49bIGvuOv9zhStMH.svg', 'Маршрут тура:', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter; font-size: 20px; font-weight: 600; letter-spacing: -0.4px;\">Дели-Самод-Джайпу-Фатехпур Сикри-Агра</span><br></p>', NULL, NULL, 0),
(19, 3, NULL, 'images/tours/statistic_icons//DFVYm9SXsMlK1zOGbl1fbcHPMw8l89AvI3SSK4g0.svg', 'Маршрут тура:', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter; font-size: 20px; font-weight: 600; letter-spacing: -0.4px;\">Дели-Самод-Джайпу-Фатехпур Сикри-Агра</span><br></p>', NULL, NULL, 0),
(20, 4, NULL, 'images/tours/statistic_icons//ov0Hckn0VP3W4VgrZ5wL4YpCbWbamGxL3UZSybio.svg', 'Маршрут тура:', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter; font-size: 20px; font-weight: 600; letter-spacing: -0.4px;\">Дели-Самод-Джайпу-Фатехпур Сикри-Агра</span><br></p>', NULL, NULL, 0),
(21, 13, NULL, 'images/tours/statistic_icons//f55CSLQDrVqVcF9xNceKpH2pqq7DM7rUt63W4xNg.svg', 'Маршрут тура:', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter; font-size: 20px; font-weight: 600; letter-spacing: -0.4px;\">Дели-Самод-Джайпу-Фатехпур Сикри-Агра</span><br></p>', NULL, NULL, 0),
(22, 5, NULL, 'images/tours/statistic_icons//5Wd9UpXV5W5JhfKWDqa5ahsfGtxMWNzrXJef2oTA.svg', 'Маршрут тура:', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter; font-size: 20px; font-weight: 600; letter-spacing: -0.4px;\">Дели-Самод-Джайпу-Фатехпур Сикри-Агра</span><br></p>', NULL, NULL, 0),
(23, 6, NULL, 'images/tours/statistic_icons//eXTWQhKFakzgDC1lbc7CQmRbVvtq0ZQfjdm4QC1T.svg', 'Маршрут тура:', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter; font-size: 20px; font-weight: 600; letter-spacing: -0.4px;\">Дели-Самод-Джайпу-Фатехпур Сикри-Агра</span><br></p>', NULL, NULL, 0),
(24, 7, NULL, 'images/tours/statistic_icons//Q3WztQX3RPyvsSSe2S1KkTv3xnNiQCVcZDLVldaz.svg', 'Маршрут тура:', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter; font-size: 20px; font-weight: 600; letter-spacing: -0.4px;\">Дели-Самод-Джайпу-Фатехпур Сикри-Агра</span><br></p>', NULL, NULL, 0),
(25, 8, NULL, 'images/tours/statistic_icons//3GINch4acizUvsR3UYNQesUwfXpYTzOaFvpM374s.svg', 'Маршрут тура:', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter; font-size: 20px; font-weight: 600; letter-spacing: -0.4px;\">Дели-Самод-Джайпу-Фатехпур Сикри-Агра</span><br></p>', NULL, NULL, 0),
(26, 9, NULL, 'images/tours/statistic_icons//qQCdsb3LvLBgIL2Ntugzs8lCoStQwk2onh7q1Ss1.svg', 'Маршрут тура:', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter; font-size: 20px; font-weight: 600; letter-spacing: -0.4px;\">Дели-Самод-Джайпу-Фатехпур Сикри-Агра</span><br></p>', NULL, NULL, 0),
(27, 10, NULL, 'images/tours/statistic_icons//V7ltQOPHvpheMiDec18LqsJiCr5YcI4XRjaxTCZT.svg', 'Маршрут тура:', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter; font-size: 20px; font-weight: 600; letter-spacing: -0.4px;\">Дели-Самод-Джайпу-Фатехпур Сикри-Агра</span><br></p>', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mailling`
--

CREATE TABLE `mailling` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAgent` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mailling`
--

INSERT INTO `mailling` (`id`, `email`, `isAgent`, `created_at`, `updated_at`) VALUES
(5, 'asd@asd', 1, '2024-09-16 09:59:33', '2024-09-16 09:59:33'),
(6, 'test@test', 1, '2024-09-16 10:01:49', '2024-09-16 10:01:49');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(159, '2019_12_14_000001_create_personal_access_tokens_table', 1),
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
(238, '2024_08_12_143948_create_tour_country_table', 17),
(240, '2024_09_03_114216_create_samotour_tours_table', 19),
(241, '2024_09_03_120017_create_jobs_table', 19),
(242, '2024_09_06_102038_create_tour_attached_files', 19),
(247, '2024_09_10_115510_create_agents_table', 20),
(249, '2024_09_12_122855_create_requests_table', 21),
(251, '2024_08_27_170917_create_mailling_table', 22),
(252, '2024_08_12_110434_create_tours_table', 23);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `url` text,
  `text` longtext,
  `image` text,
  `title` varchar(1000) DEFAULT NULL,
  `preview_text` text,
  `preview_image` text,
  `rating` int DEFAULT '0',
  `hide` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `url`, `text`, `image`, `title`, `preview_text`, `preview_image`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(2, 'test', '<p>test</p>', 'images/news//bLBEhNxIIEOnkZI0Z4qjcqxQhVtDPohQ13E7b2i2.png', 'Авиакомпания Utair повезет туристов в Анталью и Сочи', '<p>test</p>', 'images/news//xGpxjP84jqHemkJDG8I0oay3WXcb1LOEUyWU8Vbj.png', 0, 0, '2024-08-20 11:44:49', '2024-08-23 10:11:05'),
(3, 'belgorodskii-centr-turizma-polucil-gran-pri', NULL, NULL, 'Белгородский центр туризма получил Гран-при', NULL, 'images/news//ichSZ4GOPBBORZIHDEgNWyOyxnWPekHovjURe7Lm.png', 2, 0, '2024-08-23 10:17:19', '2024-08-26 09:28:50'),
(4, 'na-granice-s-kitaem-v-sumke-turista-nasli-zuby-kasalota', '<h3 class=\"blog-detailed-block__title\">Примите участие в акции туристический кешбэк</h3>\r\n            <p class=\"blog-detailed-block__text\">Спешите отправиться в путешествие по нашей стране с очень хорошей скидкой!\r\n            </p>\r\n            <h3 class=\"blog-detailed-block__title\">Скидка за туры 20%</h3>\r\n            <p class=\"blog-detailed-block__text\">предоставляется при единовременной оплате онлайн с помощью карты МИР,\r\n                зарегистрированной в программе. Оплатить туристические услуги необходимо&nbsp;до 30.04.2022&nbsp;включительно, а ваша\r\n                поездка должна состояться&nbsp;до 30.06.2022.&nbsp;Максимальная сумма к\r\n                возврату - 20 000 рублей. Кешбэк возможен не только за пакетные туры, но и за отдельные услуги, такие как\r\n                проживание в отеле, санатории или путешествие-круиз. Важно, чтобы длительность вашей поездки была&nbsp;дольше 2-х\r\n                ночей&nbsp;включительно.Кроме\r\n                того, есть возможность получить возврат за детский лагерь! В этом случае кешбэк составит 50% стоимости\r\n                путевки, но также не более 20 000 рублей. Приобрести детскую путевку нужно до 31.08.2022.</p>\r\n            <h3 class=\"blog-detailed-block__title\">Выбирайте любой регион России</h3>\r\n            <p class=\"blog-detailed-block__text\">- Байкал, Казань, Карелия, Кавказ, Калининград, Владивосток, Камчатка,\r\n                Сочи, Алтай, Крым и многие-многие другие! А мы поможем в организации вашего лучшего путешествия.</p>\r\n            <a href=\"\" class=\"blog-detailed-block__search-tours\">Поиск туров с кешбэк 20%</a>', 'images/news/amLQRBUPRr9zGCzfbmNuDELPhO7fCUPQXy8sXyWG.jpg', 'На границе с Китаем в сумке туриста нашли зубы кашалота', NULL, 'images/news//iwR38Zjx8HSACoqOb4QA4lkF892KQqJ1ZyewT8RE.png', 1, 0, '2024-08-23 10:17:47', '2024-08-26 10:22:18');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `url` text NOT NULL,
  `text` text,
  `about_text_1` text,
  `about_text_2` text,
  `definition` text,
  `rating` int DEFAULT '0',
  `hide` tinyint UNSIGNED DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `url`, `text`, `about_text_1`, `about_text_2`, `definition`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(1, 'О компании', 'o-kompanii', '<p>text</p>', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 20px; letter-spacing: -0.4px; background-color: rgb(254, 254, 254);\">До 2020 года основным видом деятельности компании была организация туров в Италию. Сегодня, активное использование современных цифровых технологий и интеграционных решений позволяют нам создавать для туристов качественный продукт по конкурентным ценам по таким странам как ОАЭ, Мальдивы, Сейшелы, Египет, Турция, Шри-Ланка, Таиланд, страны ЮВА, Китай и другим направлениям.</span><br></p>', '<p class=\"company-description__text\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 20px; line-height: 40px; letter-spacing: -0.02em; color: rgb(52, 38, 53); background-color: rgb(254, 254, 254);\">Наша компания сотрудничает с регулярными перевозчиками, что гарантирует выполнение всех обязательств перед клиентами и партнерами точно и в срок.</p><p class=\"company-description__text\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 20px; line-height: 40px; letter-spacing: -0.02em; color: rgb(52, 38, 53); background-color: rgb(254, 254, 254);\"><br></p><p class=\"company-description__text\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 20px; line-height: 40px; letter-spacing: -0.02em; color: rgb(52, 38, 53); background-color: rgb(254, 254, 254);\">За 20 лет работы на туристическом рынке мы зарекомендовали себя как надежная компания с безупречной финансовой репутацией.</p>', NULL, 0, 0, '2024-08-16 10:37:13', '2024-08-19 08:11:14'),
(2, 'Туристам', 'turistam', '<h1 class=\"agency-description__header\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 32px; line-height: 38.73px; letter-spacing: -0.02em; color: rgb(52, 38, 53);\">Сведения о туроператоре:</h1><p class=\"agency-description__text\" style=\"margin-top: 30px; margin-bottom: 30px; font-family: Inter, sans-serif; font-size: 18px; line-height: 30px; letter-spacing: -0.02em;\">В соответствии с требованиями федерального закона «О внесении изменений в Федеральный закон» об основах туристской деятельности в Российской Федерации», вступившего в действие 1 июня 2007 г., ООО «Туристическая фирма «Меркурий», ОГРН 1047833025635, внесена в единый федеральный реестр туроператоров под номером 017558, серия РТ0.</p><h2 class=\"agency-description__title\" style=\"margin-top: unset; margin-right: unset; margin-bottom: 30px; margin-left: unset; font-family: Inter, sans-serif; font-size: 24px; line-height: 30px; letter-spacing: -0.02em;\">Ответственность Туроператора застрахована в страховой компании:</h2><h3 class=\"agency-description__subtitle\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 18px; line-height: 30px; letter-spacing: -0.02em; color: rgb(52, 38, 53);\">Международный выездной туризм</h3><p class=\"agency-description__text\" style=\"margin-top: 30px; margin-bottom: 30px; font-family: Inter, sans-serif; font-size: 18px; line-height: 30px; letter-spacing: -0.02em;\">На основании решения Ассоциации \"Объединение туроператоров всфере выездного туризма \"ТУРПОМОЩЬ\" № 317 от 07.03.2024 г. длясферы \"выездной туризм\" финансовое обеспечение не требуется до01.04.2025г.</p><h3 class=\"agency-description__subtitle\" style=\"margin: unset; font-family: Inter, sans-serif; font-size: 18px; line-height: 30px; letter-spacing: -0.02em; color: rgb(52, 38, 53);\">Внутренний туризм, международный въездной</h3><p class=\"agency-description__text\" style=\"margin-top: 30px; margin-bottom: 30px; font-family: Inter, sans-serif; font-size: 18px; line-height: 30px; letter-spacing: -0.02em;\">Общество с Ограниченной Ответственностью «Русское Страховое Общество«Евроинс». Адрес (место нахождения) организации: Смоленская обл, г Смоленск, улГлинки, д 7Документ:№ № ЛСП02/23/ГО-ТУР№ 2671163 от 06/12/2023Срок действия финансового обеспечения: с с 29/01/2024 по 28/01/2025 г.Размер финансового обеспечения: 500000 р.</p><p class=\"agency-description__text\" style=\"margin-top: 30px; margin-bottom: 30px; font-family: Inter, sans-serif; font-size: 18px; line-height: 30px; letter-spacing: -0.02em;\">ООО «Туристическая фирма «МЕРКУРИЙ» в&nbsp;<a href=\"http://localhost/pages/turistam\" class=\"agency-description-text_link\" style=\"font-family: Inter, sans-serif; font-weight: 400; line-height: 30px; letter-spacing: -0.02em; color: rgb(52, 38, 53); text-decoration: none; border-bottom: 1px solid rgb(52, 38, 53);\">Едином федеральном реестре на сайте Ростуризма</a>&nbsp;Желаем Вам успешных продаж и надеемся на плодотворное сотрудничество!</p>', NULL, NULL, NULL, 0, 0, '2024-08-16 10:39:29', '2024-08-19 10:01:12'),
(3, 'Страхование', 'straxovanie', NULL, NULL, NULL, NULL, 0, 0, '2024-08-16 10:41:33', '2024-08-16 10:41:33'),
(4, 'Контакты', 'kontakty', NULL, NULL, NULL, NULL, 0, 0, '2024-08-19 12:16:14', '2024-08-19 12:16:14'),
(5, 'Агентствам', 'agentstvam', '<h1 class=\"agency-description__header\">Сведения о туроператоре:</h1>\r\n                <p class=\"agency-description__text\">В соответствии с требованиями федерального закона «О внесении изменений в\r\n                    Федеральный закон» об основах туристской деятельности в Российской Федерации», вступившего в действие 1\r\n                    июня 2007 г., ООО «Туристическая фирма «Меркурий», ОГРН 1047833025635,\r\n                    внесена в единый федеральный реестр туроператоров под номером 017558, серия РТ0.</p>\r\n                <h2 class=\"agency-description__title\">Ответственность Туроператора застрахована в страховой компании:</h2>\r\n                <h3 class=\"agency-description__subtitle\">Международный выездной туризм</h3>\r\n                <p class=\"agency-description__text\">На основании решения Ассоциации \"Объединение туроператоров всфере\r\n                    выездного туризма \"ТУРПОМОЩЬ\" № 317 от 07.03.2024 г. длясферы \"выездной туризм\" финансовое обеспечение\r\n                    не требуется до01.04.2025г.</p>\r\n                <h3 class=\"agency-description__subtitle\">Внутренний туризм, международный въездной</h3>\r\n                <p class=\"agency-description__text\">Общество с Ограниченной Ответственностью «Русское Страховое\r\n                    Общество«Евроинс». Адрес (место нахождения) организации: Смоленская обл, г Смоленск, улГлинки, д\r\n                    7Документ:№ № ЛСП02/23/ГО-ТУР№ 2671163 от 06/12/2023Срок действия финансового\r\n                    обеспечения: с с 29/01/2024 по 28/01/2025 г.Размер финансового обеспечения: 500000 р.</p>\r\n                <p class=\"agency-description__text\">\r\n                    ООО «Туристическая фирма «МЕРКУРИЙ» в <a href=\"\" class=\"agency-description-text_link\">Едином\r\n                        федеральном реестре на сайте Ростуризма</a> Желаем Вам успешных продаж и надеемся на плодотворное\r\n                    сотрудничество!\r\n                </p>', NULL, NULL, NULL, 0, 0, '2024-08-19 12:20:43', '2024-08-26 11:44:44'),
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
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('email@asd', 'm5s1RnVKJ84k1yPy', NULL),
('info@mangaspace.ru', 'wwke7LBBQYwNi3Nf', NULL),
('info@mangaspace.ru', 'SOvUVejRzSCD9EN0', NULL),
('info@mangaspace.ru', 'ANnIOUJqm2edG7l7', NULL),
('info@mangaspace.ru', '15XasfQUCLOMURWF', NULL),
('info@mangaspace.ru', 'UIivBa8Rki2B2rbe', NULL),
('info@mangaspace.ru', 'Ywyy2NZX5MJ5f6IW', NULL),
('info@mangaspace.ru', 'v0SPymze1GGynnNc', NULL),
('info@mangaspace.ru', 'Mm7WIubWXCNizvHw', NULL),
('info@mangaspace.ru', 'EIwOxsKMncO4Tqje', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `personal`
--

CREATE TABLE `personal` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `description` longtext,
  `email` varchar(1000) DEFAULT NULL,
  `hide` tinyint UNSIGNED DEFAULT '0',
  `rating` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`, `expires_at`) VALUES
(15, 'App\\Models\\User\\User', 5, 'App', '2a474e71633f0f4b64d2a4ad249c8cdcb4fdcf17dcf629e62358dd00fdef87f1', '[\"*\"]', NULL, '2024-09-10 13:35:14', '2024-09-10 13:35:14', NULL),
(16, 'App\\Models\\User\\User', 5, 'App', '9c8d0efab0fca7dac43be999640a719758873032723e004d90ca1a2f2ceb577f', '[\"*\"]', NULL, '2024-09-10 13:39:06', '2024-09-10 13:39:06', NULL),
(17, 'App\\Models\\User\\User', 5, 'App', 'b324f7afff14f2fa6d06a3ab8c3459c72ba3bfb26ec8d9e63182afae10c92d27', '[\"*\"]', NULL, '2024-09-10 13:48:01', '2024-09-10 13:48:01', NULL),
(18, 'App\\Models\\User\\User', 5, 'App', '966e3d5af13f1a51fb3966bee8cf9b0f7f76dbcdd83289fc3bc781f74526d56a', '[\"*\"]', NULL, '2024-09-10 13:54:33', '2024-09-10 13:54:33', NULL),
(19, 'App\\Models\\User\\User', 5, 'App', '043f058263778019b94186f5a959ae0a65609546bf3822119354d74b5876cdd9', '[\"*\"]', NULL, '2024-09-10 13:56:26', '2024-09-10 13:56:26', NULL),
(20, 'App\\Models\\User\\User', 5, 'App', '159577483799654440e7e19dd5ff4d6d8f298d5e6d0921ebd57e785436c7dab1', '[\"*\"]', NULL, '2024-09-10 14:06:26', '2024-09-10 14:06:26', NULL),
(21, 'App\\Models\\User\\User', 5, 'App', '35beb08a46a9b121e386819306f0d27c2a9b8780cddf309ca3d95c52d05f54b8', '[\"*\"]', NULL, '2024-09-10 14:08:38', '2024-09-10 14:08:38', NULL),
(22, 'App\\Models\\User\\User', 5, 'App', 'f11ff8414f581ab7e5ade47f71288a51419ac16091a3d144183a18ce6225fbda', '[\"*\"]', NULL, '2024-09-10 14:17:16', '2024-09-10 14:17:16', NULL),
(23, 'App\\Models\\User\\User', 5, 'App', '8067c6a455da799bd4378f104cb496ff8886979c530b25aa001bcb8df2c0dc15', '[\"*\"]', NULL, '2024-09-10 14:23:49', '2024-09-10 14:23:49', NULL),
(24, 'App\\Models\\User\\User', 5, 'App', '482521188d78b320ca3031e0a57dbdf005345ca02d2ce0c239d6218c2d63e67d', '[\"*\"]', NULL, '2024-09-10 14:35:15', '2024-09-10 14:35:15', NULL),
(25, 'App\\Models\\User\\User', 5, 'App', 'fa10efaf81f5a78508b8332c2427984222c6c831a8d4beacba9491575002b1ca', '[\"*\"]', NULL, '2024-09-10 14:39:00', '2024-09-10 14:39:00', NULL),
(26, 'App\\Models\\User\\User', 5, 'App', '599b137d731aa5736f9e4e52ec07dec2bab6ae7f84b5de14a797f9fddfa9af7c', '[\"*\"]', NULL, '2024-09-10 14:40:07', '2024-09-10 14:40:07', NULL),
(27, 'App\\Models\\User\\User', 5, 'App', '8703f437d151dfce1ff0a989f9418d06d159c1170a05e8b0a9b5628020e1ebbf', '[\"*\"]', NULL, '2024-09-10 14:41:44', '2024-09-10 14:41:44', NULL),
(28, 'App\\Models\\User\\User', 5, 'App', '2e4fa7fe21b5435f0b8e7e8beb5fde6027ffb1dfab7515baed14a251858d993f', '[\"*\"]', NULL, '2024-09-10 14:43:12', '2024-09-10 14:43:12', NULL),
(29, 'App\\Models\\User\\User', 5, 'App', '4673b3d543957ca5aea6cbf2ab14dfc896f1012cf104437b7a4b41c9412a9a5c', '[\"*\"]', NULL, '2024-09-10 14:43:48', '2024-09-10 14:43:48', NULL),
(30, 'App\\Models\\User\\User', 5, 'App', '05728a4bb4f2d655bd5bd1d1fb2488a3079ba646be99c3ec89b2140f0982db23', '[\"*\"]', NULL, '2024-09-10 14:45:02', '2024-09-10 14:45:02', NULL),
(31, 'App\\Models\\User\\User', 5, 'App', '2a7b76ed53218a83323def2d79e2e58d71475c3aee4cbea6de94951cbb8a8af1', '[\"*\"]', NULL, '2024-09-11 07:10:37', '2024-09-11 07:10:37', NULL),
(32, 'App\\Models\\User\\User', 5, 'App', '75f3caddcc031d3f6723a762e2f61b23134f8e8741deb1f4dbbf6eb961196c36', '[\"*\"]', NULL, '2024-09-11 07:11:53', '2024-09-11 07:11:53', NULL),
(33, 'App\\Models\\User\\User', 5, 'App', '91dbf38ea48eaf19334027e45c20d9b21f720e2f44fc3faba3a479ac3205fb36', '[\"*\"]', NULL, '2024-09-11 07:12:28', '2024-09-11 07:12:28', NULL),
(34, 'App\\Models\\User\\User', 5, 'App', 'bb136b3020bf252aa6c982ce4feb85bd767ec09cfa89208d0f9d604b4ad5b633', '[\"*\"]', NULL, '2024-09-11 07:16:44', '2024-09-11 07:16:44', NULL),
(35, 'App\\Models\\User\\User', 5, 'App', 'bd839eb60ed3e48bf1e545a5fb544764b6faf021a844116a99e2793235ac68c2', '[\"*\"]', NULL, '2024-09-11 07:17:39', '2024-09-11 07:17:39', NULL),
(36, 'App\\Models\\User\\User', 5, 'App', '81c303ff0571da313fbfe25fc492a470914645eee2ac4c5759128d9012994554', '[\"*\"]', NULL, '2024-09-11 07:18:22', '2024-09-11 07:18:22', NULL),
(37, 'App\\Models\\User\\User', 5, 'App', 'a6a599ec991886d26f26526d64f2fa9e952dee0989f3019cc31d98d0b5f76a35', '[\"*\"]', NULL, '2024-09-11 07:25:14', '2024-09-11 07:25:14', NULL),
(38, 'App\\Models\\User\\User', 5, 'App', '40235a3efb62bda3b56e8fe504b126b2d04cd349ded6b115af3a1e7062e8d0af', '[\"*\"]', NULL, '2024-09-11 07:27:40', '2024-09-11 07:27:40', NULL),
(39, 'App\\Models\\User\\User', 5, 'App', '68a601279e091987804b059ba4d1d03a1fc90becb2d5344d909108f3112aef43', '[\"*\"]', NULL, '2024-09-11 07:28:53', '2024-09-11 07:28:53', NULL),
(40, 'App\\Models\\User\\User', 5, 'App', 'edfbef04c674c07294f4b3c38333f199284e4832a4d90962e77671223a857c2f', '[\"*\"]', NULL, '2024-09-11 07:30:03', '2024-09-11 07:30:03', NULL),
(41, 'App\\Models\\User\\User', 5, 'App', '3f83978c47a9d585b29f9621656b889353a62604b1f78294241c5468a4acb59d', '[\"*\"]', NULL, '2024-09-11 07:44:09', '2024-09-11 07:44:09', NULL),
(42, 'App\\Models\\User\\User', 5, 'App', '97f58e56a646b721e63635e7ee2b19488051ea155fafc8be6d663d6b51092ca3', '[\"*\"]', NULL, '2024-09-11 07:46:12', '2024-09-11 07:46:12', NULL),
(43, 'App\\Models\\User\\User', 5, 'App', 'f18f2a2df7c71509a4dd789f769d00a5dec374a714b587fe826c0cdc67c229f6', '[\"*\"]', NULL, '2024-09-11 07:47:40', '2024-09-11 07:47:40', NULL),
(44, 'App\\Models\\User\\User', 5, 'App', '116423ea39455e02e698115d2009292d4b7de220d6b05618fc22d90d4b7a077c', '[\"*\"]', NULL, '2024-09-11 07:48:35', '2024-09-11 07:48:35', NULL),
(45, 'App\\Models\\User\\User', 5, 'App', 'c1c650bc973290da5412c9b913d6af2e74f10af8fdd49ad608108454df407bb5', '[\"*\"]', NULL, '2024-09-11 07:50:28', '2024-09-11 07:50:28', NULL),
(46, 'App\\Models\\User\\User', 5, 'App', 'c2d13fab16d16fbe672c67f0b6430d0f2720748b7d688a059d2ec8a824885996', '[\"*\"]', NULL, '2024-09-11 07:51:16', '2024-09-11 07:51:16', NULL),
(47, 'App\\Models\\User\\User', 5, 'App', '058d091409f4ee8b62a52bf484dc966756ac77017e785d87de17d4198f1152d1', '[\"*\"]', NULL, '2024-09-11 07:51:37', '2024-09-11 07:51:37', NULL),
(48, 'App\\Models\\User\\User', 5, 'App', '4009ede16fd250cafb734ee761539221cb876b6e6bea017accce3dd9abcf93a5', '[\"*\"]', NULL, '2024-09-11 07:52:32', '2024-09-11 07:52:32', NULL),
(49, 'App\\Models\\User\\User', 5, 'App', '3b2afab0cd5a5a17ed8c3d4346f49700ab0cfc720ad33106a598cebbd12bea17', '[\"*\"]', NULL, '2024-09-11 07:54:05', '2024-09-11 07:54:05', NULL),
(50, 'App\\Models\\User\\User', 5, 'App', '1f63697d53b04d39ea492669b8231cd64c55256d82357001dc78f59f8717dc39', '[\"*\"]', NULL, '2024-09-11 07:57:23', '2024-09-11 07:57:23', NULL),
(51, 'App\\Models\\User\\User', 5, 'App', '3047b252018794ebd24534f8fe7f253e6b5d8741c4e7e06593938606be859a9b', '[\"*\"]', NULL, '2024-09-11 08:00:58', '2024-09-11 08:00:58', NULL),
(52, 'App\\Models\\User\\User', 5, 'App', '6560b88c963e982cbcc1cadbde23b9317125b0bb7a2078d23f11bbfb301dad0c', '[\"*\"]', NULL, '2024-09-11 08:03:10', '2024-09-11 08:03:10', NULL),
(53, 'App\\Models\\User\\User', 5, 'App', '730c4e8165f28b7b20276d3113df1854728f0d60a341d19c8bd4c37755afbd37', '[\"*\"]', NULL, '2024-09-11 08:04:23', '2024-09-11 08:04:23', NULL),
(54, 'App\\Models\\User\\User', 5, 'App', '263767c0d1c2f6ad66638047089bd76b83c5d4f5c78ad162d89fb99740f4a2a8', '[\"*\"]', NULL, '2024-09-11 08:06:25', '2024-09-11 08:06:25', NULL),
(55, 'App\\Models\\User\\User', 5, 'App', '96df809f60c40eede1238d985663c1b78a7b6296518fe1b8cec609d24a52c150', '[\"*\"]', NULL, '2024-09-11 08:06:51', '2024-09-11 08:06:51', NULL),
(56, 'App\\Models\\User\\User', 5, 'App', '01ef74f194ac58ce602200ffc48ee382e7c4d1a46b18cb723017194243a436a1', '[\"*\"]', NULL, '2024-09-11 08:08:38', '2024-09-11 08:08:38', NULL),
(57, 'App\\Models\\User\\User', 5, 'App', '996fa0b10a3c8387a597c89e5f3de6f5a4c0c743a47d1d9d4900d5448f650d38', '[\"*\"]', NULL, '2024-09-11 08:09:23', '2024-09-11 08:09:23', NULL),
(58, 'App\\Models\\User\\User', 5, 'App', '5c3ea7be9c54b3310151de011c0925506ae532ed24341b95ba380292fed6121d', '[\"*\"]', NULL, '2024-09-13 08:28:32', '2024-09-13 08:28:32', NULL),
(59, 'App\\Models\\User\\User', 6, 'App', '75cc4842f8c80f21dd9937c3c8461f60c088c8b303819db87e5b52d1b9ad7cf2', '[\"*\"]', NULL, '2024-09-13 13:54:50', '2024-09-13 13:54:50', NULL),
(60, 'App\\Models\\User\\User', 5, 'App', 'df33603067d21e00bfb7b9f5e52bee062dab4e72a0f228339f1dc5facf8d374c', '[\"*\"]', NULL, '2024-09-13 13:56:53', '2024-09-13 13:56:53', NULL),
(61, 'App\\Models\\User\\User', 5, 'App', '5172b98e90302941cb389728cbc4b38c278e13a2231831a1f188ad30f4b5ec1f', '[\"*\"]', NULL, '2024-09-13 14:01:09', '2024-09-13 14:01:09', NULL),
(62, 'App\\Models\\User\\User', 5, 'App', '4e669859ae2116256d68d844ed792f67bb17dd9992a4280a5ded2978f08b8e7e', '[\"*\"]', NULL, '2024-09-13 14:02:10', '2024-09-13 14:02:10', NULL),
(63, 'App\\Models\\User\\User', 5, 'App', '6772436272c0c8544b7cb00547efd7023211a609da90ab2eb06eaa56a2fa3f25', '[\"*\"]', NULL, '2024-09-13 14:11:30', '2024-09-13 14:11:30', NULL),
(64, 'App\\Models\\User\\User', 5, 'App', '1236a822cd062ff663d1e777bbf9d77e680f2da32c93cc4c5321d43074c5a62d', '[\"*\"]', NULL, '2024-09-13 14:11:55', '2024-09-13 14:11:55', NULL),
(66, 'App\\Models\\User\\User', 9, 'App', 'ac1826279b5947e19b06ddfca93507481d9ad3a62166b5695f6826f7ca194e31', '[\"*\"]', NULL, '2024-09-13 14:48:55', '2024-09-13 14:48:55', NULL),
(67, 'App\\Models\\User\\User', 10, 'App', '21ad3c814e98391b4420a17865b90ed5734cefb6fe326a09a9470ad9ff8d99ab', '[\"*\"]', NULL, '2024-09-13 14:50:06', '2024-09-13 14:50:06', NULL),
(68, 'App\\Models\\User\\User', 11, 'App', 'a457eb20e43e599a56df7546e70262a8d870a0f692cae2c633261120cde9dae9', '[\"*\"]', NULL, '2024-09-13 14:51:03', '2024-09-13 14:51:03', NULL),
(69, 'App\\Models\\User\\User', 12, 'App', 'b7a4b172c9914082e66599f4974e2290160e5a2894b87af529288ecc23f7e514', '[\"*\"]', NULL, '2024-09-13 14:53:27', '2024-09-13 14:53:27', NULL),
(70, 'App\\Models\\User\\User', 13, 'App', '9d3d8a74a9bb7f0e6023e5d516203164cf9ec749ef6b55749fa5f8fd26161adb', '[\"*\"]', NULL, '2024-09-13 14:54:54', '2024-09-13 14:54:54', NULL),
(71, 'App\\Models\\User\\User', 14, 'App', '22f65a5a98b5e6dac1e104b056998d333f107f4c91219e9e7e3dab7491aa2c70', '[\"*\"]', NULL, '2024-09-16 07:39:24', '2024-09-16 07:39:24', NULL),
(72, 'App\\Models\\User\\User', 5, 'App', '842605b7e4c0e16b319adcf1b82591eb989704e9a4b063f273397bfd7d79e063', '[\"*\"]', NULL, '2024-09-16 07:45:21', '2024-09-16 07:45:21', NULL),
(73, 'App\\Models\\User\\User', 5, 'App', '971fb67704e62912e00be56caffbb51ede1a4d55feff6ccec855c6b760752e9d', '[\"*\"]', NULL, '2024-09-16 07:47:58', '2024-09-16 07:47:58', NULL),
(74, 'App\\Models\\User\\User', 5, 'App', 'b7b4f604ed64bc605a0384992ebe45526b69f696ddeb5134164857b7314f9884', '[\"*\"]', NULL, '2024-09-16 07:51:39', '2024-09-16 07:51:39', NULL),
(75, 'App\\Models\\User\\User', 5, 'App', '19867dbbdf217cb9b2fd373dd0012e556d614595d51e159c8d4e68e8568d6de9', '[\"*\"]', NULL, '2024-09-16 07:52:29', '2024-09-16 07:52:29', NULL),
(76, 'App\\Models\\User\\User', 5, 'App', 'c3cacba76c6dd6bad19401737eea8ca41d36ffd61c447536240fd1577d4377ae', '[\"*\"]', NULL, '2024-09-16 08:00:58', '2024-09-16 08:00:58', NULL),
(77, 'App\\Models\\User\\User', 5, 'App', 'e6ba43a5933565cf25d05d3a14b72152b31e29318d59d2bbe4fe0f18ec9be63d', '[\"*\"]', NULL, '2024-09-16 08:09:03', '2024-09-16 08:09:03', NULL),
(78, 'App\\Models\\User\\User', 5, 'App', '06f2e8306bafa411c4b33f5e04fb181ba3c13d8d7fb3e15096fc196b34a93049', '[\"*\"]', NULL, '2024-09-16 09:08:09', '2024-09-16 09:08:09', NULL),
(81, 'App\\Models\\User\\User', 2, 'App', '84a05519c9fd72995892fadf1f5c95d9527feeeaebb536cc18449dfe2f4825ea', '[\"*\"]', NULL, '2024-09-16 10:21:46', '2024-09-16 10:21:46', NULL),
(82, 'App\\Models\\User\\User', 2, 'App', '06afea242ecde3cfd25bb39665b2c961c996e651e6955734f9f2aad39998d585', '[\"*\"]', NULL, '2024-09-16 10:22:25', '2024-09-16 10:22:25', NULL),
(83, 'App\\Models\\User\\User', 2, 'App', '3e9a12516e1343c82f1ca41b7c7512dbca5064522510e03361266684f8a54ebf', '[\"*\"]', NULL, '2024-09-16 10:23:37', '2024-09-16 10:23:37', NULL),
(84, 'App\\Models\\User\\User', 2, 'App', '1ca1848ce5248264f0e7e67791134fd3c0829185aab2f5a098f1b00b5443fec0', '[\"*\"]', NULL, '2024-09-16 10:25:00', '2024-09-16 10:25:00', NULL),
(86, 'App\\Models\\User\\User', 7, 'App', '301eb4a5735960527bffbb8f0a4fe1549bfb9b3323c2b85ab8dcb6d8a8d183e0', '[\"*\"]', NULL, '2024-09-16 10:57:38', '2024-09-16 10:57:38', NULL),
(87, 'App\\Models\\User\\User', 8, 'App', 'e134e8cc2d25bbb38524318e7254b9de245e5baa327090cc8e6c5fa3e0afa11c', '[\"*\"]', NULL, '2024-09-16 11:36:35', '2024-09-16 11:36:35', NULL),
(88, 'App\\Models\\User\\User', 8, 'App', '01483ddc28877c1225a0983e38404715e9819bce630176e2a46af6668ebf23d1', '[\"*\"]', NULL, '2024-09-16 11:37:18', '2024-09-16 11:37:18', NULL),
(89, 'App\\Models\\User\\User', 8, 'App', '845e158dcd0e375146a7058de35f4f844de6dbf7c58e43ff48fe9006687c4d18', '[\"*\"]', NULL, '2024-09-16 11:39:03', '2024-09-16 11:39:03', NULL),
(90, 'App\\Models\\User\\User', 5, 'App', 'a8fa5092c4a6ad7cead7862e43349f28015531046d0e2efdec2e5fbefeaee23c', '[\"*\"]', NULL, '2024-09-16 12:25:13', '2024-09-16 12:25:13', NULL),
(91, 'App\\Models\\User\\User', 7, 'App', '815accdda624d8defdd81b199a43a87e9e7623bf8ad9b60472c74a33c1ef09fa', '[\"*\"]', NULL, '2024-09-16 12:26:38', '2024-09-16 12:26:38', NULL),
(92, 'App\\Models\\User\\User', 7, 'App', '9ab244e1d53a6fbab7254b366540dfd7bf3223d3bf3fc361789d44cc54180b53', '[\"*\"]', NULL, '2024-09-16 12:27:45', '2024-09-16 12:27:45', NULL),
(93, 'App\\Models\\User\\User', 7, 'App', '403ed53bbee072043316b67d76e30db002501972df9940e9076191b3208a46e1', '[\"*\"]', NULL, '2024-09-16 12:28:32', '2024-09-16 12:28:32', NULL),
(94, 'App\\Models\\User\\User', 7, 'App', '7dd6bf2fce71b5d5898ad348ee141fb7fd9d3bff4f4c70444f599de879fa8eab', '[\"*\"]', NULL, '2024-09-18 07:28:34', '2024-09-18 07:28:34', NULL),
(95, 'App\\Models\\User\\User', 7, 'App', 'e93686addf937c081be914a220a77e187392c9f116da76bd35b9b19c6a9a4c43', '[\"*\"]', NULL, '2024-09-18 07:35:15', '2024-09-18 07:35:15', NULL),
(96, 'App\\Models\\User\\User', 7, 'App', '7e9f1cc68c1e0814ee7b25a22ed5c038c1aa6d8ad479908fb7f660817d059360', '[\"*\"]', NULL, '2024-09-18 07:37:16', '2024-09-18 07:37:16', NULL),
(97, 'App\\Models\\User\\User', 7, 'App', '8f846a2dfbce1ecfe6466606f139d26cd24ccd88acda11e32bb4faf090a2bfc2', '[\"*\"]', NULL, '2024-09-18 07:39:35', '2024-09-18 07:39:35', NULL),
(98, 'App\\Models\\User\\User', 7, 'App', '1e4cf7890fc56b0030f98bfcf199c856f86bd052ae3017cebfc46d26ede20b06', '[\"*\"]', NULL, '2024-09-18 07:42:53', '2024-09-18 07:42:53', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

CREATE TABLE `requests` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `requests`
--

INSERT INTO `requests` (`id`, `name`, `phone`, `email`, `text`, `created_at`, `updated_at`) VALUES
(9, 'asd', '8(999) ___-____', 'asd@asd', 'asd', '2024-09-12 10:08:15', '2024-09-12 10:08:15'),
(10, NULL, NULL, NULL, NULL, '2024-09-12 10:30:53', '2024-09-12 10:30:53'),
(11, NULL, NULL, NULL, NULL, '2024-09-12 10:31:39', '2024-09-12 10:31:39'),
(12, NULL, NULL, NULL, NULL, '2024-09-12 10:32:02', '2024-09-12 10:32:02'),
(13, NULL, NULL, NULL, NULL, '2024-09-12 10:34:35', '2024-09-12 10:34:35'),
(14, NULL, NULL, NULL, NULL, '2024-09-12 10:35:19', '2024-09-12 10:35:19'),
(15, NULL, NULL, NULL, NULL, '2024-09-12 10:35:31', '2024-09-12 10:35:31'),
(16, NULL, NULL, NULL, NULL, '2024-09-12 10:35:46', '2024-09-12 10:35:46'),
(17, NULL, NULL, NULL, NULL, '2024-09-12 10:35:57', '2024-09-12 10:35:57'),
(18, NULL, NULL, NULL, NULL, '2024-09-12 10:36:15', '2024-09-12 10:36:15'),
(19, NULL, NULL, NULL, NULL, '2024-09-12 10:37:18', '2024-09-12 10:37:18'),
(20, NULL, NULL, NULL, NULL, '2024-09-12 10:38:50', '2024-09-12 10:38:50'),
(21, NULL, NULL, NULL, NULL, '2024-09-12 10:39:41', '2024-09-12 10:39:41'),
(22, NULL, NULL, NULL, NULL, '2024-09-12 10:40:52', '2024-09-12 10:40:52'),
(23, NULL, NULL, NULL, NULL, '2024-09-12 10:41:21', '2024-09-12 10:41:21'),
(24, NULL, NULL, NULL, NULL, '2024-09-12 10:42:11', '2024-09-12 10:42:11'),
(25, NULL, NULL, NULL, NULL, '2024-09-12 10:42:26', '2024-09-12 10:42:26'),
(26, NULL, NULL, NULL, NULL, '2024-09-12 10:42:56', '2024-09-12 10:42:56'),
(27, NULL, NULL, NULL, NULL, '2024-09-12 10:43:15', '2024-09-12 10:43:15'),
(28, NULL, NULL, NULL, NULL, '2024-09-12 10:43:39', '2024-09-12 10:43:39'),
(29, NULL, NULL, NULL, NULL, '2024-09-12 10:43:59', '2024-09-12 10:43:59'),
(30, NULL, NULL, NULL, NULL, '2024-09-12 10:44:43', '2024-09-12 10:44:43'),
(31, NULL, NULL, NULL, NULL, '2024-09-12 10:45:44', '2024-09-12 10:45:44'),
(32, NULL, NULL, NULL, NULL, '2024-09-12 10:45:55', '2024-09-12 10:45:55'),
(33, NULL, NULL, NULL, NULL, '2024-09-12 10:46:22', '2024-09-12 10:46:22'),
(34, NULL, NULL, NULL, NULL, '2024-09-12 10:47:36', '2024-09-12 10:47:36'),
(35, NULL, NULL, NULL, NULL, '2024-09-12 10:47:54', '2024-09-12 10:47:54'),
(36, NULL, NULL, NULL, NULL, '2024-09-12 10:48:18', '2024-09-12 10:48:18'),
(37, NULL, NULL, NULL, NULL, '2024-09-12 10:50:00', '2024-09-12 10:50:00'),
(38, NULL, NULL, NULL, NULL, '2024-09-12 10:51:12', '2024-09-12 10:51:12'),
(39, NULL, NULL, NULL, NULL, '2024-09-12 10:51:22', '2024-09-12 10:51:22'),
(40, NULL, NULL, NULL, NULL, '2024-09-12 10:52:00', '2024-09-12 10:52:00'),
(41, 'asd', '8888', 'asd', 'asd', '2024-09-12 10:52:52', '2024-09-12 10:52:52'),
(42, 'asd', '8888', 'asd', 'asd', '2024-09-12 10:52:59', '2024-09-12 10:52:59'),
(43, 'asd', '8888', 'asd', 'asd', '2024-09-12 10:53:36', '2024-09-12 10:53:36'),
(44, 'asd', '8888', 'asd', 'asd', '2024-09-12 10:53:53', '2024-09-12 10:53:53'),
(45, 'asd', '8888', 'asd', 'asd', '2024-09-12 10:55:06', '2024-09-12 10:55:06'),
(46, 'asd', '8888', 'asd', 'asd', '2024-09-12 11:03:29', '2024-09-12 11:03:29'),
(47, 'asd', '8888', 'asd', 'asd', '2024-09-12 11:04:27', '2024-09-12 11:04:27'),
(48, 'asd', '8888', 'asd', 'asd', '2024-09-12 11:04:53', '2024-09-12 11:04:53'),
(49, 'asd', '8888', 'asd', 'asd', '2024-09-12 11:06:06', '2024-09-12 11:06:06'),
(50, 'asd', '8888', 'asd', 'asd', '2024-09-12 11:06:58', '2024-09-12 11:06:58'),
(51, 'asd', '8888', 'asd', 'asd', '2024-09-12 11:09:05', '2024-09-12 11:09:05'),
(52, 'asd', '8888', 'asd', 'asd', '2024-09-12 11:10:48', '2024-09-12 11:10:48'),
(53, 'asd', '8888', 'asd', 'asd', '2024-09-12 11:12:14', '2024-09-12 11:12:14'),
(54, 'asd', '8888', 'asd', 'asd', '2024-09-12 11:15:32', '2024-09-12 11:15:32'),
(55, 'asd', '8888', 'asd', 'asd', '2024-09-12 11:16:56', '2024-09-12 11:16:56'),
(56, 'asd', '8888', 'asd', 'asd', '2024-09-12 11:18:52', '2024-09-12 11:18:52'),
(57, 'asd', '8888', 'asd', 'asd', '2024-09-12 11:19:36', '2024-09-12 11:19:36'),
(58, 'asd', '8(999) 999-9999', 'asd@asd', 'asdasd', '2024-09-13 13:45:30', '2024-09-13 13:45:30');

-- --------------------------------------------------------

--
-- Структура таблицы `samotour_tours`
--

CREATE TABLE `samotour_tours` (
  `id` bigint UNSIGNED NOT NULL,
  `id_tour` int NOT NULL,
  `id_city` int NOT NULL,
  `id_country` int NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `samotour_tours`
--

INSERT INTO `samotour_tours` (`id`, `id_tour`, `id_city`, `id_country`, `name`, `created_at`, `updated_at`) VALUES
(1, 2503, 290, 36, 'Аппетитный Азербайджан, Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(2, 2516, 290, 36, 'Баку в итальянском стиле, Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(3, 2522, 290, 36, 'БАКУ - город искусств, Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(4, 2749, 290, 36, 'Гастро-тур в Азербайджан, Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(5, 2773, 290, 36, 'Нефть Азербайджана и Нобелевская премия, Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(6, 4370, 290, 36, 'Новогодняя сказка в Баку - 29.12-02.01, Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(7, 4394, 290, 36, 'Новогодняя сказка в Баку - 30.12-02.01, Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(8, 2374, 290, 36, 'Отели Баку (Int.), Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(9, 2465, 290, 36, 'Открой для себя Азербайджан, Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(10, 2424, 290, 36, 'Открой для себя Баку, Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(11, 2712, 290, 36, 'Путешествие на Кавказ по местам А. Дюма, Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(12, 2728, 290, 36, 'Религиозные святыни Баку, Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(13, 2667, 290, 36, 'Эконом тур - Открой для себя Баку, Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(14, 2679, 290, 36, 'Экскурсионный тур Баку-Губа, Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(15, 981, 290, 2, 'Отдых в Сочи: Динамика, Астрахань', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(16, 1390, 170, 67, 'Отдых в Абхазии: Динамика NEW, Барнаул', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(17, 1022, 170, 67, 'Отдых в Абхазии: Динамика, Барнаул', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(18, 1075, 170, 2, 'Красная Поляна: Динамика, Барнаул', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(19, 988, 170, 2, 'Отдых в Сочи: Динамика, Барнаул', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(20, 3804, 233, 31, 'Две столицы: Пекин - Шанхай - Пекин (VVO-GDS)', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(21, 3794, 233, 31, 'Древние столицы: Пекин - Сиань - Лоян - Пекин (VVO-GDS)', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(22, 3767, 233, 31, 'Знакомство со столицей (VVO-GDS)', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(23, 3781, 233, 31, 'Китайский Аватар: Пекин - Чжанцзяцзе - Пекин (VVO-GDS)', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(24, 3749, 233, 31, 'Классический Пекин (VVO-GDS)', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(25, 4163, 233, 31, 'Отдых на о. Хайнань (VVO-GDS Аэрофлот)', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(26, 4164, 233, 31, 'Отдых на о. Хайнань (VVO-GDS Аэрофлот) (E)', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(27, 3814, 233, 31, 'Пекин - Сиань - Чжанцзяцзе - Пекин (VVO-GDS)', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(28, 3824, 233, 31, 'Пекин – Шанхай – Сучжоу – Ханчжоу – Пекин (VVO-GDS)', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(29, 1768, 233, 31, 'Тур в Пекин (VVO-GDS) (E)', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(30, 4227, 233, 2, 'Week End Москва, Владивосток', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(31, 3941, 233, 2, 'Выходные в Красноярске, Владивосток', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(32, 3935, 233, 2, 'Гастрономический Красноярск: Вкусы Енисейской Сибири, Владивосток', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(33, 4235, 233, 2, 'Классическая Москва, Владивосток', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(34, 4177, 233, 2, 'Москва: Динамика, Владивосток', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(35, 4243, 233, 2, 'Москва Макси, Владивосток', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(36, 4251, 233, 2, 'Мос Тус Москва, Владивосток', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(37, 3676, 233, 2, 'Путешествие по Вологодской земле на автобусе, Владивосток', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(38, 3705, 233, 2, 'Санкт-Петербург и летние хиты Карелии, Владивосток', '2024-09-13 12:35:13', '2024-09-13 12:35:13'),
(39, 2086, 233, 19, 'Као Лак (W), Владивосток [+0]', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(40, 1585, 233, 19, 'Ко Чанг (W), Владивосток [+0]', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(41, 3643, 233, 19, 'Отдых в Као Лаке, Владивосток [+0]', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(42, 1370, 233, 19, 'Отдых в Ко Чанге, Владивосток [+0]', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(43, 1373, 233, 19, 'Отдых в Паттайе, Владивосток [+0]', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(44, 3890, 233, 19, 'Отдых в Хуахине, Владивосток [+0]', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(45, 2090, 233, 19, 'Отдых на Пхукете, Владивосток [+0]', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(46, 2120, 233, 19, 'Отдых на Самуи, Владивосток [+0]', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(47, 1589, 233, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Владивосток [+0]', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(48, 2094, 233, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Владивосток [+0]', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(49, 2098, 233, 19, 'Самуи (W), Владивосток [+0]', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(50, 2743, 233, 19, 'Хуахин (W), Владивосток [+0]', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(51, 1391, 114, 67, 'Отдых в Абхазии: Динамика NEW, Владикавказ', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(52, 1034, 114, 67, 'Отдых в Абхазии: Динамика, Владикавказ', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(53, 1076, 114, 2, 'Красная Поляна: Динамика, Владикавказ', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(54, 989, 114, 2, 'Отдых в Сочи: Динамика, Владикавказ', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(55, 732, 347, 36, 'Аппетитный Азербайджан, Волгоград', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(56, 2385, 347, 36, 'Отели Баку (Int.), Волгоград', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(57, 737, 347, 36, 'Открой для себя Азербайджан, Волгоград', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(58, 738, 347, 36, 'Открой для себя Баку, Волгоград', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(59, 2866, 347, 36, 'Тур на Формулу 1, Волгоград', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(60, 2692, 347, 36, 'Экскурсионный тур Баку-Губа, Волгоград', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(61, 3504, 156, 67, 'Все вкусы Абхазии, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(62, 3498, 156, 67, 'Легенды Самурзакана, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(63, 3487, 156, 67, 'Семь Чудес Страны Души, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(64, 2377, 156, 36, 'Отели Баку (Int.), Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(65, 4225, 156, 2, 'Week End Москва, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(66, 3307, 156, 2, 'Азбука Экскурсий, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(67, 3315, 156, 2, 'В Калининград в любой день, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(68, 3324, 156, 2, 'В Тридевятом Царстве, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(69, 4233, 156, 2, 'Классическая Москва, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(70, 3361, 156, 2, 'Королевские выходные, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(71, 4175, 156, 2, 'Москва: Динамика, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(72, 4241, 156, 2, 'Москва Макси, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(73, 4249, 156, 2, 'Мос Тус Москва, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(74, 3340, 156, 2, 'На самом западе, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(75, 3678, 156, 2, 'Путешествие по Вологодской земле на автобусе, Гроозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(76, 3669, 156, 2, 'Санкт-Петербург, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(77, 3706, 156, 2, 'Санкт-Петербург и летние хиты Карелии, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(78, 2202, 156, 9, 'Тур в Стамбул (A): Прямой рейс, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(79, 2203, 156, 9, 'Тур в Стамбул (P): Прямой рейс, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(80, 2204, 156, 9, 'Тур в Стамбул (Q): Прямой рейс, Грозный', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(81, 3502, 932, 67, 'Все вкусы Абхазии, ЕКб', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(82, 3496, 932, 67, 'Легенды Самурзакана, ЕКб', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(83, 1378, 932, 67, 'Отдых в Абхазии: Динамика NEW, ЕКб', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(84, 859, 932, 67, 'Отдых в Абхазии: Динамика, ЕКб', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(85, 3485, 932, 67, 'Семь Чудес Страны Души, ЕКб', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(86, 730, 932, 36, 'Аппетитный Азербайджан, Екатеринбург', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(87, 2495, 932, 36, 'На выходные в Баку, Екатеринбург', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(88, 4376, 932, 36, 'Новогодняя сказка в Баку - 29.12-02.01, Екатеринбург', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(89, 4400, 932, 36, 'Новогодняя сказка в Баку - 30.12-02.01, Екатеринбург', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(90, 4427, 932, 36, 'Новогодняя сказка в Баку - 30.12-03.01, Екатеринбург', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(91, 4455, 932, 36, 'Новогодняя сказка в Баку - 31.12-03.01, Екатеринбург', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(92, 2383, 932, 36, 'Отели Баку (Int.), Екатеринбург', '2024-09-13 12:35:14', '2024-09-13 12:35:14'),
(93, 724, 932, 36, 'Открой для себя Баку, Екатеринбург', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(94, 4304, 932, 36, 'Рождественские каникулы в Баку - 02.01-05.01, Екатеринбург', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(95, 4328, 932, 36, 'Рождественские каникулы в Баку - 02.01-06.01, Екатеринбург', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(96, 4342, 932, 36, 'Рождественские каникулы в Баку - 02.01-07.01, Екатеринбург', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(97, 4358, 932, 36, 'Рождественские каникулы в Баку - 03.01-07.01, Екатеринбург', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(98, 2864, 932, 36, 'Тур на Формулу 1, Екатеринбург', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(99, 2689, 932, 36, 'Экскурсионный тур Баку-Губа, Екатеринбург', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(100, 2893, 932, 6, 'Белорусская Кругосветка, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(101, 2871, 932, 6, 'Белорусский Калейдоскоп, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(102, 3094, 932, 6, 'Все дороги ведут в Мир, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(103, 3089, 932, 6, 'Гомельская классика, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(104, 3099, 932, 6, 'Королевский Гродно, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(105, 3491, 932, 6, 'Курорты Беларуси (К), ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(106, 2897, 932, 6, 'Тысячелетний Брест, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(107, 2530, 932, 45, 'Будапешт, Екб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(108, 2532, 932, 45, 'Термальные курорты Венгрии, Екб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(109, 4076, 932, 43, 'Нячанг + Хошимин 1 ночь (A): Аэрофлот до Хошимина, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(110, 3560, 932, 43, 'Нячанг + Хошимин 1 ночь (V): Аэрофлот до Хошимина, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(111, 4039, 932, 43, 'Тур в Фантхьет (A): Аэрофлот до Хошимина, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(112, 4105, 932, 43, 'Тур в Хошимин (A): Аэрофлот, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(113, 3605, 932, 43, 'Тур в Хошимин (V): Аэрофлот, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(114, 3572, 932, 43, 'Тур на Фукуок (V), ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(115, 4093, 932, 43, 'Фукуок + Хошимин 1 ночь (A): Аэрофлот до Хошимина, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(116, 2322, 932, 29, 'Тбилиси, Екб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(117, 1926, 932, 10, 'Гранд-тур с круизом по Нилу, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(118, 1932, 932, 10, 'Гранд-тур с круизом по Нилу и отдыхом в Хургаде, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(119, 1918, 932, 10, 'Открываем Каир, Абу-Симбел и Круиз по Нилу, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(120, 1870, 932, 10, 'Открываем Каир, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(121, 1875, 932, 10, 'Открываем Каир и Александрию, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(122, 1891, 932, 10, 'Открываем Каир и Круиз по Нилу, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(123, 1880, 932, 10, 'Открываем Каир и отдых в Хургаде, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(124, 1881, 932, 10, 'Открываем Каир и отдых в Шарм-эль-Шейхе, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(125, 2146, 932, 10, 'Хургада (J), ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(126, 1337, 932, 10, 'Хургада (T), ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(127, 2161, 932, 10, 'Шарм-эль-Шейх (J), ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(128, 1346, 932, 10, 'Шарм-эль-Шейх (T), ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(129, 1467, 932, 33, 'Большое Индийское Путешествие, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(130, 3730, 932, 33, 'Восьмое Чудо Света: тур к Тадж Махалу, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(131, 832, 932, 33, 'Гоа. Прямой рейс а/к Аэрофлот, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(132, 3405, 932, 33, 'Дели, Джйпур, Агра, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(133, 1464, 932, 33, 'Золотой Треугольник, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(134, 3152, 932, 33, 'Золотой Треугольник и Варанаси, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(135, 1479, 932, 33, 'Золотой треугольник и отдых в Гоа, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(136, 3958, 932, 33, 'Золотой Треугольник и Праздник Огней Дивали, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(137, 1465, 932, 33, 'Золотой Треугольник + Кхаджурахо \"на поезде\", ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(138, 3658, 932, 33, 'Золотой Треугольник + Кхаджурахо \"на самолёте\", ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(139, 3203, 932, 33, 'Йога и Медитация, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(140, 1471, 932, 33, 'Классическая Индия, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(141, 1475, 932, 33, 'Классическая Индия через Читракут, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(142, 1466, 932, 33, 'Красочный Раджастхан, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(143, 3181, 932, 33, 'Невероятный Кашмир, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(144, 3170, 932, 33, 'Путешествие в Гималаи, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(145, 3444, 932, 94, 'Звезды Персидского залива, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(146, 3120, 932, 94, 'Золотое кольцо Персии, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(147, 4020, 932, 94, 'Золотое кольцо Персии. Тур на Новый Год, ЕКб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(148, 3049, 932, 48, 'Отдых на побережье Одиссея, Екб', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(149, 3799, 932, 31, 'Две столицы: Пекин - Шанхай - Пекин (SVX-GDS)', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(150, 3790, 932, 31, 'Древние столицы: Пекин - Сиань - Лоян - Пекин (SVX-GDS)', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(151, 3763, 932, 31, 'Знакомство со столицей (SVX-GDS)', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(152, 3776, 932, 31, 'Китайский Аватар: Пекин - Чжанцзяцзе - Пекин (SVX-GDS)', '2024-09-13 12:35:15', '2024-09-13 12:35:15'),
(153, 3744, 932, 31, 'Классический Пекин (SVX-GDS)', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(154, 2657, 932, 31, 'Отдых на о. Хайнань (SVX-GDS Аэрофлот)', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(155, 2658, 932, 31, 'Отдых на о. Хайнань (SVX-GDS Аэрофлот) (E)', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(156, 2284, 932, 31, 'Отдых на о. Хайнань (SVX-GDS прямой)', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(157, 2289, 932, 31, 'Отдых на о. Хайнань (SVX-GDS прямой) (E)', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(158, 3809, 932, 31, 'Пекин - Сиань - Чжанцзяцзе - Пекин (SVX-GDS)', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(159, 3819, 932, 31, 'Пекин – Шанхай – Сучжоу – Ханчжоу – Пекин (SVX-GDS)', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(160, 1769, 932, 31, 'Тур в Пекин (SVX-GDS) (E)', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(161, 1746, 932, 23, 'Отдых на Варадеро: Динамика, ЕКб', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(162, 1485, 932, 23, 'Отдых на Варадеро, ЕКб', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(163, 1722, 932, 54, 'Маврикий, ЕКб', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(164, 3548, 932, 41, 'Куала-Лумпур (2н.) + Лангкави + Сингапур (2н.), ЕКб', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(165, 4032, 932, 50, 'Мальдивы SPO_1 (SVX-GDS)', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(166, 847, 932, 50, 'Мальдивы SPO_1 (SVX-GDS +1)', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(167, 3211, 932, 50, 'Мальдивы SPO_2 (SVX-GDS +1)', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(168, 3215, 932, 106, 'Загадочный Катманду и Гималаи, ЕКб', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(169, 3223, 932, 106, 'Золотой треугольник Непала, ЕКб', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(170, 3219, 932, 106, 'Открывая Непал, ЕКб', '2024-09-13 12:35:16', '2024-09-13 12:35:16'),
(171, 763, 932, 13, 'ОАЭ / прямой перелёт в Дубай, ЕКБ: Динамика', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(172, 3257, 932, 13, 'ОАЭ / прямой перелёт в Шарджу, ЕКБ: Динамика', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(173, 4222, 932, 2, 'Week End Москва, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(174, 3304, 932, 2, 'Азбука Экскурсий, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(175, 3312, 932, 2, 'В Калининград в любой день, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(176, 3321, 932, 2, 'В Тридевятом Царстве, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(177, 4289, 932, 2, 'Гранд тур по Нижегородской области, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(178, 801, 932, 2, 'КавМинВоды: Динамика, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(179, 837, 932, 2, 'Казань: Динамика, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(180, 791, 932, 2, 'Калининград: Динамика, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(181, 4230, 932, 2, 'Классическая Москва, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(182, 3358, 932, 2, 'Королевские выходные, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(183, 821, 932, 2, 'Красная Поляна: Динамика, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(184, 4178, 932, 2, 'Москва: Динамика, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(185, 4238, 932, 2, 'Москва Макси, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(186, 4246, 932, 2, 'Мос Тус Москва, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(187, 3337, 932, 2, 'На самом западе, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(188, 4214, 932, 2, 'Новогодние каникулы в Кисловодске, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(189, 4198, 932, 2, 'Новогодние чудеса Кавказа, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(190, 4206, 932, 2, 'Новый Год в Кисловодске, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(191, 811, 932, 2, 'Отдых в Сочи: Динамика, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(192, 4192, 932, 2, 'от Кавминвод до Дагестана, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(193, 3675, 932, 2, 'Путешествие по Вологодской земле на автобусе, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(194, 3670, 932, 2, 'Санкт-Петербург, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(195, 3704, 932, 2, 'Санкт-Петербург и летние хиты Карелии, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(196, 1450, 932, 78, 'Отдых на Сейшелах, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(197, 1668, 932, 78, 'Сейшелы, отдых на о.Маэ: Динамика, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(198, 1702, 932, 87, 'Тур в Сингапур, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(199, 1708, 932, 87, 'Тур на о.Сентоса, ЕКб', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(200, 3233, 932, 55, 'Любляна, Екатеринбург', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(201, 3139, 932, 55, 'Отдых на озерах Словении, Екатеринбург', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(202, 3085, 932, 55, 'Отдых на побережье Словении, Екатеринбург', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(203, 3380, 932, 55, 'Термальные курорты Словении, Екатеринбург', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(204, 1687, 932, 19, 'Као Лак (W), Екб [+1]', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(205, 1686, 932, 19, 'Као Лак (W), перелет Flydubai/Emirates, Екб [+0]', '2024-09-13 12:35:17', '2024-09-13 12:35:17'),
(206, 1590, 932, 19, 'Ко Чанг (W), а/п Flydubai/Emirates, Екб [+0]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(207, 1591, 932, 19, 'Ко Чанг (W), Екб [+1]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(208, 3631, 932, 19, 'Отдых в Као Лаке, Екб [+1]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(209, 3637, 932, 19, 'Отдых в Као Лаке, перелет Flydubai/Emirates, Екб [+0]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(210, 1514, 932, 19, 'Отдых в Ко Чанге, а/п Flydubai/Emirates, Екб [+0]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(211, 1513, 932, 19, 'Отдых в Ко Чанге, Екб [+1]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(212, 1510, 932, 19, 'Отдых в Паттайе, а/п Flydubai/Emirates, Екб [+0]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(213, 1509, 932, 19, 'Отдых в Паттайе, Екб [+1]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(214, 3885, 932, 19, 'Отдых в Хуахине, а/п Flydubai/Emirates, Екб [+0]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(215, 3889, 932, 19, 'Отдых в Хуахине, Екб [+1]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(216, 1507, 932, 19, 'Отдых на Пхукете, Екб [+1]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(217, 1508, 932, 19, 'Отдых на Пхукете, перелет Flydubai/Emirates, Екб [+0]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(218, 2123, 932, 19, 'Отдых на Самуи, а/п Flydubai/Emirates, Екб [+0]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(219, 2124, 932, 19, 'Отдых на Самуи, Екб [+1]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(220, 1594, 932, 19, 'Паттайя (W), а/п Flydubai/Emirates, обзорная экскурсия в подарок, Екб [+0]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(221, 1595, 932, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Екб [+1]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(222, 1600, 932, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Екб [+1]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(223, 1599, 932, 19, 'Пхукет (W), Перелет Flydubai/Emirates, Групповой трансфер и обзорная экскурсия в подарок, Екб [+0]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(224, 2100, 932, 19, 'Самуи (W), а/п Flydubai/Emirates, Екб [+0]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(225, 2101, 932, 19, 'Самуи (W), Екб [+1]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(226, 3860, 932, 19, 'Хуахин (W), а/п Flydubai/Emirates, Екб [+0]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(227, 3847, 932, 19, 'Хуахин (W), Екб [+1]', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(228, 2610, 932, 9, 'По следам великих цивилизаций, ЕКб', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(229, 1317, 932, 9, 'Тур в Анталию (A), ЕКб', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(230, 197, 932, 9, 'Тур в Анталию (C), ЕКб', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(231, 966, 932, 9, 'Тур в Анталию (P), ЕКб', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(232, 2260, 932, 9, 'Тур в Анталию (R), ЕКб', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(233, 936, 932, 9, 'Тур в Даламан, ЕКб', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(234, 927, 932, 9, 'Тур в Измир, ЕКб', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(235, 1653, 932, 9, 'Тур в Стамбул (A), ЕКб', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(236, 312, 932, 9, 'Тур в Стамбул (P), ЕКб', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(237, 1777, 932, 9, 'Тур в Стамбул (Q), ЕКб', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(238, 757, 932, 52, 'Шри-Ланка (A), отель с 1-го дня, Екб', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(239, 760, 932, 52, 'Шри-Ланка (A), отель со 2-го дня, Екб', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(240, 2585, 932, 52, 'Шри-Ланка (E), отель с 1-го дня, Екб', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(241, 2586, 932, 52, 'Шри-Ланка (E), отель со 2-го дня, Екб', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(242, 1392, 400, 67, 'Отдых в Абхазии: Динамика NEW, Иваново', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(243, 1035, 400, 67, 'Отдых в Абхазии: Динамика, Иваново', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(244, 1077, 400, 2, 'Красная Поляна: Динамика, Иваново', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(245, 990, 400, 2, 'Отдых в Сочи: Динамика, Иваново', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(246, 1393, 146, 67, 'Отдых в Абхазии: Динамика NEW, Ижевск', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(247, 1036, 146, 67, 'Отдых в Абхазии: Динамика, Ижевск', '2024-09-13 12:35:18', '2024-09-13 12:35:18'),
(248, 1078, 146, 2, 'Красная Поляна: Динамика, Ижевск', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(249, 991, 146, 2, 'Отдых в Сочи: Динамика, Ижевск', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(250, 1677, 146, 19, 'Као Лак (W), Ижевск', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(251, 1575, 146, 19, 'Ко Чанг (W), Ижевск [+1]', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(252, 3653, 146, 19, 'Отдых в Као Лаке, Ижевск [+1]', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(253, 1557, 146, 19, 'Отдых в Ко Чанге, Ижевск [+1]', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(254, 1551, 146, 19, 'Отдых в Паттайе, Ижевск [+1]', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(255, 3911, 146, 19, 'Отдых в Хуахине, Ижевск [+1]', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(256, 1544, 146, 19, 'Отдых на Пхукете, Ижевск', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(257, 2133, 146, 19, 'Отдых на Самуи, Ижевск [+1]', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(258, 1581, 146, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Ижевск [+1]', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(259, 1608, 146, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Ижевск', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(260, 2103, 146, 19, 'Самуи (W), Ижевск [+1]', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(261, 3852, 146, 19, 'Хуахин (W), Ижевск [+1]', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(262, 1379, 423, 67, 'Отдых в Абхазии: Динамика NEW, Иркутск', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(263, 873, 423, 67, 'Отдых в Абхазии: Динамика, Иркутск', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(264, 3913, 423, 33, 'Гоа. а/к Аэрофлот, Иркутск', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(265, 3802, 423, 31, 'Две столицы: Пекин - Шанхай - Пекин (IKT-GDS)', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(266, 3785, 423, 31, 'Древние столицы: Пекин - Сиань - Лоян - Пекин (IKT-GDS)', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(267, 3765, 423, 31, 'Знакомство со столицей (IKT-GDS)', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(268, 3771, 423, 31, 'Китайский Аватар: Пекин - Чжанцзяцзе - Пекин (IKT-GDS)', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(269, 3746, 423, 31, 'Классический Пекин (IKT-GDS)', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(270, 3557, 423, 31, 'Отдых на о. Хайнань (IKT-GDS)', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(271, 1764, 423, 31, 'Отдых на о. Хайнань (IKT-GDS) (E)', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(272, 3812, 423, 31, 'Пекин - Сиань - Чжанцзяцзе - Пекин (IKT-GDS)', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(273, 3822, 423, 31, 'Пекин – Шанхай – Сучжоу – Ханчжоу – Пекин (IKT-GDS)', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(274, 1767, 423, 31, 'Тур в Пекин (IKT-GDS) (E)', '2024-09-13 12:35:19', '2024-09-13 12:35:19'),
(275, 854, 423, 50, 'Мальдивы SPO_1 (IKT-GDS)', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(276, 3200, 423, 50, 'Мальдивы SPO_2 (IKT-GDS)', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(277, 808, 423, 2, 'КавМинВоды: Динамика, Иркутск', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(278, 841, 423, 2, 'Казань: Динамика, Иркутск', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(279, 797, 423, 2, 'Калининград: Динамика, Иркутск', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(280, 828, 423, 2, 'Красная Поляна: Динамика, Иркутск', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(281, 818, 423, 2, 'Отдых в Сочи: Динамика, Иркутск', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(282, 2820, 423, 19, 'Као Лак (W), Иркутск [+0]', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(283, 1583, 423, 19, 'Ко Чанг (W), Иркутск [+0]', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(284, 3644, 423, 19, 'Отдых в Као Лаке, Иркутск [+0]', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(285, 1369, 423, 19, 'Отдых в Ко Чанге, Иркутск [+0]', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(286, 1372, 423, 19, 'Отдых в Паттайе, Иркутск [+0]', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(287, 3896, 423, 19, 'Отдых в Хуахине, Иркутск [+0]', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(288, 2819, 423, 19, 'Отдых на Пхукете, Иркутск [+0]', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(289, 2138, 423, 19, 'Отдых на Самуи, Иркутск [+0]', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(290, 1586, 423, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Иркутск [+0]', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(291, 2818, 423, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Иркутск [+0]', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(292, 2104, 423, 19, 'Самуи (W), Иркутск [+0]', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(293, 2745, 423, 19, 'Хуахин (W), Иркутск [+0]', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(294, 1380, 128, 67, 'Отдых в Абхазии: Динамика NEW, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(295, 867, 128, 67, 'Отдых в Абхазии: Динамика, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(296, 721, 128, 36, 'Аппетитный Азербайджан, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(297, 719, 128, 36, 'Баку в итальянском стиле, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(298, 720, 128, 36, 'БАКУ - город искусств, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(299, 2764, 128, 36, 'Викинги в Азербайджане!, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(300, 2751, 128, 36, 'Гастро-тур в Азербайджан, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(301, 2698, 128, 36, 'Горы Кавказа, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(302, 4523, 128, 36, 'На выходные в Баку, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(303, 2775, 128, 36, 'Нефть Азербайджана и Нобелевская премия, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(304, 4373, 128, 36, 'Новогодняя сказка в Баку - 29.12-02.01, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(305, 4397, 128, 36, 'Новогодняя сказка в Баку - 30.12-02.01, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(306, 4424, 128, 36, 'Новогодняя сказка в Баку - 30.12-03.01, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(307, 4452, 128, 36, 'Новогодняя сказка в Баку - 31.12-03.01, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(308, 2379, 128, 36, 'Отели Баку (Int.), Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(309, 716, 128, 36, 'Открой для себя Азербайджан, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(310, 715, 128, 36, 'Открой для себя Баку, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(311, 2715, 128, 36, 'Путешествие на Кавказ по местам А. Дюма, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(312, 2730, 128, 36, 'Религиозные святыни Баку, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(313, 4301, 128, 36, 'Рождественские каникулы в Баку - 02.01-05.01, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(314, 4325, 128, 36, 'Рождественские каникулы в Баку - 02.01-06.01, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(315, 4339, 128, 36, 'Рождественские каникулы в Баку - 02.01-07.01, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(316, 4355, 128, 36, 'Рождественские каникулы в Баку - 03.01-07.01, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(317, 2860, 128, 36, 'Тур на Формулу 1, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(318, 714, 128, 36, 'Эконом тур - Открой для себя Баку, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(319, 2682, 128, 36, 'Экскурсионный тур Баку-Губа, Казань', '2024-09-13 12:35:20', '2024-09-13 12:35:20'),
(320, 2892, 128, 6, 'Белорусская Кругосветка, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(321, 2872, 128, 6, 'Белорусский Калейдоскоп, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(322, 3095, 128, 6, 'Все дороги ведут в Мир, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(323, 3090, 128, 6, 'Гомельская классика, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(324, 3100, 128, 6, 'Королевский Гродно, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(325, 2956, 128, 6, 'Курорты Беларуси: Динамика, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(326, 3492, 128, 6, 'Курорты Беларуси (К), Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(327, 3027, 128, 6, 'Минск: Динамика, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(328, 2898, 128, 6, 'Тысячелетний Брест, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(329, 2531, 128, 45, 'Будапешт, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(330, 2595, 128, 45, 'Две столицы Европы: Будапешт- Вена, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(331, 2603, 128, 45, 'Истина в вине и здоровье, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(332, 2533, 128, 45, 'Термальные курорты Венгрии, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(333, 2599, 128, 45, 'Три столицы Европы: Будапешт- Братислава-Вена, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(334, 4077, 128, 43, 'Нячанг + Хошимин 1 ночь (A): Аэрофлот до Хошимина, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(335, 3561, 128, 43, 'Нячанг + Хошимин 1 ночь (V): Аэрофлот до Хошимина, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(336, 4040, 128, 43, 'Тур в Фантхьет (A): Аэрофлот до Хошимина, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(337, 4106, 128, 43, 'Тур в Хошимин (A): Аэрофлот, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(338, 3606, 128, 43, 'Тур в Хошимин (V): Аэрофлот, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(339, 3573, 128, 43, 'Тур на Фукуок (V), Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(340, 4094, 128, 43, 'Фукуок + Хошимин 1 ночь (A): Аэрофлот до Хошимина, Казань', '2024-09-13 12:35:21', '2024-09-13 12:35:21'),
(341, 2324, 128, 29, 'Тбилиси, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(342, 4153, 128, 10, 'Гранд-тур с круизом по Нилу и отдыхом в Хургаде, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(343, 4148, 128, 10, 'Гранд-тур с круизом по Нилу, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(344, 4143, 128, 10, 'Открываем Каир, Абу-Симбел и Круиз по Нилу, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(345, 4123, 128, 10, 'Открываем Каир и Александрию, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(346, 4138, 128, 10, 'Открываем Каир и Круиз по Нилу, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(347, 4128, 128, 10, 'Открываем Каир и отдых в Хургаде, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(348, 4133, 128, 10, 'Открываем Каир и отдых в Шарм-эль-Шейхе, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(349, 4118, 128, 10, 'Открываем Каир, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(350, 2148, 128, 10, 'Хургада (J), Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(351, 1338, 128, 10, 'Хургада (T), Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(352, 2163, 128, 10, 'Шарм-эль-Шейх (J), Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(353, 1347, 128, 10, 'Шарм-эль-Шейх (T), Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(354, 3715, 128, 33, 'Большое Индийское Путешествие, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(355, 3731, 128, 33, 'Восьмое Чудо Света: тур к Тадж Махалу, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(356, 834, 128, 33, 'Гоа. а/к Аэрофлот, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(357, 3408, 128, 33, 'Дели, Джйпур, Агра, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(358, 3153, 128, 33, 'Золотой Треугольник и Варанаси, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(359, 3690, 128, 33, 'Золотой треугольник и отдых в Гоа, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(360, 3959, 128, 33, 'Золотой Треугольник и Праздник Огней Дивали, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(361, 3127, 128, 33, 'Золотой Треугольник, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(362, 3141, 128, 33, 'Золотой Треугольник + Кхаджурахо \"на поезде\", Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(363, 3659, 128, 33, 'Золотой Треугольник + Кхаджурахо \"на самолёте\", Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(364, 3204, 128, 33, 'Йога и Медитация, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(365, 3160, 128, 33, 'Классическая Индия, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(366, 3681, 128, 33, 'Классическая Индия через Читракут, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(367, 3708, 128, 33, 'Красочный Раджастхан, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(368, 3182, 128, 33, 'Невероятный Кашмир, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(369, 1640, 128, 33, 'Отдых в Керале: а/п Тривандрум, Казань [ NO ]', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(370, 3171, 128, 33, 'Путешествие в Гималаи, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(371, 3446, 128, 94, 'Звезды Персидского залива, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(372, 3122, 128, 94, 'Золотое кольцо Персии, Казань', '2024-09-13 12:35:22', '2024-09-13 12:35:22'),
(373, 2620, 128, 48, 'Отдых на о. Искья, Казань', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(374, 3050, 128, 48, 'Отдых на побережье Одиссея, Казань', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(375, 2825, 128, 48, 'Отдых на Сицилии (а/п Катании), Казань', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(376, 2828, 128, 48, 'Отдых на Сицилии (а/п Палермо), Казань', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(377, 3798, 128, 31, 'Две столицы: Пекин - Шанхай - Пекин (KZN-GDS)', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(378, 3789, 128, 31, 'Древние столицы: Пекин - Сиань - Лоян - Пекин (KZN-GDS)', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(379, 3761, 128, 31, 'Знакомство со столицей (KZN-GDS)', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(380, 3775, 128, 31, 'Китайский Аватар: Пекин - Чжанцзяцзе - Пекин (KZN-GDS)', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(381, 3743, 128, 31, 'Классический Пекин (KZN-GDS)', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(382, 2655, 128, 31, 'Отдых на о. Хайнань (KZN-GDS Аэрофлот)', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(383, 2656, 128, 31, 'Отдых на о. Хайнань (KZN-GDS Аэрофлот) (E)', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(384, 3808, 128, 31, 'Пекин - Сиань - Чжанцзяцзе - Пекин (KZN-GDS)', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(385, 3818, 128, 31, 'Пекин – Шанхай – Сучжоу – Ханчжоу – Пекин (KZN-GDS)', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(386, 1770, 128, 31, 'Тур в Пекин (KZN-GDS) (E)', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(387, 1723, 128, 54, 'Маврикий, Казань', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(388, 3547, 128, 41, 'Куала-Лумпур (2н.) + Лангкави + Сингапур (2н.), Казань', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(389, 4031, 128, 50, 'Мальдивы SPO_1 (KZN-GDS)', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(390, 848, 128, 50, 'Мальдивы SPO_1 (KZN-GDS +1)', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(391, 4033, 128, 50, 'Мальдивы SPO_2 (KZN-GDS)', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(392, 3199, 128, 50, 'Мальдивы SPO_2 (KZN-GDS +1)', '2024-09-13 12:35:23', '2024-09-13 12:35:23'),
(393, 764, 128, 13, 'ОАЭ / прямой перелёт в Дубай, Казань: Динамика', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(394, 3255, 128, 13, 'ОАЭ / прямой перелёт в Шарджу, Казань: Динамика', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(395, 4224, 128, 2, 'Week End Москва, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(396, 3302, 128, 2, 'Азбука Экскурсий, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(397, 4025, 128, 2, 'Астрахань (конструктор), Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(398, 3310, 128, 2, 'В Калининград в любой день, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(399, 3319, 128, 2, 'В Тридевятом Царстве, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(400, 3939, 128, 2, 'Выходные в Красноярске, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(401, 3933, 128, 2, 'Гастрономический Красноярск: Вкусы Енисейской Сибири, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(402, 4292, 128, 2, 'Гранд тур по Нижегородской области, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(403, 802, 128, 2, 'КавМинВоды: Динамика, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(404, 792, 128, 2, 'Калининград: Динамика, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(405, 4232, 128, 2, 'Классическая Москва, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(406, 3356, 128, 2, 'Королевские выходные, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(407, 822, 128, 2, 'Красная Поляна: Динамика, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(408, 4174, 128, 2, 'Москва: Динамика, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(409, 4240, 128, 2, 'Москва Макси, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(410, 4248, 128, 2, 'Мос Тус Москва, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(411, 3335, 128, 2, 'На самом западе, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(412, 4215, 128, 2, 'Новогодние каникулы в Кисловодске, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(413, 4199, 128, 2, 'Новогодние чудеса Кавказа, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(414, 4207, 128, 2, 'Новый Год в Кисловодске, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(415, 812, 128, 2, 'Отдых в Сочи: Динамика, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(416, 4193, 128, 2, 'от Кавминвод до Дагестана, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(417, 3679, 128, 2, 'Путешествие по Вологодской земле на автобусе, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(418, 3702, 128, 2, 'Санкт-Петербург и летние хиты Карелии, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(419, 3668, 128, 2, 'Санкт-Петербург, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(420, 1449, 128, 78, 'Отдых на Сейшелах, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(421, 1669, 128, 78, 'Сейшелы, отдых на о.Маэ: Динамика, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(422, 1703, 128, 87, 'Тур в Сингапур, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(423, 1710, 128, 87, 'Тур на о.Сентоса, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(424, 3234, 128, 55, 'Любляна, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(425, 3138, 128, 55, 'Отдых на озерах Словении, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(426, 3084, 128, 55, 'Отдых на побережье Словении, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(427, 3379, 128, 55, 'Термальные курорты Словении, Казань', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(428, 1685, 128, 19, 'Као Лак (W), Казань [+1]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(429, 1684, 128, 19, 'Као Лак (W), перелет Flydubai/Emirates, Казань [+0]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(430, 1592, 128, 19, 'Ко Чанг (W), а/п Flydubai/Emirates, Казань [+0]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(431, 1593, 128, 19, 'Ко Чанг (W), Казань [+1]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(432, 3629, 128, 19, 'Отдых в Као Лаке, Казань [+1]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(433, 3638, 128, 19, 'Отдых в Као Лаке, перелет Flydubai/Emirates, Казань [+0]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(434, 1516, 128, 19, 'Отдых в Ко Чанге, а/п Flydubai/Emirates, Казань [+0]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(435, 1515, 128, 19, 'Отдых в Ко Чанге, Казань [+1]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(436, 1512, 128, 19, 'Отдых в Паттайе, а/п Flydubai/Emirates, Казань [+0]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(437, 1511, 128, 19, 'Отдых в Паттайе, Казань [+1]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(438, 3886, 128, 19, 'Отдых в Хуахине, а/п Flydubai/Emirates, Казань [+0]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(439, 3891, 128, 19, 'Отдых в Хуахине, Казань [+1]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(440, 1535, 128, 19, 'Отдых на Пхукете, Казань [+1]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(441, 1534, 128, 19, 'Отдых на Пхукете, перелет Flydubai/Emirates, Казань [+0]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(442, 2139, 128, 19, 'Отдых на Самуи, а/п Flydubai/Emirates, Казань [+0]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(443, 2140, 128, 19, 'Отдых на Самуи, Казань [+1]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(444, 1596, 128, 19, 'Паттайя (W), а/п Flydubai/Emirates, обзорная экскурсия в подарок, Казань [+0]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(445, 1597, 128, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Казань [+1]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(446, 1602, 128, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Казань [+1]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(447, 1601, 128, 19, 'Пхукет (W), Перелет Flydubai/Emirates, Групповой трансфер и обзорная экскурсия в подарок, Казань [+0]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(448, 2106, 128, 19, 'Самуи (W), а/п Flydubai/Emirates, Казань [+0]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(449, 2107, 128, 19, 'Самуи (W), Казань [+1]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(450, 3861, 128, 19, 'Хуахин (W), а/п Flydubai/Emirates, Казань [+0]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(451, 3846, 128, 19, 'Хуахин (W), Казань [+1]', '2024-09-13 12:35:24', '2024-09-13 12:35:24'),
(452, 2611, 128, 9, 'По следам великих цивилизаций, Казань', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(453, 1318, 128, 9, 'Тур в Анталию (A), Казань', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(454, 199, 128, 9, 'Тур в Анталию (C), Казань', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(455, 967, 128, 9, 'Тур в Анталию (P), Казань', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(456, 2262, 128, 9, 'Тур в Анталию (R), Казань', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(457, 934, 128, 9, 'Тур в Даламан, Казань', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(458, 925, 128, 9, 'Тур в Измир, Казань', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(459, 1649, 128, 9, 'Тур в Стамбул (A), Казань', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(460, 308, 128, 9, 'Тур в Стамбул (P), Казань', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(461, 1778, 128, 9, 'Тур в Стамбул (Q), Казань', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(462, 1644, 128, 52, 'Шри-Ланка (A), отель со 2-го дня, Казань', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(463, 2587, 128, 52, 'Шри-Ланка (E), отель со 2-го дня, Казань', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(464, 2957, 443, 6, 'Курорты Беларуси: Динамика, Калининград', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(465, 3028, 443, 6, 'Минск: Динамика, Калининград', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(466, 4223, 443, 2, 'Week End Москва, Калининград', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(467, 4231, 443, 2, 'Классическая Москва, Калининград', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(468, 4173, 443, 2, 'Москва: Динамика, Калининград', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(469, 4239, 443, 2, 'Москва Макси, Калининград', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(470, 4247, 443, 2, 'Мос Тус Москва, Калининград', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(471, 4216, 443, 2, 'Новогодние каникулы в Кисловодске, Калининград', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(472, 4200, 443, 2, 'Новогодние чудеса Кавказа, Калининград', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(473, 4208, 443, 2, 'Новый Год в Кисловодске, Калининград', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(474, 4194, 443, 2, 'от Кавминвод до Дагестана, Калининград', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(475, 3680, 443, 2, 'Путешествие по Вологодской земле на автобусе, Калининград', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(476, 3703, 443, 2, 'Санкт-Петербург и летние хиты Карелии, Калининград', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(477, 3667, 443, 2, 'Санкт-Петербург, Калининград', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(478, 2960, 466, 6, 'Курорты Беларуси: Динамика, Калуга', '2024-09-13 12:35:25', '2024-09-13 12:35:25');
INSERT INTO `samotour_tours` (`id`, `id_tour`, `id_city`, `id_country`, `name`, `created_at`, `updated_at`) VALUES
(479, 3031, 466, 6, 'Минск: Динамика, Калуга', '2024-09-13 12:35:25', '2024-09-13 12:35:25'),
(480, 4531, 466, 9, 'Тур в Стамбул (A), Калуга', '2024-09-13 12:35:26', '2024-09-13 12:35:26'),
(481, 4532, 466, 9, 'Тур в Стамбул (P), Калуга', '2024-09-13 12:35:26', '2024-09-13 12:35:26'),
(482, 4533, 466, 9, 'Тур в Стамбул (Q), Калуга', '2024-09-13 12:35:26', '2024-09-13 12:35:26'),
(483, 1394, 492, 67, 'Отдых в Абхазии: Динамика NEW, Кемерово', '2024-09-13 12:35:26', '2024-09-13 12:35:26'),
(484, 1037, 492, 67, 'Отдых в Абхазии: Динамика, Кемерово', '2024-09-13 12:35:26', '2024-09-13 12:35:26'),
(485, 1079, 492, 2, 'Красная Поляна: Динамика, Кемерово', '2024-09-13 12:35:26', '2024-09-13 12:35:26'),
(486, 4180, 492, 2, 'Москва: Динамика, Кемерово', '2024-09-13 12:35:26', '2024-09-13 12:35:26'),
(487, 992, 492, 2, 'Отдых в Сочи: Динамика, Кемерово', '2024-09-13 12:35:26', '2024-09-13 12:35:26'),
(488, 1395, 510, 67, 'Отдых в Абхазии: Динамика NEW, Киров', '2024-09-13 12:35:26', '2024-09-13 12:35:26'),
(489, 1038, 510, 67, 'Отдых в Абхазии: Динамика, Киров', '2024-09-13 12:35:26', '2024-09-13 12:35:26'),
(490, 1080, 510, 2, 'Красная Поляна: Динамика, Киров', '2024-09-13 12:35:26', '2024-09-13 12:35:26'),
(491, 994, 510, 2, 'Отдых в Сочи: Динамика, Киров', '2024-09-13 12:35:26', '2024-09-13 12:35:26'),
(492, 1381, 221, 67, 'Отдых в Абхазии: Динамика NEW, Красноярск', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(493, 874, 221, 67, 'Отдых в Абхазии: Динамика, Красноярск', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(494, 3912, 221, 33, 'Гоа. а/к Аэрофлот, Красноярск', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(495, 3549, 221, 31, 'Отдых на о. Хайнань прямой перелет (KJA-GDS)', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(496, 3550, 221, 31, 'Отдых на о. Хайнань прямой перелет (KJA-GDS) (E)', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(497, 855, 221, 50, 'Мальдивы SPO_1 (KJA-GDS)', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(498, 809, 221, 2, 'КавМинВоды: Динамика, Красноярск', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(499, 842, 221, 2, 'Казань: Динамика, Красноярск', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(500, 798, 221, 2, 'Калининград: Динамика, Красноярск', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(501, 829, 221, 2, 'Красная Поляна: Динамика, Красноярск', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(502, 819, 221, 2, 'Отдых в Сочи: Динамика, Красноярск', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(503, 2054, 221, 19, 'Као Лак (W), Красноярск [+0]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(504, 2055, 221, 19, 'Као Лак (W), Красноярск [+1]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(505, 1584, 221, 19, 'Ко Чанг (W), Красноярск [+0]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(506, 3646, 221, 19, 'Отдых в Као Лаке, Красноярск [+0]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(507, 3645, 221, 19, 'Отдых в Као Лаке, Красноярск [+1]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(508, 1371, 221, 19, 'Отдых в Паттайе, Красноярск [+0]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(509, 3897, 221, 19, 'Отдых в Хуахине, Красноярск [+0]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(510, 2050, 221, 19, 'Отдых на Пхукете, Красноярск [+0]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(511, 2051, 221, 19, 'Отдых на Пхукете, Красноярск [+1]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(512, 2137, 221, 19, 'Отдых на Самуи, Красноярск [+0]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(513, 1588, 221, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Красноярск [+0]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(514, 2052, 221, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Красноярск [+0]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(515, 2053, 221, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Красноярск [+1]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(516, 2105, 221, 19, 'Самуи (W), Красноярск [+0]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(517, 2744, 221, 19, 'Хуахин (W), Красноярск [+0]', '2024-09-13 12:35:27', '2024-09-13 12:35:27'),
(518, 1396, 539, 67, 'Отдых в Абхазии: Динамика NEW, Курган', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(519, 1039, 539, 67, 'Отдых в Абхазии: Динамика, Курган', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(520, 1082, 539, 2, 'Красная Поляна: Динамика, Курган', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(521, 995, 539, 2, 'Отдых в Сочи: Динамика, Курган', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(522, 1397, 42, 67, 'Отдых в Абхазии: Динамика NEW, Махачкала', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(523, 1040, 42, 67, 'Отдых в Абхазии: Динамика, Махачкала', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(524, 2508, 42, 36, 'Аппетитный Азербайджан, Махачкала', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(525, 2380, 42, 36, 'Отели Баку (Int.), Махачкала', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(526, 2861, 42, 36, 'Тур на Формулу 1, Махачкала', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(527, 2684, 42, 36, 'Экскурсионный тур Баку-Губа, Махачкала', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(528, 1083, 42, 2, 'Красная Поляна: Динамика, Махачкала', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(529, 996, 42, 2, 'Отдых в Сочи: Динамика, Махачкала', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(530, 3626, 42, 19, 'Као Лак (W), Махачкала [+1]', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(531, 3826, 42, 19, 'Ко Чанг (W), Махачкала [+1]', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(532, 3634, 42, 19, 'Отдых в Као Лаке, Махачкала [+1]', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(533, 3874, 42, 19, 'Отдых в Ко Чанге, Махачкала [+1]', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(534, 3867, 42, 19, 'Отдых в Паттайе, Махачкала [+1]', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(535, 3903, 42, 19, 'Отдых в Хуахине, Махачкала [+1]', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(536, 3615, 42, 19, 'Отдых на Пхукете, Махачкала [+1]', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(537, 3879, 42, 19, 'Отдых на Самуи, Махачкала [+1]', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(538, 3834, 42, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Махачкала [+1]', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(539, 3619, 42, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Махачкала [+1]', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(540, 3840, 42, 19, 'Самуи (W), Махачкала [+1]', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(541, 3851, 42, 19, 'Хуахин (W), Махачкала [+1]', '2024-09-13 12:35:28', '2024-09-13 12:35:28'),
(542, 942, 42, 9, 'Тур в Даламан, Махачкала', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(543, 931, 42, 9, 'Тур в Измир, Махачкала', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(544, 1398, 252, 67, 'Отдых в Абхазии: Динамика NEW, Мин.Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(545, 1041, 252, 67, 'Отдых в Абхазии: Динамика, Мин.Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(546, 2509, 252, 36, 'Аппетитный Азербайджан, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(547, 2521, 252, 36, 'Баку в итальянском стиле, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(548, 2767, 252, 36, 'Викинги в Азербайджане!, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(549, 2755, 252, 36, 'Гастро-тур в Азербайджан, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(550, 2702, 252, 36, 'Горы Кавказа, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(551, 2779, 252, 36, 'Нефть Азербайджана и Нобелевская премия, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(552, 4374, 252, 36, 'Новогодняя сказка в Баку - 29.12-02.01, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(553, 4398, 252, 36, 'Новогодняя сказка в Баку - 30.12-02.01, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(554, 4425, 252, 36, 'Новогодняя сказка в Баку - 30.12-03.01, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(555, 4453, 252, 36, 'Новогодняя сказка в Баку - 31.12-03.01, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(556, 2381, 252, 36, 'Отели Баку (Int.), Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(557, 2470, 252, 36, 'Открой для себя Азербайджан, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(558, 2429, 252, 36, 'Открой для себя Баку, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(559, 2719, 252, 36, 'Путешествие на Кавказ по местам А. Дюма, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(560, 2734, 252, 36, 'Религиозные святыни Баку, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(561, 4302, 252, 36, 'Рождественские каникулы в Баку - 02.01-05.01, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(562, 4326, 252, 36, 'Рождественские каникулы в Баку - 02.01-06.01, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(563, 4340, 252, 36, 'Рождественские каникулы в Баку - 02.01-07.01, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(564, 4356, 252, 36, 'Рождественские каникулы в Баку - 03.01-07.01, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(565, 2862, 252, 36, 'Тур на Формулу 1, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(566, 2674, 252, 36, 'Эконом тур - Открой для себя Баку, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(567, 2686, 252, 36, 'Экскурсионный тур Баку-Губа, Мин. Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(568, 2321, 252, 29, 'Тбилиси, Минеральные Воды', '2024-09-13 12:35:29', '2024-09-13 12:35:29'),
(569, 3306, 252, 2, 'Азбука Экскурсий, Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(570, 4026, 252, 2, 'Астрахань (конструктор), Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(571, 3314, 252, 2, 'В Калининград в любой день, Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(572, 3323, 252, 2, 'В Тридевятом Царстве, Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(573, 3360, 252, 2, 'Королевские выходные, Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(574, 1084, 252, 2, 'Красная Поляна: Динамика, Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(575, 3339, 252, 2, 'На самом западе, Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(576, 997, 252, 2, 'Отдых в Сочи: Динамика, Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(577, 3627, 252, 19, 'Као Лак (W), Мин. Воды [+1]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(578, 3624, 252, 19, 'Као Лак (W), перелет Flydubai/Emirates, Мин. Воды [+0]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(579, 3827, 252, 19, 'Ко Чанг (W), а/п Flydubai/Emirates, Мин Воды [+0]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(580, 3829, 252, 19, 'Ко Чанг (W), Мин Воды [+1]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(581, 3636, 252, 19, 'Отдых в Као Лаке, Мин. Воды [+1]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(582, 3639, 252, 19, 'Отдых в Као Лаке, перелет Flydubai/Emirates, Мин. Воды [+0]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(583, 3871, 252, 19, 'Отдых в Ко Чанге, а/п Flydubai/Emirates, Мин Воды [+0]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(584, 3873, 252, 19, 'Отдых в Ко Чанге, Мин Воды [+1]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(585, 3865, 252, 19, 'Отдых в Паттайе, а/п Flydubai/Emirates, Мин Воды [+0]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(586, 3866, 252, 19, 'Отдых в Паттайе, Мин Воды [+1]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(587, 3887, 252, 19, 'Отдых в Хуахине, а/п Flydubai/Emirates, Мин Воды [+0]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(588, 3893, 252, 19, 'Отдых в Хуахине, Мин Воды [+1]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(589, 3616, 252, 19, 'Отдых на Пхукете, Минеральные Воды [+1]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(590, 3617, 252, 19, 'Отдых на Пхукете, перелет Flydubai/Emirates, Мин.Воды [+0]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(591, 3881, 252, 19, 'Отдых на Самуи, а/п Flydubai/Emirates, Мин Воды [+0]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(592, 3882, 252, 19, 'Отдых на Самуи, Мин Воды [+1]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(593, 3832, 252, 19, 'Паттайя (W), а/п Flydubai/Emirates, обзорная экскурсия в подарок, Мин Воды [+0]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(594, 3833, 252, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Мин Воды [+1]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(595, 3620, 252, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Мин. Воды [+1]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(596, 3621, 252, 19, 'Пхукет (W), Перелет Flydubai/Emirates, Групповой трансфер и обзорная экскурсия в подарок, Мин. Воды [+0]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(597, 3837, 252, 19, 'Самуи (W), а/п Flydubai/Emirates, Мин Воды [+0]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(598, 3838, 252, 19, 'Самуи (W), Мин Воды [+1]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(599, 3862, 252, 19, 'Хуахин (W), а/п Flydubai/Emirates, Мин Воды [+0]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(600, 3859, 252, 19, 'Хуахин (W), Мин Воды [+1]', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(601, 2614, 252, 9, 'По следам великих цивилизаций, Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(602, 1320, 252, 9, 'Тур в Анталию (A), Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(603, 269, 252, 9, 'Тур в Анталию (C), Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(604, 969, 252, 9, 'Тур в Анталию (P), Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(605, 2267, 252, 9, 'Тур в Анталию (R), Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(606, 941, 252, 9, 'Тур в Даламан, Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(607, 930, 252, 9, 'Тур в Измир, Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(608, 1656, 252, 9, 'Тур в Стамбул (A), Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(609, 885, 252, 9, 'Тур в Стамбул (P), Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(610, 1784, 252, 9, 'Тур в Стамбул (Q), Мин.Воды', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(611, 3501, 2, 67, 'Все вкусы Абхазии, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(612, 3495, 2, 67, 'Легенды Самурзакана, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(613, 1376, 2, 67, 'Отдых в Абхазии: Динамика NEW, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(614, 201, 2, 67, 'Отдых в Абхазии: Динамика, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(615, 3484, 2, 67, 'Семь Чудес Страны Души, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(616, 674, 2, 36, 'Аппетитный Азербайджан, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(617, 676, 2, 36, 'Баку в итальянском стиле, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(618, 675, 2, 36, 'БАКУ - город искусств, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(619, 677, 2, 36, 'Большой тур по Шелковому Пути, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(620, 2766, 2, 36, 'Викинги в Азербайджане!, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(621, 2754, 2, 36, 'Гастро-тур в Азербайджан, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(622, 2701, 2, 36, 'Горы Кавказа, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(623, 2491, 2, 36, 'На выходные в Баку, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(624, 2778, 2, 36, 'Нефть Азербайджана и Нобелевская премия, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(625, 4367, 2, 36, 'Новогодняя сказка в Баку - 29.12-02.01, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(626, 4391, 2, 36, 'Новогодняя сказка в Баку - 30.12-02.01, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(627, 4418, 2, 36, 'Новогодняя сказка в Баку - 30.12-03.01, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(628, 4443, 2, 36, 'Новогодняя сказка в Баку - 31.12-03.01, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(629, 2372, 2, 36, 'Отели Баку (Int.), МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(630, 2370, 2, 36, 'Отели Нафталан (Int.), МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(631, 3689, 2, 36, 'Отели Нафталан, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(632, 679, 2, 36, 'Открой для себя Азербайджан, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(633, 680, 2, 36, 'Открой для себя Баку, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(634, 2718, 2, 36, 'Путешествие на Кавказ по местам А. Дюма, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(635, 2733, 2, 36, 'Религиозные святыни Баку, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(636, 4319, 2, 36, 'Рождественские каникулы в Баку - 02.01-06.01, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(637, 4333, 2, 36, 'Рождественские каникулы в Баку - 02.01-07.01, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(638, 4349, 2, 36, 'Рождественские каникулы в Баку - 03.01-07.01, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(639, 2853, 2, 36, 'Тур на Формулу 1, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(640, 681, 2, 36, 'Эконом тур - Открой для себя Баку, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(641, 2685, 2, 36, 'Экскурсионный тур Баку-Губа, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(642, 1887, 2, 24, 'Армения Лайт (MOW_GDS)', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(643, 1877, 2, 24, 'Армения не за горами (MOW_GDS)', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(644, 1879, 2, 24, 'Вкус Армении (MOW_GDS)', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(645, 1866, 2, 24, 'Вся Армения за неделю (MOW_GDS)', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(646, 1885, 2, 24, 'Классика двух столиц Ереван-Гюмри (MOW_GDS)', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(647, 1883, 2, 24, 'Сказочный уикенд в Армении (MOW_GDS)', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(648, 61, 2, 68, 'Бахрейн, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(649, 2891, 2, 6, 'Белорусская Кругосветка, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(650, 2870, 2, 6, 'Белорусский Калейдоскоп, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(651, 3093, 2, 6, 'Все дороги ведут в Мир, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(652, 3088, 2, 6, 'Гомельская классика, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(653, 3098, 2, 6, 'Королевский Гродно, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(654, 2955, 2, 6, 'Курорты Беларуси: Динамика, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(655, 3490, 2, 6, 'Курорты Беларуси (К), МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(656, 3026, 2, 6, 'Минск: Динамика, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(657, 2896, 2, 6, 'Тысячелетний Брест, МСК', '2024-09-13 12:35:30', '2024-09-13 12:35:30'),
(658, 2528, 2, 45, 'Будапешт, Москва', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(659, 2593, 2, 45, 'Две столицы Европы: Будапешт- Вена, Москва', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(660, 2601, 2, 45, 'Истина в вине и здоровье, Москва', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(661, 2535, 2, 45, 'Термальные курорты Венгрии, Москва', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(662, 2597, 2, 45, 'Три столицы Европы: Будапешт- Братислава-Вена, Москва', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(663, 3279, 2, 43, 'Большой Индокитайский Вояж: Вьетнам + Лаос + Камбоджа, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(664, 4075, 2, 43, 'Нячанг + Хошимин 1 ночь (A): Аэрофлот до Хошимина, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(665, 3559, 2, 43, 'Нячанг + Хошимин 1 ночь (V): Аэрофлот до Хошимина, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(666, 4048, 2, 43, 'Тур в Нячанг (A), МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(667, 3536, 2, 43, 'Тур в Нячанг (V), МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(668, 4038, 2, 43, 'Тур в Фантхьет (A): Аэрофлот до Хошимина, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(669, 4104, 2, 43, 'Тур в Хошимин (A): Аэрофлот, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(670, 3604, 2, 43, 'Тур в Хошимин (V): Аэрофлот, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(671, 4087, 2, 43, 'Тур на Фукуок (A), МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(672, 3571, 2, 43, 'Тур на Фукуок (V), МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(673, 4092, 2, 43, 'Фукуок + Хошимин 1 ночь (A): Аэрофлот до Хошимина, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(674, 2546, 2, 29, 'Батуми (R), Москва', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(675, 2318, 2, 29, 'Тбилиси, Москва', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(676, 1931, 2, 10, 'Гранд-тур с круизом по Нилу и отдыхом в Хургаде, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(677, 1925, 2, 10, 'Гранд-тур с круизом по Нилу, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(678, 1917, 2, 10, 'Открываем Каир, Абу-Симбел и Круиз по Нилу, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(679, 1873, 2, 10, 'Открываем Каир и Александрию, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(680, 1890, 2, 10, 'Открываем Каир и Круиз по Нилу, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(681, 1112, 2, 10, 'Открываем Каир и отдых в Хургаде, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(682, 1117, 2, 10, 'Открываем Каир и отдых в Шарм-эль-Шейхе, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(683, 1869, 2, 10, 'Открываем Каир, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(684, 2145, 2, 10, 'Хургада (J), МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(685, 47, 2, 10, 'Хургада (T), МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(686, 2160, 2, 10, 'Шарм-эль-Шейх (J), МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(687, 54, 2, 10, 'Шарм-эль-Шейх (T), МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(688, 178, 2, 33, 'Большое Индийское Путешествие, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(689, 1481, 2, 33, 'Восьмое Чудо Света: тур к Тадж Махалу и отдых в Гоа, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(690, 3728, 2, 33, 'Восьмое Чудо Света: тур к Тадж Махалу, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(691, 236, 2, 33, 'Гоа. Все рейсы, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(692, 1618, 2, 33, 'Гоа. Прямой рейс а/к Аэрофлот, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(693, 3404, 2, 33, 'Дели, Джйпур, Агра, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(694, 188, 2, 33, 'Золотой Треугольник и Варанаси, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(695, 1477, 2, 33, 'Золотой треугольник и отдых в Гоа, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(696, 3957, 2, 33, 'Золотой Треугольник и Праздник Огней Дивали, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(697, 181, 2, 33, 'Золотой Треугольник + Кхаджурахо \"на поезде\", МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(698, 180, 2, 33, 'Золотой Треугольник + Кхаджурахо \"на самолёте\", МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(699, 179, 2, 33, 'Золотой Треугольник, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(700, 3202, 2, 33, 'Йога и Медитация, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(701, 1469, 2, 33, 'Классическая Индия, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(702, 1473, 2, 33, 'Классическая Индия через Читракут, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(703, 191, 2, 33, 'Красочный Раджастхан, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(704, 3726, 2, 33, 'Наследие Карнатаки, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(705, 3180, 2, 33, 'Невероятный Кашмир, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(706, 1632, 2, 33, 'Отдых в Керале: а/п Кочи, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(707, 1638, 2, 33, 'Отдых в Керале: а/п Тривандрум, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(708, 3169, 2, 33, 'Путешествие в Гималаи, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(709, 4160, 2, 69, 'Отдых на о.Бали: а/к Аэрофлот, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(710, 82, 2, 69, 'Отдых на о.Бали, МСК [+1]', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(711, 1184, 2, 69, 'Отдых на о.Бали, МСК [+2]', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(712, 159, 2, 69, 'Убуд (2н) + отдых на о.Бали, МСК [+1]', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(713, 3443, 2, 94, 'Звезды Персидского залива, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(714, 3119, 2, 94, 'Золотое кольцо Персии, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(715, 4018, 2, 94, 'Золотое кольцо Персии. Тур на Новый Год, МСК', '2024-09-13 12:35:31', '2024-09-13 12:35:31'),
(716, 2418, 2, 15, 'Горячая Испанская десятка, Москва', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(717, 2419, 2, 15, 'Жемчужины Средиземноморья, Москва', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(718, 3585, 2, 15, 'Знакомство с Барселоной, Москва', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(719, 3596, 2, 15, 'Испанская серенада, Москва', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(720, 3599, 2, 15, 'Ривьера Средиземноморья, Москва', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(721, 3581, 2, 15, 'Три Королевства, Москва', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(722, 1107, 2, 48, 'Отдых на о. Искья, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(723, 3047, 2, 48, 'Отдых на побережье Одиссея, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(724, 1096, 2, 48, 'Отдых на Сицилии (а/п Катании), МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(725, 1131, 2, 48, 'Отдых на Сицилии (а/п Палермо), МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(726, 2387, 2, 63, 'Тур в Доху (Int.), МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(727, 2801, 2, 84, 'Полет в Масаи Мара, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(728, 396, 2, 84, 'Тур №1: Найроби - парк Масаи Мара, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(729, 398, 2, 84, 'Тур №2: Найроби - парк Масаи Мара - озеро Найваша, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(730, 400, 2, 84, 'Тур №3: Найроби - Масаи Мара - озеро Найваша - озеро Накуру, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(731, 404, 2, 84, 'Тур №5: Найроби - парк Масаи Мара - озеро Найваша - парк Абердаре, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(732, 406, 2, 84, 'Тур №6: Найроби - парк Масаи Мара - озеро Найваша - парк Абердаре - парк Амбосели, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(733, 408, 2, 84, 'Тур №7: Найроби - парк Масаи Мара - озеро Найваша - парк Абердаре - парк Амбосели, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(734, 1444, 2, 31, 'В гости к Аватару заезд в Пекин (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(735, 2848, 2, 31, 'В гости к Аватару заезд в Шанхай (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(736, 1442, 2, 31, 'В гости к Панде (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(737, 2840, 2, 31, 'Гранд тур + В гости к панде (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(738, 2833, 2, 31, 'Гранд тур Всё лучшее в Китае заезд в Пекин (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(739, 1977, 2, 31, 'Гранд тур Всё лучшее в Китае заезд в Шанхай (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(740, 1418, 2, 31, 'Гранд тур + круиз по реке Янцзы (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(741, 2835, 2, 31, 'Гранд тур + Летающие Горы Аватар (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(742, 2838, 2, 31, 'Гранд тур + Магический Гуйлинь (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(743, 1429, 2, 31, 'Две столицы империи (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(744, 1437, 2, 31, 'Две столицы Империи с горами Хуашань (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(745, 3796, 2, 31, 'Две столицы: Пекин - Шанхай - Пекин (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(746, 3788, 2, 31, 'Древние столицы: Пекин - Сиань - Лоян - Пекин (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(747, 2842, 2, 31, 'Другой мир: Неповторимый Китай и крыша Мира (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(748, 3759, 2, 31, 'Знакомство со столицей (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(749, 3773, 2, 31, 'Китайский Аватар: Пекин - Чжанцзяцзе - Пекин (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(750, 1446, 2, 31, 'Китайский новый поход заезд в Пекин (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(751, 2851, 2, 31, 'Китайский новый поход заезд в Шанхай (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(752, 3741, 2, 31, 'Классический Пекин (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(753, 2811, 2, 31, 'Магический Гуйлинь (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(754, 1432, 2, 31, 'Мега тур: Старый и Новый Китай заезд в Пекин (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(755, 2845, 2, 31, 'Мега тур: Старый и Новый Китай заезд в Шанхай (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(756, 1074, 2, 31, 'Отдых на о. Хайнань (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(757, 1732, 2, 31, 'Отдых на о. Хайнань (MOW-GDS) (E)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(758, 2280, 2, 31, 'Отдых на о. Хайнань прямой перелет (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(759, 2281, 2, 31, 'Отдых на о. Хайнань прямой перелет (MOW-GDS) (E)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(760, 1361, 2, 31, 'Пекин без границ (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(761, 3806, 2, 31, 'Пекин - Сиань - Чжанцзяцзе - Пекин (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(762, 1425, 2, 31, 'Пекин-Шанхай (скоростной поезд) (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(763, 1983, 2, 31, 'Пекин-Шанхай-Сучжоу (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(764, 3816, 2, 31, 'Пекин – Шанхай – Сучжоу – Ханчжоу – Пекин (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(765, 1439, 2, 31, 'Среди летающих гор (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(766, 1365, 2, 31, 'Три столицы Империи (MOW-GDS)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(767, 1743, 2, 31, 'Тур в Пекин (MOW-GDS) (E)', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(768, 3986, 2, 23, 'Золото Инков + отдых в Варадеро, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(769, 3987, 2, 23, 'Мачу Пикчу 5н.+ отдых в Варадеро, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(770, 3988, 2, 23, 'Мачу Пикчу 6н.+ отдых в Варадеро, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(771, 1744, 2, 23, 'Отдых на Варадеро: Динамика, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(772, 1334, 2, 23, 'Отдых на Варадеро, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(773, 3989, 2, 23, 'Северный Калейдоскоп + отдых в Варадеро, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(774, 3990, 2, 23, 'Южный Калейдоскоп + отдых в Варадеро, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(775, 331, 2, 54, 'Маврикий, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(776, 2173, 2, 41, 'Борнео, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(777, 2573, 2, 41, 'Борнео: Туркменские авиалинии, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(778, 3991, 2, 41, 'Десару, Туркменские авиалинии, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(779, 2575, 2, 41, 'Куала-Лумпур (2н) + Борнео: Туркменские авиалинии, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(780, 3971, 2, 41, 'Куала-Лумпур (2н) + Десару, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(781, 3994, 2, 41, 'Куала-Лумпур (2н) + Десару: Туркменские авиалинии, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(782, 3545, 2, 41, 'Куала-Лумпур (2н.) + Лангкави + Сингапур (2н.), МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(783, 2175, 2, 41, 'Куала-Лумпур (2н) + о.Борнео, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(784, 2041, 2, 41, 'Куала-Лумпур (2н) + о.Лангкави, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(785, 2576, 2, 41, 'Куала-Лумпур (2н) + о.Лангкави: Туркменские авиалинии, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(786, 3974, 2, 41, 'Куала-Лумпур (2н) + Пенанг, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(787, 3995, 2, 41, 'Куала-Лумпур (2н) + Пенанг: Туркменские авиалинии, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(788, 3951, 2, 41, 'Куала-Лумпур + Десару, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(789, 4113, 2, 41, 'Куала-Лумпур и Бруней, МСК', '2024-09-13 12:35:32', '2024-09-13 12:35:32'),
(790, 2044, 2, 41, 'Лангкави, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(791, 2574, 2, 41, 'Лангкави: Туркменские авиалинии, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(792, 3968, 2, 41, 'Пенанг, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(793, 3998, 2, 41, 'Пенанг: Туркменские авиалинии, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(794, 3614, 2, 41, 'Рекламный тур \"Удивительная Малайзия + Лангкави\"', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(795, 1970, 2, 41, 'Сингапур (2н) + Десару, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(796, 3953, 2, 41, 'Сингапур + Десару, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(797, 4069, 2, 41, 'Удивительная Малайзия + Лангкави, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(798, 2047, 2, 41, 'Удивительная Малайзия, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(799, 257, 2, 50, 'Мальдивы SPO_1 (MOW-GDS)', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(800, 52, 2, 50, 'Мальдивы SPO_1 (MOW-GDS +1)', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(801, 3150, 2, 50, 'Мальдивы SPO_2 (MOW-GDS +1)', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(802, 1006, 2, 50, 'Рекламный тур на Мальдивы', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(803, 215, 2, 86, 'Большое путешествие по Намибии, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(804, 216, 2, 86, 'Две пустыни и Атлантика, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(805, 217, 2, 86, 'Классика Намибии, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(806, 3214, 2, 106, 'Загадочный Катманду и Гималаи, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(807, 3222, 2, 106, 'Золотой треугольник Непала, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(808, 3218, 2, 106, 'Открывая Непал, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(809, 1717, 2, 13, 'ОАЭ / прямой перелёт в Абу-Даби, МСК: Динамика', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(810, 866, 2, 13, 'ОАЭ / прямой перелёт в Дубай / 1 ночь в полёте, МСК: Динамика', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(811, 865, 2, 13, 'ОАЭ / прямой перелёт в Дубай, МСК: Динамика', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(812, 882, 2, 13, 'ОАЭ / прямой перелёт в Шарджу, МСК: Динамика', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(813, 1016, 2, 76, 'Тур в Маскат, МСК: Динамика', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(814, 3301, 2, 2, 'Азбука Экскурсий, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(815, 4014, 2, 2, 'Астрахань (конструктор), МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(816, 3295, 2, 2, 'Балтийский экспресс Friday, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(817, 4451, 2, 2, 'Больше, чем путешествие на Кавказ, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(818, 4464, 2, 2, 'Большой тур по Кавказу, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(819, 4478, 2, 2, 'В горах мое сердце, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(820, 3040, 2, 2, 'В гости к аланам, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(821, 264, 2, 2, 'В Калининград в любой день, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(822, 4008, 2, 2, 'Владивосток - Город со Вкусом, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(823, 4436, 2, 2, 'Вояж в созвездие гор, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(824, 3260, 2, 2, 'В Сибирь по своей воле, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(825, 3318, 2, 2, 'В Тридевятом Царстве, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(826, 3938, 2, 2, 'Выходные в Красноярске, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(827, 2883, 2, 2, 'Выходные в Осетии, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(828, 4492, 2, 2, 'Выше горы - круче виды, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(829, 3932, 2, 2, 'Гастрономический Красноярск: Вкусы Енисейской Сибири, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(830, 4290, 2, 2, 'Гранд тур по Нижегородской области, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(831, 3075, 2, 2, 'Загадки Кавказских ущелий, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(832, 4388, 2, 2, 'Знакомство с Чечней и Дагестаном, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(833, 4504, 2, 2, 'Истории и панорамы ущелий Кавказа, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(834, 3060, 2, 2, 'История и традиции гор, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(835, 4411, 2, 2, 'Кавказ - погружение в историю и традиции, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(836, 60, 2, 2, 'КавМинВоды: Динамика, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(837, 4431, 2, 2, 'Кавминводы - Кабардино-Балкария, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(838, 4415, 2, 2, 'Кавминводы - Карачаево-Черкесия, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(839, 836, 2, 2, 'Казань: Динамика, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(840, 790, 2, 2, 'Калининград: Динамика, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(841, 4440, 2, 2, 'К гордым красотам Кавказа, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(842, 4404, 2, 2, 'Классическое путешествие на Кавказ, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(843, 3355, 2, 2, 'Королевские выходные, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(844, 4475, 2, 2, 'Краски Кавказа, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(845, 50, 2, 2, 'Красная Поляна: Динамика, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(846, 4385, 2, 2, 'Красота гор и сила традиций, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(847, 3073, 2, 2, 'Легенды Горцев, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(848, 4011, 2, 2, 'Мосты Владивостока и отдых на теплом море, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(849, 265, 2, 2, 'На самом западе, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(850, 4407, 2, 2, 'На склонах гор, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(851, 4508, 2, 2, 'Нерассказанные истории в краю гор, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(852, 4217, 2, 2, 'Новогодние каникулы в Кисловодске, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(853, 4201, 2, 2, 'Новогодние чудеса Кавказа, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(854, 4209, 2, 2, 'Новый Год в Кисловодске, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(855, 4379, 2, 2, 'Огни Дагестана, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(856, 3078, 2, 2, 'Однажды в горах Осетии и Ингушетии, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(857, 3045, 2, 2, 'Осетия - Ингушетия, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(858, 46, 2, 2, 'Отдых в Сочи: Динамика, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(859, 4191, 2, 2, 'от Кавминвод до Дагестана, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(860, 2880, 2, 2, 'Открывая Осетию, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(861, 2886, 2, 2, 'Привет, Алания!, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(862, 4485, 2, 2, 'Притяжение Кавказа, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(863, 4496, 2, 2, 'Путешествие в сердце кавказских гор, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(864, 4500, 2, 2, 'Путешествие с кавказским акцентом, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(865, 3264, 2, 2, 'Романовы в Сибири, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(866, 4488, 2, 2, 'Самые гостеприимные горы России, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(867, 4472, 2, 2, 'Северная Осетия - Кабардино-Балкария, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(868, 4482, 2, 2, 'Средь гор высоких и могучих, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(869, 3043, 2, 2, 'Тайны древнего Иристона, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(870, 3065, 2, 2, 'Танец вечности и современности, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(871, 3268, 2, 2, 'Тюменские термы. Горячее сердце Сибири, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(872, 3272, 2, 2, 'Черное золото Сибири, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(873, 4382, 2, 2, 'Это Кавказ, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(874, 3038, 2, 2, 'Яблоко Нартов, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(875, 4460, 2, 2, 'Яркие образы Кавказа, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(876, 845, 2, 78, 'Отдых на Сейшелах, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(877, 1198, 2, 78, 'Отдых на Сейшелах, МСК [Аэрофлот]', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(878, 168, 2, 78, 'Сейшелы, отдых на о.Маэ: Динамика, МСК', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(879, 3948, 2, 78, 'Сейшелы, отдых на о.Маэ: Динамика, МСК [Аэрофлот]', '2024-09-13 12:35:33', '2024-09-13 12:35:33'),
(880, 571, 2, 46, 'Едем и Едим, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(881, 4517, 2, 46, 'От Белграда до Сараево, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(882, 576, 2, 46, 'Россия и Сербия: Связь времен и поколений, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(883, 4514, 2, 46, 'Сербия Мини-тур, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(884, 1700, 2, 87, 'Тур в Сингапур, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(885, 1706, 2, 87, 'Тур на о.Сентоса, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(886, 3232, 2, 55, 'Любляна, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(887, 3137, 2, 55, 'Отдых на озерах Словении, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(888, 3083, 2, 55, 'Отдых на побережье Словении, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(889, 3378, 2, 55, 'Термальные курорты Словении, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(890, 1683, 2, 19, 'Као Лак (W), Москва [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(891, 3623, 2, 19, 'Као Лак (W). Прямой авиаперелет, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(892, 2649, 2, 19, 'Ко Чанг (W). а/п Туркменскими авиалиниями, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(893, 1558, 2, 19, 'Ко Чанг (W), МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(894, 3830, 2, 19, 'Ко Чанг (W), прямой рейс, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(895, 3054, 2, 19, 'Новые дизайнерские апартаменты Skypark в Laguna beach, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(896, 3641, 2, 19, 'Отдых в Као Лаке, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(897, 3651, 2, 19, 'Отдых в Као Лаке, прямой авиаперелет, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(898, 2650, 2, 19, 'Отдых в Ко Чанге. а/п Туркменскими авиалиниями, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(899, 106, 2, 19, 'Отдых в Ко Чанге, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(900, 3876, 2, 19, 'Отдых в Ко Чанге, прямой а/п, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(901, 2651, 2, 19, 'Отдых в Паттайе. а/п Туркменскими авиалиниями, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(902, 93, 2, 19, 'Отдых в Паттайе, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(903, 3869, 2, 19, 'Отдых в Паттайе, прямой а/п, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(904, 3895, 2, 19, 'Отдых в Хуахине, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(905, 3901, 2, 19, 'Отдых в Хуахине, прямой а/п, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(906, 111, 2, 19, 'Отдых на Пхукете, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(907, 3612, 2, 19, 'Отдых на Пхукете. Прямой авиаперелет, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(908, 2652, 2, 19, 'Отдых на Самуи. а/п Туркменскими авиалиниями, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(909, 618, 2, 19, 'Отдых на Самуи, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(910, 3877, 2, 19, 'Отдых на Самуи, прямой а/п, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(911, 2653, 2, 19, 'Паттайя (W), а/п Туркменскими авиалиниями, обзорная экскурсия в подарок, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(912, 1545, 2, 19, 'Паттайя (W), Обзорная экскурсия в подарок, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(913, 3836, 2, 19, 'Паттайя (W), прямой а/п, обзорная экскурсия в подарок, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(914, 1531, 2, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(915, 3613, 2, 19, 'Пхукет (W), Прямой авиаперелет, Групповой трансфер и обзорная экскурсия в подарок, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(916, 3421, 2, 19, 'Рекламный тур \"Као Лак + Пхукет + Куала Лумпур\"', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(917, 2654, 2, 19, 'Самуи (W). а/п Туркменскими авиалиниями, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(918, 1564, 2, 19, 'Самуи (W), МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(919, 3842, 2, 19, 'Самуи (W), прямой а/п, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(920, 2742, 2, 19, 'Хуахин (W), МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(921, 3843, 2, 19, 'Хуахин (W), прямой а/п, МСК [+1]', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(922, 3004, 2, 19, 'Хуахин: Динамика. а/п Туркменскими авиалиниями, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(923, 3003, 2, 19, 'Хуахин: Динамика, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(924, 334, 2, 83, 'Танзания: Занзибар (V), МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(925, 3069, 2, 83, 'Танзания: Занзибар (G), МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(926, 2608, 2, 9, 'По следам великих цивилизаций, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(927, 1326, 2, 9, 'Тур в Анталию (A), МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(928, 1316, 2, 9, 'Тур в Анталию (A): Прямой рейс, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(929, 2227, 2, 9, 'Тур в Анталию (C), МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(930, 126, 2, 9, 'Тур в Анталию (C): Прямой рейс, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(931, 975, 2, 9, 'Тур в Анталию (P), МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(932, 965, 2, 9, 'Тур в Анталию (P): Прямой рейс, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(933, 2275, 2, 9, 'Тур в Анталию (R), МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(934, 2255, 2, 9, 'Тур в Анталию (R): Прямой рейс, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(935, 2554, 2, 9, 'Тур в Бодрум (P), МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(936, 305, 2, 9, 'Тур в Бодрум (С), МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(937, 906, 2, 9, 'Тур в Даламан, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(938, 922, 2, 9, 'Тур в Измир, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(939, 1658, 2, 9, 'Тур в Стамбул (A), МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(940, 1648, 2, 9, 'Тур в Стамбул (A): Прямой рейс, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(941, 887, 2, 9, 'Тур в Стамбул (P), МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(942, 307, 2, 9, 'Тур в Стамбул (P): Прямой рейс, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(943, 1786, 2, 9, 'Тур в Стамбул (Q), МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(944, 1776, 2, 9, 'Тур в Стамбул (Q): Прямой рейс, МСК', '2024-09-13 12:35:34', '2024-09-13 12:35:34'),
(945, 3070, 2, 35, 'Магический Узбекистан, МСК (без доплат)', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(946, 2398, 2, 35, 'Сокровища Узбекистана, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(947, 3425, 2, 40, 'Апартаменты в Ницце, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(948, 3915, 2, 40, 'Париж - Нормандия - Бретань, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(949, 4467, 2, 66, 'Белград + Наследие Черногории, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(950, 3465, 2, 104, 'В гостях у Сказки, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(951, 3468, 2, 104, 'Золотой перевал, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(952, 3471, 2, 104, 'Каникулы в стране Озер, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(953, 3474, 2, 104, 'Мюнхен-Цюрих, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(954, 1688, 2, 52, 'Шри-Ланка (A), отель со 2-го дня, Москва', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(955, 39, 2, 52, 'Шри-Ланка (A), отель со 2-го дня, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(956, 2580, 2, 52, 'Шри-Ланка (E), отель со 2-го дня, Москва', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(957, 2579, 2, 52, 'Шри-Ланка (E), отель со 2-го дня, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(958, 3249, 2, 91, 'Wellness тур на Юг: о.Чеджу - Сеул, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(959, 3386, 2, 91, 'Гастрономический Сеул, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(960, 3239, 2, 91, 'Главные места Кореи, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(961, 4311, 2, 91, 'Гранд Тур по Корее (групповой), МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(962, 4315, 2, 91, 'Гранд Тур по Корее (индивидуальный), МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(963, 3440, 2, 91, 'Динамичное трио: Приключение в Пусане, Кёнчжу и Сеуле, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(964, 3246, 2, 91, 'Золотая осень в Корее, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35');
INSERT INTO `samotour_tours` (`id`, `id_tour`, `id_city`, `id_country`, `name`, `created_at`, `updated_at`) VALUES
(965, 3926, 2, 91, 'Когда цветут камелии, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(966, 2814, 2, 91, 'Краски осени, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(967, 3236, 2, 91, 'Насыщенный Сеул, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(968, 3984, 2, 91, 'Новый год в Южной Корее, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(969, 3390, 2, 91, 'По Корее: Север - Восток - Юг, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(970, 3399, 2, 91, 'По Корее: Север - Запад - Юг, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(971, 3918, 2, 91, 'Природа история и Мегаполисы, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(972, 4309, 2, 91, 'Сакура в Цвету, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(973, 3921, 2, 91, 'Север-Восток: очарование природы и самобытная культура, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(974, 2823, 2, 91, 'Сеульские Истории, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(975, 3383, 2, 91, 'Сеул \"Эконом\", МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(976, 3982, 2, 91, 'Цветение вишни в Корее, МСК', '2024-09-13 12:35:35', '2024-09-13 12:35:35'),
(977, 3369, 2, 32, 'Жемчужины Японского моря + горячие источники, МСК', '2024-09-13 12:35:36', '2024-09-13 12:35:36'),
(978, 376, 2, 32, 'Классическая Япония Токио-Киото, МСК', '2024-09-13 12:35:36', '2024-09-13 12:35:36'),
(979, 375, 2, 32, 'Классическая Япония Токио-Токио, МСК', '2024-09-13 12:35:36', '2024-09-13 12:35:36'),
(980, 3372, 2, 32, 'От моря к океану + горячие источники, МСК', '2024-09-13 12:35:36', '2024-09-13 12:35:36'),
(981, 378, 2, 32, 'Токио вчера и сегодня, МСК', '2024-09-13 12:35:36', '2024-09-13 12:35:36'),
(982, 3366, 2, 32, 'Япония с Востока на Запад Токио-Киото, МСК', '2024-09-13 12:35:36', '2024-09-13 12:35:36'),
(983, 382, 2, 32, 'Япония с Востока на Запад Токио-Токио, МСК', '2024-09-13 12:35:36', '2024-09-13 12:35:36'),
(984, 1399, 695, 67, 'Отдых в Абхазии: Динамика NEW, Мурманск', '2024-09-13 12:35:36', '2024-09-13 12:35:36'),
(985, 1042, 695, 67, 'Отдых в Абхазии: Динамика, Мурманск', '2024-09-13 12:35:36', '2024-09-13 12:35:36'),
(986, 1085, 695, 2, 'Красная Поляна: Динамика, Мурманск', '2024-09-13 12:35:36', '2024-09-13 12:35:36'),
(987, 998, 695, 2, 'Отдых в Сочи: Динамика, Мурманск', '2024-09-13 12:35:36', '2024-09-13 12:35:36'),
(988, 1400, 1125, 67, 'Отдых в Абхазии: Динамика NEW, Нижневартовск', '2024-09-13 12:35:36', '2024-09-13 12:35:36'),
(989, 1043, 1125, 67, 'Отдых в Абхазии: Динамика, Нижневартовск', '2024-09-13 12:35:36', '2024-09-13 12:35:36'),
(990, 1086, 1125, 2, 'Красная Поляна: Динамика, Нижневартовск', '2024-09-13 12:35:37', '2024-09-13 12:35:37'),
(991, 999, 1125, 2, 'Отдых в Сочи: Динамика, Нижневартовск', '2024-09-13 12:35:37', '2024-09-13 12:35:37'),
(992, 1401, 135, 67, 'Отдых в Абхазии: Динамика NEW, Нижнекамск', '2024-09-13 12:35:37', '2024-09-13 12:35:37'),
(993, 1044, 135, 67, 'Отдых в Абхазии: Динамика, Нижнекамск', '2024-09-13 12:35:37', '2024-09-13 12:35:37'),
(994, 1087, 135, 2, 'Красная Поляна: Динамика, Нижнекамск', '2024-09-13 12:35:37', '2024-09-13 12:35:37'),
(995, 1000, 135, 2, 'Отдых в Сочи: Динамика, Нижнекамск', '2024-09-13 12:35:37', '2024-09-13 12:35:37'),
(996, 1382, 723, 67, 'Отдых в Абхазии: Динамика NEW, Н.Новгород', '2024-09-13 12:35:37', '2024-09-13 12:35:37'),
(997, 871, 723, 67, 'Отдых в Абхазии: Динамика, Н.Новгород', '2024-09-13 12:35:37', '2024-09-13 12:35:37'),
(998, 2958, 723, 6, 'Курорты Беларуси: Динамика, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(999, 3029, 723, 6, 'Минск: Динамика, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1000, 4078, 723, 43, 'Нячанг + Хошимин 1 ночь (A): Аэрофлот до Хошимина, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1001, 3566, 723, 43, 'Нячанг + Хошимин 1 ночь (V): Аэрофлот до Хошимина, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1002, 4045, 723, 43, 'Тур в Фантхьет (A): Аэрофлот до Хошимина, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1003, 4107, 723, 43, 'Тур в Хошимин (A): Аэрофлот, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1004, 3611, 723, 43, 'Тур в Хошимин (V): Аэрофлот, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1005, 3578, 723, 43, 'Тур на Фукуок (V), Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1006, 4095, 723, 43, 'Фукуок + Хошимин 1 ночь (A): Аэрофлот до Хошимина, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1007, 2149, 723, 10, 'Хургада (J), Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1008, 1339, 723, 10, 'Хургада (T), Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1009, 2164, 723, 10, 'Шарм-эль-Шейх (J), Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1010, 1348, 723, 10, 'Шарм-эль-Шейх (T), Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1011, 3786, 723, 33, 'Большое Индийское Путешествие, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1012, 3738, 723, 33, 'Восьмое Чудо Света: тур к Тадж Махалу, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1013, 3768, 723, 33, 'Золотой Треугольник и Варанаси, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1014, 3780, 723, 33, 'Золотой треугольник и отдых в Гоа, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1015, 3966, 723, 33, 'Золотой Треугольник и Праздник Огней Дивали, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1016, 3758, 723, 33, 'Золотой Треугольник + Кхаджурахо \"на поезде\", Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1017, 3750, 723, 33, 'Золотой Треугольник + Кхаджурахо \"на самолёте\", Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1018, 3739, 723, 33, 'Золотой Треугольник, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1019, 3769, 723, 33, 'Классическая Индия, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1020, 3772, 723, 33, 'Классическая Индия через Читракут, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1021, 3782, 723, 33, 'Красочный Раджастхан, Н.Новгород', '2024-09-13 12:35:38', '2024-09-13 12:35:38'),
(1022, 852, 723, 50, 'Мальдивы SPO_1 (GOJ-GDS)', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1023, 3194, 723, 50, 'Мальдивы SPO_2 (GOJ-GDS)', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1024, 806, 723, 2, 'КавМинВоды: Динамика, Н.Новгород', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1025, 800, 723, 2, 'Калининград: Динамика, Н.Новгород', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1026, 826, 723, 2, 'Красная Поляна: Динамика, Н.Новгород', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1027, 816, 723, 2, 'Отдых в Сочи: Динамика, Н.Новгород', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1028, 1990, 723, 19, 'Као Лак (W), Нижний Новгород [+1]', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1029, 1991, 723, 19, 'Ко Чанг (W), Нижний Новгород [+1]', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1030, 3635, 723, 19, 'Отдых в Као Лаке, Нижний Новгород [+1]', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1031, 1996, 723, 19, 'Отдых в Ко Чанге, Нижний Новгород [+1]', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1032, 1997, 723, 19, 'Отдых в Паттайе, Нижний Новгород [+1]', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1033, 3902, 723, 19, 'Отдых в Хуахине, Нижний Новгород [+1]', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1034, 2000, 723, 19, 'Отдых на Пхукете, Нижний Новгород [+1]', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1035, 2136, 723, 19, 'Отдых на Самуи, Нижний Новгород [+1]', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1036, 2005, 723, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Нижний Новгород [+1]', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1037, 2006, 723, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Нижний Новгород [+1]', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1038, 2108, 723, 19, 'Самуи (W), Нижний Новгород [+1]', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1039, 3853, 723, 19, 'Хуахин (W), Нижний Новгород [+1]', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1040, 2612, 723, 9, 'По следам великих цивилизаций, Н.Новгород', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1041, 1323, 723, 9, 'Тур в Анталию (A), Н.Новгород', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1042, 219, 723, 9, 'Тур в Анталию (C), Н.Новгород', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1043, 972, 723, 9, 'Тур в Анталию (P), Н.Новгород', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1044, 2264, 723, 9, 'Тур в Анталию (R), Н.Новгород', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1045, 937, 723, 9, 'Тур в Даламан, Н.Новгород', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1046, 928, 723, 9, 'Тур в Измир, Н.Новгород', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1047, 1402, 498, 67, 'Отдых в Абхазии: Динамика NEW, Новокузнецк', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1048, 1045, 498, 67, 'Отдых в Абхазии: Динамика, Новокузнецк', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1049, 1088, 498, 2, 'Красная Поляна: Динамика, Новокузнецк', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1050, 1001, 498, 2, 'Отдых в Сочи: Динамика, Новокузнецк', '2024-09-13 12:35:39', '2024-09-13 12:35:39'),
(1051, 1383, 752, 67, 'Отдых в Абхазии: Динамика NEW, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1052, 870, 752, 67, 'Отдых в Абхазии: Динамика, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1053, 705, 752, 36, 'Аппетитный Азербайджан, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1054, 2493, 752, 36, 'На выходные в Баку, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1055, 4375, 752, 36, 'Новогодняя сказка в Баку - 29.12-02.01, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1056, 4399, 752, 36, 'Новогодняя сказка в Баку - 30.12-02.01, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1057, 4426, 752, 36, 'Новогодняя сказка в Баку - 30.12-03.01, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1058, 4454, 752, 36, 'Новогодняя сказка в Баку - 31.12-03.01, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1059, 2382, 752, 36, 'Отели Баку (Int.), Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1060, 700, 752, 36, 'Открой для себя Азербайджан, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1061, 4303, 752, 36, 'Рождественские каникулы в Баку - 02.01-05.01, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1062, 4327, 752, 36, 'Рождественские каникулы в Баку - 02.01-06.01, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1063, 4341, 752, 36, 'Рождественские каникулы в Баку - 02.01-07.01, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1064, 4357, 752, 36, 'Рождественские каникулы в Баку - 03.01-07.01, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1065, 2863, 752, 36, 'Тур на Формулу 1, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1066, 2687, 752, 36, 'Экскурсионный тур Баку-Губа, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1067, 4079, 752, 43, 'Нячанг + Хошимин 1 ночь (A): Аэрофлот до Хошимина, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1068, 3565, 752, 43, 'Нячанг + Хошимин 1 ночь (V): Аэрофлот до Хошимина, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1069, 4044, 752, 43, 'Тур в Фантхьет (A): Аэрофлот до Хошимина, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1070, 4108, 752, 43, 'Тур в Хошимин (A): Аэрофлот, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1071, 3610, 752, 43, 'Тур в Хошимин (V): Аэрофлот, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1072, 3577, 752, 43, 'Тур на Фукуок (V), Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1073, 4096, 752, 43, 'Фукуок + Хошимин 1 ночь (A): Аэрофлот до Хошимина, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1074, 4150, 752, 10, 'Гранд-тур с круизом по Нилу и отдыхом в Хургаде, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1075, 4145, 752, 10, 'Гранд-тур с круизом по Нилу, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1076, 4140, 752, 10, 'Открываем Каир, Абу-Симбел и Круиз по Нилу, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1077, 4120, 752, 10, 'Открываем Каир и Александрию, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1078, 4135, 752, 10, 'Открываем Каир и Круиз по Нилу, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1079, 4125, 752, 10, 'Открываем Каир и отдых в Хургаде, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1080, 4130, 752, 10, 'Открываем Каир и отдых в Шарм-эль-Шейхе, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1081, 4115, 752, 10, 'Открываем Каир, Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1082, 2147, 752, 10, 'Хургада (J), Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1083, 1336, 752, 10, 'Хургада (T), Новосибирск', '2024-09-13 12:35:40', '2024-09-13 12:35:40'),
(1084, 2162, 752, 10, 'Шарм-эль-Шейх (J), Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1085, 1345, 752, 10, 'Шарм-эль-Шейх (T), Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1086, 3716, 752, 33, 'Большое Индийское Путешествие, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1087, 3732, 752, 33, 'Восьмое Чудо Света: тур к Тадж Махалу, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1088, 1619, 752, 33, 'Гоа. а/к Аэрофлот, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1089, 3154, 752, 33, 'Золотой Треугольник и Варанаси, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1090, 3691, 752, 33, 'Золотой треугольник и отдых в Гоа, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1091, 3960, 752, 33, 'Золотой Треугольник и Праздник Огней Дивали, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1092, 3142, 752, 33, 'Золотой Треугольник + Кхаджурахо \"на поезде\", Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1093, 3660, 752, 33, 'Золотой Треугольник + Кхаджурахо \"на самолёте\", Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1094, 3128, 752, 33, 'Золотой Треугольник, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1095, 3205, 752, 33, 'Йога и Медитация, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1096, 3161, 752, 33, 'Классическая Индия, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1097, 3682, 752, 33, 'Классическая Индия через Читракут, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1098, 3709, 752, 33, 'Красочный Раджастхан, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1099, 3183, 752, 33, 'Невероятный Кашмир, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1100, 3172, 752, 33, 'Путешествие в Гималаи, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1101, 3445, 752, 94, 'Звезды Персидского залива, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1102, 3124, 752, 94, 'Золотое кольцо Персии, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1103, 3051, 752, 48, 'Отдых на побережье Одиссея, Новосибирск', '2024-09-13 12:35:41', '2024-09-13 12:35:41'),
(1104, 3801, 752, 31, 'Две столицы: Пекин - Шанхай - Пекин (OVB-GDS)', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1105, 3792, 752, 31, 'Древние столицы: Пекин - Сиань - Лоян - Пекин (OVB-GDS)', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1106, 3764, 752, 31, 'Знакомство со столицей (OVB-GDS)', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1107, 3778, 752, 31, 'Китайский Аватар: Пекин - Чжанцзяцзе - Пекин (OVB-GDS)', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1108, 3748, 752, 31, 'Классический Пекин (OVB-GDS)', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1109, 4167, 752, 31, 'Отдых на о. Хайнань (OVB-GDS Аэрофлот)', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1110, 4168, 752, 31, 'Отдых на о. Хайнань (OVB-GDS Аэрофлот) (E)', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1111, 3811, 752, 31, 'Пекин - Сиань - Чжанцзяцзе - Пекин (OVB-GDS)', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1112, 3821, 752, 31, 'Пекин – Шанхай – Сучжоу – Ханчжоу – Пекин (OVB-GDS)', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1113, 1751, 752, 23, 'Отдых на Варадеро: Динамика, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1114, 1489, 752, 23, 'Отдых на Варадеро, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1115, 851, 752, 50, 'Мальдивы SPO_1 (OVB-GDS)', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1116, 3193, 752, 50, 'Мальдивы SPO_2 (OVB-GDS)', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1117, 783, 752, 13, 'ОАЭ / прямой перелёт в Дубай, Новосибирск: Динамика', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1118, 4228, 752, 2, 'Week End Москва, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1119, 4293, 752, 2, 'Гранд тур по Нижегородской области, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1120, 805, 752, 2, 'КавМинВоды: Динамика, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1121, 839, 752, 2, 'Казань: Динамика, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1122, 795, 752, 2, 'Калининград: Динамика, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1123, 4236, 752, 2, 'Классическая Москва, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1124, 825, 752, 2, 'Красная Поляна: Динамика, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1125, 4179, 752, 2, 'Москва: Динамика, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1126, 4244, 752, 2, 'Москва Макси, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1127, 4252, 752, 2, 'Мос Тус Москва, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1128, 4218, 752, 2, 'Новогодние каникулы в Кисловодске, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1129, 4202, 752, 2, 'Новогодние чудеса Кавказа, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1130, 4210, 752, 2, 'Новый Год в Кисловодске, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1131, 815, 752, 2, 'Отдых в Сочи: Динамика, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1132, 4196, 752, 2, 'от Кавминвод до Дагестана, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1133, 3673, 752, 2, 'Санкт-Петербург, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1134, 1453, 752, 78, 'Отдых на Сейшелах, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1135, 1670, 752, 78, 'Сейшелы, отдых на о.Маэ: Динамика, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1136, 1704, 752, 87, 'Тур в Сингапур, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1137, 1711, 752, 87, 'Тур на о.Сентоса, Новосибирск', '2024-09-13 12:35:42', '2024-09-13 12:35:42'),
(1138, 2088, 752, 19, 'Као Лак (W), Новосибирск [+0]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1139, 2089, 752, 19, 'Као Лак (W), Новосибирск [+1]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1140, 2067, 752, 19, 'Ко Чанг (W), Новосибирск [+0]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1141, 3647, 752, 19, 'Отдых в Као Лаке, Новосибирск [+0]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1142, 3648, 752, 19, 'Отдых в Као Лаке, Новосибирск [+1]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1143, 2072, 752, 19, 'Отдых в Ко Чанге, Новосибирск [+0]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1144, 2080, 752, 19, 'Отдых в Паттайе, Новосибирск [+0]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1145, 3898, 752, 19, 'Отдых в Хуахине, Новосибирск [+0]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1146, 2091, 752, 19, 'Отдых на Пхукете, Новосибирск [+0]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1147, 2092, 752, 19, 'Отдых на Пхукете, Новосибирск [+1]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1148, 2134, 752, 19, 'Отдых на Самуи, Новосибирск [+0]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1149, 2083, 752, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Новосибирск [+0]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1150, 2096, 752, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Новосибирск [+0]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1151, 2097, 752, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Новосибирск [+1]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1152, 2109, 752, 19, 'Самуи (W), Новосибирск [+0]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1153, 2746, 752, 19, 'Хуахин (W), Новосибирск [+0]', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1154, 2609, 752, 9, 'По следам великих цивилизаций, Новосибирск', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1155, 1322, 752, 9, 'Тур в Анталию (A), Новосибирск', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1156, 182, 752, 9, 'Тур в Анталию (C), Новосибирск', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1157, 971, 752, 9, 'Тур в Анталию (P), Новосибирск', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1158, 2258, 752, 9, 'Тур в Анталию (R), Новосибирск', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1159, 938, 752, 9, 'Тур в Даламан, Новосибирск', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1160, 929, 752, 9, 'Тур в Измир, Новосибирск', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1161, 1654, 752, 9, 'Тур в Стамбул (A), Новосибирск', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1162, 883, 752, 9, 'Тур в Стамбул (P), Новосибирск', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1163, 1782, 752, 9, 'Тур в Стамбул (Q), Новосибирск', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1164, 1403, 1142, 67, 'Отдых в Абхазии: Динамика NEW, Новый Уренгой', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1165, 1046, 1142, 67, 'Отдых в Абхазии: Динамика, Новый Уренгой', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1166, 1002, 1142, 2, 'Отдых в Сочи: Динамика, Н.Уренгой', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1167, 1384, 762, 67, 'Отдых в Абхазии: Динамика NEW, Омск', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1168, 872, 762, 67, 'Отдых в Абхазии: Динамика, Омск', '2024-09-13 12:35:43', '2024-09-13 12:35:43'),
(1169, 2153, 762, 10, 'Хургада (J), Омск', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1170, 1343, 762, 10, 'Хургада (T), Омск', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1171, 2168, 762, 10, 'Шарм-эль-Шейх (J), Омск', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1172, 1352, 762, 10, 'Шарм-эль-Шейх (T), Омск', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1173, 3554, 762, 31, 'Отдых на о. Хайнань (OMS-GDS)', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1174, 3555, 762, 31, 'Отдых на о. Хайнань (OMS-GDS) (E)', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1175, 1748, 762, 23, 'Отдых на Варадеро: Динамика, Омск', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1176, 1486, 762, 23, 'Отдых на Варадеро, Омск', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1177, 853, 762, 50, 'Мальдивы SPO_1 (OMS-GDS)', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1178, 3192, 762, 50, 'Мальдивы SPO_2 (OMS-GDS)', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1179, 807, 762, 2, 'КавМинВоды: Динамика, Омск', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1180, 840, 762, 2, 'Казань: Динамика, Омск', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1181, 796, 762, 2, 'Калининград: Динамика, Омск', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1182, 827, 762, 2, 'Красная Поляна: Динамика, Омск', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1183, 817, 762, 2, 'Отдых в Сочи: Динамика, Омск', '2024-09-13 12:35:44', '2024-09-13 12:35:44'),
(1184, 2618, 762, 9, 'По следам великих цивилизаций, Омск', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1185, 1404, 772, 67, 'Отдых в Абхазии: Динамика NEW, Оренбург', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1186, 1047, 772, 67, 'Отдых в Абхазии: Динамика, Оренбург', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1187, 1003, 772, 2, 'Отдых в Сочи: Динамика, Оренбург', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1188, 1678, 772, 19, 'Као Лак (W), Оренбург', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1189, 1574, 772, 19, 'Ко Чанг (W), Оренбург [+1]', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1190, 3657, 772, 19, 'Отдых в Као Лаке, Оренбург [+1]', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1191, 1555, 772, 19, 'Отдых в Ко Чанге, Оренбург [+1]', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1192, 1549, 772, 19, 'Отдых в Паттайе, Оренбург [+1]', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1193, 3910, 772, 19, 'Отдых в Хуахине, Оренбург [+1]', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1194, 1542, 772, 19, 'Отдых на Пхукете, Оренбург', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1195, 2128, 772, 19, 'Отдых на Самуи, Оренбург [+1]', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1196, 1580, 772, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Оренбург [+1]', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1197, 1607, 772, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Оренбург', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1198, 2111, 772, 19, 'Самуи (W), Оренбург [+1]', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1199, 3854, 772, 19, 'Хуахин (W), Оренбург [+1]', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1200, 1405, 814, 67, 'Отдых в Абхазии: Динамика NEW, Пермь', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1201, 1048, 814, 67, 'Отдых в Абхазии: Динамика, Пермь', '2024-09-13 12:35:45', '2024-09-13 12:35:45'),
(1202, 2961, 814, 6, 'Курорты Беларуси: Динамика, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1203, 3032, 814, 6, 'Минск: Динамика, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1204, 2154, 814, 10, 'Хургада (J), Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1205, 1344, 814, 10, 'Хургада (T), Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1206, 2169, 814, 10, 'Шарм-эль-Шейх (J), Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1207, 1353, 814, 10, 'Шарм-эль-Шейх (T), Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1208, 3719, 814, 33, 'Большое Индийское Путешествие, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1209, 3735, 814, 33, 'Восьмое Чудо Света: тур к Тадж Махалу, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1210, 1622, 814, 33, 'Гоа. а/к Аэрофлот, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1211, 3157, 814, 33, 'Золотой Треугольник и Варанаси, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1212, 3694, 814, 33, 'Золотой треугольник и отдых в Гоа, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1213, 3963, 814, 33, 'Золотой Треугольник и Праздник Огней Дивали, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1214, 3146, 814, 33, 'Золотой Треугольник + Кхаджурахо \"на поезде\", Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1215, 3663, 814, 33, 'Золотой Треугольник + Кхаджурахо \"на самолёте\", Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1216, 3131, 814, 33, 'Золотой Треугольник, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1217, 3208, 814, 33, 'Йога и Медитация, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1218, 3164, 814, 33, 'Классическая Индия, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1219, 3685, 814, 33, 'Классическая Индия через Читракут, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1220, 3712, 814, 33, 'Красочный Раджастхан, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1221, 3186, 814, 33, 'Невероятный Кашмир, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1222, 3175, 814, 33, 'Путешествие в Гималаи, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1223, 1750, 814, 23, 'Отдых на Варадеро: Динамика, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1224, 1488, 814, 23, 'Отдых на Варадеро, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1225, 1728, 814, 54, 'Маврикий, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1226, 1004, 814, 2, 'Отдых в Сочи: Динамика, Пермь', '2024-09-13 12:35:46', '2024-09-13 12:35:46'),
(1227, 3825, 814, 19, 'Ко Чанг (W), Пермь [+1]', '2024-09-13 12:35:47', '2024-09-13 12:35:47'),
(1228, 3875, 814, 19, 'Отдых в Ко Чанге, Пермь [+1]', '2024-09-13 12:35:47', '2024-09-13 12:35:47'),
(1229, 3870, 814, 19, 'Отдых в Паттайе, Пермь [+1]', '2024-09-13 12:35:47', '2024-09-13 12:35:47'),
(1230, 3908, 814, 19, 'Отдых в Хуахине, Пермь [+1]', '2024-09-13 12:35:47', '2024-09-13 12:35:47'),
(1231, 3878, 814, 19, 'Отдых на Самуи, Пермь [+1]', '2024-09-13 12:35:47', '2024-09-13 12:35:47'),
(1232, 3835, 814, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Пермь [+1]', '2024-09-13 12:35:47', '2024-09-13 12:35:47'),
(1233, 3841, 814, 19, 'Самуи (W), Пермь [+1]', '2024-09-13 12:35:47', '2024-09-13 12:35:47'),
(1234, 3858, 814, 19, 'Хуахин (W), Пермь [+1]', '2024-09-13 12:35:47', '2024-09-13 12:35:47'),
(1235, 939, 814, 9, 'Тур в Даламан, Пермь', '2024-09-13 12:35:47', '2024-09-13 12:35:47'),
(1236, 1406, 1144, 67, 'Отдых в Абхазии: Динамика NEW, Салехард', '2024-09-13 12:35:47', '2024-09-13 12:35:47'),
(1237, 1049, 1144, 67, 'Отдых в Абхазии: Динамика, Салехард', '2024-09-13 12:35:47', '2024-09-13 12:35:47'),
(1238, 1005, 1144, 2, 'Отдых в Сочи: Динамика, Салехард', '2024-09-13 12:35:47', '2024-09-13 12:35:47'),
(1239, 3503, 879, 67, 'Все вкусы Абхазии, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1240, 3497, 879, 67, 'Легенды Самурзакана, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1241, 1387, 879, 67, 'Отдых в Абхазии: Динамика NEW, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1242, 868, 879, 67, 'Отдых в Абхазии: Динамика, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1243, 3486, 879, 67, 'Семь Чудес Страны Души, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1244, 690, 879, 36, 'Аппетитный Азербайджан, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1245, 4522, 879, 36, 'На выходные в Баку, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1246, 4372, 879, 36, 'Новогодняя сказка в Баку - 29.12-02.01, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1247, 4396, 879, 36, 'Новогодняя сказка в Баку - 30.12-02.01, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1248, 4423, 879, 36, 'Новогодняя сказка в Баку - 30.12-03.01, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1249, 4449, 879, 36, 'Новогодняя сказка в Баку - 31.12-03.01, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1250, 2378, 879, 36, 'Отели Баку (Int.), Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1251, 695, 879, 36, 'Открой для себя Азербайджан, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1252, 4300, 879, 36, 'Рождественские каникулы в Баку - 02.01-05.01, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1253, 4324, 879, 36, 'Рождественские каникулы в Баку - 02.01-06.01, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1254, 4338, 879, 36, 'Рождественские каникулы в Баку - 02.01-07.01, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1255, 4354, 879, 36, 'Рождественские каникулы в Баку - 03.01-07.01, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1256, 2859, 879, 36, 'Тур на Формулу 1, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1257, 2681, 879, 36, 'Экскурсионный тур Баку-Губа, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1258, 4080, 879, 43, 'Нячанг + Хошимин 1 ночь (A): Аэрофлот до Хошимина, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1259, 3562, 879, 43, 'Нячанг + Хошимин 1 ночь (V): Аэрофлот до Хошимина, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1260, 4041, 879, 43, 'Тур в Фантхьет (A): Аэрофлот до Хошимина, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1261, 4109, 879, 43, 'Тур в Хошимин (A): Аэрофлот, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1262, 3607, 879, 43, 'Тур в Хошимин (V): Аэрофлот, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1263, 3574, 879, 43, 'Тур на Фукуок (V), Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1264, 4097, 879, 43, 'Фукуок + Хошимин 1 ночь (A): Аэрофлот до Хошимина, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1265, 2328, 879, 29, 'Тбилиси - прямой авиаперелет, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1266, 2325, 879, 29, 'Тбилиси, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1267, 4154, 879, 10, 'Гранд-тур с круизом по Нилу и отдыхом в Хургаде, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1268, 4149, 879, 10, 'Гранд-тур с круизом по Нилу, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1269, 4144, 879, 10, 'Открываем Каир, Абу-Симбел и Круиз по Нилу, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1270, 4124, 879, 10, 'Открываем Каир и Александрию, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1271, 4139, 879, 10, 'Открываем Каир и Круиз по Нилу, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1272, 4129, 879, 10, 'Открываем Каир и отдых в Хургаде, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1273, 4134, 879, 10, 'Открываем Каир и отдых в Шарм-эль-Шейхе, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1274, 4119, 879, 10, 'Открываем Каир, Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1275, 2151, 879, 10, 'Хургада (J), Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1276, 1341, 879, 10, 'Хургада (T), Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1277, 2166, 879, 10, 'Шарм-эль-Шейх (J), Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1278, 1350, 879, 10, 'Шарм-эль-Шейх (T), Самара', '2024-09-13 12:35:48', '2024-09-13 12:35:48'),
(1279, 3717, 879, 33, 'Большое Индийское Путешествие, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1280, 3733, 879, 33, 'Восьмое Чудо Света: тур к Тадж Махалу, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1281, 1620, 879, 33, 'Гоа. а/к Аэрофлот, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1282, 3407, 879, 33, 'Дели, Джйпур, Агра, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1283, 3155, 879, 33, 'Золотой Треугольник и Варанаси, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1284, 3692, 879, 33, 'Золотой треугольник и отдых в Гоа, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1285, 3961, 879, 33, 'Золотой Треугольник и Праздник Огней Дивали, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1286, 3143, 879, 33, 'Золотой Треугольник + Кхаджурахо \"на поезде\", Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1287, 3661, 879, 33, 'Золотой Треугольник + Кхаджурахо \"на самолёте\", Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1288, 3129, 879, 33, 'Золотой Треугольник, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1289, 3206, 879, 33, 'Йога и Медитация, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1290, 3162, 879, 33, 'Классическая Индия, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1291, 3683, 879, 33, 'Классическая Индия через Читракут, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1292, 3710, 879, 33, 'Красочный Раджастхан, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1293, 3184, 879, 33, 'Невероятный Кашмир, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1294, 3173, 879, 33, 'Путешествие в Гималаи, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1295, 2059, 879, 69, 'Отдых на о.Бали: а/к Flydubai / Emirates, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1296, 2058, 879, 69, 'Отдых на о.Бали, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1297, 3447, 879, 94, 'Звезды Персидского залива, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1298, 3125, 879, 94, 'Золотое кольцо Персии, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1299, 3800, 879, 31, 'Две столицы: Пекин - Шанхай - Пекин (KUF-GDS)', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1300, 3791, 879, 31, 'Древние столицы: Пекин - Сиань - Лоян - Пекин (KUF-GDS)', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1301, 3762, 879, 31, 'Знакомство со столицей (KUF-GDS)', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1302, 3777, 879, 31, 'Китайский Аватар: Пекин - Чжанцзяцзе - Пекин (KUF-GDS)', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1303, 3745, 879, 31, 'Классический Пекин (KUF-GDS)', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1304, 2659, 879, 31, 'Отдых на о. Хайнань (KUF-GDS Аэрофлот)', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1305, 2660, 879, 31, 'Отдых на о. Хайнань (KUF-GDS Аэрофлот) (E)', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1306, 3810, 879, 31, 'Пекин - Сиань - Чжанцзяцзе - Пекин (KUF-GDS)', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1307, 3820, 879, 31, 'Пекин – Шанхай – Сучжоу – Ханчжоу – Пекин (KUF-GDS)', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1308, 1771, 879, 31, 'Тур в Пекин (KUF-GDS) (E)', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1309, 1724, 879, 54, 'Маврикий, Самара', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1310, 2064, 879, 41, 'Лангкави, Самара [Emirates]', '2024-09-13 12:35:49', '2024-09-13 12:35:49'),
(1311, 849, 879, 50, 'Мальдивы SPO_1 (KUF-GDS)', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1312, 3191, 879, 50, 'Мальдивы SPO_2 (KUF-GDS)', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1313, 780, 879, 13, 'ОАЭ / перилёт в Дубай, Самара: Динамика', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1314, 3258, 879, 13, 'ОАЭ / прямой перелёт в Шарджу, Самара: Динамика', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1315, 4226, 879, 2, 'Week End Москва, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1316, 3303, 879, 2, 'Азбука Экскурсий, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1317, 3311, 879, 2, 'В Калининград в любой день, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1318, 3320, 879, 2, 'В Тридевятом Царстве, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1319, 803, 879, 2, 'КавМинВоды: Динамика, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1320, 793, 879, 2, 'Калининград: Динамика, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1321, 4234, 879, 2, 'Классическая Москва, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1322, 3357, 879, 2, 'Королевские выходные, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1323, 823, 879, 2, 'Красная Поляна: Динамика, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1324, 4176, 879, 2, 'Москва: Динамика, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1325, 4242, 879, 2, 'Москва Макси, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1326, 4250, 879, 2, 'Мос Тус Москва, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1327, 3336, 879, 2, 'На самом западе, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1328, 813, 879, 2, 'Отдых в Сочи: Динамика, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1329, 3677, 879, 2, 'Путешествие по Вологодской земле на автобусе, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1330, 3707, 879, 2, 'Санкт-Петербург и летние хиты Карелии, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1331, 3672, 879, 2, 'Санкт-Петербург, Самара', '2024-09-13 12:35:50', '2024-09-13 12:35:50'),
(1332, 1451, 879, 78, 'Отдых на Сейшелах, Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1333, 1671, 879, 78, 'Сейшелы, отдых на о.Маэ: Динамика, Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1334, 1679, 879, 19, 'Као Лак (W), Самара [+1]', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1335, 1570, 879, 19, 'Ко Чанг (W), Самара [+1]', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1336, 3630, 879, 19, 'Отдых в Као Лаке, Самара [+1]', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1337, 1552, 879, 19, 'Отдых в Ко Чанге, Самара [+1]', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1338, 1546, 879, 19, 'Отдых в Паттайе, Самара [+1]', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1339, 3904, 879, 19, 'Отдых в Хуахине, Самара [+1]', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1340, 1539, 879, 19, 'Отдых на Пхукете, Самара [+1]', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1341, 2129, 879, 19, 'Отдых на Самуи, Самара [+1]', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1342, 1576, 879, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Самара [+1]', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1343, 1603, 879, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Самара [+1]', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1344, 2112, 879, 19, 'Самуи (W), Самара [+1]', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1345, 3848, 879, 19, 'Хуахин (W), Самара [+1]', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1346, 2616, 879, 9, 'По следам великих цивилизаций, Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1347, 1324, 879, 9, 'Тур в Анталию (A), Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1348, 289, 879, 9, 'Тур в Анталию (C), Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1349, 973, 879, 9, 'Тур в Анталию (P), Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1350, 2271, 879, 9, 'Тур в Анталию (R), Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1351, 935, 879, 9, 'Тур в Даламан, Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1352, 926, 879, 9, 'Тур в Измир, Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1353, 1657, 879, 9, 'Тур в Стамбул (A), Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1354, 886, 879, 9, 'Тур в Стамбул (P), Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1355, 1785, 879, 9, 'Тур в Стамбул (Q), Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1356, 762, 879, 52, 'Шри-Ланка (A), отель с 1-го дня, Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1357, 759, 879, 52, 'Шри-Ланка (A), отель со 2-го дня, Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1358, 2588, 879, 52, 'Шри-Ланка (E), отель с 1-го дня, Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1359, 2589, 879, 52, 'Шри-Ланка (E), отель со 2-го дня, Самара', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1360, 3500, 1114, 67, 'Все вкусы Абхазии, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1361, 3494, 1114, 67, 'Легенды Самурзакана, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1362, 1377, 1114, 67, 'Отдых в Абхазии: Динамика NEW, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1363, 200, 1114, 67, 'Отдых в Абхазии: Динамика, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1364, 3483, 1114, 67, 'Семь Чудес Страны Души, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1365, 670, 1114, 36, 'Аппетитный Азербайджан, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1366, 669, 1114, 36, 'Баку в итальянском стиле, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1367, 668, 1114, 36, 'БАКУ - город искусств, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1368, 672, 1114, 36, 'Большой тур по Шелковому Пути, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1369, 2765, 1114, 36, 'Викинги в Азербайджане!, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1370, 2752, 1114, 36, 'Гастро-тур в Азербайджан, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1371, 2699, 1114, 36, 'Горы Кавказа, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1372, 2489, 1114, 36, 'На выходные в Баку, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1373, 2776, 1114, 36, 'Нефть Азербайджана и Нобелевская премия, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1374, 4368, 1114, 36, 'Новогодняя сказка в Баку - 29.12-02.01, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1375, 4392, 1114, 36, 'Новогодняя сказка в Баку - 30.12-02.01, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1376, 4419, 1114, 36, 'Новогодняя сказка в Баку - 30.12-03.01, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1377, 4444, 1114, 36, 'Новогодняя сказка в Баку - 31.12-03.01, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1378, 2367, 1114, 36, 'Отели Баку (Int.), СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1379, 673, 1114, 36, 'Открой для себя Азербайджан, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1380, 667, 1114, 36, 'Открой для себя Баку, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1381, 2716, 1114, 36, 'Путешествие на Кавказ по местам А. Дюма, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1382, 2731, 1114, 36, 'Религиозные святыни Баку, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1383, 4296, 1114, 36, 'Рождественские каникулы в Баку - 02.01-05.01, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1384, 4320, 1114, 36, 'Рождественские каникулы в Баку - 02.01-06.01, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1385, 4334, 1114, 36, 'Рождественские каникулы в Баку - 02.01-07.01, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1386, 4350, 1114, 36, 'Рождественские каникулы в Баку - 03.01-07.01, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1387, 2854, 1114, 36, 'Тур на Формулу 1, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1388, 666, 1114, 36, 'Эконом тур - Открой для себя Баку, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1389, 2683, 1114, 36, 'Экскурсионный тур Баку-Губа, СПб', '2024-09-13 12:35:51', '2024-09-13 12:35:51'),
(1390, 1886, 1114, 24, 'Армения Лайт (LED_GDS)', '2024-09-13 12:35:52', '2024-09-13 12:35:52'),
(1391, 1876, 1114, 24, 'Армения не за горами (LED_GDS)', '2024-09-13 12:35:52', '2024-09-13 12:35:52'),
(1392, 1878, 1114, 24, 'Вкус Армении (LED_GDS)', '2024-09-13 12:35:52', '2024-09-13 12:35:52'),
(1393, 1865, 1114, 24, 'Вся Армения за неделю (LED_GDS)', '2024-09-13 12:35:52', '2024-09-13 12:35:52'),
(1394, 1884, 1114, 24, 'Классика двух столиц Ереван-Гюмри (LED_GDS)', '2024-09-13 12:35:52', '2024-09-13 12:35:52'),
(1395, 1882, 1114, 24, 'Сказочный уикенд в Армении (LED_GDS)', '2024-09-13 12:35:52', '2024-09-13 12:35:52'),
(1396, 15, 1114, 68, 'Бахрейн, СПб', '2024-09-13 12:35:52', '2024-09-13 12:35:52'),
(1397, 2207, 1114, 68, 'Бахрейн, СПб а/к Etihad', '2024-09-13 12:35:52', '2024-09-13 12:35:52'),
(1398, 2890, 1114, 6, 'Белорусская Кругосветка, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1399, 2869, 1114, 6, 'Белорусский Калейдоскоп, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1400, 3092, 1114, 6, 'Все дороги ведут в Мир, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1401, 3087, 1114, 6, 'Гомельская классика, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1402, 3097, 1114, 6, 'Королевский Гродно, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1403, 2954, 1114, 6, 'Курорты Беларуси: Динамика, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1404, 3489, 1114, 6, 'Курорты Беларуси (К), СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1405, 3025, 1114, 6, 'Минск: Динамика, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1406, 2895, 1114, 6, 'Тысячелетний Брест, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1407, 2529, 1114, 45, 'Будапешт, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1408, 2594, 1114, 45, 'Две столицы Европы: Будапешт- Вена, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1409, 2602, 1114, 45, 'Истина в вине и здоровье, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1410, 2534, 1114, 45, 'Термальные курорты Венгрии, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1411, 2598, 1114, 45, 'Три столицы Европы: Будапешт- Братислава-Вена, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1412, 3278, 1114, 43, 'Большой Индокитайский Вояж: Вьетнам + Лаос + Камбоджа, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1413, 4074, 1114, 43, 'Нячанг + Хошимин 1 ночь (A): Аэрофлот до Хошимина, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1414, 3558, 1114, 43, 'Нячанг + Хошимин 1 ночь (V): Аэрофлот до Хошимина, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1415, 4049, 1114, 43, 'Тур в Нячанг (A), СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1416, 4037, 1114, 43, 'Тур в Фантхьет (A): Аэрофлот до Хошимина, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1417, 4103, 1114, 43, 'Тур в Хошимин (A): Аэрофлот, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1418, 3603, 1114, 43, 'Тур в Хошимин (V): Аэрофлот, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1419, 3570, 1114, 43, 'Тур на Фукуок (V), СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1420, 4091, 1114, 43, 'Фукуок + Хошимин 1 ночь (A): Аэрофлот до Хошимина, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1421, 3459, 1114, 29, 'Батуми (R), СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1422, 2319, 1114, 29, 'Тбилиси, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1423, 1928, 1114, 10, 'Гранд-тур с круизом по Нилу и отдыхом в Хургаде, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1424, 1924, 1114, 10, 'Гранд-тур с круизом по Нилу, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1425, 1916, 1114, 10, 'Открываем Каир, Абу-Симбел и Круиз по Нилу, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1426, 1872, 1114, 10, 'Открываем Каир и Александрию, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1427, 1889, 1114, 10, 'Открываем Каир и Круиз по Нилу, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1428, 1111, 1114, 10, 'Открываем Каир и отдых в Хургаде, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1429, 1116, 1114, 10, 'Открываем Каир и отдых в Шарм-эль-Шейхе, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1430, 1868, 1114, 10, 'Открываем Каир, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1431, 2144, 1114, 10, 'Хургада (J), СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1432, 21, 1114, 10, 'Хургада (T), СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1433, 2159, 1114, 10, 'Шарм-эль-Шейх (J), СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1434, 53, 1114, 10, 'Шарм-эль-Шейх (T), СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1435, 177, 1114, 33, 'Большое Индийское Путешествие, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1436, 3729, 1114, 33, 'Восьмое Чудо Света: тур к Тадж Махалу, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53');
INSERT INTO `samotour_tours` (`id`, `id_tour`, `id_city`, `id_country`, `name`, `created_at`, `updated_at`) VALUES
(1437, 237, 1114, 33, 'Гоа. а/к Аэрофлот, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1438, 3403, 1114, 33, 'Дели, Джйпур, Агра, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1439, 187, 1114, 33, 'Золотой Треугольник и Варанаси, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1440, 1478, 1114, 33, 'Золотой треугольник и отдых в Гоа, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1441, 3956, 1114, 33, 'Золотой Треугольник и Праздник Огней Дивали, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1442, 166, 1114, 33, 'Золотой Треугольник + Кхаджурахо \"на поезде\", СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1443, 165, 1114, 33, 'Золотой Треугольник + Кхаджурахо \"на самолёте\", СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1444, 164, 1114, 33, 'Золотой Треугольник, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1445, 3201, 1114, 33, 'Йога и Медитация, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1446, 1470, 1114, 33, 'Классическая Индия, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1447, 1474, 1114, 33, 'Классическая Индия через Читракут, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1448, 190, 1114, 33, 'Красочный Раджастхан, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1449, 3179, 1114, 33, 'Невероятный Кашмир, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1450, 1631, 1114, 33, 'Отдых в Керале: а/п Кочи, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1451, 1637, 1114, 33, 'Отдых в Керале: а/п Тривандрум, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1452, 3168, 1114, 33, 'Путешествие в Гималаи, СПб', '2024-09-13 12:35:53', '2024-09-13 12:35:53'),
(1453, 81, 1114, 69, 'Отдых на о.Бали, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1454, 3978, 1114, 69, 'Рекламный тур \"Бали - Ломбок - Куала-Лумпур\"', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1455, 158, 1114, 69, 'Убуд (2н) + отдых на о.Бали, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1456, 3442, 1114, 94, 'Звезды Персидского залива, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1457, 3118, 1114, 94, 'Золотое кольцо Персии, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1458, 4019, 1114, 94, 'Золотое кольцо Персии. Тур на Новый Год, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1459, 2413, 1114, 15, 'Горячая Испанская десятка, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1460, 2414, 1114, 15, 'Жемчужины Средиземноморья, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1461, 3586, 1114, 15, 'Знакомство с Барселоной, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1462, 3597, 1114, 15, 'Испанская серенада, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1463, 3600, 1114, 15, 'Ривьера Средиземноморья, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1464, 3582, 1114, 15, 'Три Королевства, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1465, 1106, 1114, 48, 'Отдых на о. Искья, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1466, 3048, 1114, 48, 'Отдых на побережье Одиссея, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1467, 1095, 1114, 48, 'Отдых на Сицилии (а/п Катании), СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1468, 1130, 1114, 48, 'Отдых на Сицилии (а/п Палермо), СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1469, 2389, 1114, 63, 'Тур в Доху (Int.), СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1470, 2802, 1114, 84, 'Полет в Масаи Мара, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1471, 395, 1114, 84, 'Тур №1: Найроби - парк Масаи Мара, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1472, 397, 1114, 84, 'Тур №2: Найроби - парк Масаи Мара - озеро Найваша, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1473, 399, 1114, 84, 'Тур №3: Найроби - Масаи Мара - озеро Найваша - озеро Накуру, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1474, 403, 1114, 84, 'Тур №5: Найроби - парк Масаи Мара - озеро Найваша - парк Абердаре, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1475, 405, 1114, 84, 'Тур №6: Найроби - парк Масаи Мара - озеро Найваша - парк Абердаре - парк Амбосели, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1476, 407, 1114, 84, 'Тур №7: Найроби - парк Масаи Мара - озеро Найваша - парк Абердаре - парк Амбосели, СПб', '2024-09-13 12:35:54', '2024-09-13 12:35:54'),
(1477, 1422, 1114, 73, 'Отдых на Кипре, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1478, 1445, 1114, 31, 'В гости к Аватару заезд в Пекин (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1479, 2847, 1114, 31, 'В гости к Аватару заезд в Шанхай (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1480, 1443, 1114, 31, 'В гости к Панде (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1481, 2839, 1114, 31, 'Гранд тур + В гости к панде (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1482, 2832, 1114, 31, 'Гранд тур Всё лучшее в Китае заезд в Пекин (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1483, 1976, 1114, 31, 'Гранд тур Всё лучшее в Китае заезд в Шанхай (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1484, 1431, 1114, 31, 'Гранд тур + круиз по реке Янцзы (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1485, 2834, 1114, 31, 'Гранд тур + Летающие Горы Аватар (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1486, 2836, 1114, 31, 'Гранд тур + Магический Гуйлинь (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1487, 1430, 1114, 31, 'Две столицы империи (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1488, 1438, 1114, 31, 'Две столицы Империи с горами Хуашань (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1489, 3797, 1114, 31, 'Две столицы: Пекин - Шанхай - Пекин (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1490, 3787, 1114, 31, 'Древние столицы: Пекин - Сиань - Лоян - Пекин (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1491, 2841, 1114, 31, 'Другой мир: Неповторимый Китай и крыша Мира (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1492, 3760, 1114, 31, 'Знакомство со столицей (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1493, 3774, 1114, 31, 'Китайский Аватар: Пекин - Чжанцзяцзе - Пекин (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1494, 1447, 1114, 31, 'Китайский новый поход заезд в Пекин (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1495, 2850, 1114, 31, 'Китайский новый поход заезд в Шанхай (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1496, 3742, 1114, 31, 'Классический Пекин (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1497, 2810, 1114, 31, 'Магический Гуйлинь (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1498, 1433, 1114, 31, 'Мега тур: Старый и Новый Китай заезд в Пекин (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1499, 2844, 1114, 31, 'Мега тур: Старый и Новый Китай заезд в Шанхай (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1500, 1073, 1114, 31, 'Отдых на о. Хайнань (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1501, 1731, 1114, 31, 'Отдых на о. Хайнань (LED-GDS) (E)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1502, 3520, 1114, 31, 'Отдых на о. Хайнань (LED-GDS Аэрофлот)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1503, 3521, 1114, 31, 'Отдых на о. Хайнань (LED-GDS Аэрофлот) (E)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1504, 1362, 1114, 31, 'Пекин без границ (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1505, 3807, 1114, 31, 'Пекин - Сиань - Чжанцзяцзе - Пекин (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1506, 1427, 1114, 31, 'Пекин-Шанхай (скоростной поезд) (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1507, 1982, 1114, 31, 'Пекин-Шанхай-Сучжоу (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1508, 3817, 1114, 31, 'Пекин – Шанхай – Сучжоу – Ханчжоу – Пекин (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1509, 1440, 1114, 31, 'Среди летающих гор (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1510, 1441, 1114, 31, 'Три столицы Империи (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1511, 1742, 1114, 31, 'Тур в Пекин (LED-GDS) (E)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1512, 1745, 1114, 23, 'Отдых на Варадеро: Динамика, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1513, 1333, 1114, 23, 'Отдых на Варадеро, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1514, 330, 1114, 54, 'Маврикий, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1515, 2174, 1114, 41, 'Борнео, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1516, 3972, 1114, 41, 'Куала-Лумпур (2н) + Десару, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1517, 3546, 1114, 41, 'Куала-Лумпур (2н.) + Лангкави + Сингапур (2н.), СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1518, 35, 1114, 41, 'Куала-Лумпур (2н) + о.Борнео, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1519, 40, 1114, 41, 'Куала-Лумпур (2н) + о.Лангкави, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1520, 3975, 1114, 41, 'Куала-Лумпур (2н) + Пенанг, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1521, 3952, 1114, 41, 'Куала-Лумпур + Десару, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1522, 4114, 1114, 41, 'Куала-Лумпур и Бруней, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1523, 2045, 1114, 41, 'Лангкави, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1524, 3969, 1114, 41, 'Пенанг, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1525, 1971, 1114, 41, 'Сингапур (2н) + Десару, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1526, 3954, 1114, 41, 'Сингапур + Десару, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1527, 4070, 1114, 41, 'Удивительная Малайзия + Лангкави, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1528, 2048, 1114, 41, 'Удивительная Малайзия, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1529, 256, 1114, 50, 'Мальдивы SPO_1 (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1530, 51, 1114, 50, 'Мальдивы SPO_1 (LED-GDS +1)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1531, 3140, 1114, 50, 'Мальдивы SPO_2 (LED-GDS)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1532, 3149, 1114, 50, 'Мальдивы SPO_2 (LED-GDS +1)', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1533, 3213, 1114, 106, 'Загадочный Катманду и Гималаи, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1534, 3221, 1114, 106, 'Золотой треугольник Непала, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1535, 3217, 1114, 106, 'Открывая Непал, СПб', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1536, 862, 1114, 13, 'ОАЭ / перелёт в Дубай / все рейсы, СПб: Динамика', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1537, 1718, 1114, 13, 'ОАЭ / прямой перелёт в Абу-Даби, СПб: Динамика', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1538, 858, 1114, 13, 'ОАЭ / прямой перелёт в Дубай / 1 ночь в полёте, СПб: Динамика', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1539, 857, 1114, 13, 'ОАЭ / прямой перелёт в Дубай, СПб: Динамика', '2024-09-13 12:35:55', '2024-09-13 12:35:55'),
(1540, 1015, 1114, 76, 'Тур в Маскат, СПб: Динамика', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1541, 2206, 1114, 76, 'Тур в Маскат, СПб: Динамика a/k Etihad', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1542, 3300, 1114, 2, 'Азбука Экскурсий, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1543, 4016, 1114, 2, 'Астрахань (конструктор), СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1544, 3294, 1114, 2, 'Балтийский экспресс Friday, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1545, 4450, 1114, 2, 'Больше, чем путешествие на Кавказ, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1546, 4463, 1114, 2, 'Большой тур по Кавказу, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1547, 4477, 1114, 2, 'В горах мое сердце, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1548, 3039, 1114, 2, 'В гости к аланам, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1549, 263, 1114, 2, 'В Калининград в любой день, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1550, 4435, 1114, 2, 'Вояж в созвездие гор, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1551, 3259, 1114, 2, 'В Сибирь по своей воле, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1552, 3317, 1114, 2, 'В Тридевятом Царстве, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1553, 3937, 1114, 2, 'Выходные в Красноярске, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1554, 2882, 1114, 2, 'Выходные в Осетии, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1555, 4491, 1114, 2, 'Выше горы - круче виды, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1556, 3931, 1114, 2, 'Гастрономический Красноярск: Вкусы Енисейской Сибири, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1557, 4288, 1114, 2, 'Гранд тур по Нижегородской области, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1558, 3074, 1114, 2, 'Загадки Кавказских ущелий, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1559, 1975, 1114, 2, 'Зимний экспресс на Родину Деда Мороза 2025', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1560, 4387, 1114, 2, 'Знакомство с Чечней и Дагестаном, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1561, 4410, 1114, 2, 'Кавказ - погружение в историю и традиции, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1562, 59, 1114, 2, 'КавМинВоды: Динамика, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1563, 4430, 1114, 2, 'Кавминводы - Кабардино-Балкария, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1564, 4414, 1114, 2, 'Кавминводы - Карачаево-Черкесия, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1565, 835, 1114, 2, 'Казань: Динамика, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1566, 789, 1114, 2, 'Калининград: Динамика, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1567, 4169, 1114, 2, 'Калининград на Рождество (без доплат): Динамика, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1568, 4439, 1114, 2, 'К гордым красотам Кавказа, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1569, 4403, 1114, 2, 'Классическое путешествие на Кавказ, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1570, 3354, 1114, 2, 'Королевские выходные, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1571, 4474, 1114, 2, 'Краски Кавказа, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1572, 48, 1114, 2, 'Красная Поляна: Динамика, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1573, 4384, 1114, 2, 'Красота гор и сила традиций, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1574, 3072, 1114, 2, 'Легенды Горцев, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1575, 4012, 1114, 2, 'Мосты Владивостока и отдых на теплом море, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1576, 262, 1114, 2, 'На самом западе, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1577, 4406, 1114, 2, 'На склонах гор, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1578, 4507, 1114, 2, 'Нерассказанные истории в краю гор, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1579, 4219, 1114, 2, 'Новогодние каникулы в Кисловодске, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1580, 4203, 1114, 2, 'Новогодние чудеса Кавказа, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1581, 4211, 1114, 2, 'Новый Год в Кисловодске, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1582, 268, 1114, 2, 'Огни Дагестана, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1583, 3077, 1114, 2, 'Однажды в горах Осетии и Ингушетии, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1584, 3044, 1114, 2, 'Осетия - Ингушетия, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1585, 45, 1114, 2, 'Отдых в Сочи: Динамика, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1586, 4190, 1114, 2, 'от Кавминвод до Дагестана, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1587, 2874, 1114, 2, 'Открывая Осетию, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1588, 2885, 1114, 2, 'Привет, Алания!, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1589, 4484, 1114, 2, 'Притяжение Кавказа, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1590, 4495, 1114, 2, 'Путешествие в сердце кавказских гор, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1591, 4499, 1114, 2, 'Путешествие с кавказским акцентом, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1592, 3263, 1114, 2, 'Романовы в Сибири, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1593, 4487, 1114, 2, 'Самые гостеприимные горы России, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1594, 4471, 1114, 2, 'Северная Осетия - Кабардино-Балкария, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1595, 4481, 1114, 2, 'Средь гор высоких и могучих, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1596, 3042, 1114, 2, 'Тайны древнего Иристона, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1597, 3063, 1114, 2, 'Танец вечности и современности, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1598, 4511, 1114, 2, 'Твоя встреча с Кавказом, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1599, 3267, 1114, 2, 'Тюменские термы. Горячее сердце Сибири, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1600, 3271, 1114, 2, 'Черное золото Сибири, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1601, 4381, 1114, 2, 'Это Кавказ, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1602, 3037, 1114, 2, 'Яблоко Нартов, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1603, 4459, 1114, 2, 'Яркие образы Кавказа, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1604, 844, 1114, 78, 'Отдых на Сейшелах, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1605, 160, 1114, 78, 'Сейшелы, отдых на о.Маэ: Динамика, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1606, 569, 1114, 46, 'Едем и Едим, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1607, 4518, 1114, 46, 'От Белграда до Сараево, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1608, 575, 1114, 46, 'Россия и Сербия: Связь времен и поколений, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1609, 4515, 1114, 46, 'Сербия Мини-тур, СПб', '2024-09-13 12:35:56', '2024-09-13 12:35:56'),
(1610, 1701, 1114, 87, 'Тур в Сингапур, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1611, 1707, 1114, 87, 'Тур на о.Сентоса, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1612, 3231, 1114, 55, 'Любляна, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1613, 3136, 1114, 55, 'Отдых на озерах Словении, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1614, 3082, 1114, 55, 'Отдых на побережье Словении, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1615, 3377, 1114, 55, 'Термальные курорты Словении, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1616, 2024, 1114, 19, 'Као Лак (W). Прямой авиаперелет, СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1617, 1682, 1114, 19, 'Као Лак (W), СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1618, 4543, 1114, 19, 'Ко Чанг (W), Спб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1619, 1533, 1114, 19, 'Ко Чанг (W), СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1620, 3055, 1114, 19, 'Новые дизайнерские апартаменты Skypark в Laguna beach, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1621, 3652, 1114, 19, 'Отдых в Као Лаке, прямой авиаперелет, СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1622, 3642, 1114, 19, 'Отдых в Као Лаке, СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1623, 4544, 1114, 19, 'Отдых в Ко Чанге, Спб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1624, 107, 1114, 19, 'Отдых в Ко Чанге, СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1625, 4541, 1114, 19, 'Отдых в Паттайе, Спб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1626, 7, 1114, 19, 'Отдых в Паттайе, СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1627, 4545, 1114, 19, 'Отдых в Хуахине, Спб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1628, 3894, 1114, 19, 'Отдых в Хуахине, СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1629, 2027, 1114, 19, 'Отдых на Пхукете. Прямой авиаперелет, СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1630, 110, 1114, 19, 'Отдых на Пхукете, СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1631, 4547, 1114, 19, 'Отдых на Самуи, Спб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1632, 619, 1114, 19, 'Отдых на Самуи, СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1633, 4542, 1114, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Спб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1634, 1536, 1114, 19, 'Паттайя (W), Обзорная экскурсия в подарок, СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1635, 1506, 1114, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1636, 2028, 1114, 19, 'Пхукет (W), Прямой авиаперелет, Групповой трансфер и обзорная экскурсия в подарок, СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1637, 4548, 1114, 19, 'Самуи (W), Спб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1638, 1563, 1114, 19, 'Самуи (W), СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1639, 4546, 1114, 19, 'Хуахин (W), Спб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1640, 2741, 1114, 19, 'Хуахин (W), СПб [+1]', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1641, 333, 1114, 83, 'Танзания: Занзибар (V), СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1642, 3068, 1114, 83, 'Танзания: Занзибар (G), СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1643, 2607, 1114, 9, 'По следам великих цивилизаций, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1644, 2179, 1114, 9, 'Тур в Анталию (A): Прямой рейс, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1645, 1315, 1114, 9, 'Тур в Анталию (A), СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1646, 2180, 1114, 9, 'Тур в Анталию (C): Прямой рейс, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1647, 124, 1114, 9, 'Тур в Анталию (C), СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1648, 2181, 1114, 9, 'Тур в Анталию (P): Прямой рейс, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1649, 964, 1114, 9, 'Тур в Анталию (P), СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1650, 2257, 1114, 9, 'Тур в Анталию (R): Прямой рейс, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1651, 2256, 1114, 9, 'Тур в Анталию (R), СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1652, 2553, 1114, 9, 'Тур в Бодрум (P), СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1653, 5, 1114, 9, 'Тур в Бодрум (С), СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1654, 905, 1114, 9, 'Тур в Даламан, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1655, 921, 1114, 9, 'Тур в Измир, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1656, 2176, 1114, 9, 'Тур в Стамбул (A): Прямой рейс, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1657, 1647, 1114, 9, 'Тур в Стамбул (A), СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1658, 2177, 1114, 9, 'Тур в Стамбул (P): Прямой рейс, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1659, 4, 1114, 9, 'Тур в Стамбул (P), СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1660, 2178, 1114, 9, 'Тур в Стамбул (Q): Прямой рейс, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1661, 1775, 1114, 9, 'Тур в Стамбул (Q), СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1662, 3071, 1114, 35, 'Магический Узбекистан, СПб (без доплат)', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1663, 3253, 1114, 35, 'Сокровища Узбекистана. Гарант. группа', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1664, 2397, 1114, 35, 'Сокровища Узбекистана, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1665, 3254, 1114, 35, 'Сокровища Узбекистана + Хива Гарант. группа', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1666, 3424, 1114, 40, 'Апартаменты в Ницце, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1667, 3914, 1114, 40, 'Париж - Нормандия - Бретань, СПб', '2024-09-13 12:35:57', '2024-09-13 12:35:57'),
(1668, 4468, 1114, 66, 'Белград + Наследие Черногории, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1669, 3466, 1114, 104, 'В гостях у Сказки, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1670, 3469, 1114, 104, 'Золотой перевал, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1671, 3472, 1114, 104, 'Каникулы в стране Озер, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1672, 3475, 1114, 104, 'Мюнхен-Цюрих, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1673, 758, 1114, 52, 'Шри-Ланка (A), отель со 2-го дня, Спб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1674, 11, 1114, 52, 'Шри-Ланка (A), отель со 2-го дня, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1675, 2581, 1114, 52, 'Шри-Ланка (E), отель со 2-го дня, Спб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1676, 2582, 1114, 52, 'Шри-Ланка (E), отель со 2-го дня, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1677, 3248, 1114, 91, 'Wellness тур на Юг: о.Чеджу - Сеул, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1678, 3385, 1114, 91, 'Гастрономический Сеул, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1679, 3238, 1114, 91, 'Главные места Кореи, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1680, 4312, 1114, 91, 'Гранд Тур по Корее (групповой), СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1681, 4317, 1114, 91, 'Гранд Тур по Корее (индивидуальный), СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1682, 3439, 1114, 91, 'Динамичное трио: Приключение в Пусане, Кёнчжу и Сеуле, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1683, 3245, 1114, 91, 'Золотая осень в Корее, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1684, 3925, 1114, 91, 'Когда цветут камелии, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1685, 2813, 1114, 91, 'Краски осени, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1686, 3235, 1114, 91, 'Насыщенный Сеул, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1687, 3985, 1114, 91, 'Новый год в Южной Корее, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1688, 3389, 1114, 91, 'По Корее: Север - Восток - Юг, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1689, 3398, 1114, 91, 'По Корее: Север - Запад - Юг, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1690, 3917, 1114, 91, 'Природа история и Мегаполисы, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1691, 4308, 1114, 91, 'Сакура в Цвету, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1692, 3920, 1114, 91, 'Север-Восток: очарование природы и самобытная культура, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1693, 2822, 1114, 91, 'Сеульские Истории, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1694, 3382, 1114, 91, 'Сеул \"Эконом\", СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1695, 3981, 1114, 91, 'Цветение вишни в Корее, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1696, 3370, 1114, 32, 'Жемчужины Японского моря + горячие источники, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1697, 377, 1114, 32, 'Классическая Япония Токио-Киото, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1698, 374, 1114, 32, 'Классическая Япония Токио-Токио, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1699, 3373, 1114, 32, 'От моря к океану + горячие источники, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1700, 379, 1114, 32, 'Токио вчера и сегодня, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1701, 3367, 1114, 32, 'Япония с Востока на Запад Токио-Киото, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1702, 383, 1114, 32, 'Япония с Востока на Запад Токио-Токио, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1703, 4052, 1114, 32, 'Японские клены, горячие источники и снежные обезьяны, СПб', '2024-09-13 12:35:58', '2024-09-13 12:35:58'),
(1704, 1407, 96, 67, 'Отдых в Абхазии: Динамика NEW, Саранск', '2024-09-13 12:35:59', '2024-09-13 12:35:59'),
(1705, 1050, 96, 67, 'Отдых в Абхазии: Динамика, Саранск', '2024-09-13 12:35:59', '2024-09-13 12:35:59'),
(1706, 1009, 96, 2, 'Отдых в Сочи: Динамика, Саранск', '2024-09-13 12:35:59', '2024-09-13 12:35:59'),
(1707, 1408, 898, 67, 'Отдых в Абхазии: Динамика NEW, Саратов', '2024-09-13 12:35:59', '2024-09-13 12:35:59'),
(1708, 1051, 898, 67, 'Отдых в Абхазии: Динамика, Саратов', '2024-09-13 12:35:59', '2024-09-13 12:35:59'),
(1709, 1010, 898, 2, 'Отдых в Сочи: Динамика, Саратов', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1710, 682, 1961, 36, 'Аппетитный Азербайджан, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1711, 684, 1961, 36, 'Баку в итальянском стиле, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1712, 683, 1961, 36, 'БАКУ - город искусств, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1713, 2748, 1961, 36, 'Гастро-тур в Азербайджан, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1714, 2483, 1961, 36, 'На выходные в Баку, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1715, 2772, 1961, 36, 'Нефть Азербайджана и Нобелевская премия, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1716, 4369, 1961, 36, 'Новогодняя сказка в Баку - 29.12-02.01, Сочи', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1717, 4393, 1961, 36, 'Новогодняя сказка в Баку - 30.12-02.01, Сочи', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1718, 4420, 1961, 36, 'Новогодняя сказка в Баку - 30.12-03.01, Сочи', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1719, 4445, 1961, 36, 'Новогодняя сказка в Баку - 31.12-03.01, Сочи', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1720, 2373, 1961, 36, 'Отели Баку (Int.), Сочи', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1721, 687, 1961, 36, 'Открой для себя Азербайджан, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1722, 688, 1961, 36, 'Открой для себя Баку, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1723, 2711, 1961, 36, 'Путешествие на Кавказ по местам А. Дюма, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1724, 2727, 1961, 36, 'Религиозные святыни Баку, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1725, 4297, 1961, 36, 'Рождественские каникулы в Баку - 02.01-05.01, Сочи', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1726, 4321, 1961, 36, 'Рождественские каникулы в Баку - 02.01-06.01, Сочи', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1727, 4335, 1961, 36, 'Рождественские каникулы в Баку - 02.01-07.01, Сочи', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1728, 4351, 1961, 36, 'Рождественские каникулы в Баку - 03.01-07.01, Сочи', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1729, 689, 1961, 36, 'Эконом тур - Открой для себя Баку, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1730, 2678, 1961, 36, 'Экскурсионный тур Баку-Губа, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1731, 2320, 1961, 29, 'Тбилиси, Сочи', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1732, 2155, 1961, 10, 'Хургада (J), Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1733, 863, 1961, 10, 'Хургада (T), Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1734, 2170, 1961, 10, 'Шарм-эль-Шейх (J), Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1735, 864, 1961, 10, 'Шарм-эль-Шейх (T), Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1736, 3261, 1961, 2, 'В Сибирь по своей воле, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1737, 3940, 1961, 2, 'Выходные в Красноярске, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1738, 3934, 1961, 2, 'Гастрономический Красноярск: Вкусы Енисейской Сибири, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1739, 4291, 1961, 2, 'Гранд тур по Нижегородской области, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1740, 3265, 1961, 2, 'Романовы в Сибири, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1741, 3269, 1961, 2, 'Тюменские термы. Горячее сердце Сибири, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1742, 3273, 1961, 2, 'Черное золото Сибири, Адлер', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1743, 1676, 1961, 19, 'Као Лак (W), Сочи', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1744, 1571, 1961, 19, 'Ко Чанг (W), Сочи [+1]', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1745, 3654, 1961, 19, 'Отдых в Као Лаке, Сочи [+1]', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1746, 1554, 1961, 19, 'Отдых в Ко Чанге, Сочи [+1]', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1747, 1548, 1961, 19, 'Отдых в Паттайе, Сочи [+1]', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1748, 3905, 1961, 19, 'Отдых в Хуахине, Сочи [+1]', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1749, 1541, 1961, 19, 'Отдых на Пхукете, Сочи', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1750, 2130, 1961, 19, 'Отдых на Самуи, Сочи [+1]', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1751, 1577, 1961, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Сочи [+1]', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1752, 1604, 1961, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Сочи', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1753, 2113, 1961, 19, 'Самуи (W), Сочи [+1]', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1754, 3855, 1961, 19, 'Хуахин (W), Сочи [+1]', '2024-09-13 12:36:00', '2024-09-13 12:36:00'),
(1755, 2613, 1961, 9, 'По следам великих цивилизаций, Адлер', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1756, 1319, 1961, 9, 'Тур в Анталию (A), Адлер', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1757, 267, 1961, 9, 'Тур в Анталию (C), Адлер', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1758, 968, 1961, 9, 'Тур в Анталию (P), Адлер', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1759, 2265, 1961, 9, 'Тур в Анталию (R), Адлер', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1760, 2555, 1961, 9, 'Тур в Бодрум (P), Адлер', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1761, 961, 1961, 9, 'Тур в Бодрум (С), Адлер', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1762, 907, 1961, 9, 'Тур в Даламан, Адлер', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1763, 923, 1961, 9, 'Тур в Измир, Адлер', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1764, 1650, 1961, 9, 'Тур в Стамбул (A), Адлер', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1765, 309, 1961, 9, 'Тур в Стамбул (P), Адлер', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1766, 1779, 1961, 9, 'Тур в Стамбул (Q), Адлер', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1767, 1409, 1131, 67, 'Отдых в Абхазии: Динамика NEW, Сургут', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1768, 1052, 1131, 67, 'Отдых в Абхазии: Динамика, Сургут', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1769, 2375, 1131, 36, 'Отели Баку (Int.), Сургут', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1770, 2857, 1131, 36, 'Тур на Формулу 1, Сургут', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1771, 1011, 1131, 2, 'Отдых в Сочи: Динамика, Сургут', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1772, 1410, 84, 67, 'Отдых в Абхазии: Динамика NEW, Сыктывкар', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1773, 1053, 84, 67, 'Отдых в Абхазии: Динамика, Сыктывкар', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1774, 1012, 84, 2, 'Отдых в Сочи: Динамика, Сыктывкар', '2024-09-13 12:36:01', '2024-09-13 12:36:01'),
(1775, 1680, 84, 19, 'Као Лак (W), Сыктывкар', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1776, 1572, 84, 19, 'Ко Чанг (W), Сыктывкар [+1]', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1777, 3655, 84, 19, 'Отдых в Као Лаке, Сыктывкар [+1]', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1778, 1556, 84, 19, 'Отдых в Ко Чанге, Сыктывкар [+1]', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1779, 1550, 84, 19, 'Отдых в Паттайе, Сыктывкар [+1]', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1780, 3906, 84, 19, 'Отдых в Хуахине, Сыктывкар [+1]', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1781, 1543, 84, 19, 'Отдых на Пхукете, Сыктывкар', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1782, 2131, 84, 19, 'Отдых на Самуи, Сыктывкар [+1]', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1783, 1578, 84, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Сыктывкар [+1]', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1784, 1605, 84, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Сыктывкар', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1785, 2114, 84, 19, 'Самуи (W), Сыктывкар [+1]', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1786, 3856, 84, 19, 'Хуахин (W), Сыктывкар [+1]', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1787, 1411, 1018, 67, 'Отдых в Абхазии: Динамика NEW, Томск', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1788, 1054, 1018, 67, 'Отдых в Абхазии: Динамика, Томск', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1789, 1013, 1018, 2, 'Отдых в Сочи: Динамика, Томск', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1790, 1412, 1041, 67, 'Отдых в Абхазии: Динамика NEW, Тюмень', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1791, 1055, 1041, 67, 'Отдых в Абхазии: Динамика, Тюмень', '2024-09-13 12:36:02', '2024-09-13 12:36:02'),
(1792, 4550, 1041, 36, 'Аппетитный Азербайджан, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1793, 4521, 1041, 36, 'На выходные в Баку, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1794, 4371, 1041, 36, 'Новогодняя сказка в Баку - 29.12-02.01, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1795, 4395, 1041, 36, 'Новогодняя сказка в Баку - 30.12-02.01, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1796, 4422, 1041, 36, 'Новогодняя сказка в Баку - 30.12-03.01, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1797, 4447, 1041, 36, 'Новогодняя сказка в Баку - 31.12-03.01, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1798, 2376, 1041, 36, 'Отели Баку (Int.), Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1799, 4528, 1041, 36, 'Открой для себя Азербайджан, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1800, 4299, 1041, 36, 'Рождественские каникулы в Баку - 02.01-05.01, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1801, 4323, 1041, 36, 'Рождественские каникулы в Баку - 02.01-06.01, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1802, 4337, 1041, 36, 'Рождественские каникулы в Баку - 02.01-07.01, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1803, 4353, 1041, 36, 'Рождественские каникулы в Баку - 03.01-07.01, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1804, 2858, 1041, 36, 'Тур на Формулу 1, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1805, 4530, 1041, 36, 'Экскурсионный тур Баку-Губа, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1806, 3721, 1041, 33, 'Большое Индийское Путешествие, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1807, 3737, 1041, 33, 'Восьмое Чудо Света: тур к Тадж Махалу, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1808, 1623, 1041, 33, 'Гоа. а/к Аэрофлот, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1809, 3159, 1041, 33, 'Золотой Треугольник и Варанаси, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1810, 3696, 1041, 33, 'Золотой треугольник и отдых в Гоа, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1811, 3965, 1041, 33, 'Золотой Треугольник и Праздник Огней Дивали, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1812, 3148, 1041, 33, 'Золотой Треугольник + Кхаджурахо \"на поезде\", Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1813, 3665, 1041, 33, 'Золотой Треугольник + Кхаджурахо \"на самолёте\", Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1814, 3133, 1041, 33, 'Золотой Треугольник, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1815, 3210, 1041, 33, 'Йога и Медитация, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1816, 3166, 1041, 33, 'Классическая Индия, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1817, 3687, 1041, 33, 'Классическая Индия через Читракут, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1818, 3714, 1041, 33, 'Красочный Раджастхан, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1819, 3188, 1041, 33, 'Невероятный Кашмир, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1820, 3177, 1041, 33, 'Путешествие в Гималаи, Тюмень', '2024-09-13 12:36:03', '2024-09-13 12:36:03'),
(1821, 3552, 1041, 31, 'Отдых на о. Хайнань (TJM-GDS)', '2024-09-13 12:36:04', '2024-09-13 12:36:04'),
(1822, 3553, 1041, 31, 'Отдых на о. Хайнань (TJM-GDS) (E)', '2024-09-13 12:36:04', '2024-09-13 12:36:04'),
(1823, 1023, 1041, 2, 'Отдых в Сочи: Динамика, Тюмень', '2024-09-13 12:36:04', '2024-09-13 12:36:04'),
(1824, 1681, 1041, 19, 'Као Лак (W), Тюмень', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1825, 1573, 1041, 19, 'Ко Чанг (W), Тюмень [+1]', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1826, 3656, 1041, 19, 'Отдых в Као Лаке, Тюмень [+1]', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1827, 1553, 1041, 19, 'Отдых в Ко Чанге, Тюмень [+1]', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1828, 1547, 1041, 19, 'Отдых в Паттайе, Тюмень [+1]', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1829, 3907, 1041, 19, 'Отдых в Хуахине, Тюмень [+1]', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1830, 1540, 1041, 19, 'Отдых на Пхукете, Тюмень', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1831, 2132, 1041, 19, 'Отдых на Самуи, Тюмень [+1]', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1832, 1579, 1041, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Тюмень [+1]', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1833, 1606, 1041, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Тюмень', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1834, 2115, 1041, 19, 'Самуи (W), Тюмень [+1]', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1835, 3857, 1041, 19, 'Хуахин (W), Тюмень [+1]', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1836, 940, 1041, 9, 'Тур в Даламан, Тюмень', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1837, 1413, 1048, 67, 'Отдых в Абхазии: Динамика NEW, Ульяновск', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1838, 1056, 1048, 67, 'Отдых в Абхазии: Динамика, Ульяновск', '2024-09-13 12:36:05', '2024-09-13 12:36:05'),
(1839, 1017, 1048, 2, 'Отдых в Сочи: Динамика, Ульяновск', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1840, 1388, 25, 67, 'Отдых в Абхазии: Динамика NEW, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1841, 869, 25, 67, 'Отдых в Абхазии: Динамика, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1842, 713, 25, 36, 'Аппетитный Азербайджан, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1843, 711, 25, 36, 'Баку в итальянском стиле, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1844, 712, 25, 36, 'БАКУ - город искусств, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1845, 2770, 25, 36, 'Викинги в Азербайджане!, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1846, 2758, 25, 36, 'Гастро-тур в Азербайджан, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1847, 2707, 25, 36, 'Горы Кавказа, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1848, 4526, 25, 36, 'На выходные в Баку, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1849, 2782, 25, 36, 'Нефть Азербайджана и Нобелевская премия, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1850, 4377, 25, 36, 'Новогодняя сказка в Баку - 29.12-02.01, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1851, 4401, 25, 36, 'Новогодняя сказка в Баку - 30.12-02.01, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1852, 4432, 25, 36, 'Новогодняя сказка в Баку - 30.12-03.01, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1853, 4456, 25, 36, 'Новогодняя сказка в Баку - 31.12-03.01, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1854, 2384, 25, 36, 'Отели Баку (Int.), Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1855, 708, 25, 36, 'Открой для себя Азербайджан, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1856, 707, 25, 36, 'Открой для себя Баку, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1857, 2724, 25, 36, 'Путешествие на Кавказ по местам А. Дюма, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1858, 2737, 25, 36, 'Религиозные святыни Баку, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1859, 4305, 25, 36, 'Рождественские каникулы в Баку - 02.01-05.01, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1860, 4329, 25, 36, 'Рождественские каникулы в Баку - 02.01-06.01, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1861, 4343, 25, 36, 'Рождественские каникулы в Баку - 02.01-07.01, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1862, 4359, 25, 36, 'Рождественские каникулы в Баку - 03.01-07.01, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1863, 2865, 25, 36, 'Тур на Формулу 1, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1864, 706, 25, 36, 'Эконом тур - Открой для себя Баку, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1865, 2691, 25, 36, 'Экскурсионный тур Баку-Губа, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1866, 2962, 25, 6, 'Курорты Беларуси: Динамика, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1867, 3033, 25, 6, 'Минск: Динамика, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1868, 4081, 25, 43, 'Нячанг + Хошимин 1 ночь (A): Аэрофлот до Хошимина, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1869, 3564, 25, 43, 'Нячанг + Хошимин 1 ночь (V): Аэрофлот до Хошимина, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1870, 4043, 25, 43, 'Тур в Фантхьет (A): Аэрофлот до Хошимина, Уфа', '2024-09-13 12:36:06', '2024-09-13 12:36:06'),
(1871, 4110, 25, 43, 'Тур в Хошимин (A): Аэрофлот, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1872, 3609, 25, 43, 'Тур в Хошимин (V): Аэрофлот, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1873, 3576, 25, 43, 'Тур на Фукуок (V), Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1874, 4098, 25, 43, 'Фукуок + Хошимин 1 ночь (A): Аэрофлот до Хошимина, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1875, 4151, 25, 10, 'Гранд-тур с круизом по Нилу и отдыхом в Хургаде, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1876, 4146, 25, 10, 'Гранд-тур с круизом по Нилу, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1877, 4141, 25, 10, 'Открываем Каир, Абу-Симбел и Круиз по Нилу, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1878, 4121, 25, 10, 'Открываем Каир и Александрию, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1879, 4136, 25, 10, 'Открываем Каир и Круиз по Нилу, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1880, 4126, 25, 10, 'Открываем Каир и отдых в Хургаде, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1881, 4131, 25, 10, 'Открываем Каир и отдых в Шарм-эль-Шейхе, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1882, 4116, 25, 10, 'Открываем Каир, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1883, 2152, 25, 10, 'Хургада (J), Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1884, 1342, 25, 10, 'Хургада (T), Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1885, 2167, 25, 10, 'Шарм-эль-Шейх (J), Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1886, 1351, 25, 10, 'Шарм-эль-Шейх (T), Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1887, 3720, 25, 33, 'Большое Индийское Путешествие, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1888, 3736, 25, 33, 'Восьмое Чудо Света: тур к Тадж Махалу, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1889, 833, 25, 33, 'Гоа. а/к Аэрофлот, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1890, 3406, 25, 33, 'Дели, Джйпур, Агра, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1891, 3158, 25, 33, 'Золотой Треугольник и Варанаси, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1892, 3695, 25, 33, 'Золотой треугольник и отдых в Гоа, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1893, 3964, 25, 33, 'Золотой Треугольник и Праздник Огней Дивали, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1894, 3147, 25, 33, 'Золотой Треугольник + Кхаджурахо \"на поезде\", Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1895, 3664, 25, 33, 'Золотой Треугольник + Кхаджурахо \"на самолёте\", Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1896, 3132, 25, 33, 'Золотой Треугольник, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1897, 3209, 25, 33, 'Йога и Медитация, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1898, 3165, 25, 33, 'Классическая Индия, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1899, 3686, 25, 33, 'Классическая Индия через Читракут, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1900, 3713, 25, 33, 'Красочный Раджастхан, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1901, 3187, 25, 33, 'Невероятный Кашмир, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1902, 3176, 25, 33, 'Путешествие в Гималаи, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1903, 3448, 25, 94, 'Звезды Персидского залива, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1904, 3126, 25, 94, 'Золотое кольцо Персии, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1905, 2663, 25, 31, 'Отдых на о. Хайнань (UFA-GDS Аэрофлот)', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1906, 2664, 25, 31, 'Отдых на о. Хайнань (UFA-GDS Аэрофлот) (E)', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1907, 1749, 25, 23, 'Отдых на Варадеро: Динамика, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1908, 1487, 25, 23, 'Отдых на Варадеро, Уфа', '2024-09-13 12:36:07', '2024-09-13 12:36:07'),
(1909, 1726, 25, 54, 'Маврикий, Уфа', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1910, 850, 25, 50, 'Мальдивы SPO_1 (UFA-GDS)', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1911, 3190, 25, 50, 'Мальдивы SPO_2 (UFA-GDS)', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1912, 3256, 25, 13, 'ОАЭ / прямой перелёт в Шарджу,Уфа: Динамика', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1913, 804, 25, 2, 'КавМинВоды: Динамика, Уфа', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1914, 838, 25, 2, 'Казань: Динамика, Уфа', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1915, 794, 25, 2, 'Калининград: Динамика, Уфа', '2024-09-13 12:36:08', '2024-09-13 12:36:08');
INSERT INTO `samotour_tours` (`id`, `id_tour`, `id_city`, `id_country`, `name`, `created_at`, `updated_at`) VALUES
(1916, 824, 25, 2, 'Красная Поляна: Динамика, Уфа', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1917, 4220, 25, 2, 'Новогодние каникулы в Кисловодске, Уфа', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1918, 4204, 25, 2, 'Новогодние чудеса Кавказа, Уфа', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1919, 4212, 25, 2, 'Новый Год в Кисловодске, Уфа', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1920, 814, 25, 2, 'Отдых в Сочи: Динамика, Уфа', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1921, 4195, 25, 2, 'от Кавминвод до Дагестана, Уфа', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1922, 1452, 25, 78, 'Отдых на Сейшелах, Уфа', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1923, 1672, 25, 78, 'Сейшелы, отдых на о.Маэ: Динамика, Уфа', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1924, 3625, 25, 19, 'Као Лак (W), перелет Flydubai/Emirates, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1925, 1989, 25, 19, 'Као Лак (W), Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1926, 3828, 25, 19, 'Ко Чанг (W), а/п Flydubai/Emirates, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1927, 1993, 25, 19, 'Ко Чанг (W), Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1928, 3640, 25, 19, 'Отдых в Као Лаке, перелет Flydubai/Emirates, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1929, 3632, 25, 19, 'Отдых в Као Лаке, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1930, 3872, 25, 19, 'Отдых в Ко Чанге, а/п Flydubai/Emirates, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1931, 1994, 25, 19, 'Отдых в Ко Чанге, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1932, 3864, 25, 19, 'Отдых в Паттайе, а/п Flydubai/Emirates, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1933, 1998, 25, 19, 'Отдых в Паттайе, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1934, 3888, 25, 19, 'Отдых в Хуахине, а/п Flydubai/Emirates, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1935, 3892, 25, 19, 'Отдых в Хуахине, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1936, 3618, 25, 19, 'Отдых на Пхукете, перелет Flydubai/Emirates, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1937, 2001, 25, 19, 'Отдых на Пхукете, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1938, 3880, 25, 19, 'Отдых на Самуи, а/п Flydubai/Emirates, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1939, 2122, 25, 19, 'Отдых на Самуи, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1940, 3831, 25, 19, 'Паттайя (W), а/п Flydubai/Emirates, обзорная экскурсия в подарок, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1941, 2004, 25, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1942, 2007, 25, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1943, 3622, 25, 19, 'Пхукет (W), Перелет Flydubai/Emirates, Групповой трансфер и обзорная экскурсия в подарок, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1944, 3839, 25, 19, 'Самуи (W), а/п Flydubai/Emirates, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1945, 2116, 25, 19, 'Самуи (W), Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1946, 3863, 25, 19, 'Хуахин (W), а/п Flydubai/Emirates, Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1947, 3849, 25, 19, 'Хуахин (W), Уфа [+1]', '2024-09-13 12:36:08', '2024-09-13 12:36:08'),
(1948, 2617, 25, 9, 'По следам великих цивилизаций, Уфа', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1949, 1325, 25, 9, 'Тур в Анталию (A), Уфа', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1950, 290, 25, 9, 'Тур в Анталию (C), Уфа', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1951, 974, 25, 9, 'Тур в Анталию (P), Уфа', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1952, 2273, 25, 9, 'Тур в Анталию (R), Уфа', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1953, 933, 25, 9, 'Тур в Даламан, Уфа', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1954, 924, 25, 9, 'Тур в Измир, Уфа', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1955, 1651, 25, 9, 'Тур в Стамбул (A), Уфа', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1956, 310, 25, 9, 'Тур в Стамбул (P), Уфа', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1957, 1780, 25, 9, 'Тур в Стамбул (Q), Уфа', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1958, 756, 25, 52, 'Шри-Ланка (A), отель с 1-го дня, Уфа', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1959, 4056, 25, 52, 'Шри-Ланка (A), отель со 2-го дня, Уфа', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1960, 2583, 25, 52, 'Шри-Ланка (E), отель с 1-го дня, Уфа', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1961, 4054, 25, 52, 'Шри-Ланка (E), отель со 2-го дня, Уфа', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1962, 3803, 267, 31, 'Две столицы: Пекин - Шанхай - Пекин (KHV-GDS)', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1963, 3793, 267, 31, 'Древние столицы: Пекин - Сиань - Лоян - Пекин (KHV-GDS)', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1964, 3766, 267, 31, 'Знакомство со столицей (KHV-GDS)', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1965, 3779, 267, 31, 'Китайский Аватар: Пекин - Чжанцзяцзе - Пекин (KHV-GDS)', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1966, 3747, 267, 31, 'Классический Пекин (KHV-GDS)', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1967, 4165, 267, 31, 'Отдых на о. Хайнань (KHV-GDS Аэрофлот)', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1968, 4166, 267, 31, 'Отдых на о. Хайнань (KHV-GDS Аэрофлот) (E)', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1969, 3813, 267, 31, 'Пекин - Сиань - Чжанцзяцзе - Пекин (KHV-GDS)', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1970, 3823, 267, 31, 'Пекин – Шанхай – Сучжоу – Ханчжоу – Пекин (KHV-GDS)', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1971, 1772, 267, 31, 'Тур в Пекин (KHV-GDS) (E)', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1972, 1675, 267, 19, 'Као Лак (W), Хабаровск [+0]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1973, 2087, 267, 19, 'Као Лак (W), Хабаровск [+1]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1974, 2069, 267, 19, 'Ко Чанг (W), Хабаровск [+0]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1975, 2070, 267, 19, 'Ко Чанг (W), Хабаровск [+1]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1976, 3649, 267, 19, 'Отдых в Као Лаке, Хабаровск [+0]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1977, 3650, 267, 19, 'Отдых в Као Лаке, Хабаровск [+1]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1978, 2073, 267, 19, 'Отдых в Ко Чанге, Хабаровск [+0]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1979, 2074, 267, 19, 'Отдых в Ко Чанге, Хабаровск [+1]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1980, 2077, 267, 19, 'Отдых в Паттайе, Хабаровск [+0]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1981, 2079, 267, 19, 'Отдых в Паттайе, Хабаровск [+1]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1982, 3899, 267, 19, 'Отдых в Хуахине, Хабаровск [+0]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1983, 3900, 267, 19, 'Отдых в Хуахине, Хабаровск [+1]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1984, 1357, 267, 19, 'Отдых на Пхукете, Хабаровск [+0]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1985, 2093, 267, 19, 'Отдых на Пхукете, Хабаровск [+1]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1986, 2126, 267, 19, 'Отдых на Самуи, Хабаровск [+0]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1987, 2127, 267, 19, 'Отдых на Самуи, Хабаровск [+1]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1988, 2084, 267, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Хабаровск [+0]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1989, 2085, 267, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Хабаровск [+1]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1990, 1598, 267, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Хабаровск [+0]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1991, 2095, 267, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Хабаровск [+1]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1992, 2118, 267, 19, 'Самуи (W), Хабаровск [+0]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1993, 2119, 267, 19, 'Самуи (W), Хабаровск [+1]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1994, 3844, 267, 19, 'Хуахин (W), Хабаровск [+0]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1995, 3845, 267, 19, 'Хуахин (W), Хабаровск [+1]', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1996, 1414, 1133, 67, 'Отдых в Абхазии: Динамика NEW, Ханты-Мансийск', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1997, 1064, 1133, 67, 'Отдых в Абхазии: Динамика, Ханты-Мансийск', '2024-09-13 12:36:09', '2024-09-13 12:36:09'),
(1998, 1018, 1133, 2, 'Отдых в Сочи: Динамика, Х.Мансийск', '2024-09-13 12:36:10', '2024-09-13 12:36:10'),
(1999, 1415, 166, 67, 'Отдых в Абхазии: Динамика NEW, Чебоксары', '2024-09-13 12:36:10', '2024-09-13 12:36:10'),
(2000, 1069, 166, 67, 'Отдых в Абхазии: Динамика, Чебоксары', '2024-09-13 12:36:10', '2024-09-13 12:36:10'),
(2001, 1019, 166, 2, 'Отдых в Сочи: Динамика, Чебоксары', '2024-09-13 12:36:10', '2024-09-13 12:36:10'),
(2002, 1389, 1077, 67, 'Отдых в Абхазии: Динамика NEW, Челябинск', '2024-09-13 12:36:10', '2024-09-13 12:36:10'),
(2003, 875, 1077, 67, 'Отдых в Абхазии: Динамика, Челябинск', '2024-09-13 12:36:10', '2024-09-13 12:36:10'),
(2004, 4082, 1077, 43, 'Нячанг + Хошимин 1 ночь (A): Аэрофлот до Хошимина, Челябинск', '2024-09-13 12:36:10', '2024-09-13 12:36:10'),
(2005, 3563, 1077, 43, 'Нячанг + Хошимин 1 ночь (V): Аэрофлот до Хошимина, Челябинск', '2024-09-13 12:36:10', '2024-09-13 12:36:10'),
(2006, 4042, 1077, 43, 'Тур в Фантхьет (A): Аэрофлот до Хошимина, Челябинск', '2024-09-13 12:36:10', '2024-09-13 12:36:10'),
(2007, 4111, 1077, 43, 'Тур в Хошимин (A): Аэрофлот, Челябинск', '2024-09-13 12:36:10', '2024-09-13 12:36:10'),
(2008, 3608, 1077, 43, 'Тур в Хошимин (V): Аэрофлот, Челябинск', '2024-09-13 12:36:10', '2024-09-13 12:36:10'),
(2009, 3575, 1077, 43, 'Тур на Фукуок (V), Челябинск', '2024-09-13 12:36:10', '2024-09-13 12:36:10'),
(2010, 4099, 1077, 43, 'Фукуок + Хошимин 1 ночь (A): Аэрофлот до Хошимина, Челябинск', '2024-09-13 12:36:10', '2024-09-13 12:36:10'),
(2011, 2329, 1077, 29, 'Тбилиси - прямой авиаперелет, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2012, 2323, 1077, 29, 'Тбилиси, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2013, 4152, 1077, 10, 'Гранд-тур с круизом по Нилу и отдыхом в Хургаде, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2014, 4147, 1077, 10, 'Гранд-тур с круизом по Нилу, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2015, 4142, 1077, 10, 'Открываем Каир, Абу-Симбел и Круиз по Нилу, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2016, 4122, 1077, 10, 'Открываем Каир и Александрию, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2017, 4137, 1077, 10, 'Открываем Каир и Круиз по Нилу, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2018, 4127, 1077, 10, 'Открываем Каир и отдых в Хургаде, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2019, 4132, 1077, 10, 'Открываем Каир и отдых в Шарм-эль-Шейхе, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2020, 4117, 1077, 10, 'Открываем Каир, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2021, 2150, 1077, 10, 'Хургада (J), Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2022, 1340, 1077, 10, 'Хургада (T), Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2023, 2165, 1077, 10, 'Шарм-эль-Шейх (J), Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2024, 1349, 1077, 10, 'Шарм-эль-Шейх (T), Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2025, 3718, 1077, 33, 'Большое Индийское Путешествие, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2026, 3734, 1077, 33, 'Восьмое Чудо Света: тур к Тадж Махалу, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2027, 1621, 1077, 33, 'Гоа. а/к Аэрофлот, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2028, 3156, 1077, 33, 'Золотой Треугольник и Варанаси, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2029, 3693, 1077, 33, 'Золотой треугольник и отдых в Гоа, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2030, 3962, 1077, 33, 'Золотой Треугольник и Праздник Огней Дивали, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2031, 3145, 1077, 33, 'Золотой Треугольник + Кхаджурахо \"на поезде\", Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2032, 3662, 1077, 33, 'Золотой Треугольник + Кхаджурахо \"на самолёте\", Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2033, 3130, 1077, 33, 'Золотой Треугольник, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2034, 3207, 1077, 33, 'Йога и Медитация, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2035, 3163, 1077, 33, 'Классическая Индия, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2036, 3684, 1077, 33, 'Классическая Индия через Читракут, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2037, 3711, 1077, 33, 'Красочный Раджастхан, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2038, 3185, 1077, 33, 'Невероятный Кашмир, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2039, 3174, 1077, 33, 'Путешествие в Гималаи, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2040, 2661, 1077, 31, 'Отдых на о. Хайнань (CEK-GDS Аэрофлот)', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2041, 2662, 1077, 31, 'Отдых на о. Хайнань (CEK-GDS Аэрофлот) (E)', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2042, 1727, 1077, 54, 'Маврикий, Челябинск', '2024-09-13 12:36:11', '2024-09-13 12:36:11'),
(2043, 856, 1077, 50, 'Мальдивы SPO_1 (CEK-GDS)', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2044, 3189, 1077, 50, 'Мальдивы SPO_2 (CEK-GDS)', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2045, 810, 1077, 2, 'КавМинВоды: Динамика, Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2046, 843, 1077, 2, 'Казань: Динамика, Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2047, 799, 1077, 2, 'Калининград: Динамика, Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2048, 830, 1077, 2, 'Красная Поляна: Динамика, Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2049, 820, 1077, 2, 'Отдых в Сочи: Динамика, Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2050, 1988, 1077, 19, 'Као Лак (W), Челябинск [+1]', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2051, 1992, 1077, 19, 'Ко Чанг (W), Челябинск [+1]', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2052, 3633, 1077, 19, 'Отдых в Као Лаке, Челябинск [+1]', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2053, 1995, 1077, 19, 'Отдых в Ко Чанге, Челябинск [+1]', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2054, 1999, 1077, 19, 'Отдых в Паттайе, Челябинск [+1]', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2055, 3909, 1077, 19, 'Отдых в Хуахине, Челябинск [+1]', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2056, 2002, 1077, 19, 'Отдых на Пхукете, Челябинск [+1]', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2057, 2121, 1077, 19, 'Отдых на Самуи, Челябинск [+1]', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2058, 2003, 1077, 19, 'Паттайя (W), Обзорная экскурсия в подарок, Челябинск [+1]', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2059, 2008, 1077, 19, 'Пхукет (W), Групповой трансфер и обзорная экскурсия в подарок, Челябинск [+1]', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2060, 2117, 1077, 19, 'Самуи (W), Челябинск [+1]', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2061, 3850, 1077, 19, 'Хуахин (W), Челябинск [+1]', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2062, 2615, 1077, 9, 'По следам великих цивилизаций, Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2063, 1321, 1077, 9, 'Тур в Анталию (A), Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2064, 270, 1077, 9, 'Тур в Анталию (C), Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2065, 970, 1077, 9, 'Тур в Анталию (P), Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2066, 2269, 1077, 9, 'Тур в Анталию (R), Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2067, 932, 1077, 9, 'Тур в Даламан, Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2068, 1652, 1077, 9, 'Тур в Стамбул (A), Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2069, 311, 1077, 9, 'Тур в Стамбул (P), Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2070, 1781, 1077, 9, 'Тур в Стамбул (Q), Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2071, 4057, 1077, 52, 'Шри-Ланка (A), отель со 2-го дня, Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2072, 4055, 1077, 52, 'Шри-Ланка (E), отель со 2-го дня, Челябинск', '2024-09-13 12:36:12', '2024-09-13 12:36:12'),
(2073, 2959, 380, 6, 'Курорты Беларуси: Динамика, Череповец', '2024-09-13 12:36:13', '2024-09-13 12:36:13'),
(2074, 3030, 380, 6, 'Минск: Динамика, Череповец', '2024-09-13 12:36:13', '2024-09-13 12:36:13'),
(2075, 3305, 380, 2, 'Азбука Экскурсий, Череповец', '2024-09-13 12:36:13', '2024-09-13 12:36:13'),
(2076, 3313, 380, 2, 'В Калининград в любой день, Череповец', '2024-09-13 12:36:13', '2024-09-13 12:36:13'),
(2077, 3322, 380, 2, 'В Тридевятом Царстве, Череповец', '2024-09-13 12:36:13', '2024-09-13 12:36:13'),
(2078, 3359, 380, 2, 'Королевские выходные, Череповец', '2024-09-13 12:36:13', '2024-09-13 12:36:13'),
(2079, 3338, 380, 2, 'На самом западе, Череповец', '2024-09-13 12:36:13', '2024-09-13 12:36:13'),
(2080, 1416, 1088, 67, 'Отдых в Абхазии: Динамика NEW, Чита', '2024-09-13 12:36:13', '2024-09-13 12:36:13'),
(2081, 1071, 1088, 67, 'Отдых в Абхазии: Динамика, Чита', '2024-09-13 12:36:13', '2024-09-13 12:36:13'),
(2082, 1020, 1088, 2, 'Отдых в Сочи: Динамика, Чита', '2024-09-13 12:36:13', '2024-09-13 12:36:13'),
(2083, 1417, 1100, 67, 'Отдых в Абхазии: Динамика NEW, Ярославль', '2024-09-13 12:36:13', '2024-09-13 12:36:13'),
(2084, 1072, 1100, 67, 'Отдых в Абхазии: Динамика, Ярославль', '2024-09-13 12:36:13', '2024-09-13 12:36:13'),
(2085, 1021, 1100, 2, 'Отдых в Сочи: Динамика, Ярославль', '2024-09-13 12:36:13', '2024-09-13 12:36:13'),
(2086, 4543, 1114, 19, 'Ко Чанг (W), прямой а/п, СПб [+1]', '2024-09-13 14:40:15', '2024-09-13 14:40:15'),
(2087, 4544, 1114, 19, 'Отдых в Ко Чанге, прямой а/п, СПб [+1]', '2024-09-13 14:40:15', '2024-09-13 14:40:15'),
(2088, 4541, 1114, 19, 'Отдых в Паттайе, прямой а/п, СПб [+1]', '2024-09-13 14:40:15', '2024-09-13 14:40:15'),
(2089, 4545, 1114, 19, 'Отдых в Хуахине, прямой а/п, СПб [+1]', '2024-09-13 14:40:15', '2024-09-13 14:40:15'),
(2090, 4547, 1114, 19, 'Отдых на Самуи, прямой а/п, СПб [+1]', '2024-09-13 14:40:15', '2024-09-13 14:40:15'),
(2091, 4542, 1114, 19, 'Паттайя (W), прямой а/п, обзорная экскурсия в подарок, СПб [+1]', '2024-09-13 14:40:15', '2024-09-13 14:40:15'),
(2092, 4548, 1114, 19, 'Самуи (W), прямой а/п, СПб [+1]', '2024-09-13 14:40:15', '2024-09-13 14:40:15'),
(2093, 4546, 1114, 19, 'Хуахин (W), прямой а/п, СПб [+1]', '2024-09-13 14:40:15', '2024-09-13 14:40:15');

-- --------------------------------------------------------

--
-- Структура таблицы `seo`
--

CREATE TABLE `seo` (
  `id` bigint NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `canonical` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `og_title` varchar(255) DEFAULT NULL,
  `og_description` varchar(255) DEFAULT NULL,
  `og_url` varchar(255) DEFAULT NULL,
  `twitter_title` varchar(255) DEFAULT NULL,
  `twitter_site` varchar(255) DEFAULT NULL,
  `jsonld_title` varchar(255) DEFAULT NULL,
  `jsonld_description` varchar(255) DEFAULT NULL,
  `jsonld_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `setting`
--

CREATE TABLE `setting` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `footer_text` text,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `address` text,
  `phones` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `vk` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `address`, `phones`, `email`, `whatsapp`, `telegram`, `vk`, `created_at`, `updated_at`) VALUES
(1, 'Санкт-Петербург, 7-я Красноармейская ул, дом 7 пом 7Н, домофон 31', '+7 (812) 957-01-85,+7 (812) 702-77-85', 'info@mercury-europe.ru', NULL, NULL, NULL, NULL, '2024-08-26 10:20:42');

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `text2` text,
  `image` varchar(255) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `fact1` varchar(500) DEFAULT NULL,
  `fact2` varchar(500) DEFAULT NULL,
  `fact3` varchar(500) DEFAULT NULL,
  `hide` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `title`, `text`, `text2`, `image`, `preview`, `fact1`, `fact2`, `fact3`, `hide`, `rating`, `updated_at`, `created_at`) VALUES
(1, 'Бытовая техника', 'пылесосы, фены, телевизоры, стиральные машины, стайлеры', NULL, 'images/slider/H5Pu4xAi4RuZnIX7nZxUmpdkjH2RtUSCRe5Ua0eU.svg', NULL, NULL, NULL, NULL, NULL, 2, '2024-08-13 08:31:13', '2023-05-16 12:12:27'),
(2, 'Офисная техника', 'ноутбуки, принтеры, сканеры, планшеты, Клавиатуры, компьютерные мыши', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-29 07:39:22', '2023-05-16 12:12:27'),
(3, 'Электроника', 'телефоны, принтеры, часы, гаджеты, игровые приставки', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-29 07:39:10', '2023-05-16 12:12:27');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hide` tinyint(1) DEFAULT '0',
  `rating` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `text`, `image`, `hide`, `rating`, `created_at`, `updated_at`) VALUES
(13, 'images/tours/6IuSKH3R9hTxvqNBVnfHLMHiz8pyuVHLsdLRaTda.png', 'images/tours/jUZ2JyyAgDEX3Ky21qNJkU2mGBqzMxxERjgltV74.png', 0, 0, '2024-09-17 11:27:32', '2024-09-18 07:33:30'),
(14, NULL, NULL, 0, 0, '2024-09-18 07:48:55', '2024-09-18 07:48:55');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` text,
  `rating` int DEFAULT '0',
  `hide` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `name`, `icon`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(1, 'Хит', 'images/tours/static_icons/WvHSc821JnQVTuKQr4ZmpXYYaGlmEjCzuTZ36DcT.svg', 0, 0, '2024-08-22 12:56:24', '2024-09-13 08:50:11'),
(4, 'Новинка', 'images/tours/static_icons/xMB3XRdqaSDut3q33wUFXOUpSfsj8K5iogvjCzVt.svg', 0, 0, '2024-08-22 13:19:21', '2024-09-18 07:19:20');

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
  `samotour_tour_id` bigint UNSIGNED DEFAULT NULL,
  `path1` text COLLATE utf8mb4_unicode_ci,
  `path2` text COLLATE utf8mb4_unicode_ci,
  `isHiddenCountryInfo` tinyint DEFAULT '0',
  `isHiddenTouristInfo` tinyint DEFAULT '0',
  `isHiddenTourCost` tinyint DEFAULT '0',
  `rating` int DEFAULT '0',
  `hide` tinyint DEFAULT '0',
  `background_image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tours`
--

INSERT INTO `tours` (`id`, `url`, `description`, `title`, `subtitle`, `preview_title`, `preview_header`, `preview_text`, `preview_price`, `preview_nights`, `preview_image`, `agreement_info`, `tour_cost_info`, `tour_additional_cost`, `samotour_tour_id`, `path1`, `path2`, `isHiddenCountryInfo`, `isHiddenTouristInfo`, `isHiddenTourCost`, `rating`, `hide`, `background_image`, `created_at`, `updated_at`) VALUES
(1, 'ekskursionnyi-tur-zolotoi-treugolnik', '<span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 20px; letter-spacing: -0.6px;\">Все, что есть в Индии, создано благодаря любви. Любовь к науке и истине позволяет сегодня лицезреть нам обсерваторию Джантар Мантар в Джайпуре. Благодаря бхакти, любви к богу, люди возвели храмы Вриндавана, Храм Лотоса и Акшардхам в Дели. Любовь к женам один из правителей реализовал в великолепном дворце Хава Махал - где жили женщины гарема. Хрестоматиен пример любви, благодаря которой мы можем любоваться мавзолеем Тадж Махал. Да и в нашем случае виновата любовь к путешествиям – с нее обычно и начинается любовь к Индии.</span>', 'Экскурсионный тур: «Золотой треугольник»', 'Самый лучший тур по Индии для первого знакомства!', 'Касабланка - Рабат - Шефшауэн - (Волюбилис) - Фес - Мерзуга - Уарзазат - Айт бен Хадду', 'Майские праздники в Тайланде', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; letter-spacing: -0.48px;\">Таиланд- это сказочный «остров богов», «остров тысячи храмов» и драгоценная жемчужина Индонезии... В цене проживани...</span><br></p>', 'от 120 587 ₽', '7-12 ночей', 'images/tours/XZqfkuGXDQvgigvJTFE6iBnx7eDGWWUmilcn7DK1.png', '<p><span style=\"color: rgb(97, 97, 97); font-family: Inter, sans-serif; font-size: 15px; font-style: italic; letter-spacing: -0.3px;\">Туроператор оставляет за собой право менять время и порядок проведения экскурсий, при этом не меняя общую программу обслуживания.</span><br style=\"color: rgb(97, 97, 97); font-family: Inter, sans-serif; font-size: 15px; font-style: italic; letter-spacing: -0.3px;\"><br style=\"color: rgb(97, 97, 97); font-family: Inter, sans-serif; font-size: 15px; font-style: italic; letter-spacing: -0.3px;\"><span style=\"color: rgb(97, 97, 97); font-family: Inter, sans-serif; font-size: 15px; font-style: italic; letter-spacing: -0.3px;\">Принимающая сторона несет ответственность за организацию программ, работу сотрудников компании, уровень предоставляемого сервиса и своевременную оплату контрагентам, тем не менее мы хотели бы обратить ваше внимание на следующие обстоятельства, которые выходят за рамки прямого контроля, и мы сделаем все возможное, чтобы оптимизировать любые расходы в чрезвычайных ситуациях. К таким ситуациям относятся случаи задержки/ отмены/ изменения расписания рейсов и поездов, а также стихийные бедствия, погодные аномалии, закрытия дорог, болезни и т.д.</span><br style=\"color: rgb(97, 97, 97); font-family: Inter, sans-serif; font-size: 15px; font-style: italic; letter-spacing: -0.3px;\"><br style=\"color: rgb(97, 97, 97); font-family: Inter, sans-serif; font-size: 15px; font-style: italic; letter-spacing: -0.3px;\"><span style=\"color: rgb(97, 97, 97); font-family: Inter, sans-serif; font-size: 15px; font-style: italic; letter-spacing: -0.3px;\">Принимающая сторона оставляет за собой право изменять отели с учетом их соответствия стандартам в случае, если в указанных отелях номера закончились. Стандартное время заселения и выселения в отелях 12.00 дня. Время переездов указано индикативно и может меняться в зависимости от трафика.</span><br></p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Международный перелет (включен или не включен в зависимости от выбранного типа подпакета)\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Проживание в выбранном отеле с указанным типом питания\r\n                            </p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Личные расходы и все, что не указано явно в программе тура\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Страховка от невыезда 3,5% или 5,5% от стоимости тура (оформляется по желанию)\r\n                            </p>', 30, NULL, NULL, 0, 0, 1, 0, 0, 'images/tours/4qRsuekB357BdhjFBrvADP3w48A51SUJLDUlLDFJ.png', '2024-08-15 05:01:32', '2024-09-16 11:22:20'),
(3, '12', NULL, 'Паттайя - о. Ко-Чанг - Бангкок', NULL, 'Паттайя - о. Ко-Чанг - Бангкок', 'Комбинированный тур: \"Паттайя + о. Ко-Чанг + Бангкок\"', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; letter-spacing: -0.48px;\">От 2 до 21 ночей отдыха в курортном городке Таиланда Као-Лак. В цене - проживание в выбранном отеле</span><br></p>', 'от 89 600 ₽', '6 ночей', 'images/tours/B6BPGz40jeXHk2dErdvi1OycKRTadpkPThYDKJFd.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, '2024-08-23 05:56:08', '2024-08-23 06:22:46'),
(4, 'san-paulo-parati-angra-rio-de-zaneiro-iguacu-buenos-aires', NULL, 'Сан Пауло - Парати - Ангра - Рио-де-Жанейро - Игуаcу - Буэнос-Айрес', NULL, 'Сан Пауло - Парати - Ангра - Рио-де-Жанейро - Игуаcу - Буэнос-Айрес', 'Отдых на о. Самуи', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; letter-spacing: -0.48px;\">Бали - это сказочный «остров богов», «остров тысячи храмов» и драгоценная жемчужина Индонезии... В цене проживание в выбранном отеле, трансферы, страховка</span><br></p>', 'от 360 400 ₽', '10-12 ночей', 'images/tours/GGUXvkSm8EqGX1UBku1ChWxEIxT7Vy7feMNORA4H.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, '2024-08-23 05:56:16', '2024-08-29 07:46:47'),
(5, 'tur-11', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 20px; letter-spacing: -0.6px;\">Все, что есть в Индии, создано благодаря любви. Любовь к науке и истине позволяет сегодня лицезреть нам обсерваторию Джантар Мантар в Джайпуре. Благодаря бхакти, любви к богу, люди возвели храмы Вриндавана, Храм Лотоса и Акшардхам в Дели. Любовь к женам один из правителей реализовал в великолепном дворце Хава Махал - где жили женщины гарема. Хрестоматиен пример любви, благодаря которой мы можем любоваться мавзолеем Тадж Махал. Да и в нашем случае виновата любовь к путешествиям – с нее обычно и начинается любовь к Индии.</span><br></p>', 'Тур 11', 'Самый лучший тур по Индии для первого знакомства!', 'Касабланка - Рабат - Шефшауэн - (Волюбилис) - Фес - Мерзуга - Уарзазат - Айт бен Хадду', 'Майские праздники в Тайланде', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; letter-spacing: -0.48px;\">Таиланд- это сказочный «остров богов», «остров тысячи храмов» и драгоценная жемчужина Индонезии... В цене проживани...</span><br></p>', 'от 120 587 ₽', '7-12 ночей', 'images/tours/kAJ1d5bFkeiVGe5tBl9WTKOrA5veW7LrqRzIvFZu.png', NULL, '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Международный перелет (включен или не включен в зависимости от выбранного типа подпакета)\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Проживание в выбранном отеле с указанным типом питания\r\n                            </p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Личные расходы и все, что не указано явно в программе тура\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Страховка от невыезда 3,5% или 5,5% от стоимости тура (оформляется по желанию)\r\n                            </p>', NULL, NULL, NULL, 0, 0, 0, 0, 0, 'images/tours/0sJdZQgQ2GCG6BuEknaaUOgPD64cnFCzJesp8TM3.png', '2024-08-23 10:14:51', '2024-08-29 07:40:12'),
(6, 'tur-12', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 20px; letter-spacing: -0.6px;\">Все, что есть в Индии, создано благодаря любви. Любовь к науке и истине позволяет сегодня лицезреть нам обсерваторию Джантар Мантар в Джайпуре. Благодаря бхакти, любви к богу, люди возвели храмы Вриндавана, Храм Лотоса и Акшардхам в Дели. Любовь к женам один из правителей реализовал в великолепном дворце Хава Махал - где жили женщины гарема. Хрестоматиен пример любви, благодаря которой мы можем любоваться мавзолеем Тадж Махал. Да и в нашем случае виновата любовь к путешествиям – с нее обычно и начинается любовь к Индии.</span><br></p>', 'Тур 12', 'Самый лучший тур по Индии для первого знакомства!', 'Касабланка - Рабат - Шефшауэн - (Волюбилис) - Фес - Мерзуга - Уарзазат - Айт бен Хадду', 'Майские праздники в Тайланде', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; letter-spacing: -0.48px;\">Таиланд- это сказочный «остров богов», «остров тысячи храмов» и драгоценная жемчужина Индонезии... В цене проживани...</span><br></p>', 'от 120 587 ₽', '7-12 ночей', 'images/tours/799s70G48UmwQTXNZArE3JEM8udb3pU0LAYyFywf.png', NULL, '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Международный перелет (включен или не включен в зависимости от выбранного типа подпакета)\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Проживание в выбранном отеле с указанным типом питания\r\n                            </p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Личные расходы и все, что не указано явно в программе тура\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Страховка от невыезда 3,5% или 5,5% от стоимости тура (оформляется по желанию)\r\n                            </p>', NULL, NULL, NULL, 0, 0, 0, 0, 0, 'images/tours/r1mLQrfp61GWIuk2knmJOGBMAEJ8id59ji6p1Qec.png', '2024-08-23 10:14:57', '2024-08-29 07:39:03'),
(7, 'tur-13', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 20px; letter-spacing: -0.6px;\">Все, что есть в Индии, создано благодаря любви. Любовь к науке и истине позволяет сегодня лицезреть нам обсерваторию Джантар Мантар в Джайпуре. Благодаря бхакти, любви к богу, люди возвели храмы Вриндавана, Храм Лотоса и Акшардхам в Дели. Любовь к женам один из правителей реализовал в великолепном дворце Хава Махал - где жили женщины гарема. Хрестоматиен пример любви, благодаря которой мы можем любоваться мавзолеем Тадж Махал. Да и в нашем случае виновата любовь к путешествиям – с нее обычно и начинается любовь к Индии.</span><br></p>', 'Тур 13', 'Самый лучший тур по Индии для первого знакомства!', 'Касабланка - Рабат - Шефшауэн - (Волюбилис) - Фес - Мерзуга - Уарзазат - Айт бен Хадду', 'Майские праздники в Тайланде', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; letter-spacing: -0.48px;\">Таиланд- это сказочный «остров богов», «остров тысячи храмов» и драгоценная жемчужина Индонезии... В цене проживани...</span><br></p>', 'от 120 587 ₽', '7-12 ночей', 'images/tours/kqqksCTKVPMla8TROxeOY6hQSbfAFJg8wse56Mzp.png', NULL, '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Международный перелет (включен или не включен в зависимости от выбранного типа подпакета)\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Проживание в выбранном отеле с указанным типом питания\r\n                            </p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Личные расходы и все, что не указано явно в программе тура\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Страховка от невыезда 3,5% или 5,5% от стоимости тура (оформляется по желанию)\r\n                            </p>', NULL, NULL, NULL, 0, 0, 0, 0, 0, 'images/tours/SlWW4OQ0VYxL49Cvgx7fh3QVeeynQWEPnQzlPBYw.png', '2024-08-23 10:15:03', '2024-08-29 07:38:01');
INSERT INTO `tours` (`id`, `url`, `description`, `title`, `subtitle`, `preview_title`, `preview_header`, `preview_text`, `preview_price`, `preview_nights`, `preview_image`, `agreement_info`, `tour_cost_info`, `tour_additional_cost`, `samotour_tour_id`, `path1`, `path2`, `isHiddenCountryInfo`, `isHiddenTouristInfo`, `isHiddenTourCost`, `rating`, `hide`, `background_image`, `created_at`, `updated_at`) VALUES
(8, 'tur-14', '<span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 20px; letter-spacing: -0.6px;\">Все, что есть в Индии, создано благодаря любви. Любовь к науке и истине позволяет сегодня лицезреть нам обсерваторию Джантар Мантар в Джайпуре. Благодаря бхакти, любви к богу, люди возвели храмы Вриндавана, Храм Лотоса и Акшардхам в Дели. Любовь к женам один из правителей реализовал в великолепном дворце Хава Махал - где жили женщины гарема. Хрестоматиен пример любви, благодаря которой мы можем любоваться мавзолеем Тадж Махал. Да и в нашем случае виновата любовь к путешествиям – с нее обычно и начинается любовь к Индии.</span>', 'Тур 14', 'Самый лучший тур по Индии для первого знакомства!', 'Касабланка - Рабат - Шефшауэн - (Волюбилис) - Фес - Мерзуга - Уарзазат - Айт бен Хадду', 'Майские праздники в Тайланде', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; letter-spacing: -0.48px;\">Таиланд- это сказочный «остров богов», «остров тысячи храмов» и драгоценная жемчужина Индонезии... В цене проживани...</span><br></p>', 'от 120 587 ₽', '7-12 ночей', 'images/tours/qvQqtwibspMDXNnFRZgOpCxuPp1kQXFNSSZVWZWQ.png', NULL, '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Международный перелет (включен или не включен в зависимости от выбранного типа подпакета)\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Проживание в выбранном отеле с указанным типом питания\r\n                            </p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Личные расходы и все, что не указано явно в программе тура\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Страховка от невыезда 3,5% или 5,5% от стоимости тура (оформляется по желанию)\r\n                            </p>', NULL, NULL, NULL, 0, 0, 0, 0, 0, 'images/tours/956t4UCCtM2hGaWqQbNdWSzHbTKfrW2hV6e3nb3N.png', '2024-08-23 10:15:09', '2024-08-29 07:36:48'),
(9, 'tur-15', NULL, 'Тур 15', 'Касабланка - Рабат - Шефшауэн - (Волюбилис) - Фес - Мерзуга - Уарзазат - Айт бен Хадду', 'Касабланка - Рабат - Шефшауэн - (Волюбилис) - Фес - Мерзуга - Уарзазат - Айт бен Хадду', 'Майские праздники в Тайланде', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; letter-spacing: -0.48px;\">Таиланд- это сказочный «остров богов», «остров тысячи храмов» и драгоценная жемчужина Индонезии... В цене проживани...</span><br></p>', 'от 120 587 ₽', '7-12 ночей', 'images/tours/JfxC5cywvQpLv7tYu1HVCcUyo59xMMCyRpajAl7C.png', NULL, '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Международный перелет (включен или не включен в зависимости от выбранного типа подпакета)\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Проживание в выбранном отеле с указанным типом питания\r\n                            </p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Личные расходы и все, что не указано явно в программе тура\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Страховка от невыезда 3,5% или 5,5% от стоимости тура (оформляется по желанию)\r\n                            </p>', NULL, NULL, NULL, 0, 0, 0, 0, 0, 'images/tours/cuSxuvKp8ehohUS8Qa1n3PykOc6hLvxHuHFVfS2H.png', '2024-08-23 10:15:16', '2024-08-29 07:35:26'),
(10, 'tur-16', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; letter-spacing: -0.48px;\">Таиланд- это сказочный «остров богов», «остров тысячи храмов» и драгоценная жемчужина Индонезии... В цене проживани...</span><br></p>', 'Тур 16', 'Тур 16', 'Касабланка - Рабат - Шефшауэн - (Волюбилис) - Фес - Мерзуга - Уарзазат - Айт бен Хадду', 'Майские праздники в Тайланде', NULL, 'от 120 587 ₽', '7-12 ночей', 'images/tours/rgzXeP5CmK5vNpb1UOBteMcrG6Nx4ROPgNj2CMlV.png', NULL, '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Международный перелет (включен или не включен в зависимости от выбранного типа подпакета)\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Проживание в выбранном отеле с указанным типом питания\r\n                            </p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Личные расходы и все, что не указано явно в программе тура\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Страховка от невыезда 3,5% или 5,5% от стоимости тура (оформляется по желанию)\r\n                            </p>', NULL, NULL, NULL, 0, 0, 0, 0, 0, 'images/tours/zqv3thDtH6yMdVK1La2SOCE14v0cnM8CGgAvUwLb.png', '2024-08-23 10:15:23', '2024-08-29 07:43:57'),
(11, 'kazan', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; letter-spacing: -0.48px;\">Таиланд- это сказочный «остров богов», «остров тысячи храмов» и драгоценная жемчужина Индонезии... В цене проживани...</span><br></p>', 'Казань', 'Казань', 'Казань', 'Казань', '<span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 20px; letter-spacing: -0.6px;\">\r\nОтдых в Казани на любое количество ночей с возможностью выбора экскурсионной программы на ваш вкус. Экскурсии в Казани, Свияжске, Йоршкар-Оле, Елабуге и др.\r\n</span>', 'от 120 587 ₽', '7-12 ночей', 'images/tours/5S0QAlZqJAYSfzzV9k6y3HnlyHGRm8ouOevVHwHg.png', NULL, '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Международный перелет (включен или не включен в зависимости от выбранного типа подпакета)\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Проживание в выбранном отеле с указанным типом питания\r\n                            </p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Личные расходы и все, что не указано явно в программе тура\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Страховка от невыезда 3,5% или 5,5% от стоимости тура (оформляется по желанию)\r\n                            </p>', NULL, NULL, NULL, 0, 0, 0, 0, 0, 'images/tours/hxTuaB75ACeMMQYhSqD8IUV1rpDZaUEw1mhl61gt.png', '2024-08-23 10:15:32', '2024-08-29 07:33:14');
INSERT INTO `tours` (`id`, `url`, `description`, `title`, `subtitle`, `preview_title`, `preview_header`, `preview_text`, `preview_price`, `preview_nights`, `preview_image`, `agreement_info`, `tour_cost_info`, `tour_additional_cost`, `samotour_tour_id`, `path1`, `path2`, `isHiddenCountryInfo`, `isHiddenTouristInfo`, `isHiddenTourCost`, `rating`, `hide`, `background_image`, `created_at`, `updated_at`) VALUES
(12, 'kratkii-spravocnik-pskova', NULL, 'Краткий справочник Пскова', 'Псков - Изборск - Печоры', 'Краткий справочник Пскова', 'Псков - Изборск - Печоры', NULL, NULL, NULL, 'images/tours/kZDUOeMRVcbBYTchkXVrBCGq0jLzAZP40fS0h4se.png', NULL, '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Международный перелет (включен или не включен в зависимости от выбранного типа подпакета)\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Проживание в выбранном отеле с указанным типом питания\r\n                            </p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Личные расходы и все, что не указано явно в программе тура\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Страховка от невыезда 3,5% или 5,5% от стоимости тура (оформляется по желанию)\r\n                            </p>', NULL, NULL, NULL, 0, 0, 0, 0, 0, 'images/tours/dR8KGkzPT4MNszQbB5FLeVXVmjAEk1oL63cPGN7x.png', '2024-08-23 10:15:40', '2024-08-29 07:31:15');
INSERT INTO `tours` (`id`, `url`, `description`, `title`, `subtitle`, `preview_title`, `preview_header`, `preview_text`, `preview_price`, `preview_nights`, `preview_image`, `agreement_info`, `tour_cost_info`, `tour_additional_cost`, `samotour_tour_id`, `path1`, `path2`, `isHiddenCountryInfo`, `isHiddenTouristInfo`, `isHiddenTourCost`, `rating`, `hide`, `background_image`, `created_at`, `updated_at`) VALUES
(13, 'san-paulo-parati-angra-rio-de-zaneiro-iguacu-buenos-aires', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 20px; letter-spacing: -0.6px;\">Все, что есть в Индии, создано благодаря любви. Любовь к науке и истине позволяет сегодня лицезреть нам обсерваторию Джантар Мантар в Джайпуре. Благодаря бхакти, любви к богу, люди возвели храмы Вриндавана, Храм Лотоса и Акшардхам в Дели. Любовь к женам один из правителей реализовал в великолепном дворце Хава Махал - где жили женщины гарема. Хрестоматиен пример любви, благодаря которой мы можем любоваться мавзолеем Тадж Махал. Да и в нашем случае виновата любовь к путешествиям – с нее обычно и начинается любовь к Индии.</span><br></p>', 'Сан Пауло - Парати - Ангра - Рио-де-Жанейро - Игуаcу - Буэнос-Айрес', 'Отдых на Бали', 'Сан Пауло - Парати - Ангра - Рио-де-Жанейро - Игуаcу - Буэнос-Айрес', 'Отдых на Бали', '<p><span data-metadata=\"<!--(figmeta)eyJmaWxlS2V5IjoiRmFVcFpkTUNPWENjYVRoSkZBTTNGSSIsInBhc3RlSUQiOjE0MjA0NTA5NjIsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)-->\"></span><span data-buffer=\"<!--(figma)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(/figma)-->\"></span><span style=\"white-space-collapse: preserve;\">Бали - это сказочный «остров богов», «остров тысячи храмов» и драгоценная жемчужина Индонезии... В цене проживание в выбранном отеле, трансферы, страховка</span><br></p>', '10-12 ночей', 'от 360 400 ₽', 'images/tours/MHhcsumBCUAyzb2UQhyDQbicIXlk98ZfcplvuWV9.png', NULL, '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Международный перелет (включен или не включен в зависимости от выбранного типа подпакета)\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Проживание в выбранном отеле с указанным типом питания\r\n                            </p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Личные расходы и все, что не указано явно в программе тура\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Страховка от невыезда 3,5% или 5,5% от стоимости тура (оформляется по желанию)\r\n                            </p>', NULL, NULL, NULL, 0, 0, 0, 0, 0, 'images/tours/nN5fIdbmcj0Uo9FOZrBbnMfU6d5gOBsLtCi9EPcS.png', '2024-08-23 10:16:02', '2024-08-29 07:27:32');
INSERT INTO `tours` (`id`, `url`, `description`, `title`, `subtitle`, `preview_title`, `preview_header`, `preview_text`, `preview_price`, `preview_nights`, `preview_image`, `agreement_info`, `tour_cost_info`, `tour_additional_cost`, `samotour_tour_id`, `path1`, `path2`, `isHiddenCountryInfo`, `isHiddenTouristInfo`, `isHiddenTourCost`, `rating`, `hide`, `background_image`, `created_at`, `updated_at`) VALUES
(14, 'garantirovannyi-tur-braziliia-argentina', '<span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 20px; letter-spacing: -0.6px;\">Все, что есть в Индии, создано благодаря любви. Любовь к науке и истине позволяет сегодня лицезреть нам обсерваторию Джантар Мантар в Джайпуре. Благодаря бхакти, любви к богу, люди возвели храмы Вриндавана, Храм Лотоса и Акшардхам в Дели. Любовь к женам один из правителей реализовал в великолепном дворце Хава Махал - где жили женщины гарема. Хрестоматиен пример любви, благодаря которой мы можем любоваться мавзолеем Тадж Махал. Да и в нашем случае виновата любовь к путешествиям – с нее обычно и начинается любовь к Индии.</span>', 'Гарантированный тур: «Бразилия + Аргентина»', NULL, 'Сан Пауло - Парати - Ангра - Рио-де-Жанейро - Игуаcу - Буэнос-Айрес', 'Гарантированный тур: «Бразилия + Аргентина»', '<p><span data-metadata=\"<!--(figmeta)eyJmaWxlS2V5IjoiRmFVcFpkTUNPWENjYVRoSkZBTTNGSSIsInBhc3RlSUQiOjExNjAzNTYyMjEsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)-->\"></span><span data-buffer=\"<!--(figma)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(/figma)-->\"></span><span style=\"white-space-collapse: preserve;\">Бали - это сказочный «остров богов», «остров тысячи храмов» и драгоценная жемчужина Индонезии... В цене проживани...</span><br></p>', '6 ночей', 'от 89 600 ₽', 'images/tours/fsY8R7uTzouqgdFA9Ze3JXgCngc8ZLakrYrNww9y.png', NULL, '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Международный перелет (включен или не включен в зависимости от выбранного типа подпакета)\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Проживание в выбранном отеле с указанным типом питания\r\n                            </p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Личные расходы и все, что не указано явно в программе тура\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Страховка от невыезда 3,5% или 5,5% от стоимости тура (оформляется по желанию)\r\n                            </p>', NULL, NULL, NULL, 0, 0, 0, 0, 0, 'images/tours/waHl9f3B4owPbbTKynJePgfsROQdh2hxaYbQ0ZHp.png', '2024-08-23 10:16:13', '2024-08-29 07:23:19');
INSERT INTO `tours` (`id`, `url`, `description`, `title`, `subtitle`, `preview_title`, `preview_header`, `preview_text`, `preview_price`, `preview_nights`, `preview_image`, `agreement_info`, `tour_cost_info`, `tour_additional_cost`, `samotour_tour_id`, `path1`, `path2`, `isHiddenCountryInfo`, `isHiddenTouristInfo`, `isHiddenTourCost`, `rating`, `hide`, `background_image`, `created_at`, `updated_at`) VALUES
(15, 'kasablanka-rabat-sefsauen-voliubilis-fes-merzuga-uarzazat-ait-ben-xaddu', '<p><span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 20px; letter-spacing: -0.6px;\">Все, что есть в Индии, создано благодаря любви. Любовь к науке и истине позволяет сегодня лицезреть нам обсерваторию Джантар Мантар в Джайпуре. Благодаря бхакти, любви к богу, люди возвели храмы Вриндавана, Храм Лотоса и Акшардхам в Дели. Любовь к женам один из правителей реализовал в великолепном дворце Хава Махал - где жили женщины гарема. Хрестоматиен пример любви, благодаря которой мы можем любоваться мавзолеем Тадж Махал. Да и в нашем случае виновата любовь к путешествиям – с нее обычно и начинается любовь к Индии.</span><br></p>', 'Касабланка - Рабат - Шефшауэн - (Волюбилис) - Фес - Мерзуга - Уарзазат - Айт бен Хадду', 'Самый лучший тур по Индии для первого знакомства!', 'Касабланка - Рабат - Шефшауэн - (Волюбилис) - Фес - Мерзуга - Уарзазат - Айт бен Хадду', 'Майские праздники в Тайланде', '<p><span data-metadata=\"<!--(figmeta)eyJmaWxlS2V5IjoiRmFVcFpkTUNPWENjYVRoSkZBTTNGSSIsInBhc3RlSUQiOjU5NDc3NjIsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)-->\"></span><span data-buffer=\"<!--(figma)ZmlnLWtpd2lGAAAApkwAALW9C5xkSVXgHffezHp09WveDxjeIuJrmBkG8J2vqsrufE3ezOqZ8ZGTVXmrK+mszDJvVk8367qIiIiIiIiIiMgiIiqiIiIiIo6IiIiIiIqoiKzLunys67osy7Lf/5yIe/NmdQ/r9/t+O7/puhEnTpw4ceLEiRMn4t78e78exXH/fNS5fBAZc9OZZrXRCzuFdsfwX6NZrvRKm4XGRiUk63XDSjuT9xW70iiTDsLqRqNQI5ULO/fVKiTymuiFFaG1pLhKuReerbZ67UqtWZCay41mp7p+Xy/cbHZr5V63tdEulKX+ikv2ys2G5FeTfLuy3q6Em4COhaVKo9ID3Nrs3dOttO8DuJYFtiutmgCPl6vr6zxPlGrVSqPTK7ZpvVQIhbeTGd7ONLtt+lERzk6FnXalULcl5E+7vO3xNdVGp9IulDrVLTpZq8KYFQ1l17YrpWajUSnR2QwzCYfXXb044fV65YdWetVGqV2pw2+hRqmrA8YNOjLw1emG81ZvLFwaxgzLvaSNEPIKOzsMLyD4LveaDSVvNHOuXe1IJa8xGUStvX4cgUZrhY72HaR6c0uT3rnheDAcn28fjgSn0WzcX2k3KTDNspYLBas/T6awAsiUm6Wu8E3SKxUaW4WQlL/RbnZbJIL1dqEueLlis1mrFBq9ZgtRdqrNBsD8Fp1stkkt0UN5LteqSnalUqtVW6EkVxFHh36rph1rVza6tUK712rW7ttQIms01ShXyiK2FO94p3KvsHSC4SoJ4GR4X73YFK09VW3QWEOhjHO1dFZEdU24WWhVeueqnc2eq3utGwVl8LqSjEOx1iydJXf9uWp5Q7X9BmjVpac31ivlaoHETZvVjc0a/6T45hACtrO3uGQPYbdrBWn01nOFcLPa69AyuUdsFdrVQlH5f2THJW7TRK+EPMg9KkFxc+3RdE9n0GMKYVgNGdAelJtdKXvslVpbqamKUfi4lJBw06YQ4OPrzXJXW32Cxd+ggNyX2Fy7eY7ME5mQrWYjVKrKxJeqaErNOmBL/UkiwV6r0JGZ+2XhXv8gOjec7XWiSzOrPY8K7+kW2hVKDR1zA+0hv3pTZ5zfgTsZSowE2SDNlpvnRJa5q415vlVoF2o1rA2TrN5ruyFYWgTXKusCXa40NnrlAtItaOMrkmfWdiWzKpn1qlI9pulmrVwRNVjrMH8r9zdVLsdb7Uq5so7GlnutdrNUCUX3TzCklZqUn0zmRi+sOh5PpaB6t9apthR4ul5odJn31UZLR+6azcq9Bavc15Y2K1ttTV7XopoDX9+k2zYpCiic3diqdaX5mwptBirp5s02l8jilrBbr8NL70y3gWIogVtVvx8RtiqV0mav2C2iFQAeqeqDgcT4NNsFNTu3FUfReFDHCAg7qFyvs8lIbMgws4S067oseOVC+2xFSPuuk6LrgcxsJm4Rq0s2V2rWmmkur/NF6yyFmCZNqS2gRrnJXCO/Yqsk2VXRXLSd5LGwud7pKQ1ya5uFNvPA5XQ5qLQrdsKfqNxbQk625yc3dbRPhRjX1Cad1lZIXFPrIqpmWO1IE9e2+sOx096VsMmEAGjQqHKVYaE1YRWIl4LkqfLAGJIUEJoqxgtYkMJAckqfq9atmPMY5DNVEktbzDuxv8vVfVbucKc/iqz0WXrblU5JBb9elX566Ku21rF6G1R2d6Mdx3GuiiVrs/AWmEAUmnK72ZpnvfUmdpWRZCEq1rrCoF8slM4uggKZvyVdPpaaaFQV5QBsui1MOk+v1jynCVjoWB5CNKLWKxVaopm5eY4J1S7pkpMXouVoZzLtz4aTMXWShYWWGV/kStqju9Wzlbm2+YvVwtllWbGCdGDKzQ7GkIR3rrAl4+fXor4sbZ3pcJ9c0gjM9DYrTlW8xuH+djTtjoezGGLtgsjGtKr3VmohCY9usoYLpl+ajOPZdK4Sy6gKcCPlKgOvXpDF2YdxN05BWMLbIJFbh2K5Z2vkXUaxl8LZdHIhKoyG58dUSIkZliw0gYSHbXdJ3yKX+geocNIf5KO65KUG1rcWQAQpnQhstnJPt1rDAcAyAsw5JRSbZx2iPPJGW7G4KWgpu64tz1eu3lPIr2Tyd5BfzeTvJH8sk7+L/Fom/1TyxzP5u8mfKFXbpWzrJ21vz0yGIpk6Hk0bqClWtirSAy/puF+cTEZRf9w8iKxq0Ltuw05txEg1WYZJe2G3iDHXtH+vznhVcBX+5mQ6fNZkPOuPqO5MaWZsUX6Vgn+miwOxXlUO57W3oulsyFwVWLNFUaZqEcVs1kn59clhHJUOp/FkijxYRwoYSwpMqd0MmZrVNmmvcl9F5iqqR87H/9OmWgW6gvEsMSfI51gaeOR5lKo1Ukt1McFSZZkhxpcntZKOn2ZXa9hvsS3HtjATk2l9OJ0KJ+n80+Hn6WkC24VNZS3UNd0v9+M9a4n8Eus3IDPXdE+tlZ0YuVZjA5A506rI0wu35OG3yuKiB5VLB5Pp7OhkCnC8WAxYNt2MMQkAt0vb9xJAOnf9Wv/y5HC2MR0OLJGcnV8Z0c8Z9O10C+Z1Wv3ZLJqOKQKr2tKpgnVXY+LpwB7OJu0oHj4L0qmIlB2VTMqHl6bURHWmh+Mdp4d+uRqKyyU0DT4/6zAJT21XGLm+M4btsOksa4c9CA+vhJpZpVlvM3MZZTFpQaeCy9Uu6EYjl5BBmLMolWRqEJP1hqSXrDNYkP7OBTuMaZ82Me33I13lwGOJxUPWtMVWBae5K6RrReoX0TaxNaQDrVCaHMLQ1NVberh6iN0NTlDodkQvcxlSeSV15jCeDXcvk31YKq1CCTd3q2L3P4HNFyudc9alQErQCe0oquUFyAYorN5f6XWamBsV0AIApWOQq/UWOwlyUgKOlUZrEg9lcFlYADnGTaGI2Lt2z6Vo56ZipFl02IsVWoCNe9rirIjc8IGdUDvaBw+UMVOWZu0gryZDh02wHpvsGcl73bYOXJGlnGdQqjXV183ht/eSDQD5fLeFJ1zp6Q6m1+42OlXdsy0xy8pV8YtUAZaz1XrsFQRnpQq/036GndNscbAJ2qQprMNST+ixcJH36k1CC3i6pH2btgUBtTbFoyOdswX4JoKWtzndCCyBhdOtfjbRBO32ShnvlOcqZWcr9yXVjpHdatrN3xpp27lNHeDjaZ5pSP6EbSLRppM2y3Z1S2qf6kz7YzvOtoe3shyz6+j0WD9YmEVAoBmmN+OuVbx1ohc8fbtzWm83041HkAEl60guA7MrRj4DSZeMpVY33LQwR2x5DklorcxBltTqHJBSOiY7fgtzlNbmkITS8TnIUkJMCSCldNIyyiCClBA7tQBM6J1egFqS1yzAUqrXaksO6ohel4UlNK/PAi3JG7KglOKN2LxqCa3V8bkJV5QQUKGBKdR5ejO7jibO6RxyS6UfM63tiJ8kSlPqFqslCoyQTjJetZHN+mKvrINPDZl3aVFO8BYgeVt3AbZkTX2aXw5bbbtOrGygnsy7FLDqUFPAMZvSCcJMtbNjbRHYOSc25fgR4CY7LsAnwp3pZDQqD6fWvMC0m2NfZFVAwmq1bV1s00ysQTTAss0iyiv3tlggraEtQUFcLs15G12WJs+PiVvRGOll440m+E2a9EuTEf6Il5uaVeOd54+/zZ+gz5+cdVmofImcd5k/fhsQ2HPAg/wJ9viTU0rhbHJAhR1Jm23jHTjTDYJtShC2+lPjBzuSFRxNCOzdOeNnKgT1/mw6vGS8pf3bbyfv7d/+FB7+/u138Aj2nyLA3P5TBJjff4oAl1r9KXa9Oh5E1PPPHw4H5oEMF2vGt7sPCi/2R4cRdbxD3Yk8yvjriLXR34+MF+z294ejy+B7saz4JISzWbwzHR7MyAWCC8/DPlUO96PpcGd9eP5wyliwxrstukFPUQASHpENjd6S1mYWq4YH/R1mwUJdQh24HWL1NO8RQ3G72qsQWBdtkA5mKWB5CV5oGq8M/VeFyNYu9Q9itH9ehQmr21uPRy/J+K0KW01hPQDQS3Pi8RPxlWQeEJ3dILmUod9K5J5lix0Bf9kY4IORUH5CFTKDk2JVmQQ6N70w2ofUcOdcNDy/N1tAItQoXUpRqmwlhjsLKHM67FV0ZVmP+jMdqL/3WmxMKTKlO1qK4nrjl1qhwAPpFU/tKM+8i9MuEWgSx3q52S43eK4U1ttSvlpuqBU81ujWpWtr7AMkVnmchVpEc6Jsnydlg8DzFBtveZ4uFHRPck3JPq9lUybP60Kbv769pfGbG8Qi8LwxPKfR+ptK4Tl53swgC/yWUkmDpLeG1sd7xCbBSp6PdN7Ubc12Q/h7lAiF56NZWEV+jyl3dOv92PVaQfrxuPpGW/yKx4foLM8nsMmR9r9kHVec5xM37fNLN227T+rY/JfdY59Pbtnnl8vGjedX1NaLkv/KZkufX9Xu6POrW7b+7a2zDZHTU2rYLZ538BQ+72x3apK/i6fkn1ootrd43l0obkn+aTyF76dvWTrP2IIhnl9TrJ2T8flanoL3dTwF7+sLZzelH99QOqMb0m8sreuE+qZSS/OFUrcteEV8DMmXsKryLK9b+hWCkMLPOs87eG7wvJPnJs1Ke1WeQv/Mpu0PrW0IP7XN5hnRG/xpdYwaVTwYns0zrac9nWfrTOvpQueeM61n3M6zfaZ1+108w9qZutTrEA8X/C7LqYzLlnhVPM/xFD7urZ+tC/y+Rk39wfsb3bMdnt/MyiN8fQvPkOe3biFwnt/WCjsC7/EU+APts23J99utTXlut7tFGfedEHec56Bj+Yg6Dd0p7TJMMn7ntwjp8dzbsuXDLdvvZ26dVX25sNXutHmOeN7Bcz8MseDGjHlKfsLzTp4HPO/i+e08n8pzyvNunjHPp/Gc8RQ5HfJ8Bs+LYYjtN+ZBnkLvEk+hd5mn0HsWT6H3b3gKve/gKfT+LU+h9508hd6/4yn0nu2F4R1C8Lu80pZy+BxJCMnvloTQfK4khOj3SEKoPk8SQvZ7JSF0ny8JIfx9khDKLyChrH6/JITyCyUhlH9AEkL5RZIQyj8oCaH8YkkI5R+ShFB+iSSE8g9LQii/lITy/COSEMovk4RQ/lFJCOWXS0Io/5gkhPIrJCGUf1wSQvmVkhDKPyEJofwqEncK5Z+UhFB+tSSE8k9JQii/RhJC+d9LQii/VhJC+aclIZRfJwmh/DOSEMqvJ3GXUP5ZSQjlN0hCKP+cJITyz0tCKP+CJITyGyUhlH9REkL5TZIQyr8kCaH8yySeKpR/RRJC+c2SEMq/Kgmh/BZJCOVfk4RQfqskhPKvS0Iov00SQvk3JCGU307ibqH8m5IQyu+QhFD+LUkI5XdKQij/tiSE8rskIZR/RxJC+SFJCOXflYRQfjeJpwnl35OEUH6PJITy70tCKL9XEkL5DyQhlN8nCaH8h5IQyu+XhFD+I0kI5Q+QeLpQ/mNJCOUPSkIo/4kkhPKHJCGU/1QSQvnDkhDKfyYJofwRSQjlP5eEUP4LEmqi/lISQvmjkhDKfyUJofwxSQjlv5aEUP4bSQjlv5WEUP64JITy30lCKH/COxqlwkWbsVybu42XuGq+OLP1/sGBOEuevzud7JsHjDeb8NcvjiY4k9725VkUm8Cz4THjBxzF7kl+LJ4dftygP+sr7rIJtoaDaGJ8P8GJ7+xOR4LU6sezKJwcTncg4cdTvDscFHEHpzsNCeXQICA25SXxXguDZxI1Md7KTBjHp4z3+oPJgzFJfw+3hZjDHj4mXusgmvWHI1K5iP7G4ojgvV4kJhERGyO9NIv2Napqi5YvDrfZGMPGKptOkYtt1l0zMP6x/7tN7uCdTREG6dXtqdAc0zK5Y8qM8W/WQTptrBuPP+9PxJudye4guDiMh9sIzjM5Hu5Q66TJx+wCYrPnLUF7HO9OpvtmZJaHOmIv9MyKpjp7uOpjYR3Qan8MkB1PVYoEctpCcC/xfhnaZXMN+ez5zbXmmIXsTQ5Hg5LwV++PAcDPjdMJWycqw+ZaLFVIHN9V2SqmG9KXeObEgfR0XYuwu+ZktD955rBECy3i5Mh42Tt1URXpRZ65lpj2+eGY7ZW0fG44mO3B2XUL0E3ryS6b63ekJZxl2frcoEKRzDO9m2bS981+vFfkJAjbsmZuFj+5zlCW0V/j5y9Elw3bmF2gteE4ocngC6Q8PB/BfMBGhpz1rr/T5CTj3Og8ZyLkaG5oxeAH/UvDuNM/D1+eJBsiVKZCMvk08m4bv25nry87jmgag+GlOW2oWhaJ+LGkmxejKXHfqNNn+M1DvheM4DU2bwq84yMNC29BQ5pfNiu7/dFom0Cd8BWbqXdsf5gE6tLeXWNraWxxgFIhHUvxtZ6XPz+6fLAXs/B4S4P00Cpm2fGWt9nyXvj2w4nYhjd43uld6KbCfLnnre6hxVNIXShOLoHzas9bm6VRZXbZU7epzJsTDh4NUq5Ojibn5ShCUTqTUiKP5u5uHM0wWGbVO7VPP6Bl6b/G864dsHO7GA1qyv8vB951ZQuYy9nJyPXWW+itP+8tM3yht8y1hd7mj/Z26creLrteQWOhtysOnunt6r+it8eO9nZtYDtXU/7p7fHNDA/Gz20Tnh3EZpf9uDXBbvMe7CV47CnyRC1TwkyCeaV4zjRRDUxNkg6GzKkRpLBB+7buWabOsskXnTiNv4JZtBtV0B7UOctEkrL7SKjOpr3PSa4Q70CK3DJWdDKNapljT4zm7nAaz1K5SFswlM0vbcjgGX91Z7K/36cLRbsgzSMVA2NnEJ2mDzKAqgW0fyXx/uCiM9dLV5qmZQWp3QmjmflCzqxkTN9qOVUd1rkp0R2k6SHNpGlZVp0uYSIuujO3IlYKoSu43p8yhG4cskzb8JHqnNSUTCOaPTgB3fUW0e0zNs8ijsWftM9XWg1Z9zk8QmKeqEVsHvC88PL+9mTkyMeaoV3cAZtOiMRCwCfGI6tMCO/ROoJjpWJgE7LorLoUvo+eQOEAGH4ncQQkuRGNZW1EQq6tSZaydxhH62jEhvgs9OPyWCM5Hn7GcHe3OR5dbjMAF/sjxQ7KdhZU9/cPZ9I7XbosXX+RLhlnGP1CHEez6gAu6T96Nx2C8zbP81xBBdBlCPQlK8qNTdZ0dYC36uq3I0bHv2BLE+JMMy0E0V8WyUrv+wIR9LdTl3k1o3OTw4PqwLzTM4GOEOl3MZ+spMk85OFQyFJCl8i+2zNLSTZU6u/1CLJmSfnJ/F5sLnTUH644afBhyrdcoyjC/wGjiQhE2NXB/wkzpAPlh0PCzzikucHDlXOYeYBVZsxDyDwsWmcv2v8iTM+pyNqgMlLuMEG+zyp5zpksb3cYjZgdD/l4pyOUuoPtJG7VIuiOj20q9aLGADk4KVVa9gaLT3xsoyGXpcgEcqutWxR4LsRoRspYa4pjgpWcSWYrVR3ccnhwEtIh9mcJe1W4eBcrEx4FoJK4OfX++JAV/nIYjbAFEZbW5IZxcTIdOI/rKgj5+HBbYq7brIrSuBPIUrxDrp+wsowZjt00jQbr7ArKnCFzEIonOe/F4vT5C6bPQlmFAplEM8nTnQ94xtO07f2H6V2I0ZUpLjoIJxGhZqyuv7rL3uCsnVixFjKSD+A4WfbEi6MokJFt9VNjwyIoK7XbreRHQ3zu6WWxSJ1J6HoNmgAILHhLrBToQDR2E3z5cLw7kuN0ORXNklwZxt2kSGW4atkuJfXrfbY2iVneSaCWqndwuD0axnsQk4aF3c6kE/X3a3P2pBH/aCNBlW2bLELJvApn0u25sRRSzd3wQTjF/DlksbHsGxZYWDSDV6e7dce/ijIrV38UZkYkqWJJ26tbxj8xk1lyvXCCFuoORj0Z1qNgyrp+KNud3Hwrk+eRbmWW4oNp1B+AsRzvTR5E1mzCihESHMjiAfqKpbHFkvnunGHFpxGXOWYru9zaJZc4ftklTnRke6QOQXW8KxtVZfVe4w0O0XXAtOujoLOJFJSji8Od5EZIcqYksT+9vuKViMZqfNpXGMdMcrpAnlVJKrYTt4B1z1Uulc71dL/vHWkEh00y5h8Qc+zWbvqC1KoDhnKIIZoymAG1LM1PMdubiB+PtuV8nI4QMCvp9QLDyWJyDOlJOi3xJZccRgachdGPBDPnsily3gES/CV775PUsmOgyCbjPOuQOIlMBdwBuKGVtNdygs/Jnj1gl0NOdxnMu4KA7UNak7hutdxL7jZeiV5AR3HcREF9fzsFK5V/QpRzUEnURHSx0WenrjJULJNvFLY4VtATGMM5a9tezvTCc3qW4cuzx3GPIgTuwFXvOOQqbP8lwgJlhlOsFhjJVVkQTNje0LMZ4t8tyPZad/a27gLg25oh8QIsA0vBWny4u8vRHBZjKJ6lsnaX4dyP+See0IzwqAnii+fFzuhOkvEnWy3rvPk8s4hc83Am3rQsEZRj4hgOvFbxmsgvg7E+IQIT6qU07NaFGPAKHldhO56MDmeR8zsxcjvZXn3WM8e+nbXERiHWHPdbG65141fXe41KxZ2XFmrnCveFJLyabrfkplJiFZ7OSsxe2PiY89QABOPD/RDTwZjEhi2JMxcEVWILDWVG4I2fP8RATl1uWVlkSFcOxG5Ox+ZrzGqGkpvzxyw1l1uLbanQcKDjc6oOcmKDpQWN0h08rHqWBG0m7kTQwkiC8CBmiRHUNw9WDAZvYfeBsydLtzrvoSQ7IgI5H7TaLdcEeXCY2G6eFYgvN9B5BpX1dXvfL8eRSbMtqby717WESWT5UXqZRdO2ZU1+4o66lTJZZwWBQaevokRwHwvEVYkZ0cSQkPdl3G2ROyPHBjNzEDgAnQQywnTh3kq5d26zwuTerNbKveZ6zxZzetlLXqOgh0z8+1yJVPQL052UC3aaCLEwPo8UcbpYDDJZfzjGEWmrzScb2PWnxv6VuofTIRx6g2F8MOpf1nmxJjsFzeo0gP/W6JBYkWvtQDNIkmrsIojEUOGC7WhLy9rRqM8Wfc9WyB0o0FbYj2yQkCpuqEnik5XxsPCUUOVc/XA0G0rr0XRdnMctOxQM0A5zC9mjDF728oBfmtBB2UHV+xJBlONOpx/uLpXYbh6+M9CBtcekcolJzqfGeknq9BbuPSxX7M3zlcwFr9W00cp4cCBbW0QTuaSss7D2AN5LohDM333L3ct8E6SVSWBKRi2pRQ8z6HaWUw0UiyujEZKScvz8arlc07tqmFbVbzMH2etNyY2xiQRCCpDjIbNQzr6dfIrYa55esVLTG+GLrdWHtj90LQYoDb9yYTKTytB9VbZn6BdmkulBc5VasXnOmjZmasHJnOW/bd8/yrSq89tPF0i9MsAcIOUVxmO3dmNVicDMLlvsW5wVENrWCnic9urtFD+9lRlw1NlLwDnJpEX5euHetIi1+d550bIlmZaulDiwrrR7nDZWuzILV1M7c0wsD2Nhr1SsaU43Mou6dHydVG+9UK/qTcUTmnWn4Sc1cy5p/BQWoDLn5XSt0kFFe3IvENMA5BpGHm9gDrjWAlqFsrtkep0FuDt719uccuUW2BuaUlnP1G/Mvslzk7KS9ObmK0VvfG8m0n8d+jAvRYVH/e1IomXegcWUrc3riXfMkepRX0L+EvqSiRLKSmFydoqadGp6brL6yRQNrkqBzY6uJ94umywhR9qfTVwqSKDayM/7JjebhP19m2XFV8totVeM1oz9LGq9xJKbgNeHlzBLrJWWZqgxEl278OdXdqeR9RXWzKrbkNQnFyPnGk9Gg7NqFwnfsGispwuCn8HdHBJln16ucuJBlVgPeKSlqvbK5ktHNiR4vNFIpKtMawjzAoZ2bKvR3u68qRFlzqxL2PBCV2OZOTbo5yPWK2Y3FtUn8KV1abIyGBK2lA7kZkPs9ay/f1CNJ0+/m3NoSOPrTEEUynRKkKNBQY4Ogh12DkkmJwXJdF4qV+TdUcbQnNusdirFZqEt097TS4AyjfxyZasnl9yb+gpnEIIl8FypKe8Nksqz7l6w5IJCrbUpp/pyI0/mCClPX9pxb/e5GIjDbqDTAE3IlMA6Jndk9RWlJOeHWB8UK0S/WCTnlYpdlmSenkwOJqA1VwvYVlb5WDPmncwHEUz3YIAwuuPhpU4iRMTis9NjG30gtRFhkAozx1blYpiSyDcYDiKqY5ZK/zW6UZehkac9D3nqwV4/jsyS8TVhgXcf4KUkd83GJshkLcLTZiKSY8wCnhb09LHVjbw8LegZw7hlN92i60yTN3qLbL/DH831V7v/Jt88Owt0Sm1+2fd+zPkGv6UOUUGCSBKKeatn/rf1uFgol81TXNJyEA3jcLI7c05BKEWw8SaPI6DJ2ErWsfZLwNaHo1GC8xPkrXOeQH4KSPOi3WXLU6ZrUvZZy0EHaZjn+ubfe5otL3T2txJfkPTPecjkKo7g833z89miuVf5PN/8gk4ZQry4ZFspqR8MjviL7/Qnz2RrHR4yrdGvaaTGUT0gof/nfhxdrE8mY7YQteHoctLuR/Hu9gjhYqicFJDnA+ZVngNnhKEFr0kKUjko+GcSsNuZpAWvTws0NjEv+NmkQDYnc/AbEnCGH7ZMlg3Kf92LFTgAKCjE5Mz77DAozCImJX+YKRGGBfb+DMwyJdA/ykCFI4F9ILOhbfWxdLF5mef9tndVDospKly+C6WR2WiDw2jK38J2km3ZhY2QCM5vU4KFnGkF3qcTDVD3eq4CH/XMs6Cm0MV59W9IpRWyEbPvyBbMdeY7LThdDTIa+DGPU7RY8RfV98XeYRIWg3q2kddyUsva0n2Y4k8kkTfEJAbiw24tqtlZflYn9fcHDknH/s9k+2ZZs8UfQYylO+jpnyfEotSdXyPgac+gS4uVPj+nIpIuR7uxeUHgvcBfACPf2Dw38L7fd70WKbzJM98+z1pbIuPDsu6EKXAJtf1bzvwwLUlwrh3FbF4rYxkYXG/am1xUk0HoyFbUDv7gImsYM2K64oXE5vmB90LiTQRmC9OoeLjtCP1SGuELJUxo/sbzPustgIgcftzzPqe2PfErJknGduEgqVCTdd/kzW/7+/MV7h2++YIesYd0AU/lhiRtK1dZBfrnp/2DPVkIcJhWzY1HQBbxTApNLv+umpuOwizq2RlzsTCi85kX5p5sHnMVsK3QSUu2mDlyXme+wjz2CqBF7gq8xKpmbjSPS9K2aEuymQPCm83jFyEW7RyOTnI+emCeNM/Z4m8RCTVY78zUfFmStkXfquRESV7pmScnGVv2bU6TOg6KkTX/QSVP1EOOPkrsaCfjmgTH8E4lCPTvFkpxtS7NDvtsvecYz2YWpijlIVM3kn4ww7JY35XFsouryCuL8pwsClZJ7nYA/u4sOMQzYQreH00nFD03W9Q4tNe27ZXxmfmeqxQ6HTAXCaVdWcrBoXpF5pL53mxxSa50P4sTgwwsXfe+w3yfxyKPGUuIH5iftpipnXgvGH36Yw+zH2ne5YtjRL5FkAF5KiHP/HECriEf8n/ChvtSjaGXiNhfc5L8cCdWsfmg5/1UssNlUjon7G9YcjMgdXTe5Zu/82cQ6LKm1zQ4lzC6bP7AkxJW0NFwh1X6SOkLg9nkPBGZQXPc7KzjKiNoTJjn/aGXFHA8u1Dyfi+9amDeF5i/9sTWCLUPBOZDc80TUGxe4XnPVdaKw8Fw3uyPKqxj70wI6BvMy5FUvNkftDu1DmXI6rV+dPRM/nuD2B5GHdorT5uoDoPx/MwNqiWXtNPjazjcuKBGb9mmLPhr55evVlzSFnwdNdNDi9U0Ywu/PsaAEf1Yk6cFfSNh3PRm1vE0Ywu/aQB7WEwUaWxWvROZrEUo7LN/gLfT8rSgsiSrcdOGfCm7dgFgkdYFpnb27b75zYxD0bR9oVvXXQG0VTcwSmwv08Db9dm8RdmM1d1xN6BWza3ZvEVpWJDaSfM4c1smaxHusRCmmXmCeVSasYVtm9fXp59oHj3P2eJwFx9o7ho9cZ615ffbChYkGF+aBVicb47UCYvNJzzvy13alvTmgim5SPMdR0AWcVfa3Ygm+5GceD7H9+7MAizOedtyAhSsuxZBFm9vhkrPF4R1CFluhf0fDxZLwwvDgyqTyzOv1JIu66FMt4ipGDMPDsxPKHxeo7M33LmATYkp+8kjZWpUzK3m1YFcW8EYMTUmB7VoF9s/H3mG+Ye8LEJbBvsIxkvmGMXJbDbZvwqVHz6KczVCL50jzUuGsu4fMOEwJ/T9R47idCY4PJTOUV6m4Rx2BnQzZiVD8ghVZ/uPyv7miuOP5/jbE3G96N+mulHAftLBLLcp+NUOLF1MgT/lgNqnFPoaB0XB2NQw2WTavs4BacpOHLr9Mw5mm0rBr3dgaSoF/qwDalMp9A0OGqqOWTBrQFYoP+fvsQ5bPyeVycw8xjzyanCrnq1Y3vwVQ2fKhoXKZWzhMzUv/WIZg4cL2bxFGSmo1R/IggjKfjZvUWgQUImRwPypoTCb5pICzxzaN6nPmMuat6Xr5gOeZjdTth1BGvhjW8SCoi7avOCDtoBAEk5rzfyJzVo/i/yHbL7Fmo0zEw6fJbVq5u8XwNp+ldBXDEuftEVZxm3RuvkPrmhvOBq4qhvTibzp9w+2xLGlQwj0Py5ArRIA/pQFKxmlH0ajXYTzjxaeeCVUMQ3zA+woAbbxuadxdL8M/SUG/QctWF/tbpnfsTnHsxspWnpILsHQ6ch8MGd+VzyRJPPuhRrKBTrC/mtm2ubPfIkKRCyEF6GjfNIup9v4MN7LOCcJxyj+Rn+fidafyuz7iI924dYI3xIw0H3K98tstYfjoZwNpQUvnBcUYeL83BBjm3/Am5NSZ+eTnvmxDKxDLU76X5EBleeH/j/uEZSFacW6H/d5jtXCnYmmF6NQj8Fg+lfZRxF5VedK8TvmLRmQvL6+Zn5tzivxTmTAMBE2YiYlB+QdisyW+Y1MUxJsmxyKCrw9i1nvk+GfGqzf9MgkJZkevEPCXJyjaR43gHEf9eXY952ZBkK9uR2igbOC3vYWC/RHc1arc9KxeXvgfXxepEOBhDToat4dmP/h2aMx3Uy82Pfe5/IS1cVds+dnL/G9v0xkI+ERaODAcTafwiqELID81zmkRk/tYvQa3/zzHK618Q1wFP7bHEp9C/uXOayESjJYyiqupe/9r3lZh0UvPRl6tW/+d6aIbuJMmv/m99NgPcER3/sv/j7qgV8rHmxs3uh7zw6IZhz5Pthx8188hXbRF2dJVs1/Z1x043WVO4pv8cwXHr54i5kLB+alvvmgP2YSuCtZwKTYvNkzn4H5QcRx886FGivgIQ6weW1gvtsfDcdYKRQvelBxPxxwcqfMOV+aOekhGbdHKCEw6Vq6VP04x/ODaNJChbaZaua9xAhl6u8fKLkPBeYXkro0g7OhU+7ZefNP/gEBGXFtQ2mN+MdwrKpnXpo3P8aB+YDAvdzqJKaBhDEqvvkhfw4u2U/LLKM5Fli24gkPt2ccV7jiD/jmh115qb/DprAAwZghNG/xkZctqY4PDmfpsfXLA/MTrkAcBA5pmaWvcpDNyUXsn+rc+4mk+sP4nMJDVo0LMiiI5KeRn8weZOTYiJtyUxA0rQ7KPzhy9WjWH4icXhEQQ7WwykURsHlZ4H2vg7TwSViXLtej8aFdKl4TeN/nCpV5Ua0GA6zq9erA/FCgGtKePJgYe/xW37zZVzCW8HB/vFDyq7aEClYfY1hERAq06OdkAVTwrxGLdbMfYye7J7Rid6g3TmSU/usV5S3mI3vFA3ahCdI/+8Tj3D3JD3nmJXYbFh5EGP5pYyJqt2a+R5YCfNcDhlWKkdwrAr0biJn/gGf+px8LuCMQJfyevPlfGRiBPoJz5nmWeCfaF5WTqKs7Nfq+YDCUuM8+DCL06oC14z9x4CM72vZkMiP7KZdNpEWtf/RdrZqWyJ0O7cYXfPPppMgR1MX02YH5fxK4rdLqH8bY6OcE5jNoUIvJWB7KNBLV+LyVHmGNyvhwfx1jg76a1wXmf1p7ToF0NSl4fWC+i5AhqyxT4ZgmrHv0DX39pM8YGwHVk/OcLS7KbLULYyWNB566AmiRS5GGyxlmnfxNe03omiuhFr0SY4Cr2MqpXvvGtt28CLFotf0h/akNeYByCw+Xs8X1GUrdQY0usJiA8Ihs3qI0t5mgC1/DepJ5wlGYRb2XiYcOZj1VPNgvuRJq0e8jyDLg8EO/GkV75nbzFUdAFvEBK4SQ4A6w2HzO875yEWTx0DuigDoIsbhIX2e+ahFi0bZHqiAS2o8x+d5XZ/IWY8de6Bcd4DTG3D7P2vLBLmqG5scXCLPpGDJU8RVAi4yl1LYn64yBZ1i40qxFuGj7UkTqVi+S+mA/KOFb5umzfe8FHpJT3RQtoOxFXqxe0PxjG99ifpI1SLZd4T5Taw/RMKivdnhuIzowr/Nsix0RThxubUgCgr/oEBkoxmkH5zHUVeHbCOLvzGFwD5Ff4WSY82x1LKfROJlca6yElkpq7F/gm7d5fXfF6IW++Z1klbXhcAHXdAS23BqbNw95Y+oSkSSr8/5fPPO7GuweHbli+WnPvDspEGdH7GGCAJe/l5TNpVsVKdITQfiMZ95zJUYBY0iwmlUMj8f8viKgHGrQHjB/qrLo4xdNOWETObpjQ9ncFcb4wDIAsqJ/1O4FStCkSeQm41EzfzUnIGd0QuFhCHzMuxBdJlR5/jySfW9AyP/iBO+1IqtXa29KLBt5/50nnMp6S5RqrxjtTqas9ERCpYMPeP/JneXUcEJi8yLf+8/ejOGWyKZI3vw8lpMBgdG9Jic9zFMYxe+ZYBcJ85KGke/Bh4ln8z3J8wnybUcDJfDBAKoEbffqEQZYQW/K4YOiFIyzjDLsOU1iUfoRPx6yRrB1TE5MWv1xNJLuvtLv79ATDQRuduo1mR4fyuHhSWSyjcUxH86ZX8wg1dwFkTf5FwUFiDb/7hynxQmkhNU53Kdn4rofmA/75lfSMtkuFy+H+AiUfNQnLpeUCIzC2Lwn5701C2VRfK9nfj0FtSOiFeiyKuObc+ZtaYmwoud6sXlvzvxGCu8wyuMGpgLGP5ZCw53JAZjvz3l/y1LDKn0ZFblE4Nh80tcrH6EemXEIx1HVAauZNvg23/xAsI2OMSxbCSWYHAiT/8M/UgL4TXnzOZZD3A15DQGZVC6xsAyklAH4rmCK2UjQz6LuayygYpMnu7shI3gYi6Q+kzP/0YcF6iVTTcD/6Jvfc+DE5xLwP/nmPWxhWZkF0VIxH8mZ34ePzNE8zb/XR4NY0HFe3+qbP0AO7CZxzHZxJszHcuZPfaunaJOqNP15yGNEd8QGtW1gf24MP54zf4ESKtQ6CWvmL/3BZIczBo4SsrT/Jmf+CtqciDEI2ZswMe6c93Hr7RQgS8RffB4OLq1wPqGqWZjNpsNtQlax+VTO/L32QsdTu/JPOfOfcc/3cczS77w82zP/ksLch12e45n/jkhQKHe4wEAaTl2CQbTbPxzNFgro+gPmRQQHMzD+18WQuIB5cYBzFArbjJh980RkgB0SQf9wsO2MMz5w3rw0iFW5SugdnXpV0B9W6EKkl/xLDP95/LloNGgQvxfDtOz9iEPRXiaz8OWBvr1XnvYZVAbfPD9vfjQDO8vJ/wjpOQf1hXlc7PZVO+Cfng1njMuawTKxmqRH0H6MfQJF5iZaZYIkPxyn1mrV5BJo/1IGmk+gw3FNlxv1tilYSgo441koWB7RdVpd2UVWO+kV3tV4sjPsu7edLejY+cmEkGeBxfkyIxpjJdbM2rZsBUOWkh09Hb1EGwj/+A6Rs8m+CHsT7WRCsA1fMycWwRV24mvm5BxYnAwuJ7inFsEW93RGlq5DlBvjtyvr9kamST6G6W2hGPP9pB/0cZEOyMKetx9hxmsT+dSV8dkGq8YEdYHKFGAczKpcoIeOaRW6oRLsNDfkRpTAewnQr9v7rUG34VI5hybZXgrN6yf+15vtc/Yu15Lmi4XSWQdYVoBev11hbNiQ6R7PbhH9JaYwscQh7jGxZc+LdR2dA7Kv7DMp1lNs1I2e5YCFmSoWmh/GTVvN5pdsu2XnuCzsf31mMusRgR65fsTirss9ST9z/1gs4fwFrQ/5nrdYWKHkMqQuqF2Z34ZOjLFMGdAyND4CjSOlFYogEowZeJ2xMAGpOY4sjemSYzH+glm0tQAxj69XQ7nihrzN0VuqnnwKfaMtv0Awvyzqz4HVRtle+wyS+67JpdOcvTI6r5W3AHfFNHnlRT7jn4Hau5zLi8DkHufKIji98Lm6VQ2rRVV1e5e2XOjILb+15PLt8fQq7In08+/SlDLRO9rnk4s42voVSKfmSJaPq9M6fQXa1cldU2y2ywCkwVSE1zqgq5nCr3NwbTGFXu+gtoEUfIN+f7PR6clH2CrtTrUi7d1oRVlqduXyemaUbqpX57edb5YrzUnmFilJBXmrFKW5R+il3/Ru8iM1m9wBvk1zykan2mxI84+aXx5+tJa6e8yPqR29qfw4uaY5b+gJie6KsUt9ufks+VhmlmRRKpQzVdLJAJTpi9eUzhfBBvSA8cXOWn+MihnaH4f2QlmFAiHKrNaom/lATui5qdwRqkR/cD2I9WQ9pznJT0LyYfEqIAn54QCu5u8DXEFaFjzQM2Q/dQVZh1MBYU4yBoiZ9AvqxLVcA6BlSH0aUleUVyickzlwBcKZRa3Oon11WI3vrsmaYs3+DoYjlvUY5439c9pYprxC4bwxAeJMJS0leKwL4/6+yN1eLv8MGKye2PAGI6bjGsyI8BMxwUf7rG9yFwmIaeZzvsnvH8Y4ZpL7vG+WLOlOiu57M0nXovF5HAVsrEXYSij47NNmuFMsBPPSekqSBWOCT1oW5mKYmnWgVsevMn45G8JKo14iNXuJuGM/s+k5vGwIzEveh1qQv0O0BF1MTMhBxNynMx8VzlxEa0e7xs+PkZFdDGAf/xNeHzD+syb728NoHWdS3IaGFW+wk63eSCs+LzC57Ms4+dLV8UxubqxN1lh7zS39WRHWk16ov7zSgw1j/Gpjs9KuYl2qtZq1KbYgWGhhfqPO+LmkC24yvjDQVXBLMyyJwSg639+57Fb3TsRJvKjQq/AOFmiWRTjuJYGx7T6RRGTdH1laEMaXXriMmzvQMXLVq1I3P5NBfVFglrICWj6YykVPdsxKK8aHNytZLlcXeLFg+bTIxDWO7ZrBus280rPvx9ncAybYHU36rgwPeYFUR9iRV0v1w306CDy85E1PBM7i0ChVevL6JYCg0a0X7VX6BTqtIx1Az5nGsv/U7JrnDd2WX15odtCXBJ5fzYAXiUBjJty9NDASC0GeXwS5I5jGl/v1TBf1Qgyc42vKr1AI55514yoSQIF7+5Fm97Vnoy/E8vREAL1KGRWzLz/5hQ6L42aljLaBIt+uTn5ISYrxdLosndJS+gNLAncvRujhQdHtt8B23+1mKncbpUKnQtK+QSALGxnfVpsbsoXX5Gx6i20Y6qUgd0bRsPoYnNOcDAdh1/Q4w4pmuVCSBZdGTFgRn62jAzwf6TIugRNHoMBeWKnhsGip895J5WFVJOW84mxjHIOz/55MJZaE/vt435qA9RmaisdL0nVRJdNBZcUaWA59nIuNirhDDdxH98MNpl0tpT+p5IYw26Z0kHl54EBOEtn2hmBoA69kgspWDmDOchaz3/XysbIdDZoKo5Sp2bFX6ZhXy3voGcAVTB8LqNt8EUCgjFmJVyE7vRq7RT30M6c797UqYald1S9smlJLBtxzH570S6GY3eBMYauQ4uQk3sUzfybU8VlSb/oeAS237utsKnBlQ8z2aqjgY+G5qjrMa2eb8uoKqePtbiiQE8WCfkL1JNsx+aC7yu1UVXYlbFAr4/mRB0bWvpOSFJbRuKSQVY6HWukCMVn50PzDXltnoA8cEDlZMysz3pfhrRE7FMJYqxFJtBZq24eEoOxZ7Rsxx0PWMLwokX5yNVneMYoaGnMglyvOK5icerZWObqNecZLtx8scb2a/dJpYHkY2x2Qf2xEUsm8GaMSyyYSq5w3x67CAgu1BEbSoBLbajr4lsCsDhZBb0WvFkEiUYzM21gGB5MHxyzCOIppY3l0MEYW0XiHXX0CXRLxIObprGlj9Xn5+Me6RFBqMN3crVGOzq2U5yuVFNiOeYsMCE+elGpfTV6VAXEYJ65EPF4qwATiq292T7epxinYrBQoJpULryYNk/zagqnpB1G9tn5XGM9jEc23xcYW48Fki520sO51+yMJoJjKvWl6/okGwUzC935+KOupx2hR+R2okS2IzUOBx7nmfHHNxQwsDq98IG8fZGdAEXA+pVxRKv7ycN5CB7DZMqxbKWjh/gdqmxZkrn8ELFWdedge1/KKqH2e0xQ0QCqI94dzRr2lfYmybHIwBIj8csrbltuUdNSFZbbR8Xez4I8xPnaGjob92LyL7X1pMiYyB93+qKCMyULcdynkQoDCIYhTMf/ARkFRjH/bnLMG1JmtSHgO64Bq7sWZTiHZjkf9mAVfce43uTmOdMj2MdPxUI/wj1yAkQ8lyA0QypVMR74tkEDsdZ4Vif6Mrnres3rludGxeYO4C/HC7aE1y+/64VjJm1XvOFNq2rcIbhIOzImZij0ZBBXJyUXYllg885acOaVj6IT5Pt+chpxrvk3rMxt6SzjmhBerOe5OR9VxI3qQPRqgaxdJm3cG5rpFkE54Ru96bUyO7zsTETHyvSEFFS8X9nULsmpuRIR2zIkO57yb0uxcR94VeDcfYdVKIcPrLUcQqon2X4xSR1AOcm5d5DYEU/fWj1iEpzvsRy7CwT+rvt5tqXKGYEhsuKU3hYhwuTX+SHj4IOEVR8hNwHJE7DbC/p2t3Je8LcqacbaBmzN3M8QyefcWm/f28BxJ+63wLh4Bi2wH34NQCbkcXDmqTKkL0WVZ+uU6HdNDoa6t92CINmFarv9eAPNQ35PV13LorF9HSvBojanBUFbW099tarbu65W7YvYSz9Aii1mSyt6+zUeDLppcHUDXT0HFyymQsHtygJOLbUPvD9jWJqgWsYosT4nVcdCEgIUvV1h67Rmff8L1IZ7udDXlJxH6YJZc67cFuQdd9Dy/Z886MGuREOogEcqXU/xqJoCehNizMHHoLjJb5FD52AQJD1FXWfLIryH4zMAf1xa2rFFXAZxAY9z9KD841F4BlX05WhS6eK2A2KOAOO87oKDGuGEr0gtb/sqh9s1LOi3OTsIa5zNZVnJX7V/+Kv1bWsQ85+R2VECJFFe2YEcOi3Gjdvrji/1YzmM5AODEWr5O6B1wHj9ybDMJfc2XI5mwGvy2lTasFubq8tthrKA7Noj9Vcaz5Uq0Ntnpa38Gxs+AQ9ZTZrv9QOXuUYqW0qbeWmtjWKm+zA6Rs60LBCfAIZZwoPMXquER26J36qDiLg+kptfvMPBMLVzzi0woOaLQF+pIuXa9vcmMg4+Zy/ox+0KXTmxAWtmOZn5icw7rixFgnK0BqiambjJ2ZTlXrYjhP2CbO6sOzBs9k0/bDOcWraAVbev6bj0+9jr+JrrYmRzsT/D6djhQEI2EH2xdxhoCQ+EWYUoJ1Zu60+cELhYVt5ut2lWYkML/P4xAylqUI8wIXfBhZxEOPmDMfm6LqTIJxQMr6WmibT9v0Ru2Os0N4xajAiuivWkmFAUHEqBfEkmRdY5YmZfra1/k+r66F7HMY3QsXxFbMIgGrWTsbHOqYbahOJ3/hNyYMTFkEZUwCN52PxYPQaRQFmynLcR7CVV00hUwdWCN8eeHV6ZdIWyl518eEtWNhHRkm4iZ7TymfILXo439Iy76OHowzfhX6FRZdCoglWgfEHRvGG9azOq4ET14pAso4SBl7tMSZkpCJjMZF7kmIlSXq3NwMjKMSiw5bcU72mzCXrhAB+7ihE4GnNPPCZjPsuyI0S6pdcAYx4tGxJkdN6n0DbMGA+XyuncLkxqILk7S1EYNdnFnv2h9yYdJnbZ2cYCNBipYzWmJA+I+MTzisbuuDnpJN0rRaES0vCqQpRTCrl8hy4tj2tKumkB+A4NDDd2Lyhdx2jZJgKVer3KQIRl/sSpTSi+OIZkDpYLA5KL3ecZU3rphoU10GxseyuAQA5d3q5nBsTKWSFy/FpEonaVuPoNSXQkOIXMYm8+xa82Sz6H2GN+UfrC9qIfJVKiyU5bPD3McL/ipsQ6SrtkPKzBcVzYtHF2F0TDlyBF1TMTmC2zlFpjUNYTo+3yN4rQ2obYusrQkmQdLVErlFZvPB94yZcTW7KejCC6iCFguBM6yyYrYsXl/S3Zs8xCc7JlkCxINSoSA0ACqFBDMiJ1DotiywgGeTVm53c1OOPA5zJ/OtqP+jJHHTFQkFKlRRVPkwC3NeV28D3gTvv0nJAaqjJDnbQs55/gSdZfw0zaWQJwEuy/Ky8qvHsJHmPT7dCcyfxGY+ZwxD3grk20akldCMKGrgwivJGpYmscwGVgRXbBj89HAW7MjkSzSHKYF3vFZsrI0rS7E5m8C7wRNTeF2zZzUoU1wNq29YMKcWoC3EtNclZHMWBh2Sw4lIV+WAcDyXnNAbq5bsXl2zrt2JzOYz8mZ6y4uDNtz2SBhHc5NCf8huxvklwPW2auEKAW65pkbM5YrsYCx+afAu2mGHriB/efA3CzZMJXivwTmlnRQCroghQzUrbuTncO4Oe6A7Oqy5dlLx//5OTY6SffC+TpZUKpl4fgTgXfbxeFVFst/CLxH7YyGDA9iWjOP1qagIjd8qgME95irUZaVOUP9k4H32P6i1j4vZx4XXXW9/FTgPb5PXcQljcQVxRKqKR7NPiEdQIdXGUWynbCsY6Hg0iqG1x9PxpdFKbsJyK7IZcgEGDu2j7FtGv+lQYnI4DBOKFlkPN0H5IqHlOhZ2rs41wtRWwKT/YO9ew6j6eVMrH1ha9XoEADjELnXsr9d6rVq3Q0NiR2lYFilcE5kq9CgVRhko3mAkcXkbSfUX5zjIIRSy2Ccap3vbY+YZBqVcZaRSWzljVuMqFAh335asmu3FaJB7mRxBb/HntJhbmfA29G+XZ/sASGSZxMEXLPBjJQIc9nkaKgo3lkex1sOF5cJJ/bjWZtJzeAMQqAdsOnY/oFWXo4BdeWjt+y/6vPTSazpnAUqyOwCicalAinMzxenjHsSziYH7KogkW8xuKiEvHKwzxbO9t9fMHHDuCTTkACv1EhdMieTRdzxnMorc8Yv6awoTif9wQ5Mce67gL2zKPeXUWMGr1PzcobvIGnHvCrHupLodSsLtkfB5hU5s1SHMLLAPgsWeuNlm/KxTZrQ6zdOK8xDvqdzIMm/IOflh0JbGLrqnHlhzjxGKISq5A74opx5gqqVeYHnLUmq2I+xnnYdfpQcdfZHzo4v2wuyJmdWYgkth/jYtmQ1yXeE/28yx5J8CS8IDhRcNGt64ZS+5M1xTTo1JhCm2fU0tnDSNtzqX+Z0cQDgVLwwk+QM/yU577T0x/ZkPk9emjPX7EJpy+7a6ca1Sr2K9jH1WGcvNw9nschnvDNiDSJOJ4s7CnKdIrYYC7V916M+xBax8CN8glF3PBD7uXPBvCbn3aigdpQB3bSdKEtsXp3zbp5GO9aYh9G3H0aooTtzWDa3aDvFKbq5xzaEKMo6DNuu36plFcJoHJeI3N7mm0ccyAbq8ninwOBizkB7ZPq1Gg6kI91jigm7DQd9dlluWVft+XENlujBo3dGw4NteSEzXW7a0Xn+xuY5ee+xcIcknVnBAMrwvxYTjuPYjg5YZBBSyY4lxB5fuQq63fa5wThipI6WpBccfNE4C0uxM2puYbF5Xc7LyVe0C/JuS6Zptvfn6ThDlXzwEZLl4e5uae9QImRrc1KYD8+zjvCS8Qf246ENiplJJthRX78qlHI27TQ7b3NVOsncQiXp/tKOUI8L+h0BBNPZQ08ERBPL2wR+RdGQ1OaQ2Tjd2btME97KwZWw1ashb9AhGcljB1eHr0n/VDGMX2xzfL7J0oPNMI1mueJOiUOijXo/itOQ3d1kFvnLY/qbiIP27YIiMx+BOKHF5vU5L5BsUZgTtNy2pFrKTmORQv7gatAlqa4sviFnltvJFX6FGN/9jm25x0PXS7NVLVckDuqlqGWZyD4RSNKbNqrlTZNCpfPGHM5037ojgq1Ac1zuGlQKsvaa9VqzICu0F3bkF2VJ+YVataBnpHoGTUK+vNuuhKE9vM7X9QR9KXsrZNneGpPbIORW5NAzuUiyWm1sQVGwjqnw16uVWlm+XamNrCXstSMbTJmzufLF2Uy5s/zks/wsLfCznOVnJWmwMLYnqEyAh7nFsWb8hXsbQV+PeTj5yekGwMK3TT66dDDF5mMoLOhtLFf77o6FeQejG7sb8xbyEGeIu9iJUOy/Bb0zZ1alYem9hbySs5MxGqPTviANW/i7cvrVadceviSzC/ttrpNrmOn9gm6x006vG8jPocvvWttLf/aAVu88tFT9g3JVdItUrnJPt1CTYck3mp2e5sgs1Rj8XodJQ2Y5zfSa7RRlZaNdQV3bWkB+NZvPIh4r6IZrTYfuOK3wOGEHtbou3JykVqPQluQp+NVPnvZqzeZZvUJyulFxHyi/pgoX7W5nUzCvnUuECRGlmVQ8b80Zee3KgQvT84ey5jOWOS+dIPVkxPR0gdG3B+ngzCcROHiPCo/N23Pz243ryXjivRKvZT/AHo+aXj9eFx2StC9jCLpwJE1bD3Y+wFSN05BCRz9Tqvv+MQnFMg9BZCgLSXN6Vlk8QsFOHH/hBrG7jiOnKK1egQL7zVgZ5ZR7UTta137JMZo3AKDEfpkWkdri1HwzrCdVw0jf1aH2UBYGb2yXBLzVhYtYKb4Q2ZJ26K7HGKiX8r6MJOcIFUrZDcg30sQfgvjFDI4IMB0XfRXCmBvlV4RDznEq0j29S6WnTPSXLIGgxWu+ct+lszm/zhpsqCnJCRW53yY4ef1yt2bJLYWbhVaas4bFZVbQ4qZ+tXjVpnqJ0Tpmvy2c5tdcPrFgx+fXb91nhJ3hst8RTu/xntKsu5t7ulbN3sS95oqrutfKFSO9yJIBXjcHppc1rleyzDViZxgM6fQNJUSOKzXrX2pxyrsrt2lNcK4in/A3zOB2k/FAoMOmYPv23k5/tMVSz97MTRA8Vk8u1siLZKaeXFMotDvVkvbOCxECDZL0G4UtHkEhdIZoU34AMr95B3+XNu/k7/LmXfxd2ZQffVzdvJu/xzYlfCPjtZbekTi+3mwiBVInMIeYvZDkScE5tSnQ06xjPK5ZuGJxrV68u64rf69nanR53lCTX8G9sSywm8od/t5clh7fsl7d6CqNW0mVCi3XgUfU2d3yfCS2lMdtstI8qlLn76NFGVT2jwnrKBaJxwpXj2PEhc7j7+HPE8rrUvtLCsWisPlEd1npS9vS8pPa0oEvc+vXkzvVutT78hKGkedXMHA8vjIs6A80f9XZovD51awAPG4PVUBPkc7cIYA7pXN3uR/7fWpRf+v37mJZRuZpYUtN99OVhWec08fXtKqlju3w14bNbls/y/t11br05+sJqEkPv6FWKFakX99YbbS6wvE3FbudjsqlYG+wkSoK/+6KCxO0kwxembSVYUVmU4F1g/R6s9uxtDawWywmOpKbdXCErao6EfbHR87UKhv2puBZWcakKzXR5fYEY2weSPSugRXkcVeh1dLzXdvmo4qFBiaBVEksZa3C+MODCL/sDEe1sS4EKq63626kN1BZ+bEMS2eT0KJNVcNKoa2/kX0me8vvxFzvH82879YbqdI+njgJoRFH6Qnlqryk0FQenlie/4TGlyYS+wqpaafzV9qR+Con19vliVoJn0/BfRQu7mCNlVafiupnf5nlaW19K+npPBLCzyAttJWrr+nITUsS39DBDSuqkhXScfVKm5XSWU7sSfvycwyliqp2gFUS1crBdNdxkk/SmTpLCUxssYh3OVWDlWTAbZurCcaxsNRu1hwna/rFaUmdDFvVRsrXKbjmcQ0PtFm18lpRK9vqdZ12pSKtkr6e8S42LfwG6QHPG0V+FnSTMMjzZnnaNm9RThJh3UoTgk7yEUKW5yPl6UjdJlLDwyJZLNQqOpHP1poyWrV6oX1PV2vU7bVVUuhZXfvTVOxytWCRW2nqHqtYlr3j9moEqdMLtuwxc5P0WDckjyszBR3sSyr11iZGVlp80npFT0S+DENmZ/iTmUeVtv4e/ZdXGyFs2FpfnUy7O0WfdfUgc3eYGLavxdgwOPYu5ddhcjiCS7JfT00R9zdK/3h+U7KfaYumocW9p5AJk8wdZDpJ5k4y3SRzF5mtJPNUMqqqkrmbzL2SUR7vS5eA+2UxsUP3zfOl5ltk/rqpTfZbZRjZEVpZfRsOwYZalV79yDuzvjeIB6VR1B/rd4S91PGyLmGEryKezEfxZLJFFeD4MOmXv3cFLhtwieHVJ+wBh8TwjoY+gpLsL1ruBVnju1/PMfNfzyHjlQlDixu7iBxgDwslsR5X+dEdcn7pqi/s4kpaC2n0PaZO0765RN7ThECkBIBfwLymr93O91H5hX1UTLm7fY7/d2QnNRy7dJ7QqSIWptO+I7Tm5RdaEG9P/U57S95tCVE/Rp+El/hVflWHNLAlyX3K3BW0cClnQu6TOfEopcVP4EouoMUMXWZU/5FRvaK8QiFD6/cTIN109P4Bept9ImGZF7cT9EQT9rLlGknfzEKokWHg0zBQIdqlfq6Ly0ZJngpyZvQv4MTj/kG8x7mP+Wd2NpUUw4GptStRPIs8Rk9LexKQWBettNonIaBMRSENH7E+P0ultAilVil+DimO+vYlZOVpHpELKmQVWSHZWAC+eYgvW+moMfW6WBuefnooEIT3hdZQ51gLOr1CS1yVfLOht8gYXnJLsraHBf3hk+WClK+EVptbbFki9mN9BkXUAurEUkAw0pC+XaBZr7LwtVTji3dQoQB3Qd0Gb4GgFXyOeOJI3iU5ZbyZ++KO5jjPtLkGIkYaspuDgc8T3S49TGARajY4JBoh4yHBKx9bkAm5Nm3QbmACDXpWJcgkQcuHj9Dm9NJy8tq3lX3AMqE7cFOrEhFT98JzU95fwEdJLujm0r679dx8ttzNn/PEma15pOdgXqDa8xYQz6bvm3eEyty8FOWXGBjAni5cADxdUgl1sSLbvSrAq1KyjVu2XpDnCAlhy94klO9rYQAP9Aa8CdyOTEwE+zASnvgAPOX0f16j6A6TOkIPIytbO5BwT3GT2F2JRl69DSZnhZkp0/nAgcyLYEhGUDbvMft2b7Gx8vzzX/NKjo7M8JfkiTRmGXox4mxAr+iALEHLoyHx01fTEGfqnGya14CzN7nImvHaPOqBkhIGxqTqAaV5fZ7jKHuI3J+iL/1L5g15TuUV1CGurt/dNW/Mm+WkEYU6LnMREU0Ct8LM/cZ9FTCNqKx6D3MJeRARMyaRKyiPc8p6Qsp8lgNAIjoFnYCdTeI4rE3Mymqjt1WtiFPqN/EB2leA3a9t9ayHbJfzXHINObOS5axNca/S+G7VCnQZI5GrIcWULemd8eUInyrCGk8/i4EgZoL0KsR+qCeG/gH2ggkbMIjjqlwBOkdQZiLX/o502vgrM9fvV1B9kPL4SgZuMtuL5NPTFEIrktB5J5WoeTnDqLBQjQjxd8KMTOYFjCUBpQjLByOO7Js4EnCysil6MWckM1pS04uTWnreF/9rENdFq/41iKFqWKJ08xr2V+S+BdSDKBqgI4SW7Oh1Ji2RqccYa92OkBbtTCp3nBhNIGM0j3v8f1SgqxPHdZk5+j+f55QkOzBHeqk/RBQmPc3N5GDLpvNJLKo6aBIatukmYyAfL8JKzt92JkMMGVfBZjM47/FYrSS+J+HELSmXdgsiNS8/I46CqR2LjUcJOYdFgsE+s5rJNoj0MyVb6n6smvzVqdhiZq4ldVGzDEOKHdoQZvr27sGEczq9X0vOfzC5DRsMOQfnXBaFj2fTaLYjV2fzF69oKjZvzntLKfV1cVD1kxFR0gB9l4gsPq+/298fjmTdYd2Ei9i8Je/lMjSB/HLeyx/GGmyVmNOO/VwSbLg2lELbEvf8yWhgIdCUi35pxvY3lFayyAqgWHCTtEW1NRXGUZ+rsavAhmSoE0uhLSMynJfXKqmYABJs8zbMvKKadyQ46oMkWwDjeTsYfb1lJa6YN0eBSiAXpZy8vJiuCwoH9LYuXmTeC0Q4WgnDdfTHjNl+0APzVpqeOs7eiU5HlvxDmBw9Eu9QK/WUJY3L9gHRWEcIsfy/5hsAAN2ZeXhV1dXG9z03CRAGZUwEgYAKyhBEwComN1BNBMUWcGz18omIWgcKmqilgmFIot6oSKs4iwkqaKHIJE1IqnGAasR745RCVQTUGwYHBFSs+v3efU6y0z7t8/3/8TyX/Z61117TXmvtfU5CIc+ETYfdJe+ldrzTmHvvCpnLOxVMvXDmr68878xfXnLmtKkXXHNOwdjzRhSMN11Ntwu97qaX6W36hUIXFrfxQhc+0CbcvCzFmJSUkDGeSQmlnvXbaUU3TJ9RaNJCbW83xnTQf/zzh5Cxak0/k+KlTpx69fSs4f+Rsav+Pwpu41n+/uIfP6Nw+o0zpl6f9csZ1/8u68ypM26eepNJM/919T0hBGCoJITQ2DE1XhFfHd8Yr+b/mvi6oVmJuxPz47VZiXnxKkgvxGsTZfGaRCz+l6y653iYl5ifKI7XxtdkxZ9nWMtvTV31kH+fBMR4vJfFG7MSJVBXxzdppq46C0p8naWwOlEaX4/imvjqxL1Z8Q08bEqUJRaANoqYFX+QYR0ra5h6AeLG7OzsrPjirGDh+qz4X5FVaxesQWaN5dhZvNx0X4DL/cyJt9fXTzAn2UiZydOvLrp+6o3GPg1tfhoU+v8bhQ7seDp52M60MW0JyGdeqMyYS0uMucwLh8yCgoxUr2yRNzJ8TWa0MIWQTWwz35gdqSZtIKm2cFlskFc2uXhYeIFnJraaHpg2wZ9u8Mr2PXVBeOG/Tk9Iu8WEbyZVrQJNGCTOPblqnAmFvPmNx3V19JDoWVSBt6DxuC6O7qXNnVI43ITC3oK6UZWOHk6bW5gYKjkLG888xtFTAjkp3sL68qijp6bNLc8eZEKp3sK6UcscPS1tbkN+ngmleQs3Rr509DZpcxry3zehNl5JY2UrO9umzTEG+W29kskbj3P0dmlzCzK6m1A7r6T+H2MdPV32dzahdK9k3KTLHb296MOt/Lr7Fzp6h0B+e68k8uwfHb2j/O1tQh28ko1zNzh6p7S5VckuikPJyK/fc/Sjgjh09EpWZXzn6EenzSnPPiJ7Srtd1d7ROwf2dPJKJ9/R29G7SO8JimfpogPZjt41iOdRXmn9o2McvVvaXGOKTehorzT9mYsdvXsgv41XOu5vv3H0HoG/nb3S0rdnOXpG2tzMaDdrZ90J8x09M5DT3is141rF5xjZSXzaeaWRhmWO3lP8nU2oi1c6++A6R+8lO0+z8jfO3ezox4p/uAl19UoPL/27o/dWnvS19o+s3OPofQL7u3mlM1cecPS+sof8TPfKGs/1HD0rkN/dKzt8Wav490ubc3PiXcvf7bXOjt4/4O/qlY18v6ejHxfY04PCvKRVHh4fxC3DK5s5b7Cjn5A2Z1msj+wvWzR/mKMPCOzv7KmOB/nEgYGQdBVpqqOfGBjTniKt7OroJ8lZG/wFdYeWOPog8XdW8Bc2Lujg6INbgr+w/k8XOfoQ8Q+XsxTpE44+NHC2jYp0l6NnB8ZTdI1rQ44+THI6KzlLJn/bz9FPlt5i2V9S32Giow8P7M+kSD+e5einBHo7UaSf/MHRR4ifovAo0qoNjj5SeofLzpKNP25z9FGBncdQpF33OvqpQZxJzsbtreL8M9lJfEIq0kxHPy0o6p4U6a0nOfrp4i9WPEsXzR/j6KMDe0jm+mWTHf2MwK8eKtJpjp4T2EOSj/vuJkfPDez3KNLwbY4eCeTDX3fCPY6eF/CnUqQnP+DoY6Q3z/obOWWFo4+V/b6/szdVO/rPA3+7U6Rb6x39zJZiUZE6+lmBPb0o0pdbxTlfzTnfhI6lSPf/6OgFQRNLUZG2dfSzHf1wVmdHHxfQQxTp4WMcfXxgZyZFent/Rz9H/vZVfMomm8GOfm4Qn9626Bp84gQxPyMj5zdWljv6eYHSniq68x39FwpasZJz4c4jSp6A/ssgOftQdMeNd/SJCgJJ3puiK28lf1Kg16Po7j/g6JODYKZ4JZfd29vRzw/s4cRp3DXG0S8IgkDyT26rpAroFwbO9qXojr3J0S+S/HlW/ripTzr6xYH8VIpu/SuOfonszNOmU3R7HP1XkmPtLL3s9jaO/utADpv+8EnarIB+aUDvSNG9PcjRLwtORpK826rTHT0ayIc+OX6uo08J6FkU3YGoo/+P5PS09Pr66Y5+uaOnP3ODo08N6BTRuHlFjn5FELd+FF1sjqNP0z6eZ/nrpt/n6FcG/CS/mfmQo08Xf76NQ+ThPzn6VUEciNvss2od/eqADv/Gz99y9GsCOnoPP/ixo/8m0NufoqtscvRrA36KfeZ53zv6dcpbip2TrnFvmqNfH8SzN0W39ChHv0H7bvOzrNsVxzr6jIBfJ+NNJzj6b8XfV/lZNvngUEefGeQnRT1zzqmOPiuwE/mLJuc5+o2B/CyvbNW0cY5+U7Bf0OsnTnD0Qkffl6vDJaAX+fS0UMi+b7S8fRjv9sLEqHC3dxbs3PxteMhVp8XP7jH3+71Lw0eljU8xqUt5gQu1uz1kTPothmO4q70XcwfWfZcKjnJELuM4/FL3U91Fde/UHVP3Sd0ddU/UnVD3P46R9rrXkanZuq+RgRfrHqY7F617vu5SujeVckfSfUhtld3cozsNrZEduay97iW6g+i+obuF7hEyLJW21NWe+zrjdZ7r7Oac1pms81dnrc5VnaGU7gadjToHdeZhWKbOMp1bOqMwbJrOHp0zGHaPzg+dFToXdAb4hr28V30cw9qqP6sXq++qx2JQZTkGnW97ovqfeh19TT1M/Uq9SX1IPUf9BYP2qG+oR6gfqPZV50QqqvrFoBtUl6pB1ZtqS3WkmlF9qBaIVJNyXPms3FWeKieVf8o15ZVySPmi3NC7kt7IeCsPFYdCT/GfKfZeDw03b4RSeIda4oV49587csSI9s1vaf5rPB8WPrRv8neGzP6eAr29vmYAorzbKp588rZThg+/7dkVKzQR1n98dgiZTqFev+tbstekHXe+CRUl8nPLswfkeT4YnecZk5nXCjBVnayKtACkGJjvdsBO+csH5JmNqSZUnbwxMqVw0qZwUSLXgspYl0hBxgdnhCtjW2HbltNU8UhuVXJ+bpjZXGPiuRorY30illAZ+0WkMnZPbmb0+kg4M7outyG/JNJU8XWu1IWjhcdEMqMPQMiD6+FIuDz7qkhV8nEeSiPRwicjYWOWRoZVLYsUJf4M59MR7PgrZi7Hhs0Q/hSRHbCv5rc1Iq88gczoJn+GFz3WasmnkXBD/vOsO4S6P9gRYb+xoDpZAPEzqTse1m0s6Q7x9Yg3rOoOHPq7b3t18gDsP+CUyUPYcVjWJs/3MD0vXJ49G5s7EujFdgw3VTxhQUHG8whsnxceVlWHQekQ3sbCVHHsgsMg43ME71fIvoPj70T6O3ZlY8TzAdsjZxh90JC/JNfLjNZbgNFbkD+dkNYQvC65iF0Lb3HOsKoKvKkajZ/3IXLSpubdNCRosVhy2YKHLKhOPsu4PJeobQLEc6OFrxKTNs1hHIiTW5F2TnOAyxW+NzD7TmbqIJRqP/+CJQvwaSXjvAiWPImwYmYfgHOOtiAG+2wIC4nerSJczUOhlVwZu1YyhsI6Fd29kHGeciKdvRgNRzq/ns2EbaTSYDhX5hLXCdJC9vlOmenc16LHM/lDLjvYiKz2eR7vRXktgEgaryH/I/hbQGOEsjgFAKUg4zHEBcCuksAWIMlmf8iEhlUlc2AzqBFYmmvLRyBckHG/BZWxDUhYq31qhLCFWthH5RyR3Qafe+BVGqLPVPp1QPQsiJ0gPKL0ywSgtCE/7BsvgD7jNVVs900VaMj/IuKVZ1/rgymFCl9MWzcFWZOReSFKKEljJhDtd3ILMk4nuHdrtwfA0QkD2zDek0MGJjDSmGFV19gRE+QY/2K4W569ExVPSNdO+GdEaC1HO9AyJeDvgTVaAAl+NBl90DIlYELRwpDvogA8fFtiSxh90DIlYGKeCZH8WJZVS0wEiL36kACxfwrxL6sk8HW//HyPfGlPziWZGKjM/J6NOItopFASN0TCVcl08jaGwqPhWh5BWP9/VWqBxDPVozXABH+qBWBzcyADwJRvZlatCUm0XS/HWoDdO5WoBZnRK60dVMil7NXv+J2HtaepFY3hYT9d15dihikWmzF2bQQlArEIhtyHpy2gZYrWEDKlKSbUVLGAMjqgeroWTQf4TSAUexWbYaTLboQfy9gYIVHboroejrZorlGGTVJs1bAm4VwcubHcYVU7lHKraJhfIaiJzP9RhC6sSc2T6U0V7fIgTCHQHQmpGgV9siixwoLM6CtwhvPYvY9QdxDr9qHynUi4OnmEHF4P4QhGLVKUjsBa4s8UJcYysw9TvYhdywx7+wrEnTlWOpHaJHUacfccCypjPcUpjnfx4WTy4wna4Br/JKtKpuGDDrCIyrAtSR7xA1GV7MNDT3YpLMIQLFK3HI+wlUq0q7C9nIgvwN2Yqv5RS6BT4cyWXPTXst7Doc0sPVlFGUdVlIc4MkpUSnEeFvkzTRXPWFYtY+tr8eoddKvB7hLhUaQegMvfTBOaUvgxlKXao48RO0v9+hcOtEwJGK4NXBDwnIQTsGlOb0JeAOxUZexxB8hpdcyrHbBTWi5gVvKXh2FVD2Lw6E3EdroFilN1si4Hl5LkxywCvtxvggpycLmAcJefUkWJ9Yhfzi6+pygk2ZfDWDyEPElRwkwHdMyTFo0EvdYCTgVGOKYUfoO6w7gRJq2QIX8kVKPVIiC14gjs+AYbZqFpG0uxVEJ9031ffK/UYjij1ltAN2cbarTr2zDvWzzbxWYP0b7sA1zGT3mJPh88jQpxsJVaQlfCzS0QP9HBt56Zg8h50I74fasF1cnJPkdRYmiw5FgmkKGTUEL9ES0CUutzYIeWyDDJsJZKqEyXFo1mWevtqk5eYQFvTUTmjRwIO9mV2WzIU+zuTwrTJNaOwaBW2zWsah1J8Awc78qxTwmMYj8YWWyGOpl2x5hgu+SpQEHGm1jaVhej3TjmsSFfI/grxSLEwwcI1bH3csQecgKwvodD7+HMq7ASFPUFRUk+aKRf3m7BlMJfsf4zxXEkhG242weuOj9KDfnPYV06QmM+oTJ2Eb8+/AZIxgiKbj+OXYKFG7XBc1nvwoaFaivzKesXkPOwDvNXcOp5grKVpR/oFvY+alPQsB3O/uq/4TwB1oZI1Z30loPM/iGXCH2KkHR2STerkTmsldRWuVfM4aszk5L7D4enBUWJxyJMRX1QnWzwp3TbsUA3vWFVNE91Y8QYVr2DdwDyHubrdOhIYACY8XUxGvNXjozKWDZGd5Irui508iOnAy5aeBKGPquTdzzezse+39sRV5ZYYMyzxIUOqbs5xx21vQldvVQaAj8jetrJCcqgVQidClcFSzibo4X3Y/qtzC60Iw35RAeqkhUyeKEF7PbjFmANJq6StA08VPGwATVv+ITM6IekwAoITVryKHoO8bDAjnh1kQXRwlEYsUdZ1w3CRwjuQnjfVHivoCbe1Mw1eLIba5bjM2u195UxpW0v1tvkHgfomBctnGdHbhqPW1AZU9XAkRl9HQvVh5TbpLB/hdoFcSdq0SKg8Kj3VyefVvvajA8PYvJauBarQNay5F7F6mUo97DuLX4lOiK3wXorEf0YjkvlbpJgRPAsyfpePkGbqCLhAFIu1zOzN6c6uY6xfQ5OPYbQ0Zt0h9dIXxlrgQJCsZ2BjC2k/rYcMow2cIu2eSRZ8RKx8HPGlHFl040AgXkcJD+in/xqqnjbgZYpAb3R7kcJzglkRi9QXX5EHMYTgzjOjdVe1gFOJ2xr4Bipa1wF8k7mt4jfydqPsRbohtuQP02Ex7AwxrLHMKxWNaMU7+BXUQvQFE7orr8C8SNZ/IgW52PA3RCnQiwVYQ5rivlJX7FMfM6ChvyXSJeFapDvQ7iLyPremIcJhC725dlrlLePWsC+vWnBlMLPWPuQMstwdhWjRiOuCeiOU5Q4JE7dJPZgzFjyTjF8UdtUA+BtH6EMrnotUFDRpwoPgG6PADFzadb5KFCe/Ro63lXTU59NJRQ6c4ilgI4XcSil7BKdApKhkXqUXy1gDRcS/46MDQKB6iEOMONPMfL1g9jIMr1gIaPRt7WlhwnApWvHR5jUAhpVkacAoMhVRh/YVRLYAiRZOjZhHp9GVLsCbPVugjkY8Uqt/no5ryb2mfaWoZH4X2+BMWc1c6jEB2NaLyuDHL7OAmaug2VEXkP+71kyVIQSgnSiFaaRyD1ngTHrfA5ZpCUaJcN8QMvn7o5TbFJD/sU+0AcJ3iwV4DvsacRUBhIAzcz+Ml1s7Fxl7AGfuwVwXmnZxT5PM7Oq83MrAKYtPtCxZ7UJWCX0OR80M/vLJMDOWSXibgFWmyRanmZms497h3aI+0Ot26poYT+mA1Cd3KPGNtgCknsUsg6QkfkUyQ9qbBcR/hT66M1UWlt9kolBUGN92o4E+W8W6H7RVMFVpKniJ8A3RL4Ne/O+2kWnvOrkBtZ34my+yycUZORaDmO+1fn1EyG4gbN5N2NNDlWnbj16ExceO7Jz5RaoIriWqBdegsl1OZWxApbk6lAcBbgbFwej/jnV3PEOtERAQPWi986YTOlPhC/Bg1EQBqpPj6M1fIGY69iDjbKtDMvn02eftCOmbLIgM7qVJdUq4R1oPsSSJkwapKAdYOZSHjSiRUAtrijRhNAXRdjB5jXyoMvIp+o7mwAHseNJOxLnMguqk9ey9DMRzsbSbTyMYqLON11flDRKi1kb7DZ12aowdSURwMzXLCjI+Bg1IW3U9xjxOcTvkcoJKKAzrjK2j/EptdUPsHkJv1dRs1hGvIvNiyDswpg71K0OwK4E/CeEy2WVrphjYdfYvZnwLnt7BK7Fuh1/ibreWLed8bEchG5mrTFyhsG3ndEYPqFliSeXzvOsBWzzSxY0VbzJPm1Wg97G7n5FwSk2vXWO6ywehwdvQpiqpH4JzbNtsDTy7pflgIQZq6g8mzuOwiXAjoi7gvkXWPm0Do+X8fs5THydGKwTRxxCDQ9xOF9vJuiTUR3jJwrXWh6+JNz6APilr7AFSLo5YK98h6GO0ctgGpVyirbmJ8QO4eFzvBykD58fInIgm/c3CAPziKJ62gAOq4cRNEAcs3H5BArqAmzuq8LUm0wmS46Bo4O6XwocqrQfCN92HfmpELYrZP2RfoiwaS2p0ZC/ADWqzqV2xLUXLdBFh3cUBfUQNn+JZA+uBh1T7QDrkKOR1BDQBwk2NG8KG0SuHETDlfTIRsZ1OQi1bZgqX2JH3J5mgf/VsSYHGZ/QiW/gLvEMY0gZOYmHs9lxjUv0mj2JmfX+THl2O1rOZ8z0kw8jUHM6d8KHJFQhW01ARnOUvMQEhIb8t+1MZnQH4xl6pd0PyKG5+Ruibz7+zRrjV1uglxtOZCWiSkFvzR8itb92P4nRk0RkMQEQUJscVvUhBD6W62bJHRBiHcR/KO6rmRHXA3bE3wUW6KN5U8XHakcTiPd2MvBUflvF0Q/2OszsgYzVqq90DHscQjpL75DQdB5O4XcqMr5WhVwBx3yi4vtixurDVHATFKDf6ZJ0vAPUnitDC1qYBey5qVOO/NB3tYmYwnGlU64F2CNNH/osTzOzv0yHk52zQNxKYwsUCqYm+qCZWTUy15dUkPGqr0StqwVYbXyR9Hmamf1lEmDnLBC31SZglUiiBc3M5n7c04ccXmVk+jgWzFYK/ByFy3OKEqO0jZvoCCcR0MU1+hLAG3kNHJ2wpHetCguuWtbewSvMqFr2YDF536eW/k4KfVlDcqzmBFnG2hfxsH0NOx3PJedyaF9MFKrl7WQGA5otMc9xcWvIfwvX2BQf0Er0AiKAhEssaMg/g/zerebcB4Mbsa0PhFd8QmZ0Nb/TyKZlIkyOqD50mdZIB9LXnQDwAqa9KLaAajnbAn3krk7eHMGnPZyKJXhag+UPqkPeh3PPIuA+XHjFJ6hzyUm8lr7P8SlEgenMSlPXkm86lErsiLpvHcDPZkf5R+qciCJI2hLdJLjTLvYBvckyMeXzmFu0hZ18WbotKwGI1Zs+pfkFiGxfBohp83/0JYiH0dhV+jjBVCefovcsRvFEm1dl4xByxCNgniZ38JeVSeXO0bQbpgsyTvABidMsa5UPjNnhi2D3rQiAv1xX6ON9kgDM0vxYswlBUWpKQLca/4ZPWP7vtwDio1uAnRVQvSC0uwO8ENUS2J9IlwCwzFfM6AO7vNkCC+xyvS20ADslFQJmD7cU/1WGhm/MNRboD1J4rQ+C+rA1k171DBnzrf8tjPsdBTeJZLvT7/OcHmS5joR3lVNachg1g5HFBZQzhhRs9S2Mj8YWFGToBOfzeGa0EdY07iVNqP2ncvt7Zvby8+BKqJba4v8GZttyotyrMmjLWTtb70D2a10zqFDD1OtNhd5kdyPhL1SHbiD1ulAlePiQhxcxr0l69CfWg4h90I60gdss8N8UuOapcxdkbEegquw1EdJJhjUQ9CHtEVWmGv58f0bXX90l9LEcwqno/4A7bhTial1V54uVeD1qR/SvtEB/xC1K3J+L/i2EZgWxbmBJXIR/YMw3eLYTtZn2ksARGlKcPep2FVt+CAujOlc+BdTkRAvfwrqqM1i7EaBLur+9JkEtqELIFtVxGTrvlgPBR/DMaDdcArCXaOejuT4ItAA7xd84HLBTyGJrAUi2KQVlnA8yo0ezp6igQcCD0upktg/89J2pC4PktACmpIuxGTBFl/eBPr0woynfC7MblwiJ8rGWLNlBsCfVqgPyp6NaNvwR2vw5tfyZjxQ+uxZfqwDf1BCbb3E6XCufCWctezMkQs+pqU5GUNFYQ5ZOImpravRVjhDVYOAsgWqO3fasxT/0+8HgRYfs2Kn6WuQDPon5UxjnB0NHIl9qarip3I2539U05M9jv46p5R5ybUSnUlPFuRH+JlqLcUPgkB++Y2oO1BhJwAs3F1KZ4QOdIDg12gc4Q1EwxbdsB7BSn5q6OlCe3UWGdfZBtHA4HjMlFYw+0HKzjOgWZHREX1U1EdoNtapa0aU+9KKwhL8ZeTwsIcozlM5L6AEriX0NAXpbCa8lRyBKxpFcduhEC3QmWg4dplqi0coQ4EZNc8lnfF+30hzMG8MxP5Slo89AS19AVbUvtKrafGFb2L/ZTob9mWmulfrEKDCl8Au2eoTaTQppOYTqSefH1VTHQma0B+/MR/PjrVqALYK9A5y2UajdqI2E/Ibk37e3YPsnOMLXegFapqr+MClQS7Vyc+ECjroOrFmBDV2Q/scIQchEXTHsmUjP9wlFiY4I0pbUKZDt0a9O+z0JkMghkT+C3Ri9DjL4bjJyCnMaQKK3+3P2o5aYl9JmDmDwbsXUQ3M3Aqx3PxQK6I16SqH6bImusV+x5AF+O7DiCXmxFe/1irzejigc6YCk+5r1jkUqrbSAVXUWVMYaGBsVpl2AHfz2sZtfSPNhZP4Ax2GIhFrAmO64+wnE3tqddwjVANq89m+AushIByRdf8LTYYf3rU49qhifAsCMTnKdegGQdiT8t0u1Mf8L(/figma)-->\"></span><span style=\"white-space-collapse: preserve;\">Таиланд- это сказочный «остров богов», «остров тысячи храмов» и драгоценная жемчужина Индонезии... В цене проживани...</span><br></p>', 'от 120 587 ₽', '7-12 ночей', 'images/tours/ZZkvqEY5SSELIf1ouroc0mH0FsoiwSnVs9WR2Alt.png', NULL, '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Международный перелет (включен или не включен в зависимости от выбранного типа подпакета)\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                    <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                                </svg> Проживание в выбранном отеле с указанным типом питания\r\n                            </p>', '<p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Личные расходы и все, что не указано явно в программе тура\r\n                            </p><p>\r\n                                <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <path d=\"M18.6064 2.92497C18.521 2.84406 18.4078 2.79903 18.2902 2.79919C18.1726 2.79936 18.0595 2.84471 17.9744 2.92586L8.48499 11.9802L5.44271 9.06726C4.97499 8.61836 4.35219 8.36711 3.70391 8.36577C3.05563 8.36444 2.4318 8.61313 1.96224 9.0601L1.73128 9.27897C1.48362 9.51398 1.28626 9.79684 1.15116 10.1104C1.01606 10.4239 0.946029 10.7617 0.945318 11.1031C0.944607 11.4445 1.01323 11.7825 1.14702 12.0966C1.28082 12.4107 1.477 12.6944 1.72368 12.9304L8.16899 19.0749C8.2542 19.1557 8.36714 19.2007 8.48455 19.2007C8.60196 19.2007 8.7149 19.1557 8.80011 19.0749L21.8348 6.6534C21.8798 6.6105 21.9155 6.55893 21.9399 6.50181C21.9643 6.44468 21.9768 6.3832 21.9767 6.32109C21.9766 6.25898 21.9639 6.19753 21.9394 6.14048C21.9148 6.08342 21.879 6.03195 21.8339 5.98918L18.6064 2.92497ZM11.3966 15.3456L8.48454 18.1104L2.35746 12.268C2.20046 12.1177 2.0756 11.9372 1.99043 11.7372C1.90526 11.5373 1.86157 11.3222 1.86198 11.1049C1.8624 10.8875 1.90693 10.6726 1.99287 10.473C2.0788 10.2734 2.20436 10.0933 2.36194 9.94364L2.5929 9.72522C2.89183 9.44056 3.28904 9.28216 3.70182 9.283C4.1146 9.28383 4.51116 9.44383 4.80894 9.7297L8.16766 12.9452C8.25292 13.0267 8.3663 13.0722 8.48424 13.0723C8.60219 13.0724 8.71564 13.027 8.80101 12.9456L18.2917 3.89042L19.7792 5.30255L14.7938 10.0103C14.7063 10.094 14.6554 10.2089 14.6523 10.3299C14.6492 10.451 14.6941 10.5683 14.7772 10.6564C14.8603 10.7444 14.9748 10.796 15.0958 10.8C15.2168 10.8039 15.3345 10.7598 15.4231 10.6772L20.4452 5.93479L20.8537 6.32263L11.3966 15.3456Z\" fill=\"#4509A8\"></path>\r\n                                <path d=\"M13.142 11.5733L11.8668 12.7774C11.7791 12.861 11.728 12.976 11.7248 13.0971C11.7215 13.2183 11.7664 13.3358 11.8496 13.424C11.9328 13.5121 12.0475 13.5638 12.1687 13.5676C12.2898 13.5714 12.4076 13.5271 12.4961 13.4443L13.7713 12.2403C13.859 12.1566 13.91 12.0417 13.9131 11.9206C13.9163 11.7995 13.8714 11.682 13.7883 11.5939C13.7051 11.5058 13.5905 11.4542 13.4694 11.4503C13.3483 11.4465 13.2306 11.4907 13.142 11.5733Z\" fill=\"#4509A8\"></path>\r\n                            </svg> Страховка от невыезда 3,5% или 5,5% от стоимости тура (оформляется по желанию)\r\n                            </p>', 1, NULL, 'Пресс-релиз для сайта (3).docx', 0, 0, 0, 0, 0, 'images/tours/Jkq4V6LC2J8dbOeTnYG6Sqd1u1DZoCGuBicaOr7L.png', '2024-08-23 10:16:25', '2024-09-18 07:20:12');

-- --------------------------------------------------------

--
-- Структура таблицы `tour_attached_files`
--

CREATE TABLE `tour_attached_files` (
  `id` bigint UNSIGNED NOT NULL,
  `page_id` bigint UNSIGNED DEFAULT NULL,
  `file_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tour_country`
--

CREATE TABLE `tour_country` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_id` bigint UNSIGNED DEFAULT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tour_country`
--

INSERT INTO `tour_country` (`id`, `tour_id`, `country_id`, `created_at`, `updated_at`) VALUES
(2, 3, 1, '2024-08-23 09:22:46', '2024-08-23 09:22:46'),
(3, 14, 1, '2024-08-23 14:40:33', '2024-08-29 10:46:10'),
(4, 1, 4, '2024-08-26 08:33:16', '2024-08-26 08:33:16'),
(5, 13, 1, '2024-08-29 10:27:10', '2024-08-29 10:27:10'),
(6, 6, 1, '2024-08-29 10:41:08', '2024-08-29 10:41:08'),
(7, 11, 1, '2024-08-29 10:41:24', '2024-08-29 10:41:24'),
(8, 10, 5, '2024-08-29 10:41:51', '2024-08-29 10:41:51'),
(9, 7, 1, '2024-08-29 10:45:38', '2024-08-29 10:45:38'),
(10, 12, 1, '2024-08-29 10:45:59', '2024-08-29 10:45:59'),
(11, NULL, NULL, '2024-09-13 12:52:14', '2024-09-13 12:52:14'),
(12, NULL, NULL, '2024-09-13 12:53:42', '2024-09-13 12:53:42'),
(13, NULL, NULL, '2024-09-13 12:53:58', '2024-09-13 12:53:58'),
(14, NULL, NULL, '2024-09-13 12:56:40', '2024-09-13 12:56:40'),
(15, NULL, NULL, '2024-09-13 12:59:23', '2024-09-13 12:59:23'),
(16, NULL, NULL, '2024-09-13 13:06:24', '2024-09-13 13:06:24'),
(17, NULL, NULL, '2024-09-13 13:17:56', '2024-09-13 13:17:56'),
(18, NULL, NULL, '2024-09-13 13:18:47', '2024-09-13 13:18:47'),
(19, NULL, NULL, '2024-09-13 13:20:25', '2024-09-13 13:20:25'),
(20, NULL, NULL, '2024-09-13 13:20:55', '2024-09-13 13:20:55'),
(21, NULL, NULL, '2024-09-13 13:31:08', '2024-09-13 13:31:08'),
(22, NULL, NULL, '2024-09-13 14:34:10', '2024-09-13 14:34:10'),
(23, NULL, NULL, '2024-09-13 14:34:52', '2024-09-13 14:34:52'),
(24, NULL, NULL, '2024-09-13 14:34:56', '2024-09-13 14:34:56'),
(25, NULL, NULL, '2024-09-13 14:35:00', '2024-09-13 14:35:00'),
(26, NULL, NULL, '2024-09-13 14:35:04', '2024-09-13 14:35:04'),
(27, NULL, NULL, '2024-09-16 07:24:06', '2024-09-16 07:24:06'),
(28, NULL, NULL, '2024-09-16 07:25:52', '2024-09-16 07:25:52'),
(29, NULL, NULL, '2024-09-16 07:28:13', '2024-09-16 07:28:13'),
(30, NULL, NULL, '2024-09-16 07:30:48', '2024-09-16 07:30:48'),
(31, NULL, NULL, '2024-09-16 07:32:52', '2024-09-16 07:32:52'),
(32, NULL, NULL, '2024-09-18 07:16:28', '2024-09-18 07:16:28'),
(33, NULL, NULL, '2024-09-18 07:20:12', '2024-09-18 07:20:12');

-- --------------------------------------------------------

--
-- Структура таблицы `tour_days`
--

CREATE TABLE `tour_days` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_id` bigint UNSIGNED NOT NULL,
  `day` int DEFAULT NULL,
  `text` longtext,
  `title` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tour_programs`
--

CREATE TABLE `tour_programs` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_id` bigint UNSIGNED DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `text` longtext,
  `title` varchar(1000) DEFAULT NULL,
  `hide` tinyint DEFAULT '0',
  `rating` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tour_programs`
--

INSERT INTO `tour_programs` (`id`, `tour_id`, `day`, `text`, `title`, `hide`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, '4-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Фатехпур Сикри - Агра', 0, 0, '2024-08-14 11:26:18', '2024-08-14 11:31:59'),
(2, 1, '3-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Джайпур - Фатехпур Сикри', 0, 1, '2024-08-14 11:28:24', '2024-08-14 11:31:59'),
(3, 1, '2-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 2, '2024-08-14 11:28:37', '2024-08-14 11:31:59'),
(4, 1, '1-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 3, '2024-08-14 11:28:50', '2024-08-14 11:31:59'),
(5, 14, '1-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 0, '2024-08-29 10:52:39', '2024-08-29 10:52:39'),
(6, 11, '1-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 0, '2024-08-29 10:53:23', '2024-08-29 10:53:23'),
(8, 15, '1-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 0, '2024-08-29 10:54:32', '2024-08-29 10:54:32'),
(9, 12, '1-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 0, '2024-08-29 10:55:00', '2024-08-29 10:55:00'),
(10, 3, '1-й день', NULL, 'Самод - Джайпур', 0, 0, '2024-08-29 10:55:25', '2024-08-29 10:55:25'),
(11, 4, '1', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 0, '2024-08-29 10:55:47', '2024-08-29 10:55:53'),
(12, 4, '1-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 0, '2024-08-29 10:56:17', '2024-08-29 10:56:17'),
(13, 5, '1-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 0, '2024-08-29 10:56:41', '2024-08-29 10:56:41'),
(14, 6, '1-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 0, '2024-08-29 10:57:48', '2024-08-29 10:57:48'),
(15, 7, '1-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 0, '2024-08-29 10:58:15', '2024-08-29 10:58:15'),
(16, 8, '1-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 0, '2024-08-29 10:58:41', '2024-08-29 10:58:41'),
(17, 9, '1-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 0, '2024-08-29 10:59:04', '2024-08-29 10:59:04'),
(18, 10, '1-й день', '<p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прибытие в Дели на регулярном рейсе одной из международных авиакомпаний. Семьсот лет назад итальянский купец Марко Поло, после путешествия по Индостану, написал «Книгу чудес света». Сегодня прямой перелет в Индию занимает меньше времени, чем прочтение этого фолианта. А чудес за прошедшие столетия только добавилось.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Прохождение формальностей и получение багажа в аэропорту Нью-Дели (Терминал-3)</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Встреча в аэропорту.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;Вас ждет традиционное индийское приветствие «Свагат» с гирляндой из цветов.</p><p><svg width=\"25\" height=\"2\" viewBox=\"0 0 25 2\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><line y1=\"1\" x2=\"25\" y2=\"1\" stroke=\"#582F9A\" stroke-width=\"2\"></line></svg>&nbsp;После приветствия трансфер и размещение в отеле. Отдых.</p>', 'Самод - Джайпур', 0, 0, '2024-08-29 11:00:13', '2024-08-29 11:00:13');

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tour_status`
--

INSERT INTO `tour_status` (`id`, `tour_id`, `status_id`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(5, 1, 1, 0, 0, '2024-08-22 13:21:51', '2024-08-22 13:21:51'),
(7, 3, 1, 0, 0, '2024-08-23 09:22:46', '2024-08-23 09:22:46'),
(8, 13, 1, 0, 0, '2024-08-29 10:27:10', '2024-08-29 10:27:10'),
(9, 10, 1, 0, 0, '2024-08-29 10:41:51', '2024-08-29 10:41:51'),
(10, 12, 1, 0, 0, '2024-08-29 10:45:59', '2024-08-29 10:45:59'),
(13, 15, 1, 0, 0, '2024-09-18 07:20:12', '2024-09-18 07:20:12'),
(14, 15, 4, 0, 0, '2024-09-18 07:20:12', '2024-09-18 07:20:12');

-- --------------------------------------------------------

--
-- Структура таблицы `tour_type`
--

CREATE TABLE `tour_type` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_type_id` bigint UNSIGNED DEFAULT NULL,
  `tour_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tour_type`
--

INSERT INTO `tour_type` (`id`, `tour_type_id`, `tour_id`, `created_at`, `updated_at`) VALUES
(9, 1, 11, '2024-08-29 10:41:24', '2024-08-29 10:41:24'),
(11, 1, 9, '2024-08-29 10:45:16', '2024-08-29 10:45:16'),
(12, 1, 8, '2024-08-29 10:45:25', '2024-08-29 10:45:25'),
(13, 1, 5, '2024-08-29 10:46:23', '2024-08-29 10:46:23'),
(14, 1, 4, '2024-08-29 10:46:47', '2024-08-29 10:46:47'),
(37, 1, 15, '2024-09-18 07:20:12', '2024-09-18 07:20:12');

-- --------------------------------------------------------

--
-- Структура таблицы `tour_types`
--

CREATE TABLE `tour_types` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `image` text,
  `rating` tinyint DEFAULT '0',
  `hide` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tour_types`
--

INSERT INTO `tour_types` (`id`, `type`, `image`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(1, 'Гарантированные блоки мест', 'images/tours/LvQ8sjMhWF3Ge67Dq4C6Fypd1VEkIavnKiLnAHEx.png', 0, 0, '2024-08-22 13:02:53', '2024-09-13 10:34:37'),
(2, 'Групповые туры ITM club', NULL, 0, 0, '2024-08-22 13:03:02', '2024-08-22 13:03:02'),
(3, 'Серфинг', NULL, 0, 0, '2024-08-22 13:03:23', '2024-08-22 13:03:23'),
(7, 'Экспедиционные круизы', NULL, 0, 0, '2024-08-22 13:05:12', '2024-08-22 13:05:12');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `class_id`, `image`) VALUES
(1, 'parusdan', 'parusdan@vk.com', NULL, '$2y$10$IzlzgwTRVUOxycVXhEmQ8.KNJ8yaQd6mAcPws77onaG3YFRimi1N.', NULL, NULL, NULL, 1, 1, NULL),
(2, 'test', 'test@test.ru', NULL, '$2y$10$xz1BmIq/ArHYyIOyCNfVCO9Znh5N2il4WpHVs.XUah70.esHS/RCS', NULL, '2022-05-23 00:23:37', '2022-05-23 00:26:15', 1, 1, NULL),
(3, 'admin', 'admin', NULL, '$2y$10$Fyc995.Q8YfZFq3q2lpwju46P8Gy.g4a00YxiLgU6ocZjALrIxpPa', NULL, '2022-07-24 13:28:30', '2022-07-24 13:28:30', 1, 1, NULL),
(6, 'test', 'test', NULL, '$2y$10$wEqLxqCkFPyGuV8CU2FEQusY.hjnTXaacxktJF3.GjYfHnzoQzDaW', NULL, '2024-09-16 09:04:43', '2024-09-16 09:04:43', 1, 1, NULL),
(7, 'edik', 'edik2898@gmail.com', NULL, '$2y$10$Tzs/UZPbxEHs2tTpyLU5tuJTrnhEaSxo5bQJswCLdIH52q572JlGe', NULL, '2024-09-18 07:28:34', '2024-09-18 07:44:09', 0, 3, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users_class`
--

CREATE TABLE `users_class` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
-- Индексы таблицы `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agents_user_id_foreign` (`user_id`);

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
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `mailling`
--
ALTER TABLE `mailling`
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `samotour_tours`
--
ALTER TABLE `samotour_tours`
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
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tours_samotour_tour_id_foreign` (`samotour_tour_id`);

--
-- Индексы таблицы `tour_attached_files`
--
ALTER TABLE `tour_attached_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_attached_files_page_id_foreign` (`page_id`),
  ADD KEY `tour_attached_files_file_id_foreign` (`file_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT для таблицы `admin_event_logs`
--
ALTER TABLE `admin_event_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=766;

--
-- AUTO_INCREMENT для таблицы `advs`
--
ALTER TABLE `advs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `attached_files`
--
ALTER TABLE `attached_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `attached_pages`
--
ALTER TABLE `attached_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT для таблицы `infografika`
--
ALTER TABLE `infografika`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `mailling`
--
ALTER TABLE `mailling`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT для таблицы `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `samotour_tours`
--
ALTER TABLE `samotour_tours`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2094;

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
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `tour_attached_files`
--
ALTER TABLE `tour_attached_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tour_country`
--
ALTER TABLE `tour_country`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `tour_days`
--
ALTER TABLE `tour_days`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tour_programs`
--
ALTER TABLE `tour_programs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `tour_status`
--
ALTER TABLE `tour_status`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `tour_type`
--
ALTER TABLE `tour_type`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `tour_types`
--
ALTER TABLE `tour_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `agents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

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
-- Ограничения внешнего ключа таблицы `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_samotour_tour_id_foreign` FOREIGN KEY (`samotour_tour_id`) REFERENCES `samotour_tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tour_attached_files`
--
ALTER TABLE `tour_attached_files`
  ADD CONSTRAINT `tour_attached_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tour_attached_files_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
