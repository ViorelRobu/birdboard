-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: mart. 26, 2019 la 08:02 PM
-- Versiune server: 10.1.37-MariaDB
-- Versiune PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `birdboard`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `changes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `activities`
--

INSERT INTO `activities` (`id`, `project_id`, `subject_type`, `subject_id`, `description`, `changes`, `created_at`, `updated_at`) VALUES
(1, 10, NULL, NULL, 'created', '{\"before\":[],\"after\":{\"title\":\"Another new project\",\"description\":\"This is some random text\",\"owner_id\":1,\"updated_at\":\"2019-03-26 18:40:07\",\"created_at\":\"2019-03-26 18:40:07\",\"id\":10}}', '2019-03-26 16:40:07', '2019-03-26 16:40:07'),
(2, 10, NULL, NULL, 'updated', '{\"before\":{\"title\":\"Another new project\"},\"after\":{\"title\":\"Another new project - update\",\"updated_at\":\"2019-03-26 18:44:45\"}}', '2019-03-26 16:44:45', '2019-03-26 16:44:45'),
(3, 11, NULL, NULL, 'created', NULL, '2019-03-26 16:56:31', '2019-03-26 16:56:31'),
(4, 11, NULL, NULL, 'updated', '{\"before\":{\"description\":\"Random blabber.\"},\"after\":{\"description\":\"Random blabber. And etc\",\"updated_at\":\"2019-03-26 18:57:01\"}}', '2019-03-26 16:57:01', '2019-03-26 16:57:01'),
(5, 11, NULL, NULL, 'updated', '{\"before\":{\"title\":\"A new project has been create\"},\"after\":{\"title\":\"A new project has been create - change 2\"}}', '2019-03-26 16:58:57', '2019-03-26 16:58:57');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_06_123253_create_projects_table', 1),
(4, '2019_03_09_071048_create_tasks_table', 1),
(9, '2019_03_22_164015_create_activities_table', 2);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `projects`
--

INSERT INTO `projects` (`id`, `owner_id`, `title`, `description`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 'Give it a shot', 'Test 123', 'Test123\r\nanother test\r\n456\r\n111', '2019-03-12 18:07:52', '2019-03-26 03:28:49'),
(2, 1, 'Give it a shot', 'Test. Changed.', NULL, '2019-03-19 16:43:45', '2019-03-19 16:43:54'),
(3, 2, 'Provident nostrum et dolores dolor eos ab.', 'Nihil vero sed fugit nobis ipsam explicabo.', NULL, '2019-03-22 15:24:30', '2019-03-22 15:24:30'),
(4, 3, 'Doloremque sapiente sed repellat aut.', 'Accusantium aperiam accusamus quia molestiae.', NULL, '2019-03-22 15:32:41', '2019-03-22 15:32:41'),
(5, 4, 'changed', 'Dignissimos et aut error eveniet non excepturi est.', NULL, '2019-03-22 15:37:51', '2019-03-22 15:39:04'),
(6, 5, 'changed', 'Repellendus minus ratione ea ut provident non.', NULL, '2019-03-22 15:43:58', '2019-03-22 15:45:26'),
(7, 6, 'changed', 'Quo praesentium voluptatum est saepe sed magnam sed.', NULL, '2019-03-22 17:37:05', '2019-03-22 17:39:43'),
(8, 1, 'Become a web developer', 'Learning and creating things in order to become a web developer.', NULL, '2019-03-26 14:03:24', '2019-03-26 14:04:03'),
(9, 1, 'Test project', 'This is a test project', 'Adding some notes', '2019-03-26 14:28:42', '2019-03-26 14:40:48'),
(10, 1, 'Another new project - update', 'This is some random text', NULL, '2019-03-26 16:40:07', '2019-03-26 16:44:45'),
(11, 1, 'A new project has been create - change 2', 'Random blabber. And etc', NULL, '2019-03-26 16:56:31', '2019-03-26 16:58:57');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `body`, `completed`, `created_at`, `updated_at`) VALUES
(1, 1, 'The first task. Updated', 1, '2019-03-12 18:08:02', '2019-03-23 08:27:57'),
(2, 1, 'The second task', 0, '2019-03-19 16:37:32', '2019-03-23 08:28:19'),
(3, 7, 'do something', 1, '2019-03-22 17:38:39', '2019-03-22 17:39:43'),
(4, 1, 'The third task', 0, '2019-03-23 08:28:05', '2019-03-23 08:28:05'),
(5, 1, 'Last new task 3', 0, '2019-03-23 09:03:50', '2019-03-26 03:28:40'),
(6, 8, 'Take online courses', 1, '2019-03-26 14:03:46', '2019-03-26 14:04:03'),
(7, 8, 'Finish Laracasts videos', 0, '2019-03-26 14:03:55', '2019-03-26 14:03:55'),
(8, 9, 'A new task has arrived', 1, '2019-03-26 14:28:51', '2019-03-26 14:39:53');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Viorel', 'viorel.robu@schweighofer.ro', NULL, '$2y$10$3g0K0W6aCLyRMB5t.09NQOIrPGFYn2513hBFCtCOdDoE61tSbRiuK', NULL, '2019-03-12 18:07:08', '2019-03-12 18:07:08'),
(2, 'Prof. Soledad Stroman III', 'nicolas.niko@example.com', '2019-03-22 15:24:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dj6LHoEl2C', '2019-03-22 15:24:30', '2019-03-22 15:24:30'),
(3, 'Prof. Kieran Mohr DDS', 'zola14@example.net', '2019-03-22 15:32:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xdsOtFBVG9', '2019-03-22 15:32:41', '2019-03-22 15:32:41'),
(4, 'Prof. Vesta Lind', 'virginie83@example.net', '2019-03-22 15:37:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3KAUQuSRJo', '2019-03-22 15:37:51', '2019-03-22 15:37:51'),
(5, 'Hilton Jaskolski Jr.', 'romaguera.edwardo@example.com', '2019-03-22 15:43:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9XtzNutQeO', '2019-03-22 15:43:58', '2019-03-22 15:43:58'),
(6, 'Garfield Abbott', 'borer.creola@example.net', '2019-03-22 17:37:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TlZBl3uGFl', '2019-03-22 17:37:05', '2019-03-22 17:37:05');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_subject_type_subject_id_index` (`subject_type`,`subject_id`),
  ADD KEY `activities_project_id_foreign` (`project_id`);

--
-- Indexuri pentru tabele `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexuri pentru tabele `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_owner_id_foreign` (`owner_id`);

--
-- Indexuri pentru tabele `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pentru tabele `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pentru tabele `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pentru tabele `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constrângeri pentru tabele `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
