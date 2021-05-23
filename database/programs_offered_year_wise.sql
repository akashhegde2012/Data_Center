-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 19, 2021 at 08:55 AM
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
-- Table structure for table `programs_offered_year_wise`
--

CREATE TABLE `programs_offered_year_wise` (
  `Program_Code` varchar(12) DEFAULT NULL,
  `Program_Name` varchar(43) DEFAULT NULL,
  `Year_of_offering` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programs_offered_year_wise`
--

INSERT INTO `programs_offered_year_wise` (`Program_Code`, `Program_Name`, `Year_of_offering`) VALUES
('ME', 'MECHANICAL ENGINEERING', '1962'),
('EE', 'ELECTRICAL & ELECTRONICS ENIGNEERING', '1962'),
('CV', 'CIVIL ENGINEERING', '1971'),
('EC', 'ELECTRONICS & COMMUNICATION ENGINEERING', '1975'),
('CH', 'CHEMICAL ENGINEERING', '1978'),
('IM', 'INDUSTRIAL ENGINEERING & MANAGEMENT', '1979'),
('CS', 'COMPUTER SCIENCE & ENGINEERING', '1984'),
('EI', 'ELECTRONICS & INSTRUMENTATION ENGINEERING', '1992'),
('IS', 'INFORMATION SCIENCE & ENGINEERING', '1992'),
('TE', 'ELECTRONICS & TELECOMMUNICATION ENGINEERING', '1996'),
('ML', 'MEDICAL ELECTRONICS', '1996'),
('BT', 'BIO-TECHNOLOGY', '2002'),
('AT', 'ARCHITECTURE', '1992'),
('CSE', 'STRUCTURAL ENGINEERING', '1983'),
('MSE', 'MANUFACTURING SCIENCE & ENGINEERING', '1985'),
('SCS', 'COMPUTER SCIENCE & ENGINEERING', '1999'),
('LEC', 'DIGITAL ELECTRONICS & COMMUNICATIONS', '2002'),
('SSE', 'SOFTWARE ENGINEERING', '2003'),
('ECD', 'COMPUTER APPLICATIONS IN INDUSTRIAL DRIVES', '2004'),
('MCM', 'COMPUTER INTEGRATED MANUFACTURING', '2004'),
('LDC', 'DIGITAL COMMUNICATION', '2004'),
('MIE', 'INDUSTRIAL ENGINEERING', '2012'),
('BBT', 'BIO-TECHNOLOGY', '2012'),
('LVS', 'VLSI AND EMBEDDED SYSTEMS', '2013'),
('SCN', 'COMPUTER NETWORK ENGINEERING', '2014'),
('LAC', 'LANDSCAPE ARCHIECTURE', '2011'),
('MBA', 'MASTER OF BUSINESS ADMINISTRATION ', '1998'),
('MCA', 'MASTER OF COMPUTER APPLICATIONS ', '1997');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;