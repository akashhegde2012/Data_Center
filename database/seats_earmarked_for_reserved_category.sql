-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 19, 2021 at 12:16 PM
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
-- Table structure for table `seats_earmarked_for_reserved_category`
--

CREATE TABLE `seats_earmarked_for_reserved_category` (
  `year` varchar(5) DEFAULT NULL,
  `Number_of_seats_earmarked_for_reserved_category(State_Govt_rule)` varchar(64) DEFAULT NULL,
  `Upload_supporting_document` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seats_earmarked_for_reserved_category`
--

INSERT INTO `seats_earmarked_for_reserved_category` (`year`, `Number_of_seats_earmarked_for_reserved_category(State_Govt_rule)`, `Upload_supporting_document`) VALUES
('2019', '419', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/Seats/11003_seats_category.pdf '),
('2018', '419', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/Seats/11003_seats_category.pdf '),
('2017', '419', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/Seats/11003_seats_category.pdf '),
('2016', '419', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/Seats/11003_seats_category.pdf '),
('2015', '419', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/Seats/11003_seats_category.pdf ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
