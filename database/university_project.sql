-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2021 at 10:59 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_rents`
--

CREATE TABLE `ambulance_rents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rent_id` bigint(20) NOT NULL,
  `ambulance_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ambulance_rents`
--

INSERT INTO `ambulance_rents` (`id`, `rent_id`, `ambulance_id`, `user_id`, `district`, `area`, `created_at`, `updated_at`) VALUES
(1, 100, 2, 5, 'Dhaka', 'Nikunja 2', '2020-12-11 14:18:00', '2020-12-11 14:18:00'),
(2, 101, 1, 25, 'Dhaka', 'Nikunja 2', '2020-12-11 14:22:17', '2020-12-11 14:22:17'),
(3, 102, 2, 38, 'Dhaka', 'Nikunja 2', '2020-12-18 05:01:12', '2020-12-18 05:01:12'),
(4, 103, 1, 5, 'Dhaka', 'dhaka', '2021-01-10 02:14:40', '2021-01-10 02:14:40'),
(5, 104, 2, 5, 'Dhaka', 'dhaka', '2021-01-10 02:22:58', '2021-01-10 02:22:58'),
(6, 105, 1, 5, 'Dhaka', 'dhaka', '2021-01-10 09:55:40', '2021-01-10 09:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_services`
--

CREATE TABLE `ambulance_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_reserved` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ambulance_services`
--

INSERT INTO `ambulance_services` (`id`, `name`, `district`, `area`, `driver_name`, `driver_phone`, `vehicle_number`, `is_reserved`, `created_at`, `updated_at`) VALUES
(1, 'Test Ambulance', 'Dhaka', 'Nikunja 2', 'Jhon', '018000000', 'ND236DS', 0, '2020-12-11 11:31:54', '2021-01-10 09:55:40'),
(2, 'New Ambulance', 'Dhaka', 'Mohakhali', 'Smith', '018000000', 'ND236DE', 0, '2020-12-11 13:28:01', '2021-01-10 02:22:58'),
(3, 'Tranning', 'Dhaka', 'dhaka', '4344', '44', '44', 1, '2021-01-10 02:22:04', '2021-01-10 02:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'driver name', 'driver@gmail.com', '0456563262', 'Test', '22 bankdown street', '2020-12-11 04:27:50', '2020-12-11 04:27:50'),
(2, NULL, NULL, NULL, NULL, NULL, '2020-12-11 13:30:30', '2020-12-11 13:30:30'),
(3, NULL, NULL, NULL, NULL, NULL, '2020-12-11 13:31:47', '2020-12-11 13:31:47'),
(4, NULL, NULL, NULL, NULL, NULL, '2020-12-11 13:32:27', '2020-12-11 13:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `corona_update_bans`
--

CREATE TABLE `corona_update_bans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NewConfirmed` bigint(20) NOT NULL,
  `TotalConfirmed` bigint(20) NOT NULL,
  `NewDeaths` bigint(20) NOT NULL,
  `TotalDeaths` bigint(20) NOT NULL,
  `NewRecovered` bigint(20) NOT NULL,
  `TotalRecovered` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `corona_update_bans`
--

INSERT INTO `corona_update_bans` (`id`, `type`, `NewConfirmed`, `TotalConfirmed`, `NewDeaths`, `TotalDeaths`, `NewRecovered`, `TotalRecovered`, `created_at`, `updated_at`) VALUES
(7, 'BD', 692, 521382, 22, 7756, 785, 466064, '2021-01-10 09:53:06', '2021-01-10 09:53:06'),
(8, 'Global', 769528, 89617142, 13124, 1926430, 333142, 49718031, '2021-01-10 09:53:06', '2021-01-10 09:53:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `important_videos`
--

CREATE TABLE `important_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `important_videos`
--

INSERT INTO `important_videos` (`id`, `video_link`, `video_thumbnail`, `video_details`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/watch?v=KIsek2Cc7V8&feature=youtu.be', 'uploads/thumbnails/image-10a601f0844bd454a8eeae6468550050_1607457264.png', 'Corona Video Song', '2020-12-08 13:34:01', '2020-12-09 10:01:26'),
(2, 'https://www.youtube.com/watch?v=KIsek2Cc7V8&feature=youtu.be', 'uploads/thumbnails/image-10a601f0844bd454a8eeae6468550050_1607457264.png', 'Corona Video Song 2', '2020-12-08 13:34:01', '2020-12-08 13:34:01'),
(3, 'https://www.youtube.com/watch?v=KIsek2Cc7V8&feature=youtu.be', 'uploads/thumbnails/image-10a601f0844bd454a8eeae6468550050_1607457264.png', 'Corona Video Song 3', '2020-12-08 13:34:01', '2020-12-08 13:34:01'),
(4, 'https://www.youtube.com/watch?v=KIsek2Cc7V8&feature=youtu.be', 'uploads/thumbnails/image-10a601f0844bd454a8eeae6468550050_1607457264.png', 'Corona Video Song 4', '2020-12-08 13:34:01', '2020-12-08 13:34:01'),
(5, 'https://www.youtube.com/watch?v=KIsek2Cc7V8&feature=youtu.be', 'uploads/thumbnails/image-10a601f0844bd454a8eeae6468550050_1607457264.png', 'Corona Video Song 5', '2020-12-08 13:34:01', '2020-12-08 13:34:01'),
(6, 'https://www.youtube.com/watch?v=KIsek2Cc7V8&feature=youtu.be', 'uploads/thumbnails/image-10a601f0844bd454a8eeae6468550050_1607457264.png', 'Corona Video Song 6', '2020-12-08 13:34:01', '2020-12-08 13:34:01'),
(7, 'https://www.youtube.com/watch?v=KIsek2Cc7V8&feature=youtu.be', 'uploads/thumbnails/image-10a601f0844bd454a8eeae6468550050_1607457264.png', 'Corona Video Song 7', '2020-12-08 13:44:40', '2020-12-08 13:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `info_services`
--

CREATE TABLE `info_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_services`
--

INSERT INTO `info_services` (`id`, `service_name`, `slug`, `icon_image`, `short_desc`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Online Market', 'test-service', NULL, 'this is short description', '<p>Lorem ipsum dolor sit amet, ne mei novum legere aperiri. Ea his veri oporteat maluisset. An eum postea utamur. Mucius volumus hendrerit te vel. At duo altera mucius graeci, nec idque prompta expetenda an, pri albucius epicurei id. Eam an verear imperdiet expetendis, agam omnium usu cu.</p>\r\n<p>&nbsp;</p>\r\n<p>Sale qualisque pri cu. Te sed fabulas patrioque, ea unum alienum liberavisse eam. His ad maiestatis quaerendum appellantur, sed verterem urbanitas ut. Nam eros disputationi ei, ea mel autem iriure delectus. Ne eum lobortis similique intellegat, cum ex denique copiosae, nihil oblique nam eu. Inermis inimicus sed an.</p>\r\n<p>&nbsp;</p>\r\n<p>Has cu legere tamquam. Utamur adipiscing definitionem ut mea. Vis ea semper reprehendunt, vim cu atqui aeque copiosae. Est vidisse repudiandae eu, ne amet deleniti interpretaris vis. Mei facer semper platonem ei, qui te decore philosophia reprehendunt. Accusata facilisis vel no.</p>\r\n<p>&nbsp;</p>\r\n<p>Discere omnesque invenire cu est, cu per homero mediocrem, eum ut ludus omnium assentior. Enim atqui ei qui, quo te modo equidem scripserit. No probo possim sit, duo essent disputando comprehensam an. Case debet has et, eripuit voluptatibus mel ex, dicant perfecto gubergren ei quo. Ferri magna sit te, est salutandi voluptaria posidonium an. Quo tempor menandri mnesarchum et, nibh tota repudiandae has ea.</p>\r\n<p>&nbsp;</p>\r\n<p>Eum aeque lucilius pericula no, ad vel justo aliquip definitionem, nonumy fabellas est ad. Aliquip tincidunt qui ne. Cum nostrum fabellas ei. Ex sanctus accusata nominati est, vix ei assum populo numquam, sit ut omnes nemore euismod. Prima affert debitis per at, vel cu suas gubergren. Eirmod maluisset definiebas an nec.</p>', '2020-12-11 15:09:16', '2020-12-11 15:25:35'),
(2, 'Telemedicine', 'telemedicine', NULL, 'this is description', '<p style=\"text-align: left;\"><sup><span style=\"color: #666666; font-family: Verdana, Geneva, Bangla541, sans-serif; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</span></sup></p>', '2020-12-11 15:12:52', '2020-12-11 15:12:52'),
(3, 'Non Residents', 'non-residents', NULL, 'this is short Description', '<p><span style=\"color: #666666; font-family: Verdana, Geneva, Bangla541, sans-serif; font-size: 10px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</span></p>', '2020-12-11 15:23:29', '2020-12-11 15:23:29');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_24_190933_create_slider_datails_table', 2),
(5, '2020_11_24_191005_create_corona_update_bans_table', 3),
(6, '2020_11_24_191038_create_important_videos_table', 3),
(7, '2020_11_24_191120_create_services_table', 3),
(8, '2020_11_24_203940_create_corona_update_bans_table', 4),
(9, '2020_11_24_204320_create_services_table', 5),
(10, '2020_11_24_204520_create_slider_datails_table', 6),
(11, '2020_11_24_204903_create_important_videos_table', 7),
(12, '2020_11_24_205131_create_services_table', 8),
(13, '2020_12_04_123651_create_contacts_table', 9),
(14, '2020_12_11_110707_create_ambulance_services_table', 10),
(15, '2020_12_11_193808_create_ambulance_rents_table', 11),
(16, '2020_12_11_171638_create_info_services_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `image`, `content`, `created_at`, `updated_at`) VALUES
(2, 'Coronavirus disease (COVID-19) update Coronavirus disease (COVID-19) update ', 'coronavirus-disease(-c-o-v-i-d-19)-update', NULL, '<p><span style=\"color: #3c4245; font-family: Arial, Helvetica, Bangla132, sans-serif; font-size: 16px;\">On this website you can find information and guidance from WHO regarding the current outbreak of coronavirus disease (COVID-19) that was first reported from Wuhan, China, on 31 December 2019. Please visit this page for daily updates</span></p>', '2020-12-10 14:10:51', '2020-12-10 14:10:51'),
(3, 'Covid: Students and retirees form long-distance friendships', 'covid:-students-and-retirees-form-long-distance-friendships', NULL, '<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla705, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><strong class=\"css-14iz86j-BoldText e5tfeyi0\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Millie Jacoby met her new \"French grandma\" for the first time last week via video call.</strong></p>\r\n</div>\r\n</div>\r\n<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla705, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">The 21-year-old British student signed up to a scheme pairing language students with elderly French people, some of whom have been left isolated by the coronavirus pandemic.</p>\r\n</div>\r\n</div>\r\n<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla705, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\"I thought it would be a great way to improve my language skills and get to know somebody who was possibly lonely,\" Millie said.</p>\r\n</div>\r\n</div>\r\n<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla705, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\"My French grandma, as we call them, is in a retirement home and might not be having too much social interaction because of the pandemic so I thought it was the perfect time to do something like this.\"</p>\r\n</div>\r\n</div>\r\n<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla705, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Despite the 70-year age gap between the Warwick University student and the senior citizen living near Paris, they instantly hit it off.</p>\r\n</div>\r\n</div>\r\n<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla705, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\"She was just so lovely from the first few sentences,\" Millie told the BBC.</p>\r\n</div>\r\n</div>\r\n<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla705, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\"We talked about travelling. We spoke about the times I\'ve been to France and what I thought of it. We spoke about the differences between what her life was like as a young person compared to mine.\"</p>\r\n</div>\r\n</div>\r\n<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla705, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">A Twitter post about their \"wholesome\" exchange went viral over the weekend, sparking a surge of interest in the programme.</p>\r\n</div>\r\n</div>', '2020-12-10 14:11:17', '2020-12-10 14:11:17'),
(4, 'Covid: \'How a picture of my foot became anti-vaccine propaganda\'', 'covid:\'-how-a-picture-of-my-foot-became-anti-vaccine-propaganda\'', NULL, '<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla240, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><strong class=\"css-14iz86j-BoldText e5tfeyi0\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Patricia is suffering from an unexplained skin condition - but a misunderstanding about what might have caused it set off a chain of events that turned her foot into fodder for anti-vaccine activists.</strong></p>\r\n</div>\r\n</div>\r\n<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla240, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">The picture showed purple and red sores, swollen and oozing with pus.</p>\r\n</div>\r\n</div>\r\n<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla240, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\"Supposedly this is a [vaccine] trial participant,\" read the message alongside it. \"Ready to roll up your sleeve?\"</p>\r\n</div>\r\n</div>\r\n<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla240, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Within a day, those same feet had been mentioned thousands of times on Instagram and Facebook. The picture went viral on Twitter as well.</p>\r\n</div>\r\n</div>\r\n<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla240, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\"See they are trying to deliberately hurt us with the vaccine,\" one tweet read.</p>\r\n</div>\r\n</div>\r\n<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla240, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">The feet belong to Patricia - a woman in her 30s living in Texas. And it\'s true - she was a participant in a trial for the Pfizer/BioNTech vaccine that&nbsp;<a class=\"css-yidnqd-InlineLink e1no5rhv0\" style=\"margin: 0px; padding: 0px; border-top: 0px; border-right: 0px; border-bottom: none; border-left: 0px; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: bolder; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: #696969; text-decoration-thickness: 1px; text-decoration-color: #bababa; text-decoration-skip-ink: none; text-underline-offset: 0.25em;\" href=\"https://www.bbc.co.uk/news/uk-55227325\">started to be administered on Tuesday</a>.</p>\r\n</div>\r\n</div>\r\n<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla240, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">But this is also true: Patricia never received the actual vaccine. Medical records show that she received a placebo, a small injection of salt water. (Researchers do this as a matter of routine, to compare groups that receive a drug or a vaccine with those who receive the placebo.)</p>\r\n</div>\r\n</div>\r\n<div class=\"css-uf6wea-RichTextComponentWrapper e1xue1i83\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, Bangla240, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: #3f3f42; background-color: #ffffff;\" data-component=\"text-block\">\r\n<div class=\"css-83cqas-RichTextContainer e5tfeyi2\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<p style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Her illness had nothing to do with injections. But that didn\'t stop activists twisting her story to advance their own agendas. And on top of the physical pain caused by her condition, Patricia received a wave of online abuse.</p>\r\n</div>\r\n</div>', '2020-12-10 14:12:25', '2020-12-10 14:12:25');

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
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `title`, `content`, `service_image`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Test Service', 'this is title', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: Bangla522, \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'uploads/services/image-1d9ba8282b9b0d69962c89f8df4b661f_1607529336.png', 'test-service', '2020-12-09 09:55:36', '2020-12-09 09:58:37'),
(3, 'Test Service 2', 'this is title 2', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: Bangla522, \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'uploads/services/image-1d9ba8282b9b0d69962c89f8df4b661f_1607529336.png', 'test-service-2', '2020-12-09 09:55:36', '2020-12-09 09:58:37'),
(4, 'Test Service 3', 'this is title 3', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: Bangla522, \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'uploads/services/image-1d9ba8282b9b0d69962c89f8df4b661f_1607529336.png', 'test-service-3', '2020-12-09 09:55:36', '2020-12-09 09:58:37'),
(5, 'Test Service 4', 'this is title 4', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: Bangla522, \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'uploads/services/image-1d9ba8282b9b0d69962c89f8df4b661f_1607529336.png', 'test-service-4', '2020-12-09 09:55:36', '2020-12-09 09:58:37'),
(6, 'Test Service 5', 'this is title 5', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: Bangla522, \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'uploads/services/image-1d9ba8282b9b0d69962c89f8df4b661f_1607529336.png', 'test-service-5', '2020-12-09 09:55:36', '2020-12-09 09:58:37'),
(7, 'Test Service 6', 'this is title 6', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: Bangla522, \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'uploads/services/image-1d9ba8282b9b0d69962c89f8df4b661f_1607529336.png', 'test-service-6', '2020-12-09 09:55:36', '2020-12-09 09:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `slider_datails`
--

CREATE TABLE `slider_datails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `mobile`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Shakhawat Hosen', 'admin', 'admin@gmail.com', NULL, NULL, NULL, '$2y$12$Xqju0PTxXe9lBqFOhXE1FOjeFshv/jEvXesJ5hA34Ga9tG9.pEJfW', NULL, '2020-11-24 15:15:17', '2020-11-24 15:15:17'),
(20, 'test', 'backend_user', 'arifudsfsfddfnctg@gmail.com', NULL, NULL, NULL, '$2y$10$USmv7/FaYsP4xeAT8LPQeORhIKUOyNzEHGu77xkpLtFxBWKF6tdIi', NULL, '2020-11-29 15:13:48', '2020-11-29 15:13:48'),
(25, 'Nishat Rahman', 'user', 'nishat@gmail.com', '0456563262', 'uploads/users/image-b7cad8e4bb60ec5cd1964099c6118c44_1607542968.png', NULL, '$2y$10$4Ztg4aTyv9bkq.7muGutoe6EWnXy19DP4ChrB04pto/b1ow1p.B5S', NULL, '2020-12-01 06:08:56', '2020-12-09 14:05:54'),
(26, 'Imran Hosen', 'user', 'imranhshakil@gmail.com', '01500000000', NULL, NULL, '$2y$10$fNaOTXNeKryZsXrYGUdOM.EV.vH2vdT2222mLrkd0QCFUfAt6cnHO', NULL, '2020-12-01 06:10:31', '2020-12-01 06:10:31'),
(27, 'test', 'user', 'bromasfsdfsdfmun@gmail.com', '01500000000', NULL, NULL, '$2y$10$g/uAiX/cKtuq8hwVP3DEruwyLY6KKnLM/l8/GtwRAGem/ghRZxf3m', NULL, '2020-12-01 13:48:22', '2020-12-01 13:48:22'),
(28, 'sdfsd', 'user', 'nishsdfsdat@gmail.com', NULL, NULL, NULL, '$2y$10$5CqLjoYVhT.yMEGXIoPIgOTpOj/o4RJQuGC1Fv.CBQ4hk6ZKsGKcO', NULL, '2020-12-01 13:50:12', '2020-12-01 13:50:12'),
(29, 'fsdfs', 'user', 'sdfsfsdfsd@gmail.com', NULL, NULL, NULL, '$2y$10$4.JupAkiGdn22P1foAiw/ewcWmEjXMKTBnwviK3ufB/DtDIng7et6', NULL, '2020-12-01 13:52:59', '2020-12-01 13:52:59'),
(30, 'test', 'user', 'nissdfsdfhat@gmail.com', NULL, NULL, NULL, '$2y$10$hWG2TxlQNe/Fi2n5RmyN3eTfBqvBHN0hF.JX79eQzexPcpmWH.3iy', NULL, '2020-12-01 13:54:56', '2020-12-01 13:54:56'),
(31, 'test', 'user', 'nisdfsdfshat@gmail.com', NULL, NULL, NULL, '$2y$10$z1KveHXVHI6Z9vU9KGjk0eSFubcqMXdAyq.aLvErS/lGyGi5Cm86C', NULL, '2020-12-01 13:56:16', '2020-12-01 13:56:16'),
(32, 'Nishat Rahman', 'user', 'bromwer34reamun@gmail.com', NULL, NULL, NULL, '$2y$10$a94HY1iese2E3RGxxVfDRehWs1n57FkKLPv17Rvtq62Wd76iJlHsC', NULL, '2020-12-01 13:57:01', '2020-12-01 13:57:01'),
(33, 'dsfs', 'backend_user', 'bromsdsddfsdfamun@gmail.com', NULL, NULL, NULL, '$2y$10$fQa5tC6ybtycvsnFiEhAueME/B3Ir/Rq4S13xR/1u6zU7TsfVnmPy', NULL, '2020-12-01 14:05:59', '2020-12-01 14:05:59'),
(34, 'sdf', 'backend_user', 'brosfdfmamun@gmail.com', NULL, NULL, NULL, '$2y$10$Wj0zeZzNHJs8iH8xqHsGoOhJUmMbwHUZCKaH1IiJOsTkafR442QQu', NULL, '2020-12-01 14:06:26', '2020-12-01 14:06:26'),
(35, 'sdfsd', 'user', 'nishawc4334t@gmail.com', NULL, NULL, NULL, '$2y$10$/VccCVisrY1gpEaZWly9Z.7ek60Hz01a1soEyN8v2L8/ZVw1.Xn3G', NULL, '2020-12-01 14:10:53', '2020-12-01 14:10:53'),
(36, 'fsd', 'user', 'bromasdfmun@gmail.com', NULL, NULL, NULL, '$2y$10$CLpya3RsF/pBBdIaxsBXQuJM72D8KD7s.BjAg0AUCNdWyONFACYNq', NULL, '2020-12-01 14:13:54', '2020-12-01 14:13:54'),
(37, 'test', 'user', 'bromsdfsdfamun@gmail.com', '01500000000', NULL, NULL, '$2y$10$fe5WS9sH.rk2.AqKgw./d.MWh4HKtiqkiMHgXo.xzAqVB3.bXknJ.', NULL, '2020-12-02 09:21:10', '2020-12-02 09:21:10'),
(38, 'driver name', 'user', 'driver@gmail.com', '0456563262', NULL, NULL, '$2y$10$YOQA7J0GO8w/5xHL6Ga67e8DiORJXRUa6U4caGPyr7o61K.B7h.sW', NULL, '2020-12-18 04:46:57', '2020-12-18 04:46:57'),
(39, 'driver name', 'user', 'driver1@gmail.com', '0456563262', NULL, NULL, '$2y$10$j7PdaV/QdZzhuLUFOU6ONOGv3yaxaxV0/ZvHcmmQLN5UshxhKmXl6', NULL, '2020-12-18 04:59:23', '2020-12-18 04:59:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulance_rents`
--
ALTER TABLE `ambulance_rents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance_services`
--
ALTER TABLE `ambulance_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Indexes for table `corona_update_bans`
--
ALTER TABLE `corona_update_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `important_videos`
--
ALTER TABLE `important_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_services`
--
ALTER TABLE `info_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_datails`
--
ALTER TABLE `slider_datails`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `ambulance_rents`
--
ALTER TABLE `ambulance_rents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ambulance_services`
--
ALTER TABLE `ambulance_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `corona_update_bans`
--
ALTER TABLE `corona_update_bans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `important_videos`
--
ALTER TABLE `important_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `info_services`
--
ALTER TABLE `info_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider_datails`
--
ALTER TABLE `slider_datails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
