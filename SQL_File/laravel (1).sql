-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2021 at 03:45 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

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
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `following_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`user_id`, `following_user_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 3, NULL, NULL),
(1, 10, NULL, NULL),
(3, 6, NULL, NULL),
(6, 3, NULL, NULL),
(10, 1, NULL, NULL);

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
(4, '2021_06_04_050332_create_tweets_table', 2);

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
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kalyani', 'klnpriyadarsini@gmail.com', NULL, '$2y$10$pqYW.5WmCn8L7A8FXBo/VOm/2AkEF2nIRR6/dLoMNWDpwRLYwqYHG', '4m6uxgqD6FdacIikWVspgYxshxVVvfhBHgVeIf7YTvcN03UkyTQUj7O7MTe6', '2021-06-03 09:42:07', '2021-06-03 09:42:07'),
(2, 'deepika priyadarsini', 'deepika@gmail.com', NULL, '$2y$10$HWiwwnD32v.Ae9O7nSnAqujLFc79wVt5mELyjtlfKUyID/J6enJ9u', 'B8oBI9Vz64B3wHmnDaidZBMrvLIjRqWLdBAt7W3aWEiOSLm1qiMdZ40ZtUPV', '2021-06-04 02:21:36', '2021-06-04 02:21:36'),
(3, 'x', 'x@gmail.com', NULL, '$2y$10$mu7MyKyr7G/KyWjbiljCZ.UTRaYMGWn/VYjY4SD2NSkqWcKvkW/CW', NULL, '2021-06-04 08:54:26', '2021-06-04 08:54:26'),
(4, 'y', 'y@gmail.com', NULL, '$2y$10$rK1Fq6Aph2XsKFKQBbCa6u2ZBw1ldodlURZkEJ4XoiEc02TSHglpm', NULL, '2021-06-04 08:55:30', '2021-06-04 08:55:30'),
(5, 'z', 'z@gmail.com', NULL, '$2y$10$1Im69WuZ2gD9Zvf3aZDJwO6oiS9mAgU66bgbONMQ52U.mbLyufRdW', NULL, '2021-06-04 08:55:52', '2021-06-04 08:55:52'),
(6, 'a', 'a@gmail.com', NULL, '$2y$10$u8IzWTeN.nlaT9aTMlUv5O9EPoT3JnSq4hngqV7snF0VDHvESm6Xu', 'JW2fp0qHvXeDLgSYmdVH6unbGNaaaJn2zuI3sf1ubGULrL3iC0O6ukpaSiD6', '2021-06-04 08:56:12', '2021-06-04 08:56:12'),
(7, 'b', 'b@gmail.com', NULL, '$2y$10$RH3vZdg8xKfnWBgd//BOxesCf2WcVSa29MGWV9fewGuEiZ9nPloEe', NULL, '2021-06-04 08:56:33', '2021-06-04 08:56:33'),
(8, 'c', 'c@gmail.com', NULL, '$2y$10$eXwswDWbltyDgU.rGSkKye3w1acmBXQmi/DcmQ2R9gv9Pqw2SONHO', NULL, '2021-06-04 08:57:01', '2021-06-04 08:57:01'),
(9, 'd', 'd@gmail.com', NULL, '$2y$10$O4SyTMGTpWZmit6.4GjcKOaKZTHjJvOiKVCknDfGPF9SamSL3Yi3u', NULL, '2021-06-04 08:57:26', '2021-06-04 08:57:26'),
(10, 'e', 'e@gmail.com', NULL, '$2y$10$ka.xekmfuiS3sXxkSkKdmube7OoZPqTLq.ptrqBFq7G3FyYEuUL/i', NULL, '2021-06-04 08:57:51', '2021-06-04 08:57:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`user_id`,`following_user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
