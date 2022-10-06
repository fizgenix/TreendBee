-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 02:36 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TrendBee`
--
CREATE DATABASE IF NOT EXISTS `TrendBee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `TrendBee`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'ZARA'),
(2, 'HnM'),
(3, 'FOREVER21'),
(4, 'VERO MODA'),
(5, 'ONLY'),
(6,'HUDA'),
(7, 'MAC'),
(8, 'BOBBI BROWN'),
(9, 'RAYBAN'),
(10, 'CATWALK'),
(11, 'NIKE'),
(12,'PUMA'),
(13, 'ADIDAS'),
(14, 'TOMMY HILFIGER'),
(15, 'VOGUE');
-- ------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(50) NOT NULL,
  `p_id` int(50) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(50) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amount`) VALUES
(79, 11, '0.0.0.0', 2, 'Baby Shirt', 'babyshirt.JPG', 1, 500, 500),
(80, 2, '0.0.0.0', 2, 'iPhone 5s', 'iphonemobile.JPG', 1, 25000, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'DRESSES & JUMPSUITS'),
(2, 'TOPS'),
(3, 'JEANS & TROUSERS'),
(4, 'WINTER WEAR'),
(5, 'BAGS'),
(6, 'ACCESSORIES'),
(7,'FOOTWEAR'),
(8,'MAKEUP');



-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `tr_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `uid`, `pid`, `p_name`, `p_price`, `p_qty`, `p_status`, `tr_id`) VALUES
(30, 2, 6, 'LG Aqua 2', 15000, 1, 'CONFIRMED', '15179'),
(31, 2, 15, 'Football Shoes', 2500, 1, 'CONFIRMED', '15179'),
(32, 2, 16, 'Football', 600, 1, 'CONFIRMED', '15179');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--


-- ORDER- SNO, CATEGORIE , BRAND
INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) 
VALUES
-- DRESSES
(1, '1', '1', 'Sweetheart Flare Jumpsuit', 1099, 'Size: S', 'suit-1.JPG', 'ZARA Jumpsuit'),
(2, '1', '2', 'Long sleeve Wide Leg Yellow Jumpsuit', 1299, 'Size: XS ', 'suit-2.JPG', 'H&M Jumpsuit'),
(3, '1', '3', 'Puff Sleeve Pink check Jumpsuit', 1000, 'Size: M', 'suit-3.jpg', 'Forever 21 Jumpsuit'),
(4, '1', '4', 'Black Polka Dot Dress', 1380, 'Size: S', 'dress-1.JPG', 'Vero Moda Dress'),
(5, '1', '5', 'Floral Print Mini Dress', 850, 'Size: L', 'dress-2.JPG', 'Only Dress'),
(6, '1', '2', 'Rise Above Lace Up Back Maxi Dress in Emerald', 1599, 'Size: M', 'dress-3.JPG', 'H&M Dress'),
(7, '1', '5', 'Maroon Sleeveless Velvet Dress ', 1300, 'Size: XXL', 'dress-4.JPG', 'Only Dress'),
(8, '1', '3', 'Blue Maxi Dress', 1999, 'Size: S', 'z21.JPG', 'Forever21 Dress'),


-- tops

(9, '2', '2', 'Black full Sleeve crop top', 700, 'Size - L', 'hnm top.jpg', 'HnM top'),
(10, '2', '3', 'v neck top', 800, 'Size - S', 'forever21 top.jpg', 'Forever21 top'),
(11, '2', '4', 'puff sleeve crop top', 500, 'Size - S', 'veromoda top.jpg', 'veromoda top'),
(12, '2', '5', 'peach collar top', 800, 'Size - M', 'only top.jpg', 'only top'),
(13, '2', '1', 'Floral puffer sleeve top', 1000, 'Size - M', 'zara top.jpg', 'zara top'),
(14,'2', '2', 'Women Camisole Top',1699,'Size- XS' , 'top-1.jpg' , 'H&M' ),
(15 ,'2', '4', 'White Crepe Crop Top',1200, 'Size- M', 'top-2.jpg', 'Vero Moda'),
(16,'2', '1', 'Pink ruffled off-shoulder Crop Top', 1000, 'Size - S', 'top-3.jpg', 'Zara Top'),


-- //jeans

(17, '3', '1', 'CULOTTES WITH BELT', 2590, 'SIZE-M', 'jeans1.JPG', 'ZARA trouser '),
(18, '3', '5', 'X MICKEY BLUE GRAPHIC JOGGER JEANS', 3500, 'SIZE-32', 'jeans2.JPG', 'ONLY Jeans'),
(19, '3', '1', 'RIPPED WIDE LEG JEANS', 2790, 'SIZE-28', 'jeans3.JPG', 'ZARA Jeans'),
(20, '3', '2', 'Flared High Jeans', 2990, 'SIZE-26', 'jeans4.JPG', 'HnM Trousers'),
(21, '3', '12', 'Solid Women Pink Track Pants', 1832, 'SIZE-S', 'pumaT.JPG', 'Puma Track pants'),
(22, '3', '13', 'Solid Women Black Track Pants', 2423, 'SIZE-M', 'adidasT.JPG', 'Adidas Track pants'),
(23, '3', '4', 'Slim Women White Jeans', 1000, 'SIZE-L', 'veromodaT.JPG', 'Vero Moda Jeans'),
(24, '3', '4', 'Flared Women Blue Jean-s', 1590, 'SIZE-32', 'veroT.JPG', 'Vero Moda Jeans'),

-- //winter wear
(25, '4', '1', 'Ribbed Hoodie', 1790, 'SIZE-M', 'zara.JPG', 'ZARA Hoodie'),
(26, '4', '2', 'Women Beige Jumper', 999, 'SIZE-L', 'HnM.JPG', 'HnM Jumper'),
(27, '4', '3', 'French Terry Hoodie', 1049, 'SIZE-S', 'F21.JPG', 'FOREVER21 Hoodie'),
(28, '4', '4', 'Black Textured Cardigan', 2500, 'SIZE-L', 'VeroModa.JPG', 'Vero Moda Cardigan'),
(29, '4', '5', 'Green Solid Sweatshirt', 2999, 'SIZE-XS', 'Only.JPG', 'Only Sweatshirt'),
(30,'4', '4', 'Drawstring pullover sweater', 1380, 'Size- XL' , 'winter-1.jpg', 'Vero Moda' ),
(31 ,'4', '3', 'Button Faux Fur Coat', 1890, 'Size- M', 'winter-2.jpg', 'Forever 21'),
(32,'4', '5', 'Modish Pullover Sweater', 1500, 'Size- S', 'winter-3.jpg', 'ONLY'),

-- bags
(33, '5', '1', 'LEATHER CROSSBODY BAG WITH CHAIN', 4590, 'FREE SIZE', 'bag1.JPG', 'ZARA BAG'),
(34, '5', '2', 'Padded shoulder bag', 2300, 'FREE SIZE', 'bag2.JPG', 'HnM Bag'),
(35, '5', '2', 'Shopper bag', 1900, 'FREE SIZE', 'bag3.JPG', 'HnM Bag'),
(36, '5', '3', 'Shoulder bag', 2990, 'FREE-SIZE', 'bag4.JPG', 'forever 21'),
(37, '5', '2', 'Women Pink Shoulder Bag', 1299, 'FREE SIZE', 'hnmB.PNG', 'HnM Bag'),
(38, '5', '3', 'Beige PU Structured Handheld Bag', 1200, 'FREE SIZE', 'f21B.JPG', 'Forever 21 Bag'),
(39, '5', '4', 'Women Blue Backpack', 2490, 'FREE SIZE', 'veroB.JPG', 'Vero Moda Bag'),
(40, '5', '2', 'Black Quilted Shopper Bag', 2290, 'FREE SIZE', 'hnmB2.JPG', 'HnM Bag'),

-- ACCESSORIES
(41,'6', '15', 'Vogue Brown Sunglasses', 2099, 'Size- One-size' , 'ac-1.jpg', 'Vogue' ),
(42,'6', '9', 'UV Protected Full-Rim Round Sunglasses' , 2200, 'Size- One-size', 'ac-2.jpg', 'RayBan'),
(43 ,'6', '14', 'Timeless Style TH Sunglasses', 3000, 'Size- One-size', 'ac-3.jpg', 'Tommy Hilfiger'),
(44,'6', '14', 'TM Brown Sunglasses', 2099, 'Size- One-size' , 'ac-4.jpg', 'Tommy Hilfiger' ),
(45,'6', '9', 'Ray-ban Icon Round Metal Sunglasses', 1900, 'Size- One-size', 'ac-5.jpg', 'RayBan'),
(46,'6', '15', 'Full-Rim Butterfly Sunglasses', 2200, 'Size- One-size', 'ac-6.jpg', 'Vogue'),

-- FOOTWEAR
(47, '7', '13', '3MC VULC SHOES', 4199, 'SIZE-7', 'adidas-1.JPG', 'Adidas shoes'),
(48, '7', '12', 'RS-Curve Bright Heights Women Shoes', 8999, 'SIZE-6', 'puma-1.JPG', 'Puma shoes'),
(49, '7', '12', 'Carson Pro IDP Running Shoes', 2999, 'SIZE-5', 'puma-2.JPG', 'Puma Running shoes'),
(50, '7', '11', 'Unisex Black SB ALLEYOOP Skateboarding Shoes', 6495, 'SIZE-US7', 'nike-1.JPG', 'Puma Running Shoes'),
(51, '7', '11', 'Women White EBERNON LOW Sneakers', 4795, 'SIZE-4', 'nike-2.JPG', 'Nike sneakers'),
(52, '7', '2', 'Women Black Platform Chelsea boots', 2999, 'SIZE-6.5', 'hnm-1.JPG', 'HnM Boots'),
(53, '7', '2', 'Women Beige Solid Sandals', 1999, 'SIZE-5', 'hnm-2.JPG', 'HnM Sandals'),
(54, '7', '10', 'Women Black Solid Sandals', 2595, 'SIZE-37', 'catwalk-1.JPG', 'Catwalk Sandals'),


-- Makeup
(55,'8', '7', 'MAC Shade NC30 Studio Fix Foundation',2000, 'Quantity- 80 ml' , 'mac-1.jpg', 'MAC'),
(56 ,'8', '6', 'Huda Beauty Matte Lipstick Kit', 4200, 'Quantity- 16 Pcs',  'mac-2.jpg', 'HUDA BEAUTY'),
(57 ,'8', '8', 'BB Shimmer Brick Highlighter', 3000, 'Quantity- 1 Pc', 'mac-3.jpg', 'BOBBI BROWN');
-- --------------------------------------------------------

--
-- Table structure for table `received_payment`
--

CREATE TABLE `received_payment` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `amt` int(100) NOT NULL,
  `tr_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Satyam', 'Raj', 'satyammast@gmail.com', '3814d460c26c2dbab2d80294d2cc9882', '8235639917', 'Prem Electronics Block Road Ratu', 'Prem Electronics Block Road Ratu'),
(2, 'Shubham', 'Raj', 'shubham@gmail.com', '5568fda880263b9be0b72104354fa3dc', '8235639917', 'Prem Electronics Block Road Ratu', 'bangalore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `received_payment`
--
ALTER TABLE `received_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `received_payment`
--
ALTER TABLE `received_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


