-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 01, 2021 at 12:29 PM
-- Server version: 5.7.24
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maaif`
--

-- --------------------------------------------------------

--
-- Table structure for table `agrodealerproducts`
--

DROP TABLE IF EXISTS `agrodealerproducts`;
CREATE TABLE IF NOT EXISTS `agrodealerproducts` (
  `idagrodealerproducts` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `photourl` varchar(200) DEFAULT NULL,
  `productname` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `dealerid` int(10) UNSIGNED DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` int(10) UNSIGNED DEFAULT NULL,
  `status` int(10) UNSIGNED DEFAULT NULL,
  `orderid` int(10) UNSIGNED DEFAULT NULL,
  `ubsid` varchar(200) DEFAULT NULL,
  `quantitypresent` int(10) UNSIGNED DEFAULT NULL,
  `agrodealerproductunit` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `productSerial` varchar(200) DEFAULT NULL,
  `qtypurchased` int(10) UNSIGNED DEFAULT NULL,
  `variety` int(10) UNSIGNED DEFAULT NULL,
  `producttype` int(10) UNSIGNED DEFAULT NULL,
  `productpackage` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`idagrodealerproducts`),
  KEY `FK_agrodealerproducts_1` (`createdby`),
  KEY `FK_agrodealerproducts_2` (`status`),
  KEY `FK_agrodealerproducts_3` (`dealerid`),
  KEY `FK_agrodealerproducts_4` (`agrodealerproductunit`),
  KEY `FK_agrodealerproducts_5` (`variety`),
  KEY `FK_agrodealerproducts_6` (`producttype`),
  KEY `FK_agrodealerproducts_7` (`productpackage`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agrodealerproducts`
--

INSERT INTO `agrodealerproducts` (`idagrodealerproducts`, `photourl`, `productname`, `price`, `dealerid`, `createdon`, `createdby`, `status`, `orderid`, `ubsid`, `quantitypresent`, `agrodealerproductunit`, `description`, `productSerial`, `qtypurchased`, `variety`, `producttype`, `productpackage`) VALUES
(6, 'uploads\\maize.png', 'maize', 2300, NULL, '2018-06-11 22:24:02', 4, 1, 32, '112233', 60, NULL, 'Bags of maize for sale ', 'ser112233', 0, NULL, 1, NULL),
(7, 'uploads\\cassava.png', 'cassava', 4500, 1, '2018-05-22 18:27:16', 4, 1, NULL, '112233', 40, 7, 'Bags of cassava Grade 1 Uganda', 'ser112233', 0, NULL, 1, NULL),
(8, 'uploads\\coffee.png', 'coffee', 5000, 3, '2018-05-22 18:30:08', 4, 1, NULL, '112233', 40, 8, 'Quality Coffee Beans Ugandan Quality available on 67 % Off Government subsidized', 'ser112233', 0, NULL, 1, NULL),
(37, 'uploads\\tarpaulin.jpg', 'Tarpaulins', 24000, 1, '2018-06-12 14:06:34', 4, 1, 32, '112233', 60, 7, 'Our Economy tarpaulins are available in two grade options - 80gsm and 110gsm. ', 'ser112233', 0, NULL, 5, 6),
(38, 'uploads\\storage.png', 'Storage bags', 240, 1, '2018-06-12 14:07:08', 4, 1, 32, '112233', 60, 7, 'Bags of maize for sale ', 'ser112233', 0, NULL, 4, 6),
(40, 'uploads\\fertilizer.webp', 'Quality fertilizer', 1200, 1, '2018-06-12 14:09:52', 4, 1, 32, '112233', 60, 8, 'these are good fertilizers available for sale at a very cheap price', 'ser112233', 0, NULL, 3, 6),
(41, 'uploads\\johndeere.jpg', 'Tractor', 1200000, 1, '2018-06-16 15:56:28', 4, 5, 32, '112233', 60, 8, 'John Deere offers a full-line of front end loaders for sub-compact, compact, utility and row crop tractors.\r\n\r\n', 'ser112233', 0, NULL, 2, 6),
(42, 'uploads\\ortiva.jpg', 'ORTIVA', 1300, 1, '2018-06-16 15:56:47', 4, 5, 32, '112233', 10, 8, 'ORTIVA TOP® 325SC is the green and anti-stress top choice fungicide against powdery mildew, leaf spots & rusts in ornamental crops, peas & beans. ', 'ser112233', 0, NULL, 6, 6),
(43, 'uploads\\newholland.jpg', 'Tractor Hire', 500, 1, '2018-06-16 15:57:04', 4, 5, 32, '112233', 60, 8, 'We provide tractor hire services during ploughin and harrowing periods at UGX 500 per ha', 'ser112233', 0, NULL, 2, 6),
(44, 'uploads\\amistar.jpg', 'AMISTAR', 1300, 1, '2018-06-16 15:57:31', 4, 5, 32, '112233', 10, 8, 'AMISTAR contains azoxystrobin for the control of a range of fungal diseases in a range of crops. ', 'ser112233', 0, NULL, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `agrodealerproducttypes`
--

DROP TABLE IF EXISTS `agrodealerproducttypes`;
CREATE TABLE IF NOT EXISTS `agrodealerproducttypes` (
  `idagrodealerproducttypes` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `productname` varchar(45) NOT NULL,
  `createdby` int(10) UNSIGNED NOT NULL,
  `createdon` datetime NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idagrodealerproducttypes`),
  KEY `FK_agrodealerproducttypes_1` (`createdby`),
  KEY `FK_agrodealerproducttypes_2` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agrodealerproducttypes`
--

INSERT INTO `agrodealerproducttypes` (`idagrodealerproducttypes`, `productname`, `createdby`, `createdon`, `status`) VALUES
(1, 'seeds', 5, '2018-06-11 22:29:50', 5),
(2, 'tractor', 5, '2018-06-11 22:36:10', 5),
(3, 'fertilizer', 5, '2018-06-11 22:36:16', 5),
(4, 'storage bags', 5, '2018-06-12 09:16:59', 5),
(5, 'tarpaulins', 5, '2018-06-12 09:17:05', 5),
(6, 'fungicides', 5, '2018-06-12 09:17:14', 5),
(7, 'insecticides', 5, '2018-06-12 09:17:19', 5);

-- --------------------------------------------------------

--
-- Table structure for table `agrodealerproductunits`
--

DROP TABLE IF EXISTS `agrodealerproductunits`;
CREATE TABLE IF NOT EXISTS `agrodealerproductunits` (
  `idagrodealerproductunits` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unitname` varchar(45) NOT NULL,
  `description` varchar(100) NOT NULL,
  `createdby` int(10) UNSIGNED NOT NULL,
  `createdon` datetime NOT NULL,
  `statusID` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`idagrodealerproductunits`),
  KEY `FK_agrodealerproductunits_1` (`createdby`),
  KEY `FK_agrodealerproductunits_2` (`statusID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agrodealerproductunits`
--

INSERT INTO `agrodealerproductunits` (`idagrodealerproductunits`, `unitname`, `description`, `createdby`, `createdon`, `statusID`) VALUES
(1, 'Number', 'just a number to describe the quantity', 1, '2018-05-12 22:27:38', 1),
(2, 'Number', 'just a number to describe the quantity', 1, '2018-05-12 22:27:38', 1),
(3, 'Number', 'just a number to describe the quantity', 1, '2018-05-12 22:27:38', 1),
(4, 'Number', 'just a number to describe the quantity', 1, '2018-05-12 22:27:38', 1),
(5, 'Number', 'just a number to describe the quantity', 1, '2018-05-12 22:27:38', 1),
(6, 'Number', 'just a number to describe the quantity', 1, '2018-05-12 22:27:38', 1),
(7, 'bags', 'bags', 5, '2018-05-22 18:09:37', 1),
(8, 'kilogrammes', 'kgs', 5, '2018-05-22 18:09:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `agrodealers`
--

DROP TABLE IF EXISTS `agrodealers`;
CREATE TABLE IF NOT EXISTS `agrodealers` (
  `idagrodealers` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `companyname` varchar(100) NOT NULL,
  `regionid` int(10) UNSIGNED DEFAULT NULL,
  `ownerid` int(10) UNSIGNED DEFAULT NULL,
  `contactaddress` varchar(100) NOT NULL,
  `phone` int(10) UNSIGNED NOT NULL,
  `createdby` int(10) UNSIGNED NOT NULL,
  `createdon` datetime NOT NULL,
  `statusID` int(10) UNSIGNED NOT NULL,
  `registrationcertid` varchar(45) NOT NULL,
  `dateregistered` datetime NOT NULL,
  PRIMARY KEY (`idagrodealers`),
  KEY `FK_agrodealers_1` (`statusID`),
  KEY `FK_agrodealers_2` (`createdby`),
  KEY `FK_agrodealers_3` (`ownerid`),
  KEY `FK_agrodealers_4` (`regionid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agrodealers`
--

INSERT INTO `agrodealers` (`idagrodealers`, `companyname`, `regionid`, `ownerid`, `contactaddress`, `phone`, `createdby`, `createdon`, `statusID`, `registrationcertid`, `dateregistered`) VALUES
(1, 'West Agro dealers', 1, 4, '3662 Mbarara', 728140544, 1, '2018-05-12 22:13:41', 1, 'CV123456O', '2018-06-05 00:00:00'),
(2, 'sample test  Agro dealers', 2, 1, '3662 Mbarara', 728140544, 1, '2018-05-12 22:13:41', 1, 'CV123456O', '2018-06-05 00:00:00'),
(3, 'Superior Agro dealers', 3, 2, '3662 Mbarara', 728140544, 1, '2018-05-12 22:13:41', 1, 'CV123456O', '2018-06-05 00:00:00'),
(4, 'Superior Agro dealers', 6, 3, '3662 Mbarara', 728140544, 1, '2018-05-12 22:13:41', 1, 'CV123456O', '2018-06-05 00:00:00'),
(5, 'West Agro dealers', 4, 2, '3662 Mbarara', 728140544, 1, '2018-05-12 22:13:41', 1, 'CV123456O', '2018-06-05 00:00:00'),
(6, 'sample test  Agro dealers', 5, 5, '3662 Mbarara', 728140544, 1, '2018-05-12 22:13:41', 1, 'CV123456O', '2018-06-05 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `agrodealersperregion`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `agrodealersperregion`;
CREATE TABLE IF NOT EXISTS `agrodealersperregion` (
`idagrodealers` int(10) unsigned
,`agrodealers` bigint(21)
,`regionid` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
CREATE TABLE IF NOT EXISTS `audit` (
  `idaudit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `timer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(10) UNSIGNED NOT NULL,
  `action` varchar(200) NOT NULL,
  `purchase` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idaudit`),
  KEY `FK_audit_1` (`createdby`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit`
--

INSERT INTO `audit` (`idaudit`, `timer`, `createdby`, `action`, `purchase`) VALUES
(1, '2018-05-22 15:09:37', 5, 'saved product bags', NULL),
(2, '2018-05-22 15:09:55', 5, 'saved product kilogrammes', NULL),
(3, '2018-05-22 15:25:46', 4, 'saved product Beans', NULL),
(4, '2018-05-22 15:26:18', 4, 'saved product maize', NULL),
(5, '2018-05-22 15:27:16', 4, 'saved product cassava', NULL),
(6, '2018-05-22 15:30:08', 4, 'saved product coffee', NULL),
(7, '2018-05-22 18:43:07', 2, 'purchased cassava at Tue May 22 21:43:07 EAT 2018 for 4500', 'purchase'),
(8, '2018-05-22 18:43:40', 2, 'purchased coffee at Tue May 22 21:43:40 EAT 2018 for 5000', 'purchase'),
(9, '2018-05-23 05:59:22', 2, 'purchased maize at Wed May 23 08:59:22 EAT 2018 for 2300', 'purchase'),
(10, '2018-05-23 06:05:53', 2, 'purchased maize at Wed May 23 09:05:53 EAT 2018 for 2300', 'purchase'),
(11, '2018-05-23 06:09:58', 2, 'purchased maize at Wed May 23 09:09:58 EAT 2018 for 2300', 'purchase'),
(12, '2018-05-24 08:12:14', 4, 'saved distribution channel Western Channel', NULL),
(13, '2018-05-24 09:38:55', 3, 'supervised  Western Channel', NULL),
(14, '2018-05-24 09:41:00', 3, 'supervised  Western Channel', NULL),
(15, '2018-05-24 09:42:11', 4, 'saved distribution channel Eastern Channel', NULL),
(17, '2018-05-24 09:42:42', 4, 'saved distribution channel Northern channel', NULL),
(18, '2018-05-24 09:46:28', 4, 'saved distribution channel Southern  Channel', NULL),
(19, '2018-05-24 09:46:50', 3, 'supervised  Southern  Channel', NULL),
(20, '2018-05-29 12:44:48', 4, 'saved product yellow corn ', NULL),
(21, '2018-06-07 20:22:42', 2, 'purchased yellow corn  at Thu Jun 07 23:22:42 EAT 2018 for 1200', 'purchase'),
(22, '2018-06-07 20:27:04', 2, 'purchased yellow corn  at Thu Jun 07 23:27:04 EAT 2018 for 1200', 'purchase'),
(23, '2018-06-07 20:37:32', 2, 'purchased yellow corn  at Thu Jun 07 23:37:32 EAT 2018 for 1200', 'purchase'),
(24, '2018-06-07 20:38:32', 2, 'purchased yellow corn  at Thu Jun 07 23:38:32 EAT 2018 for 1200', 'purchase'),
(25, '2018-06-07 20:45:22', 2, 'purchased yellow corn  at Thu Jun 07 23:45:22 EAT 2018 for 1200', 'purchase'),
(26, '2018-06-07 21:16:33', 2, 'purchased yellow corn  at Fri Jun 08 00:16:33 EAT 2018 for 1200', 'purchase'),
(27, '2018-06-07 21:18:13', 2, 'purchased yellow corn  at Fri Jun 08 00:18:13 EAT 2018 for 1200', 'purchase'),
(28, '2018-06-07 21:19:14', 2, 'purchased yellow corn  at Fri Jun 08 00:19:14 EAT 2018 for 1200', 'purchase'),
(29, '2018-06-08 05:44:21', 4, 'Deleted product', NULL),
(31, '2018-06-08 05:56:43', 4, 'updated product Beans', NULL),
(32, '2018-06-08 06:05:14', 4, 'updated product Beans', NULL),
(33, '2018-06-08 06:06:08', 4, 'saved product Bio Fortified', NULL),
(34, '2018-06-11 19:23:41', 4, 'updated product Beans', NULL),
(35, '2018-06-11 19:24:02', 4, 'updated product maize', NULL),
(36, '2018-06-11 19:29:50', 5, 'saved user seeds', NULL),
(37, '2018-06-11 19:31:29', 4, 'updated product Beans', NULL),
(38, '2018-06-11 19:36:10', 5, 'saved user tractor', NULL),
(39, '2018-06-11 19:36:16', 5, 'saved user fertilizer', NULL),
(40, '2018-06-11 19:37:24', 4, 'saved product Fertilizer', NULL),
(41, '2018-06-11 19:38:34', 4, 'saved product Massey Ferguson tractors', NULL),
(54, '2018-06-11 20:16:11', 2, 'purchased Beans at Mon Jun 11 23:16:11 EAT 2018 for 2300', 'purchase'),
(55, '2018-06-11 20:16:45', 2, 'purchased Beans at Mon Jun 11 23:16:45 EAT 2018 for 2300', 'purchase'),
(56, '2018-06-11 20:23:44', 2, 'purchased maize at Mon Jun 11 23:23:44 EAT 2018 for 2300', 'purchase'),
(57, '2018-06-11 20:26:34', 2, 'purchased Beans at Mon Jun 11 23:26:34 EAT 2018 for 2300', 'purchase'),
(58, '2018-06-11 20:56:12', 2, 'purchased Beans at Mon Jun 11 23:56:12 EAT 2018 for 2300', 'purchase'),
(59, '2018-06-11 20:56:17', 2, 'purchased maize at Mon Jun 11 23:56:17 EAT 2018 for 2300', 'purchase'),
(60, '2018-06-11 21:03:24', 2, 'purchased Beans at Tue Jun 12 00:03:24 EAT 2018 for 2300', 'purchase'),
(62, '2018-06-11 21:14:47', 2, 'Deleted userpurchase', NULL),
(63, '2018-06-11 22:15:59', 2, 'Deleted userpurchase', NULL),
(64, '2018-06-11 22:18:29', 2, 'purchased Beans at Tue Jun 12 01:18:29 EAT 2018 for 2300', 'purchase'),
(65, '2018-06-11 22:49:45', 2, 'purchased Beans at Tue Jun 12 01:49:45 EAT 2018 for 13800', 'purchase'),
(66, '2018-06-12 06:08:16', 4, 'Deleted product', NULL),
(67, '2018-06-12 06:08:26', 4, 'Deleted product', NULL),
(68, '2018-06-12 06:08:45', 4, 'Deleted product', NULL),
(69, '2018-06-12 06:11:22', 4, 'saved product Quality fertilizer', NULL),
(70, '2018-06-12 06:12:52', 4, 'saved product Tractor', NULL),
(71, '2018-06-12 06:13:16', 4, 'updated product Quality fertilizer', NULL),
(72, '2018-06-12 06:16:59', 5, 'saved user storage bags', NULL),
(73, '2018-06-12 06:17:05', 5, 'saved user tarpaulins', NULL),
(74, '2018-06-12 06:17:14', 5, 'saved user fungicides', NULL),
(75, '2018-06-12 06:17:19', 5, 'saved user insecticides', NULL),
(76, '2018-06-12 06:18:26', 4, 'saved product Storage bags', NULL),
(77, '2018-06-12 06:20:07', 4, 'saved product Tarpaulins', NULL),
(78, '2018-06-12 06:23:21', 4, 'saved product ORTIVA', NULL),
(79, '2018-06-12 06:25:47', 4, 'saved product AMISTAR', NULL),
(80, '2018-06-12 06:27:51', 4, 'saved product DAP', NULL),
(81, '2018-06-12 06:42:13', 2, 'purchased maize at Tue Jun 12 09:42:13 EAT 2018 for 2300', 'purchase'),
(82, '2018-06-12 06:42:17', 2, 'purchased cassava at Tue Jun 12 09:42:17 EAT 2018 for 4500', 'purchase'),
(83, '2018-06-12 06:42:19', 2, 'purchased coffee at Tue Jun 12 09:42:19 EAT 2018 for 5000', 'purchase'),
(84, '2018-06-12 06:52:25', 4, 'updated product Tractor', 'purchase'),
(85, '2018-06-12 06:53:29', 4, 'saved product Tractor Hire', 'purchase'),
(86, '2018-06-12 08:43:34', 2, 'purchased maize at Tue Jun 12 11:43:34 EAT 2018 for 6900', 'purchase'),
(87, '2018-06-12 11:04:18', 4, 'Deleted product', NULL),
(88, '2018-06-12 11:04:28', 4, 'saved product AMISTAR', NULL),
(89, '2018-06-12 11:04:46', 4, 'Deleted product', NULL),
(90, '2018-06-12 11:04:55', 4, 'saved product DAP', NULL),
(91, '2018-06-12 11:05:11', 4, 'Deleted product', NULL),
(92, '2018-06-12 11:05:16', 4, 'saved product Tractor Hire', NULL),
(93, '2018-06-12 11:05:33', 4, 'Deleted product', NULL),
(94, '2018-06-12 11:05:53', 4, 'saved product AMISTAR', NULL),
(95, '2018-06-12 11:06:08', 4, 'Deleted product', NULL),
(96, '2018-06-12 11:06:12', 4, 'saved product ORTIVA', NULL),
(97, '2018-06-12 11:06:31', 4, 'Deleted product', NULL),
(98, '2018-06-12 11:06:34', 4, 'saved product Tarpaulins', NULL),
(99, '2018-06-12 11:06:53', 4, 'Deleted product', NULL),
(100, '2018-06-12 11:07:08', 4, 'saved product Storage bags', NULL),
(101, '2018-06-12 11:08:11', 4, 'Deleted product', NULL),
(102, '2018-06-12 11:08:14', 4, 'saved product Tractor', NULL),
(103, '2018-06-12 11:09:35', 4, 'Deleted product', NULL),
(104, '2018-06-12 11:09:52', 4, 'saved product Quality fertilizer', NULL),
(105, '2018-06-12 12:53:59', 2, 'purchased Beans at Tue Jun 12 15:53:59 EAT 2018 for 4600', 'purchase'),
(106, '2018-06-12 12:54:51', 2, 'purchased cassava at Tue Jun 12 15:54:51 EAT 2018 for 22500', 'purchase'),
(107, '2018-06-12 12:55:28', 2, 'purchased coffee at Tue Jun 12 15:55:28 EAT 2018 for 10000', 'purchase'),
(108, '2018-06-12 12:58:04', 2, 'purchased coffee at Tue Jun 12 15:58:04 EAT 2018 for 25000', 'purchase'),
(109, '2018-06-12 13:42:31', 2, 'purchased Beans at Tue Jun 12 16:42:31 EAT 2018 for 11500', 'purchase'),
(110, '2018-06-12 14:19:05', 2, 'purchased coffee at Tue Jun 12 17:19:05 EAT 2018 for 10000', 'purchase'),
(111, '2018-06-12 14:19:29', 2, 'purchased Beans at Tue Jun 12 17:19:29 EAT 2018 for 6900', 'purchase'),
(112, '2018-06-13 07:49:24', 4, 'Deleted product', NULL),
(113, '2018-06-13 08:58:05', 2, 'purchased cassava at Wed Jun 13 11:58:05 EAT 2018 for 4500', 'purchase'),
(114, '2018-06-13 08:58:30', 2, 'Deleted userpurchase', 'purchase'),
(115, '2018-06-13 08:58:36', 2, 'Deleted userpurchase', 'purchase'),
(116, '2018-06-13 08:58:55', 2, 'Deleted userpurchase', 'purchase'),
(119, '2018-06-13 11:47:23', 2, 'purchased maize at Wed Jun 13 14:47:23 EAT 2018 for 117300', 'purchase'),
(120, '2018-06-13 11:47:53', 2, 'Deleted userpurchase', 'purchase'),
(121, '2018-06-13 11:47:56', 2, 'Deleted userpurchase', 'purchase'),
(122, '2018-06-13 11:47:59', 2, 'Deleted userpurchase', 'purchase'),
(123, '2018-06-13 11:48:02', 2, 'Deleted userpurchase', 'purchase'),
(124, '2018-06-13 11:48:05', 2, 'Deleted userpurchase', 'purchase'),
(125, '2018-06-13 11:48:08', 2, 'Deleted userpurchase', 'purchase'),
(126, '2018-06-13 11:48:12', 2, 'Deleted userpurchase', 'purchase'),
(133, '2018-06-13 11:48:58', 2, 'purchased maize at Wed Jun 13 14:48:58 EAT 2018 for 2300', 'purchase'),
(134, '2018-06-13 12:01:00', 2, 'purchased DAP at Wed Jun 13 15:01:00 EAT 2018 for 2300', 'purchase'),
(135, '2018-06-13 12:01:15', 2, 'purchased AMISTAR at Wed Jun 13 15:01:15 EAT 2018 for 1300', 'purchase'),
(136, '2018-06-13 12:01:26', 2, 'purchased Storage bags at Wed Jun 13 15:01:26 EAT 2018 for 240', 'purchase'),
(137, '2018-06-13 12:02:11', 2, 'purchased Tractor at Wed Jun 13 15:02:11 EAT 2018 for 1200000', 'purchase'),
(138, '2018-06-13 12:03:35', 2, 'purchased AMISTAR at Wed Jun 13 15:03:35 EAT 2018 for 1300', 'purchase'),
(139, '2018-06-13 12:07:16', 2, 'purchased DAP at Wed Jun 13 15:07:16 EAT 2018 for 2300', 'purchase'),
(140, '2018-06-13 12:09:47', 2, 'purchased DAP at Wed Jun 13 15:09:47 EAT 2018 for 2300', 'purchase'),
(141, '2018-06-13 12:10:00', 2, 'purchased Storage bags at Wed Jun 13 15:10:00 EAT 2018 for 240', 'purchase'),
(142, '2018-06-13 12:10:07', 2, 'Deleted userpurchase', 'purchase'),
(143, '2018-06-13 12:10:12', 2, 'Deleted userpurchase', 'purchase'),
(144, '2018-06-13 12:14:40', 2, 'purchased Storage bags at Wed Jun 13 15:14:40 EAT 2018 for 240', 'purchase'),
(145, '2018-06-13 12:38:33', 2, 'Deleted userpurchase', NULL),
(146, '2018-06-13 12:38:36', 2, 'Deleted userpurchase', NULL),
(147, '2018-06-13 12:38:39', 2, 'Deleted userpurchase', NULL),
(148, '2018-06-13 12:38:43', 2, 'Deleted userpurchase', NULL),
(149, '2018-06-13 12:38:46', 2, 'Deleted userpurchase', NULL),
(150, '2018-06-13 12:38:49', 2, 'Deleted userpurchase', NULL),
(151, '2018-06-13 12:38:52', 2, 'Deleted userpurchase', NULL),
(152, '2018-06-13 12:38:56', 2, 'Deleted userpurchase', NULL),
(155, '2018-06-13 12:39:20', 2, 'purchased DAP at Wed Jun 13 15:39:20 EAT 2018 for 2300', 'purchase'),
(156, '2018-06-13 12:39:27', 2, 'purchased ORTIVA at Wed Jun 13 15:39:27 EAT 2018 for 1300', 'purchase'),
(157, '2018-06-13 12:40:58', 2, 'purchased DAP at Wed Jun 13 15:40:58 EAT 2018 for 2300', 'purchase'),
(158, '2018-06-13 12:41:13', 2, 'purchased ORTIVA at Wed Jun 13 15:41:13 EAT 2018 for 1300', 'purchase'),
(159, '2018-06-13 12:42:11', 2, 'purchased Tractor Hire at Wed Jun 13 15:42:11 EAT 2018 for 500', 'purchase'),
(160, '2018-06-13 12:52:09', 2, 'purchased DAP at Wed Jun 13 15:52:09 EAT 2018 for 2300', 'purchase'),
(161, '2018-06-13 12:54:43', 2, 'purchased DAP at Wed Jun 13 15:54:43 EAT 2018 for 6900', 'purchase'),
(162, '2018-06-13 13:01:19', 2, 'purchased DAP at Wed Jun 13 16:01:19 EAT 2018 for 2300', 'purchase'),
(163, '2018-06-13 14:31:55', 2, 'Deleted userpurchase', NULL),
(166, '2018-06-13 14:32:14', 2, 'Deleted userpurchase', NULL),
(169, '2018-06-13 15:05:46', 2, 'purchased maize at Wed Jun 13 18:05:46 EAT 2018 for 2300', 'purchase'),
(170, '2018-06-13 15:05:52', 2, 'purchased DAP at Wed Jun 13 18:05:52 EAT 2018 for 2300', 'purchase'),
(171, '2018-06-13 15:20:40', 2, 'Deleted userpurchase', NULL),
(172, '2018-06-13 15:20:43', 2, 'Deleted userpurchase', NULL),
(173, '2018-06-13 15:20:46', 2, 'Deleted userpurchase', NULL),
(174, '2018-06-13 15:20:49', 2, 'Deleted userpurchase', NULL),
(175, '2018-06-13 15:20:52', 2, 'Deleted userpurchase', NULL),
(176, '2018-06-13 15:20:55', 2, 'Deleted userpurchase', NULL),
(177, '2018-06-13 15:20:57', 2, 'Deleted userpurchase', NULL),
(178, '2018-06-13 15:21:02', 2, 'Deleted userpurchase', NULL),
(179, '2018-06-13 15:21:25', 2, 'purchased DAP at Wed Jun 13 18:21:25 EAT 2018 for 2300', 'purchase'),
(180, '2018-06-14 06:17:11', 2, 'purchased cassava at Thu Jun 14 09:17:11 EAT 2018 for 4500.0', 'purchase'),
(181, '2018-06-14 06:17:22', 2, 'purchased Tractor Hire at Thu Jun 14 09:17:22 EAT 2018 for 500.0', 'purchase'),
(182, '2018-06-14 06:17:34', 2, 'purchased DAP at Thu Jun 14 09:17:34 EAT 2018 for 2300.0', 'purchase'),
(183, '2018-06-14 09:26:16', 5, 'saved govtpayments Maize', NULL),
(184, '2018-06-14 09:26:21', 5, 'saved govtpayments Beans', NULL),
(185, '2018-06-14 09:26:26', 5, 'saved govtpayments cassava', NULL),
(186, '2018-06-14 09:26:32', 5, 'saved govtpayments Matoke', NULL),
(187, '2018-06-14 09:44:35', 10, 'saved user null', NULL),
(188, '2018-06-14 09:44:53', 10, 'saved user null', NULL),
(189, '2018-06-15 05:18:21', 2, 'purchased maize at Fri Jun 15 08:18:21 EAT 2018 for 6900.0', 'purchase'),
(190, '2018-06-15 05:19:01', 2, 'Deleted userpurchase', 'purchase'),
(191, '2018-06-15 05:19:06', 2, 'Deleted userpurchase', 'purchase'),
(192, '2018-06-15 05:19:09', 2, 'Deleted userpurchase', 'purchase'),
(193, '2018-06-16 05:14:37', 2, 'purchased maize at Sat Jun 16 08:14:37 EAT 2018 for 6900.0', 'purchase'),
(194, '2018-06-16 05:14:55', 2, 'payed for DAP at Sat Jun 16 08:14:55 EAT 2018 for 2300.0', 'purchase'),
(195, '2018-06-16 05:44:09', 2, 'payed for DAP at Sat Jun 16 08:44:09 EAT 2018 for 2300.0', 'purchase'),
(196, '2018-06-16 05:44:15', 2, 'payed for DAP at Sat Jun 16 08:44:15 EAT 2018 for 2300.0', 'purchase'),
(197, '2018-06-16 05:45:52', 2, 'payed for DAP at Sat Jun 16 08:45:52 EAT 2018 for 2300.0', 'purchase'),
(198, '2018-06-16 05:46:07', 2, 'payed for DAP at Sat Jun 16 08:46:07 EAT 2018 for 2300.0', 'purchase'),
(199, '2018-06-16 06:27:24', 2, 'payed for DAP at Sat Jun 16 09:27:24 EAT 2018 for 2300.0', 'purchase'),
(200, '2018-06-16 06:33:03', 2, 'payed for DAP at Sat Jun 16 09:33:03 EAT 2018 for 2300.0', 'purchase'),
(201, '2018-06-16 06:33:03', 2, 'payed for maize at Sat Jun 16 09:33:03 EAT 2018 for 6900.0', 'purchase'),
(202, '2018-06-16 06:33:03', 2, 'payed for maize at Sat Jun 16 09:33:03 EAT 2018 for 6900.0', 'purchase'),
(203, '2018-06-16 06:35:08', 2, 'payed for DAP at Sat Jun 16 09:35:08 EAT 2018 for 2300.0', 'purchase'),
(204, '2018-06-16 06:35:08', 2, 'payed for maize at Sat Jun 16 09:35:08 EAT 2018 for 6900.0', 'purchase'),
(205, '2018-06-16 06:35:09', 2, 'payed for maize at Sat Jun 16 09:35:09 EAT 2018 for 6900.0', 'purchase'),
(206, '2018-06-16 06:45:32', 2, 'payed for DAP at Sat Jun 16 09:45:32 EAT 2018 for 2300.0', 'purchase'),
(207, '2018-06-16 06:45:32', 2, 'payed for maize at Sat Jun 16 09:45:32 EAT 2018 for 6900.0', 'purchase'),
(208, '2018-06-16 06:45:32', 2, 'payed for maize at Sat Jun 16 09:45:32 EAT 2018 for 6900.0', 'purchase'),
(209, '2018-06-16 06:45:47', 2, 'payed for DAP at Sat Jun 16 09:45:47 EAT 2018 for 2300.0', 'purchase'),
(210, '2018-06-16 06:45:47', 2, 'payed for maize at Sat Jun 16 09:45:47 EAT 2018 for 6900.0', 'purchase'),
(211, '2018-06-16 06:45:47', 2, 'payed for maize at Sat Jun 16 09:45:47 EAT 2018 for 6900.0', 'purchase'),
(212, '2018-06-16 06:47:07', 2, 'payed for DAP at Sat Jun 16 09:47:07 EAT 2018 for 2300.0', 'purchase'),
(213, '2018-06-16 06:47:08', 2, 'payed for maize at Sat Jun 16 09:47:08 EAT 2018 for 6900.0', 'purchase'),
(214, '2018-06-16 06:47:08', 2, 'payed for maize at Sat Jun 16 09:47:08 EAT 2018 for 6900.0', 'purchase'),
(215, '2018-06-16 06:50:50', 2, 'payed for DAP at Sat Jun 16 09:50:50 EAT 2018 for 2300.0', 'purchase'),
(216, '2018-06-16 06:50:50', 2, 'payed for maize at Sat Jun 16 09:50:50 EAT 2018 for 6900.0', 'purchase'),
(217, '2018-06-16 06:50:50', 2, 'payed for maize at Sat Jun 16 09:50:50 EAT 2018 for 6900.0', 'purchase'),
(218, '2018-06-16 06:51:08', 2, 'payed for DAP at Sat Jun 16 09:51:08 EAT 2018 for 2300.0', 'purchase'),
(219, '2018-06-16 06:51:08', 2, 'payed for maize at Sat Jun 16 09:51:08 EAT 2018 for 6900.0', 'purchase'),
(220, '2018-06-16 06:51:08', 2, 'payed for maize at Sat Jun 16 09:51:08 EAT 2018 for 6900.0', 'purchase'),
(221, '2018-06-16 06:52:05', 2, 'payed for DAP at Sat Jun 16 09:52:05 EAT 2018 for 2300.0', 'purchase'),
(222, '2018-06-16 06:52:05', 2, 'payed for maize at Sat Jun 16 09:52:05 EAT 2018 for 6900.0', 'purchase'),
(223, '2018-06-16 06:52:05', 2, 'payed for maize at Sat Jun 16 09:52:05 EAT 2018 for 6900.0', 'purchase'),
(224, '2018-06-16 06:52:50', 2, 'payed for DAP at Sat Jun 16 09:52:50 EAT 2018 for 2300.0', 'purchase'),
(225, '2018-06-16 06:52:50', 2, 'payed for maize at Sat Jun 16 09:52:50 EAT 2018 for 6900.0', 'purchase'),
(226, '2018-06-16 06:52:50', 2, 'payed for maize at Sat Jun 16 09:52:50 EAT 2018 for 6900.0', 'purchase'),
(227, '2018-06-16 06:54:26', 2, 'payed for DAP at Sat Jun 16 09:54:26 EAT 2018 for 2300.0', 'purchase'),
(228, '2018-06-16 06:54:27', 2, 'payed for maize at Sat Jun 16 09:54:27 EAT 2018 for 6900.0', 'purchase'),
(229, '2018-06-16 06:54:27', 2, 'payed for maize at Sat Jun 16 09:54:27 EAT 2018 for 6900.0', 'purchase'),
(230, '2018-06-16 11:03:26', 5, 'Approved a user purchase', NULL),
(231, '2018-06-16 11:23:42', 2, 'payed for DAP at Sat Jun 16 14:23:42 EAT 2018 for 2300.0', 'purchase'),
(232, '2018-06-16 11:23:42', 2, 'payed for maize at Sat Jun 16 14:23:42 EAT 2018 for 6900.0', 'purchase'),
(233, '2018-06-16 11:26:58', 2, 'purchased maize at Sat Jun 16 14:26:58 EAT 2018 for 2300.0', 'purchase'),
(234, '2018-06-16 11:57:25', 4, 'saved orders DAP', NULL),
(235, '2018-06-16 12:56:23', 4, 'Deleted product', NULL),
(236, '2018-06-16 12:56:28', 4, 'saved product Tractor', NULL),
(237, '2018-06-16 12:56:45', 4, 'Deleted product', NULL),
(238, '2018-06-16 12:56:47', 4, 'saved product ORTIVA', NULL),
(239, '2018-06-16 12:57:01', 4, 'Deleted product', NULL),
(240, '2018-06-16 12:57:04', 4, 'saved product Tractor Hire', NULL),
(241, '2018-06-16 12:57:22', 4, 'Deleted product', NULL),
(242, '2018-06-16 12:57:31', 4, 'saved product AMISTAR', NULL),
(243, '2018-06-16 12:57:44', 4, 'Deleted product', NULL),
(245, '2018-06-16 13:56:08', 2, 'payed for maize at Sat Jun 16 16:56:08 EAT 2018 for 6900.0', 'purchase'),
(246, '2018-06-16 13:56:08', 2, 'payed for maize at Sat Jun 16 16:56:08 EAT 2018 for 2300.0', 'purchase'),
(247, '2018-06-16 15:49:45', 2, 'purchased maize at Sat Jun 16 18:49:45 EAT 2018 for 2300.0', 'purchase'),
(248, '2018-06-16 15:49:47', 2, 'purchased maize at Sat Jun 16 18:49:47 EAT 2018 for 0.0', 'purchase'),
(249, '2018-06-16 15:49:55', 2, 'Deleted userpurchase', 'purchase'),
(250, '2018-06-16 15:51:22', 2, 'Deleted userpurchase', 'purchase'),
(251, '2018-06-16 15:52:42', 2, 'purchased maize at Sat Jun 16 18:52:42 EAT 2018 for 2300.0', 'purchase'),
(252, '2018-06-16 15:52:46', 2, 'purchased cassava at Sat Jun 16 18:52:46 EAT 2018 for 0.0', 'purchase'),
(253, '2018-06-16 15:52:47', 2, 'purchased coffee at Sat Jun 16 18:52:47 EAT 2018 for 0.0', 'purchase'),
(254, '2018-06-16 15:52:56', 2, 'Deleted userpurchase', 'purchase'),
(255, '2018-06-16 15:53:00', 2, 'Deleted userpurchase', 'purchase'),
(256, '2018-06-16 15:53:05', 2, 'Deleted userpurchase', 'purchase'),
(259, '2018-06-16 15:54:09', 2, 'purchased maize at Sat Jun 16 18:54:09 EAT 2018 for 2300.0', 'purchase'),
(260, '2018-06-16 15:54:10', 2, 'purchased cassava at Sat Jun 16 18:54:10 EAT 2018 for 0.0', 'purchase'),
(261, '2018-06-16 15:54:11', 2, 'purchased coffee at Sat Jun 16 18:54:11 EAT 2018 for 0.0', 'purchase'),
(262, '2018-06-16 15:54:16', 2, 'Deleted userpurchase', 'purchase'),
(263, '2018-06-16 15:54:20', 2, 'Deleted userpurchase', 'purchase'),
(264, '2018-06-16 15:54:32', 2, 'Deleted userpurchase', 'purchase'),
(267, '2018-06-16 15:56:25', 2, 'purchased maize at Sat Jun 16 18:56:25 EAT 2018 for 2300.0', 'purchase'),
(268, '2018-06-16 15:56:26', 2, 'purchased cassava at Sat Jun 16 18:56:26 EAT 2018 for 0.0', 'purchase'),
(269, '2018-06-16 15:56:27', 2, 'purchased coffee at Sat Jun 16 18:56:27 EAT 2018 for 0.0', 'purchase'),
(270, '2018-06-16 15:56:28', 2, 'purchased maize at Sat Jun 16 18:56:28 EAT 2018 for 0.0', 'purchase'),
(271, '2018-06-16 15:56:35', 2, 'Deleted userpurchase', 'purchase'),
(272, '2018-06-16 15:56:40', 2, 'Deleted userpurchase', 'purchase'),
(275, '2018-06-16 15:58:46', 2, 'purchased maize at Sat Jun 16 18:58:46 EAT 2018 for 6900.0', 'purchase'),
(276, '2018-06-16 15:58:52', 2, 'Deleted userpurchase', 'purchase'),
(277, '2018-06-16 15:58:57', 2, 'Deleted userpurchase', 'purchase'),
(280, '2018-06-16 15:59:49', 2, 'Deleted userpurchase', 'purchase'),
(283, '2018-06-16 16:23:40', 2, 'purchased maize at Sat Jun 16 19:23:40 EAT 2018 for 4600.0', 'purchase'),
(284, '2018-06-16 16:23:54', 2, 'Deleted userpurchase', 'purchase'),
(285, '2018-06-16 16:26:36', 2, 'purchased maize at Sat Jun 16 19:26:36 EAT 2018 for 11500.0', 'purchase'),
(286, '2018-06-16 16:26:37', 2, 'purchased maize at Sat Jun 16 19:26:37 EAT 2018 for 0.0', 'purchase'),
(287, '2018-06-16 16:26:43', 2, 'Deleted userpurchase', 'purchase'),
(288, '2018-06-16 16:26:48', 2, 'Deleted userpurchase', 'purchase'),
(289, '2018-06-16 16:27:31', 2, 'purchased maize at Sat Jun 16 19:27:31 EAT 2018 for 2300.0', 'purchase'),
(290, '2018-06-16 16:27:36', 2, 'Deleted userpurchase', 'purchase'),
(291, '2018-06-16 16:41:45', 2, 'purchased maize at Sat Jun 16 19:41:45 EAT 2018 for 2300.0', 'purchase'),
(292, '2018-06-16 16:41:49', 2, 'purchased maize at Sat Jun 16 19:41:49 EAT 2018 for 9200.0', 'purchase'),
(293, '2018-06-16 16:42:24', 2, 'purchased Tarpaulins at Sat Jun 16 19:42:24 EAT 2018 for 120000.0', 'purchase'),
(294, '2018-06-16 18:28:09', 4, 'saved orders Tarpaulins', NULL),
(295, '2018-06-16 18:28:29', 4, 'saved orders Tarpaulins', NULL),
(296, '2018-06-16 18:46:37', 2, 'purchased maize at Sat Jun 16 21:46:37 EAT 2018 for 9200.0', 'purchase'),
(297, '2020-05-20 05:28:40', 1, 'Deleted userpurchase', NULL),
(298, '2021-01-31 18:11:38', 2, 'purchased maize at Sun Jan 31 21:11:38 EAT 2021 for 2300.0', 'purchase');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
CREATE TABLE IF NOT EXISTS `banks` (
  `idbanks` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `createdby` int(10) UNSIGNED DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `statusID` int(10) UNSIGNED DEFAULT NULL,
  `bank` int(10) UNSIGNED NOT NULL,
  `mobile` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idbanks`),
  KEY `FK_banks_1` (`createdby`),
  KEY `FK_banks_2` (`statusID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`idbanks`, `code`, `bankname`, `createdby`, `createdon`, `statusID`, `bank`, `mobile`) VALUES
(1, 'UBA', 'UBA', 3, '2018-05-14 12:03:05', 1, 1, 0),
(2, 'DFCU', 'DFCU', 3, '2018-05-14 12:03:05', 1, 1, 0),
(3, 'Stanbic Bank', 'Stanbic Bank', 3, '2018-05-14 12:03:05', 1, 1, 0),
(4, 'MTN', 'MTN mobile money', 3, '2018-05-14 12:03:05', 1, 0, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cropmodel`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `cropmodel`;
CREATE TABLE IF NOT EXISTS `cropmodel` (
`farmers` bigint(21)
,`cropgrown` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `cropproducts`
--

DROP TABLE IF EXISTS `cropproducts`;
CREATE TABLE IF NOT EXISTS `cropproducts` (
  `idcropproducts` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `createdby` int(10) UNSIGNED NOT NULL,
  `createdon` datetime NOT NULL,
  `statusid` int(10) UNSIGNED NOT NULL DEFAULT '3',
  PRIMARY KEY (`idcropproducts`),
  KEY `FK_cropproducts_1` (`createdby`),
  KEY `FK_cropproducts_2` (`statusid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cropproducts`
--

INSERT INTO `cropproducts` (`idcropproducts`, `name`, `createdby`, `createdon`, `statusid`) VALUES
(1, 'Maize', 5, '2018-06-14 12:26:16', 5),
(2, 'Beans', 5, '2018-06-14 12:26:21', 5),
(3, 'cassava', 5, '2018-06-14 12:26:26', 5),
(4, 'Matoke', 5, '2018-06-14 12:26:32', 5);

-- --------------------------------------------------------

--
-- Table structure for table `distributionchannel`
--

DROP TABLE IF EXISTS `distributionchannel`;
CREATE TABLE IF NOT EXISTS `distributionchannel` (
  `iddistributionChannel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `region` int(10) UNSIGNED NOT NULL,
  `agrodealer` int(10) UNSIGNED NOT NULL,
  `contactphone` varchar(45) NOT NULL,
  `statusid` int(10) UNSIGNED NOT NULL DEFAULT '3',
  `createdby` int(10) UNSIGNED NOT NULL,
  `createdon` datetime NOT NULL,
  PRIMARY KEY (`iddistributionChannel`),
  KEY `FK_distributionchannel_1` (`agrodealer`),
  KEY `FK_distributionchannel_2` (`region`),
  KEY `FK_distributionchannel_3` (`statusid`),
  KEY `FK_distributionchannel_4` (`createdby`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributionchannel`
--

INSERT INTO `distributionchannel` (`iddistributionChannel`, `name`, `region`, `agrodealer`, `contactphone`, `statusid`, `createdby`, `createdon`) VALUES
(1, 'Western Channel', 1, 1, '0728140544', 2, 4, '2018-05-24 11:12:14'),
(2, 'Eastern Channel', 1, 1, '0728140545', 2, 4, '2018-05-24 12:42:11'),
(3, 'Northern channel', 1, 1, '0728140546', 2, 4, '2018-05-24 12:42:42'),
(4, 'Southern  Channel', 1, 1, '0728140547', 2, 4, '2018-05-24 12:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `ewallet`
--

DROP TABLE IF EXISTS `ewallet`;
CREATE TABLE IF NOT EXISTS `ewallet` (
  `balance` double NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `statusID` int(10) UNSIGNED DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` int(10) UNSIGNED DEFAULT NULL,
  `idewallet` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `actionlastperformed` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idewallet`),
  KEY `FK_ewallet_1` (`statusID`),
  KEY `FK_ewallet_2` (`userid`),
  KEY `FK_ewallet_3` (`createdby`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ewallet`
--

INSERT INTO `ewallet` (`balance`, `userid`, `statusID`, `createdon`, `createdby`, `idewallet`, `actionlastperformed`) VALUES
(8538100, 2, 1, NULL, 1, 1, 'Purchased a John deere');

-- --------------------------------------------------------

--
-- Table structure for table `farmergroups`
--

DROP TABLE IF EXISTS `farmergroups`;
CREATE TABLE IF NOT EXISTS `farmergroups` (
  `idfarmergroups` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `region` int(10) UNSIGNED NOT NULL,
  `createdby` int(10) UNSIGNED NOT NULL,
  `createdon` datetime NOT NULL,
  `statusID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idfarmergroups`),
  KEY `FK_farmergroups_1` (`createdby`),
  KEY `FK_farmergroups_2` (`statusID`),
  KEY `FK_farmergroups_3` (`region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `govtpayments`
--

DROP TABLE IF EXISTS `govtpayments`;
CREATE TABLE IF NOT EXISTS `govtpayments` (
  `idgovtpayments` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `amount` varchar(45) NOT NULL,
  `payee` varchar(200) DEFAULT NULL,
  `createdby` int(10) UNSIGNED DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `statusID` int(10) UNSIGNED DEFAULT NULL,
  `agrodealer` varchar(200) DEFAULT NULL,
  `voucherpercentage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgovtpayments`),
  KEY `FK_govtpayments_2` (`createdby`),
  KEY `FK_govtpayments_3` (`statusID`),
  KEY `FK_govtpayments_4` (`agrodealer`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `govtpayments`
--

INSERT INTO `govtpayments` (`idgovtpayments`, `amount`, `payee`, `createdby`, `createdon`, `statusID`, `agrodealer`, `voucherpercentage`) VALUES
(1, '1000', 'Test Test', 1, '2018-05-14 00:07:06', 1, 'Superior Agro dealers', ''),
(2, '2000', 'Farmer', 1, '2018-05-14 00:07:06', 1, 'sample test Agro dealers', '');

-- --------------------------------------------------------

--
-- Table structure for table `nira`
--

DROP TABLE IF EXISTS `nira`;
CREATE TABLE IF NOT EXISTS `nira` (
  `idNIRA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idNumber` varchar(45) NOT NULL,
  PRIMARY KEY (`idNIRA`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nira`
--

INSERT INTO `nira` (`idNIRA`, `idNumber`) VALUES
(1, '12313');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `idorders` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `channeledTo` int(10) UNSIGNED NOT NULL,
  `purchaseID` int(10) UNSIGNED NOT NULL,
  `createdby` int(10) UNSIGNED NOT NULL,
  `createdon` datetime NOT NULL,
  `statusID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idorders`),
  KEY `FK_orders_1` (`purchaseID`),
  KEY `FK_orders_2` (`channeledTo`),
  KEY `FK_orders_4` (`createdby`),
  KEY `FK_orders_5` (`statusID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `regionmodel`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `regionmodel`;
CREATE TABLE IF NOT EXISTS `regionmodel` (
`idusers` int(10) unsigned
,`farmers` bigint(21)
,`region` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `idregions` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `province` varchar(45) NOT NULL,
  `constituency` varchar(45) NOT NULL,
  `municipality` varchar(45) NOT NULL,
  `county` varchar(45) NOT NULL,
  `subcounty` varchar(45) NOT NULL,
  `ward` varchar(45) NOT NULL,
  `statusid` int(10) UNSIGNED NOT NULL,
  `createdby` int(10) UNSIGNED NOT NULL,
  `createdon` datetime NOT NULL,
  `village` varchar(45) NOT NULL,
  PRIMARY KEY (`idregions`),
  KEY `FK_regions_1` (`createdby`),
  KEY `FK_regions_2` (`statusid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`idregions`, `province`, `constituency`, `municipality`, `county`, `subcounty`, `ward`, `statusid`, `createdby`, `createdon`, `village`) VALUES
(1, 'province', 'constituency', 'municipality', 'county', 'subcounty', 'ward', 1, 1, '2018-05-12 22:02:08', 'village'),
(2, 'province', 'constituency', 'municipality', 'county', 'subcounty', 'ward', 1, 1, '2018-05-12 22:02:08', 'village'),
(3, 'province', 'constituency', 'municipality', 'county', 'subcounty', 'ward', 1, 1, '2018-05-12 22:02:08', 'village'),
(4, 'province', 'constituency', 'municipality', 'county', 'subcounty', 'ward', 1, 1, '2018-05-12 22:02:08', 'village'),
(5, 'province', 'constituency', 'municipality', 'county', 'subcounty', 'ward', 1, 1, '2018-05-12 22:02:08', 'village'),
(6, 'province', 'constituency', 'municipality', 'county', 'subcounty', 'ward', 1, 1, '2018-05-12 22:02:08', 'village');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `idstatus` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `createdBy` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`idstatus`, `name`, `description`, `createdBy`) VALUES
(1, 'Active', ' an active module or user', 1),
(2, 'supervised', 'checked', 1),
(3, 'unsupervised', 'unchecked', 1),
(4, 'purchased', 'purchased', 1),
(5, 'added', 'added', 1),
(6, 'cart', 'cart', 1),
(7, 'dispatched', 'dispatched', 1);

-- --------------------------------------------------------

--
-- Table structure for table `unbs`
--

DROP TABLE IF EXISTS `unbs`;
CREATE TABLE IF NOT EXISTS `unbs` (
  `idUNBS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `productID` varchar(200) NOT NULL,
  `productSerial` varchar(200) NOT NULL,
  PRIMARY KEY (`idUNBS`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unbs`
--

INSERT INTO `unbs` (`idUNBS`, `productID`, `productSerial`) VALUES
(1, '112233', 'ser112233'),
(2, '332211', 'ser332211'),
(3, '223311', 'ser223311'),
(4, '331122', 'ser331122');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `idusers` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `pword` varchar(45) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `lastLogin` datetime DEFAULT NULL,
  `department` int(10) UNSIGNED DEFAULT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `staffID` int(10) UNSIGNED DEFAULT NULL,
  `statusID` int(10) UNSIGNED DEFAULT NULL,
  `createdBy` int(10) UNSIGNED DEFAULT NULL,
  `region` int(10) UNSIGNED DEFAULT '1',
  `gender` varchar(45) NOT NULL,
  `disability` varchar(45) NOT NULL,
  `cropgrown` varchar(45) NOT NULL,
  `farmergroup` varchar(45) NOT NULL,
  PRIMARY KEY (`idusers`),
  KEY `FK_user_1` (`createdBy`),
  KEY `FK_user_2` (`statusID`),
  KEY `FK_user_3` (`groupID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idusers`, `username`, `pword`, `createdAt`, `lastLogin`, `department`, `groupID`, `name`, `email`, `phone`, `staffID`, `statusID`, `createdBy`, `region`, `gender`, `disability`, `cropgrown`, `farmergroup`) VALUES
(1, 'root', 'root', NULL, NULL, 1, 1, 'Administrator', 'chepseron@gmail.com', '728140544', 12345, 1, 1, 1, '', '', '0', ''),
(2, 'buyer', 'buyer', NULL, NULL, 1, 2, 'Buyer Buyer', 'chepseron@gmail.com', '728140544', 12334, 1, 2, 1, '', '', '0', ''),
(3, 'financier', 'financier', NULL, NULL, 0, 4, 'Financier Financier', 'chepseron@gmail.com', '728140544', 12345, 1, NULL, 0, '', '', '0', ''),
(4, 'logistics', 'logistics', NULL, NULL, 1, 3, 'Logistics Logistics', 'chepseron@gmail.com', '728140544', 123, 1, 4, 1, '', '', '0', ''),
(5, 'seller', 'seller', NULL, NULL, 1, 5, 'Seller Seller', 'chepseron@gmail.com', '728140544', 123, 1, 5, 1, '', '', '0', ''),
(10, 'mamlaka', 'mamlaka', '2018-05-15 11:11:21', NULL, 1, 6, 'Mamlaka Mamlaka', 'info@uba.com', '0720123456', 12345, 1, 1, 0, 'Male', '', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `usergroup`
--

DROP TABLE IF EXISTS `usergroup`;
CREATE TABLE IF NOT EXISTS `usergroup` (
  `idgroups` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `createdBy` int(10) UNSIGNED DEFAULT NULL,
  `statusID` int(10) UNSIGNED DEFAULT NULL,
  `responsibilities` varchar(100) NOT NULL,
  PRIMARY KEY (`idgroups`),
  KEY `FK_usergroup_1` (`statusID`),
  KEY `FK_usergroup_2` (`createdBy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usergroup`
--

INSERT INTO `usergroup` (`idgroups`, `name`, `createdAt`, `createdBy`, `statusID`, `responsibilities`) VALUES
(1, 'Admin', NULL, 1, 1, 'admin'),
(2, 'Buyer', NULL, 1, 1, 'farmers'),
(3, 'Logistics', NULL, 1, 1, 'Importer/manufacturer'),
(4, 'Financier', NULL, 1, 1, 'Government'),
(5, 'Merchants/Stockiest', NULL, 1, 1, 'Merchants/Stockiest'),
(6, 'Mamlaka', NULL, 1, 1, 'UBA Employee');

-- --------------------------------------------------------

--
-- Table structure for table `userpurchase`
--

DROP TABLE IF EXISTS `userpurchase`;
CREATE TABLE IF NOT EXISTS `userpurchase` (
  `iduserpurchase` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `agrodealerproductid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `paymentmode` int(10) UNSIGNED DEFAULT NULL,
  `createdon` datetime NOT NULL,
  `createdby` int(10) UNSIGNED NOT NULL,
  `statusID` int(10) UNSIGNED NOT NULL,
  `quantity` double NOT NULL,
  PRIMARY KEY (`iduserpurchase`),
  KEY `FK_userpurchase_1` (`statusID`),
  KEY `FK_userpurchase_2` (`createdby`),
  KEY `FK_userpurchase_3` (`userid`),
  KEY `FK_userpurchase_4` (`agrodealerproductid`),
  KEY `FK_userpurchase_5` (`paymentmode`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userpurchase`
--

INSERT INTO `userpurchase` (`iduserpurchase`, `agrodealerproductid`, `userid`, `price`, `paymentmode`, `createdon`, `createdby`, `statusID`, `quantity`) VALUES
(39, 6, 2, 6900, 2, '2018-06-15 08:18:21', 2, 4, 3),
(40, 6, 2, 6900, NULL, '2018-06-16 08:14:37', 2, 2, 3),
(41, 6, 2, 2300, 2, '2018-06-16 14:26:58', 2, 4, 1),
(60, 6, 2, 2300, NULL, '2018-06-16 19:41:45', 2, 6, 1),
(61, 6, 2, 9200, NULL, '2018-06-16 19:41:49', 2, 6, 4),
(63, 6, 2, 9200, NULL, '2018-06-16 21:46:37', 2, 6, 4),
(64, 6, 2, 2300, NULL, '2021-01-31 21:11:38', 2, 6, 1);

-- --------------------------------------------------------

--
-- Structure for view `agrodealersperregion`
--
DROP TABLE IF EXISTS `agrodealersperregion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `agrodealersperregion`  AS  select `agrodealers`.`idagrodealers` AS `idagrodealers`,count(0) AS `agrodealers`,`agrodealers`.`regionid` AS `regionid` from `agrodealers` group by `agrodealers`.`regionid` ;

-- --------------------------------------------------------

--
-- Structure for view `cropmodel`
--
DROP TABLE IF EXISTS `cropmodel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cropmodel`  AS  select count(0) AS `farmers`,`user`.`cropgrown` AS `cropgrown` from `user` where (`user`.`statusID` = 2) group by `user`.`cropgrown` ;

-- --------------------------------------------------------

--
-- Structure for view `regionmodel`
--
DROP TABLE IF EXISTS `regionmodel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `regionmodel`  AS  select `user`.`idusers` AS `idusers`,count(0) AS `farmers`,`user`.`region` AS `region` from `user` where (`user`.`statusID` = 2) group by `user`.`region` ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agrodealerproducts`
--
ALTER TABLE `agrodealerproducts`
  ADD CONSTRAINT `FK_agrodealerproducts_1` FOREIGN KEY (`createdby`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_agrodealerproducts_2` FOREIGN KEY (`status`) REFERENCES `status` (`idstatus`),
  ADD CONSTRAINT `FK_agrodealerproducts_3` FOREIGN KEY (`dealerid`) REFERENCES `agrodealers` (`idagrodealers`),
  ADD CONSTRAINT `FK_agrodealerproducts_4` FOREIGN KEY (`agrodealerproductunit`) REFERENCES `agrodealerproductunits` (`idagrodealerproductunits`),
  ADD CONSTRAINT `FK_agrodealerproducts_5` FOREIGN KEY (`variety`) REFERENCES `agrodealerproducts` (`idagrodealerproducts`),
  ADD CONSTRAINT `FK_agrodealerproducts_6` FOREIGN KEY (`producttype`) REFERENCES `agrodealerproducttypes` (`idagrodealerproducttypes`),
  ADD CONSTRAINT `FK_agrodealerproducts_7` FOREIGN KEY (`productpackage`) REFERENCES `agrodealerproducts` (`idagrodealerproducts`);

--
-- Constraints for table `agrodealerproducttypes`
--
ALTER TABLE `agrodealerproducttypes`
  ADD CONSTRAINT `FK_agrodealerproducttypes_1` FOREIGN KEY (`createdby`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_agrodealerproducttypes_2` FOREIGN KEY (`status`) REFERENCES `status` (`idstatus`);

--
-- Constraints for table `agrodealerproductunits`
--
ALTER TABLE `agrodealerproductunits`
  ADD CONSTRAINT `FK_agrodealerproductunits_1` FOREIGN KEY (`createdby`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_agrodealerproductunits_2` FOREIGN KEY (`statusID`) REFERENCES `status` (`idstatus`);

--
-- Constraints for table `agrodealers`
--
ALTER TABLE `agrodealers`
  ADD CONSTRAINT `FK_agrodealers_1` FOREIGN KEY (`statusID`) REFERENCES `status` (`idstatus`),
  ADD CONSTRAINT `FK_agrodealers_2` FOREIGN KEY (`createdby`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_agrodealers_3` FOREIGN KEY (`ownerid`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_agrodealers_4` FOREIGN KEY (`regionid`) REFERENCES `regions` (`idregions`);

--
-- Constraints for table `audit`
--
ALTER TABLE `audit`
  ADD CONSTRAINT `FK_audit_1` FOREIGN KEY (`createdby`) REFERENCES `user` (`idusers`);

--
-- Constraints for table `banks`
--
ALTER TABLE `banks`
  ADD CONSTRAINT `FK_banks_1` FOREIGN KEY (`createdby`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_banks_2` FOREIGN KEY (`statusID`) REFERENCES `status` (`idstatus`);

--
-- Constraints for table `cropproducts`
--
ALTER TABLE `cropproducts`
  ADD CONSTRAINT `FK_cropproducts_1` FOREIGN KEY (`createdby`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_cropproducts_2` FOREIGN KEY (`statusid`) REFERENCES `status` (`idstatus`);

--
-- Constraints for table `distributionchannel`
--
ALTER TABLE `distributionchannel`
  ADD CONSTRAINT `FK_distributionchannel_1` FOREIGN KEY (`agrodealer`) REFERENCES `agrodealers` (`idagrodealers`),
  ADD CONSTRAINT `FK_distributionchannel_2` FOREIGN KEY (`region`) REFERENCES `regions` (`idregions`),
  ADD CONSTRAINT `FK_distributionchannel_3` FOREIGN KEY (`statusid`) REFERENCES `status` (`idstatus`),
  ADD CONSTRAINT `FK_distributionchannel_4` FOREIGN KEY (`createdby`) REFERENCES `user` (`idusers`);

--
-- Constraints for table `ewallet`
--
ALTER TABLE `ewallet`
  ADD CONSTRAINT `FK_ewallet_1` FOREIGN KEY (`statusID`) REFERENCES `status` (`idstatus`),
  ADD CONSTRAINT `FK_ewallet_2` FOREIGN KEY (`userid`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_ewallet_3` FOREIGN KEY (`createdby`) REFERENCES `user` (`idusers`);

--
-- Constraints for table `farmergroups`
--
ALTER TABLE `farmergroups`
  ADD CONSTRAINT `FK_farmergroups_1` FOREIGN KEY (`createdby`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_farmergroups_2` FOREIGN KEY (`statusID`) REFERENCES `status` (`idstatus`),
  ADD CONSTRAINT `FK_farmergroups_3` FOREIGN KEY (`region`) REFERENCES `regions` (`idregions`);

--
-- Constraints for table `govtpayments`
--
ALTER TABLE `govtpayments`
  ADD CONSTRAINT `FK_govtpayments_2` FOREIGN KEY (`createdby`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_govtpayments_3` FOREIGN KEY (`statusID`) REFERENCES `status` (`idstatus`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_1` FOREIGN KEY (`purchaseID`) REFERENCES `userpurchase` (`iduserpurchase`),
  ADD CONSTRAINT `FK_orders_2` FOREIGN KEY (`channeledTo`) REFERENCES `distributionchannel` (`iddistributionChannel`),
  ADD CONSTRAINT `FK_orders_4` FOREIGN KEY (`createdby`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_orders_5` FOREIGN KEY (`statusID`) REFERENCES `status` (`idstatus`);

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `FK_regions_1` FOREIGN KEY (`createdby`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_regions_2` FOREIGN KEY (`statusid`) REFERENCES `status` (`idstatus`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_user_1` FOREIGN KEY (`createdBy`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_user_2` FOREIGN KEY (`statusID`) REFERENCES `status` (`idstatus`),
  ADD CONSTRAINT `FK_user_3` FOREIGN KEY (`groupID`) REFERENCES `usergroup` (`idgroups`);

--
-- Constraints for table `usergroup`
--
ALTER TABLE `usergroup`
  ADD CONSTRAINT `FK_usergroup_2` FOREIGN KEY (`statusID`) REFERENCES `status` (`idstatus`);

--
-- Constraints for table `userpurchase`
--
ALTER TABLE `userpurchase`
  ADD CONSTRAINT `FK_userpurchase_1` FOREIGN KEY (`statusID`) REFERENCES `status` (`idstatus`),
  ADD CONSTRAINT `FK_userpurchase_2` FOREIGN KEY (`createdby`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_userpurchase_3` FOREIGN KEY (`userid`) REFERENCES `user` (`idusers`),
  ADD CONSTRAINT `FK_userpurchase_4` FOREIGN KEY (`agrodealerproductid`) REFERENCES `agrodealerproducts` (`idagrodealerproducts`),
  ADD CONSTRAINT `FK_userpurchase_5` FOREIGN KEY (`paymentmode`) REFERENCES `banks` (`idbanks`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
