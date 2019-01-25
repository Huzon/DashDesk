-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2019 at 08:28 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dashdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tec_admins`
--

CREATE TABLE `tec_admins` (
  `id` char(36) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` char(50) NOT NULL,
  `admin_type_id` char(36) NOT NULL,
  `org_name` varchar(100) DEFAULT NULL,
  `mobile` bigint(15) DEFAULT NULL,
  `line1` text,
  `line2` text,
  `city_id` char(36) DEFAULT NULL,
  `pincode` int(10) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0' COMMENT '0->active,1->deactive',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tec_admin_types`
--

CREATE TABLE `tec_admin_types` (
  `id` char(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tec_admins`
--
ALTER TABLE `tec_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_admin_types`
--
ALTER TABLE `tec_admin_types`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
