-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 07, 2020 at 07:39 PM
-- Server version: 10.4.12-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PortfolioProject`
--
CREATE DATABASE IF NOT EXISTS `PortfolioProject` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `PortfolioProject`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `cartTime` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `userID`, `cartTime`) VALUES
(6, 24, '2020-06-29 10:18:09.000000'),
(7, 22, '2020-06-29 10:43:14.000000'),
(8, 43, '2020-07-06 16:41:39.000000'),
(9, 44, '2020-07-06 21:14:12.000000'),
(10, 23, '2020-07-06 22:02:16.000000'),
(11, 45, '2020-07-07 15:34:25.000000'),
(12, 45, '2020-07-07 17:38:54.000000');

-- --------------------------------------------------------

--
-- Table structure for table `cartItem`
--

CREATE TABLE `cartItem` (
  `itemID` int(10) NOT NULL,
  `productID` int(10) NOT NULL,
  `amount` int(40) NOT NULL,
  `totalPrice` int(10) NOT NULL,
  `cartID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cartItem`
--

INSERT INTO `cartItem` (`itemID`, `productID`, `amount`, `totalPrice`, `cartID`) VALUES
(28, 14, 3, 150, 6),
(30, 22, 2, 100, 6),
(37, 8, 2, 500, 6),
(38, 14, 2, 150, 6),
(39, 7, 1, 500, 6),
(40, 11, 2, 150, 7),
(45, 24, 1, 6000, 6),
(46, 8, 1, 2000, 6),
(47, 8, 1, 2000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `catID` int(10) NOT NULL,
  `catName` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catID`, `catName`) VALUES
(1, 'Landing Pages'),
(2, 'Illustrations'),
(3, 'Logo'),
(4, 'Web Sites'),
(5, 'Mockups'),
(6, 'Project Management');

-- --------------------------------------------------------

--
-- Table structure for table `clientOrder`
--

CREATE TABLE `clientOrder` (
  `orderID` int(10) NOT NULL,
  `clientID` int(10) NOT NULL,
  `cartID` int(10) NOT NULL,
  `subTotal` int(10) NOT NULL,
  `shippingCity` varchar(40) NOT NULL,
  `shippingStreet` varchar(40) NOT NULL,
  `shippingDate` datetime(6) NOT NULL,
  `orderTime` varchar(20) NOT NULL,
  `paymentDigits` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientOrder`
--

INSERT INTO `clientOrder` (`orderID`, `clientID`, `cartID`, `subTotal`, `shippingCity`, `shippingStreet`, `shippingDate`, `orderTime`, `paymentDigits`) VALUES
(3, 23, 6, 1000, 'Barcelona', 'a', '2020-06-16 00:00:00.000000', '2020-06-23', 1234),
(4, 24, 7, 1000, 'Barcelona', 'a', '2020-07-01 00:00:00.000000', '2020-07-01', 4580),
(5, 22, 7, 150, 'Pardes-Hanna', 'gfhfg', '2020-07-07 14:33:38.000000', '2020-7-7 17:35:7', 1234),
(6, 45, 11, 1500, 'Haifa', 'adf', '2020-07-07 14:33:38.000000', '2020-7-7:14:33:38', 1232),
(7, 45, 11, 1500, 'Hadera', 'fjf', '2020-07-07 14:33:38.000000', '2020-7-7:17:40:59', 2435),
(8, 45, 11, 1500, 'Hadera', 'fjf', '2020-07-07 14:33:38.000000', '2020-7-7:17:43:55', 2435),
(9, 45, 11, 1500, 'Haifa', 'haifa', '2020-07-07 14:33:38.000000', '2020-7-7:18:1:41', 6666),
(10, 45, 11, 1500, 'Pardes-Hanna', 'asdffsd', '2020-07-07 14:33:38.000000', '2020-7-7:18:6:3', 234235),
(11, 22, 7, 150, 'Pardes-Hanna', 'gfhfg', '2020-07-07 14:33:38.000000', '2020-7-7:18:13:28', 1234),
(12, 45, 11, 1500, 'Hadera', 'sdfgdfg', '2020-07-31 00:00:00.000000', '2020-7-7:18:17:20', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(10) NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `price` int(25) NOT NULL,
  `imageUrl` varchar(40) NOT NULL,
  `itemDescription` varchar(3500) NOT NULL,
  `catID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `itemName`, `price`, `imageUrl`, `itemDescription`, `catID`) VALUES
(7, 'Book Illustrations', 1500, 'tales.jpg', 'this set consists of 2 pages watermark- could act as a cover for a children book, mostly hand crafted, a bit digital.', 2),
(8, 'children book drawings: a set of 4 bw.', 2000, '3bottles.jpg', 'Illustrations for a childeren book with some additional bonus material and possibly a school workshop\r\n', 2),
(11, 'Designed Elementor Landing pafe', 2500, 'test.jpg', 'Are you ready to experience one of the most advanced design landing pages out there?', 6),
(12, 'Preperation for a Landing page', 1000, 'split.jpg', 'to deliver a pure, concise message - is an art form. this mockup will get you covered', 1),
(13, 'Woocommerce Angular web application', 10000, 'sregt.jpg', 'woocommerce is a leading technology but in terms of performance lacks and has many issues, our studio has the next feature ecommerce solution build from the ground up in Angular SPA', 5),
(14, 'React Native Base App', 5000, 'sregt.jpg', 'This gem of a cross platform app is followed by 5 pages brief drill down into your company needs', 4),
(15, 'simple- a wordpress WooCommerce site', 7500, 'primadance.jpg', 'how to create an ecommerce site without the extra pains of planning and execution? woocommerce to the rescue, it has native support for shipments and money transfers along with tranzilla, payal - you name it.', 4),
(19, 'children room wall painting', 3500, 'wall.jpg', 'Letting fantasy hit the wall... base work with stencils proceed into Acrilic paints, children play-room', 2),
(20, 'towing logo', 600, 'tow.jpg', 'this hand crafted logo includes 1 revision ', 3),
(21, 'elementor portfolio minisite', 3500, 'portfolio.jpg', 'The wordpress elementor is an excellent design system, enjoy', 4),
(22, 'a Portfolio Web Site - HTML 5', 3000, 'primadance.jpg', 'performance wise - this is a neat solution.', 4),
(23, 'Nadlan landing page', 2500, 'nadlan.jpg', 'classy, white and a bit on the shiney side. \nthose are elementor lp\'s', 1),
(24, 'premium VIP branding logo', 6000, 'logo', 'What makes a good logo? what makes a great logo divine?\r\nit\'s all about communication and transition of knowledge- our experts will brief and hand craft and ink well then digitally sign your most precious asset- the company main brand image', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `username_email` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `city` varchar(20) NOT NULL,
  `street` varchar(50) NOT NULL,
  `id` int(9) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `firstVisit` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `firstName`, `lastName`, `username_email`, `password`, `city`, `street`, `id`, `isAdmin`, `firstVisit`) VALUES
(22, '7', '7', '7', '89d7149eb47ea80748a0abd7cdaf1e87a81e0c36b1305b5538469b909c18c526ec778ee27d7d49345db966eddc3399f50b8b5e39d3ee80210a1b3d89345821fc', '7', '7', 123456789, 0, 1),
(23, '1', '1', '1', 'c7986595cce243c20c7c60894e8640173441b3c7e1908c50d94ea9959b6d2f91a70981e8645b8f987f99370ee67788aa5686826b8cd178bbbea4cddadb71f4cc', '1', '1', 987654321, 1, 0),
(24, '3', '3', '3', '3631724678ecf22f3e5e66c60a0a460efb0931d8ccb78791140eb082e00e2acfd7c2531c7d5d7d988e69b80fffbbf9c151ef29ce4b790567356c6617972cb929', '3', '3', 123456123, 0, 2),
(25, '3', '3', '35', '3631724678ecf22f3e5e66c60a0a460efb0931d8ccb78791140eb082e00e2acfd7c2531c7d5d7d988e69b80fffbbf9c151ef29ce4b790567356c6617972cb929', '3', '3', 123, 0, 0),
(26, 'jonathan', 'moguillansky', '5@gmail.com', '82859ab583b8f9b5d7aeb775b5c364e0bc06e503c2541f7864996d11b38ba81557cee7516e44768dd5f845448b2343eb1cf8e184851dbcd906a37ce2516dade4', 'Haifa', 'haasis 7 apt. 19', 963852741, 0, 0),
(27, 'jonathan', 'moguillansky', 'anguru@gmail.com', 'c85461d97aaaec1c66b8b52465a834bc4a24c82d7670268ce9d41b79de9375b20e4d085cb48f366c7eb20af67a3e638a8d33dd72c1989082356ddf3e314b5c55', 'Ramat-Gan', 'haasis 7 apt. 19', 123456, 0, 0),
(28, 'jonathan', 'moguillansky', '12', 'c85461d97aaaec1c66b8b52465a834bc4a24c82d7670268ce9d41b79de9375b20e4d085cb48f366c7eb20af67a3e638a8d33dd72c1989082356ddf3e314b5c55', 'Tel-Aviv', 'haasis 7 apt. 19', 12, 0, 0),
(41, '44', '44', '44', 'f1d2d8f0839a4d3cd24c335e680862e07650b088993fec20cfe646a6689ca6b105fad7ea1ae2a2ae76cc9ee9b59815f06293dd8f2298063f90ad3f4389590a02', 'Pardes-Hanna', '44', 44, 0, 0),
(42, '55', '55', '55', '4aef3b2a59d085057bacff4bfee8b2c2659789dff5696a610d6ef8283b1c16b96a8ece4f5fa61d1a9911d3f803ccc7dffac9946ef9a0070b87f0d31d72e914f8', 'Pardes-Hanna', '55', 55, 0, 0),
(43, '66', '66', '66', '6cf49ce83aa788769ec872207aca4f282898dbfe28f9ee4846b5bd8d6824afa2abc50ee91c95cd419dc18f6c3133c9dbc266d0ab4f35f3fdaf8401ee058adc28', 'Byniamina', '66', 66, 0, 0),
(44, '77', '77', '77', '8ef11ae1c2f3dcb035b1e75d24ef243b40980b83975548c055394756c23d6d5e8adb92c9a004a1a9367a4ffb591a3380feb3cbeb772ec79a686b4bbcb915fc8c', 'Hadera', '77', 77, 0, 0),
(45, '999', '999', '999', '7193afa1fa0d6f32251c503c365a1cdc0ace65a18c58842b69e358eedd418f0cf997b4ba29884da244a62a5b429324ecab6fcf2fc5ea06d2769b315842bbe913', 'Pardes-Hanna', '999', 123789456, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `cartItem`
--
ALTER TABLE `cartItem`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `cartID` (`cartID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `clientOrder`
--
ALTER TABLE `clientOrder`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `clientID` (`clientID`),
  ADD KEY `cartID` (`cartID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `catID` (`catID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cartItem`
--
ALTER TABLE `cartItem`
  MODIFY `itemID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `catID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clientOrder`
--
ALTER TABLE `clientOrder`
  MODIFY `orderID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cartItem`
--
ALTER TABLE `cartItem`
  ADD CONSTRAINT `cartItem_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cartItem_ibfk_2` FOREIGN KEY (`cartID`) REFERENCES `cart` (`cartID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clientOrder`
--
ALTER TABLE `clientOrder`
  ADD CONSTRAINT `clientOrder_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clientOrder_ibfk_2` FOREIGN KEY (`cartID`) REFERENCES `cart` (`cartID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`catID`) REFERENCES `categories` (`catID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
