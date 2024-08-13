-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 13 2024 г., 18:01
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
(308, 'lending.tours', 'read', '1', NULL, NULL),
(309, 'lending.tours.infografika', 'edit', '1', NULL, NULL),
(310, 'lending.tours.infografika', 'delete', '1', NULL, NULL),
(311, 'lending.tours.infografika', 'read', '1', NULL, NULL);

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
(211, 'update', 'lending.tours', '4', '2', 'App\\Models\\Lending\\Tour', '2024-08-13 14:19:12', '2024-08-13 14:19:12');

-- --------------------------------------------------------

--
-- Структура таблицы `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview_text` text COLLATE utf8mb4_unicode_ci,
  `rating` int DEFAULT '0',
  `hide` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Индонезия'),
(2, 'Китай'),
(3, 'Шри Ланка'),
(4, 'Вьетнам'),
(5, 'Япония'),
(6, 'Кения'),
(7, 'ЮАР'),
(8, 'Тайланд');

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
(3, 'upload/tours/YiWP9b2w5iuOcwz1CsOOMFMD2LUp7H2qRJFr5Uko.jpg', NULL, NULL, 'upload/tours/YiWP9b2w5iuOcwz1CsOOMFMD2LUp7H2qRJFr5Uko.jpg', 50, 1, '1'),
(4, 'upload/tours/odRoaL6wmNw5hDAYhuYXH8MYZn6NZgt473UkPuUm.jpg', NULL, NULL, 'upload/tours/odRoaL6wmNw5hDAYhuYXH8MYZn6NZgt473UkPuUm.jpg', 100, 1, '1');

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
(49, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(50, '2024_08_12_102141_create_tour_type_table', 1),
(51, '2024_08_12_103832_create_countries', 1),
(52, '2024_08_12_110434_create_tours_table', 1),
(53, '2024_08_12_110456_create_news_table', 1),
(54, '2024_08_12_110516_create_blogs_table', 1),
(55, '2024_08_12_143948_create_tour_country_table', 1),
(58, '2024_08_13_101205_create_tour_day_table', 2),
(59, '2024_08_13_101823_create_tour_statistic_info', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview_text` text COLLATE utf8mb4_unicode_ci,
  `rating` int DEFAULT '0',
  `hide` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci,
  `preview_text` text COLLATE utf8mb4_unicode_ci,
  `preview_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_nights` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_type_id` bigint UNSIGNED DEFAULT NULL,
  `preview_title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int DEFAULT '0',
  `hide` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tours`
--

INSERT INTO `tours` (`id`, `text`, `title`, `path`, `preview_text`, `preview_price`, `preview_nights`, `tour_type_id`, `preview_title`, `rating`, `hide`, `created_at`, `updated_at`) VALUES
(1, '<p>asda</p>', 'test-title', NULL, 'test-preview', NULL, NULL, NULL, NULL, 0, 0, '2024-08-12 11:59:01', '2024-08-12 12:00:04'),
(2, '<span style=\"color: rgb(52, 38, 53); font-family: Inter, sans-serif; font-size: 15px; letter-spacing: -0.45px;\">Все, что есть в Индии, создано благодаря любви. Любовь к науке и истине позволяет сегодня лицезреть нам обсерваторию Джантар Мантар в Джайпуре. Благодаря бхакти, любви к богу, люди возвели храмы Вриндавана, Храм Лотоса и Акшардхам в Дели. Любовь к женам один из правителей реализовал в великолепном дворце Хава Махал - где жили женщины гарема. Хрестоматиен пример любви, благодаря которой мы можем любоваться мавзолеем Тадж Махал. Да и в нашем случае виновата любовь к путешествиям – с нее обычно и начинается любовь к Индии.</span>', 'Экскурсионный тур: «Золотой треугольник»', 'images/tours/SBKpvwjVfehJ9mgLZNiUnVHwnrBQUn73xbHIgSDI.webp', 'PREVIEW_IMGE', NULL, NULL, NULL, NULL, 0, 0, '2024-08-12 14:15:54', '2024-08-13 14:19:12');

-- --------------------------------------------------------

--
-- Структура таблицы `tour_country`
--

CREATE TABLE `tour_country` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tour_country`
--

INSERT INTO `tour_country` (`id`, `tour_id`, `country_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 1);

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
-- Структура таблицы `tour_statistic_info`
--

CREATE TABLE `tour_statistic_info` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_id` bigint UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `hide` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tour_types`
--

CREATE TABLE `tour_types` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

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
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Индексы таблицы `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tours_tour_type_id_foreign` (`tour_type_id`);

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
-- Индексы таблицы `tour_statistic_info`
--
ALTER TABLE `tour_statistic_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_statistic_info_tour_id_foreign` (`tour_id`);

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
-- AUTO_INCREMENT для таблицы `admin_access_rights`
--
ALTER TABLE `admin_access_rights`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT для таблицы `admin_event_logs`
--
ALTER TABLE `admin_event_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT для таблицы `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT для таблицы `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT для таблицы `tour_statistic_info`
--
ALTER TABLE `tour_statistic_info`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tour_types`
--
ALTER TABLE `tour_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_tour_type_id_foreign` FOREIGN KEY (`tour_type_id`) REFERENCES `tour_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Ограничения внешнего ключа таблицы `tour_statistic_info`
--
ALTER TABLE `tour_statistic_info`
  ADD CONSTRAINT `tour_statistic_info_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
