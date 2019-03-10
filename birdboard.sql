-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: mart. 10, 2019 la 09:14 PM
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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_03_06_123253_create_projects_table', 1),
(8, '2019_03_09_071048_create_tasks_table', 2);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `projects`
--

INSERT INTO `projects` (`id`, `owner_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Et in sunt voluptatem fugiat omnis delectus ex possimus.', 'Praesentium recusandae vitae vero voluptatem nihil. Nam alias aut ex labore.', '2019-03-06 16:59:59', '2019-03-06 16:59:59'),
(2, 1, 'Et quia facere vitae ut molestiae dignissimos officia.', 'Sapiente sint dolorem ea quia. Ipsam quos excepturi et ipsa expedita praesentium sint. Autem perferendis voluptatem consectetur autem. Dolorem omnis et dignissimos odio veritatis.c;lsjdkofjksjdkfhjkgshdfjkgkjs dfkjgksldfjkg sdjlfgjksldfjg jsdklfjg kjsdklfgj ksdjfklgj klsdjfklgj lsdfj gj skldfjklglsdf ', '2019-03-06 17:00:29', '2019-03-06 17:00:29'),
(3, 2, 'Rem eos sunt tempore et fuga et nisi.', 'Harum ad architecto voluptate. Aut aut saepe possimus quis explicabo. Facere tenetur maxime sit dignissimos ipsa odit omnis.', '2019-03-06 17:00:30', '2019-03-06 17:00:30'),
(4, 5, 'Libero dicta similique corrupti ad animi quisquam.', 'Eligendi in omnis aut id molestiae eaque. Est reprehenderit culpa rerum ea. Omnis quis aut dolores animi et vitae. Quo id eligendi est eum voluptate. Ex sint dicta hic est quo voluptates qui iste.', '2019-03-06 17:00:31', '2019-03-06 17:00:31'),
(5, 6, 'Et rem perferendis veritatis sunt quia.', 'Dolore laudantium ut ipsa maiores natus in maiores ullam. Quos suscipit odit dolor distinctio est. Ratione aut occaecati aut. Saepe incidunt est hic.', '2019-03-06 17:00:31', '2019-03-06 17:00:31'),
(6, 7, 'Sunt officiis exercitationem quod repellendus.', 'Provident pariatur quod eveniet atque reprehenderit similique. Est molestiae voluptatem dignissimos aut. Voluptas quis provident magnam mollitia cum sint. Quam magnam sit voluptas eius ducimus explicabo.', '2019-03-06 17:00:32', '2019-03-06 17:00:32'),
(8, 1, 'Dummy project title', 'Here I go again', '2019-03-08 15:05:56', '2019-03-08 15:05:56'),
(9, 1, 'Testing and testing once again', 'Test the test of the test and then test it once more.', '2019-03-08 17:50:35', '2019-03-08 17:50:35'),
(10, 9, 'Inventore alias impedit illum incidunt et ad.', 'Quae sit est ipsam voluptatem id nisi ut. Veniam voluptatum ut sed odit. Quas suscipit et molestiae est. Rerum voluptatem qui tenetur aut nesciunt.', '2019-03-09 13:08:46', '2019-03-09 13:08:46'),
(11, 10, 'Itaque eius voluptate accusamus.', 'Mollitia animi sapiente eligendi aut labore illo perferendis rerum. Consequatur qui et molestiae sed quasi occaecati quo. Est est aut quaerat dolore tenetur.', '2019-03-09 13:15:02', '2019-03-09 13:15:02'),
(12, 1, 'Nemo vel provident blanditiis maxime.', 'Labore impedit beatae dolorem corrupti. Velit ipsum maiores id ut. Quam et voluptatem dignissimos exercitationem. In voluptas a ea dolorem cumque ut fugit non.', '2019-03-09 13:25:38', '2019-03-09 13:25:38'),
(13, 1, 'Repellat illum aut eligendi explicabo qui praesentium non.', 'Voluptas provident ea voluptas sit odit sunt. Natus dignissimos ut consectetur aut aliquid.', '2019-03-09 13:33:19', '2019-03-09 13:33:19'),
(14, 1, 'Pray for wisdom', 'There is no better thing than the wisdom coming from God', '2019-03-09 17:22:47', '2019-03-09 17:22:47'),
(15, 1, 'Go to Church', 'Tomorrow is Sunday and I need to go to the church.', '2019-03-09 17:24:29', '2019-03-09 17:24:29'),
(16, 14, 'Sit ratione voluptatem quidem a ducimus cumque ut.', 'Amet quis tenetur sit non. Blanditiis et odit officia ut.', '2019-03-09 18:18:40', '2019-03-09 18:18:40'),
(17, 15, 'Quia eos molestias quia eos voluptate placeat.', 'Ad architecto aliquid consequuntur quo. Fugit quis aut animi. Ut est dicta ut. Quasi consequatur ut maiores nulla quia. Ut qui minus et velit.', '2019-03-09 18:22:27', '2019-03-09 18:22:27'),
(18, 16, 'Eius rerum recusandae officia nesciunt ut.', 'Sit iure sint non corrupti. Sit eaque voluptate nostrum adipisci quo quia. Doloremque eaque earum ut veniam ut a.', '2019-03-09 18:24:32', '2019-03-09 18:24:32');

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
(1, 13, 'Adding a new task - updated', 1, '2019-03-10 04:31:18', '2019-03-10 04:34:25'),
(2, 13, 'Testing the update method for tasks', 1, '2019-03-10 04:34:44', '2019-03-10 18:07:58'),
(3, 13, 'Me adding a new task - updated', 1, '2019-03-10 18:07:48', '2019-03-10 18:07:55');

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
(1, 'Viorel', 'viorel.robu@schweighofer.ro', NULL, '$2y$10$ZOZp90g1qXNZCeXzMv7r8uWTvD07qRWABtzQpLb8F.qieU594k0a.', NULL, '2019-03-06 16:58:51', '2019-03-06 16:58:51'),
(2, 'Shaun Beatty III', 'epaucek@example.net', '2019-03-06 16:59:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DXIYAKl70Y', '2019-03-06 16:59:59', '2019-03-06 16:59:59'),
(3, 'Arch Block Sr.', 'jadon09@example.net', '2019-03-06 17:00:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yTICuRqLSM', '2019-03-06 17:00:29', '2019-03-06 17:00:29'),
(4, 'Gerda Runolfsdottir', 'arielle61@example.org', '2019-03-06 17:00:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nhlWSOXqP3', '2019-03-06 17:00:30', '2019-03-06 17:00:30'),
(5, 'Lisa Beer Jr.', 'btorp@example.org', '2019-03-06 17:00:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hP6Q2YOv6S', '2019-03-06 17:00:31', '2019-03-06 17:00:31'),
(6, 'Vickie Upton', 'tgoldner@example.com', '2019-03-06 17:00:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dQHTISTYX8', '2019-03-06 17:00:31', '2019-03-06 17:00:31'),
(7, 'Lucie Altenwerth', 'david90@example.com', '2019-03-06 17:00:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2LTCWTAp9b', '2019-03-06 17:00:32', '2019-03-06 17:00:32'),
(8, 'Geo Reichert Sr.', 'hirthe.vance@example.com', '2019-03-06 17:00:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sEhHY0Jkmr', '2019-03-06 17:00:32', '2019-03-06 17:00:32'),
(9, 'Gaetano Osinski', 'mitchell.claire@example.org', '2019-03-09 13:08:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FR7e937o1Z', '2019-03-09 13:08:46', '2019-03-09 13:08:46'),
(10, 'Mr. Mark Treutel', 'oscar78@example.net', '2019-03-09 13:15:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wJ1CyCLXxy', '2019-03-09 13:15:02', '2019-03-09 13:15:02'),
(11, 'Mrs. Bulah Leannon Jr.', 'raheem34@example.org', '2019-03-09 13:25:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FBKUByGNMf', '2019-03-09 13:25:38', '2019-03-09 13:25:38'),
(12, 'Keshawn Murray', 'marcellus.schuster@example.com', '2019-03-09 13:33:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f68phMLKgQ', '2019-03-09 13:33:19', '2019-03-09 13:33:19'),
(13, 'Haskell Ferry', 'jazlyn.weimann@example.org', '2019-03-09 17:43:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2mVun9w8o2', '2019-03-09 17:43:28', '2019-03-09 17:43:28'),
(14, 'Ida Little', 'carrie55@example.net', '2019-03-09 18:18:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aK2U51lmxx', '2019-03-09 18:18:40', '2019-03-09 18:18:40'),
(15, 'Chesley Baumbach Jr.', 'hmoore@example.com', '2019-03-09 18:22:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ebtwApTqP1', '2019-03-09 18:22:27', '2019-03-09 18:22:27'),
(16, 'Harley Nitzsche', 'jazmyn16@example.net', '2019-03-09 18:24:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3BCABeEgzU', '2019-03-09 18:24:32', '2019-03-09 18:24:32');

--
-- Indexuri pentru tabele eliminate
--

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
-- AUTO_INCREMENT pentru tabele `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pentru tabele `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pentru tabele `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
