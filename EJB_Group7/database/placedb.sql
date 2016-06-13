-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2016 at 03:05 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `CategoryID` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Category- Các chủ đề ';

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `Name`) VALUES
('cate-1', 'The Thao'),
('cate-2', 'Âm Nhạc'),
('cate-3', 'Quốc Tế');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `CmtID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PostID` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `UserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CmtContent` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`CmtID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`CmtID`, `PostID`, `UserName`, `CmtContent`) VALUES
('cmt-0', 'post-id-1', 'Quylk1', 'Descrption for comment'),
('cmt-1', 'post-id-1', 'Quylk1', 'Descrption for comment'),
('cmt-2', 'post-id-1', 'Quylk1', 'Descrption for comment'),
('cmt-3', 'post-id-1', 'Quylk1', 'Descrption for comment'),
('cmt-4', 'post-id-1', 'Quylk1', 'Descrption for comment'),
('cmt-5', 'post-id-1', 'Quylk1', 'Descrption for comment');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `PostID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CategoryID` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Content` text COLLATE utf8_unicode_ci,
  `Rate` int(11) DEFAULT NULL,
  `Author` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`PostID`),
  KEY `CategoryID` (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bài đăng';

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`PostID`, `Title`, `CategoryID`, `CreateDate`, `Image`, `Content`, `Rate`, `Author`) VALUES
('post-id-1', 'title1', 'cate-1', '2016-06-30', 'image', 'contect of a posst', 4, 'Quylk'),
('post-id-2', 'title1', 'cate-1', '2016-06-30', 'image', 'contect of a posst', 4, 'Quylk'),
('post-id-3', 'title1', 'cate-1', '2016-06-30', 'image', 'contect of a posst', 4, 'Quylk'),
('post-id-4', 'title1', 'cate-1', '2016-06-30', 'image', 'contect of a posst', 4, 'Quylk'),
('post-id-5', 'title5', 'cate-1', '2016-06-30', 'image', 'contect of a posst', 4, 'Quylk');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `UserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gender` int(11) NOT NULL,
  `PhoneNumber` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mail` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Role` int(11) DEFAULT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Người dùng';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserName`, `FullName`, `Password`, `Gender`, `PhoneNumber`, `Mail`, `Role`) VALUES
('77777', '777777', '77777', 0, '7777777', 'quylk2906@gmail.com', 10),
('admin', 'qweqweqwe', '123123', 0, '888888', 'quylk2906@gmail.com', 10),
('Quylk1', 'Lê Kim Quý', 'admin', 1, '09999999', 'quylk2906@gmail.com', 0),
('Quylk10', 'Lê Kim Quý', 'admin', 1, '09999999', 'quylk2906@gmail.com', 1),
('Quylk11', 'Lê Kim Quý', 'admin', 0, '09999999', 'quylk2906@gmail.com', 1),
('Quylk12', 'Lê Kim Quý', 'admin', 1, '09999999', 'quylk2906@gmail.com', 1),
('Quylk13', 'Lê Kim Quý', 'admin', 1, '09999999', 'quylk2906@gmail.com', 1),
('Quylk21', 'Le Kim Tho ', 'admin', 0, '111111', 'quylk2906@gmail.com', 10),
('Quylk22', 'root', 'admin', 0, '1232323', 'quylk2906@gmail.com', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
