-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 02, 2024 at 04:13 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `taskmanager`
--
CREATE DATABASE IF NOT EXISTS `taskmanager` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `taskmanager`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `pwd`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `dailystatus`
--

CREATE TABLE IF NOT EXISTS `dailystatus` (
  `did` int(10) NOT NULL AUTO_INCREMENT,
  `emid` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `taskname` varchar(100) NOT NULL,
  `taskstatus` varchar(1000) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dailytask`
--

CREATE TABLE IF NOT EXISTS `dailytask` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `esid` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `task` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `emp_reg`
--

CREATE TABLE IF NOT EXISTS `emp_reg` (
  `empid` int(100) NOT NULL AUTO_INCREMENT,
  `empname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `Role` varchar(100) NOT NULL,
  `phoneno` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `emp_reg`
--

INSERT INTO `emp_reg` (`empid`, `empname`, `email`, `Gender`, `dob`, `Role`, `phoneno`, `address`, `image`, `status`) VALUES
(1, 'Sai Charan', 'Saicharan987@gmail.com', 'Male', '2000-02-01', 'Employee', '4133288909', ' Usa', '72985photo.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `remarks`
--

CREATE TABLE IF NOT EXISTS `remarks` (
  `eid` int(100) NOT NULL AUTO_INCREMENT,
  `employeeid` varchar(10) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `remarks`
--

INSERT INTO `remarks` (`eid`, `employeeid`, `remarks`) VALUES
(1, '1', 'you need to finish your work as soon as possible'),
(2, '4', 'ok good '),
(5, '1', 'do it fast'),
(6, '2', 'bad');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
