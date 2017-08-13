-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.25 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for nguyenuocxanh
DROP DATABASE IF EXISTS `nguyenuocxanh`;
CREATE DATABASE IF NOT EXISTS `nguyenuocxanh` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `nguyenuocxanh`;

-- Dumping structure for table nguyenuocxanh.ban
DROP TABLE IF EXISTS `ban`;
CREATE TABLE IF NOT EXISTS `ban` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ghichu` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nguyenuocxanh.ban: ~4 rows (approximately)
/*!40000 ALTER TABLE `ban` DISABLE KEYS */;
INSERT INTO `ban` (`id`, `ten`, `ghichu`, `created_at`, `updated_at`) VALUES
	(1, 'Trò chơi', '', NULL, NULL),
	(2, 'Văn Nghệ', '', NULL, NULL),
	(3, 'Hậu cần', '', NULL, NULL),
	(4, 'Kỹ Thuật', '', NULL, NULL);
/*!40000 ALTER TABLE `ban` ENABLE KEYS */;

-- Dumping structure for table nguyenuocxanh.dangky
DROP TABLE IF EXISTS `dangky`;
CREATE TABLE IF NOT EXISTS `dangky` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodt` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `congviec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ban` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dangky_id_ban_foreign` (`id_ban`),
  CONSTRAINT `dangky_id_ban_foreign` FOREIGN KEY (`id_ban`) REFERENCES `ban` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nguyenuocxanh.dangky: ~5 rows (approximately)
/*!40000 ALTER TABLE `dangky` DISABLE KEYS */;
INSERT INTO `dangky` (`id`, `ten`, `sodt`, `email`, `congviec`, `gioitinh`, `id_ban`, `created_at`, `updated_at`) VALUES
	(1, '1', 1262640099, 'hohongtrong@gmail.com', 'đi làm', 'nam', 1, NULL, NULL),
	(10, 'Hông Trọng', 123456789, 'ffff@gmail.com', '0', '1', 4, '2017-07-23 15:01:25', '2017-07-23 15:01:25'),
	(13, '222', 2222, '222@gmail.com', '0', '0', 4, '2017-07-23 15:22:43', '2017-07-23 15:22:43'),
	(14, 'hahahaha', 1213, 'hahaha@gmail.com', '0', '1', 2, '2017-07-23 15:23:49', '2017-07-23 15:23:49'),
	(15, 'rrrrrrrrrr', 123456789, 'rrrrrrrr@gmail.com', '0', '0', 2, '2017-07-23 15:27:10', '2017-07-23 15:27:10');
/*!40000 ALTER TABLE `dangky` ENABLE KEYS */;

-- Dumping structure for table nguyenuocxanh.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nguyenuocxanh.migrations: ~4 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2016_10_12_000000_create_users_table', 1),
	(2, '2016_10_12_100000_create_password_resets_table', 1),
	(3, '2017_07_22_214054_create_ban_table', 1),
	(4, '2017_07_22_214852_create_dangky_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table nguyenuocxanh.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nguyenuocxanh.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table nguyenuocxanh.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nguyenuocxanh.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
