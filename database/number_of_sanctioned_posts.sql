-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 19, 2021 at 11:48 AM
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
-- Table structure for table `number_of_sanctioned_posts`
--

CREATE TABLE `number_of_sanctioned_posts` (
  `year` varchar(5) DEFAULT NULL,
  `Number_of_sanctioned_posts_year` varchar(31) DEFAULT NULL,
  `Upload_supporting_document` varchar(106) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `number_of_sanctioned_posts`
--

INSERT INTO `number_of_sanctioned_posts` (`year`, `Number_of_sanctioned_posts_year`, `Upload_supporting_document`) VALUES
('2019', '319', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/SanctionedFaculties/11003_SANCTIONED_POSTS.pdf '),
('2018', '376', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/SanctionedFaculties/11003_SANCTIONED_POSTS.pdf '),
('2017', '376', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/SanctionedFaculties/11003_SANCTIONED_POSTS.pdf '),
('2016', '376', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/SanctionedFaculties/11003_SANCTIONED_POSTS.pdf '),
('2015', '376', 'http://iqac.online/files/RamaiahInstituteofTechnology/1266/SanctionedFaculties/11003_SANCTIONED_POSTS.pdf ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
