-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.26 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for shoe_database
CREATE DATABASE IF NOT EXISTS `shoe_database` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `shoe_database`;


-- Dumping structure for table shoe_database.account
CREATE TABLE IF NOT EXISTS `account` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Password` char(255) DEFAULT NULL,
  `Email` char(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` char(255) DEFAULT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(11) DEFAULT '0',
  `Role` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.account: ~3 rows (approximately)
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`ID`, `Username`, `Name`, `Password`, `Email`, `Address`, `Phone`, `Date`, `Status`, `Role`) VALUES
	(2, 'admin', 'admin ', '21232f297a57a5a743894a0e4a801fc3', '1359043@itec.hcmus.edu.vn', 'test', '1234567890', '2016-06-09 12:15:24', 1, 1),
	(14, 'tran', 'tran', '81dc9bdb52d04dc20036dbd8313ed055', 'phuongtrantranthi@gmail.com', 'test', '1234567890', '2016-07-19 21:39:35', 1, 0),
	(15, 'quan', 'quan', '81dc9bdb52d04dc20036dbd8313ed055', 'quan@gmail.com', 'test', '1234567890', '2016-07-20 11:05:33', 0, 0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;


-- Dumping structure for table shoe_database.bill
CREATE TABLE IF NOT EXISTS `bill` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Phone` char(255) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Total` double(255,0) DEFAULT NULL,
  `Status` int(255) DEFAULT '0',
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Email` char(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.bill: ~9 rows (approximately)
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` (`ID`, `Name`, `Address`, `Phone`, `Quantity`, `Total`, `Status`, `Date`, `Email`) VALUES
	(2, 'admin', 'test', '1234567890', 1, 1000000, 1, '2016-04-02 00:00:00', 'admin@gmail.com'),
	(3, 'admin', 'test', '1234567890', 1, 5000000, 1, '2016-06-24 15:32:57', 'admin@gmail.com'),
	(4, 'admin', 'test', '1234567890', 1, 4000000, 0, '2016-06-25 01:00:11', 'admin@gmail.com'),
	(5, 'admin', 'test', '1234567890', 1, 4000000, 0, '2016-06-25 01:02:48', 'admin@gmail.com'),
	(6, 'admin', 'test', '1234567890', 1, 4000000, 0, '2016-06-25 01:05:36', 'admin@gmail.com'),
	(7, 'admin', 'test', '1234567890', 2, 12000000, 0, '2016-06-25 01:06:22', 'admin@gmail.com'),
	(8, 'admin', 'test', '1234567890', 1, 4000000, 0, '2016-06-25 01:12:47', 'admin@gmail.com'),
	(16, 'tran', 'test', '1234567890', 1, 4000000, 0, '2016-07-20 11:26:39', 'phuongtrantranthi@gmail.com'),
	(17, 'tran', 'test', '1234567890', 1, 3500000, 1, '2016-07-20 15:07:11', 'phuongtrantranthi@gmail.com');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;


-- Dumping structure for table shoe_database.category
CREATE TABLE IF NOT EXISTS `category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.category: ~5 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`ID`, `Name`) VALUES
	(1, 'Adidas'),
	(2, 'Nike'),
	(3, 'Converse'),
	(4, 'Puma'),
	(5, 'New Balance');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


-- Dumping structure for table shoe_database.color
CREATE TABLE IF NOT EXISTS `color` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.color: ~12 rows (approximately)
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` (`ID`, `Name`) VALUES
	(1, 'Black'),
	(2, 'Pink'),
	(3, 'Red'),
	(4, 'Yellow'),
	(5, 'Grey'),
	(6, 'Lime'),
	(7, 'Raw Purple'),
	(8, 'White'),
	(9, 'Green'),
	(10, 'Blue'),
	(11, 'Brow'),
	(12, 'Orange');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;


-- Dumping structure for table shoe_database.comment
CREATE TABLE IF NOT EXISTS `comment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` char(255) DEFAULT NULL,
  `Email` char(255) DEFAULT NULL,
  `Content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDProduct` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.comment: ~11 rows (approximately)
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` (`ID`, `Username`, `Email`, `Content`, `Date`, `IDProduct`) VALUES
	(1, 'test', 'casio1511@gmail.com', 'Giày đẹp', '2016-06-05 00:00:00', 10),
	(2, 'tran', '1359043@itec.hcmus.edu.vn', 'dang test', '2016-06-13 22:09:55', 10),
	(3, 'tran', '1359043@itec.hcmus.edu.vn', 'test2', '2016-06-13 22:12:09', 10),
	(4, 'tran', '1359043@itec.hcmus.edu.vn', 'test lan 3', '2016-06-13 22:14:42', 10),
	(5, 'admin', 'admin@gmail.com', 'Your Message', '2016-06-22 23:05:02', 19),
	(6, 'admin', 'admin@gmail.com', 'Your Message', '2016-06-22 23:10:53', 28),
	(7, 'admin', 'admin@gmail.com', 'test', '2016-06-22 23:13:50', 19),
	(8, 'admin', 'admin@gmail.com', ' ', '2016-06-24 13:41:16', 10),
	(9, 'vinh1995', 'jake_jonas_1995@yahoo.com', 'good product', '2016-07-12 15:40:10', 16),
	(10, 'vinh1995', 'jake_jonas_1995@yahoo.com', 'try this', '2016-07-12 15:42:13', 16),
	(11, 'vinh1995', 'jake_jonas_1995@yahoo.com', 'not bad', '2016-07-12 15:43:43', 13);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;


-- Dumping structure for table shoe_database.detailbill
CREATE TABLE IF NOT EXISTS `detailbill` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDBill` int(11) DEFAULT NULL,
  `Product` varchar(255) DEFAULT NULL,
  `Quantity` int(255) DEFAULT NULL,
  `Price` double(10,2) DEFAULT NULL,
  `Total` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDBill` (`IDBill`),
  CONSTRAINT `detailbill_ibfk_1` FOREIGN KEY (`IDBill`) REFERENCES `bill` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.detailbill: ~10 rows (approximately)
/*!40000 ALTER TABLE `detailbill` DISABLE KEYS */;
INSERT INTO `detailbill` (`ID`, `IDBill`, `Product`, `Quantity`, `Price`, `Total`) VALUES
	(3, 2, '28', 7, 1000000.00, 1000000),
	(4, 3, '1', 1, 5000000.00, 5000000),
	(5, 4, '10', 1, 4000000.00, 4000000),
	(6, 5, '10', 1, 4000000.00, 4000000),
	(7, 6, '10', 1, 4000000.00, 4000000),
	(8, 7, '13', 1, 6000000.00, 6000000),
	(9, 7, '19', 1, 6000000.00, 6000000),
	(10, 8, '10', 1, 4000000.00, 4000000),
	(18, 16, '10', 1, 4000000.00, 4000000),
	(19, 17, '179', 1, 3500000.00, 3500000);
/*!40000 ALTER TABLE `detailbill` ENABLE KEYS */;


-- Dumping structure for table shoe_database.gender
CREATE TABLE IF NOT EXISTS `gender` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.gender: ~2 rows (approximately)
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` (`ID`, `Name`) VALUES
	(1, 'Men'),
	(2, 'Women');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;


-- Dumping structure for table shoe_database.product
CREATE TABLE IF NOT EXISTS `product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(255) DEFAULT NULL,
  `Category` int(11) DEFAULT NULL,
  `Sport` int(11) DEFAULT NULL,
  `Gender` int(255) DEFAULT NULL,
  `Color` int(11) DEFAULT NULL,
  `Size` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT '0',
  `Price` double(50,2) DEFAULT '0.00',
  `ImportedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(11) DEFAULT '0',
  `View` int(11) DEFAULT '0',
  `Image` char(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Category` (`Category`),
  KEY `Sport` (`Sport`),
  KEY `Gender` (`Gender`),
  KEY `Color` (`Color`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Category`) REFERENCES `category` (`ID`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`Sport`) REFERENCES `sport` (`ID`),
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`Gender`) REFERENCES `gender` (`ID`),
  CONSTRAINT `product_ibfk_4` FOREIGN KEY (`Color`) REFERENCES `color` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.product: ~244 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`ID`, `Name`, `Category`, `Sport`, `Gender`, `Color`, `Size`, `Quantity`, `Price`, `ImportedDate`, `Status`, `View`, `Image`) VALUES
	(1, 'SOLAR RNR', 1, 1, 1, 3, 8, 9, 5000000.00, '2016-06-05 00:00:00', 1, 40, '1.jpg'),
	(2, 'SOLAR RNR', 1, 1, 1, 3, 9, 12, 5000000.00, '2016-06-05 00:00:00', 1, 1, '1.jpg'),
	(3, 'SOLAR RNR', 1, 1, 1, 3, 10, 5, 5000000.00, '2016-06-05 00:00:00', 1, 0, '1.jpg'),
	(4, 'SOLAR RNR', 1, 1, 1, 5, 8, 8, 5000000.00, '2016-06-05 00:00:00', 1, 0, '1.2.jpg'),
	(5, 'SOLAR RNR', 1, 1, 1, 5, 9, 8, 5000000.00, '2016-06-05 00:00:00', 1, 0, '1.2.jpg'),
	(6, 'SOLAR RNR', 1, 1, 1, 5, 10, 6, 5000000.00, '2016-06-05 00:00:00', 1, 0, '1.2.jpg'),
	(7, 'PURE BOOST', 1, 1, 2, 1, 6, 6, 4000000.00, '2016-06-06 23:03:32', 1, 0, '2.jpg'),
	(8, 'PURE BOOST', 1, 1, 2, 1, 7, 7, 4000000.00, '2016-06-06 23:46:42', 1, 0, '2.jpg'),
	(9, 'PURE BOOST', 1, 1, 2, 1, 8, 5, 4000000.00, '2016-06-06 23:46:46', 1, 0, '2.jpg'),
	(10, 'PURE BOOST', 1, 1, 2, 7, 6, 8, 4000000.00, '2016-06-06 23:46:47', 1, 45, '2.1.jpg'),
	(11, 'PURE BOOST', 1, 1, 2, 7, 7, 4, 4000000.00, '2016-06-06 23:46:50', 1, 0, '2.1.jpg'),
	(12, 'PURE BOOST', 1, 1, 2, 7, 8, 2, 4000000.00, '2016-06-06 23:47:09', 1, 1, '2.1.jpg'),
	(13, 'BOUNCE:S4', 1, 1, 1, 4, 8, 10, 6000000.00, '2016-06-07 00:03:18', 1, 20, '3.jpg'),
	(14, 'BOUNCE:S4', 1, 1, 1, 4, 9, 5, 6000000.00, '2016-06-07 00:03:18', 1, 0, '3.jpg'),
	(15, 'BOUNCE:S4', 1, 1, 1, 4, 10, 9, 6000000.00, '2016-06-07 00:03:20', 1, 0, '3.jpg'),
	(16, 'BOUNCE:S4', 1, 1, 1, 1, 8, 5, 6000000.00, '2016-06-07 00:03:21', 1, 12, '3.2.jpg'),
	(17, 'BOUNCE:S4', 1, 1, 1, 1, 9, 3, 6000000.00, '2016-06-07 00:03:22', 1, 0, '3.2.jpg'),
	(18, 'BOUNCE:S4', 1, 1, 1, 1, 10, 11, 6000000.00, '2016-06-07 00:03:24', 1, 0, '3.2.jpg'),
	(19, 'BOUNCE:S4', 1, 1, 1, 8, 8, 12, 6000000.00, '2016-06-07 00:03:26', 1, 24, '3.3.jpg'),
	(20, 'BOUNCE:S4', 1, 1, 1, 8, 9, 2, 6000000.00, '2016-06-07 00:11:28', 1, 0, '3.3.jpg'),
	(21, 'BOUNCE:S4', 1, 1, 1, 8, 10, 5, 6000000.00, '2016-06-07 00:12:12', 1, 0, '3.3.jpg'),
	(22, 'TERREX AGRAVIC', 1, 3, 1, 9, 8, 9, 5000000.00, '2016-06-07 00:12:59', 1, 0, '4.jpg'),
	(23, 'TERREX AGRAVIC', 1, 3, 1, 9, 9, 8, 5000000.00, '2016-06-07 00:12:59', 1, 0, '4.jpg'),
	(24, 'TERREX AGRAVIC', 1, 3, 1, 9, 10, 6, 5000000.00, '2016-06-07 00:13:06', 1, 0, '4.jpg'),
	(25, 'TERREX AGRAVIC', 1, 3, 1, 1, 8, 4, 5000000.00, '2016-06-07 00:27:25', 1, 0, '4.1.jpg'),
	(26, 'TERREX AGRAVIC', 1, 3, 1, 1, 9, 9, 5000000.00, '2016-06-07 00:27:25', 1, 0, '4.1.jpg'),
	(27, 'TERREX AGRAVIC', 1, 3, 1, 1, 10, 15, 5000000.00, '2016-06-07 00:27:27', 1, 0, '4.1.jpg'),
	(28, 'Chuck Taylor', 3, 3, 2, 8, 6, 7, 1000000.00, '2016-06-07 00:42:46', 1, 28, '5.jpg'),
	(29, 'Chuck Taylor', 3, 3, 2, 8, 7, 7, 1000000.00, '2016-06-07 11:25:24', 1, 0, '5.jpg'),
	(30, 'Chuck Taylor', 3, 3, 2, 8, 8, 10, 1000000.00, '2016-06-07 11:25:40', 1, 0, '5.jpg'),
	(31, 'BLAZE OF GLORY SOCK', 4, 3, 1, 8, 8, 6, 1500000.00, '2016-06-07 11:33:50', 1, 7, '6.jpg'),
	(32, 'BLAZE OF GLORY SOCK', 4, 3, 1, 8, 9, 7, 1500000.00, '2016-06-07 11:33:51', 1, 0, '6.jpg'),
	(33, 'BLAZE OF GLORY SOCK', 4, 3, 1, 8, 10, 8, 1500000.00, '2016-06-07 11:33:51', 1, 0, '6.jpg'),
	(34, 'BLAZE OF GLORY SOCK', 4, 3, 1, 1, 8, 9, 1500000.00, '2016-06-07 11:38:26', 1, 85, '6.2.jpg'),
	(35, 'BLAZE OF GLORY SOCK', 4, 3, 1, 1, 9, 12, 1500000.00, '2016-06-07 11:38:27', 1, 0, '6.2.jpg'),
	(36, 'BLAZE OF GLORY SOCK', 4, 3, 1, 1, 10, 19, 1500000.00, '2016-06-07 11:38:27', 1, 0, '6.2.jpg'),
	(37, 'BLAZE OF GLORY SOCK', 4, 3, 1, 1, 11, 9, 1500000.00, '2016-06-28 17:18:52', 1, 0, '6.2.jpg'),
	(39, 'BLAZE OF GLORY SOCK', 4, 3, 1, 1, 12, 9, 1500000.00, '2016-06-29 12:54:52', 1, 0, '6.2.jpg'),
	(40, 'Chuck Taylor All Star II', 3, 3, 1, 5, 9, 6, 1500000.00, '2016-07-19 12:12:35', 0, 0, '7.jpg'),
	(41, 'Chuck Taylor All Star II', 3, 3, 1, 5, 8, 86, 1500000.00, '2016-07-19 12:14:42', 0, 0, '7.jpg'),
	(42, 'Chuck Taylor All Star II', 3, 3, 1, 5, 10, 9, 1500000.00, '2016-07-19 12:15:27', 0, 0, '7.jpg'),
	(43, 'Chuck Taylor All Star II', 3, 1, 1, 10, 10, 65, 1500000.00, '2016-07-19 12:25:30', 0, 0, '8.jpg'),
	(44, 'Chuck Taylor All Star II', 3, 3, 1, 5, 9, 6, 1500000.00, '2016-07-19 12:26:13', 0, 0, '8.jpg'),
	(45, 'Chuck Taylor All Star II', 3, 3, 1, 10, 9, 6, 1500000.00, '2016-07-19 12:26:50', 0, 0, '8.jpg'),
	(46, 'Chuck Taylor All Star II', 3, 3, 1, 10, 8, 0, 1500000.00, '2016-07-19 12:27:35', 0, 0, '8.jpg'),
	(47, 'Chuck Taylor All Star II', 3, 1, 2, 5, 6, 8, 1600000.00, '2016-07-19 12:31:47', 0, 0, '9.jpg'),
	(48, 'Chuck Taylor All Star II', 3, 3, 2, 5, 7, 2, 1600000.00, '2016-07-19 12:33:27', 0, 0, '9.jpg'),
	(49, 'Chuck Taylor All Star II', 3, 1, 2, 5, 8, 0, 1600000.00, '2016-07-19 12:34:57', 0, 0, '9.jpg'),
	(50, 'Chuck Taylor All Star II', 3, 3, 2, 3, 6, 3, 1600000.00, '2016-07-19 12:36:46', 0, 0, '10.jpg'),
	(51, 'Chuck Taylor All Star II', 3, 3, 2, 3, 7, 0, 1600000.00, '2016-07-19 12:38:19', 0, 0, '10.jpg'),
	(52, 'Chuck Taylor All Star II', 3, 3, 2, 3, 6, 0, 1600000.00, '2016-07-19 12:38:51', 0, 0, '10.jpg'),
	(53, 'Chuck Taylor All Star II', 3, 3, 1, 9, 8, 0, 1600000.00, '2016-07-19 12:40:16', 0, 0, '11.jpg'),
	(54, 'Chuck Taylor All Star II', 3, 3, 1, 9, 9, 0, 1600000.00, '2016-07-19 12:40:52', 0, 0, '11.jpg'),
	(55, 'Chuck Taylor All Star II', 3, 3, 1, 9, 10, 0, 1600000.00, '2016-07-19 12:42:27', 0, 0, '11.jpg'),
	(56, 'Chuck Taylor All Star', 3, 3, 1, 9, 8, 0, 1600000.00, '2016-07-19 12:44:02', 0, 0, '12.jpg'),
	(57, 'Chuck Taylor All Star', 3, 3, 1, 9, 9, 0, 1600000.00, '2016-07-19 12:45:18', 0, 0, '12.jpg'),
	(58, 'Chuck Taylor All Star II Americana', 3, 3, 1, 9, 10, 0, 1600000.00, '2016-07-19 12:46:19', 0, 0, '12.jpg'),
	(59, 'Chuck Taylor All Star II Americana', 3, 3, 2, 8, 6, 2, 1600000.00, '2016-07-19 12:48:36', 0, 0, '13.jpg'),
	(60, 'Chuck Taylor All Star II Americana', 3, 3, 2, 8, 7, 442, 1600000.00, '2016-07-19 12:49:21', 0, 0, '13.jpg'),
	(61, 'Chuck Taylor All Star II Americana', 3, 3, 2, 8, 10, 32, 1600000.00, '2016-07-19 12:50:28', 0, 0, '13.jpg'),
	(62, 'Chuck Taylor All Star II Americana', 3, 3, 1, 1, 8, 43, 1600000.00, '2016-07-19 12:52:15', 0, 0, '14.jpg'),
	(63, 'Chuck Taylor All Star II Americana', 3, 3, 2, 1, 7, 22, 1600000.00, '2016-07-19 12:53:14', 0, 0, '14.jpg'),
	(64, 'Chuck Taylor All Star II Americana', 3, 3, 1, 1, 10, 0, 1600000.00, '2016-07-19 12:54:23', 0, 0, '14.jpg'),
	(65, 'Chuck Taylor All Star II Americana', 3, 3, 1, 8, 8, 3, 1600000.00, '2016-07-19 14:35:43', 0, 0, '15.jpg'),
	(68, 'Chuck Taylor All Star II Americana', 3, 3, 1, 8, 9, 223, 1600000.00, '2016-07-19 14:36:44', 0, 0, '15.jpg'),
	(69, 'Chuck Taylor All Star II Americana', 3, 3, 1, 8, 10, 3, 1600000.00, '2016-07-19 14:37:23', 0, 0, '15.jpg'),
	(70, 'Chuck Taylor All Star II', 3, 3, 2, 11, 8, 54, 1600000.00, '2016-07-19 14:40:48', 0, 0, '16.jpg'),
	(71, 'Chuck Taylor All Star II', 3, 3, 2, 11, 7, 54, 1600000.00, '2016-07-19 14:41:49', 0, 0, '16.jpg'),
	(72, 'Chuck Taylor All Star II', 3, 3, 2, 11, 6, 0, 1600000.00, '2016-07-19 14:42:23', 0, 0, '16.jpg'),
	(73, 'Chuck Taylor All Star II', 3, 3, 1, 8, 8, 2, 1600000.00, '2016-07-19 14:43:49', 0, 0, '17.jpg'),
	(74, 'Chuck Taylor All Star II', 3, 3, 1, 8, 9, 15, 1600000.00, '2016-07-19 14:46:07', 0, 0, '17.jpg'),
	(75, 'Chuck Taylor All Star II', 3, 3, 1, 8, 10, 56, 1600000.00, '2016-07-19 14:46:34', 0, 0, '17.jpg'),
	(76, 'Chuck Taylor All Star II Knit', 3, 3, 1, 1, 2, 2, 1600000.00, '2016-07-19 14:48:39', 0, 0, '18.jpg'),
	(77, 'Chuck Taylor All Star II Knit', 3, 3, 1, 1, 4, 2, 1600000.00, '2016-07-19 14:48:43', 0, 0, '18.jpg'),
	(78, 'Chuck Taylor All Star II Knit', 3, 3, 1, 1, 5, 321, 1600000.00, '2016-07-19 14:48:47', 0, 0, '18.jpg'),
	(79, 'Chuck Taylor All Star II Knit', 3, 3, 2, 3, 8, 21, 1600000.00, '2016-07-19 14:50:44', 0, 0, '19.jpg'),
	(80, 'Chuck Taylor All Star II Knit', 3, 3, 2, 3, 7, 2, 1600000.00, '2016-07-19 14:50:46', 0, 0, '19.jpg'),
	(81, 'Chuck Taylor All Star II Knit', 3, 3, 2, 3, 6, 2, 1600000.00, '2016-07-19 14:50:48', 0, 0, '19.jpg'),
	(82, 'Chuck Taylor All Star II Knit', 3, 3, 1, 4, 10, 2, 1600000.00, '2016-07-19 14:53:42', 0, 0, '20.jpg'),
	(83, 'Chuck Taylor All Star II Knit', 3, 3, 1, 4, 9, 2, 1600000.00, '2016-07-19 14:53:45', 0, 0, '20.jpg'),
	(84, 'Chuck Taylor All Star II Knit', 3, 3, 1, 4, 8, 23, 1600000.00, '2016-07-19 14:53:48', 0, 0, '20.jpg'),
	(85, 'Chuck Taylor All Star II Knit', 3, 3, 2, 5, 8, 5, 1600000.00, '2016-07-19 14:55:36', 0, 0, '21.jpg'),
	(86, 'Chuck Taylor All Star II Knit', 3, 3, 2, 5, 7, 3, 1600000.00, '2016-07-19 14:55:39', 0, 0, '21.jpg'),
	(87, 'Chuck Taylor All Star II Knit', 3, 3, 2, 5, 6, 1, 1600000.00, '2016-07-19 14:55:42', 0, 0, '21.jpg'),
	(88, 'ULTRABOOST UNCAGED LTD', 1, 1, 1, 1, 10, 45, 2000000.00, '2016-07-19 14:58:58', 0, 0, '22.jpg'),
	(89, 'ULTRABOOST UNCAGED LTD', 1, 1, 1, 1, 9, 6, 2000000.00, '2016-07-19 14:59:01', 0, 0, '22.jpg'),
	(90, 'ULTRABOOST UNCAGED LTD', 1, 1, 1, 1, 8, 7, 2000000.00, '2016-07-19 14:59:04', 0, 0, '22.jpg'),
	(91, 'ULTRABOOST UNCAGED LTD', 1, 1, 1, 8, 10, 23, 2000000.00, '2016-07-19 15:03:38', 0, 0, '23.jpg'),
	(92, 'ULTRABOOST UNCAGED LTD', 1, 1, 1, 8, 9, 3, 2000000.00, '2016-07-19 15:03:40', 0, 0, '23.jpg'),
	(93, 'ULTRABOOST UNCAGED LTD', 1, 1, 1, 8, 8, 54, 2000000.00, '2016-07-19 15:03:42', 0, 0, '23.jpg'),
	(94, 'ULTRABOOST UNCAGED LTD', 1, 1, 1, 3, 8, 32, 2000000.00, '2016-07-19 15:06:12', 0, 0, '24.jpg'),
	(95, 'ULTRABOOST UNCAGED LTD', 1, 1, 1, 3, 9, 2, 2000000.00, '2016-07-19 15:07:17', 0, 0, '24.jpg'),
	(96, 'ULTRABOOST UNCAGED LTD', 1, 1, 1, 3, 10, 23, 2000000.00, '2016-07-19 15:07:47', 0, 0, '24.jpg'),
	(97, 'ENDURANCE', 1, 1, 1, 1, 8, 23, 2000000.00, '2016-07-19 15:09:34', 0, 0, '25.jpg'),
	(98, 'ENDURANCE', 1, 1, 1, 1, 9, 23, 2000000.00, '2016-07-19 15:11:16', 0, 0, '25.jpg'),
	(99, 'ENDURANCE', 1, 1, 1, 1, 10, 21, 2000000.00, '2016-07-19 15:11:39', 0, 0, '25.jpg'),
	(100, 'EC RUNNING', 1, 1, 1, 1, 8, 32, 2000000.00, '2016-07-19 15:14:10', 0, 0, '26.jpg'),
	(101, 'EC RUNNING', 1, 1, 1, 1, 9, 32, 2000000.00, '2016-07-19 15:14:27', 0, 0, '26.jpg'),
	(102, 'EC RUNNING', 1, 1, 1, 10, 10, 32, 2000000.00, '2016-07-19 15:15:00', 0, 0, '26.jpg'),
	(103, 'TUNED ULTRA BOOST', 1, 1, 1, 1, 8, 543, 2000000.00, '2016-07-19 15:17:30', 0, 0, '31.jpg'),
	(104, 'TUNED ULTRA BOOST', 1, 1, 1, 1, 9, 32, 2000000.00, '2016-07-19 15:18:18', 0, 0, '31.jpg'),
	(105, 'TUNED ULTRA BOOST', 1, 1, 1, 1, 10, 2, 2000000.00, '2016-07-19 15:18:55', 0, 0, '31.jpg'),
	(106, 'ULTRA BOOST UNCAGED', 1, 1, 1, 1, 8, 32, 2000000.00, '2016-07-19 15:20:18', 0, 0, '33.jpg'),
	(107, 'ULTRA BOOST UNCAGED', 1, 1, 1, 1, 10, 21, 2000000.00, '2016-07-19 15:20:37', 0, 0, '33.jpg'),
	(108, 'ULTRA BOOST UNCAGED', 1, 1, 1, 1, 9, 32, 2000000.00, '2016-07-19 15:20:41', 0, 0, '33.jpg'),
	(109, 'ULTRA BOOST SHOES', 1, 1, 1, 1, 9, 12, 2000000.00, '2016-07-19 15:22:24', 0, 0, '34.jpg'),
	(110, 'ULTRA BOOST SHOES', 1, 1, 1, 1, 8, 32, 2000000.00, '2016-07-19 15:22:25', 0, 0, '34.jpg'),
	(111, 'ULTRA BOOST SHOES', 1, 1, 1, 1, 10, 32, 2000000.00, '2016-07-19 15:22:30', 0, 0, '34.jpg'),
	(112, 'ULTRA BOOST ST', 1, 1, 1, 1, 10, 12, 2000000.00, '2016-07-19 15:25:22', 0, 0, '35.jpg'),
	(113, 'ULTRA BOOST ST', 1, 1, 1, 1, 9, 12, 2000000.00, '2016-07-19 15:25:24', 0, 0, '35.jpg'),
	(114, 'ULTRA BOOST ST', 1, 1, 1, 1, 8, 21, 2000000.00, '2016-07-19 15:25:28', 0, 0, '35.jpg'),
	(115, 'ULTRA BOOST', 1, 1, 1, 5, 10, 23, 2000000.00, '2016-07-19 15:26:58', 0, 0, '36.jpg'),
	(116, 'ULTRA BOOST', 1, 1, 1, 5, 9, 12, 2000000.00, '2016-07-19 15:27:01', 0, 0, '36.jpg'),
	(117, 'ULTRA BOOST', 1, 1, 1, 5, 8, 32, 2000000.00, '2016-07-19 15:27:05', 0, 0, '36.jpg'),
	(119, 'Suede Classic +', 4, 3, 1, 1, 8, 32, 2500000.00, '2016-07-19 15:34:09', 0, 0, '37.jpg'),
	(120, 'Suede Classic +', 4, 3, 1, 1, 9, 32, 2500000.00, '2016-07-19 15:35:21', 0, 0, '37.jpg'),
	(121, 'Suede Classic +', 4, 3, 1, 1, 10, 32, 2500000.00, '2016-07-19 15:35:42', 0, 0, '37.jpg'),
	(122, 'Suede Classic +', 4, 3, 1, 10, 8, 32, 2500000.00, '2016-07-19 15:38:09', 0, 0, '38.jpg'),
	(123, 'Suede Classic +', 4, 3, 1, 10, 9, 43, 2500000.00, '2016-07-19 15:39:47', 0, 0, '38.jpg'),
	(124, 'Suede Classic +', 4, 3, 1, 10, 10, 23, 2500000.00, '2016-07-19 15:40:16', 0, 0, '38.jpg'),
	(125, 'Suede Classic', 4, 3, 1, 4, 10, 32, 2500000.00, '2016-07-19 15:41:43', 0, 0, '39.jpg'),
	(126, 'Suede Classic', 4, 3, 1, 4, 9, 23, 2500000.00, '2016-07-19 15:41:45', 0, 0, '39.jpg'),
	(127, 'Suede Classic', 4, 3, 1, 4, 8, 21, 2500000.00, '2016-07-19 15:41:47', 0, 0, '39.jpg'),
	(128, 'Suede Classic', 4, 3, 1, 10, 8, 32, 2500000.00, '2016-07-19 15:44:52', 0, 0, '40.jpg'),
	(129, 'Suede Classic', 4, 3, 1, 10, 9, 32, 2500000.00, '2016-07-19 15:45:22', 0, 0, '40.jpg'),
	(130, 'Suede Classic', 4, 3, 1, 10, 10, 23, 2500000.00, '2016-07-19 15:45:58', 0, 0, '40.jpg'),
	(131, 'Suede Classic V2', 4, 3, 1, 7, 10, 12, 2500000.00, '2016-07-19 15:46:55', 0, 0, '41.jpg'),
	(132, 'Suede Classic V2', 4, 3, 1, 7, 9, 32, 2500000.00, '2016-07-19 15:46:58', 0, 0, '41.jpg'),
	(133, 'Suede Classic V2', 4, 3, 1, 7, 8, 32, 2500000.00, '2016-07-19 15:47:01', 0, 0, '41.jpg'),
	(134, 'Americana Suede', 4, 3, 1, 10, 10, 14, 2500000.00, '2016-07-19 15:48:52', 0, 1, '42.jpg'),
	(135, 'Americana Suede', 4, 3, 1, 10, 9, 21, 2500000.00, '2016-07-19 15:48:55', 0, 0, '42.jpg'),
	(136, 'Americana Suede', 4, 3, 1, 10, 8, 3, 2500000.00, '2016-07-19 15:48:57', 0, 0, '42.jpg'),
	(137, '698 IGNITE', 4, 3, 1, 1, 10, 12, 2500000.00, '2016-07-19 15:50:52', 0, 3, '43.jpg'),
	(138, '698 IGNITE', 4, 3, 1, 1, 9, 32, 2500000.00, '2016-07-19 15:50:53', 0, 0, '43.jpg'),
	(139, '698 IGNITE', 4, 3, 1, 1, 8, 12, 2500000.00, '2016-07-19 15:50:55', 0, 0, '43.jpg'),
	(140, '698 IGNITE', 4, 3, 1, 1, 10, 12, 2500000.00, '2016-07-19 15:52:37', 0, 0, '44.jpg'),
	(141, '698 IGNITE', 4, 3, 1, 1, 9, 121, 2500000.00, '2016-07-19 15:52:38', 0, 0, '44.jpg'),
	(142, '698 IGNITE', 4, 3, 1, 1, 8, 12, 2500000.00, '2016-07-19 15:52:44', 0, 0, '44.jpg'),
	(143, '76 Runner Fun', 4, 3, 1, 10, 10, 22, 2500000.00, '2016-07-19 15:54:08', 0, 2, '45.jpg'),
	(144, '76 Runner Fun', 4, 3, 1, 10, 9, 12, 2500000.00, '2016-07-19 15:54:09', 0, 0, '45.jpg'),
	(145, '76 Runner Fun', 4, 3, 1, 10, 8, 32, 2500000.00, '2016-07-19 15:54:14', 0, 0, '45.jpg'),
	(146, '76 Runner Fun', 4, 3, 1, 10, 8, 65, 2500000.00, '2016-07-19 15:56:24', 0, 0, '46.jpg'),
	(147, '76 Runner Fun', 4, 3, 1, 10, 10, 12, 2500000.00, '2016-07-19 15:56:48', 0, 0, '46.jpg'),
	(148, '76 Runner Fun', 4, 3, 1, 10, 9, 23, 2500000.00, '2016-07-19 15:56:49', 0, 0, '46.jpg'),
	(149, 'Blaze Of Glory', 4, 3, 1, 10, 8, 32, 2500000.00, '2016-07-19 15:59:04', 0, 3, '47.jpg'),
	(150, 'Blaze Of Glory', 4, 3, 1, 10, 9, 12, 2500000.00, '2016-07-19 15:59:45', 0, 1, '47.jpg'),
	(151, 'Blaze Of Glory', 4, 3, 1, 10, 10, 21, 2500000.00, '2016-07-19 16:00:22', 0, 0, '47.jpg'),
	(152, 'Aril Graphic', 4, 3, 1, 1, 8, 21, 2500000.00, '2016-07-19 16:02:14', 0, 1, '48.jpg'),
	(153, 'Aril Graphic', 4, 3, 1, 1, 9, 32, 2500000.00, '2016-07-19 16:03:13', 0, 0, '48.jpg'),
	(154, 'Aril Graphic', 4, 3, 1, 1, 10, 32, 2500000.00, '2016-07-19 16:03:49', 0, 0, '48.jpg'),
	(155, 'Aril', 4, 3, 1, 5, 8, 12, 2500000.00, '2016-07-19 16:05:07', 0, 1, '49.jpg'),
	(156, 'Aril', 4, 3, 1, 5, 9, 32, 2500000.00, '2016-07-19 16:06:16', 0, 0, '49.jpg'),
	(157, 'Aril', 4, 3, 1, 5, 10, 32, 2500000.00, '2016-07-19 16:07:02', 0, 0, '49.jpg'),
	(158, 'Blaze Citi', 4, 3, 1, 5, 10, 44, 2500000.00, '2016-07-19 16:08:16', 0, 0, '50.jpg'),
	(159, 'Blaze Citi', 4, 3, 1, 5, 9, 12, 2500000.00, '2016-07-19 16:08:19', 0, 0, '50.jpg'),
	(160, 'Blaze Citi', 4, 3, 1, 5, 8, 32, 2500000.00, '2016-07-19 16:08:22', 0, 0, '50.jpg'),
	(161, 'Blaze', 4, 3, 1, 10, 10, 3, 2500000.00, '2016-07-19 16:11:25', 0, 1, '51.jpg'),
	(162, 'Blaze', 4, 3, 1, 10, 9, 12, 2500000.00, '2016-07-19 16:11:28', 0, 0, '51.jpg'),
	(163, 'Blaze', 4, 3, 1, 10, 8, 32, 2500000.00, '2016-07-19 16:11:32', 0, 0, '51.jpg'),
	(164, 'Blaze Of Glory Core', 4, 3, 1, 8, 10, 2, 2500000.00, '2016-07-19 16:13:45', 0, 1, '52.jpg'),
	(165, 'Blaze Of Glory Core', 4, 3, 1, 8, 9, 32, 2500000.00, '2016-07-19 16:13:47', 0, 0, '52.jpg'),
	(166, 'Blaze Of Glory Core', 4, 3, 1, 8, 8, 1, 2500000.00, '2016-07-19 16:13:48', 0, 0, '52.jpg'),
	(167, 'Fresh Foam 1080', 5, 1, 1, 5, 10, 32, 3500000.00, '2016-07-19 16:19:57', 0, 0, '53.jpg'),
	(168, 'Fresh Foam 1080', 5, 1, 1, 5, 9, 32, 3500000.00, '2016-07-19 16:20:00', 0, 0, '53.jpg'),
	(169, 'Fresh Foam 1080', 5, 1, 1, 5, 8, 32, 3500000.00, '2016-07-19 16:20:15', 0, 0, '53.jpg'),
	(170, 'Vazee 2090', 5, 1, 1, 1, 10, 12, 3500000.00, '2016-07-19 16:22:53', 0, 0, '55.jpg'),
	(171, 'Vazee 2090', 5, 1, 1, 1, 9, 2, 3500000.00, '2016-07-19 16:23:04', 0, 0, '55.jpg'),
	(172, 'Vazee 2090', 5, 1, 1, 1, 8, 21, 3500000.00, '2016-07-19 16:23:06', 0, 0, '55.jpg'),
	(173, 'Fresh Foam Gobi Trail', 5, 1, 1, 5, 10, 21, 3500000.00, '2016-07-19 16:24:10', 0, 0, '56.jpg'),
	(174, 'Fresh Foam Gobi Trail', 5, 1, 1, 5, 9, 32, 3500000.00, '2016-07-19 16:24:12', 0, 0, '56.jpg'),
	(175, 'Fresh Foam Gobi Trail', 5, 1, 1, 5, 8, 2, 3500000.00, '2016-07-19 16:24:13', 0, 0, '56.jpg'),
	(176, 'Fresh Foam Zante v2', 5, 1, 1, 10, 10, 23, 3500000.00, '2016-07-19 16:25:11', 0, 0, '57.jpg'),
	(177, 'Fresh Foam Zante v2', 5, 1, 1, 10, 9, 12, 3500000.00, '2016-07-19 16:25:52', 0, 0, '57.jpg'),
	(178, 'Fresh Foam Zante v2', 5, 1, 1, 10, 8, 32, 3500000.00, '2016-07-19 16:25:54', 0, 0, '57.jpg'),
	(179, '1260v6', 5, 1, 1, 5, 8, 8, 3500000.00, '2016-07-19 16:28:13', 0, 1, '58.jpg'),
	(180, '1260v6', 5, 1, 1, 5, 9, 12, 3500000.00, '2016-07-19 16:29:18', 0, 0, '58.jpg'),
	(181, '1260v6', 5, 1, 1, 5, 10, 31, 3500000.00, '2016-07-19 16:29:46', 0, 0, '58.jpg'),
	(182, 'Leadville v3', 5, 1, 1, 1, 10, 32, 3500000.00, '2016-07-19 16:30:57', 0, 0, '59.jpg'),
	(183, 'Leadville v3', 5, 1, 1, 1, 9, 21, 3500000.00, '2016-07-19 16:30:58', 0, 0, '59.jpg'),
	(184, 'Leadville v3', 5, 1, 1, 1, 8, 43, 3500000.00, '2016-07-19 16:31:10', 0, 0, '59.jpg'),
	(185, '860v6', 5, 1, 1, 7, 10, 22, 3500000.00, '2016-07-19 16:36:09', 0, 0, '60.jpg'),
	(186, '860v6', 5, 1, 1, 7, 9, 11, 3500000.00, '2016-07-19 16:36:11', 0, 0, '60.jpg'),
	(187, '860v6', 5, 1, 1, 7, 8, 21, 3500000.00, '2016-07-19 16:36:15', 0, 0, '60.jpg'),
	(188, '860v6', 5, 1, 1, 2, 10, 22, 3500000.00, '2016-07-19 16:37:56', 0, 0, '61.jpg'),
	(189, '860v6', 5, 1, 1, 2, 9, 12, 3500000.00, '2016-07-19 16:37:58', 0, 0, '61.jpg'),
	(190, '860v6', 5, 1, 1, 2, 8, 32, 3500000.00, '2016-07-19 16:37:59', 0, 0, '61.jpg'),
	(191, '910v3 Trail', 5, 1, 1, 6, 10, 12, 3500000.00, '2016-07-19 16:39:36', 0, 0, '62.jpg'),
	(192, '910v3 Trail', 5, 1, 1, 6, 9, 22, 3500000.00, '2016-07-19 16:39:38', 0, 0, '62.jpg'),
	(193, '910v3 Trail', 5, 1, 1, 6, 8, 32, 3500000.00, '2016-07-19 16:39:40', 0, 0, '62.jpg'),
	(194, 'Fresh Foam Zante v2 Breathe', 5, 1, 1, 5, 8, 32, 3500000.00, '2016-07-19 16:41:23', 0, 0, '63.jpg'),
	(195, 'Fresh Foam Zante v2 Breathe', 5, 1, 1, 5, 10, 21, 3500000.00, '2016-07-19 16:42:05', 0, 0, '63.jpg'),
	(196, 'Fresh Foam Zante v2 Breathe', 5, 1, 1, 5, 9, 32, 3500000.00, '2016-07-19 16:42:09', 0, 0, '63.jpg'),
	(197, 'Fresh Foam Vongo', 5, 1, 1, 8, 10, 212, 3500000.00, '2016-07-19 16:43:21', 0, 0, '64.jpg'),
	(198, 'Fresh Foam Vongo', 5, 1, 1, 8, 9, 21, 3500000.00, '2016-07-19 16:43:23', 0, 0, '64.jpg'),
	(199, 'Fresh Foam Vongo', 5, 1, 1, 8, 8, 32, 3500000.00, '2016-07-19 16:43:42', 0, 0, '64.jpg'),
	(200, 'Fresh Foam 1080', 5, 1, 1, 7, 10, 32, 3500000.00, '2016-07-19 16:45:40', 0, 0, '66.jpg'),
	(201, 'Fresh Foam 1080', 5, 1, 1, 7, 9, 12, 3500000.00, '2016-07-19 16:45:41', 0, 0, '66.jpg'),
	(202, 'Fresh Foam 1080', 5, 1, 1, 7, 8, 32, 3500000.00, '2016-07-19 16:45:43', 0, 0, '66.jpg'),
	(203, 'Fresh Foam Gobi Trail', 5, 1, 1, 10, 10, 32, 3500000.00, '2016-07-19 16:47:32', 0, 0, '67.jpg'),
	(204, 'Fresh Foam Gobi Trail', 5, 1, 1, 10, 9, 2, 3500000.00, '2016-07-19 16:47:33', 0, 0, '67.jpg'),
	(205, 'Fresh Foam Gobi Trail', 5, 1, 1, 10, 8, 1, 3500000.00, '2016-07-19 16:47:37', 0, 0, '67.jpg'),
	(206, 'Fresh Foam Zante v2', 5, 1, 1, 4, 10, 23, 3500000.00, '2016-07-19 16:49:45', 0, 0, '68.jpg'),
	(207, 'Fresh Foam Zante v2', 5, 1, 1, 4, 9, 2, 3500000.00, '2016-07-19 16:49:47', 0, 0, '68.jpg'),
	(208, 'Fresh Foam Zante v2', 5, 1, 1, 4, 8, 2, 3500000.00, '2016-07-19 16:49:52', 0, 0, '68.jpg'),
	(209, 'Fresh Foam Zante v2 LA', 5, 1, 1, 1, 10, 1, 3500000.00, '2016-07-19 16:51:08', 0, 0, '69.jpg'),
	(210, 'Fresh Foam Zante v2 LA', 5, 1, 1, 1, 8, 32, 3500000.00, '2016-07-19 16:51:09', 0, 0, '69.jpg'),
	(211, 'Fresh Foam Zante v2 LA', 5, 1, 1, 1, 9, 3, 3500000.00, '2016-07-19 16:51:12', 0, 0, '69.jpg'),
	(212, 'Fresh Foam 1080 Boston', 5, 2, 2, 10, 10, 223, 2600000.00, '2016-07-19 16:53:38', 0, 0, '70.jpg'),
	(213, 'Fresh Foam 1080 Boston', 5, 2, 2, 10, 9, 2, 2600000.00, '2016-07-19 16:53:40', 0, 0, '70.jpg'),
	(214, 'Fresh Foam 1080 Boston', 5, 2, 2, 10, 8, 3, 2600000.00, '2016-07-19 16:53:43', 0, 0, '70.jpg'),
	(215, 'LUNAREPIC LOW FLYKNIT', 2, 2, 2, 1, 10, 23, 2600000.00, '2016-07-19 17:01:02', 0, 0, '71.jpg'),
	(216, 'LUNAREPIC LOW FLYKNIT', 2, 2, 2, 1, 9, 23, 2600000.00, '2016-07-19 17:01:24', 0, 0, '71.jpg'),
	(217, 'LUNAREPIC LOW FLYKNIT', 2, 2, 2, 1, 8, 23, 2600000.00, '2016-07-19 17:01:26', 0, 0, '71.jpg'),
	(218, 'METCON 2 AMP', 2, 2, 2, 3, 10, 2, 2700000.00, '2016-07-19 17:02:49', 0, 0, '72.jpg'),
	(219, 'METCON 2 AMP', 2, 2, 2, 3, 9, 3, 2700000.00, '2016-07-19 17:02:50', 0, 0, '72.jpg'),
	(220, 'METCON 2 AMP', 2, 2, 2, 3, 8, 21, 2700000.00, '2016-07-19 17:02:54', 0, 0, '72.jpg'),
	(221, 'FREE TR FOCUS FLYKNIT', 2, 2, 2, 10, 10, 1, 2900000.00, '2016-07-19 17:04:41', 0, 0, '73.jpg'),
	(222, 'FREE TR FOCUS FLYKNIT', 2, 2, 2, 10, 9, 23, 2900000.00, '2016-07-19 17:05:55', 0, 0, '73.jpg'),
	(223, 'FREE TR FOCUS FLYKNIT', 2, 2, 2, 10, 8, 12, 2900000.00, '2016-07-19 17:05:57', 0, 0, '73.jpg'),
	(224, 'FREE CONNECT', 2, 2, 2, 10, 10, 31, 2900000.00, '2016-07-19 17:07:30', 0, 0, '74.jpg'),
	(225, 'FREE CONNECT', 2, 2, 2, 10, 9, 23, 2900000.00, '2016-07-19 17:07:32', 0, 0, '74.jpg'),
	(226, 'FREE CONNECT', 2, 2, 2, 10, 8, 21, 2900000.00, '2016-07-19 17:07:33', 0, 0, '74.jpg'),
	(227, 'LUNARGLIDE 8', 2, 2, 2, 10, 10, 12, 2900000.00, '2016-07-19 17:10:09', 0, 0, '75.jpg'),
	(228, 'LUNARGLIDE 8', 2, 2, 2, 10, 9, 21, 2900000.00, '2016-07-19 17:10:12', 0, 0, '75.jpg'),
	(229, 'LUNARGLIDE 8', 2, 2, 2, 10, 8, 3, 2900000.00, '2016-07-19 17:10:13', 0, 0, '75.jpg'),
	(230, 'ZOOM PEGASUS 33', 2, 2, 2, 12, 6, 213, 2900000.00, '2016-07-19 17:12:45', 0, 0, '76.jpg'),
	(231, 'ZOOM PEGASUS 33', 2, 2, 2, 12, 8, 12, 2900000.00, '2016-07-19 17:12:49', 0, 0, '76.jpg'),
	(232, 'ZOOM PEGASUS 33', 2, 2, 2, 12, 7, 21, 2900000.00, '2016-07-19 17:12:50', 0, 0, '76.jpg'),
	(233, 'LUNAR SCULPT', 2, 2, 2, 1, 8, 21, 2100000.00, '2016-07-19 17:16:02', 0, 0, '77.jpg'),
	(234, 'LUNAR SCULPT', 2, 2, 2, 1, 7, 12, 2100000.00, '2016-07-19 17:16:03', 0, 0, '77.jpg'),
	(235, 'LUNAR SCULPT', 2, 2, 2, 1, 6, 21, 2100000.00, '2016-07-19 17:16:04', 0, 0, '77.jpg'),
	(236, 'METCON 2', 2, 2, 2, 2, 8, 3, 2100000.00, '2016-07-19 17:17:51', 0, 0, '78.jpg'),
	(237, 'METCON 2', 2, 2, 2, 2, 7, 23, 2100000.00, '2016-07-19 17:17:53', 0, 0, '78.jpg'),
	(238, 'METCON 2', 2, 2, 2, 2, 6, 213, 2100000.00, '2016-07-19 17:17:55', 0, 0, '78.jpg'),
	(239, 'HUARACHE ULTRA', 2, 2, 2, 8, 8, 32, 3700000.00, '2016-07-19 17:19:33', 0, 0, '79.jpg'),
	(240, 'HUARACHE ULTRA', 2, 2, 2, 8, 7, 2, 3700000.00, '2016-07-19 17:19:36', 0, 0, '79.jpg'),
	(241, 'HUARACHE ULTRA', 2, 2, 2, 8, 6, 22, 3700000.00, '2016-07-19 17:19:41', 0, 0, '79.jpg'),
	(242, 'Lebron XIII', 2, 2, 2, 1, 6, 2112, 4500000.00, '2016-07-19 17:23:01', 0, 0, '80.jpg'),
	(243, 'Lebron XIII', 2, 2, 2, 1, 8, 21, 4500000.00, '2016-07-19 17:23:32', 0, 0, '80.jpg'),
	(244, 'Lebron XIII', 2, 2, 2, 1, 7, 2, 4500000.00, '2016-07-19 17:23:36', 0, 0, '80.jpg'),
	(246, 'Nike Air Max', 2, 2, 1, 8, 10, 21, 0.00, '2016-07-19 17:40:16', 0, 0, '81.jpg'),
	(247, 'Nike Air Max', 2, 2, 1, 8, 9, 43, 0.00, '2016-07-19 17:40:18', 0, 0, '81.jpg'),
	(248, 'Nike Air Max', 2, 2, 1, 8, 8, 32, 0.00, '2016-07-19 17:40:20', 0, 0, '81.jpg'),
	(249, 'Nike Air Max', 2, 2, 1, 8, 11, 21, 0.00, '2016-07-20 15:09:25', 0, 0, '81.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


-- Dumping structure for table shoe_database.role
CREATE TABLE IF NOT EXISTS `role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `Product` int(11) NOT NULL DEFAULT '0',
  `Bill` int(11) NOT NULL DEFAULT '0',
  `Account` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table shoe_database.role: ~3 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`ID`, `Name`, `Product`, `Bill`, `Account`) VALUES
	(0, 'Member', 0, 0, 0),
	(1, 'Administrator', 1, 1, 1),
	(15, 'new_role', 1, 0, 0);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


-- Dumping structure for table shoe_database.sport
CREATE TABLE IF NOT EXISTS `sport` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.sport: ~3 rows (approximately)
/*!40000 ALTER TABLE `sport` DISABLE KEYS */;
INSERT INTO `sport` (`ID`, `Name`) VALUES
	(1, 'Running'),
	(2, 'Training'),
	(3, 'Outdoor');
/*!40000 ALTER TABLE `sport` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
