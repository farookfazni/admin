-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 07, 2020 at 12:23 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registeruser`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(100) NOT NULL DEFAULT 'admin',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `productname` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboy`
--

DROP TABLE IF EXISTS `deliveryboy`;
CREATE TABLE IF NOT EXISTS `deliveryboy` (
  `nic` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `contactNo` varchar(255) NOT NULL,
  PRIMARY KEY (`nic`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderdate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `orderName` varchar(255) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `paymentId` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  PRIMARY KEY (`paymentId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `actualprice` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(1000) NOT NULL,
  `product_qty` int(255) NOT NULL,
  `description` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `manufacturer`, `product_category`, `actualprice`, `product_price`, `product_image`, `product_qty`, `description`) VALUES
(1, 'Samsung Galaxy M20', 'Samsung', 'Mobile Phone', '50000.00', '45000.00', 'Resourses/product/pr1.jpg', 1, ''),
(2, 'Huawei P30', 'Huawei', 'Mobile Phone', '34000.00', '30000.00', 'Resourses/product/pr2.jpg', 1, ''),
(3, 'Oppo F15', 'Oppo', 'Mobile Phone', '45000.00', '40000.00', 'Resourses/product/pr3.jpg', 1, ''),
(4, 'Nokia 6.1 Plus (Nokia X6)', 'Nokia', 'Mobile Phone', '24000.00', '22000.00', 'Resourses/product/pr4.jpg', 1, ''),
(5, 'Apple Iphone Charger', 'Apple', 'Charger', '4000.00', '3000.00', 'Resourses/product/pr5.jpg', 1, ''),
(6, 'Pinang Handfree', 'Pinang', 'Handfree', '600.00', '550.00', 'Resourses/product/pr6.jpg', 1, ''),
(7, 'Samsung Wireless Charger', 'Samsung', 'Charger', '1000.00', '950.00', 'Resourses/product/pr7.jpg', 1, ''),
(8, 'Apple Airpod', 'Apple', 'Handfree', '4500.00', '4000.00', 'Resourses/product/pr8.jpg', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Reg_ID` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contactNo` int(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`Reg_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Reg_ID`, `fname`, `lname`, `username`, `email`, `contactNo`, `address`, `user_type`, `password`) VALUES
(1, 'Hashitha', 'Niroshan', 'hash', 'hash@gmail.com', 718712004, 'Temple road,matara', 'user', '202cb962ac59075b964b07152d234b70'),
(2, 'Dasith', 'Deelaka', 'deelaka', 'deelakajagoda@gmail.com', 778257254, 'NO 5/B2/11, IETI Quarters,Thelawala road Angulana, Mount Lavinia.\r\nColombo', 'user', 'f9104f7b975259fd53223fd4b3d5bf07'),
(3, 'Andress', 'Iniesta', 'iniesta8', 'iniesta8@gmail.com', 112345678, 'Barcelona,Spain', 'user', '4849ef68cba71d52b56694cc2f88bb11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
