-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2024 at 03:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alphaeye`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `addingtime` timestamp NOT NULL DEFAULT current_timestamp(),
  `quantity` int(11) DEFAULT 1,
  `powertype` varchar(255) DEFAULT NULL,
  `lenstype` varchar(255) DEFAULT NULL,
  `lensprice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `userid`, `productid`, `addingtime`, `quantity`, `powertype`, `lenstype`, `lensprice`) VALUES
(1, 52, 3, '2024-08-29 11:55:01', 1, NULL, NULL, NULL),
(2, 52, 1, '2024-08-29 12:43:05', 1, NULL, NULL, NULL),
(3, 52, 2, '2024-08-29 12:47:06', 1, 'Zero Power Eyeglasses', 'Blue Filter+', 1000),
(4, 52, 5, '2024-08-29 12:47:45', 1, 'Bifocal/Progressive Eyeglasses', 'Neo Digi with Anti Reflect', 2500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
