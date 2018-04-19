-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2017 at 05:44 AM
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
-- Table structure for table `hms_hall`
--

CREATE TABLE `hms_hall` (
  `id` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `provost` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `tbl_discipline`
--

CREATE TABLE `tbl_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ShortCode` varchar(20) DEFAULT NULL,
  `SchoolID` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_discipline`
--

INSERT INTO `tbl_discipline` (`ID`, `Name`, `ShortCode`, `SchoolID`) VALUES
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'Mathematics', 'MATH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 'Architecture', 'ARCH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{63F3C00B-6168-4FBD-AB01-7A1FE413BDDE}', 'Forestry and Wood Technology', 'FWT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{AF41CC9F-3BCD-4952-9D02-17184CC40C79}', 'Urban and Rural Planning', 'URP', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E065BBA7-D0C5-4DFA-9768-81B6F056EB4A}', 'Foresty and Marine Resource Technology', 'FMRT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E7280448-E379-424E-A11D-357F4334AC8D}', 'Physics', 'PHY', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'Computer Science and Engineering', 'CSE', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion`
--

CREATE TABLE `tbl_discussion` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `CategoryID` varchar(40) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Tag` varchar(200) NOT NULL,
  `CreationDate` datetime NOT NULL,
  `CreatorID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_discussion`
--

INSERT INTO `tbl_discussion` (`ID`, `Title`, `CategoryID`, `Description`, `Tag`, `CreationDate`, `CreatorID`) VALUES
('{C9FB74F8-8341-4706-BE40-93BFDC3444D0}', 'what is oop', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 'describe oop', 'oop', '2017-04-29 00:00:00', 'mkazi078@uottawa.ca'),
('{DA408BD0-9C9E-46F6-8CF2-00A631B06A26}', 'what is c#', '{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'this is c#', 'oop', '2017-04-29 00:00:00', 'mkazi078@uottawa.ca');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion_category`
--

CREATE TABLE `tbl_discussion_category` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_discussion_category`
--

INSERT INTO `tbl_discussion_category` (`ID`, `Name`) VALUES
('{3D212234-2F34-4AB0-83EF-1A772068403B}', 'java'),
('{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'c#'),
('{974DE90C-BCAC-4FA3-8B9B-518A3CE6834A}', 'programming contest');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion_comment`
--

CREATE TABLE `tbl_discussion_comment` (
  `CommentID` varchar(50) NOT NULL,
  `DiscussionID` varchar(40) NOT NULL,
  `Comment` varchar(300) NOT NULL,
  `CreatorID` varchar(40) NOT NULL,
  `CommentTime` datetime NOT NULL,
  `CommentIDTop` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_discussion_comment`
--

INSERT INTO `tbl_discussion_comment` (`CommentID`, `DiscussionID`, `Comment`, `CreatorID`, `CommentTime`, `CommentIDTop`) VALUES
('{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', '{C9FB74F8-8341-4706-BE40-93BFDC3444D0}', 'new comment', 'mkazi078@uottawa.ca', '2017-06-26 19:18:08', NULL),
('{1634B01B-5F82-43EF-96F8-E6149F488424}', '{C9FB74F8-8341-4706-BE40-93BFDC3444D0}', 'it is PIE', 'mkazi078@uottawa.ca', '0000-00-00 00:00:00', NULL),
('{550A15FC-06B8-43DF-83EE-097E35920170}', '{C9FB74F8-8341-4706-BE40-93BFDC3444D0}', 'little difficult', 'mohidul@gmail.com', '0000-00-00 00:00:00', NULL),
('{6FEBD86F-2766-4F27-A2EA-BEFCF4F3A696}', '{C9FB74F8-8341-4706-BE40-93BFDC3444D0}', '4tttehy', 'test@test.com', '2017-09-18 09:09:20', NULL),
('{A15517C2-883F-4E5E-B0AC-9A1DB556741F}', '{C9FB74F8-8341-4706-BE40-93BFDC3444D0}', 'Polymorphism, inheritence, encapsulation', 'mkazi078@uottawa.ca', '0000-00-00 00:00:00', NULL);

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
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_permission`
--

INSERT INTO `tbl_permission` (`ID`, `Name`, `Category`) VALUES
('BALANCE_C', 'BALANCE_C', 'BALANCE'),
('BALANCE_D', 'BALANCE_D', 'BALANCE'),
('BALANCE_R', 'BALANCE_R', 'BALANCE'),
('BALANCE_U', 'BALANCE_U', 'BALANCE'),
('DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
('DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
('DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
('DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
('DISCUSSION_C', 'DISCUSSION_C', 'DISCUSSION'),
('DISCUSSION_CAT_C', 'DISCUSSION_CAT_C', 'DISCUSSION CATEGORY'),
('DISCUSSION_CAT_D', 'DISCUSSION_CAT_D', 'DISCUSSION CATEGORY'),
('DISCUSSION_CAT_R', 'DISCUSSION_CAT_R', 'DISCUSSION CATEGORY'),
('DISCUSSION_CAT_U', 'DISCUSSION_CAT_U', 'DISCUSSION CATEGORY'),
('DISCUSSION_COMMENT_C', 'DISCUSSION_COMMENT_C', 'DISCUSSION COMMENT'),
('DISCUSSION_COMMENT_D', 'DISCUSSION_COMMENT_D', 'DISCUSSION COMMENT'),
('DISCUSSION_COMMENT_R', 'DISCUSSION_COMMENT_R', 'DISCUSSION COMMENT'),
('DISCUSSION_COMMENT_U', 'DISCUSSION_COMMENT_U', 'DISCUSSION COMMENT'),
('DISCUSSION_D', 'DISCUSSION_D', 'DISCUSSION'),
('DISCUSSION_R', 'DISCUSSION_R', 'DISCUSSION'),
('DISCUSSION_U', 'DISCUSSION_U', 'DISCUSSION'),
('PERMISSION_C', 'PERMISSION_C', 'PERMISSION'),
('PERMISSION_D', 'PERMISSION_D', 'PERMISSION'),
('PERMISSION_R', 'PERMISSION_R', 'PERMISSION'),
('PERMISSION_U', 'PERMISSION_U', 'PERMISSION'),
('POSITION_C', 'POSITION_C', 'POSITION'),
('POSITION_D', 'POSITION_D', 'POSITION'),
('POSITION_R', 'POSITION_R', 'POSITION'),
('POSITION_U', 'POSITION_U', 'POSITION'),
('PRODUCT_C', 'PRODUCT_C', 'PRODUCT'),
('PRODUCT_D', 'PRODUCT_D', 'PRODUCT'),
('PRODUCT_R', 'PRODUCT_R', 'PRODUCT'),
('PRODUCT_U', 'PRODUCT_U', 'PRODUCT'),
('ROLE_C', 'ROLE_C', 'ROLE'),
('ROLE_D', 'ROLE_D', 'ROLE'),
('ROLE_R', 'ROLE_R', 'ROLE'),
('ROLE_U', 'ROLE_U', 'ROLE'),
('SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
('SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
('SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
('SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
('TERM_C', 'TERM_C', 'TERM'),
('TERM_D', 'TERM_D', 'TERM'),
('TERM_R', 'TERM_R', 'TERM'),
('TERM_U', 'TERM_U', 'TERM'),
('USER_C', 'USER_C', 'USER'),
('USER_D', 'USER_D', 'USER'),
('USER_R', 'USER_R', 'USER'),
('USER_U', 'USER_U', 'USER'),
('YEAR_C', 'YEAR_C', 'YEAR'),
('YEAR_D', 'YEAR_D', 'YEAR'),
('YEAR_R', 'YEAR_R', 'YEAR'),
('YEAR_U', 'YEAR_U', 'YEAR');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_position`
--

CREATE TABLE `tbl_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_position`
--

INSERT INTO `tbl_position` (`ID`, `Name`) VALUES
('{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}', 'Section Officer'),
('{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}', 'Pro-vice Chancellor'),
('{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}', 'Assistant Professor'),
('{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}', 'Lecturer'),
('{818DE12F-60CC-42E4-BAEC-48EAAED65179}', 'Dean of School'),
('{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}', 'Vice Chancellor'),
('{92FDDA3F-1E91-4AA3-918F-EB595F85790C}', 'Daywise Worker'),
('{932CB0EE-76C2-448E-A40E-2D167EECC479}', 'Registrar'),
('{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}', 'Assistant Registrar'),
('{B76EB035-EA26-4CEB-B029-1C6129574D98}', 'Librarian'),
('{B78C7A7B-4D38-4025-8170-7B8C9F291946}', 'Head of Discipline'),
('{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}', 'Associate Professor'),
('{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}', 'Professor');

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
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`ID`, `Name`) VALUES
('administrator', 'Administrator'),
('hall assign', 'Hall Assign'),
('registration coordinator', 'Registration Coordinator'),
('student', 'Student'),
('stuff', 'Stuff'),
('tabulator', 'Tabulator'),
('teacher', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role_permission`
--

CREATE TABLE `tbl_role_permission` (
  `Row` int(11) NOT NULL,
  `RoleID` varchar(40) NOT NULL,
  `PermissionID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role_permission`
--

INSERT INTO `tbl_role_permission` (`Row`, `RoleID`, `PermissionID`) VALUES
(1994, 'administrator', 'BALANCE_C'),
(1995, 'administrator', 'BALANCE_D'),
(1996, 'administrator', 'BALANCE_R'),
(1997, 'administrator', 'BALANCE_U'),
(1998, 'administrator', 'DISCIPLINE_C'),
(1999, 'administrator', 'DISCIPLINE_D'),
(2000, 'administrator', 'DISCIPLINE_R'),
(2001, 'administrator', 'DISCIPLINE_U'),
(2002, 'administrator', 'DISCUSSION_C'),
(2003, 'administrator', 'DISCUSSION_D'),
(2004, 'administrator', 'DISCUSSION_R'),
(2005, 'administrator', 'DISCUSSION_U'),
(2006, 'administrator', 'DISCUSSION_CAT_C'),
(2007, 'administrator', 'DISCUSSION_CAT_D'),
(2008, 'administrator', 'DISCUSSION_CAT_R'),
(2009, 'administrator', 'DISCUSSION_CAT_U'),
(2010, 'administrator', 'DISCUSSION_COMMENT_C'),
(2011, 'administrator', 'DISCUSSION_COMMENT_D'),
(2012, 'administrator', 'DISCUSSION_COMMENT_R'),
(2013, 'administrator', 'DISCUSSION_COMMENT_U'),
(2014, 'administrator', 'PERMISSION_C'),
(2015, 'administrator', 'PERMISSION_D'),
(2016, 'administrator', 'PERMISSION_R'),
(2017, 'administrator', 'PERMISSION_U'),
(2018, 'administrator', 'POSITION_C'),
(2019, 'administrator', 'POSITION_D'),
(2020, 'administrator', 'POSITION_R'),
(2021, 'administrator', 'POSITION_U'),
(2022, 'administrator', 'PRODUCT_C'),
(2023, 'administrator', 'PRODUCT_D'),
(2024, 'administrator', 'PRODUCT_R'),
(2025, 'administrator', 'PRODUCT_U'),
(2026, 'administrator', 'ROLE_C'),
(2027, 'administrator', 'ROLE_D'),
(2028, 'administrator', 'ROLE_R'),
(2029, 'administrator', 'ROLE_U'),
(2030, 'administrator', 'SCHOOL_C'),
(2031, 'administrator', 'SCHOOL_D'),
(2032, 'administrator', 'SCHOOL_R'),
(2033, 'administrator', 'SCHOOL_U'),
(2034, 'administrator', 'TERM_C'),
(2035, 'administrator', 'TERM_D'),
(2036, 'administrator', 'TERM_R'),
(2037, 'administrator', 'TERM_U'),
(2038, 'administrator', 'USER_C'),
(2039, 'administrator', 'USER_D'),
(2040, 'administrator', 'USER_R'),
(2041, 'administrator', 'USER_U'),
(2042, 'administrator', 'YEAR_C'),
(2043, 'administrator', 'YEAR_D'),
(2044, 'administrator', 'YEAR_R'),
(2045, 'administrator', 'YEAR_U'),
(2046, 'hall assign', 'BALANCE_C'),
(2047, 'hall assign', 'BALANCE_D'),
(2048, 'hall assign', 'BALANCE_R'),
(2049, 'hall assign', 'BALANCE_U'),
(2050, 'hall assign', 'DISCIPLINE_C'),
(2051, 'hall assign', 'DISCIPLINE_D'),
(2052, 'hall assign', 'DISCIPLINE_R'),
(2053, 'hall assign', 'DISCIPLINE_U'),
(2054, 'hall assign', 'DISCUSSION_C'),
(2055, 'hall assign', 'DISCUSSION_D'),
(2056, 'hall assign', 'DISCUSSION_R'),
(2057, 'hall assign', 'DISCUSSION_U'),
(2058, 'hall assign', 'DISCUSSION_CAT_C'),
(2059, 'hall assign', 'DISCUSSION_CAT_D'),
(2060, 'hall assign', 'DISCUSSION_CAT_R'),
(2061, 'hall assign', 'DISCUSSION_CAT_U'),
(2062, 'hall assign', 'DISCUSSION_COMMENT_C'),
(2063, 'hall assign', 'DISCUSSION_COMMENT_D'),
(2064, 'hall assign', 'DISCUSSION_COMMENT_R'),
(2065, 'hall assign', 'DISCUSSION_COMMENT_U'),
(2066, 'hall assign', 'PERMISSION_C'),
(2067, 'hall assign', 'PERMISSION_D'),
(2068, 'hall assign', 'PERMISSION_R'),
(2069, 'hall assign', 'PERMISSION_U'),
(2070, 'hall assign', 'POSITION_C'),
(2071, 'hall assign', 'POSITION_D'),
(2072, 'hall assign', 'POSITION_R'),
(2073, 'hall assign', 'POSITION_U'),
(2074, 'hall assign', 'PRODUCT_C'),
(2075, 'hall assign', 'PRODUCT_D'),
(2076, 'hall assign', 'PRODUCT_R'),
(2077, 'hall assign', 'PRODUCT_U'),
(2078, 'hall assign', 'ROLE_C'),
(2079, 'hall assign', 'ROLE_D'),
(2080, 'hall assign', 'ROLE_R'),
(2081, 'hall assign', 'ROLE_U'),
(2082, 'hall assign', 'SCHOOL_C'),
(2083, 'hall assign', 'SCHOOL_D'),
(2084, 'hall assign', 'SCHOOL_R'),
(2085, 'hall assign', 'SCHOOL_U'),
(2086, 'hall assign', 'TERM_C'),
(2087, 'hall assign', 'TERM_D'),
(2088, 'hall assign', 'TERM_R'),
(2089, 'hall assign', 'TERM_U'),
(2090, 'hall assign', 'USER_C'),
(2091, 'hall assign', 'USER_D'),
(2092, 'hall assign', 'USER_R'),
(2093, 'hall assign', 'USER_U'),
(2094, 'hall assign', 'YEAR_C'),
(2095, 'hall assign', 'YEAR_D'),
(2096, 'hall assign', 'YEAR_R'),
(2097, 'hall assign', 'YEAR_U'),
(2548, 'student', 'BALANCE_C'),
(2549, 'student', 'BALANCE_D'),
(2550, 'student', 'BALANCE_R'),
(2551, 'student', 'BALANCE_U'),
(2552, 'student', 'DISCIPLINE_C'),
(2553, 'student', 'DISCIPLINE_D'),
(2554, 'student', 'DISCIPLINE_R'),
(2555, 'student', 'DISCIPLINE_U'),
(2556, 'student', 'DISCUSSION_C'),
(2557, 'student', 'DISCUSSION_D'),
(2558, 'student', 'DISCUSSION_R'),
(2559, 'student', 'DISCUSSION_U'),
(2560, 'student', 'DISCUSSION_CAT_C'),
(2561, 'student', 'DISCUSSION_CAT_D'),
(2562, 'student', 'DISCUSSION_CAT_R'),
(2563, 'student', 'DISCUSSION_CAT_U'),
(2564, 'student', 'DISCUSSION_COMMENT_C'),
(2565, 'student', 'DISCUSSION_COMMENT_D'),
(2566, 'student', 'DISCUSSION_COMMENT_R'),
(2567, 'student', 'DISCUSSION_COMMENT_U'),
(2568, 'student', 'PERMISSION_C'),
(2569, 'student', 'PERMISSION_D'),
(2570, 'student', 'PERMISSION_R'),
(2571, 'student', 'PERMISSION_U'),
(2572, 'student', 'POSITION_C'),
(2573, 'student', 'POSITION_D'),
(2574, 'student', 'POSITION_R'),
(2575, 'student', 'POSITION_U'),
(2576, 'student', 'PRODUCT_R'),
(2577, 'student', 'ROLE_C'),
(2578, 'student', 'ROLE_D'),
(2579, 'student', 'ROLE_R'),
(2580, 'student', 'ROLE_U'),
(2581, 'student', 'SCHOOL_C'),
(2582, 'student', 'SCHOOL_D'),
(2583, 'student', 'SCHOOL_R'),
(2584, 'student', 'SCHOOL_U'),
(2585, 'student', 'TERM_C'),
(2586, 'student', 'TERM_D'),
(2587, 'student', 'TERM_R'),
(2588, 'student', 'TERM_U'),
(2589, 'student', 'USER_C'),
(2590, 'student', 'USER_D'),
(2591, 'student', 'USER_R'),
(2592, 'student', 'USER_U'),
(2593, 'student', 'YEAR_C'),
(2594, 'student', 'YEAR_D'),
(2595, 'student', 'YEAR_R'),
(2596, 'student', 'YEAR_U');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school`
--

CREATE TABLE `tbl_school` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DeanID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_school`
--

INSERT INTO `tbl_school` (`ID`, `Name`, `DeanID`) VALUES
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology', ''),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science', ''),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science', ''),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities', ''),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_term`
--

CREATE TABLE `tbl_term` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_term`
--

INSERT INTO `tbl_term` (`ID`, `Name`) VALUES
('{6DE3CF58-3A1A-4D6A-88CF-83F22C27E0BA}', 'Special'),
('{AF8B217E-4E76-41B8-A02A-7115BD4A6BE6}', '2nd'),
('{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `IsLogged` smallint(1) DEFAULT NULL,
  `IsArchived` smallint(1) DEFAULT NULL,
  `IsDeleted` smallint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`ID`, `UniversityID`, `Email`, `Password`, `FirstName`, `LastName`, `Status`, `IsLogged`, `IsArchived`, `IsDeleted`) VALUES
('another@test.com', '020202', 'another@test.com', '123', 'Another', 'Test     ', 'approved', NULL, 0, 0),
('juelcse14ku@gmail.com', '140207', 'juelcse14ku@gmail.com', '7', 'Juel', 'Hossain', 'approved', NULL, NULL, NULL),
('test@test.com', '020201', 'test@test.com', '123', 'I AM', 'ADMIN ', 'approved', NULL, NULL, NULL),
('toufiqueaman@gmail.com', '140234', 'toufiqueaman@gmail.com', '34', 'shujon', 'Toufique', 'approved', NULL, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_discipline`
--

CREATE TABLE `tbl_user_discipline` (
  `UserID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_position`
--

CREATE TABLE `tbl_user_position` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `PositionID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_position`
--

INSERT INTO `tbl_user_position` (`ID`, `UserID`, `PositionID`) VALUES
(4, '{693F944F-328D-433A-9F94-459D92841645}', '{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}'),
(14, '{E0F0AE1A-AECF-46C1-A148-4485036F3CCF}', '{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}'),
(16, '{A4F96981-F014-46F6-BB93-87500C3CBB03}', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}'),
(17, '{0B2F4F89-2048-4504-AB17-0412CC624A05}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(19, '{8104FB4F-8E63-489D-8D90-DB45A9A2327B}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(21, '{8B24B76D-9969-4F71-ABC4-6EE59355C686}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(24, '{9E2E6363-A0FF-4C0F-B58F-D162725FB702}', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}'),
(30, 'mohidul@gmail.com', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(37, 'mkazi078@uottawa.ca', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(41, 'test@test.com', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(44, 'another@test.com', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(45, 'another@test.com', '{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}'),
(46, 'another@test.com', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}'),
(47, 'another@test.com', '{92FDDA3F-1E91-4AA3-918F-EB595F85790C}'),
(48, 'another@test.com', '{818DE12F-60CC-42E4-BAEC-48EAAED65179}'),
(49, 'another@test.com', '{B78C7A7B-4D38-4025-8170-7B8C9F291946}'),
(50, 'another@test.com', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}'),
(51, 'another@test.com', '{B76EB035-EA26-4CEB-B029-1C6129574D98}'),
(52, 'another@test.com', '{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}'),
(53, 'another@test.com', '{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}'),
(54, 'another@test.com', '{932CB0EE-76C2-448E-A40E-2D167EECC479}'),
(55, 'another@test.com', '{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}'),
(56, 'another@test.com', '{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_role`
--

CREATE TABLE `tbl_user_role` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `RoleID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_role`
--

INSERT INTO `tbl_user_role` (`ID`, `UserID`, `RoleID`) VALUES
(105, 'test@test.com', 'administrator'),
(106, 'test@test.com', 'teacher'),
(109, 'another@test.com', 'student'),
(110, 'juelcse14ku@gmail.com', 'student'),
(111, 'toufiqueaman@gmail.com', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_year`
--

CREATE TABLE `tbl_year` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_year`
--

INSERT INTO `tbl_year` (`ID`, `Name`) VALUES
('{1FAC0F1A-9D60-43F6-AB07-C933D5A4AA30}', 'Phd 1st'),
('{326B168F-58CC-42F3-B71A-DFE8DBBC05E8}', 'MSc 1st'),
('{6780C884-E112-4F58-9503-E2110B615547}', '4th'),
('{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '1st'),
('{A21965E4-4FE4-43AC-A77F-DABAC9B356F2}', '3rd'),
('{ADBEDD3E-D8EA-47AA-A068-C4C703DB4AE6}', 'MSc 2nd'),
('{B9D6CC05-7AD4-4666-80AB-80797A872743}', 'Phd 2nd'),
('{CBE08035-94CD-4610-B4E2-A0E844184056}', 'Phd 4th'),
('{E3823AA6-6BE5-4A07-93EA-FA59DE4F616F}', 'Phd 3rd'),
('{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '2nd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hms_hall`
--
ALTER TABLE `hms_hall`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tbl_discipline`
--
ALTER TABLE `tbl_discipline`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discussion`
--
ALTER TABLE `tbl_discussion`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discussion_category`
--
ALTER TABLE `tbl_discussion_category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discussion_comment`
--
ALTER TABLE `tbl_discussion_comment`
  ADD PRIMARY KEY (`CommentID`);

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
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_position`
--
ALTER TABLE `tbl_position`
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
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_role_permission`
--
ALTER TABLE `tbl_role_permission`
  ADD PRIMARY KEY (`Row`);

--
-- Indexes for table `tbl_term`
--
ALTER TABLE `tbl_term`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `UniversityID` (`UniversityID`);

--
-- Indexes for table `tbl_user_details`
--
ALTER TABLE `tbl_user_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user_position`
--
ALTER TABLE `tbl_user_position`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_year`
--
ALTER TABLE `tbl_year`
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
--
-- AUTO_INCREMENT for table `tbl_role_permission`
--
ALTER TABLE `tbl_role_permission`
  MODIFY `Row` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2597;
--
-- AUTO_INCREMENT for table `tbl_user_position`
--
ALTER TABLE `tbl_user_position`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
