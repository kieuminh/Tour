-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for tour
CREATE DATABASE IF NOT EXISTS `tour` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `tour`;

-- Dumping structure for table tour.blog
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wdate` date DEFAULT NULL,
  `like_amount` int(11) DEFAULT NULL,
  `state` bit(1) DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.blog: ~3 rows (approximately)
DELETE FROM `blog`;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` (`id`, `title`, `wname`, `content`, `wdate`, `like_amount`, `state`, `image`) VALUES
	(1, 'Tràng An-Ninh Bình', 'Admin', 'TRANG AN NINH BÌNH – Chưa đi chưa biết Tràng An đi rồi mới biết ko hề gian nan, còn đẹp như tranh xứng đáng di sản văn hóa và thiên nhiên thế giới do UNESCO công nhận. Đợt đó mình đi tour 3, tour này cũng được nhiều người gợi ý khi đi Tràng An Ninh Bình vì đi qua nhiều khung cảnh đẹp và không bị lặp lại quá nhiều. Giá vé 250k 1 người đi thuyền ghép 4 người, nếu như bạn muốn bao nguyên thuyền riêng tư thì giá 1 triệu 1 thuyền nhé', '2021-07-17', 12, b'1', 'deodatrang.jpg'),
	(2, 'Rong ruổi đường ven biển Việt Nam từ Bà Rịa tới Lăng Cô Huế- Hướng dẫn chi tiết', 'Minh', 'Với cung đường biển này bạn có thể đi trong vòng 7 ngày hoặc 10 ngày, càng dài ngày thì khám phá được nhiều sức khỏe cũng sẽ đảm bảo hơn, đường biển xuất phát từ Vũng Tàu đến Lăng Cô. Mình sẽ chia từng chặng cho các bạn tiện việc chọn cung phù hợp với sức khỏe và túi tiền của mình.\r\n– Đây là bài viết chia sẻ cá nhân của mình, có nhiều địa điểm trên hành trình này mình không ghé được nên không biết để review như thế nào\r\n\r\n– Đây là hành trình kiểu “rong ruổi” chứ không ghé thăm nhiều tuy nhiên có 1 số nơi bạn nên nán lại 1 ngày để đi : Quy Nhơn đi Nhơn Lý, Eo Gió, Quảng Ngãi có thời gian thì nên đi Lý Sơn, Đà Nẵng nên ở lại để đi thăm thành phố…', '2015-04-15', 10, b'1', 'coco-beach-phan-thiet.jpg'),
	(3, 'Kinh nghiệm phượt mũi Kê Gà điểm đổi gió gần Sài Gòn', 'Ngoc', 'Mũi Kê Gà cách Sài Gòn khoảng 180km đường bộ, nó làm một hòn đảo nhỏ cách đất liền khoảng 10 phút đi cano ,có ngọn hải đăng (hải đăng Kê Gà), đây là địa điểm thích hợp cho dân phượt ở Sài Gòn muốn đổi gió vào ngày cuối tuần, đợt trước Tuân đi vào sáng thứ 7 và chiều chủ nhật lên đủ để thỏa mãn cái sự cuồng chân của mình.', '2014-05-14', 2, b'1', 'dao-ly-son-tu-da-nang.jpg');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;

-- Dumping structure for table tour.book
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usertour_id` int(11) DEFAULT NULL,
  `total_money` decimal(10,0) DEFAULT NULL,
  `child_amount` int(11) DEFAULT NULL,
  `aldult_amount` int(11) DEFAULT NULL,
  `child_nho_amount` int(11) DEFAULT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `date` date DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `book_ibfk_1` (`usertour_id`),
  KEY `book_ibfk_2` (`tour_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`usertour_id`) REFERENCES `user_tour` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.book: ~0 rows (approximately)
DELETE FROM `book`;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

-- Dumping structure for table tour.cat_tour
CREATE TABLE IF NOT EXISTS `cat_tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.cat_tour: ~2 rows (approximately)
DELETE FROM `cat_tour`;
/*!40000 ALTER TABLE `cat_tour` DISABLE KEYS */;
INSERT INTO `cat_tour` (`id`, `name`) VALUES
	(1, 'family'),
	(2, 'hoeymoon');
/*!40000 ALTER TABLE `cat_tour` ENABLE KEYS */;

-- Dumping structure for table tour.comment
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usertour_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `comment_ibfk_1` (`usertour_id`),
  KEY `comment_ibfk_2` (`blog_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`usertour_id`) REFERENCES `user_tour` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.comment: ~0 rows (approximately)
DELETE FROM `comment`;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- Dumping structure for table tour.department
CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tourguide` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.department: ~2 rows (approximately)
DELETE FROM `department`;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`id`, `tourguide`, `address`) VALUES
	(4, 'Yến Dương', 'Tp.HCM'),
	(5, 'Hoàng Duy', 'Quận Tân Bình'),
	(6, 'Ngân Võ', 'Quận 1');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

-- Dumping structure for table tour.discount
CREATE TABLE IF NOT EXISTS `discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `start_day` date DEFAULT NULL,
  `end_day` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.discount: ~0 rows (approximately)
DELETE FROM `discount`;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` (`id`, `name`, `scope`, `start_day`, `end_day`) VALUES
	(2, 'CK GO', 12, '2021-07-09', '2021-07-22');
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;

-- Dumping structure for table tour.evaluate
CREATE TABLE IF NOT EXISTS `evaluate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wdate` date DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `tour_id` (`tour_id`),
  CONSTRAINT `FK__user_tour` FOREIGN KEY (`user_id`) REFERENCES `user_tour` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_evaluate_tour` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.evaluate: ~0 rows (approximately)
DELETE FROM `evaluate`;
/*!40000 ALTER TABLE `evaluate` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluate` ENABLE KEYS */;

-- Dumping structure for table tour.hotel
CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.hotel: ~2 rows (approximately)
DELETE FROM `hotel`;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` (`id`, `type`, `name`, `image`, `address`) VALUES
	(3, '3*', 'nơi chào mừng', 'phuyen.jpg', 'Gò Vấp, Tp.HCM'),
	(4, '4*', 'luxury', 'dalat2.jpg', 'Tân Bình');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;

-- Dumping structure for table tour.image_blog
CREATE TABLE IF NOT EXISTS `image_blog` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.image_blog: ~0 rows (approximately)
DELETE FROM `image_blog`;
/*!40000 ALTER TABLE `image_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_blog` ENABLE KEYS */;

-- Dumping structure for table tour.image_tour
CREATE TABLE IF NOT EXISTS `image_tour` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.image_tour: ~0 rows (approximately)
DELETE FROM `image_tour`;
/*!40000 ALTER TABLE `image_tour` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_tour` ENABLE KEYS */;

-- Dumping structure for table tour.like_blog
CREATE TABLE IF NOT EXISTS `like_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `usertour_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `like_blog_ibfk_2` (`usertour_id`),
  KEY `like_blog_ibfk_1` (`blog_id`),
  CONSTRAINT `like_blog_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `like_blog_ibfk_2` FOREIGN KEY (`usertour_id`) REFERENCES `user_tour` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.like_blog: ~0 rows (approximately)
DELETE FROM `like_blog`;
/*!40000 ALTER TABLE `like_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `like_blog` ENABLE KEYS */;

-- Dumping structure for table tour.payment
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `totalprice` decimal(20,6) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `pdate` date DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `payment_type` (`payment_type`),
  CONSTRAINT `FK_payment_detail_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_payment_payment_type` FOREIGN KEY (`payment_type`) REFERENCES `payment_type` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.payment: ~0 rows (approximately)
DELETE FROM `payment`;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;

-- Dumping structure for table tour.payment_type
CREATE TABLE IF NOT EXISTS `payment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.payment_type: ~4 rows (approximately)
DELETE FROM `payment_type`;
/*!40000 ALTER TABLE `payment_type` DISABLE KEYS */;
INSERT INTO `payment_type` (`id`, `type`) VALUES
	(1, 'momo'),
	(2, 'cash'),
	(3, 'credit'),
	(4, 'ATM');
/*!40000 ALTER TABLE `payment_type` ENABLE KEYS */;

-- Dumping structure for table tour.place
CREATE TABLE IF NOT EXISTS `place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `province_id` int(11) NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `province_id` (`province_id`) USING BTREE,
  CONSTRAINT `FK_place_province` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.place: ~1 rows (approximately)
DELETE FROM `place`;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT INTO `place` (`id`, `name`, `province_id`, `address`, `image`, `description`) VALUES
	(2, 'huy', 1, 'huy', 'deodatrang.jpg', 'nfggtfbfgvbfdgvre'),
	(3, 'DakLak', 16, 'Huyện Châu Thành', 'phanthiet.png', 'Với những món ngon bổ dưỡng, thăm cây cỏ núi rừng');
/*!40000 ALTER TABLE `place` ENABLE KEYS */;

-- Dumping structure for table tour.province
CREATE TABLE IF NOT EXISTS `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.province: ~63 rows (approximately)
DELETE FROM `province`;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` (`id`, `name`) VALUES
	(1, 'An Giang'),
	(2, 'Bà Rịa - Vũng Tàu'),
	(3, 'Bắc Giang'),
	(4, 'Bắc Kạn'),
	(5, 'Bạc Liêu'),
	(6, 'Bắc Ninh'),
	(7, 'Bến Tre'),
	(8, 'Bình Định'),
	(9, 'Bình Dương'),
	(10, 'Bình Phước'),
	(11, 'Bình Thuận'),
	(12, 'Cà Mau'),
	(13, 'Cao Bằng'),
	(14, 'Cần Thơ'),
	(15, 'Đà Nẵng'),
	(16, 'Đắk Lắk'),
	(17, 'Đắk Nông'),
	(18, 'Điện Biên'),
	(19, 'Đồng Nai'),
	(20, 'Đồng Tháp'),
	(21, 'Gia Lai'),
	(22, 'Hà Giang'),
	(23, 'Hà Nam'),
	(24, 'Hà Tĩnh'),
	(25, 'Hà Nội'),
	(26, 'Hải Phòng'),
	(27, 'Hải Dương'),
	(28, 'Hậu Giang'),
	(29, 'Hòa Bình'),
	(30, 'Hưng Yên'),
	(31, 'Khánh Hòa'),
	(32, 'Kiên Giang'),
	(33, 'Kon Tum'),
	(34, 'Lai Châu'),
	(35, 'Lâm Đồng'),
	(36, 'Lạng Sơn'),
	(37, 'Lào Cai'),
	(38, 'Long An'),
	(39, 'Nam Định'),
	(40, 'Nghệ An'),
	(41, 'Ninh Bình'),
	(42, 'Ninh Thuận'),
	(43, 'Phú Thọ'),
	(44, 'Quảng Bình'),
	(45, 'Quảng Nam'),
	(46, 'Quảng Ngãi'),
	(47, 'Quảng Ninh'),
	(48, 'Quảng Trị'),
	(49, 'Sóc Trăng'),
	(50, 'Sơn La'),
	(51, 'Tây Ninh'),
	(52, 'Thái Bình'),
	(53, 'Thái Nguyên'),
	(54, 'Thanh Hóa'),
	(55, 'Thừa Thiên Huế'),
	(56, 'Tiền Giang'),
	(57, 'Trà Vinh'),
	(58, 'Tuyên Quang'),
	(59, 'Vĩnh Long'),
	(60, 'Vĩnh Phúc'),
	(61, 'Yên Bái'),
	(62, 'Phú Yên'),
	(63, 'TP HCM');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;

-- Dumping structure for table tour.ticket
CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` bit(1) DEFAULT NULL,
  `giveDate` date DEFAULT NULL,
  `unitprice` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_ibfk_1` (`book_id`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.ticket: ~0 rows (approximately)
DELETE FROM `ticket`;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;

-- Dumping structure for table tour.tour
CREATE TABLE IF NOT EXISTS `tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `min_amount` int(11) DEFAULT NULL,
  `max_amount` int(11) DEFAULT NULL,
  `start_day` date DEFAULT NULL,
  `end_day` date DEFAULT NULL,
  `location_go` int(11) DEFAULT NULL,
  `cattour_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_id` (`hotel_id`),
  KEY `FK_tour_department` (`location_go`),
  KEY `tour_ibfk_3` (`cattour_id`),
  KEY `vehicle_id` (`vehicle_id`),
  CONSTRAINT `FK_tour_department` FOREIGN KEY (`location_go`) REFERENCES `department` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tour_hotel` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tour_vehicle` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tour_ibfk_3` FOREIGN KEY (`cattour_id`) REFERENCES `cat_tour` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.tour: ~3 rows (approximately)
DELETE FROM `tour`;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` (`id`, `name`, `price`, `min_amount`, `max_amount`, `start_day`, `end_day`, `location_go`, `cattour_id`, `content`, `note`, `hotel_id`, `vehicle_id`, `image`) VALUES
	(1, 'Tour Du Lịch Phú Quốc', 1200000, 10, 20, '2021-07-14', '2021-07-16', 4, 1, 'Du lich He - Tour Du lịch Hà Giang nổi tiếng với phong cảnh hùng vĩ cùng với mùa lúa chín nhuộm vàng lên tận cả chân mây, những thửa ruộng bậc thang ngút tầm mắt hay những cánh đồng hoa tam giác mạch phủ tím những quả đồi, hòa quyện với bản sắc văn hóa dân tộc vùng cao là những điều thu hút mọi du khách trong và ngoài nước đến du lịch Hà Giang trong thời gian qua. Hãy cùng Du Lịch Việt khám phá những điểm đến hấp dẫn không thể bỏ qua đến vùng đất tươi đẹp này.', NULL, 3, 2, 'dalat2.jpg'),
	(2, 'Tour Du Lịch Đà Nẵng', 3000000, 12, 25, '2021-07-17', '2021-07-18', 5, 2, NULL, NULL, 4, 3, 'hitashi-nhat-ban.jpg'),
	(3, 'Du Lịch Đà Lạt', 4500000, 12, 30, '2021-07-15', '2021-07-18', 6, 1, '<p><span style="font-size:16px">Theo đ&oacute;, du kh&aacute;ch đến Kh&aacute;nh H&ograve;a phải c&oacute; giấy chứng nhận ti&ecirc;m đủ liều vaccine Covid-19 do c&aacute;c cơ quan c&oacute; thẩm quyền cấp. Liều cuối c&ugrave;ng được ti&ecirc;m trong thời gian &iacute;t nhất 14 ng&agrave;y, kh&ocirc;ng qu&aacute; 12 th&aacute;ng t&iacute;nh đến l&uacute;c nhập cảnh.</span></p>\r\n\r\n<p><span style="font-size:16px">Khu vực đ&oacute;n kh&aacute;ch l&agrave; c&aacute;c kh&aacute;ch sạn, khu nghỉ dưỡng ở B&atilde;i D&agrave;i. &quot;B&atilde;i d&agrave;i Cam Ranh c&oacute; cụm du lịch, nghĩ dưỡng nằm xa khu d&acirc;n cư, cơ sở hạ tầng dễ d&agrave;ng kiểm so&aacute;t, đảm bảo an to&agrave;n cho du kh&aacute;ch&quot;, b&agrave; Thanh n&oacute;i.</span></p>\r\n\r\n<p><img alt="" src="https://dulichvietnam.com.vn/vnt_upload/File/Image/Du_lich_Khanh_Hoa1.jpg" style="height:525px; width:700px" /></p>\r\n\r\n<p><span style="font-size:16px">Trong đ&oacute; lưu &yacute; th&iacute; điểm đ&oacute;n kh&aacute;ch bằng c&aacute;c chuyến bay thu&ecirc; bao đến tỉnh phải cập nhật chỉ đạo mới nhất của Ch&iacute;nh phủ v&agrave; c&aacute;c bộ, ng&agrave;nh. Khu vực th&iacute; điểm trong phạm vi nhỏ, &iacute;t ảnh hưởng đến đến hoạt động kinh tế - x&atilde; hội địa phương v&agrave; đời sống nh&acirc;n d&acirc;n.</span></p>\r\n\r\n<p><img alt="" src="https://dulichvietnam.com.vn/vnt_upload/File/Image/Du_lich_Khanh_Hoa3.jpg" style="height:448px; width:700px" /></p>\r\n', 'Không bao gồm chi phí nằm ngoài', 4, 3, 'dalat2.jpg');
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;

-- Dumping structure for table tour.tour_discount
CREATE TABLE IF NOT EXISTS `tour_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) NOT NULL DEFAULT 0,
  `discount_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `tour_id` (`tour_id`),
  KEY `discount_id` (`discount_id`),
  CONSTRAINT `FK_tour_discount_discount` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_tour_discount_tour` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.tour_discount: ~0 rows (approximately)
DELETE FROM `tour_discount`;
/*!40000 ALTER TABLE `tour_discount` DISABLE KEYS */;
INSERT INTO `tour_discount` (`id`, `tour_id`, `discount_id`) VALUES
	(2, 3, 2);
/*!40000 ALTER TABLE `tour_discount` ENABLE KEYS */;

-- Dumping structure for table tour.tour_place
CREATE TABLE IF NOT EXISTS `tour_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place_id` int(11) NOT NULL DEFAULT 0,
  `tour_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`),
  KEY `tour_id` (`tour_id`),
  CONSTRAINT `FK__place` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK__tour` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.tour_place: ~2 rows (approximately)
DELETE FROM `tour_place`;
/*!40000 ALTER TABLE `tour_place` DISABLE KEYS */;
INSERT INTO `tour_place` (`id`, `place_id`, `tour_id`) VALUES
	(1, 2, 2),
	(2, 3, 1),
	(4, 3, 3),
	(5, 3, 2);
/*!40000 ALTER TABLE `tour_place` ENABLE KEYS */;

-- Dumping structure for table tour.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.user_role: ~6 rows (approximately)
DELETE FROM `user_role`;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` (`id`, `role`) VALUES
	(1, 'ADMIN'),
	(2, 'USER'),
	(3, 'ADMIN'),
	(4, 'USER'),
	(5, 'ADMIN'),
	(6, 'USER');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;

-- Dumping structure for table tour.user_tour
CREATE TABLE IF NOT EXISTS `user_tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passwd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cusname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role` int(11) NOT NULL,
  `state` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_tour_ibfk_1` (`user_role`),
  CONSTRAINT `user_tour_ibfk_1` FOREIGN KEY (`user_role`) REFERENCES `user_role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.user_tour: ~0 rows (approximately)
DELETE FROM `user_tour`;
/*!40000 ALTER TABLE `user_tour` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tour` ENABLE KEYS */;

-- Dumping structure for table tour.vehicle
CREATE TABLE IF NOT EXISTS `vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.vehicle: ~2 rows (approximately)
DELETE FROM `vehicle`;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` (`id`, `name`) VALUES
	(2, 'máy bay'),
	(3, 'tàu lửa');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
