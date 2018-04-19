-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2017 at 05:43 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `based`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `ID` varchar(40) NOT NULL,
  `ProductID` varchar(40) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `Datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`ID`, `ProductID`, `UserID`, `Datetime`) VALUES
('{27DCF40E-2FDF-49A8-A4F0-1DA32D3C00F6}', '{1A53D0E6-A580-4EA9-A2F9-B35CF92DDD01}', 'test@test.com', '2017-11-04 02:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_credit_conversion_log`
--

CREATE TABLE `tbl_credit_conversion_log` (
  `ID` varchar(40) NOT NULL,
  `DateTime` datetime NOT NULL,
  `ConvertedCredit` double NOT NULL,
  `BDT` double NOT NULL,
  `UserID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_credit_conversion_log`
--

INSERT INTO `tbl_credit_conversion_log` (`ID`, `DateTime`, `ConvertedCredit`, `BDT`, `UserID`) VALUES
('{0360CD47-5F06-457E-B5F0-EB111C85C913}', '2017-11-04 01:44:30', 6000, 600, 'test@test.com'),
('{502ED094-FCEE-44F0-87C4-C4DD151816BC}', '2017-11-04 01:43:15', 6000, 600, 'test@test.com'),
('{5C230787-E49A-4593-A180-B8B6B9A09F31}', '2017-11-04 01:36:46', 30, 3, 'test@test.com'),
('{7F48932E-C1A1-4622-AF01-8EE65CC9024E}', '2017-11-04 01:35:51', 25, 2.5, 'test@test.com'),
('{98CC2B08-7A64-412A-BA2F-F9A8C57CB010}', '2017-11-04 01:46:17', 40, 4, 'test@test.com'),
('{EA08DE9B-02B0-43EA-BB58-B70C71B775F2}', '2017-11-04 10:24:16', 10, 1, 'test@test.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_due`
--

CREATE TABLE `tbl_due` (
  `ID` varchar(40) NOT NULL,
  `CategoryID` varchar(40) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `Due` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_due`
--

INSERT INTO `tbl_due` (`ID`, `CategoryID`, `UserID`, `Due`) VALUES
('{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', 300),
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', '{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'test@test.com', 200),
('{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', '{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'test@test.com', 400),
('{466C9014-6C19-4FAD-BF8E-3A7A81B804F9}', '{466C9014-6C19-4FAD-BF8E-3A7A81B804F9}', 'test@test.com', 700);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_category`
--

CREATE TABLE `tbl_item_category` (
  `ID` varchar(40) NOT NULL,
  `Category` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item_category`
--

INSERT INTO `tbl_item_category` (`ID`, `Category`) VALUES
('{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'Canteen'),
('{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'Library'),
('{466C9014-6C19-4FAD-BF8E-3A7A81B804F9}', 'Registration'),
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'Loundry');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paylog`
--

CREATE TABLE `tbl_paylog` (
  `ID` int(40) NOT NULL,
  `CategoryID` varchar(40) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `DateTime` datetime NOT NULL,
  `Amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_paylog`
--

INSERT INTO `tbl_paylog` (`ID`, `CategoryID`, `UserID`, `DateTime`, `Amount`) VALUES
(8, '{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'test@test.com', '2017-10-10 01:47:10', 300),
(9, '{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'test@test.com', '2017-10-10 02:04:14', 100),
(10, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-10-10 02:04:25', 44),
(11, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-10-11 16:13:20', 100),
(12, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-10-11 16:23:33', 100),
(13, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-10-11 16:23:43', 50),
(14, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-10-11 16:23:57', 20),
(15, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-10-11 16:24:10', 10),
(16, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-10-11 16:24:19', 5),
(17, '{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'test@test.com', '2017-10-11 16:24:31', 100),
(18, '{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'test@test.com', '2017-10-11 16:24:41', 500),
(19, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-10-12 01:26:25', 300),
(20, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-10-12 09:09:00', 50),
(21, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-10-12 10:56:13', 350),
(22, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-10-12 10:56:53', 350),
(23, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-10-12 10:58:51', 350),
(24, '{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'test@test.com', '2017-10-12 12:19:15', 10),
(25, '{466C9014-6C19-4FAD-BF8E-3A7A81B804F9}', 'test@test.com', '2017-10-12 12:21:09', 200),
(26, '{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'test@test.com', '2017-10-30 16:47:45', 200),
(27, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-11-04 01:42:18', 50),
(28, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-11-04 01:42:39', 50),
(29, '{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', 'test@test.com', '2017-11-04 02:01:44', 100),
(30, '{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'test@test.com', '2017-11-04 10:07:32', 90),
(31, '{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'test@test.com', '2017-11-04 10:20:12', 90),
(32, '{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'test@test.com', '2017-11-04 10:20:24', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `CategoryID` varchar(40) NOT NULL,
  `Price` double NOT NULL,
  `OfferedCredit` double NOT NULL,
  `PictureAddress` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`ID`, `Name`, `CategoryID`, `Price`, `OfferedCredit`, `PictureAddress`) VALUES
('{1A53D0E6-A580-4EA9-A2F9-B35CF92DDD01}', 'Forest Growth Simulation', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 600, 65, '9781604697285r.jpg'),
('{34A3C9A7-4B6C-4398-8845-76399D6878E0}', 'Compiler', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 300, 60, 'compilers.jpg'),
('{4308E3A8-E74F-49DC-A2BA-D26CEF37C37C}', 'Computer Graphics', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 400, 30, 'graphics.jpeg'),
('{8C35D14E-BA72-4FEC-8703-1C7BF08760A1}', 'Java', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 400, 40, 'bangla_c.jpg'),
('{9A912360-8C34-46EB-BFC2-698F237CC5D3}', 'Computer Networks', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 200, 20, 'networking.png'),
('{C7DA13A3-5A5C-4361-BCA5-12EA1C632E0A}', 'Web Learning', '{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 400, 40, '9781785280351.png'),
('{CBF2600B-4FD3-41C8-A243-BFEE6C0DB1C3}', 'Bangla C', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 400, 40, 'bangla_c.jpg'),
('{CC9C78DE-7022-4053-8951-B92BDF35D33D}', 'Deep Learning', '{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 550, 55, 'deep_learning.jpg'),
('{F14C8CA7-7F3F-45A0-95E5-2359805F2B96}', 'Computer Fundamentals', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 260, 26, 'computer_fundamentals.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

CREATE TABLE `tbl_product_category` (
  `ID` varchar(40) NOT NULL,
  `Category` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`ID`, `Category`) VALUES
('{3D212234-2F34-4AB0-83EF-1A772068403B}', 'Book'),
('{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'Thesis Book');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_log`
--

CREATE TABLE `tbl_purchase_log` (
  `ID` varchar(40) NOT NULL,
  `Products` varchar(40) NOT NULL,
  `Datetime` datetime NOT NULL,
  `Paidprice` double NOT NULL,
  `Earnedcredit` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recharge_log`
--

CREATE TABLE `tbl_recharge_log` (
  `ID` int(40) NOT NULL,
  `Email` varchar(240) NOT NULL,
  `Amount` double NOT NULL,
  `DateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_recharge_log`
--

INSERT INTO `tbl_recharge_log` (`ID`, `Email`, `Amount`, `DateTime`) VALUES
(2, 'test@test.com', 80, '2017-08-13 03:15:31'),
(3, 'test@test.com', 80, '2017-08-13 03:31:42'),
(4, 'test@test.com', 80, '2017-08-13 03:33:50'),
(5, 'test@test.com', 80, '2017-08-13 03:37:13'),
(6, 'test@test.com', 80, '2017-08-13 03:37:38'),
(7, 'test@test.com', 5000, '2017-08-13 03:37:52'),
(8, 'test@test.com', 5000, '2017-08-13 03:38:14'),
(9, 'test@test.com', 5000, '2017-08-13 03:38:26'),
(10, 'test@test.com', 5000, '2017-08-13 03:38:48'),
(11, 'test@test.com', 100, '2017-08-13 04:03:00'),
(12, 'juelcse14ku@gmail.com', 20, '2017-08-13 04:03:27'),
(13, 'juelcse14ku@gmail.com', 20, '2017-08-13 04:23:44'),
(14, 'test@test.com', 100, '2017-08-13 14:49:07'),
(15, 'test@test.com', 50, '2017-08-13 14:51:14'),
(16, 'test@test.com', 40, '2017-08-13 14:51:32'),
(17, 'test@test.com', 40, '2017-08-13 14:54:19'),
(18, 'test@test.com', 100, '2017-08-15 01:23:18'),
(19, 'test@test.com', 200, '2017-08-17 14:06:12'),
(72, 'test@test.com', 2222, '2017-09-16 03:09:29'),
(73, 'test@test.com', 2222, '2017-09-16 03:10:49'),
(74, 'test@test.com', 2222, '2017-09-16 03:11:16'),
(75, 'test@test.com', 2222, '2017-09-16 03:12:19'),
(76, 'test@test.com', 2222, '2017-09-16 03:13:40'),
(77, 'test@test.com', 2222, '2017-09-16 03:14:28'),
(78, 'test@test.com', 2222, '2017-09-16 03:16:23'),
(79, 'test@test.com', 986, '2017-09-16 03:19:12'),
(80, 'test@test.com', 986, '2017-09-16 03:19:42'),
(81, 'test@test.com', 986, '2017-09-16 03:19:52'),
(82, 'juelcse14ku@gmail.com', 986, '2017-09-16 03:21:10'),
(83, 'juelcse14ku@gmail.com', 986, '2017-09-16 03:26:41'),
(84, 'test@test.com', 12878, '2017-09-16 03:26:58'),
(85, 'test@test.com', 12878, '2017-09-16 03:28:28'),
(86, 'test@test.com', 777, '2017-09-16 05:07:49'),
(87, 'test@test.com', 777, '2017-09-16 05:09:43'),
(88, 'juelcse14ku@gmail.com', 777, '2017-09-16 05:09:59'),
(89, 'juelcse14ku@gmail.com', 777, '2017-09-16 05:24:43'),
(90, 'juelcse14ku@gmail.com', 777, '2017-09-16 05:27:33'),
(91, 'juelcse14ku@gmail.com', 777, '2017-09-16 05:31:22'),
(92, 'juelcse14ku@gmail.com', 777, '2017-09-16 05:31:55'),
(93, 'juelcse14ku@gmail.com', 777, '2017-09-16 05:33:21'),
(94, 'juelcse14ku@gmail.com', 777, '2017-09-16 05:35:46'),
(95, 'test@test.com', 666, '2017-09-16 05:36:00'),
(96, 'test@test.com', 666, '2017-09-16 05:38:50'),
(97, 'test@test.com', 666, '2017-09-16 05:40:53'),
(98, 'test@test.com', 666, '2017-09-16 05:42:23'),
(99, 'test@test.com', 666, '2017-09-16 05:46:00'),
(100, 'test@test.com', 666, '2017-09-16 05:46:17'),
(101, 'test@test.com', 666, '2017-09-16 05:50:45'),
(102, 'test@test.com', 666, '2017-09-16 05:50:59'),
(103, 'test@test.com', 666, '2017-09-16 05:51:14'),
(104, 'test@test.com', 666, '2017-09-16 05:52:29'),
(105, 'test@test.com', 666, '2017-09-16 05:53:24'),
(106, 'test@test.com', 666, '2017-09-16 05:54:05'),
(107, 'test@test.com', 666, '2017-09-16 13:35:31'),
(108, 'test@test.com', 666, '2017-09-16 13:43:52'),
(109, 'juelcse14ku@gmail.com', 777, '2017-09-16 13:44:22'),
(110, 'juelcse14ku@gmail.com', 777, '2017-09-16 13:45:16'),
(111, 'juelcse14ku@gmail.com', 777, '2017-09-16 13:50:39'),
(112, 'juelcse14ku@gmail.com', 777, '2017-09-16 13:52:19'),
(113, 'juelcse14ku@gmail.com', 777, '2017-09-16 13:52:45'),
(114, 'juelcse14ku@gmail.com', 777, '2017-09-16 14:36:54'),
(115, 'test@test.com', 4555, '2017-09-16 16:51:07'),
(116, 'test@test.com', 4555, '2017-09-16 16:54:56'),
(117, 'juelcse14ku@gmail.com', 9896, '2017-09-16 16:55:36'),
(118, 'juelcse14ku@gmail.com', 9896, '2017-09-16 16:57:43'),
(119, 'juelcse14ku@gmail.com', 9896, '2017-09-16 16:58:11'),
(120, 'juelcse14ku@gmail.com', 777, '2017-09-16 18:03:37'),
(121, 'juelcse14ku@gmail.com', 777, '2017-09-16 18:04:38'),
(122, 'juelcse14ku@gmail.com', 777, '2017-09-16 18:06:25'),
(123, 'juelcse14ku@gmail.com', 777, '2017-09-16 18:08:05'),
(124, 'juelcse14ku@gmail.com', 777, '2017-09-16 18:08:19'),
(125, 'juelcse14ku@gmail.com', 777, '2017-09-16 18:09:41'),
(126, 'juelcse14ku@gmail.com', 777, '2017-09-16 20:44:31'),
(127, 'juelcse14ku@gmail.com', 777, '2017-09-16 20:51:31'),
(128, 'juelcse14ku@gmail.com', 777, '2017-09-16 20:54:38'),
(129, 'juelcse14ku@gmail.com', 777, '2017-09-16 21:00:28'),
(130, 'juelcse14ku@gmail.com', 777, '2017-09-16 21:02:34'),
(131, 'juelcse14ku@gmail.com', 777, '2017-09-16 21:03:58'),
(132, 'test@test.com', 76, '2017-09-16 21:05:56'),
(133, 'test@test.com', 65545, '2017-09-16 21:28:12'),
(134, 'test@test.com', 65545, '2017-09-16 21:28:32'),
(135, 'test@test.com', 65545, '2017-09-16 21:29:03'),
(136, 'test@test.com', 65545, '2017-09-16 22:12:26'),
(137, 'test@test.com', 65545, '2017-09-16 22:14:34'),
(138, 'test@test.com', 65545, '2017-09-16 22:15:01'),
(139, 'test@test.com', 65545, '2017-09-16 22:16:49'),
(140, 'test@test.com', 65545, '2017-09-16 22:17:06'),
(141, 'test@test.com', 65545, '2017-09-16 22:17:36'),
(142, 'test@test.com', 65545, '2017-09-16 22:17:51'),
(143, 'test@test.com', 65545, '2017-09-16 22:23:48'),
(144, 'test@test.com', 65545, '2017-09-16 22:24:44'),
(145, 'test@test.com', 65545, '2017-09-16 22:25:47'),
(146, 'test@test.com', 65545, '2017-09-16 22:33:52'),
(147, 'test@test.com', 65545, '2017-09-16 22:35:14'),
(148, 'test@test.com', 76, '2017-09-16 22:39:06'),
(149, 'test@test.com', 65545, '2017-09-16 22:39:38'),
(150, 'toufiqueaman@gmail.com', 8880, '2017-10-07 01:17:46'),
(151, 'toufiqueaman@gmail.com', 8880, '2017-10-07 01:18:33'),
(152, 'toufiqueaman@gmail.com', 8880, '2017-10-07 01:18:57'),
(153, 'toufiqueaman@gmail.com', 8880, '2017-10-07 01:31:27'),
(154, 'toufiqueaman@gmail.com', 8880, '2017-10-07 01:32:42'),
(155, 'toufiqueaman@gmail.com', 8880, '2017-10-07 01:33:01'),
(156, 'toufiqueaman@gmail.com', 8880, '2017-10-07 01:33:35'),
(157, 'toufiqueaman@gmail.com', 8880, '2017-10-07 01:34:22'),
(158, 'toufiqueaman@gmail.com', 8880, '2017-10-07 01:35:31'),
(159, 'toufiqueaman@gmail.com', 8880, '2017-10-07 01:36:04'),
(160, 'test@test.com', 600, '2017-10-11 16:05:22'),
(161, 'test@test.com', 600, '2017-10-11 16:06:14'),
(162, 'test@test.com', 600, '2017-10-11 16:06:31'),
(163, 'test@test.com', 600, '2017-10-11 16:07:05'),
(164, 'test@test.com', 50, '2017-10-12 00:06:24'),
(165, 'test@test.com', 50, '2017-10-12 00:06:35'),
(166, 'test@test.com', 50, '2017-10-12 00:08:19'),
(167, 'test@test.com', 50, '2017-10-12 00:19:52'),
(168, 'test@test.com', 50, '2017-10-12 00:20:21'),
(169, 'test@test.com', 50, '2017-10-12 00:21:16'),
(170, 'test@test.com', 50, '2017-10-12 00:23:15'),
(171, 'test@test.com', 40, '2017-10-12 01:27:35'),
(172, 'test@test.com', 123, '2017-10-12 09:08:38'),
(173, 'test@test.com', 70, '2017-10-12 10:04:33'),
(174, 'test@test.com', 70, '2017-10-12 10:05:07'),
(175, 'test@test.com', 70, '2017-10-12 10:23:21'),
(176, 'test@test.com', 70, '2017-10-12 10:24:34'),
(177, 'test@test.com', 70, '2017-10-12 10:24:47'),
(178, 'test@test.com', 70, '2017-10-12 10:28:31'),
(179, 'test@test.com', 70, '2017-10-12 10:30:13'),
(180, 'test@test.com', 70, '2017-10-12 10:31:07'),
(181, 'toufiqueaman@gmail.com', 400, '2017-10-12 10:31:40'),
(182, 'toufiqueaman@gmail.com', 123, '2017-10-12 12:18:43'),
(183, 'toufiqueaman@gmail.com', 600, '2017-10-12 12:18:55'),
(184, 'toufiqueaman@gmail.com', 300, '2017-10-12 12:20:36'),
(185, 'toufiqueaman@gmail.com', 400, '2017-10-25 10:32:14'),
(186, 'toufiqueaman@gmail.com', 500, '2017-10-30 16:46:41'),
(187, 'toufiqueaman@gmail.com', 33, '2017-11-04 09:53:35'),
(188, 'test@test.com', 123, '2017-11-04 09:53:46'),
(189, 'toufiqueaman@gmail.com', 500, '2017-11-04 10:46:45'),
(191, 'toufiqueaman@gmail.com', 500, '2017-11-04 11:02:29'),
(192, 'toufiqueaman@gmail.com', 600, '2017-11-04 11:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_details`
--

CREATE TABLE `tbl_user_details` (
  `ID` varchar(40) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `PermanentAddress` varchar(200) DEFAULT NULL,
  `HomePhone` varchar(20) DEFAULT NULL,
  `CurrentAddress` varchar(200) DEFAULT NULL,
  `MobilePhone` varchar(20) DEFAULT NULL,
  `Balance` double NOT NULL,
  `Credit` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_details`
--

INSERT INTO `tbl_user_details` (`ID`, `FatherName`, `MotherName`, `PermanentAddress`, `HomePhone`, `CurrentAddress`, `MobilePhone`, `Balance`, `Credit`) VALUES
('another@test.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('juelcse14ku@gmail.com', 'Molla', NULL, NULL, NULL, NULL, NULL, 51085, 0),
('test@test.com', 'My father', 'My mother', 'My address', '04100000', 'Same', '0171100000', 2838, 250),
('toufiqueaman@gmail.com', 'Jamir Uddin Ahmed', 'Mst. Sarmin Akter', 'Salua Bazar,Chowgacha,Jessore', '+8801727711899', 'Salua Bazar,Chowgacha,Jessore', '+8801727711899', 95946, 5230);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_credit_conversion_log`
--
ALTER TABLE `tbl_credit_conversion_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_due`
--
ALTER TABLE `tbl_due`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `tbl_paylog`
--
ALTER TABLE `tbl_paylog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_purchase_log`
--
ALTER TABLE `tbl_purchase_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_recharge_log`
--
ALTER TABLE `tbl_recharge_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user_details`
--
ALTER TABLE `tbl_user_details`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_paylog`
--
ALTER TABLE `tbl_paylog`
  MODIFY `ID` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tbl_recharge_log`
--
ALTER TABLE `tbl_recharge_log`
  MODIFY `ID` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
