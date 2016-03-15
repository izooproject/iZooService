-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 09, 2016 at 07:23 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `izoo`
--

-- --------------------------------------------------------

--
-- Table structure for table `iz_ma_device`
--

CREATE TABLE IF NOT EXISTS `iz_ma_device` (
  `device_id` int(100) NOT NULL,
  `device_uid` varchar(1000) NOT NULL,
  `device_name` varchar(1000) NOT NULL,
  `device_status` varchar(8) NOT NULL,
  `device_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `iz_ma_information`
--

CREATE TABLE IF NOT EXISTS `iz_ma_information` (
  `info_id` int(100) NOT NULL,
  `info_name` varchar(1000) NOT NULL,
  `info_information` text NOT NULL,
  `info_image` varchar(1000) DEFAULT NULL,
  `info_status` varchar(8) NOT NULL,
  `info_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `iz_ma_information_device`
--

CREATE TABLE IF NOT EXISTS `iz_ma_information_device` (
  `infodev_id` int(100) NOT NULL,
  `infodev_info_id` int(100) NOT NULL,
  `infodev_device_id` int(100) NOT NULL,
  `infodev_status` varchar(8) NOT NULL,
  `infodev_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `iz_ma_user`
--

CREATE TABLE IF NOT EXISTS `iz_ma_user` (
  `user_id` int(100) NOT NULL,
  `user_name` varchar(1000) NOT NULL,
  `user_password` varchar(1000) NOT NULL,
  `user_status` varchar(8) NOT NULL,
  `user_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `iz_tr_information`
--

CREATE TABLE IF NOT EXISTS `iz_tr_information` (
  `tr_id` int(100) NOT NULL,
  `tr_info_id` int(100) NOT NULL,
  `tr_device_id` int(100) NOT NULL,
  `tr_user_id` int(100) NOT NULL,
  `tr_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `iz_ma_device`
--
ALTER TABLE `iz_ma_device`
  ADD PRIMARY KEY (`device_id`);

--
-- Indexes for table `iz_ma_information`
--
ALTER TABLE `iz_ma_information`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `iz_ma_information_device`
--
ALTER TABLE `iz_ma_information_device`
  ADD PRIMARY KEY (`infodev_id`);

--
-- Indexes for table `iz_ma_user`
--
ALTER TABLE `iz_ma_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `iz_tr_information`
--
ALTER TABLE `iz_tr_information`
  ADD PRIMARY KEY (`tr_id`),
  ADD KEY `tr_info_id` (`tr_info_id`),
  ADD KEY `tr_info_id_2` (`tr_info_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `iz_ma_device`
--
ALTER TABLE `iz_ma_device`
  MODIFY `device_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iz_ma_information`
--
ALTER TABLE `iz_ma_information`
  MODIFY `info_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iz_ma_information_device`
--
ALTER TABLE `iz_ma_information_device`
  MODIFY `infodev_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iz_ma_user`
--
ALTER TABLE `iz_ma_user`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iz_tr_information`
--
ALTER TABLE `iz_tr_information`
  MODIFY `tr_id` int(100) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
