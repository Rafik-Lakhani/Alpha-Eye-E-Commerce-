-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 25, 2024 at 06:12 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
