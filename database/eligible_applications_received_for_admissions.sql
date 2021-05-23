-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 19, 2021 at 12:07 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `eligible_applications_received_for_admissions`
--

CREATE TABLE `eligible_applications_received_for_admissions` (
  `year` varchar(5) DEFAULT NULL,
  `Number_of_eligible_applications_received_for_admissions` varchar(55) DEFAULT NULL,
  `Upload_supporting_document` varchar(89) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eligible_applications_received_for_admissions`
--

INSERT INTO `eligible_applications_received_for_admissions` (`year`, `Number_of_eligible_applications_received_for_admissions`, `Upload_supporting_document`) VALUES
('2019', '156219', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/DVVFiles/11003_DEMND_RATIO.pdf'),
('2018', '203533', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/DVVFiles/11003_DEMND_RATIO.pdf'),
('2017', '105997', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/DVVFiles/11003_DEMND_RATIO.pdf'),
('2016', '99501', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/DVVFiles/11003_DEMND_RATIO.pdf'),
('2015', '100249', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/DVVFiles/11003_DEMND_RATIO.pdf');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
