-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22 Okt 2015 pada 10.13
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laravel_dingo_oauth2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_04_24_110151_create_oauth_scopes_table', 1),
('2014_04_24_110304_create_oauth_grants_table', 1),
('2014_04_24_110403_create_oauth_grant_scopes_table', 1),
('2014_04_24_110459_create_oauth_clients_table', 1),
('2014_04_24_110557_create_oauth_client_endpoints_table', 1),
('2014_04_24_110705_create_oauth_client_scopes_table', 1),
('2014_04_24_110817_create_oauth_client_grants_table', 1),
('2014_04_24_111002_create_oauth_sessions_table', 1),
('2014_04_24_111109_create_oauth_session_scopes_table', 1),
('2014_04_24_111254_create_oauth_auth_codes_table', 1),
('2014_04_24_111403_create_oauth_auth_code_scopes_table', 1),
('2014_04_24_111518_create_oauth_access_tokens_table', 1),
('2014_04_24_111657_create_oauth_access_token_scopes_table', 1),
('2014_04_24_111810_create_oauth_refresh_tokens_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(10) unsigned NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth_access_tokens_id_session_id_unique` (`id`,`session_id`),
  KEY `oauth_access_tokens_session_id_index` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `session_id`, `expire_time`, `created_at`, `updated_at`) VALUES
('8WuqILKSnmAtzdfRGiST3Yxm6XQ09iEVFUnikdBT', 2, 1445464316, '2015-10-21 13:51:56', '2015-10-21 13:51:56'),
('AyfmafhF2fMtnQBN9pVU1an3QxX5VTXW4891JS2o', 7, 1445464818, '2015-10-21 14:00:18', '2015-10-21 14:00:18'),
('bUHm1LsAtjLt6lWUiT3ITkTxnHTAMbbbw1WQDu4G', 10, 1445465003, '2015-10-21 14:03:24', '2015-10-21 14:03:24'),
('FApgetc5Fg6txnhqKT5udeBnLs7lOd7kyWvxVsVh', 19, 1445477283, '2015-10-21 17:28:03', '2015-10-21 17:28:03'),
('fzBmozP2VOh6tpKzbMkN2DOr7MkZgvnB0NcRaxwk', 3, 1445464321, '2015-10-21 13:52:01', '2015-10-21 13:52:01'),
('gKSS8h4Si5NwkAHPUvdcWe4aIlQOHuCs4l5BIiBn', 8, 1445464976, '2015-10-21 14:02:56', '2015-10-21 14:02:56'),
('hIskg5jPfm7VlSWthZQLJQL0ePcuyHhr9t5j8wA6', 20, 1445477316, '2015-10-21 17:28:36', '2015-10-21 17:28:36'),
('idX8QWwDs7PrHviMu9Wz1ENm7lwPYIfjFfTPf19P', 23, 1445500262, '2015-10-21 23:51:03', '2015-10-21 23:51:03'),
('Iu8wcIe8smE0DD8stataJcxUqtYTfhR9I6NY7aQ2', 15, 1445467739, '2015-10-21 14:48:59', '2015-10-21 14:48:59'),
('J8inN8uaYp66znRK1yggzy4bhd5ZhL2xIQn94ARh', 6, 1445464797, '2015-10-21 13:59:57', '2015-10-21 13:59:57'),
('maZTtfxB4hFlXwTBeSmIBbOwk0zLRDxLiqaX8nuk', 4, 1445464580, '2015-10-21 13:56:20', '2015-10-21 13:56:20'),
('mGn5NIRCGtYzuLnQwgT2hnzLdjuc9O5GSqe2b8eq', 18, 1445473078, '2015-10-21 16:17:59', '2015-10-21 16:17:59'),
('Ml5XOJmml8xsvTpm71SIqxHTKBKyCuOme3Tjhn3C', 21, 1445477374, '2015-10-21 17:29:34', '2015-10-21 17:29:34'),
('mVhLFlslEZyHm87t1orqVJQvl1zNAluKbRxbyUY0', 13, 1445466300, '2015-10-21 14:25:00', '2015-10-21 14:25:00'),
('ON2ultgdVlbtwOQ8a0nLWjJtsemTiThwejeCEIem', 5, 1445464711, '2015-10-21 13:58:31', '2015-10-21 13:58:31'),
('p3yTFuCL0A4uJZo2Hjq7ny4vf9MVO5kGPtuHHNts', 12, 1445465507, '2015-10-21 14:11:47', '2015-10-21 14:11:47'),
('Ru2yZFi8Nu7aON05s0vwUnlYLn8pRL6zsWscnTEe', 22, 1445477388, '2015-10-21 17:29:48', '2015-10-21 17:29:48'),
('t9ztRlWCKfI0FCVD4YVEwFZe1ZTPwHulYTWbTRBj', 11, 1445465101, '2015-10-21 14:05:01', '2015-10-21 14:05:01'),
('TGGFwrqEtfzS6zoIS2Oo6W7ELlKLFtZNOxqnBELd', 1, 1445464227, '2015-10-21 13:50:27', '2015-10-21 13:50:27'),
('uID8cEIdUc1VRY0P2PtLrjjFTpcpZvgQmQiujbvD', 17, 1445472971, '2015-10-21 16:16:11', '2015-10-21 16:16:11'),
('VhRTOw6FqW5iqyk4wt6FiyWv0gM2eSpd6v1FJSoX', 16, 1445468073, '2015-10-21 14:54:33', '2015-10-21 14:54:33'),
('XO9JNPKqXcuP4x2jeOMAAomKmMSmi12naC0pY9AY', 14, 1445467689, '2015-10-21 14:48:09', '2015-10-21 14:48:09'),
('Y184Fcvt74QU5Tjd1sVr0onVNfL7quZq3gLTehjk', 9, 1445464979, '2015-10-21 14:02:59', '2015-10-21 14:02:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_token_scopes`
--

CREATE TABLE IF NOT EXISTS `oauth_access_token_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `access_token_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `oauth_access_token_scopes_access_token_id_index` (`access_token_id`),
  KEY `oauth_access_token_scopes_scope_id_index` (`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(10) unsigned NOT NULL,
  `redirect_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_session_id_index` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_code_scopes`
--

CREATE TABLE IF NOT EXISTS `oauth_auth_code_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `auth_code_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `oauth_auth_code_scopes_auth_code_id_index` (`auth_code_id`),
  KEY `oauth_auth_code_scopes_scope_id_index` (`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth_clients_id_secret_unique` (`id`,`secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `secret`, `name`, `created_at`, `updated_at`) VALUES
('client1', 'test1', 'Pt Client 1', '2015-10-21 17:00:00', '2015-10-21 17:00:00'),
('client2', 'test2', 'PT Client 2', '2015-10-21 17:00:00', '2015-10-21 17:00:00'),
('client3', 'test3', 'PT Client 3', '2015-10-21 17:00:00', '2015-10-21 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_client_endpoints`
--

CREATE TABLE IF NOT EXISTS `oauth_client_endpoints` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth_client_endpoints_client_id_redirect_uri_unique` (`client_id`,`redirect_uri`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `oauth_client_endpoints`
--

INSERT INTO `oauth_client_endpoints` (`id`, `client_id`, `redirect_uri`, `created_at`, `updated_at`) VALUES
(1, 'client1', 'http://example.com/redirect/cient1', '2015-10-21 17:00:00', '2015-10-21 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_client_grants`
--

CREATE TABLE IF NOT EXISTS `oauth_client_grants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `grant_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `oauth_client_grants_client_id_index` (`client_id`),
  KEY `oauth_client_grants_grant_id_index` (`grant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_client_scopes`
--

CREATE TABLE IF NOT EXISTS `oauth_client_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `oauth_client_scopes_client_id_index` (`client_id`),
  KEY `oauth_client_scopes_scope_id_index` (`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_grants`
--

CREATE TABLE IF NOT EXISTS `oauth_grants` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_grant_scopes`
--

CREATE TABLE IF NOT EXISTS `oauth_grant_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `grant_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `oauth_grant_scopes_grant_id_index` (`grant_id`),
  KEY `oauth_grant_scopes_scope_id_index` (`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`access_token_id`),
  UNIQUE KEY `oauth_refresh_tokens_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_scopes`
--

CREATE TABLE IF NOT EXISTS `oauth_scopes` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_sessions`
--

CREATE TABLE IF NOT EXISTS `oauth_sessions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `owner_type` enum('client','user') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `owner_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_redirect_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `oauth_sessions_client_id_owner_type_owner_id_index` (`client_id`,`owner_type`,`owner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Dumping data untuk tabel `oauth_sessions`
--

INSERT INTO `oauth_sessions` (`id`, `client_id`, `owner_type`, `owner_id`, `client_redirect_uri`, `created_at`, `updated_at`) VALUES
(1, 'client1', 'client', 'client1', NULL, '2015-10-21 13:50:27', '2015-10-21 13:50:27'),
(2, 'client1', 'client', 'client1', NULL, '2015-10-21 13:51:56', '2015-10-21 13:51:56'),
(3, 'client1', 'client', 'client1', NULL, '2015-10-21 13:52:01', '2015-10-21 13:52:01'),
(4, 'client1', 'client', 'client1', NULL, '2015-10-21 13:56:20', '2015-10-21 13:56:20'),
(5, 'client1', 'client', 'client1', NULL, '2015-10-21 13:58:31', '2015-10-21 13:58:31'),
(6, 'client1', 'client', 'client1', NULL, '2015-10-21 13:59:57', '2015-10-21 13:59:57'),
(7, 'client1', 'client', 'client1', NULL, '2015-10-21 14:00:18', '2015-10-21 14:00:18'),
(8, 'client1', 'client', 'client1', NULL, '2015-10-21 14:02:56', '2015-10-21 14:02:56'),
(9, 'client1', 'client', 'client1', NULL, '2015-10-21 14:02:59', '2015-10-21 14:02:59'),
(10, 'client1', 'client', 'client1', NULL, '2015-10-21 14:03:24', '2015-10-21 14:03:24'),
(11, 'client1', 'client', 'client1', NULL, '2015-10-21 14:05:01', '2015-10-21 14:05:01'),
(12, 'client1', 'client', 'client1', NULL, '2015-10-21 14:11:47', '2015-10-21 14:11:47'),
(13, 'client1', 'client', 'client1', NULL, '2015-10-21 14:25:00', '2015-10-21 14:25:00'),
(14, 'client1', 'client', 'client1', NULL, '2015-10-21 14:48:09', '2015-10-21 14:48:09'),
(15, 'client1', 'client', 'client1', NULL, '2015-10-21 14:48:59', '2015-10-21 14:48:59'),
(16, 'client1', 'client', 'client1', NULL, '2015-10-21 14:54:33', '2015-10-21 14:54:33'),
(17, 'client1', 'client', 'client1', NULL, '2015-10-21 16:16:11', '2015-10-21 16:16:11'),
(18, 'client1', 'client', 'client1', NULL, '2015-10-21 16:17:58', '2015-10-21 16:17:58'),
(19, 'client1', 'client', 'client1', NULL, '2015-10-21 17:28:03', '2015-10-21 17:28:03'),
(20, 'client2', 'client', 'client2', NULL, '2015-10-21 17:28:36', '2015-10-21 17:28:36'),
(21, 'client2', 'client', 'client2', NULL, '2015-10-21 17:29:34', '2015-10-21 17:29:34'),
(22, 'client2', 'client', 'client2', NULL, '2015-10-21 17:29:48', '2015-10-21 17:29:48'),
(23, 'client2', 'client', 'client2', NULL, '2015-10-21 23:51:03', '2015-10-21 23:51:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_session_scopes`
--

CREATE TABLE IF NOT EXISTS `oauth_session_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(10) unsigned NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `oauth_session_scopes_session_id_index` (`session_id`),
  KEY `oauth_session_scopes_scope_id_index` (`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Andreas Hari P', 'andreasharip@gmail.com', '', NULL, '2015-10-20 17:00:00', '2015-10-20 17:00:00');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD CONSTRAINT `oauth_access_tokens_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `oauth_access_token_scopes`
--
ALTER TABLE `oauth_access_token_scopes`
  ADD CONSTRAINT `oauth_access_token_scopes_access_token_id_foreign` FOREIGN KEY (`access_token_id`) REFERENCES `oauth_access_tokens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_access_token_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD CONSTRAINT `oauth_auth_codes_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `oauth_auth_code_scopes`
--
ALTER TABLE `oauth_auth_code_scopes`
  ADD CONSTRAINT `oauth_auth_code_scopes_auth_code_id_foreign` FOREIGN KEY (`auth_code_id`) REFERENCES `oauth_auth_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_auth_code_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `oauth_client_endpoints`
--
ALTER TABLE `oauth_client_endpoints`
  ADD CONSTRAINT `oauth_client_endpoints_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `oauth_client_grants`
--
ALTER TABLE `oauth_client_grants`
  ADD CONSTRAINT `oauth_client_grants_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `oauth_client_grants_grant_id_foreign` FOREIGN KEY (`grant_id`) REFERENCES `oauth_grants` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `oauth_client_scopes`
--
ALTER TABLE `oauth_client_scopes`
  ADD CONSTRAINT `oauth_client_scopes_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_client_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `oauth_grant_scopes`
--
ALTER TABLE `oauth_grant_scopes`
  ADD CONSTRAINT `oauth_grant_scopes_grant_id_foreign` FOREIGN KEY (`grant_id`) REFERENCES `oauth_grants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_grant_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD CONSTRAINT `oauth_refresh_tokens_access_token_id_foreign` FOREIGN KEY (`access_token_id`) REFERENCES `oauth_access_tokens` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `oauth_sessions`
--
ALTER TABLE `oauth_sessions`
  ADD CONSTRAINT `oauth_sessions_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `oauth_session_scopes`
--
ALTER TABLE `oauth_session_scopes`
  ADD CONSTRAINT `oauth_session_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_session_scopes_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
