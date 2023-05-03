-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 07:39 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `a`
--

CREATE TABLE `a` (
  `3rd install` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `firstname`, `middlename`, `lastname`) VALUES
(1, 'surabhi', '1234', 's', 's', 's'),
(2, 'admin', 'a1Bz20ydqelm8m1wqlf865b53623b121fd34ee5426c792e5c33af8c227', 'junil', 'a', 'toledo');

-- --------------------------------------------------------

--
-- Table structure for table `emp_message`
--

CREATE TABLE `emp_message` (
  `empID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_message`
--

INSERT INTO `emp_message` (`empID`, `name`, `email`, `message`) VALUES
(3, 'nice', 'jonelwalangkontra@yahoo.com', 'good'),
(4, 'CT2887d', 'aniketsankpal62@gmail.com', 'hi'),
(5, 'CT2887d', 'aniketsankpal62@gmail.com', 'hiiiiii app');

-- --------------------------------------------------------

--
-- Table structure for table `late`
--

CREATE TABLE `late` (
  `late_id` int(11) NOT NULL,
  `user_no` varchar(200) NOT NULL,
  `password` varchar(40) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `datehire` date NOT NULL,
  `designation` text NOT NULL,
  `Department` text NOT NULL,
  `id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `late`
--

INSERT INTO `late` (`late_id`, `user_no`, `password`, `fname`, `mname`, `lname`, `datehire`, `designation`, `Department`, `id`) VALUES
(11, '11', '1234', 'aniket', 'm', 'sankpal', '2022-05-02', 'a', 'a dpmt', 'OFFLINE'),
(15, '1', '1234', 'sagar', 'n', 'birajdar', '0000-00-00', '', '', 'OFFLINE'),
(17, 'priya', '1234', 'priya', 'a', 'kharat', '0000-00-00', '', '', ''),
(18, 'priya', '81dc9bdb52d04dc20036dbd8313ed055', '', '', NULL, '0000-00-00', '', '', ''),
(19, 'pritya143', '903ce9225fca3e988c2af215d4e544d3', '', '', NULL, '0000-00-00', '', '', ''),
(20, 'priya444', '81dc9bdb52d04dc20036dbd8313ed055', 'priya kharat', '', NULL, '0000-00-00', '', '', 'OFFLINE'),
(21, 'priya101', '101', 'priya ', 'a', 'kharat', '0000-00-00', '', '', 'OFFLINE'),
(22, 'a123', '81dc9bdb52d04dc20036dbd8313ed055', 'a123', 's', 's', '0000-00-00', '', '', 'OFFLINE'),
(23, 'priya143143', 'a9575efd6da5a277322853c68081ab88', 'priya', '', NULL, '0000-00-00', '', '', ''),
(24, 'priya143', 'a9575efd6da5a277322853c68081ab88', 'priya', '', NULL, '0000-00-00', '', '', ''),
(25, 'ap', '81dc9bdb52d04dc20036dbd8313ed055', 'priya', '', NULL, '0000-00-00', '', '', ''),
(26, 'aniket444', 'dbc4d84bfcfe2284ba11beffb853a8c4', 'ANIKET 2', 'NULL', NULL, '0000-00-00', '', '', 'OFFLINE'),
(27, 'urmila', '81dc9bdb52d04dc20036dbd8313ed055', 'urmila', '', NULL, '0000-00-00', '', '', ''),
(28, 'urmila', '81dc9bdb52d04dc20036dbd8313ed055', 'urmila', '', NULL, '0000-00-00', '', '', ''),
(29, 'aaaa', 'b59c67bf196a4758191e42f76670ceba', 'aaaa', '', NULL, '0000-00-00', '', '', ''),
(30, 'a1', '1234', 'sample12', 'NULL', NULL, '0000-00-00', '', '', 'OFFLINE'),
(31, 'PRIYANKA', '1234', 'PRIYANKA KHARAT', 'NULL', NULL, '0000-00-00', '', '', 'OFFLINE'),
(32, 'priya126', '1234', 'priya', 'NULL', NULL, '0000-00-00', '', '', 'ONLINE'),
(34, 'kailas', '1234', 'kailas matare', 'NULL', NULL, '0000-00-00', '', '', 'OFFLINE'),
(35, 'sample', '123', 'sample', 'NULL', NULL, '0000-00-00', '', '', 'ONLINE');

-- --------------------------------------------------------

--
-- Table structure for table `register_admin`
--

CREATE TABLE `register_admin` (
  `Usename` varchar(200) NOT NULL,
  `MobileNumber` int(10) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register_admin`
--

INSERT INTO `register_admin` (`Usename`, `MobileNumber`, `Email`, `Password`) VALUES
('kailas', 1234567890, 'kailas@gmail.com', 'kailas@1234'),
('kailas', 1234567890, 'kailas@gmail.com', 'kailas@1234'),
('dattu', 1234567890, 'dattu@gmail.com', 'dattu@1234'),
('aniket', 1234567890, 'ani@gfd.com', '1234'),
('admin', 1234567890, 'admin21234@jhg.com', 'admin12345'),
('admin2222', 1234567890, 'admin@asd.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `register_students`
--

CREATE TABLE `register_students` (
  `Usename` varchar(200) NOT NULL,
  `MobileNumber` int(10) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register_students`
--

INSERT INTO `register_students` (`Usename`, `MobileNumber`, `Email`, `Password`) VALUES
('kailas', 1234567890, 'kailas@gmail.com', 'kailas@1234'),
('kailas', 1234567890, 'kailas@gmail.com', 'kailas@1234'),
('dattu', 1234567890, 'dattu@gmail.com', 'dattu@1234'),
('aniket', 1234567890, 'ani@gfd.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 1234567890, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-10-11 04:36:52'),
(2, 'datta', 'datta', 1234567890, 'datta@gmail.com', 'ff0abbcc0227c9124a804b084d161a2d', '2022-04-30 04:48:01'),
(18, 'kailas', 'kailas', 1234567890, 'kailas@gmail.com', 'cc213e3b9014ad00a74be9013b4ec906', '2022-05-11 08:41:34'),
(54, 'aniket', 'aniket', 1234567890, 'shubhampisal720@gmail.com', '1234', '2022-05-12 06:55:57'),
(55, 'aniket2', 'aniket', 1234567890, 'shubhampisal720@gmail.com', 'md5.(1234)', '2022-05-12 06:57:37'),
(56, 'prathamesh', 'prathmesh', 1234567890, 'datta@gmail.com', 'ff0abbcc0227c9124a804b084d161a2d', '2022-05-12 06:57:57'),
(154, 'ttttt', 'ttttt', 1234567890, 'ttttt@ttt.ttt', 'ttttttttt', '2022-05-13 07:16:41'),
(155, 'ttttt', 'ttttt', 1234567890, 'ttttt@ttt.ttt', 'ttttttttt', '2022-05-13 07:19:18'),
(159, 'xyz', 'aniket', 1234567890, 'shubhampisal720@gmail.com', '1234', '2022-05-13 10:23:45'),
(164, 'harshada', 'harshada', 8010754964, 'harshadasankpal007@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2022-05-14 14:05:13'),
(167, 'priyanka', 'priyanka', 1234567890, 'priyanka@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2022-05-14 14:12:20'),
(169, 'soham sankpal', 'sam', 1234567890, 'sam@sam.sam', '81dc9bdb52d04dc20036dbd8313ed055', '2022-05-14 14:45:22'),
(170, 'soham sankpal', 'sam', 1234567890, 'sam@sam.sam', '81dc9bdb52d04dc20036dbd8313ed055', '2022-05-14 14:47:43'),
(171, 'soham sankpal', 'sam', 1234567890, 'sam@sam.sam', '81dc9bdb52d04dc20036dbd8313ed055', '2022-05-14 14:51:55'),
(176, 'sam', 'sam', 1234567890, 'hgdhgdgghd@gvhgh.hvhh', 'c20ad4d76fe97759aa27a0c99bff6710', '2022-05-14 14:55:00'),
(177, 'sam', 'sam', 1234567890, 'hgdhgdgghd@gvhgh.hvhh', 'c20ad4d76fe97759aa27a0c99bff6710', '2022-05-14 14:55:27'),
(201, 'aniket sankpal', 'aniket sankpal', 0, '1234567890', 'e10adc3949ba59abbe56e057f20f883e', '2022-05-20 07:09:47'),
(202, 'aniket sankpal', 'aniket sankpal', 0, '1234567890', 'e10adc3949ba59abbe56e057f20f883e', '2022-05-20 07:10:16'),
(203, 'aniket', 'aniket', 0, '1234567890', 'e10adc3949ba59abbe56e057f20f883e', '2022-05-20 07:13:10'),
(204, 'chhota bheem', 'chhota bheem', 1234567890, 'hgdhgdgghd@gvhgh.hvhh', 'e10adc3949ba59abbe56e057f20f883e', '2022-05-20 07:15:22'),
(205, 'chhota bheem', 'chhota bheem', 1234567890, 'hgdhgdgghd@gvhgh.hvhh', 'e10adc3949ba59abbe56e057f20f883e', '2022-05-20 07:16:55'),
(206, 'a', 'a', 9022608488, 'shubhampisal720@gmail.com', '6512bd43d9caa6e02c990b0a82652dca', '2022-05-20 09:07:03'),
(207, 'a', 'a', 9022608488, 'shubhampisal720@gmail.com', '6512bd43d9caa6e02c990b0a82652dca', '2022-05-20 09:07:48'),
(208, 'a', 'a', 90226, 'shubhampisal720@gmail.com', '6512bd43d9caa6e02c990b0a82652dca', '2022-05-20 09:08:16'),
(210, 'priyanka2', 'priya', 1234567890, 'pk720@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '2022-05-20 09:15:54'),
(211, '12r237612312', '12r237612312', 0, 'fq4124124@djdd.dkdd', '7be6e37567f18b0b4faaad89babe0726', '2022-05-20 09:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblcertificate`
--

CREATE TABLE `tblcertificate` (
  `ID` int(10) NOT NULL,
  `certifiacate` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassName`, `Section`, `CreationDate`) VALUES
(1, 'BCA I', '1', '2022-01-13 10:42:14'),
(2, 'BCA II', '2', '2022-01-13 10:42:35'),
(3, 'BCA III', '3', '2022-01-13 10:42:41'),
(12, 'MS-CIT', 'A', '2022-05-04 12:01:15'),
(13, 'TALLY', 'A', '2022-05-04 12:01:27'),
(14, 'C Programming', 'A', '2022-05-04 12:01:43'),
(20, 'web design', 'A', '2022-05-30 04:27:23'),
(21, 'C#', 'A', '2022-05-30 04:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblfees`
--

CREATE TABLE `tblfees` (
  `ID` int(11) NOT NULL,
  `FirstInstall` int(12) NOT NULL,
  `SecondInstall` int(12) NOT NULL,
  `ThirdInstall` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblfees`
--

INSERT INTO `tblfees` (`ID`, `FirstInstall`, `SecondInstall`, `ThirdInstall`) VALUES
(0, 20220508, 20220508, 20220508),
(0, 10000, 10000, 10000),
(0, 10000, 10000, 1000),
(0, 2000, 2000, 8000);

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` mediumtext DEFAULT NULL,
  `ClassId` int(10) DEFAULT NULL,
  `NoticeMsg` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`ID`, `NoticeTitle`, `ClassId`, `NoticeMsg`, `CreationDate`) VALUES
(2, 'Marks of Unit Test.', 3, 'Meet your class teacher for seeing copies of unit test', '2022-01-19 06:35:58'),
(4, 'Test', 3, 'This is for testing.', '2022-02-02 18:17:03'),
(5, 'Test Notice', 8, 'This is for Testing.', '2022-02-02 19:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<h2 style=\"font-size: 24px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; font-weight: normal; line-height: normal; color: rgb(0, 0, 0); font-family: OpenSansRegular;\">About Surabhi Computers</h2><p align=\"justify\" style=\"font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: rgb(0, 0, 0); font-family: OpenSansRegular;\">Surabhi Computers, Wai an ISO 9001-2008 certified Institute specializes in Computer Software and Hardware Training, Software Development, Software Consulting, Hardware Sales &amp; Service and Corporate Training since last 18 years.</p><p align=\"justify\" style=\"font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: rgb(0, 0, 0); font-family: OpenSansRegular;\">Surabhi Computers is one stop destination for IT Students, Graduates, Professionals and Aspirants, where they can join industry ready training courses based upon various fields of Information Technology such as software development, web designing, software testing, mobile apps development and other related subjects along with soft skills and communication skills training.</p><p align=\"justify\" style=\"font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: rgb(0, 0, 0); font-family: OpenSansRegular;\">The courses are designed and developed keeping the&nbsp;<img src=\"https://surabhicomputers.com/images/pics/About%20Surabhi1.JPG\" align=\"right\" style=\"margin: 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">current industry requirements into considerations. These courses are categorized according to the candidates experience level and therefore; have options to choose the relevant training course for them.</p><p align=\"justify\" style=\"font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: rgb(0, 0, 0); font-family: OpenSansRegular;\">The curriculum and study content has been designed and developed by experienced industry experts. The training courses cover all major aspects and concepts of various subjects and areas of Information Technology and Software Engineering along with practical exposure through Industry Live Projects.</p><p align=\"justify\" style=\"font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: rgb(0, 0, 0); font-family: OpenSansRegular;\">After completion of particular course candidates are given Training Completion Certificates and Experience Letters. The HR Consultation and Placements are one of the most prominent benefits of these courses and after completion of the training; candidates take away the real time corporate exposure with enhanced employability skills.</p><p align=\"justify\" style=\"font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: rgb(0, 0, 0); font-family: OpenSansRegular;\">The Surabhi Computers is an IT Training Service Provider that provides comprehensive education and training in various fields of Information Technology and related subjects and concepts.SURABHI as the name suggests, is Kamdhenu (School) of IT (Information Technology and, It is a one stop destination for IT Students, Graduates, Professionals and Aspirants where, they can get integrated and robust training on various fields of Information Technology such as software development, web designing, software testing &amp; QC, mobile apps development and other related subjects along with soft skills and communication skills training.</p><p align=\"justify\" style=\"font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: rgb(0, 0, 0); font-family: OpenSansRegular;\">The major objective of Surabhi is to act like enabler for people associated with IT and related fields. Further to this, to provide a platform to them where they can enhance their knowledge, skills and add value to their profile and employability quotient.</p><hr style=\"color: rgb(0, 0, 0); font-family: OpenSansRegular; font-size: 12px;\"><h2 style=\"font-size: 24px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; font-weight: normal; line-height: normal; color: rgb(0, 0, 0); font-family: OpenSansRegular;\">DNA</h2><p align=\"justify\" style=\"font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: rgb(0, 0, 0); font-family: OpenSansRegular;\"><img src=\"https://surabhicomputers.com/images/pics/VisionandMission.JPG\" alt=\"\" align=\"left\" style=\"margin: 0px 30px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\"></p><ul style=\"font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; list-style-position: initial; list-style-image: initial; color: rgb(0, 0, 0); font-family: OpenSansRegular;\"><li style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Well infrastructure with High Tech Laboratories</li><li style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Prime locations provide easy transportation for students.</li><li style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Highly qualified &amp; experience faculty team.</li><li style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Students get online project training &amp; industry visit.</li><li style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">We prepare our students for 2020 with various Soft skill &amp; motivational training programs.</li><li style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\">Library has more than 2000 books and magazines for students &amp; faculty reference.</li></ul><p style=\"font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: rgb(0, 0, 0); font-family: OpenSansRegular;\">&nbsp;</p><h1 class=\"font_heading02 color_black\" style=\"font-size: 50px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; font-weight: normal; line-height: normal; color: rgb(43, 45, 48); font-family: museo_slab_500regular;\">&nbsp;</h1><hr style=\"color: rgb(0, 0, 0); font-family: OpenSansRegular; font-size: 12px;\"><h2 style=\"font-size: 24px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; font-weight: normal; line-height: normal; color: rgb(0, 0, 0); font-family: OpenSansRegular;\">Mission of Surabhi Computers, Wai</h2><p align=\"justify\" style=\"font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: rgb(0, 0, 0); font-family: OpenSansRegular;\"><img src=\"https://surabhicomputers.com/images/pics/DNA.JPG\" alt=\"\" align=\"left\" style=\"margin: 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: top;\"></p><p style=\"font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: rgb(0, 0, 0); font-family: OpenSansRegular;\">Our Mission is to pursue knowledge through academic, co-curricular and extra-curricular activities and to develop the learner’s personality with a strong value base.</p><p style=\"font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: rgb(0, 0, 0); font-family: OpenSansRegular;\">We are committed to maintaining a balance between theory and practice. We endeavor to facilitate the learners to gain knowledge and experience, enabling them to achieve meaningful individual development and the well-being of society at large.</p><p style=\"font-size: 50px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; color: rgb(0, 0, 0); font-family: OpenSansRegular;\">&nbsp;</p>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', '<span style=\"color: rgb(0, 0, 0); font-family: OpenSansRegular; font-size: 12px;\">664/A, Kisan Veer Chowk, Near Krishna River Bridge, Dharmapuri, Wai, Tal Wai</span>', 'surabhi.computers@gmail.com', 8485808186, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(5, 'BCA ', 'BCA\r\n\r\nBSC ( BIS )\r\n\r\nBachelor of Computer Applications (BCA)\r\nDuration : 3 Years (6 Semesters)\r\n \r\n\r\nBCA degree course is offered by YashwantraoChavan Maharashtra Open University. YCMOU established in July 1989 by the Act XX-(1989) of the Maharashtra State Legislature. BCA degree is recognized all over india and abroad for job, higher education & competitive exams like MPSC/UPSC.\r\n\r\nIndustry requires complete professionals having not only qualifications, but also clear concepts, in-depth technical knowledge, skills on various latest technologies & platforms.\r\n\r\nBCA is catering to the need of students aspiring to excel in the field of computers. This program is extended to six semesters each with a duration of six months. In this programme, besides computer, a student gets diversified knowledge on Management, Financial Accounting and Management.\r\n\r\nIn the last semester each student is required to undertake a \'Summer Project\' and work with a private organization for a period of 6 months and submit a report after the completion of the project. This provides an opportunity to the student to tackle real-life problems.\r\n\r\nEligibilty\r\n \r\n\r\nHSC Pass (Any stream)\r\nThree years Diploma of Board of Technical Examination (MSBTE)\r\nOr any equivalent to 10+2 (Pass)\r\n \r\n\r\nNote : ( ITI is not valid for BCA admissions) Dual degree scheme Learner studying degree programme of other university can also join BCA programme as this university allows simultaneous registration to two degrees.\r\n\r\nSyllabus\r\nFIRST YEAR\r\nSemester I	Semester II\r\nComputer Fundamentals	Data structures Through C\r\nOffice Tools	OOPs & C++\r\nProgramming Expertise in C	Data Communication & Networking (DCN)\r\nMathematics for Computers	Humanities & Social Obligation\r\nStudy Skills 	Communication Skills & Technical Writing\r\nSECOND YEAR\r\nSemester III	Semester IV\r\nElective-1 (Oracle)	System Analysis & Design\r\nElective - 2 Enterprise Resource Planning (ERP)	Principles of Database Management Systems (DBMS)\r\nElective - 3 (E-Commerce)	Computer Organization\r\nProfessional Development	Operating Systems\r\nNew Developments in IT	JAVA\r\nTHIRD YEAR\r\nSemester V	Semester VI\r\nSoftware Engineering	Software Project (6 month)\r\nProgramming Excellence Through VB.Net	 \r\nBuilding Web Portals Through ASP.Net	 \r\nEnterprise solutions using J2EE	 \r\nStatistical Techniques	 \r\nElective Subject\r\nData Structures through C++	DirectX Game Programming	 	 \r\nDistributed Computing through COM/DCOM	Programming Excellence through  C#\r\nE-Commerce	Enterprise Resource Planning (ERP)\r\nORACLE	Visual Programming\r\nWriting Windows Device Drivers	Linux\r\nStudy Material (Books)\r\n \r\n\r\nLearner registering to the YCMOU computer programme will get individual copy of self-explanatory courseware consisting of text-book and work book of Programming Subjects.\r\n\r\nLearner Guide (Handout book for students that help them follow the contents)\r\nLeaving certificate attested Xerox\r\nReference book (that gives slide-wise and lecture-wise explanation)\r\nExercise Book (work book that gives exercises to be done by students in the lab)\r\nExamination\r\n \r\n\r\nThe online examination enables learner to get their result and provisional certificates instantly. The regular certificate of successful learner is issued by the university in due course of time.', '2022-04-30 11:34:02'),
(6, 'Diploma Programs', '\r\ne- Accounting\r\nDuration : 11 Months\r\nModule-1: MS Office\r\nWe have covered the complete practical knowledge on MS word, Internet and Power Point. Ms Word: Apart from regular syllabus such as the use of toolkit, we specify the Practical Usage of Mail merge. Power Point: The preparation of Power Point Presentation has been covered.\r\n\r\n \r\n\r\nModule-2: Advance Excel\r\nAdvance function and formula Excel 2007, More than 300 formulas have been introduced to make our aspirants rapid fast in the world of booming MS Excel. Industrial Assignments as per the need of industries, and live projects to gain experience.\r\n\r\n \r\n\r\nModule-3: Accounting using Tally.ERP 9\r\nBasic Concept of Manual Accounting.Manually to computers and computers to Manual Accounting along with posting have been covered. Non Trading Organization Trading Organization, Manufacturing Organization Inventory, CST, VAT, TDS, Service Tax, Composition and Taxations, Various Reports, Payroll, Excise, Tally.NET\r\n\r\n \r\n\r\nModule-4: Professional Financial Management\r\nSalary, Income, Taxation and Expenditure, Banks, Post Office, Interest Income, Debt, Equity and Mutual Funds, Other Investments and Retirement Planning. Loans, Taking a home loan, Risk, Insurance, Budgeting\r\n\r\n \r\n\r\nModule-5: Business Communication and English\r\nBasic, Intermediate and Advanced English\r\n\r\n \r\n\r\nModule-6: Personality Development\r\nCommunication skills, Interview Preparation, Resume Writing\r\n\r\n \r\n\r\nModule-7: Hardware and Networking\r\nThe major installations pertaining to Accounts Software and the components of computer.\r\n\r\n \r\n\r\nHardware & Networking\r\nDuration : 6 Months\r\nUnderstanding PC\r\nComponents & Preventive maintenance\r\nInstalling and configuring Windows Various versions\r\nInstallation and Configuration of Peripherals\r\nAdvanced Trouble Shooting and data recovering techniques\r\nSystem Up gradation\r\nHardware Diagnostics\r\nDiagnostics Tools Viruses & Vaccines\r\nNetworking Technology and Protocols, Internetworking with TCP/IP\r\nNetwork cabling and troubleshooting\r\nServer and Network Administration\r\nInternetworking with routers and switches.\r\n \r\n\r\nADCM (Advanced Diploma in Computer Management)\r\nDuration : 11 Months\r\nMSCIT, DTP, Tally, Web Designing (ANY 2)\r\nIt Next\r\nAdvanced Excel\r\nSpoken English (3 Months)\r\nPersonality and Professional Development\r\nPrimary Computer Maintenance\r\nProject\r\nInternet based Project\r\n\r\n \r\n\r\nPGDCM (Post Graduate Diploma in Computer Management)\r\nDuration : 11 Months\r\nMSCIT, DTP, Tally, Web Designing (ANY 2)\r\nIt Next\r\nAdvanced Excel\r\nSpoken English (3 Months)\r\nPersonality and Professional Development\r\nPrimary Computer Maintenance\r\nProject\r\nInternet based Project\r\n \r\n\r\nDCTEd (Diploma in Computer Teacher Education)\r\nDuration : 11 Months\r\nMs Office\r\nHTML, C, C++, DTP (ANY 2)\r\nSpoken English (3 Months)\r\nTally (1 Month)\r\nPrimary Computer Maintenance & Networking\r\nExpertise in Excel\r\nTraining of teacher (3 Month MS-CIT Batch)\r\nProject (Power Point Presentation)\r\nSeminar (3 subject each)\r\n', '2022-04-30 11:35:33'),
(7, 'Certificate Programs', 'MS-CIT\r\nDuration : 3 Months\r\nMS-CIT is an Information Technology (IT) literacy course started by MKCL in the year 2002. It has made more than 8 million learners IT literate till date. It is the most popular IT Literacy course in Maharashtra.\r\n\r\n \r\n\r\nThis Course Comprises Of :\r\n \r\n\r\nReading and understanding a highly illustrated book\r\neLearning based self-learning sessions\r\nThrough MKCL\'s eLearning Revolution for All (ERA)\r\nProviding hands-on practice sessions.\r\nLearning facilitation by certified professionals\r\nWith academic interactions, assessments, and collaboration\r\nAfter completing this course, the learners will emerge as confident and versatile users of Information Technology.\r\n\r\nAdvance Excel\r\nDuration : 2.5 Months\r\nMS-CIT is an Information Technology (IT) literacy course started by MKCL in the year 2002. It has made more than 8 million learners IT literate till date. It is the most popular IT Literacy course in Maharashtra.\r\n\r\n \r\n\r\nThis Course Comprises Of :\r\n \r\n\r\nAdvance function and formula Excel 2007\r\nMore than 300 formulas have been introduced to make our aspirants rapid fast in the word of booming MS Excel\r\nIndustrial Assignments as per the need of industries\r\nLive projects to gain experience\r\nAuto CAD\r\nDuration : 2 Months\r\nAuto CAD- Basic\r\nAdvance Drawing & Editing Commands\r\nDrawings\r\nPrecision\r\nLayers\r\nLayout\r\nDimensions\r\nIntroduction to 3D\r\nUseful for any Engineering branch\r\nDraftsman\r\nArchitects\r\nInterior Designers\r\nDTP- Desk Top Publishing\r\nDuration : 3 Months\r\nThis Course Comprises Of :\r\nPagemaker\r\nPhotoshop\r\nCorel Draw\r\nShree Lipi', '2022-04-30 11:36:03'),
(8, 'Soft Skills Programs', 'Spoken English\r\nBeginnners\r\nDuration : 1 Months\r\n \r\n\r\nMaking Introduction\r\nBacic GRammer (Parts of Speech , Tenses , Verbs, Prepositions)\r\nVocabulary (Dictionary Activity, Describing Things, Events, Places)\r\nConversational Units (Everyday situations) Listening\r\nPronunciation , Tenses\r\nReading Comprehension\r\nPuzzles, Language Games\r\nIntermediate\r\nDuration : 1 Months\r\n \r\n\r\nMeetings and Greetings\r\nPair conversation, Prepositions\r\nListening (Stories and conversations) Conversational Units (Small Talk)\r\nVocabulary (Everyday Places + Provebs)\r\nLoud Reading\r\nAdvanced Grammar (Tenses, Articles, Prepositions, Conjunctions)\r\nRole plays, Presentations\r\nExplanation of Story/ Writing the story in own words\r\nLanguage Games and Activities\r\nTime Awareness\r\nMotivation and Confidence Building\r\nAdvanced\r\nDuration : 1 Months\r\n \r\n\r\nConversation Units\r\nVocabulary Building (Describing Appearances, Characters, Idioms and their Applications)\r\nCommon errors in English\r\nTelephone Etiquette\r\nAdvanced Grammar', '2022-04-30 11:36:33'),
(9, 'Corporate Programs', 'Advance Excel\r\nDuration : 2.5 Months\r\n \r\n\r\nMS-CIT is an Information Technology (IT) literacy course started by MKCL in the year 2002. It has made more than 8 million learners IT literate till date. It is the most popular IT Literacy course in Maharashtra.\r\n\r\nThis Course Comprises Of :\r\n \r\n\r\nAdvance function and formula Excel 2007\r\nMore than 300 formulas have been introduced to make our aspirants rapid fast in the word of booming MS Excel\r\nIndustrial Assignments as per the need of Industries\r\nLive Projects to gain Experience\r\nPersonality Development\r\nDuration : 3 Weeks\r\n \r\n\r\nKnow Yourself Better\r\nImprove Your Communication Skills\r\nManage Your Time More Productively\r\nTackle Challenging Tasks\r\nDevelop a Mindset of Success\r\nInterview Techniques\r\nJob Interview\r\n\r\n\r\nInterview is a pre-arranged and panned conversation used for evaluating the suitability of a candidate for a particular position', '2022-04-30 11:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext DEFAULT NULL,
  `MotherName` mediumtext DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp(),
  `FirstInstall` varchar(200) DEFAULT NULL,
  `secondInstall` varchar(200) DEFAULT NULL,
  `thirdInstall` varchar(200) DEFAULT NULL,
  `Sign` varchar(200) DEFAULT NULL,
  `BatchTime` time DEFAULT NULL,
  `certificate` varchar(434) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`, `FirstInstall`, `secondInstall`, `thirdInstall`, `Sign`, `BatchTime`, `certificate`) VALUES
(7, 'kailas', 'kailas@gmail.com', '3', 'Male', '2003-02-02', '2', 'k', 'k', 1234567890, 1234567890, 'wai', 'kailas', '81dc9bdb52d04dc20036dbd8313ed055', 'ec86b1808ea35473df70333ae2217cc91651465745.jpg', '2022-05-02 04:29:05', '20000', '5000', '5000', NULL, '10:00:12', ''),
(8, 'shubham', 'shubham@gmail.com', '3', 'Male', '2000-07-29', '3', 'shivaji', 'sp', 7066151761, 1234567890, 'wai', 'shubham123', 'b6ce9ac12d7c50a797ac7580ed00acf7', '61c8434b6f8a7eb4d89f6211792dc9271651644841.jpg', '2022-05-04 06:14:01', '10000', '10000', '10000', NULL, '12:00:00', ''),
(9, 'prathmesh wadkar', 'prathmesh77@gmail.com', '3', 'Male', '2001-05-23', '4', 'ramdas', 'pw', 9022608488, 9087654321, 'satalewadi wai', 'pw3', 'a8698009bce6d1b8c2128eddefc25aad', 'adac20f2af8502332754df791fe4308f1651645104.png', '2022-05-04 06:18:24', '1500', '5000', '10000', NULL, '01:00:00', ''),
(10, 'Aniket  Sankpal', 'anu%$#9011@gmail.com', '3', 'Male', '2000-02-11', '5', 'machindranath', 'savita', 9011241866, 7066151761, 'at kenjal', 'aniket', 'f0d588263a7c6a8d4e18237c807b3968', '61c8434b6f8a7eb4d89f6211792dc9271651645472.jpg', '2022-05-04 06:24:32', '5000', '0', '15000', NULL, '02:00:00', ''),
(16, 'jyoti', 'jyoti@gmail.com', '13', 'Female', '2003-01-12', '7', 'ss', 'ss', 7066151761, 1234567890, 'wai', NULL, NULL, 'db56aab7fbb65ee67a5ee436d746bd041651998721jpeg', '2022-05-08 08:32:01', '15000', '0', '0', NULL, '04:00:00', ''),
(17, 'surabhi', 'saurabh@gmail.com', '12', 'Female', '2006-02-01', '9', 'ss', 'ss', 9011241866, 1234567890, 'wai', NULL, NULL, 'a28791fea8ef730415acc5bf9d9be0061652073298jpeg', '2022-05-09 05:14:58', '1000', '0', '0', NULL, '00:00:03', ''),
(19, 'pranita', 'pranita@gmail.com', '3', 'Female', '2003-05-09', '11', 'p', 'p', 1234567890, 1234567890, 'wai', NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e1652086198jpeg', '2022-05-09 08:49:58', '10000', '1000', '10000', NULL, '12:12:12', ''),
(20, 'a', 'anu@gmail.com', '13', 'Male', '2030-02-11', '12', 'a', 'a', 1234567890, 1234567890, 'wai', NULL, NULL, 'db56aab7fbb65ee67a5ee436d746bd041652155339jpeg', '2022-05-10 04:02:19', '1000', '0', '0', 'd41d8cd98f00b204e9800998ecf8427e1652155339jpeg', '12:12:12', ''),
(22, 'SP', 'sp07@gmail.com', '3', 'Male', '2000-07-10', '14', 's', 'r', 9087654321, 1223456780, 'wai,satara', NULL, NULL, 'db56aab7fbb65ee67a5ee436d746bd041652172020jpeg', '2022-05-10 08:40:20', '30000', '00', '00', 'd41d8cd98f00b204e9800998ecf8427e1652172020jpeg', '02:10:00', ''),
(23, 'shubham jadhav', 'shubham@gmail.com', '3', 'Male', '2000-01-20', '17', 's', 's', 1234567890, 1234567890, 'mahabaleshwar', NULL, NULL, 'a28791fea8ef730415acc5bf9d9be0061652245105jpeg', '2022-05-11 04:58:25', '15000', '1000', '10000', 'd41d8cd98f00b204e9800998ecf8427e1652245105jpeg', '11:11:00', ''),
(24, 'sample', 'sample@gmail.com', '14', 'Male', '2022-05-04', '90', 'sp', 'ps', 9876543210, 8907654321, 'at mirzapur', NULL, NULL, '26b5eef28bf09b5a3a1a1827c77a524d1652957027.jpg', '2022-05-19 10:43:47', '1000', '5000', '10000', 'd41d8cd98f00b204e9800998ecf8427e1652957027.jpg', '07:10:00', ''),
(25, 'surabhi', 'surabhi@gmail.com', '13', 'Female', '0456-02-12', '20', 's', 's', 9022608488, 7066151761, 'wai', 'surabhi', '81dc9bdb52d04dc20036dbd8313ed055', '5d266ea41a41a2cd1ca7d7d91876da171652957612jpeg', '2022-05-19 10:53:32', '122', '122', '122', 'd41d8cd98f00b204e9800998ecf8427e1652957612jpeg', '00:12:00', ''),
(26, 'aniket sankpal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-24 08:13:35', '', '', '', NULL, NULL, ''),
(123, 'aniket123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-24 09:24:33', '', '', '', NULL, NULL, ''),
(124, 'sample', 'sample@gmail.com', '2', 'Female', '3567-12-12', '89', 'ASAS', 'AS', 1234567890, 1234567890, 'WAI', 'ASAS', '81dc9bdb52d04dc20036dbd8313ed055', '4f5dc315f4caa33a26a55d0916b008ad1653387235jpeg', '2022-05-24 10:13:55', '1222', '1', '1', 'd41d8cd98f00b204e9800998ecf8427e1653387235jpeg', '00:12:00', ''),
(125, 'jyoti', 'jyoti@gmail.com', '3', 'Female', '2001-04-07', '77', 'pranita', 'maya', 9563786900, 1234567890, 'wai', 'jyoti', 'a2c7c0ccb638b07f752083f088985de0', '56edc95b179de6045e6a9785ba051aad1653478801jpeg', '2022-05-25 11:40:01', '1500', '1000', '1000', 'd41d8cd98f00b204e9800998ecf8427e1653478801jpeg', '22:12:00', ''),
(136, 'priya', 'priya@gmail.com', '14', 'Female', '2003-11-11', '126', 's', 'j', 9876543210, 1234, '11', '126', '81dc9bdb52d04dc20036dbd8313ed055', '43d8be33dc00a33132c82adb9d0d3a541653846817.jpg', '2022-05-29 17:53:37', '0', '0', '0', 'd41d8cd98f00b204e9800998ecf8427e1653846817.jpg', '00:12:00', NULL),
(138, 'kailas matare', 'kailas@gmail.com', '21', 'Male', '2002-12-12', '137', 's', 'k', 1234567890, 1234567890, 'wai', 'kailas', '81dc9bdb52d04dc20036dbd8313ed055', '5d266ea41a41a2cd1ca7d7d91876da171653898465jpeg', '2022-05-30 08:14:25', '0', '0', '0', 'd41d8cd98f00b204e9800998ecf8427e1653898465jpeg', '00:12:00', NULL),
(139, 'sample', 'sample@gmail.com', '20', 'Male', '2000-11-11', '201', 'xyz', 'xyz', 9022608488, 8907654321, 'wai', 'sample', '202cb962ac59075b964b07152d234b70', '14a53cac5a312f3d1ad4980fec051d421653901756jpeg', '2022-05-30 09:09:16', '10000', '10000', '100', 'd41d8cd98f00b204e9800998ecf8427e1653901756jpeg', '11:10:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `attend` varchar(255) NOT NULL,
  `att_time` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`id`, `roll`, `attend`, `att_time`) VALUES
(1, 1, 'absent', '2019-01-16'),
(2, 2, 'present', '2019-01-16'),
(3, 3, 'absent', '2019-01-16'),
(4, 4, 'absent', '2019-01-16'),
(5, 5, 'present', '2019-01-16'),
(6, 6, 'present', '2019-01-16'),
(7, 7, 'absent', '2019-01-16'),
(9, 1, 'present', '2019-01-17'),
(10, 2, 'present', '2019-01-17'),
(11, 3, 'absent', '2019-01-17'),
(12, 4, 'absent', '2019-01-17'),
(13, 5, 'present', '2019-01-17'),
(14, 6, 'absent', '2019-01-17'),
(15, 7, 'present', '2019-01-17'),
(31, 6, 'absent', '2019-01-18'),
(30, 5, 'absent', '2019-01-18'),
(29, 4, 'present', '2019-01-18'),
(28, 3, 'present', '2019-01-18'),
(27, 2, 'present', '2019-01-18'),
(26, 1, 'present', '2019-01-18'),
(32, 7, 'present', '2019-01-18'),
(33, 1, 'present', '2022-05-24'),
(34, 2, 'present', '2022-05-24'),
(35, 3, 'absent', '2022-05-24'),
(36, 4, 'absent', '2022-05-24'),
(37, 5, 'absent', '2022-05-24'),
(38, 6, 'present', '2022-05-24'),
(39, 7, 'absent', '2022-05-24'),
(40, 12, '', '0000-00-00'),
(41, 12, '', '0000-00-00'),
(42, 123, '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_att`
--

CREATE TABLE `tbl_student_att` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `roll` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student_att`
--

INSERT INTO `tbl_student_att` (`id`, `name`, `roll`) VALUES
(15, 'jyoti', 13),
(9, 'aniket', 12),
(10, 'kailas', 2),
(11, 'datta', 3),
(12, 'shubham', 4),
(13, 'prathamesh', 5),
(14, 'saurabh', 6);

-- --------------------------------------------------------

--
-- Table structure for table `timein`
--

CREATE TABLE `timein` (
  `id` int(20) NOT NULL,
  `user_no` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(40) NOT NULL,
  `time` varchar(200) NOT NULL,
  `out` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timein`
--

INSERT INTO `timein` (`id`, `user_no`, `user_name`, `password`, `time`, `out`, `date`) VALUES
(1, 'CTcf475', 'toledo12345', 'junil a toledo', '11:10 AM', '05:46 PM', 'May-09-2019'),
(2, 'CT2887d', 'dar123', 'darwin r alborte', '02:49 PM', '06:17 PM', 'May-23-2022'),
(3, 'CT2887d', 'dar123', 'darwin r alborte', '02:50 PM', '06:17 PM', 'May-23-2022'),
(4, 'CT2887d', 'dar123', 'darwin r alborte', '02:50 PM', '06:17 PM', 'May-23-2022'),
(5, 'CT2887d', 'dar123', 'darwin r alborte', '02:58 PM', '06:17 PM', 'May-23-2022'),
(6, 'CT2887d', 'dar123', 'darwin r alborte', '05:02 PM', '06:17 PM', 'May-23-2022'),
(7, 'CT2887d', 'dar123', 'darwin r alborte', '07:54 PM', '06:17 PM', 'May-23-2022'),
(8, 'CT2887d', 'dar123', 'darwin r alborte', '02:18 PM', '06:17 PM', 'May-24-2022'),
(9, 'CT2887d', 'dar123', 'darwin r alborte', '07:34 PM', '06:17 PM', 'May-25-2022'),
(10, 'CT2887d', 'dar123', 'darwin r alborte', '07:47 PM', '06:17 PM', 'May-25-2022'),
(11, 'CT2887d', 'dar123', 'darwin r alborte', '02:06 PM', '06:17 PM', 'May-26-2022'),
(12, '11', '1111', 'aniket m sankpal', '02:15 PM', '06:19 PM', 'May-26-2022'),
(14, 'CT2887d', 'dar123', 'darwin r alborte', '02:13 PM', '06:17 PM', 'May-27-2022'),
(15, 'CT2887d', 'dar123', 'darwin r alborte', '02:22 PM', '06:17 PM', 'May-27-2022'),
(16, 'CT2887d', 'dar123', 'darwin r alborte', '06:17 PM', '06:17 PM', 'May-28-2022'),
(17, '1', 'dar123', 'sagar n birajdar', '06:20 PM', '03:57 PM', 'May-28-2022'),
(18, '1', '1234', 'sagar n birajdar', '06:23 PM', '03:57 PM', 'May-28-2022'),
(19, '1', '1234', 'sagar n birajdar', '07:17 PM', '03:57 PM', 'May-28-2022'),
(20, '1', '1234', 'sagar n birajdar', '08:02 PM', '03:57 PM', 'May-28-2022'),
(21, '1', '1234', 'sagar n birajdar', '03:41 PM', '03:57 PM', 'May-29-2022'),
(22, 'priya101', '101', 'priya  a kharat', '03:45 PM', '07:01 PM', 'May-29-2022'),
(23, 'priya101', '101', 'priya  a kharat', '05:02 PM', '07:01 PM', 'May-29-2022'),
(24, '126', '1234', 'priya NULL ', '01:55 AM', '12:48 PM', 'May-30-2022'),
(25, '126', '1234', 'priya NULL ', '12:47 PM', '12:48 PM', 'May-30-2022'),
(26, '126', '1234', 'priya NULL ', '12:56 PM', '', 'May-30-2022'),
(27, '1', '1234', 'sagar n birajdar', '01:12 PM', '03:57 PM', 'May-30-2022'),
(28, '1', '1234', 'sagar n birajdar', '01:28 PM', '03:57 PM', 'May-30-2022'),
(29, '1', '1234', 'sagar n birajdar', '03:56 PM', '03:57 PM', 'May-30-2022'),
(30, 'kailas', '1234', 'kailas matare NULL ', '04:19 PM', '04:20 PM', 'May-30-2022'),
(31, 'sample', '123', 'sample NULL ', '05:16 PM', '', 'May-30-2022');

-- --------------------------------------------------------

--
-- Table structure for table `timeout`
--

CREATE TABLE `timeout` (
  `id` int(20) NOT NULL,
  `user_no` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `emp_message`
--
ALTER TABLE `emp_message`
  ADD PRIMARY KEY (`empID`);

--
-- Indexes for table `late`
--
ALTER TABLE `late`
  ADD PRIMARY KEY (`late_id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcertificate`
--
ALTER TABLE `tblcertificate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_att`
--
ALTER TABLE `tbl_student_att`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timein`
--
ALTER TABLE `timein`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeout`
--
ALTER TABLE `timeout`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emp_message`
--
ALTER TABLE `emp_message`
  MODIFY `empID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `late`
--
ALTER TABLE `late`
  MODIFY `late_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_student_att`
--
ALTER TABLE `tbl_student_att`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `timein`
--
ALTER TABLE `timein`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `timeout`
--
ALTER TABLE `timeout`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
