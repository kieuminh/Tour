-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for kits
CREATE DATABASE IF NOT EXISTS `kits` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kits`;

-- Dumping structure for table kits.tbl_blog
CREATE TABLE IF NOT EXISTS `tbl_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `author_id` int(11),
  PRIMARY KEY (`id`),
  KEY `FK_tbl_blog_tbl_user` (`author_id`),
  CONSTRAINT `FK_tbl_blog_tbl_user` FOREIGN KEY (`author_id`) REFERENCES `tbl_user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 CHECKSUM=1;

-- Dumping data for table kits.tbl_blog: ~3 rows (approximately)
/*!40000 ALTER TABLE `tbl_blog` DISABLE KEYS */;
REPLACE INTO `tbl_blog` (`id`, `title`, `author_id`) VALUES
	(1, 'thu 2', 2),
	(2, 'thu 3', 1),
	(3, 'thu 4', 1);
/*!40000 ALTER TABLE `tbl_blog` ENABLE KEYS */;

-- Dumping structure for table kits.tbl_blog_tag
CREATE TABLE IF NOT EXISTS `tbl_blog_tag` (
  `blog_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`tag_id`),
  KEY `FK_tbl_blog_tag_tbl_tag` (`tag_id`),
  CONSTRAINT `FK_tbl_blog_tag_tbl_blog` FOREIGN KEY (`blog_id`) REFERENCES `tbl_blog` (`id`),
  CONSTRAINT `FK_tbl_blog_tag_tbl_tag` FOREIGN KEY (`tag_id`) REFERENCES `tbl_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table kits.tbl_blog_tag: ~4 rows (approximately)
/*!40000 ALTER TABLE `tbl_blog_tag` DISABLE KEYS */;
REPLACE INTO `tbl_blog_tag` (`blog_id`, `tag_id`) VALUES
	(1, 3),
	(1, 4),
	(2, 1),
	(2, 3);
/*!40000 ALTER TABLE `tbl_blog_tag` ENABLE KEYS */;

-- Dumping structure for table kits.tbl_tag
CREATE TABLE IF NOT EXISTS `tbl_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table kits.tbl_tag: ~4 rows (approximately)
/*!40000 ALTER TABLE `tbl_tag` DISABLE KEYS */;
REPLACE INTO `tbl_tag` (`id`, `name`) VALUES
	(1, 'java'),
	(2, 'python'),
	(3, 'C#'),
	(4, 'HTML');
/*!40000 ALTER TABLE `tbl_tag` ENABLE KEYS */;

-- Dumping structure for table kits.tbl_user
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table kits.tbl_user: ~3 rows (approximately)
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
REPLACE INTO `tbl_user` (`id`, `username`, `pass`, `email`) VALUES
	(1, 'tan', '111', 'aaa'),
	(2, 'nhat', '222', 'bbb'),
	(3, 'nguyen', '333', 'ccc');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
