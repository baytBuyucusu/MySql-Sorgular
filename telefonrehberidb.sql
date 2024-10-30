-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                8.0.30 - MySQL Community Server - GPL
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- yoklama için veritabanı yapısı dökülüyor
DROP DATABASE IF EXISTS `yoklama`;
CREATE DATABASE IF NOT EXISTS `yoklama` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `yoklama`;

-- tablo yapısı dökülüyor yoklama.atolye
DROP TABLE IF EXISTS `atolye`;
CREATE TABLE IF NOT EXISTS `atolye` (
  `id` int NOT NULL AUTO_INCREMENT,
  `atolye1` int NOT NULL,
  `atolye2` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- yoklama.atolye: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `atolye`;

-- tablo yapısı dökülüyor yoklama.ogrenci-bilgi
DROP TABLE IF EXISTS `ogrenci-bilgi`;
CREATE TABLE IF NOT EXISTS `ogrenci-bilgi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `numara` int NOT NULL,
  `atolye` int NOT NULL,
  `yok` tinyint NOT NULL,
  `pc` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `atolye` (`atolye`),
  KEY `pc` (`pc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- yoklama.ogrenci-bilgi: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `ogrenci-bilgi`;

-- tablo yapısı dökülüyor yoklama.pc
DROP TABLE IF EXISTS `pc`;
CREATE TABLE IF NOT EXISTS `pc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pc_sayisi` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- yoklama.pc: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `pc`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
