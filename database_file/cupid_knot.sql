-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2022 at 07:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cupid_knot`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(24, '2014_10_12_000000_create_users_table', 1),
(25, '2014_10_12_100000_create_password_resets_table', 1),
(26, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2020_05_21_100000_create_teams_table', 1),
(30, '2020_05_21_200000_create_team_user_table', 1),
(31, '2020_05_21_300000_create_team_invitations_table', 1),
(32, '2022_09_09_061355_add_social_login_field', 1),
(33, '2022_09_09_062957_create_sessions_table', 1),
(34, '2022_09_09_082428_create_partner_preference_table', 1),
(35, '2022_09_09_090355_create_partner_occupation_table', 1),
(36, '2022_09_09_090447_create_partner_family_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partner_family`
--

CREATE TABLE `partner_family` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `family_type` tinyint(4) DEFAULT NULL COMMENT '0-Join family, 1-Nuclear family',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_family`
--

INSERT INTO `partner_family` (`id`, `user_id`, `family_type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(2, 2, 1, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(3, 3, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(4, 4, 1, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(5, 5, 1, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(6, 6, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(7, 7, 1, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(8, 8, 1, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(9, 9, 1, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(10, 10, 1, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(11, 11, 1, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(12, 12, 1, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(13, 13, 1, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(14, 14, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(15, 15, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(16, 16, 1, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(17, 17, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(18, 18, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(19, 19, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(20, 20, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(21, 31, 0, '2022-09-10 02:05:46', '2022-09-10 02:05:46'),
(22, 31, 1, '2022-09-10 02:05:46', '2022-09-10 02:05:46'),
(23, 32, 0, '2022-09-10 02:07:26', '2022-09-10 02:07:26'),
(24, 32, 1, '2022-09-10 02:07:26', '2022-09-10 02:07:26'),
(25, 33, 1, '2022-09-10 03:23:00', '2022-09-10 03:23:00'),
(26, 39, 1, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(27, 40, 1, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(28, 41, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(29, 42, 1, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(30, 43, 1, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(31, 44, 1, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(32, 45, 1, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(33, 46, 1, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(34, 47, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(35, 48, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(36, 49, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(37, 50, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(38, 51, 1, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(39, 52, 1, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(40, 53, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(41, 54, 1, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(42, 55, 1, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(43, 56, 1, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(44, 57, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(45, 58, 1, '2022-09-13 11:51:26', '2022-09-13 11:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `partner_occupation`
--

CREATE TABLE `partner_occupation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `occupation_type` tinyint(4) DEFAULT NULL COMMENT '0-private job, 1-government job, 2-bussiness',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_occupation`
--

INSERT INTO `partner_occupation` (`id`, `user_id`, `occupation_type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(2, 1, 2, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(3, 2, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(4, 2, 2, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(5, 3, 1, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(6, 3, 2, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(7, 4, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(8, 4, 2, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(9, 5, 1, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(10, 5, 2, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(11, 6, 1, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(12, 6, 2, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(13, 7, 1, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(14, 7, 2, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(15, 8, 1, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(16, 8, 2, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(17, 9, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(18, 9, 2, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(19, 10, 1, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(20, 10, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(21, 11, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(22, 11, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(23, 12, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(24, 12, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(25, 13, 1, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(26, 13, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(27, 14, 1, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(28, 14, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(29, 15, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(30, 15, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(31, 16, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(32, 16, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(33, 17, 1, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(34, 17, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(35, 18, 1, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(36, 18, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(37, 19, 1, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(38, 19, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(39, 20, 1, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(40, 20, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(41, 30, 1, '2022-09-10 02:05:22', '2022-09-10 02:05:22'),
(42, 30, 2, '2022-09-10 02:05:22', '2022-09-10 02:05:22'),
(43, 31, 0, '2022-09-10 02:05:46', '2022-09-10 02:05:46'),
(44, 31, 2, '2022-09-10 02:05:46', '2022-09-10 02:05:46'),
(45, 32, 0, '2022-09-10 02:07:26', '2022-09-10 02:07:26'),
(46, 32, 1, '2022-09-10 02:07:26', '2022-09-10 02:07:26'),
(47, 32, 2, '2022-09-10 02:07:26', '2022-09-10 02:07:26'),
(48, 33, 0, '2022-09-10 03:23:00', '2022-09-10 03:23:00'),
(49, 39, 1, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(50, 39, 2, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(51, 40, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(52, 40, 2, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(53, 41, 1, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(54, 41, 2, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(55, 42, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(56, 42, 2, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(57, 43, 1, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(58, 43, 2, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(59, 44, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(60, 44, 2, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(61, 45, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(62, 45, 2, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(63, 46, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(64, 46, 2, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(65, 47, 1, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(66, 47, 2, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(67, 48, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(68, 48, 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(69, 49, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(70, 49, 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(71, 50, 1, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(72, 50, 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(73, 51, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(74, 51, 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(75, 52, 1, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(76, 52, 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(77, 53, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(78, 53, 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(79, 54, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(80, 54, 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(81, 55, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(82, 55, 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(83, 56, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(84, 56, 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(85, 57, 1, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(86, 57, 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(87, 58, 1, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(88, 58, 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `partner_preference`
--

CREATE TABLE `partner_preference` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `min_income` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_income` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manglik_type` tinyint(4) DEFAULT NULL COMMENT '0-yes, 1-no, 2-both',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_preference`
--

INSERT INTO `partner_preference` (`id`, `user_id`, `min_income`, `max_income`, `manglik_type`, `created_at`, `updated_at`) VALUES
(1, 1, '428179', NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(2, 2, '390194', NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(3, 3, '839450', NULL, 2, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(4, 4, '511656', NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(5, 5, '530731', NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(6, 6, '562471', NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(7, 7, '255963', NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(8, 8, '968423', NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(9, 9, '396277', NULL, 2, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(10, 10, '539680', NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09'),
(11, 11, '202307', NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(12, 12, '751226', NULL, 1, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(13, 13, '392584', NULL, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(14, 14, '636994', NULL, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(15, 15, '393146', NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(16, 16, '722114', NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(17, 17, '753570', NULL, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(18, 18, '910573', NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(19, 19, '267517', NULL, 2, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(20, 20, '971480', NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10'),
(21, 29, '10000', '10000000', 0, '2022-09-10 02:04:39', '2022-09-10 02:04:39'),
(22, 30, '10000', '10000000', 1, '2022-09-10 02:05:22', '2022-09-10 02:05:22'),
(23, 31, '10000', '10000000', 2, '2022-09-10 02:05:46', '2022-09-10 02:05:46'),
(24, 32, '3284569', '10000000', 1, '2022-09-10 02:07:26', '2022-09-10 02:07:26'),
(25, 33, '10000', '10000000', 0, '2022-09-10 03:23:00', '2022-09-10 03:23:00'),
(26, 39, '4746', '951850', 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(27, 40, '3441', '547448', 2, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(28, 41, '2721', '989106', 1, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(29, 42, '1083', '918160', 2, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(30, 43, '4446', '32240', 1, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(31, 44, '1619', '268491', 1, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(32, 45, '2513', '681966', 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(33, 46, '3865', '164145', 2, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(34, 47, '2768', '79623', 2, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(35, 48, '1667', '491887', 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25'),
(36, 49, '2486', '226989', 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(37, 50, '4019', '555400', 1, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(38, 51, '2586', '752530', 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(39, 52, '1486', '931447', 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(40, 53, '2927', '523648', 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(41, 54, '2947', '492428', 1, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(42, 55, '4542', '562925', 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(43, 56, '2805', '758503', 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(44, 57, '4042', '325604', 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26'),
(45, 58, '1761', '526283', 2, '2022-09-13 11:51:26', '2022-09-13 11:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cUZPs77JaqUu2yFIUbj8vdqCILoK1mqmLmf0R8k0', 34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiM1Z2UmtRRFlGWWxaS1YwcE5JenF4ZWQ0ZU5VZUd5ZDNyV1ZqNjhSayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozNDtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRKdFNyc1Y4Wm0xdC84Mlg3ZDlFSElPaDJnWVU5azg1V2Z0b2I5S0o3cGVNL0RKQUZyUWNsTyI7fQ==', 1663180457),
('OeMY8SHIGdJHurELroaUgsZaUDyACCwO9Ns5Dw06', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWk2QnlQVXdCdDlxeDFsR3NGeVhrT3R0RmpDRGJPYWJONVkxSHRENSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1663092654),
('Oxes2lMQE0ws4cbIepVTBj3WX9aeRUa6OCwwX4l8', 34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUjM0NFlXVUU3d1NqZ1lNNjJPWWJnOGg4QURoNXAzVFJ2SExhaDVySSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozNDtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRKdFNyc1Y4Wm0xdC84Mlg3ZDlFSElPaDJnWVU5azg1V2Z0b2I5S0o3cGVNL0RKQUZyUWNsTyI7fQ==', 1663263728);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL COMMENT '0-female,1-male',
  `annual_income` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` tinyint(4) DEFAULT NULL COMMENT '0-private job, 1-government job, 2-bussiness',
  `family_type` tinyint(4) DEFAULT NULL COMMENT '0-Join family, 1-Nuclear family',
  `manglik` tinyint(4) DEFAULT NULL COMMENT '0-yes, 1-No',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Users, 1-Admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `dob`, `gender`, `annual_income`, `occupation`, `family_type`, `manglik`, `remember_token`, `current_team_id`, `profile_photo_path`, `role`, `created_at`, `updated_at`, `social_id`, `social_type`) VALUES
(1, 'g482Pk5QvY', 'Nx7OmVnig1', 'E4X24SUPWX@gmail.com', NULL, '$2y$10$H/J5oRgW7hUmgGmfBaUrtORMlIPpQBnZ1OLJ6vKOVe2c5CvI.Ww1a', NULL, NULL, NULL, '2022-09-09', 1, '63898', 1, 1, 0, NULL, NULL, NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09', NULL, NULL),
(2, 'S9GGarNVnv', 'xcjmEwHGAV', 'f5cgw7XaSD@gmail.com', NULL, '$2y$10$54a90ypp2CNgeh5rk9niCeF3r4vqkGuunOX35Q.dYWPRxjfzymhhW', NULL, NULL, NULL, '2022-09-09', 1, '111582', 2, 1, 1, NULL, NULL, NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09', NULL, NULL),
(3, 'XoXTUFbPxI', 'pOoSPyYyHK', 'EqSopqUQEx@gmail.com', NULL, '$2y$10$8IzZa.cuUVDPwpDNg6m84ei0AUyJto3j6/tAju4Uj.3WVf/3ag5Cm', NULL, NULL, NULL, '2022-09-09', 0, '106677', 2, 1, 1, NULL, NULL, NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09', NULL, NULL),
(4, '32fNinGFjV', 'eJOlyz45eN', 'pVZqtYacdB@gmail.com', NULL, '$2y$10$S5f8oFC86jr3cY8EFKL3.OIg.KiwiF0mfbHh/GoMQ8OrPUi6S9vSe', NULL, NULL, NULL, '2022-09-09', 1, '985422', 0, 1, 0, NULL, NULL, NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09', NULL, NULL),
(5, 'Poo9pJ95Wo', 'BmEk6Yjh2g', 'dRqXVaJs4k@gmail.com', NULL, '$2y$10$oDCFOohn1IMeylsSHLGwaeEH/cT32o5SnnQlNKzIE1zr/5Q.2L9qm', NULL, NULL, NULL, '2022-09-09', 1, '424324', 0, 0, 0, NULL, NULL, NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09', NULL, NULL),
(6, 'Lb8gSjiLld', '2FcUa18wxw', '20uA6emaKo@gmail.com', NULL, '$2y$10$SxYxXhxvkPQV9uQj5egg3.WE2LYPkgTTf2QTWEyfRjmr81Ad8s9w6', NULL, NULL, NULL, '2022-09-09', 1, '928119', 2, 1, 0, NULL, NULL, NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09', NULL, NULL),
(7, '0XadwD7GQi', 'ruuYFkmwkY', 'bYZp5xba5w@gmail.com', NULL, '$2y$10$MGY23OA9ONmhM6e1l9.6m.BRnopxhePB/x8yLMH/PC668.TBtVoaS', NULL, NULL, NULL, '2022-09-09', 1, '633964', 0, 0, 0, NULL, NULL, NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09', NULL, NULL),
(8, 'LTUbZGrz2Q', 'VEMn0u2Nfy', 'E88y43cWlW@gmail.com', NULL, '$2y$10$ydxtLrqoYR4B.0avSLtXhejdIViBxwfQ1i3ELkFd30w8DUjusrMlC', NULL, NULL, NULL, '2022-09-09', 1, '969471', 2, 1, 1, NULL, NULL, NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09', NULL, NULL),
(9, 'CTRHNPVPle', 'CkM5GlHocj', 'frG37LxZHM@gmail.com', NULL, '$2y$10$.eWczfklBGwD631vnDHdCuSRI2o8yUxSdADaLWwW6arjURluHKA1u', NULL, NULL, NULL, '2022-09-09', 0, '532509', 2, 0, 0, NULL, NULL, NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09', NULL, NULL),
(10, 'ekJkNFV7YF', '5XsyUKyVMk', 'gVSTQH80cB@gmail.com', NULL, '$2y$10$9g7wBrhMOY2Y4UM5Ak6KOeSgNsI8xdeMMHO6z1qoQidHJSYzTSOri', NULL, NULL, NULL, '2022-09-09', 1, '695508', 1, 0, 1, NULL, NULL, NULL, 0, '2022-09-09 07:35:09', '2022-09-09 07:35:09', NULL, NULL),
(11, 'opFNN2OIFd', 'yKkBLsyqdp', 'ERHmLj9U6z@gmail.com', NULL, '$2y$10$fKS33.OcFfoUSubQ51CQKuV3krzVW/g9UXIBLFO9X9rDqicOc5x7O', NULL, NULL, NULL, '2022-09-09', 1, '139105', 1, 0, 0, NULL, NULL, NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10', NULL, NULL),
(12, '32L1u1x6HQ', 'nOqlSEp4IK', 'n8MY3YUuW3@gmail.com', NULL, '$2y$10$hwh2IT/XSCtRmR/fiTXQtO0oZhkETF2giYxXlxVnUYJWTk39EZHR6', NULL, NULL, NULL, '2022-09-09', 0, '316836', 2, 0, 0, NULL, NULL, NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10', NULL, NULL),
(13, 'RQNOj0hZgL', 'SaK7Og9nqx', 'F76XfG3ilt@gmail.com', NULL, '$2y$10$P1AZj7G5sNAzopajSRy7XOmq3NMUqFbdFh8rmKWlpIJkKMP5y7p6u', NULL, NULL, NULL, '2022-09-09', 1, '495593', 1, 1, 0, NULL, NULL, NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10', NULL, NULL),
(14, 'ISgpxycfxq', '6g0K7UXeJu', 'Y6tTbDMPN6@gmail.com', NULL, '$2y$10$zFJIx/4NsoBzkZn7JwygDu.vPN/7t0Nb7jmJlLnyA4BXxfTbLpXTC', NULL, NULL, NULL, '2022-09-09', 0, '319203', 2, 0, 1, NULL, NULL, NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10', NULL, NULL),
(15, 'pqgHgTgofz', 'ecUjDrRASP', 'bTaUeo6Bez@gmail.com', NULL, '$2y$10$OAvOQWLzLLPeOtLnxcwf1OxlpRZFQzjnDLk4ozf04he2HqZWWZKdm', NULL, NULL, NULL, '2022-09-09', 0, '96013', 2, 1, 1, NULL, NULL, NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10', NULL, NULL),
(16, 'f5YWuMXfQu', 'F65XQ9lJpv', 'gdOGYBpc1w@gmail.com', NULL, '$2y$10$bp0DSKmo.qNYTuek7NPhVuM4jazXiN0jyQWwE/ZleyRfX.sbWUM1S', NULL, NULL, NULL, '2022-09-09', 0, '978818', 0, 0, 1, NULL, NULL, NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10', NULL, NULL),
(17, 'Vd9dmlwxKk', 'j1wonmL2m0', 'yXI3shmyAJ@gmail.com', NULL, '$2y$10$Cq28vDuCfWawpgay9BFPxuMNyaTn99VF17XHGZhdrk2PxN.C/M.oG', NULL, NULL, NULL, '2022-09-09', 0, '27487', 0, 0, 0, NULL, NULL, NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10', NULL, NULL),
(18, 'Xy4VBdpqs5', 'eq2n6rQx5c', 'aoVYwxgw0B@gmail.com', NULL, '$2y$10$Ert0piA3sTMhc4RNAOJgAub1gvxOTPZ3C/GDd9h3a8ILDuFQDnn0q', NULL, NULL, NULL, '2022-09-09', 0, '25429', 0, 0, 1, NULL, NULL, NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10', NULL, NULL),
(19, '2nax0Jl7Fc', 'L6vFcdGkz9', 'NmwH2JuWkz@gmail.com', NULL, '$2y$10$KnLe2bHreAIuXeo5kCbYfOfDwSUR9jJ3LbUGByIWM2XLP9Ln1IKyy', NULL, NULL, NULL, '2022-09-09', 1, '470336', 2, 0, 1, NULL, NULL, NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10', NULL, NULL),
(20, 'jfIQeU5JOg', '3S4q0Sm35y', 'gW5k38oeaU@gmail.com', NULL, '$2y$10$6Ukd47s06/BsiyQnrkK0gOfTroP.EsT5r3kY1SbdO6/g/Syz.utSi', NULL, NULL, NULL, '2022-09-09', 0, '119413', 2, 0, 1, NULL, NULL, NULL, 0, '2022-09-09 07:35:10', '2022-09-09 07:35:10', NULL, NULL),
(21, 'Autumn', NULL, 'fumepobufo@mailinator.com', NULL, '$2y$10$0FkAsDAhTa3rvDd.pJJAv.RxCfHtWgxp6ZazWIqPSpLMhhdYc4jjm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-09 07:39:09', '2022-09-09 07:39:09', NULL, NULL),
(22, 'Brenda', NULL, 'xymolypyx@mailinator.com', NULL, '$2y$10$gs4T3zIOYDgay8yh.OZ/NOv39d2Z6QdxVUMXM5J8p6/6zrhSzC98u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-09 07:42:34', '2022-09-09 07:42:34', NULL, NULL),
(23, 'Julie', 'Roy', 'nipod@mailinator.com', NULL, '$2y$10$YXqWBZMYK/2/awSXfFa9XeiHzpaakye5jaCO4K5vCpCGvyrOfsPWS', NULL, NULL, NULL, '1984-04-14', 0, '690', 1, 0, 0, NULL, NULL, NULL, 0, '2022-09-09 07:54:58', '2022-09-09 07:54:58', NULL, NULL),
(24, 'Sopoline', 'Wilson', 'hamarawuty@mailinator.com', NULL, '$2y$10$./bxRv1RFVm8MENTWfcot.I5MVW8.2HrKAthfOXpAJVXD1DYg22Le', NULL, NULL, NULL, '1997-11-23', 0, '431', 0, 1, 0, NULL, NULL, NULL, 0, '2022-09-09 08:28:21', '2022-09-09 08:28:21', NULL, NULL),
(25, 'Peter', 'Dudley', 'kumev@mailinator.com', NULL, '$2y$10$vNZGI13IXJOAuwa6fgPmLOfsJCniXF4UBYlx7keH7y.aZdE43zGWO', NULL, NULL, NULL, '2005-11-04', 0, '31', 0, 1, 0, NULL, NULL, NULL, 0, '2022-09-09 08:33:37', '2022-09-09 08:33:37', NULL, NULL),
(26, 'Isabelle', 'Luna', 'xexiqec@mailinator.com', NULL, '$2y$10$iEyYy8c57cK32wRzo1o/ceRUhx1heWTLbRMdM7JgL3gVV2WWX82Ii', NULL, NULL, NULL, '1993-01-20', 1, '353', 0, 0, 1, NULL, NULL, NULL, 0, '2022-09-09 08:34:07', '2022-09-09 08:34:07', NULL, NULL),
(27, 'Caryn', 'Small', 'pexazikan@mailinator.com', NULL, '$2y$10$pyTEvPDDilK0ncpJiP2ptuk5pL06a3KBP2IrK/Z.nb78l04zhBwi6', NULL, NULL, NULL, '1987-01-23', 1, '638', 1, 0, 0, NULL, NULL, NULL, 0, '2022-09-09 08:34:45', '2022-09-09 08:34:45', NULL, NULL),
(28, 'Giselle', 'Odonnell', 'duzo@mailinator.com', NULL, '$2y$10$f9lhJmtKnDYx4gi77UFQ4.Bfe2OW3vQKgqQiI2G9e2AGnEkzeDx4.', NULL, NULL, NULL, '2005-04-15', 0, '727', 2, 1, 0, NULL, NULL, NULL, 0, '2022-09-10 02:01:33', '2022-09-10 02:01:33', NULL, NULL),
(29, 'Tasha', 'Noble', 'gecol@mailinator.com', NULL, '$2y$10$b4cL3p474hPZMDNiWOlTR.DwD9bONyfwWhtlU2E6m495e4mPtwBHG', NULL, NULL, NULL, '2012-07-25', 0, '763', 2, 0, 1, NULL, NULL, NULL, 0, '2022-09-10 02:04:39', '2022-09-10 02:04:39', NULL, NULL),
(30, 'Jana', 'Merritt', 'lagujup@mailinator.com', NULL, '$2y$10$WbjTbw574LqMHcU9REfHeOjWKC2r/ezCuijYt4H5.eteqepytWX9y', NULL, NULL, NULL, '2000-01-11', 0, '1000', 2, 1, 0, NULL, NULL, NULL, 0, '2022-09-10 02:05:22', '2022-09-10 02:05:22', NULL, NULL),
(31, 'Eaton', 'Britt', 'netat@mailinator.com', NULL, '$2y$10$oReRaszUXkoNhLdNUNIQm.C0600Xj2Zz3fs5qfZ6mZLdKYCVpUI6m', NULL, NULL, NULL, '2001-05-28', 1, '881', 2, 1, 0, NULL, NULL, NULL, 0, '2022-09-10 02:05:46', '2022-09-10 02:05:46', NULL, NULL),
(32, 'Leroy', 'Rodgers', 'cuzepi@mailinator.com', NULL, '$2y$10$ljx6QljQftgsk9U3ha5zdOWEoOAFlQHdob4/DGf0OdhKAGUKOmmfu', NULL, NULL, NULL, '2000-11-17', 0, '76', 2, 1, 0, NULL, NULL, NULL, 0, '2022-09-10 02:07:26', '2022-09-10 02:07:26', NULL, NULL),
(33, 'Dahlia', 'Porter', 'nota@mailinator.com', NULL, '$2y$10$VaBuy25yT/aJG3zWAirWeuLLaUpq2sGthPT6M60oX9nBPZ4GHha6W', NULL, NULL, NULL, '2020-07-09', 0, '676', 1, 0, 0, NULL, NULL, NULL, 0, '2022-09-10 03:23:00', '2022-09-10 03:23:00', NULL, NULL),
(34, 'Admin', 'Admin', 'admin@gmail.com', NULL, '$2y$10$JtSrsV8Zm1t/82X7d9EHIOh2gYU9k85Wftob9KJ7peM/DJAFrQclO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-13 11:42:28', '2022-09-13 11:42:28', NULL, NULL),
(35, 'dQFBrmq38C', 'bMMwiI2MYf', 'nVWjZckazN@gmail.com', NULL, '$2y$10$afQHsVe5jL4e0w3Ua.53JO4MoJNTIDEGkRhEhPrZyeIVADLcw5x8q', NULL, NULL, NULL, '2022-09-13', 0, '373263', 2, 0, 1, NULL, NULL, NULL, 0, '2022-09-13 11:42:28', '2022-09-13 11:42:28', NULL, NULL),
(39, 'TWQREgfLah', 'OYrEqfFCbs', 'N5ZojkkBgB@gmail.com', NULL, '$2y$10$QnvDr531NA5SBbeh34YlvuB1FiFvAdF7b7INNSejzJEEymznWqK2K', NULL, NULL, NULL, '2022-09-13', 0, '805838', 1, 0, 1, NULL, NULL, NULL, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25', NULL, NULL),
(40, 'oOVUOfw5Bl', '6yy0c6syYD', '43kIbpyV4b@gmail.com', NULL, '$2y$10$c7MN996eHrr2BskmuVvnpepN0dx/yKJhTZhWq4AdIU2lYXHJOXGme', NULL, NULL, NULL, '2022-09-13', 1, '955865', 0, 1, 0, NULL, NULL, NULL, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25', NULL, NULL),
(41, 'EcKqJh744t', 'km9pnthX5V', 'L1RXAc3MGg@gmail.com', NULL, '$2y$10$5EpNDg87sCLlsQAJiWrbeuueA/GG14H7GBWh2Y0i8uzZ1tu4r/Kyy', NULL, NULL, NULL, '2022-09-13', 0, '931584', 1, 1, 1, NULL, NULL, NULL, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25', NULL, NULL),
(42, 'o6j3uuUun0', 'cYi4APvGF1', 'jB13tWXMpL@gmail.com', NULL, '$2y$10$aBgZFTmZ.wRknm7Gulu0TeG8WJDQ0BCDjnSrtyY6pBzqbPm9UmvnO', NULL, NULL, NULL, '2022-09-13', 0, '91764', 2, 1, 0, NULL, NULL, NULL, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25', NULL, NULL),
(43, 'AMYUDhxpjQ', 'DLZrue6FXU', 'Ug2VNycJ42@gmail.com', NULL, '$2y$10$aM4FKgxomeMn7RnihcMc3u4TedI816DXRieyHXQeDgX/V8mvYARse', NULL, NULL, NULL, '2022-09-13', 0, '382383', 0, 0, 0, NULL, NULL, NULL, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25', NULL, NULL),
(44, 'hEnRJK1wJB', 'HdPLcNE33K', '5HccvHHCl7@gmail.com', NULL, '$2y$10$PYLpMAZ7KkfM1v.y0mb9MOzkSXtWtpyUSzmsrY3HyCXJ/klSe6V..', NULL, NULL, NULL, '2022-09-13', 0, '815829', 0, 0, 1, NULL, NULL, NULL, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25', NULL, NULL),
(45, '2HxR1BqOKl', '9YYJhXw0xZ', 'zbWgG4D6mc@gmail.com', NULL, '$2y$10$51vitAlPsAd5xDV36Pd8teev0xuyEqenxLuD3voCKb5cKp8acNvsC', NULL, NULL, NULL, '2022-09-13', 0, '828548', 0, 0, 1, NULL, NULL, NULL, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25', NULL, NULL),
(46, 'mMD4RnkRMZ', 'HbVcqCh9jZ', 's5PG0Q7Zuh@gmail.com', NULL, '$2y$10$4QR5e9/21Ew36tZesoXqUecK5ZUcMpx0s9Vx5/igYTtzz7zIKiYMy', NULL, NULL, NULL, '2022-09-13', 0, '743914', 0, 1, 1, NULL, NULL, NULL, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25', NULL, NULL),
(47, 'xSuWkUZD52', '5ynPsui6WO', '0JkLdP6aPD@gmail.com', NULL, '$2y$10$8o.QZGaiKO4n4OVBvnpmiuiAdLMyLj.lerAUnVgRur93TRZpsBuB2', NULL, NULL, NULL, '2022-09-13', 0, '770972', 1, 0, 0, NULL, NULL, NULL, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25', NULL, NULL),
(48, 'RCREvmBSbT', 'T6DKmigaTb', 'mSbD7UpEAo@gmail.com', NULL, '$2y$10$Ch.TLW9dhrKVTzz5E731EOLK4Nc3j30B8EZAzHI89nw64yJfg103G', NULL, NULL, NULL, '2022-09-13', 0, '974205', 2, 1, 0, NULL, NULL, NULL, 0, '2022-09-13 11:51:25', '2022-09-13 11:51:25', NULL, NULL),
(49, 'CHEFce4pgO', 'TnTumVEFsC', 'l3lj7pj2h7@gmail.com', NULL, '$2y$10$1MatpJjXCrIeL1lXpEYzguMF1R11Op4UM1Qjrctl9/xAy4K0.C9xW', NULL, NULL, NULL, '2022-09-13', 1, '301969', 1, 1, 1, NULL, NULL, NULL, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26', NULL, NULL),
(50, 'Q14rXmuqLf', 'd7JEoI0wEH', '7Xqu1TmZ15@gmail.com', NULL, '$2y$10$pQ0OWNzV43a62Vr1jJ7.gOFRmsR9uGJI3KogKb7mU4ckkaxsKsLga', NULL, NULL, NULL, '2022-09-13', 0, '969358', 0, 1, 0, NULL, NULL, NULL, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26', NULL, NULL),
(51, '0KbHejv1Kv', 'YxlzcyphtJ', 'axbeUBZMnV@gmail.com', NULL, '$2y$10$MUlU2tJ6tW3zJZQEu8j8ned8zYaU33VRMKVhPVhhGrvhGS6jSpnom', NULL, NULL, NULL, '2022-09-13', 1, '36874', 2, 1, 0, NULL, NULL, NULL, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26', NULL, NULL),
(52, '4ovDVbPgPw', 'JaAGV2rWNe', 'mOILROLThC@gmail.com', NULL, '$2y$10$PnIvoEcmHUhowmRw0bd/5eViT/wkfITAilNo0YS3TYM5uThOKNMnO', NULL, NULL, NULL, '2022-09-13', 0, '947294', 0, 1, 1, NULL, NULL, NULL, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26', NULL, NULL),
(53, 'Myd1ARylRm', 'p6i03989zG', 'E8hw0w9A0p@gmail.com', NULL, '$2y$10$vwTb0uqyHfuoBHvJ66o3UerjJGS9eURQkFvQ..UovrzUO/Q7ss9b6', NULL, NULL, NULL, '2022-09-13', 1, '378623', 0, 1, 1, NULL, NULL, NULL, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26', NULL, NULL),
(54, 'C4gXg8ybdG', 'Yz9crL6zEg', 'SaWBPvUgv8@gmail.com', NULL, '$2y$10$nO1AVV5qAjQz3SlhVw70g.Pf0YyEl5BmDzPhq/.WPqBn2OB05PdYG', NULL, NULL, NULL, '2022-09-13', 0, '856257', 0, 1, 1, NULL, NULL, NULL, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26', NULL, NULL),
(55, 'B01o5UiVfd', '0shI7WDqRo', '3LA2rp2LkH@gmail.com', NULL, '$2y$10$Rs5VIC0CxPj5DtHa37b/cOzhluWS0LAtJSABHPnEqGzCv5oGi9CYq', NULL, NULL, NULL, '2022-09-13', 1, '961113', 0, 0, 1, NULL, NULL, NULL, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26', NULL, NULL),
(56, 'YCCUr8ogKw', 'FjNdHFhRyt', 'w3ANNShpHH@gmail.com', NULL, '$2y$10$u6PWe3MJnbRJZ9WptXqNYe8trMnTRt13rsJS6tBdp/GakOuDnG90W', NULL, NULL, NULL, '2022-09-13', 1, '787400', 0, 1, 1, NULL, NULL, NULL, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26', NULL, NULL),
(57, 'tw2qE9J07t', 'UHWPdUJzuO', 'VNt7rmiN0k@gmail.com', NULL, '$2y$10$r9UVpz.Tts1N3i6TwOSs/.ooykgdBYxJbhIPA6lCsOkYljqtHrPM.', NULL, NULL, NULL, '2022-09-13', 0, '587156', 2, 0, 1, NULL, NULL, NULL, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26', NULL, NULL),
(58, 'ODsxWZE7If', 'wfMIVH6XTP', 'nJhbsSRYfr@gmail.com', NULL, '$2y$10$S.dSeLBTQ1A2xslNMJHHcOdanBmuVaO0aJGVw2ZJci/7VXS05tB1i', NULL, NULL, NULL, '2022-09-13', 0, '797004', 0, 0, 1, NULL, NULL, NULL, 0, '2022-09-13 11:51:26', '2022-09-13 11:51:26', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_family`
--
ALTER TABLE `partner_family`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partner_family_user_id_foreign` (`user_id`);

--
-- Indexes for table `partner_occupation`
--
ALTER TABLE `partner_occupation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partner_occupation_user_id_foreign` (`user_id`);

--
-- Indexes for table `partner_preference`
--
ALTER TABLE `partner_preference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partner_preference_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `partner_family`
--
ALTER TABLE `partner_family`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `partner_occupation`
--
ALTER TABLE `partner_occupation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `partner_preference`
--
ALTER TABLE `partner_preference`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `partner_family`
--
ALTER TABLE `partner_family`
  ADD CONSTRAINT `partner_family_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `partner_occupation`
--
ALTER TABLE `partner_occupation`
  ADD CONSTRAINT `partner_occupation_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `partner_preference`
--
ALTER TABLE `partner_preference`
  ADD CONSTRAINT `partner_preference_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
