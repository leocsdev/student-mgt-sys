-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 19, 2020 at 02:31 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_mgt_sys`
--
CREATE DATABASE IF NOT EXISTS `student_mgt_sys` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `student_mgt_sys`;

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

DROP TABLE IF EXISTS `student_list`;
CREATE TABLE `student_list` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `birthday` varchar(10) COLLATE utf8_bin NOT NULL,
  `gender` varchar(10) COLLATE utf8_bin NOT NULL,
  `added_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `first_name`, `last_name`, `birthday`, `gender`, `added_at`) VALUES
(1, 'Juan', 'Cruz', '11/11/2008', 'Male', '2020-09-18 22:32:48'),
(2, 'Patrizia', 'Edelheit', '9/28/2009', 'Female', '2020-09-18 22:32:48'),
(3, 'Bertine', 'Prestie', '12/20/2008', 'Female', '2020-09-18 22:32:48'),
(4, 'Regan', 'Baggot', '9/26/2009', 'Female', '2020-09-18 22:32:48'),
(5, 'Cacilie', 'Hrus', '9/20/2009', 'Female', '2020-09-18 22:32:48'),
(6, 'Etienne', 'Roggeman', '9/26/2009', 'Male', '2020-09-18 22:32:48'),
(7, 'Brigit', 'Cheater', '8/23/2008', 'Female', '2020-09-18 22:32:48'),
(8, 'Ugo', 'Rostron', '11/20/2009', 'Male', '2020-09-18 22:32:48'),
(9, 'Ailbert', 'Allan', '3/16/2008', 'Male', '2020-09-18 22:32:48'),
(10, 'Dorthy', 'Currey', '11/20/2009', 'Female', '2020-09-18 22:32:48'),
(11, 'Gratiana', 'Moy', '9/26/2009', 'Female', '2020-09-18 22:32:48'),
(12, 'Porty', 'Haberjam', '10/20/2009', 'Male', '2020-09-18 22:32:48'),
(13, 'Leola', 'O\' Donohue', '10/31/2009', 'Female', '2020-09-18 22:32:48'),
(14, 'Phip', 'Rustadge', '10/31/2009', 'Male', '2020-09-18 22:32:48'),
(15, 'Kessiah', 'Gwilt', '7/31/2009', 'Female', '2020-09-18 22:32:48'),
(16, 'Barde', 'Tichelaar', '9/30/2008', 'Male', '2020-09-18 22:32:48'),
(17, 'Haroun', 'Preist', '12/16/2008', 'Male', '2020-09-18 22:32:48'),
(18, 'Courtnay', 'Le Borgne', '7/31/2009', 'Male', '2020-09-18 22:32:48'),
(19, 'Nady', 'Pockett', '2/18/2008', 'Female', '2020-09-18 22:32:48'),
(20, 'Adolphe', 'Henrie', '11/23/2008', 'Male', '2020-09-18 22:32:48'),
(21, 'Flory', 'Conklin', '7/30/2009', 'Female', '2020-09-18 22:32:48'),
(22, 'Bernhard', 'Ormiston', '10/13/2008', 'Male', '2020-09-18 22:32:48'),
(23, 'Clayborne', 'Minshaw', '8/30/2008', 'Male', '2020-09-18 22:32:48'),
(24, 'Bondon', 'Sherrett', '3/24/2009', 'Male', '2020-09-18 22:32:48'),
(25, 'Felisha', 'Powis', '4/22/2008', 'Female', '2020-09-18 22:32:48'),
(26, 'Wernher', 'Capini', '6/15/2008', 'Male', '2020-09-18 22:32:48'),
(27, 'Elliot', 'MacGovern', '9/17/2008', 'Male', '2020-09-18 22:32:48'),
(28, 'Garik', 'Papaminas', '7/30/2009', 'Male', '2020-09-18 22:32:48'),
(29, 'Kinsley', 'Verrico', '11/25/2009', 'Male', '2020-09-18 22:32:48'),
(30, 'Danica', 'Jancik', '2/18/2008', 'Female', '2020-09-18 22:32:48'),
(31, 'Bridie', 'Cambridge', '7/20/2008', 'Female', '2020-09-18 22:32:48'),
(32, 'Hailey', 'Cicchetto', '5/26/2008', 'Male', '2020-09-18 22:32:48'),
(33, 'Marleen', 'Wasielewski', '10/13/2008', 'Female', '2020-09-18 22:32:48'),
(34, 'Moria', 'Scutching', '10/23/2008', 'Female', '2020-09-18 22:32:48'),
(35, 'Keelia', 'Maudsley', '11/25/2009', 'Female', '2020-09-18 22:32:48'),
(36, 'Brigham', 'Salsberg', '4/22/2008', 'Male', '2020-09-18 22:32:48'),
(37, 'Gustavus', 'Cammell', '5/15/2009', 'Male', '2020-09-18 22:32:48'),
(38, 'Nicky', 'Francello', '8/23/2009', 'Male', '2020-09-18 22:32:48'),
(39, 'Collie', 'Nield', '10/13/2008', 'Female', '2020-09-18 22:32:48'),
(40, 'Ado', 'Semaine', '6/26/2008', 'Male', '2020-09-18 22:32:48'),
(41, 'Pegeen', 'Brabham', '10/13/2008', 'Female', '2020-09-18 22:32:48'),
(42, 'Antonina', 'Glazzard', '10/14/2008', 'Female', '2020-09-18 22:32:48'),
(43, 'Carolyn', 'Stearns', '11/27/2008', 'Female', '2020-09-18 22:32:48'),
(44, 'Nathan', 'Malkie', '10/13/2008', 'Male', '2020-09-18 22:32:48'),
(45, 'Hephzibah', 'Deyes', '8/30/2008', 'Female', '2020-09-18 22:32:48'),
(46, 'Ricky', 'Flippelli', '10/14/2008', 'Male', '2020-09-18 22:32:48'),
(47, 'Cathryn', 'Rylstone', '7/20/2008', 'Female', '2020-09-18 22:32:48'),
(48, 'Oswell', 'MacCoughan', '5/15/2009', 'Male', '2020-09-18 22:32:48'),
(49, 'Tobey', 'Stirton', '5/15/2009', 'Female', '2020-09-18 22:32:48'),
(50, 'Rolf', 'McDonald', '11/27/2008', 'Male', '2020-09-18 22:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `student_users`
--

DROP TABLE IF EXISTS `student_users`;
CREATE TABLE `student_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `access` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student_users`
--

INSERT INTO `student_users` (`id`, `username`, `password`, `access`) VALUES
(1, 'admin', 'admin', 'administrator'),
(2, 'user', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_users`
--
ALTER TABLE `student_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `student_users`
--
ALTER TABLE `student_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
