-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 10:38 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'e6e061838856bf47e1de730719fb2609', '01-03-2021 06:46:06 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `updationDate`) VALUES
(3, 'Books', 'Read for knowledge', '01-03-2021 06:30:28 PM'),
(4, 'Electronics', 'Electronic Products', '01-03-2021 06:30:36 PM'),
(5, 'Furniture', 'All home furnitures', '01-03-2021 06:29:55 PM'),
(6, 'Fashion', 'All fashion things to looks good', '01-03-2021 06:30:58 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(8, 1, '16', 1, '2021-02-28 11:27:55', 'COD', NULL),
(9, 1, '3', 1, '2021-02-28 11:29:51', 'Internet Banking', NULL),
(10, 0, '4', 1, '2021-03-01 07:20:26', 'COD', NULL),
(11, 0, '16', 1, '2021-03-01 10:58:34', 'COD', NULL),
(12, 0, '22', 1, '2021-03-02 05:00:50', 'COD', NULL),
(13, 0, '25', 3, '2021-03-03 08:00:19', 'COD', NULL),
(14, 0, '25', 1, '2021-03-03 08:00:30', 'COD', NULL),
(15, 0, '35', 1, '2021-03-03 09:03:26', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productSku` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productSku`, `productPrice`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(21, 3, 13, 'Java Complete Reference ', '368592K', 1000, '<ol><li><span style=\"color: rgb(51, 51, 51); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Herbert Schildt&nbsp;</span><br></li><li><span style=\"color: rgb(51, 51, 51); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Language : English</span></li><li><span style=\"color: rgb(51, 51, 51); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Publisher : MC Graw Hill Education</span></li></ol>', 'Webp.net-resizeimage-44.jpg', '41DxYvRYOJL.jpg', 'Webp.net-resizeimage-44.jpg', 0, 'In Stock', '2021-03-01 11:59:25', NULL),
(22, 3, 8, 'The Wimpy Kid Do - It - Yourself Book', '844713R', 200, '<div style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><span style=\"box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">The Wimpy Kid Do -It- Yourself Book</span><span style=\"box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Jeff Kinney)</span><br><ul><li>Language: English</li><li>Binding: Paperback</li><li>Publisher: Penguin Books Ltd</li></ul></div>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-imafkg6qbjpjcvqf.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-imafkg6qbjpjcvqf.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-imafkg6qbjpjcvqf.jpeg', 50, 'In Stock', '2021-03-01 12:06:28', NULL),
(23, 4, 4, 'Redmi Note 4 (Gold, 32 GB)  (With 3 GB RAM)', 'A864788-155', 10999, '<br><div><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor</li></div>', 'mi-redmi-note-4-1.jpeg', 'mi-redmi-note-4-2.jpeg', 'mi-redmi-note-4-3.jpeg', 0, 'In Stock', '2021-03-01 12:10:40', NULL),
(24, 4, 4, 'Apple iPhone 6 (Silver, 16 GB)', '166859-15A', 35000, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">1 GB RAM | 16 GB ROM |</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">4.7 inch Retina HD Display</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">8MP Primary Camera | 1.2MP Front</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Li-Ion Battery</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</span></li></ul>', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 0, 'In Stock', '2021-03-01 12:14:09', NULL),
(25, 4, 6, 'Acer ES 15 Pentium Quad Core', '746624SL', 19990, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display</li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2021-03-01 12:16:27', NULL),
(26, 4, 2, 'Micromax 81cm (32) HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)', 'RA433941-12', 140000, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; white-space: nowrap; font-size: 14px;\">Pakage : 1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</span></li><li><span style=\"font-size: 14px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; white-space: nowrap;\">Model Name : 32T6175MHD</span></li><li><span style=\"font-size: 14px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; white-space: nowrap;\">Display Size : 81 cm (32)</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Screen Type : LED</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">HD Technology : HD Ready, 1366 x 768</span></li></ul><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><ul style=\"margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 14px;\"></ul></div>', 'micromax1.jpeg', 'micromax main image.jpg', 'micromax main image (1).jpg', 0, 'In Stock', '2021-03-01 12:22:23', NULL),
(27, 4, 4, 'SAMSUNG Galaxy On5', '895625Y', 8999, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor</li></ul>', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 0, 'In Stock', '2021-03-01 12:25:18', NULL),
(28, 5, 9, 'Induscraft Solid Wood King Bed With Storage', '78593AF', 31000, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br><div><ul><li>Material Subtype: Rosewood (Sheesham)<br></li><li>W x H x D: 1850 mm x 875 mm x 2057.5 mm<br></li><li>Floor Clearance: 8 mm<br></li><li>Delivery Condition: Knock Down</li></ul></div>', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-1.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg', 30, 'In Stock', '2021-03-01 12:27:00', NULL),
(29, 5, 10, 'Nilkamal Ursa Metal Queen Bed', '599824KP', 6599, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">@home by Nilkamal Ursa Metal Queen Bed</span><br><div><ul><li>Material Subtype: Carbon Steel<br></li><li>W x H x D: 1590 mm x 910 mm x 2070 mm<br></li><li>Floor Clearance: 341 mm<br></li><li>Delivery Condition: Knock Down</li></ul></div>', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-1.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg', 100, 'In Stock', '2021-03-01 12:29:37', NULL),
(30, 6, 14, 'Button Down - Midnight Blue', '458638E-45', 500, '<ul><li><span style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 14px;\">100% Cotton</span></li><li><span style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 14px;\">Rich Blue Shirt Finish with Slight Sheen</span></li><li><span style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 14px;\">Details include Smaller Collar &amp; Side Gusset</span></li><li><span style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 14px;\">Light Weight Fabric perfect for all occasions</span></li><li><span style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 14px;\">Handcrafted In New York City</span></li><li><span style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 14px;\">Imported Fabric</span></li><li><span style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 14px;\">Slim Fit</span></li></ul>', 'shirt-button-down-midnight-blue-11.jpg', 'shirt-button-down-midnight-blue-8.jpg', 'images.jpg', 50, 'In Stock', '2021-03-01 12:40:59', NULL),
(31, 6, 12, 'Asian Casuals Shoes', '488857F', 800, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Colour: White</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Outer Material: Denim</span></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 30, 'In Stock', '2021-03-01 12:44:22', NULL),
(32, 4, 6, 'HP Core i5 5th Gen', '479656G-77', 41990, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display</li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2021-03-01 12:47:44', NULL),
(33, 6, 12, 'Adidas MESSI 16.3 TF Football turf Shoes  (Blue)', 'UD859645', 3999, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; text-align: justify;\">Colour: Blue</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; text-align: justify;\">Closure: Laced</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; text-align: justify;\">Weight : 200 g (per single Shoe) - Weight of the product may vary depending on size.</span></li><li><span style=\"text-align: justify; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Style : Panel and Stitch Detail, Textured Detail</span></li><li><span style=\"text-align: justify; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Tip Shape : Round</span></li><li><span style=\"text-align: justify; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Season : AW16</span></li></ul><ul style=\"margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"></ul><ul style=\"margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"></ul><ul style=\"margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"></ul>', '1 (1).jpeg', '2 (1).jpeg', '3 (1).jpeg', 50, 'In Stock', '2021-03-01 12:53:08', NULL),
(34, 4, 4, 'Lenovo Vibe K5 Note (Gold, 32 GB)  ', '48625KP-89', 11999, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor</li></ul>', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', 0, 'In Stock', '2021-03-01 12:56:18', NULL),
(35, 3, 13, 'Beginning PHP and MySQL', '653263LN', 350, '<div><h1 id=\"title\" class=\"a-spacing-none a-text-normal\" style=\"box-sizing: border-box; padding: 0px; line-height: 36px; color: rgb(15, 17, 17); font-family: Arial, sans-serif; margin-bottom: 0px !important;\"><span id=\"productTitle\" class=\"a-size-extra-large\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; line-height: 36px !important;\"><font size=\"2\">Beginning PHP and MySQL: From Novice to Professional</font></span></h1></div><ul><li>Author : Frank M Kromann</li><li>Edition : Fifth edition</li><li>Language : English</li></ul><div><br></div>', 'BeginningPHPandMySQL.jpg', 'BeginningPHPandMySQL.jpg', 'BeginningPHPandMySQL.jpg', 50, 'In Stock', '2021-03-03 08:45:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `updationDate`) VALUES
(2, 4, 'Led Television', '01-03-2021 06:27:59 PM'),
(3, 4, 'Television', '01-03-2021 06:28:35 PM'),
(4, 4, 'Mobiles', '01-03-2021 06:28:50 PM'),
(5, 4, 'Mobile Accessories', '01-03-2021 06:28:43 PM'),
(6, 4, 'Laptops', '01-03-2021 06:28:58 PM'),
(7, 4, 'Computers', '01-03-2021 06:29:04 PM'),
(8, 3, 'Comics', '01-03-2021 06:27:52 PM'),
(9, 5, 'Beds', '01-03-2021 06:29:11 PM'),
(10, 5, 'Sofas', '01-03-2021 06:29:16 PM'),
(11, 5, 'Dining Tables', '01-03-2021 06:34:24 PM'),
(12, 6, 'Men Footwears', '01-03-2021 06:34:31 PM'),
(13, 3, 'Programming', '01-03-2021 06:28:15 PM'),
(14, 6, 'Men Fashion', '01-03-2021 06:14:47 PM');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profilepic` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `address`, `profilepic`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `updationDate`) VALUES
(10, 'narendra', 'nare3671@gmail.com', 9754791179, '25d55ad283aa400af464c76d713c07ad', 'neemuch', '', 'Neemuch', 'MP', 'Neemuch', 458330, 'Neemuch', 'MP', 'Neemuch', 458330, NULL),
(11, 'user', 'user@gmail.com', 1231231231, '25d55ad283aa400af464c76d713c07ad', 'Neemuch', '', 'indore', 'MP', 'indore', 452001, 'indore', 'MP', 'indore', 452001, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(3, 1, 2, '2021-02-28 08:31:24'),
(4, 8, 16, '2021-03-01 08:15:22'),
(5, 0, 24, '2021-03-02 05:00:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
