-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 10, 2024 at 09:43 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cartid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `addingtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quantity` int(11) DEFAULT '1',
  `powertype` varchar(255) DEFAULT NULL,
  `lenstype` varchar(255) DEFAULT NULL,
  `lensprice` int(11) DEFAULT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `userid`, `productid`, `addingtime`, `quantity`, `powertype`, `lenstype`, `lensprice`) VALUES
(5, 3, 8, '2024-09-10 09:40:32', 1, 'Zero Power Eyeglasses', 'Blue Filter+', 1000),
(6, 3, 13, '2024-09-10 09:40:42', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `men` varchar(255) DEFAULT NULL,
  `women` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'hidden',
  `setboth` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

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

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `powertype` varchar(255) DEFAULT NULL,
  `lenstype` varchar(255) DEFAULT NULL,
  `lensprice` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Ordered',
  `placeddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderid`, `productid`, `userid`, `quantity`, `powertype`, `lenstype`, `lensprice`, `status`, `placeddate`, `amount`) VALUES
(1, 3, 3, 1, NULL, NULL, NULL, 'Ordered', '2024-09-10 15:02:07', 5800),
(2, 3, 3, 1, NULL, NULL, NULL, 'Ordered', '2024-09-10 15:04:41', 6000),
(3, 3, 3, 1, 'Zero Power Eyeglasses', 'Blue Filter+', 1000, 'Ordered', '2024-09-10 15:09:45', 6000),
(4, 9, 3, 1, NULL, NULL, NULL, 'Ordered', '2024-09-10 15:10:06', 5000),
(5, 8, 3, 1, 'Zero Power Eyeglasses', 'Blue Filter+', 1000, 'Ordered', '2024-09-10 15:10:55', 6000),
(6, 13, 3, 1, '', '', 0, 'Ordered', '2024-09-10 15:10:55', 2200);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `detail` longtext,
  `mrp` int(11) NOT NULL DEFAULT '0',
  `maincategory` varchar(255) DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'show',
  `addingdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `size` varchar(20) DEFAULT 'medium',
  `sellingprice` int(255) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `name`, `detail`, `mrp`, `maincategory`, `img1`, `img2`, `img3`, `img4`, `color`, `status`, `addingdate`, `size`, `sellingprice`, `subcategory`) VALUES
(1, 'Full Rim Geometric', 'Brand Name<br/>Vincent Chase<br/>Product Type<br/>Eyeglasses<br/>Frame Type<br/>Full Rim<br/>Frame Shape<br/>Geometric<br/>Model No.<br/>VC E13786<br/>Frame Size<br/>Narrow?<br/>Frame Width<br/>132 mm<br/>Frame Dimensions<br/>49-20-146<br/>Frame colour<br/>Silver<br/>Weight<br/>20 gm?<br/>Weight Group<br/>Light?<br/>Material<br/>Stainless Steel<br/>Frame Material<br/>Stainless Steel?<br/>Temple Material<br/>Stainless Steel?<br/>Prescription Type<br/>Bifocal / Progressive<br/>Frame Style<br/>Standard<br/>Frame Style Secondary<br/>Youth<br/>Collection<br/>SLEEK STEEL<br/>Product Warranty<br/>1 Year Manufacturer Warranty?<br/>Gender<br/>Unisex<br/>Height<br/>48 mm<br/>Condition<br/>New<br/>Temple Colour<br/>Silver Transparent', 7000, 'men', '66c976986ea0e.jpg', '66c976986f1d8.jpg', '66c976986f775.jpg', '66c976986ffeb.jpg', 'Silver ', 'show', '2024-08-24 05:58:48', 'narrow', 5000, 'Geometric'),
(2, 'Full Rim Geometric', 'Brand Name<br/>Vincent Chase<br/>Product Type<br/>Eyeglasses<br/>Frame Type<br/>Full Rim<br/>Frame Shape<br/>Geometric<br/>Model No.<br/>VC E13786<br/>Frame Size<br/>Narrow?<br/>Frame Width<br/>132 mm<br/>Frame Dimensions<br/>49-20-146<br/>Frame colour<br/>Silver<br/>Weight<br/>20 gm?<br/>Weight Group<br/>Light?<br/>Material<br/>Stainless Steel<br/>Frame Material<br/>Stainless Steel?<br/>Temple Material<br/>Stainless Steel?<br/>Prescription Type<br/>Bifocal / Progressive<br/>Frame Style<br/>Standard<br/>Frame Style Secondary<br/>Youth<br/>Collection<br/>SLEEK STEEL<br/>Product Warranty<br/>1 Year Manufacturer Warranty?<br/>Gender<br/>Unisex<br/>Height<br/>48 mm<br/>Condition<br/>New<br/>Temple Colour<br/>Silver Transparent', 7000, 'men', '66c9769872350.jpg', '66c976987296b.jpg', '66c9769872ecf.jpg', '66c9769873409.jpg', 'Gold', 'show', '2024-08-24 05:58:48', 'narrow', 5000, 'Geometric'),
(3, 'Vincent Chase Black Full Rim Geometric', 'Brand Name<br/>Vincent Chase<br/>Product Type<br/>Eyeglasses<br/>Frame Type<br/>Full Rim<br/>Frame Shape<br/>Geometric<br/>Model No.<br/>VC E17038<br/>Frame Size<br/>Extra Wide?<br/>Frame Width<br/>147 mm<br/>Frame Dimensions<br/>54-17-145<br/>Frame colour<br/>Black<br/>Weight<br/>34 gm?<br/>Weight Group<br/>Average?<br/>Material<br/>Acetate<br/>Frame Material<br/>Acetate?<br/>Temple Material<br/>Acetate?<br/>Prescription Type<br/>Bifocal / Progressive<br/>Frame Style<br/>Standard<br/>Frame Style Secondary<br/>Youth<br/>Collection<br/>Classic Acetate<br/>Product Warranty<br/>1 Year Manufacturer Warranty?<br/>Gender<br/>Unisex<br/>Height<br/>41 mm<br/>Condition<br/>New<br/>Temple Colour<br/>Black<br/>', 7000, 'men', '66c97a3e67098.jpg', '66c97a3e67363.jpg', '66c97a3e675a5.jpg', '66c97a3e677cb.jpg', 'Black ', 'show', '2024-08-24 06:14:22', 'large', 5000, 'Geometric'),
(4, 'Vincent Chase Black Full Rim Geometric', 'Brand Name<br/>Vincent Chase<br/>Product Type<br/>Eyeglasses<br/>Frame Type<br/>Full Rim<br/>Frame Shape<br/>Geometric<br/>Model No.<br/>VC E17038<br/>Frame Size<br/>Extra Wide?<br/>Frame Width<br/>147 mm<br/>Frame Dimensions<br/>54-17-145<br/>Frame colour<br/>Black<br/>Weight<br/>34 gm?<br/>Weight Group<br/>Average?<br/>Material<br/>Acetate<br/>Frame Material<br/>Acetate?<br/>Temple Material<br/>Acetate?<br/>Prescription Type<br/>Bifocal / Progressive<br/>Frame Style<br/>Standard<br/>Frame Style Secondary<br/>Youth<br/>Collection<br/>Classic Acetate<br/>Product Warranty<br/>1 Year Manufacturer Warranty?<br/>Gender<br/>Unisex<br/>Height<br/>41 mm<br/>Condition<br/>New<br/>Temple Colour<br/>Black<br/>', 7000, 'men', '66c97a3e6814c.jpg', '66c97a3e6844c.jpg', '66c97a3e686b4.jpg', '66c97a3e6897c.jpg', 'Blue', 'show', '2024-08-24 06:14:22', 'large', 5000, 'Geometric'),
(5, 'John Jacobs  Full Rim Cat Eye', '        Brand Name<br/>John Jacobs<br/>Product Type<br/>Eyeglasses<br/>Frame Type<br/>Full Rim<br/>Frame Shape<br/>Cat Eye<br/>Model No.<br/>JJ E13583<br/>Frame Size<br/>Medium?<br/>Frame Width<br/>135 mm<br/>Frame Dimensions<br/>50-19-145<br/>Frame colour<br/>Black<br/>Weight<br/>18 gm?<br/>Weight Group<br/>Light?<br/>Material<br/>Italian Acetate<br/>Frame Material<br/>Italian Acetate?<br/>Temple Material<br/>Stainless Steel?<br/>Prescription Type<br/>Bifocal / Progressive<br/>Frame Style<br/>Premium<br/>Frame Style Secondary<br/>Premium<br/>Collection<br/>Rich Acetate<br/>Product Warranty<br/>1 Year Manufacturer Warranty?<br/>Gender<br/>Women<br/>Height<br/>43 mm<br/>Condition<br/>New<br/>Temple Colour<br/>Silver Brown Tortoise<br/>', 5500, 'women', '66c97d322dc2f.jpg', '66c97d322df11.jpg', '66c97d322e17b.jpg', '66c97d322e3ae.jpg', 'SkyBlue', 'show', '2024-08-24 06:26:58', 'medium', 4000, 'CatEye'),
(6, 'John Jacobs  Full Rim Cat Eye', '        Brand Name<br/>John Jacobs<br/>Product Type<br/>Eyeglasses<br/>Frame Type<br/>Full Rim<br/>Frame Shape<br/>Cat Eye<br/>Model No.<br/>JJ E13583<br/>Frame Size<br/>Medium?<br/>Frame Width<br/>135 mm<br/>Frame Dimensions<br/>50-19-145<br/>Frame colour<br/>Black<br/>Weight<br/>18 gm?<br/>Weight Group<br/>Light?<br/>Material<br/>Italian Acetate<br/>Frame Material<br/>Italian Acetate?<br/>Temple Material<br/>Stainless Steel?<br/>Prescription Type<br/>Bifocal / Progressive<br/>Frame Style<br/>Premium<br/>Frame Style Secondary<br/>Premium<br/>Collection<br/>Rich Acetate<br/>Product Warranty<br/>1 Year Manufacturer Warranty?<br/>Gender<br/>Women<br/>Height<br/>43 mm<br/>Condition<br/>New<br/>Temple Colour<br/>Silver Brown Tortoise<br/>', 5500, 'women', '66c97d322ed8a.jpg', '66c97d322f09b.jpg', '66c97d322f3bd.jpg', '66c97d322f612.jpg', 'Black', 'show', '2024-08-24 06:26:58', 'medium', 4000, 'CatEye'),
(7, 'AirOnlineBluet Fullrim Aviato', '        Brand Name    		AirOnlineBluet<br/>Product Type  		Eyeglasses<br/>Frame Type    		Full Rim<br/>Frame Shape   		Aviator<br/>Model No.     		JJ E13346<br/>Frame Size    		Wide?<br/>Frame Width   		139 mm<br/>Frame Dimensions	 53-19-145<br/>Frame colour		Black<br/>Weight			23 gm?<br/>Weight Group		Average?<br/>Material		Italian Acetate<br/>Frame Material		Italian Acetate?<br/>Temple Material		Italian Acetate?<br/>Prescription Type   	Bifocal / Progressive<br/>Frame Style  Premium<br/>Frame Style Secondary 	 Premium<br/>Collection 		 Rich Acetate<br/>Product Warranty 	 1 Year Manufacturer Warranty?<br/>Gender  Unisex<br/>Height  42 mm<br/>Condition  New<br/>Temple Colour  Black', 7000, 'men', '66e005aa5af0c.jpg', '66e005aa5b863.jpg', '66e005aa5c035.jpg', '66e005aa5c6ab.jpg', 'transfer ', 'show', '2024-09-10 08:39:06', 'large', 5000, 'Aviator'),
(8, 'AirOnlineBluet Fullrim Aviato', '        Brand Name    		AirOnlineBluet<br/>Product Type  		Eyeglasses<br/>Frame Type    		Full Rim<br/>Frame Shape   		Aviator<br/>Model No.     		JJ E13346<br/>Frame Size    		Wide?<br/>Frame Width   		139 mm<br/>Frame Dimensions	 53-19-145<br/>Frame colour		Black<br/>Weight			23 gm?<br/>Weight Group		Average?<br/>Material		Italian Acetate<br/>Frame Material		Italian Acetate?<br/>Temple Material		Italian Acetate?<br/>Prescription Type   	Bifocal / Progressive<br/>Frame Style  Premium<br/>Frame Style Secondary 	 Premium<br/>Collection 		 Rich Acetate<br/>Product Warranty 	 1 Year Manufacturer Warranty?<br/>Gender  Unisex<br/>Height  42 mm<br/>Condition  New<br/>Temple Colour  Black', 7000, 'men', '66e005aa5db60.jpg', '66e005aa5e169.jpg', '66e005aa5e630.jpg', '66e005aa5eabf.jpg', 'Blue', 'show', '2024-09-10 08:39:06', 'large', 5000, 'Aviator'),
(9, 'AirOnlineBluet Fullrim Aviato', '        Brand Name    		AirOnlineBluet<br/>Product Type  		Eyeglasses<br/>Frame Type    		Full Rim<br/>Frame Shape   		Aviator<br/>Model No.     		JJ E13346<br/>Frame Size    		Wide?<br/>Frame Width   		139 mm<br/>Frame Dimensions	 53-19-145<br/>Frame colour		Black<br/>Weight			23 gm?<br/>Weight Group		Average?<br/>Material		Italian Acetate<br/>Frame Material		Italian Acetate?<br/>Temple Material		Italian Acetate?<br/>Prescription Type   	Bifocal / Progressive<br/>Frame Style  Premium<br/>Frame Style Secondary 	 Premium<br/>Collection 		 Rich Acetate<br/>Product Warranty 	 1 Year Manufacturer Warranty?<br/>Gender  Unisex<br/>Height  42 mm<br/>Condition  New<br/>Temple Colour  Black', 7000, 'men', '66e005aa5f7cf.jpg', '66e005aa5fcb8.jpg', '66e005aa60165.jpg', '66e005aa6066f.jpg', 'black', 'show', '2024-09-10 08:39:06', 'large', 5000, 'Aviator'),
(10, 'JohnJacobs FullRim Aviator', '        Brand Name    		John Jacobs<br/>Product Type  		Eyeglasses<br/>Frame Type    		Full Rim<br/>Frame Shape   		Aviator<br/>Model No.     		JJ E13346<br/>Frame Size    		Wide?<br/>Frame Width   		139 mm<br/>Frame Dimensions	 53-19-145<br/>Frame colour		Black<br/>Weight			23 gm?<br/>Weight Group		Average?<br/>Material		Italian Acetate<br/>Frame Material		Italian Acetate?<br/>Temple Material		Italian Acetate?<br/>Prescription Type   	Bifocal / Progressive<br/>Frame Style  Premium<br/>Frame Style Secondary 	 Premium<br/>Collection 		 Rich Acetate<br/>Product Warranty 	 1 Year Manufacturer Warranty?<br/>Gender  Unisex<br/>Height  42 mm<br/>Condition  New<br/>Temple Colour  Black', 5700, 'men', '66e006b91e30b.jpg', '66e006b91ed3e.jpg', '66e006b91f24c.jpg', '66e006b91f71b.jpg', 'black', 'show', '2024-09-10 08:43:37', 'medium', 4700, 'Aviator'),
(11, 'JohnJacobs FullRim Aviator', '        Brand Name    		John Jacobs<br/>Product Type  		Eyeglasses<br/>Frame Type    		Full Rim<br/>Frame Shape   		Aviator<br/>Model No.     		JJ E13346<br/>Frame Size    		Wide?<br/>Frame Width   		139 mm<br/>Frame Dimensions	 53-19-145<br/>Frame colour		Black<br/>Weight			23 gm?<br/>Weight Group		Average?<br/>Material		Italian Acetate<br/>Frame Material		Italian Acetate?<br/>Temple Material		Italian Acetate?<br/>Prescription Type   	Bifocal / Progressive<br/>Frame Style  Premium<br/>Frame Style Secondary 	 Premium<br/>Collection 		 Rich Acetate<br/>Product Warranty 	 1 Year Manufacturer Warranty?<br/>Gender  Unisex<br/>Height  42 mm<br/>Condition  New<br/>Temple Colour  Black', 5700, 'men', '66e006b92055c.jpg', '66e006b920aa1.jpg', '66e006b920ff2.jpg', '66e006b92167b.jpg', 'transfer', 'show', '2024-09-10 08:43:37', 'medium', 4700, 'Aviator'),
(12, 'John Jacobs Gunmetal Full Rim Aviator', '        Brand Name    		John Jacobs<br/>Product Type  		Eyeglasses<br/>Frame Type    		Full Rim<br/>Frame Shape   		Aviator<br/>Model No.     		JJ E13346<br/>Frame Size    		Wide?<br/>Frame Width   		139 mm<br/>Frame Dimensions	 53-19-145<br/>Frame colour		Black<br/>Weight			23 gm?<br/>Weight Group		Average?<br/>Material		Italian Acetate<br/>Frame Material		Italian Acetate?<br/>Temple Material		Italian Acetate?<br/>Prescription Type   	Bifocal / Progressive<br/>Frame Style  Premium<br/>Frame Style Secondary 	 Premium<br/>Collection 		 Rich Acetate<br/>Product Warranty 	 1 Year Manufacturer Warranty?<br/>Gender  Unisex<br/>Height  42 mm<br/>Condition  New<br/>Temple Colour  Black', 5000, 'men', '66e008d80f78a.jpg', '66e008d80ff2a.jpg', '66e008d810637.jpg', '66e008d810b8b.jpg', 'gold', 'show', '2024-09-10 08:52:40', 'medium', 2200, 'Aviator'),
(13, 'John Jacobs Gunmetal Full Rim Aviator', '        Brand Name    		John Jacobs<br/>Product Type  		Eyeglasses<br/>Frame Type    		Full Rim<br/>Frame Shape   		Aviator<br/>Model No.     		JJ E13346<br/>Frame Size    		Wide?<br/>Frame Width   		139 mm<br/>Frame Dimensions	 53-19-145<br/>Frame colour		Black<br/>Weight			23 gm?<br/>Weight Group		Average?<br/>Material		Italian Acetate<br/>Frame Material		Italian Acetate?<br/>Temple Material		Italian Acetate?<br/>Prescription Type   	Bifocal / Progressive<br/>Frame Style  Premium<br/>Frame Style Secondary 	 Premium<br/>Collection 		 Rich Acetate<br/>Product Warranty 	 1 Year Manufacturer Warranty?<br/>Gender  Unisex<br/>Height  42 mm<br/>Condition  New<br/>Temple Colour  Black', 5000, 'men', '66e008d811d77.jpg', '66e008d8122a4.jpg', '66e008d81276f.jpg', '66e008d812c3a.jpg', 'Black', 'show', '2024-09-10 08:52:40', 'medium', 2200, 'Aviator'),
(14, 'John Jacobs Silver Rimless Aviator', '        Brand Name    		John Jacobs<br/>Product Type  		Eyeglasses<br/>Frame Type    		Full Rim<br/>Frame Shape   		Aviator<br/>Model No.     		JJ E13346<br/>Frame Size    		Wide?<br/>Frame Width   		139 mm<br/>Frame Dimensions	 53-19-145<br/>Frame colour		Black<br/>Weight			23 gm?<br/>Weight Group		Average?<br/>Material		Italian Acetate<br/>Frame Material		Italian Acetate?<br/>Temple Material		Italian Acetate?<br/>Prescription Type   	Bifocal / Progressive<br/>Frame Style  Premium<br/>Frame Style Secondary 	 Premium<br/>Collection 		 Rich Acetate<br/>Product Warranty 	 1 Year Manufacturer Warranty?<br/>Gender  Unisex<br/>Height  42 mm<br/>Condition  New<br/>Temple Colour  Black', 5000, 'men', '66e009b4b2ced.jpg', '66e009b4b33cb.jpg', '66e009b4b3a42.jpg', '66e009b4b4097.jpg', 'silver', 'show', '2024-09-10 08:56:20', 'narrow', 4500, 'Aviator');

-- --------------------------------------------------------

--
-- Table structure for table `useraddres`
--

DROP TABLE IF EXISTS `useraddres`;
CREATE TABLE IF NOT EXISTS `useraddres` (
  `userid` int(11) DEFAULT NULL,
  `Phonenumber` int(10) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `useraddres`
--

INSERT INTO `useraddres` (`userid`, `Phonenumber`, `street`, `city`, `state`, `country`, `pincode`) VALUES
(1, 123456789, 'luharstreet', 'wadhwan', 'wadwan', 'india', 363030),
(3, 123456787, '11', '11', '11', '11', 11);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
CREATE TABLE IF NOT EXISTS `userdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `useremail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `joindate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `useremail` (`useremail`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `username`, `useremail`, `password`, `status`, `joindate`) VALUES
(1, 'harsh', 'harsh@gmail.com', '$2y$10$bHAxgiI4iKWr3yAUFK2lX.SFm9Us46kArzr8pkCriJUf8YBeBAADu', 1, '2024-09-08 08:58:32'),
(2, 'rafik', 'rafik1@gmail.com', '$2y$10$LxvIFEvcI34MIzl2GQ4N6ODHlbC3xLXnJ6yjD37v9pw5bi7c9Qt1y', 0, '2024-09-08 08:59:40'),
(3, 'user', 'user1@gmail.com', '$2y$10$PoMx/QTi123Wjb7HQ8J0qO3ayitH2J5x/aB1BqA98SK57GjnPPXXK', 0, '2024-09-10 07:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `userprescription`
--

DROP TABLE IF EXISTS `userprescription`;
CREATE TABLE IF NOT EXISTS `userprescription` (
  `prescriptionid` int(11) NOT NULL AUTO_INCREMENT,
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
  `rightADD` float NOT NULL,
  PRIMARY KEY (`prescriptionid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userprescription`
--

INSERT INTO `userprescription` (`prescriptionid`, `orderid`, `userid`, `productid`, `leftSPH`, `rightSPH`, `leftCYL`, `rightCYL`, `leftAXIS`, `rightAXIS`, `leftADD`, `rightADD`) VALUES
(1, 1, 3, 3, -0.25, -0.25, -0.25, -0.25, 0, 0, 0, 0),
(2, 5, 3, 8, -0.5, -0.5, 0, 0, 0, 0, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
