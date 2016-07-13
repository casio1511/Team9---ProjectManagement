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
CREATE DATABASE IF NOT EXISTS `shoe_database` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `shoe_database`;


-- Dumping structure for table shoe_database.account
CREATE TABLE IF NOT EXISTS `account` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Password` char(255) DEFAULT NULL,
  `Email` char(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` char(255) DEFAULT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.account: ~5 rows (approximately)
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`ID`, `Username`, `Name`, `Password`, `Email`, `Address`, `Phone`, `Date`, `Status`) VALUES
	(1, 'test1', 'tester1', '123', 'test@gmail.com', '123', '0937151195', '2016-06-05 00:00:00', 1),
	(2, 'admin', 'admin', 'admin', 'admin@gmail.com', 'test', '1234567890', '2016-06-09 12:15:24', 1),
	(3, NULL, 'test', '1234', 'test_member@gmail.com', 'test', '1234567890', '2016-06-09 13:09:47', 0),
	(4, NULL, 'test2', '1234', 'test2_member@gmail.com', 'test', '1234567890', '2016-06-09 13:12:18', 0),
	(5, 'test2', 'test', '1234', 'test_member2@gmail.com', 'test', '1234567890', '2016-06-09 13:15:55', 0);
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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.bill: ~0 rows (approximately)
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` (`ID`, `Name`, `Address`, `Phone`, `Quantity`, `Total`, `Status`, `Date`) VALUES
	(1, 'Lê Minh Quân', '123456 Nguyễn Văn Cừ', '0937151195', 0, 0, 1, '2016-06-05 00:00:00');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;


-- Dumping structure for table shoe_database.category
CREATE TABLE IF NOT EXISTS `category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.category: ~6 rows (approximately)
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.color: ~9 rows (approximately)
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
	(9, 'Green');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.comment: ~2 rows (approximately)
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` (`ID`, `Username`, `Email`, `Content`, `Date`, `IDProduct`) VALUES
	(1, 'test', 'casio1511@gmail.com', 'Giày đẹp', '2016-06-05 00:00:00', 10),
	(2, 'tran', '1359043@itec.hcmus.edu.vn', 'dang test', '2016-06-13 22:09:55', 10),
	(3, 'tran', '1359043@itec.hcmus.edu.vn', 'test2', '2016-06-13 22:12:09', 10),
	(4, 'tran', '1359043@itec.hcmus.edu.vn', 'test lan 3', '2016-06-13 22:14:42', 10);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.detailbill: ~0 rows (approximately)
/*!40000 ALTER TABLE `detailbill` DISABLE KEYS */;
INSERT INTO `detailbill` (`ID`, `IDBill`, `Product`, `Quantity`, `Price`, `Total`) VALUES
	(1, 1, NULL, 2, NULL, 0);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- Dumping data for table shoe_database.product: ~36 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`ID`, `Name`, `Category`, `Sport`, `Gender`, `Color`, `Size`, `Quantity`, `Price`, `ImportedDate`, `Status`, `View`, `Image`) VALUES
	(1, 'SOLAR RNR', 1, 1, 1, 3, 8, 9, 5000000.00, '2016-06-05 00:00:00', 1, 29, '1.jpg'),
	(2, 'SOLAR RNR', 1, 1, 1, 3, 9, 12, 5000000.00, '2016-06-05 00:00:00', 1, 0, '1.jpg'),
	(3, 'SOLAR RNR', 1, 1, 1, 3, 10, 5, 5000000.00, '2016-06-05 00:00:00', 1, 0, '1.jpg'),
	(4, 'SOLAR RNR', 1, 1, 1, 5, 8, 8, 5000000.00, '2016-06-05 00:00:00', 1, 0, '1.2.jpg'),
	(5, 'SOLAR RNR', 1, 1, 1, 5, 9, 8, 5000000.00, '2016-06-05 00:00:00', 1, 0, '1.2.jpg'),
	(6, 'SOLAR RNR', 1, 1, 1, 5, 10, 6, 5000000.00, '2016-06-05 00:00:00', 1, 0, '1.2.jpg'),
	(7, 'PURE BOOST', 1, 1, 2, 1, 6, 6, 4000000.00, '2016-06-06 23:03:32', 1, 0, '2.jpg'),
	(8, 'PURE BOOST', 1, 1, 2, 1, 7, 7, 4000000.00, '2016-06-06 23:46:42', 1, 0, '2.jpg'),
	(9, 'PURE BOOST', 1, 1, 2, 1, 8, 5, 4000000.00, '2016-06-06 23:46:46', 1, 0, '2.jpg'),
	(10, 'PURE BOOST', 1, 1, 2, 7, 6, 8, 4000000.00, '2016-06-06 23:46:47', 1, 17, '2.1.jpg'),
	(11, 'PURE BOOST', 1, 1, 2, 7, 7, 4, 4000000.00, '2016-06-06 23:46:50', 1, 0, '2.1.jpg'),
	(12, 'PURE BOOST', 1, 1, 2, 7, 8, 2, 4000000.00, '2016-06-06 23:47:09', 1, 0, '2.1.jpg'),
	(13, 'BOUNCE:S4', 1, 1, 1, 4, 8, 10, 6000000.00, '2016-06-07 00:03:18', 1, 11, '3.jpg'),
	(14, 'BOUNCE:S4', 1, 1, 1, 4, 9, 5, 6000000.00, '2016-06-07 00:03:18', 1, 0, '3.jpg'),
	(15, 'BOUNCE:S4', 1, 1, 1, 4, 10, 9, 6000000.00, '2016-06-07 00:03:20', 1, 0, '3.jpg'),
	(16, 'BOUNCE:S4', 1, 1, 1, 1, 8, 5, 6000000.00, '2016-06-07 00:03:21', 1, 3, '3.2.jpg'),
	(17, 'BOUNCE:S4', 1, 1, 1, 1, 9, 3, 6000000.00, '2016-06-07 00:03:22', 1, 0, '3.2.jpg'),
	(18, 'BOUNCE:S4', 1, 1, 1, 1, 10, 11, 6000000.00, '2016-06-07 00:03:24', 1, 0, '3.2.jpg'),
	(19, 'BOUNCE:S4', 1, 1, 1, 8, 8, 12, 6000000.00, '2016-06-07 00:03:26', 1, 0, '3.3.jpg'),
	(20, 'BOUNCE:S4', 1, 1, 1, 8, 9, 2, 6000000.00, '2016-06-07 00:11:28', 1, 0, '3.3.jpg'),
	(21, 'BOUNCE:S4', 1, 1, 1, 8, 10, 5, 6000000.00, '2016-06-07 00:12:12', 1, 0, '3.3.jpg'),
	(22, 'TERREX AGRAVIC', 1, 3, 1, 9, 8, 9, 5000000.00, '2016-06-07 00:12:59', 1, 0, '4.jpg'),
	(23, 'TERREX AGRAVIC', 1, 3, 1, 9, 9, 8, 5000000.00, '2016-06-07 00:12:59', 1, 0, '4.jpg'),
	(24, 'TERREX AGRAVIC', 1, 3, 1, 9, 10, 6, 5000000.00, '2016-06-07 00:13:06', 1, 0, '4.jpg'),
	(25, 'TERREX AGRAVIC', 1, 3, 1, 1, 8, 4, 5000000.00, '2016-06-07 00:27:25', 1, 0, '4.1.jpg'),
	(26, 'TERREX AGRAVIC', 1, 3, 1, 1, 9, 9, 5000000.00, '2016-06-07 00:27:25', 1, 0, '4.1.jpg'),
	(27, 'TERREX AGRAVIC', 1, 3, 1, 1, 10, 15, 5000000.00, '2016-06-07 00:27:27', 1, 0, '4.1.jpg'),
	(28, 'Chuck Taylor', 3, 3, 2, 8, 6, 7, 1000000.00, '2016-06-07 00:42:46', 1, 19, '5.jpg'),
	(29, 'Chuck Taylor', 3, 3, 2, 8, 7, 7, 1000000.00, '2016-06-07 11:25:24', 1, 0, '5.jpg'),
	(30, 'Chuck Taylor', 3, 3, 2, 8, 8, 10, 1000000.00, '2016-06-07 11:25:40', 1, 0, '5.jpg'),
	(31, 'BLAZE OF GLORY SOCK', 4, 3, 1, 8, 8, 6, 1500000.00, '2016-06-07 11:33:50', 1, 4, '6.jpg'),
	(32, 'BLAZE OF GLORY SOCK', 4, 3, 1, 8, 9, 7, 1500000.00, '2016-06-07 11:33:51', 1, 0, '6.jpg'),
	(33, 'BLAZE OF GLORY SOCK', 4, 3, 1, 8, 10, 8, 1500000.00, '2016-06-07 11:33:51', 1, 0, '6.jpg'),
	(34, 'BLAZE OF GLORY SOCK', 4, 3, 1, 1, 8, 9, 1500000.00, '2016-06-07 11:38:26', 1, 54, '6.2.jpg'),
	(35, 'BLAZE OF GLORY SOCK', 4, 3, 1, 1, 9, 12, 1500000.00, '2016-06-07 11:38:27', 1, 0, '6.2.jpg'),
	(36, 'BLAZE OF GLORY SOCK', 4, 3, 1, 1, 10, 19, 1500000.00, '2016-06-07 11:38:27', 1, 0, '6.2.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


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
