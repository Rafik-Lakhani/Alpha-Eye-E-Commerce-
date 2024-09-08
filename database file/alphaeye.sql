-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2024 at 09:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
(4, 50, 1, '2024-09-03 13:32:45', 1, NULL, NULL, NULL),
(5, 50, 3, '2024-09-03 13:32:47', 1, NULL, NULL, NULL),
(6, 50, 5, '2024-09-03 13:32:49', 1, NULL, NULL, NULL),
(7, 41, 2, '2024-09-04 09:35:15', 1, NULL, NULL, NULL),
(8, 41, 2, '2024-09-04 09:38:09', 1, 'Bifocal/Progressive Eyeglasses', 'Neo Digi with Anti Reflect', 2500),
(19, 51, 1, '2024-09-05 15:08:03', 4, 'Zero Power Eyeglasses', 'Blue Filter+', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `catid` int(11) NOT NULL,
  `men` varchar(255) DEFAULT NULL,
  `women` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'hidden',
  `setboth` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catid`, `men`, `women`, `status`, `setboth`, `image`) VALUES
(1, 'Aviator', NULL, 'show', NULL, '66c96fb8cdb7e.webp'),
(2, 'Geometric', NULL, 'show', NULL, '66c96fc268615.webp'),
(3, NULL, 'CatEye', 'show', NULL, '66c96fce0823a.webp');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderid` int(11) NOT NULL,
  `productid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `powertype` varchar(255) DEFAULT NULL,
  `lenstype` varchar(255) DEFAULT NULL,
  `lensprice` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Ordered',
  `placeddate` datetime NOT NULL DEFAULT current_timestamp(),
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderid`, `productid`, `userid`, `quantity`, `powertype`, `lenstype`, `lensprice`, `status`, `placeddate`, `amount`) VALUES
(7, 5, 40, 4, 'Bifocal/Progressive Eyeglasses', 'Neo Digi with Anti Reflect', 10000, 'Ordered', '2024-09-08 12:45:19', 26000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `detail` longtext DEFAULT NULL,
  `mrp` int(11) NOT NULL DEFAULT 0,
  `maincategory` varchar(255) DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'show',
  `addingdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `size` varchar(20) DEFAULT 'medium',
  `sellingprice` int(255) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `name`, `detail`, `mrp`, `maincategory`, `img1`, `img2`, `img3`, `img4`, `color`, `status`, `addingdate`, `size`, `sellingprice`, `subcategory`) VALUES
(1, 'Full Rim Geometric', 'Brand Name<br/>Vincent Chase<br/>Product Type<br/>Eyeglasses<br/>Frame Type<br/>Full Rim<br/>Frame Shape<br/>Geometric<br/>Model No.<br/>VC E13786<br/>Frame Size<br/>Narrow?<br/>Frame Width<br/>132 mm<br/>Frame Dimensions<br/>49-20-146<br/>Frame colour<br/>Silver<br/>Weight<br/>20 gm?<br/>Weight Group<br/>Light?<br/>Material<br/>Stainless Steel<br/>Frame Material<br/>Stainless Steel?<br/>Temple Material<br/>Stainless Steel?<br/>Prescription Type<br/>Bifocal / Progressive<br/>Frame Style<br/>Standard<br/>Frame Style Secondary<br/>Youth<br/>Collection<br/>SLEEK STEEL<br/>Product Warranty<br/>1 Year Manufacturer Warranty?<br/>Gender<br/>Unisex<br/>Height<br/>48 mm<br/>Condition<br/>New<br/>Temple Colour<br/>Silver Transparent', 7000, 'men', '66c976986ea0e.jpg', '66c976986f1d8.jpg', '66c976986f775.jpg', '66c976986ffeb.jpg', 'Silver ', 'show', '2024-08-24 05:58:48', 'narrow', 5000, 'Geometric'),
(2, 'Full Rim Geometric', 'Brand Name<br/>Vincent Chase<br/>Product Type<br/>Eyeglasses<br/>Frame Type<br/>Full Rim<br/>Frame Shape<br/>Geometric<br/>Model No.<br/>VC E13786<br/>Frame Size<br/>Narrow?<br/>Frame Width<br/>132 mm<br/>Frame Dimensions<br/>49-20-146<br/>Frame colour<br/>Silver<br/>Weight<br/>20 gm?<br/>Weight Group<br/>Light?<br/>Material<br/>Stainless Steel<br/>Frame Material<br/>Stainless Steel?<br/>Temple Material<br/>Stainless Steel?<br/>Prescription Type<br/>Bifocal / Progressive<br/>Frame Style<br/>Standard<br/>Frame Style Secondary<br/>Youth<br/>Collection<br/>SLEEK STEEL<br/>Product Warranty<br/>1 Year Manufacturer Warranty?<br/>Gender<br/>Unisex<br/>Height<br/>48 mm<br/>Condition<br/>New<br/>Temple Colour<br/>Silver Transparent', 7000, 'men', '66c9769872350.jpg', '66c976987296b.jpg', '66c9769872ecf.jpg', '66c9769873409.jpg', 'Gold', 'show', '2024-08-24 05:58:48', 'narrow', 5000, 'Geometric'),
(3, 'Vincent Chase Black Full Rim Geometric', 'Brand Name<br/>Vincent Chase<br/>Product Type<br/>Eyeglasses<br/>Frame Type<br/>Full Rim<br/>Frame Shape<br/>Geometric<br/>Model No.<br/>VC E17038<br/>Frame Size<br/>Extra Wide?<br/>Frame Width<br/>147 mm<br/>Frame Dimensions<br/>54-17-145<br/>Frame colour<br/>Black<br/>Weight<br/>34 gm?<br/>Weight Group<br/>Average?<br/>Material<br/>Acetate<br/>Frame Material<br/>Acetate?<br/>Temple Material<br/>Acetate?<br/>Prescription Type<br/>Bifocal / Progressive<br/>Frame Style<br/>Standard<br/>Frame Style Secondary<br/>Youth<br/>Collection<br/>Classic Acetate<br/>Product Warranty<br/>1 Year Manufacturer Warranty?<br/>Gender<br/>Unisex<br/>Height<br/>41 mm<br/>Condition<br/>New<br/>Temple Colour<br/>Black<br/>', 7000, 'men', '66c97a3e67098.jpg', '66c97a3e67363.jpg', '66c97a3e675a5.jpg', '66c97a3e677cb.jpg', 'Black ', 'show', '2024-08-24 06:14:22', 'large', 5000, 'Geometric'),
(4, 'Vincent Chase Black Full Rim Geometric', 'Brand Name<br/>Vincent Chase<br/>Product Type<br/>Eyeglasses<br/>Frame Type<br/>Full Rim<br/>Frame Shape<br/>Geometric<br/>Model No.<br/>VC E17038<br/>Frame Size<br/>Extra Wide?<br/>Frame Width<br/>147 mm<br/>Frame Dimensions<br/>54-17-145<br/>Frame colour<br/>Black<br/>Weight<br/>34 gm?<br/>Weight Group<br/>Average?<br/>Material<br/>Acetate<br/>Frame Material<br/>Acetate?<br/>Temple Material<br/>Acetate?<br/>Prescription Type<br/>Bifocal / Progressive<br/>Frame Style<br/>Standard<br/>Frame Style Secondary<br/>Youth<br/>Collection<br/>Classic Acetate<br/>Product Warranty<br/>1 Year Manufacturer Warranty?<br/>Gender<br/>Unisex<br/>Height<br/>41 mm<br/>Condition<br/>New<br/>Temple Colour<br/>Black<br/>', 7000, 'men', '66c97a3e6814c.jpg', '66c97a3e6844c.jpg', '66c97a3e686b4.jpg', '66c97a3e6897c.jpg', 'Blue', 'show', '2024-08-24 06:14:22', 'large', 5000, 'Geometric'),
(5, 'John Jacobs  Full Rim Cat Eye', '        Brand Name<br/>John Jacobs<br/>Product Type<br/>Eyeglasses<br/>Frame Type<br/>Full Rim<br/>Frame Shape<br/>Cat Eye<br/>Model No.<br/>JJ E13583<br/>Frame Size<br/>Medium?<br/>Frame Width<br/>135 mm<br/>Frame Dimensions<br/>50-19-145<br/>Frame colour<br/>Black<br/>Weight<br/>18 gm?<br/>Weight Group<br/>Light?<br/>Material<br/>Italian Acetate<br/>Frame Material<br/>Italian Acetate?<br/>Temple Material<br/>Stainless Steel?<br/>Prescription Type<br/>Bifocal / Progressive<br/>Frame Style<br/>Premium<br/>Frame Style Secondary<br/>Premium<br/>Collection<br/>Rich Acetate<br/>Product Warranty<br/>1 Year Manufacturer Warranty?<br/>Gender<br/>Women<br/>Height<br/>43 mm<br/>Condition<br/>New<br/>Temple Colour<br/>Silver Brown Tortoise<br/>', 5500, 'women', '66c97d322dc2f.jpg', '66c97d322df11.jpg', '66c97d322e17b.jpg', '66c97d322e3ae.jpg', 'SkyBlue', 'show', '2024-08-24 06:26:58', 'medium', 4000, 'CatEye'),
(6, 'John Jacobs  Full Rim Cat Eye', '        Brand Name<br/>John Jacobs<br/>Product Type<br/>Eyeglasses<br/>Frame Type<br/>Full Rim<br/>Frame Shape<br/>Cat Eye<br/>Model No.<br/>JJ E13583<br/>Frame Size<br/>Medium?<br/>Frame Width<br/>135 mm<br/>Frame Dimensions<br/>50-19-145<br/>Frame colour<br/>Black<br/>Weight<br/>18 gm?<br/>Weight Group<br/>Light?<br/>Material<br/>Italian Acetate<br/>Frame Material<br/>Italian Acetate?<br/>Temple Material<br/>Stainless Steel?<br/>Prescription Type<br/>Bifocal / Progressive<br/>Frame Style<br/>Premium<br/>Frame Style Secondary<br/>Premium<br/>Collection<br/>Rich Acetate<br/>Product Warranty<br/>1 Year Manufacturer Warranty?<br/>Gender<br/>Women<br/>Height<br/>43 mm<br/>Condition<br/>New<br/>Temple Colour<br/>Silver Brown Tortoise<br/>', 5500, 'women', '66c97d322ed8a.jpg', '66c97d322f09b.jpg', '66c97d322f3bd.jpg', '66c97d322f612.jpg', 'Black', 'show', '2024-08-24 06:26:58', 'medium', 4000, 'CatEye');

-- --------------------------------------------------------

--
-- Table structure for table `useraddres`
--

CREATE TABLE `useraddres` (
  `userid` int(11) DEFAULT NULL,
  `Phonenumber` int(10) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useraddres`
--

INSERT INTO `useraddres` (`userid`, `Phonenumber`, `street`, `city`, `state`, `country`, `pincode`) VALUES
(40, 1122, '1', '1', '1sss', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `useremail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `joindate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `username`, `useremail`, `password`, `status`, `joindate`) VALUES
(40, 'rafik', 'lakhanirafik111@gmail.com', '$2y$10$Oj4rJixT6dyJVkLG4JWkW.jJ/smwU.l/D8/tsO7O01Sv304rU3T/2', 0, '2024-07-12 11:05:54'),
(41, 'rafik', 'admin@admin.com', '$2y$10$.VFsnvBF./r6flaGIUzuqejoXJj1mBAEIbJ24ssKiB4eKWXUPN5Ra', 1, '2024-07-12 11:30:25'),
(50, 'rafik', 'demo@demo', '$2y$10$NE4.s0jlC5.87CcIWd85hOiUx47rOUmZLZ1jZFjcDXzfDKr8yeBpK', 0, '2024-09-03 13:32:22'),
(51, 'demo', 'refik@gamil.com', '$2y$10$I4ICkJWH/d3W7kArb5RiU.lIbu5g0iPsI.Ea8AqdOBFDRNbEddnxW', 0, '2024-09-05 15:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `userprescription`
--

CREATE TABLE `userprescription` (
  `prescriptionid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `leftSPH` float NOT NULL,
  `rightSPH` float NOT NULL,
  `leftCYL` float NOT NULL,
  `rightCYL` float NOT NULL,
  `leftAXIS` float NOT NULL,
  `rightAXIS` int(11) NOT NULL,
  `leftADD` float NOT NULL,
  `rightADD` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userprescription`
--

INSERT INTO `userprescription` (`prescriptionid`, `orderid`, `userid`, `productid`, `leftSPH`, `rightSPH`, `leftCYL`, `rightCYL`, `leftAXIS`, `rightAXIS`, `leftADD`, `rightADD`) VALUES
(4, 7, 40, 5, -0.25, -0.25, -0.25, -0.25, 66, 55, 1, 55);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `useraddres`
--
ALTER TABLE `useraddres`
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `useremail` (`useremail`);

--
-- Indexes for table `userprescription`
--
ALTER TABLE `userprescription`
  ADD PRIMARY KEY (`prescriptionid`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `userprescription`
--
ALTER TABLE `userprescription`
  MODIFY `prescriptionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
