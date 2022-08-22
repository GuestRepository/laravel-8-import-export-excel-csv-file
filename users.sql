-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2022 at 03:01 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_ajaxcrud`
--

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
(14, 'name', 'email', NULL, '$2y$10$fH7XEqBZikGjACAYTVAGdeuV.z.aFmWyF9yC/BkhbCrKrnf/niClS', NULL, '2022-08-22 05:28:15', '2022-08-22 05:28:15'),
(15, 'abcw', 'raju@gmail.com', NULL, '$2y$10$CvIx1/MuyiC/o0Df3w0Iq.8cyJpyft88CiywRz/o9vNr9uZvEiReK', NULL, '2022-08-22 05:28:15', '2022-08-22 05:28:15'),
(16, 'ggg', 'ddddd@gmail.com', NULL, '$2y$10$jbNSYABDjbf88vG8WVA7KetvDi0VYEGy5x52Ewv4hUFffKo6QzDry', NULL, '2022-08-22 05:28:15', '2022-08-22 05:28:15'),
(17, 'ggggg', 'kasimlol@gmail.com', NULL, '$2y$10$BzkYAKWrY7JsERmgmFI8duNaJQanShKLheNR6vdENKHNp8977aaBG', NULL, '2022-08-22 05:28:15', '2022-08-22 05:28:15'),
(18, 'tttttt', 'tttt@gmail.com', NULL, '$2y$10$T8RnG37ueh4tHicMEdp8ZeoK.LthHryXkiLqRD5WwvyIHjhjNyWWG', NULL, '2022-08-22 05:28:15', '2022-08-22 05:28:15');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
