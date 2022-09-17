-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 17, 2022 at 07:45 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebuddy`
--

-- --------------------------------------------------------

--
-- Table structure for table `aadhar`
--

CREATE TABLE `aadhar` (
  `e-aadhar_id` int(11) NOT NULL,
  `comp_id` int(64) NOT NULL,
  `name` varchar(32) NOT NULL,
  `Fname` varchar(32) NOT NULL,
  `Fnum` int(12) NOT NULL,
  `dob` date NOT NULL,
  `age` int(12) NOT NULL,
  `description` text NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `district` varchar(32) NOT NULL,
  `state` varchar(64) NOT NULL,
  `show_status` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aadhar`
--

INSERT INTO `aadhar` (`e-aadhar_id`, `comp_id`, `name`, `Fname`, `Fnum`, `dob`, `age`, `description`, `gender`, `address`, `district`, `state`, `show_status`) VALUES
(139, 62, 'Vasanth', 'vasanth', 2147483647, '0000-00-00', 0, '', 'male', 'vinayagar nagar ,parasallur', 'Anantapur', 'Andra Pradesh', 'COMPLETED');

-- --------------------------------------------------------

--
-- Table structure for table `aadharreg`
--

CREATE TABLE `aadharreg` (
  `e-id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aadharreg`
--

INSERT INTO `aadharreg` (`e-id`, `username`, `password`, `state`, `district`) VALUES
(14, 'andra@gmail.com', '123', 'Andra Pradesh', 'Anantapur');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `comp_id` int(12) NOT NULL,
  `name` varchar(32) NOT NULL,
  `Fname` varchar(32) NOT NULL,
  `Fnum` int(12) NOT NULL,
  `dob` date NOT NULL,
  `age` int(6) NOT NULL,
  `description` text NOT NULL,
  `gender` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `district` varchar(32) NOT NULL,
  `state` varchar(64) NOT NULL,
  `aadhar` int(20) NOT NULL,
  `show_status` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bankreg`
--

CREATE TABLE `bankreg` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `district` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `state` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `banktrack`
--

CREATE TABLE `banktrack` (
  `sno` int(11) NOT NULL,
  `comp_id` int(10) NOT NULL,
  `bank` int(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `comp_id` int(11) NOT NULL,
  `scheme` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `district` varchar(64) NOT NULL,
  `state` varchar(32) NOT NULL,
  `show_edustatus` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `educationreg`
--

CREATE TABLE `educationreg` (
  `id` int(11) NOT NULL,
  `state` varchar(64) NOT NULL,
  `district` varchar(64) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nclb`
--

CREATE TABLE `nclb` (
  `nclb_id` int(11) NOT NULL,
  `comp_id` int(20) NOT NULL,
  `name` varchar(15) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Fnum` int(12) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `age` int(3) NOT NULL,
  `description` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `nodal_email` varchar(64) NOT NULL,
  `nodal_contact` int(12) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(64) NOT NULL,
  `aadhar` int(15) NOT NULL,
  `bank` varchar(20) NOT NULL,
  `schsts` varchar(32) NOT NULL,
  `pic1` varchar(256) NOT NULL,
  `pic2` varchar(256) NOT NULL,
  `pic3` varchar(256) NOT NULL,
  `pic4` varchar(256) NOT NULL,
  `pic5` varchar(256) NOT NULL,
  `accstatus` varchar(32) NOT NULL,
  `edusts` varchar(32) NOT NULL,
  `schemerequest` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nclbreg`
--

CREATE TABLE `nclbreg` (
  `id` int(5) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nodal`
--

CREATE TABLE `nodal` (
  `comp_id` int(16) NOT NULL,
  `name` varchar(20) NOT NULL,
  `desc` text NOT NULL,
  `photo` varchar(256) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `pincode` int(12) NOT NULL,
  `bank_status` varchar(32) NOT NULL,
  `aadhar_status` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `scheme` text NOT NULL,
  `show_status` varchar(32) NOT NULL,
  `state` varchar(32) NOT NULL,
  `landmark` varchar(20) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `mnum` int(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `uuid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nodal`
--

INSERT INTO `nodal` (`comp_id`, `name`, `desc`, `photo`, `address`, `city`, `district`, `pincode`, `bank_status`, `aadhar_status`, `description`, `scheme`, `show_status`, `state`, `landmark`, `pname`, `mnum`, `email`, `uuid`) VALUES
(42, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', 'fe63838d-3ffe-49c0-99c0-1cabbdbb37b5'),
(43, 'Vasanth', '', '102747946-child_labour.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', 'c8b1be5a-0980-49f6-b8b4-6567be3a437d'),
(44, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', 'e5abef96-94a2-43ef-8662-530d216b7f17'),
(45, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', '96002d48-c5fb-4d77-8bb3-1f0ea3df252b'),
(46, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', '052c2b84-eee7-4d76-a744-2a08c13cffd5'),
(47, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', '23afacaa-3bb7-4e30-b1ec-eb5ddb88c257'),
(48, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', '1fc1a871-3211-4456-a282-959f2b392abf'),
(49, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', '49ba813d-f296-47b2-823b-91e2dbbb9999'),
(50, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', 'd73f096a-f6ed-4793-a540-e3e8db202490'),
(51, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', '62d5f05a-020d-4884-af8b-ec0bb09df846'),
(52, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', 'c1ee4902-7c53-438c-b6e9-30aca8ca5fc3'),
(53, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', 'd1712bea-c095-4931-8a1a-a8957b49df07'),
(54, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', '42810166-7857-4283-b1ab-ab3cd81013c9'),
(55, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', 'dacfb11f-26a4-421c-a57d-046475fe9a76'),
(56, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', 'facb8c63-4fa7-44db-89df-6be54bd9e19c'),
(57, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', '4df09a68-3e79-4c49-8f4c-004218d9bc41'),
(58, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', '832191d2-2c64-4f46-bd88-4c0749c29ec1'),
(59, 'Vasanth', '', 'child-labor-2.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', 'f12abe1a-8aaa-4b89-8e78-30dcb0a432e7'),
(60, '', '', '', '', '', 'Dhanabad', 0, '', '', '', '', '', 'Jharkhand', '', '', 0, '', ''),
(61, 'Vasanth', '', 'chil_4714943_835x547-m.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Ariyalur', 609309, '', '', '', '', '', 'TamilNadu', '', '', 0, '', '8d14a58d-53d6-489a-8b8d-7bfc82976711'),
(62, 'Vasanth', '', 'ph_23035_83260.jpg', 'vinayagar nagar ,parasallur', 'Tondiarpet(044-25911727)', 'Anantapur', 609309, '', 'COMPLETED', '', '', '', 'Andra Pradesh', '', '', 0, '', '7f99be47-d38a-4aca-b74d-e4c50354271e');

-- --------------------------------------------------------

--
-- Table structure for table `nodalnew`
--

CREATE TABLE `nodalnew` (
  `id` int(5) NOT NULL,
  `entstate` varchar(20) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nodalreg`
--

CREATE TABLE `nodalreg` (
  `nodal_id` int(16) NOT NULL,
  `district` varchar(64) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `state` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nodalreg`
--

INSERT INTO `nodalreg` (`nodal_id`, `district`, `email`, `password`, `state`) VALUES
(15, 'Anantapur', 'an@gmail.com', '123', 'Andra Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `penciladminreg`
--

CREATE TABLE `penciladminreg` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aadhar`
--
ALTER TABLE `aadhar`
  ADD PRIMARY KEY (`e-aadhar_id`);

--
-- Indexes for table `aadharreg`
--
ALTER TABLE `aadharreg`
  ADD PRIMARY KEY (`e-id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bankreg`
--
ALTER TABLE `bankreg`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `banktrack`
--
ALTER TABLE `banktrack`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educationreg`
--
ALTER TABLE `educationreg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nclb`
--
ALTER TABLE `nclb`
  ADD PRIMARY KEY (`nclb_id`);

--
-- Indexes for table `nclbreg`
--
ALTER TABLE `nclbreg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nodal`
--
ALTER TABLE `nodal`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `nodalnew`
--
ALTER TABLE `nodalnew`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nodalreg`
--
ALTER TABLE `nodalreg`
  ADD PRIMARY KEY (`nodal_id`);

--
-- Indexes for table `penciladminreg`
--
ALTER TABLE `penciladminreg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aadhar`
--
ALTER TABLE `aadhar`
  MODIFY `e-aadhar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `aadharreg`
--
ALTER TABLE `aadharreg`
  MODIFY `e-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `bankreg`
--
ALTER TABLE `bankreg`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banktrack`
--
ALTER TABLE `banktrack`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `educationreg`
--
ALTER TABLE `educationreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nclb`
--
ALTER TABLE `nclb`
  MODIFY `nclb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `nclbreg`
--
ALTER TABLE `nclbreg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nodal`
--
ALTER TABLE `nodal`
  MODIFY `comp_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `nodalnew`
--
ALTER TABLE `nodalnew`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nodalreg`
--
ALTER TABLE `nodalreg`
  MODIFY `nodal_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `penciladminreg`
--
ALTER TABLE `penciladminreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
