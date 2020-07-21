-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2018 at 04:48 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `child_id` int(11) NOT NULL,
  `child_name` varchar(100) DEFAULT NULL,
  `sub_cate_id` int(11) DEFAULT NULL,
  `main_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`child_id`, `child_name`, `sub_cate_id`, `main_id`) VALUES
(4, 'chargers', 12, 13),
(5, 'Casing', 12, 13),
(6, 'Fancy Pouch', 12, 13),
(7, 'Fancy pouch', 13, 13),
(8, 'charger', 14, 13),
(9, 'chargers', 13, 13),
(10, 'casing', 13, 13),
(11, 'casing', 13, 13),
(12, 'Fancy pouch', 14, 13),
(13, 'poch', 15, 13),
(14, 'handFree', 15, 13),
(22, 'battery', 13, 13),
(23, 'battery', 13, 13),
(24, 'Apple', 22, 15),
(25, 'Nokia', 22, 15),
(26, 'apple', 23, 15),
(27, 'xiaomi', 23, 15);

-- --------------------------------------------------------

--
-- Table structure for table `main_category`
--

CREATE TABLE `main_category` (
  `main_id` int(11) NOT NULL,
  `main_cate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `main_category`
--

INSERT INTO `main_category` (`main_id`, `main_cate`) VALUES
(1, 'GADGETS'),
(13, 'ACCESSORIES'),
(15, 'Mobile ');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `order_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `date`, `quantity`, `user_id`, `payment_id`, `product_id`, `address`, `customer_name`, `contact`, `status_id`, `order_no`) VALUES
(12, '2018-05-30', 1, NULL, 2, 56, 'Multan', 'malik', '03414226391', 3, 36063),
(13, '2018-08-02', 2, NULL, 2, 61, 'multan', 'ali', '03156861126', 3, 55955),
(14, '2018-08-12', 1, NULL, 1, 59, 'multan', 'ali', '03156861126', 3, 49459),
(15, '2018-08-15', 4, NULL, 1, 55, 'xyz', 'ali', '03156861126', 1, 65773),
(16, '2018-08-25', 3, NULL, 2, 56, 'sdf', 'fds', '4242', 3, 87633),
(17, '2018-08-26', 10, NULL, 2, 59, 'xyz', 'ali', '12345', 3, 55932),
(18, '2018-08-27', 5, NULL, 2, 58, 'xyz', 'ali', '23123', 3, 41114),
(19, '2018-08-28', 5, NULL, 1, 54, 'xyz', 'ali', '123456', 3, 15986),
(20, '2018-09-09', 100, NULL, 1, 61, 'ffff', 'ggg', '4566', 1, 90100),
(21, '2018-09-17', 15, NULL, 2, 58, 'multan', 'ali', '12313123', 3, 85410);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `method` varchar(100) DEFAULT NULL,
  `details` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `method`, `details`) VALUES
(1, 'cash on delivery', 'cash in  hand'),
(2, 'easipaisa', ' accounts');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `p_name` varchar(200) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `price` int(12) DEFAULT NULL,
  `sub_cate_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `off_name` varchar(50) DEFAULT NULL,
  `s_date` date DEFAULT NULL,
  `e_date` date DEFAULT NULL,
  `off_value` int(12) DEFAULT NULL,
  `weigh` varchar(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `main_id` int(11) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  `image2` varchar(150) DEFAULT NULL,
  `image3` varchar(150) DEFAULT NULL,
  `image4` varchar(150) DEFAULT NULL,
  `image5` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `p_name`, `image`, `price`, `sub_cate_id`, `user_id`, `off_name`, `s_date`, `e_date`, `off_value`, `weigh`, `description`, `main_id`, `child_id`, `image2`, `image3`, `image4`, `image5`) VALUES
(54, 'iphon case 7 ', 'img/38127510_856555.jpg', 25000, 14, NULL, 'Ramadan ', '2018-05-31', '2018-06-03', 20, '1', 'hello', 1, 12, NULL, NULL, NULL, NULL),
(55, 'iphon case 7 ', 'img/2 (1).jpg', 2000, 14, NULL, 'Ramadan ', '2018-05-31', '2018-06-03', 20, '1', '                               available for    each model ', 1, 12, NULL, NULL, NULL, NULL),
(56, 'iphon case 7 ', 'img/2 (5).jpg', 2000, 14, NULL, 'Ramadan ', '2018-06-01', '2018-06-02', 20, '1', '                                 jh', 1, 12, NULL, NULL, NULL, NULL),
(58, 'iphon case x', 'img/38238976_n.jpg', 2000, 14, NULL, 'Ramadan ', '2018-05-30', '2018-06-30', 20, '1', 'A+ Best Ipaky Protection Case with Finger Ring Kickstand Shockproof TPU Case + Anti Knock Scratch proof\r\nFor Samsung S7 Edge\r\nColours: Black, Gold Red and Blue', 1, 12, NULL, NULL, NULL, NULL),
(59, 'IPHONE X', 'img/ik.jpg', 2000, 13, NULL, 'RAMZAN', '2018-05-24', '2018-06-02', 2, '0', '                                  available now', 1, 9, NULL, NULL, NULL, NULL),
(61, 'IPHONE X', 'img/1527727181char.jpg', 2000, 14, NULL, 'RAMZAN', '2018-05-28', '2018-06-02', 2, '.3', 'no one brand', 1, 8, 'img/1527727181char.jpg', 'img/1527727181char.jpg', 'img/1527727181char.jpg', 'img/1527727181char.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `image`) VALUES
(11, 'img/bg2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status`) VALUES
(1, 'pendings'),
(2, 'Cleared'),
(3, 'New Order');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_cate_id` int(11) NOT NULL,
  `sub_cate` varchar(50) DEFAULT NULL,
  `main_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_cate_id`, `sub_cate`, `main_id`) VALUES
(1, 'Tablet', 1),
(2, 'Desktop', 1),
(9, 'caps ', 1),
(10, 'Belts', 1),
(11, 'Gloves', 1),
(12, 'Nokia', 13),
(13, 'Samsung', 13),
(14, 'Iphone', 13),
(15, 'Huawei', 13),
(16, 'pouch', 13),
(18, 'Lewis', 1),
(22, 'Mobiles Phone', 15),
(23, 'Tablets', 15),
(24, 'voilate', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `contact`, `address`, `username`, `password`) VALUES
(1, 'shahrukh', '03018965589', 'multan', 'employer', 'abcd1234'),
(2, 'Edwalled', '03246987896', 'Lahore', 'Edwaleed', 'asdf1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`child_id`),
  ADD KEY `fkey` (`sub_cate_id`),
  ADD KEY `gkey` (`main_id`);

--
-- Indexes for table `main_category`
--
ALTER TABLE `main_category`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `f1` (`user_id`),
  ADD KEY `f23` (`payment_id`),
  ADD KEY `f4` (`product_id`),
  ADD KEY `f6` (`status_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `f2` (`sub_cate_id`),
  ADD KEY `f3` (`user_id`),
  ADD KEY `kmkm` (`main_id`),
  ADD KEY `x` (`child_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_cate_id`),
  ADD KEY `forin key` (`main_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `child`
--
ALTER TABLE `child`
  MODIFY `child_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `main_category`
--
ALTER TABLE `main_category`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `child`
--
ALTER TABLE `child`
  ADD CONSTRAINT `child_ibfk_1` FOREIGN KEY (`sub_cate_id`) REFERENCES `sub_category` (`sub_cate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `child_ibfk_2` FOREIGN KEY (`main_id`) REFERENCES `main_category` (`main_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`sub_cate_id`) REFERENCES `sub_category` (`sub_cate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`main_id`) REFERENCES `main_category` (`main_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`child_id`) REFERENCES `child` (`child_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `sub_category_ibfk_1` FOREIGN KEY (`main_id`) REFERENCES `main_category` (`main_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
