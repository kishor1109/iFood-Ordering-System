-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2025 at 08:03 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'iFood', '4246f2a049800720c367c3e70e274877', 'admin@gmail.com', '', '2025-03-13 00:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int NOT NULL,
  `rs_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

-- -- Dumping data for table `dishes` -- 
INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES 
(1, 1, 'Gama Gama Special Fried rice', 'This easy fried rice recipe only takes 15 minutes to make, it''s easy to customize with your favorite add-ins, and it''s SO delicious!', '3600.00', 'res11.jpg'),
(2, 1, 'Nasi goreng', 'A traditional recipe for Nasi Goreng, Indonesian / Bali fried rice. Easy and fast to make, and no hunting down unusual ingredients!', '1350.00', 'res12.jpg'),
(3, 1, 'Gama Gama Special chicken biriyani', 'Chicken biryani recipe - Learn to make the best biryani at home with this detailed step-by-step recipe. Easy to make, fragrant & delicious!', '2100.00', 'res13.jpg'),
(4, 1, 'Gama Gama Special mutton biriyani', 'Mutton biryani is a delicious dish made of meat, spices, herbs & yogurt. Learn to make the best at home with step by step photos.', '3300.00', 'res14.jpg'),
(5, 2, 'Thosai and sambol', 'A dosa, dose, dosai, or dosha is a thin, savoury crepe in Indian cuisine made from a fermented batter of ground black gram and rice.', '130.00', 'res21.jpg'),
(6, 2, 'Idli and Vadai', 'Idli vada a south indian breakfast recipe includes idli, sambar, vada ,chutney, paal paniyaram etc. Idli vada with sambar and chutney.', '150.00', 'res22.jpg'),
(7, 2, 'Rice and curry', 'Rice and curry is a popular dish in Sri Lanka, as well as in other parts of the Indian subcontinent. Rice and curry. A rice and curry dish from Sri Lanka.', '300.00', 'res23.jpg'),
(8, 2, 'Parotta', 'Parotta or porotta is a layered South Asian flatbread made from refined flour, eggs and oil.', '150.00', 'res24.jpg'),
(9, 3, 'Fried Rice', 'This easy fried rice recipe only takes 15 minutes to make, it''s easy to customize with your favorite add-ins, and it''s SO delicious!', '400.00', 'res31.jpg'),
(10, 3, 'Fish Nasigoreng', 'A traditional recipe for Nasi Goreng, Indonesian / Bali fried rice. Easy and fast to make, and no hunting down unusual ingredients!', '1000.00', 'res32.jpg'),
(11, 3, 'Beef Nasi Goreng', 'This famous Indonesian fried rice is bursting with umami goodness, and the addition of beef mince keeps the prep and cook time to a minimum.', '1200.00', 'res33.jpg'),
(12, 3, 'Chicken Nasi Goreng', 'This Chicken Nasi Goreng recipe, also known as Indonesian chicken fried rice, is made with tender chicken, fresh veggies and fried eggs.', '870.00', 'res34.jpg'),
(13, 4, 'Fried Rice', 'This easy fried rice recipe only takes 15 minutes to make, it''s easy to customize with your favorite add-ins, and it''s SO delicious!', '600.00', 'res41.jpg'),
(14, 4, 'Kothu', 'Kothu parotta is a popular South Indian street food where flaky shredded parottas are cooked in a spicy masala & salna or kurma.', '720.00', 'res42.jpg'),
(15, 4, 'Chinese Soups', 'The asian soup broth of this Chinese Noodle Soup is so good, you''d swear it''s from a Chinese restaraunt', '150.00', 'res43.jpg'),
(16, 4, 'Rice and curry', 'Rice and curry is a popular dish in Sri Lanka, as well as in other parts of the Indian subcontinent. Rice and curry. A rice and curry dish from Sri Lanka.', '300.00', 'res44.jpg');



-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int NOT NULL,
  `c_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `o_hr` varchar(255) NOT NULL,
  `c_hr` varchar(255) NOT NULL,
  `o_days` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Gama Gama Indian and Chinese Cuisine', 'gamagama@gmail.com', '077 668 0733', 'https://www.facebook.com/GamaGamaBiryani/', '8am', '10pm', 'mon-sun', 'No-554,Trinco Road, Batticaloa', 'res 1.jpg', '2024-05-27 08:10:35'),
(2, 2, 'Sri Kishna cafe', 'srikrishnacafe@gmail.com', '0652 228 900', 'https://www.facebook.com/SRI.KISHNA.CAFE/', '8am', '10pm', 'mon-sat', '61A Kannaki Amman Kovil Rd, Batticaloa 30000', 'res 2.jpg', '2024-05-27 08:10:35'),
(3, 3, 'Aahaa restaurant', 'aahaarestaurant@mail.com', '070 522 6740', 'https://www.facebook.com/p/Aahaa-Restaurant-61558532493267/', '8am', '10pm', 'mon-sat', 'Trincomalee Hwy, Batticaloa', 'res 3.jpeg', '2024-05-27 08:10:35'),
(4, 4, 'North Street Tavern', 'applerestaurent@mail.com', '0652 229 900', 'https://www.facebook.com/Viji.p.haran/', '8am', '10pm', 'mon-sat', '102 Bar Rd, Batticaloa', 'res 4.jpg', '2024-05-27 08:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'indian', '2024-05-27 08:07:35'),
(2, 'Sri Lanken', '2024-04-07 08:45:23'),
(3, ' Vegan options', '2024-04-07 08:45:25'),
(4, 'American', '2024-04-07 08:45:28');




-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int NOT NULL,
  `u_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);


--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;



--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;


