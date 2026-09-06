-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 04:46 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_barangay`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblactivity`
--

CREATE TABLE `tblactivity` (
  `id` int(11) NOT NULL,
  `dateofactivity` date NOT NULL,
  `activity` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblactivityphoto`
--

CREATE TABLE `tblactivityphoto` (
  `id` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `filename` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblblotter`
--

CREATE TABLE `tblblotter` (
  `id` int(11) NOT NULL,
  `yearRecorded` varchar(4) NOT NULL,
  `dateRecorded` date NOT NULL,
  `complainant` text NOT NULL,
  `cage` int(11) NOT NULL,
  `caddress` text NOT NULL,
  `ccontact` int(11) NOT NULL,
  `personToComplain` text NOT NULL,
  `page` int(11) NOT NULL,
  `paddress` text NOT NULL,
  `pcontact` int(11) NOT NULL,
  `complaint` text NOT NULL,
  `respondent` varchar(50) NOT NULL,
  `sStatus` varchar(50) NOT NULL,
  `locationOfIncidence` text NOT NULL,
  `recordedby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblclearance`
--

CREATE TABLE `tblclearance` (
  `id` int(11) NOT NULL,
  `clearanceNo` int(11) NOT NULL,
  `resifname` varchar(50) NOT NULL,
  `resimname` varchar(50) NOT NULL,
  `resilname` varchar(50) NOT NULL,
  `findings` text NOT NULL,
  `purpose` text NOT NULL,
  `dateRecorded` date NOT NULL,
  `recorderid` int(11) NOT NULL,
  `recordedBy` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclearance`
--

INSERT INTO `tblclearance` (`id`, `clearanceNo`, `resifname`, `resimname`, `resilname`, `findings`, `purpose`, `dateRecorded`, `recorderid`, `recordedBy`, `status`) VALUES
(100005, 900001, 'Demo', 'Synthetic', 'Applicant 1', 'Fictional portfolio record; not an official finding.', 'Portfolio demonstration only', '2000-01-01', 0, 'Demo Official', ''),
(100007, 900002, 'Demo', 'Synthetic', 'Applicant 2', 'Fictional portfolio record; not an official finding.', 'Portfolio demonstration only', '2000-01-01', 25, 'Demo Official', 'New'),
(100013, 900003, 'Demo', 'Synthetic', 'Applicant 3', 'Fictional portfolio record; not an official finding.', 'Portfolio demonstration only', '2000-01-01', 25, 'Demo Official', 'New'),
(100015, 900004, 'Demo', 'Synthetic', 'Applicant 4', 'Fictional portfolio record; not an official finding.', 'Portfolio demonstration only', '2000-01-01', 25, 'Demo Official', 'New'),
(100016, 900005, 'Demo', 'Synthetic', 'Applicant 5', 'Fictional portfolio record; not an official finding.', 'Portfolio demonstration only', '2000-01-01', 25, 'Demo Official', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `tblhousehold`
--

CREATE TABLE `tblhousehold` (
  `id` int(11) NOT NULL,
  `householdno` int(11) NOT NULL,
  `zone` varchar(11) NOT NULL,
  `totalhouseholdmembers` int(2) NOT NULL,
  `headoffamily` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbllogs`
--

CREATE TABLE `tbllogs` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `logdate` datetime NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogs`
--

INSERT INTO `tbllogs` (`id`, `user`, `logdate`, `action`) VALUES
(3, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 1; no real event.'),
(4, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 2; no real event.'),
(5, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 3; no real event.'),
(6, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 4; no real event.'),
(7, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 5; no real event.'),
(8, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 6; no real event.'),
(9, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 7; no real event.'),
(10, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 8; no real event.'),
(11, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 9; no real event.'),
(12, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 10; no real event.'),
(13, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 11; no real event.'),
(14, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 12; no real event.'),
(15, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 13; no real event.'),
(16, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 14; no real event.'),
(17, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 15; no real event.'),
(18, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 16; no real event.'),
(19, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 17; no real event.'),
(20, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 18; no real event.'),
(21, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 19; no real event.'),
(22, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 20; no real event.'),
(23, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 21; no real event.'),
(24, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 22; no real event.'),
(25, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 23; no real event.'),
(26, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 24; no real event.'),
(27, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 25; no real event.'),
(28, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 26; no real event.'),
(29, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 27; no real event.'),
(30, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 28; no real event.'),
(31, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 29; no real event.'),
(32, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 30; no real event.'),
(33, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 31; no real event.'),
(34, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 32; no real event.'),
(35, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 33; no real event.'),
(36, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 34; no real event.'),
(37, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 35; no real event.'),
(38, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 36; no real event.'),
(39, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 37; no real event.'),
(40, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 38; no real event.'),
(41, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 39; no real event.'),
(42, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 40; no real event.'),
(43, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 41; no real event.'),
(44, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 42; no real event.'),
(45, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 43; no real event.'),
(46, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 44; no real event.'),
(47, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 45; no real event.'),
(48, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 46; no real event.'),
(49, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 47; no real event.'),
(50, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 48; no real event.'),
(51, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 49; no real event.'),
(52, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 50; no real event.'),
(53, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 51; no real event.'),
(54, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 52; no real event.'),
(55, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 53; no real event.'),
(56, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 54; no real event.'),
(57, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 55; no real event.'),
(58, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 56; no real event.'),
(59, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 57; no real event.'),
(60, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 58; no real event.'),
(61, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 59; no real event.'),
(62, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 60; no real event.'),
(63, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 61; no real event.'),
(64, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 62; no real event.'),
(65, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 63; no real event.'),
(66, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 64; no real event.'),
(67, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 65; no real event.'),
(68, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 66; no real event.'),
(69, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 67; no real event.'),
(70, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 68; no real event.'),
(71, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 69; no real event.'),
(72, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 70; no real event.'),
(73, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 71; no real event.'),
(74, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 72; no real event.'),
(75, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 73; no real event.'),
(76, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 74; no real event.'),
(77, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 75; no real event.'),
(78, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 76; no real event.'),
(79, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 77; no real event.'),
(80, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 78; no real event.'),
(81, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 79; no real event.'),
(82, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 80; no real event.'),
(83, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 81; no real event.'),
(84, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 82; no real event.'),
(85, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 83; no real event.'),
(86, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 84; no real event.'),
(87, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 85; no real event.'),
(88, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 86; no real event.'),
(89, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 87; no real event.'),
(90, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 88; no real event.'),
(91, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 89; no real event.'),
(92, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 90; no real event.'),
(93, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 91; no real event.'),
(94, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 92; no real event.'),
(95, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 93; no real event.'),
(96, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 94; no real event.'),
(97, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 95; no real event.'),
(98, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 96; no real event.'),
(99, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 97; no real event.'),
(100, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 98; no real event.'),
(101, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 99; no real event.'),
(102, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 100; no real event.'),
(103, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 101; no real event.'),
(104, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 102; no real event.'),
(105, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 103; no real event.'),
(106, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 104; no real event.'),
(107, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 105; no real event.'),
(108, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 106; no real event.'),
(109, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 107; no real event.'),
(110, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 108; no real event.'),
(111, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 109; no real event.'),
(112, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 110; no real event.'),
(113, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 111; no real event.'),
(114, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 112; no real event.'),
(115, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 113; no real event.'),
(116, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 114; no real event.'),
(117, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 115; no real event.'),
(118, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 116; no real event.'),
(119, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 117; no real event.'),
(120, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 118; no real event.'),
(121, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 119; no real event.'),
(122, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 120; no real event.'),
(123, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 121; no real event.'),
(124, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 122; no real event.'),
(125, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 123; no real event.'),
(126, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 124; no real event.'),
(127, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 125; no real event.'),
(128, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 126; no real event.'),
(129, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 127; no real event.'),
(130, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 128; no real event.'),
(131, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 129; no real event.'),
(132, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 130; no real event.'),
(133, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 131; no real event.'),
(134, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 132; no real event.'),
(135, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 133; no real event.'),
(136, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 134; no real event.'),
(137, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 135; no real event.'),
(138, 'Demo Official', '2000-01-01 00:00:00', 'Synthetic portfolio log entry 136; no real event.');

-- --------------------------------------------------------

--
-- Table structure for table `tblofficial`
--

CREATE TABLE `tblofficial` (
  `id` int(11) NOT NULL,
  `sPosition` varchar(50) NOT NULL,
  `oimage` text NOT NULL,
  `fname` text NOT NULL,
  `mname` text NOT NULL,
  `lname` text NOT NULL,
  `paddress` text NOT NULL,
  `cptfname` text NOT NULL,
  `cptmname` text NOT NULL,
  `cptlname` text NOT NULL,
  `pcontact` bigint(20) NOT NULL,
  `pemail` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblofficial`
--

INSERT INTO `tblofficial` (`id`, `sPosition`, `oimage`, `fname`, `mname`, `lname`, `paddress`, `cptfname`, `cptmname`, `cptlname`, `pcontact`, `pemail`, `username`, `password`) VALUES
(1, 'Administrator', '', 'Demo', 'Synthetic', 'Official 1', 'Fictional Barangay 1', 'Demo', 'Synthetic', 'Captain 1', 0, 'demo-official-1@example.invalid', 'demo-official-1', '!DEMO-NO-LOGIN!'),
(22, 'Mayor Secretary', '', 'Demo', 'Synthetic', 'Official 2', 'Fictional Barangay 2', 'Demo', 'Synthetic', 'Captain 2', 0, 'demo-official-2@example.invalid', 'demo-official-2', '!DEMO-NO-LOGIN!'),
(23, 'Secretary', '', 'Demo', 'Synthetic', 'Official 3', 'Fictional Barangay 3', 'Demo', 'Synthetic', 'Captain 3', 0, 'demo-official-3@example.invalid', 'demo-official-3', '!DEMO-NO-LOGIN!'),
(24, 'Secretary', '', 'Demo', 'Synthetic', 'Official 4', 'Fictional Barangay 4', 'Demo', 'Synthetic', 'Captain 4', 0, 'demo-official-4@example.invalid', 'demo-official-4', '!DEMO-NO-LOGIN!'),
(25, 'Secretary', '', 'Demo', 'Synthetic', 'Official 5', 'Fictional Barangay 5', 'Demo', 'Synthetic', 'Captain 5', 0, 'demo-official-5@example.invalid', 'demo-official-5', '!DEMO-NO-LOGIN!');

-- --------------------------------------------------------

--
-- Table structure for table `tblpermit`
--

CREATE TABLE `tblpermit` (
  `id` int(11) NOT NULL,
  `resifname` varchar(50) NOT NULL,
  `resimname` varchar(50) NOT NULL,
  `resilname` varchar(50) NOT NULL,
  `businessName` text NOT NULL,
  `businessAddress` text NOT NULL,
  `typeOfBusiness` varchar(50) NOT NULL,
  `orNo` int(11) NOT NULL,
  `samount` int(11) NOT NULL,
  `dateRecorded` varchar(25) NOT NULL,
  `recorderid` int(11) NOT NULL,
  `recordedBy` varchar(50) NOT NULL,
  `qrlink` varchar(100) NOT NULL,
  `qrdir` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpermit`
--

INSERT INTO `tblpermit` (`id`, `resifname`, `resimname`, `resilname`, `businessName`, `businessAddress`, `typeOfBusiness`, `orNo`, `samount`, `dateRecorded`, `recorderid`, `recordedBy`, `qrlink`, `qrdir`, `status`) VALUES
(33, 'Demo', 'Synthetic', 'Applicant 1', 'Fictional Demo Shop', 'Demo Street, Fictional Barangay', 'Demo retail', 900101, 0, '2000-01-01', 25, 'Demo Official', '/trackingsystem/tracking/statustracking.php?qrcode=BP900101', 'image/4ff05e91817dbc815a4da1b3acf28a48.png', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tblresidency`
--

CREATE TABLE `tblresidency` (
  `id` int(11) NOT NULL,
  `residencyNo` int(11) NOT NULL,
  `residentname` varchar(50) NOT NULL,
  `findings` text NOT NULL,
  `RorNo` int(11) NOT NULL,
  `dateRecorded` date NOT NULL,
  `recorderid` int(11) NOT NULL,
  `recordedBy` varchar(50) NOT NULL,
  `option` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresidency`
--

INSERT INTO `tblresidency` (`id`, `residencyNo`, `residentname`, `findings`, `RorNo`, `dateRecorded`, `recorderid`, `recordedBy`, `option`) VALUES
(1, 900201, 'Demo Synthetic Resident 1', 'Fictional portfolio record; not an official finding.', 900301, '2000-01-01', 15, 'Demo Official', 'Demo only'),
(2, 900202, 'Demo Synthetic Resident 2', 'Fictional portfolio record; not an official finding.', 900302, '2000-01-01', 15, 'Demo Official', 'Demo only'),
(3, 900203, 'Demo Synthetic Resident 3', 'Fictional portfolio record; not an official finding.', 900303, '2000-01-01', 15, 'Demo Official', 'Demo only'),
(4, 900204, 'Demo Synthetic Resident 4', 'Fictional portfolio record; not an official finding.', 900304, '2000-01-01', 17, 'Demo Official', 'Demo only'),
(5, 900205, 'Demo Synthetic Resident 5', 'Fictional portfolio record; not an official finding.', 900305, '2000-01-01', 15, 'Demo Official', 'Demo only');

-- --------------------------------------------------------

--
-- Table structure for table `tblresident`
--

CREATE TABLE `tblresident` (
  `id` int(11) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `bdate` varchar(20) NOT NULL,
  `bplace` text NOT NULL,
  `age` int(11) NOT NULL,
  `barangay` varchar(120) NOT NULL,
  `zone` varchar(5) NOT NULL,
  `totalhousehold` int(5) NOT NULL,
  `civilstatus` varchar(20) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `householdnum` int(11) NOT NULL,
  `lengthofstay` int(11) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresident`
--

INSERT INTO `tblresident` (`id`, `lname`, `fname`, `mname`, `bdate`, `bplace`, `age`, `barangay`, `zone`, `totalhousehold`, `civilstatus`, `occupation`, `householdnum`, `lengthofstay`, `nationality`, `gender`, `image`) VALUES
(2, 'Resident 1', 'Demo', 'Synthetic', '2000-01-01', 'Fictional Demo Town', 25, 'Fictional Demo Barangay', 'DEMO', 1, 'Single', 'Fictional occupation', 900001, 1, 'Demo', 'Other', '1667625941999_cece.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

-- Publication sanitization: original plaintext-account rows omitted; schema retained.

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblactivity`
--
ALTER TABLE `tblactivity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblactivityphoto`
--
ALTER TABLE `tblactivityphoto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblotter`
--
ALTER TABLE `tblblotter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclearance`
--
ALTER TABLE `tblclearance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhousehold`
--
ALTER TABLE `tblhousehold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllogs`
--
ALTER TABLE `tbllogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblofficial`
--
ALTER TABLE `tblofficial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpermit`
--
ALTER TABLE `tblpermit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresidency`
--
ALTER TABLE `tblresidency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresident`
--
ALTER TABLE `tblresident`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblactivity`
--
ALTER TABLE `tblactivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblactivityphoto`
--
ALTER TABLE `tblactivityphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblblotter`
--
ALTER TABLE `tblblotter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblclearance`
--
ALTER TABLE `tblclearance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100018;

--
-- AUTO_INCREMENT for table `tblhousehold`
--
ALTER TABLE `tblhousehold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `tblofficial`
--
ALTER TABLE `tblofficial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblpermit`
--
ALTER TABLE `tblpermit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblresidency`
--
ALTER TABLE `tblresidency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblresident`
--
ALTER TABLE `tblresident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
