-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 10:47 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblab`
--
CREATE DATABASE IF NOT EXISTS `dblab` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci;
USE `dblab`;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `subjectType` varchar(100) COLLATE utf8mb4_persian_ci NOT NULL,
  `subjectTitle` varchar(100) COLLATE utf8mb4_persian_ci NOT NULL,
  `message` varchar(1000) COLLATE utf8mb4_persian_ci NOT NULL,
  `attachment` text COLLATE utf8mb4_persian_ci,
  `email` varchar(50) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `phoneNumber` varchar(11) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `explanation` varchar(250) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `username` varchar(30) COLLATE utf8mb4_persian_ci NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `date` varchar(10) COLLATE utf8mb4_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `subjectType`, `subjectTitle`, `message`, `attachment`, `email`, `phoneNumber`, `explanation`, `username`, `fullname`, `date`) VALUES
(1, 'others', 'unable to search', 'i cant filter in search', 'file1,file2,file3', 'aliansaipoor82@gmail.com', '09908699859', 'i\'ve sent screenshots of error as attachment', 'alissin', 'ali ansaripoor', '1401/12/12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(30) COLLATE utf8mb4_persian_ci NOT NULL,
  `lastName` varchar(30) COLLATE utf8mb4_persian_ci NOT NULL,
  `fatherName` varchar(30) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `birthdate` varchar(10) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `nationalCode` varchar(10) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `phoneNumber` varchar(11) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `accountStatus` enum('active','deactive','suspended') COLLATE utf8mb4_persian_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `fatherName`, `birthdate`, `nationalCode`, `phoneNumber`, `email`, `accountStatus`, `gender`) VALUES
(1, 'ali', 'ansaripoor', 'ahmad', '1382/05/23', '1190331608', '09908699859', 'aliansaipoor82@gmail.com', 'active', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nationalCode` (`nationalCode`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
