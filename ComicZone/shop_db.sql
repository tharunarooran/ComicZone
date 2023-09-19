-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2022 at 04:53 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(21, 7, 'Chainsaw Man', 35, 1, '3.jpg'),
(23, 10, 'One Punch Man', 30, 1, '11.jpg'),
(24, 10, 'Berserk', 40, 1, '13.jpg'),
(25, 10, 'Spy x Family', 35, 1, '14.jpg'),
(28, 7, 'One Punch Man', 30, 1, '11.jpg'),
(30, 7, 'Berserk', 40, 1, '13.jpg'),
(31, 14, 'Chainsaw Man', 35, 1, '3.jpg'),
(32, 14, 'Solo Leveling', 45, 2, '4.jpg'),
(33, 14, 'Naruto', 30, 1, '5.jpg'),
(34, 14, 'One Piece', 30, 1, '7.jpg'),
(35, 14, 'Bleach', 30, 1, '8.jpg'),
(36, 14, 'One Punch Man', 30, 1, '11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 14, 'tharun', 'tharun02@gmail.com', '123456', 'Hii');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(4, '7', 'Chris', '12345', 'chris02@gmail.com', 'cash on delivery', 'No. 62, Moore Street, Colombia, Colombia - 212121212', ', The Flash : Flash War (1) , One Punch Man (1) ', 70, '07-Jun-2022', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(16, 'Chainsaw Man', 35, '3.jpg'),
(17, 'Solo Leveling', 45, '4.jpg'),
(18, 'Naruto', 30, '5.jpg'),
(19, 'Attack on Titan Omnibus', 80, '6.jpg'),
(20, 'One Piece', 30, '7.jpg'),
(21, 'Bleach', 30, '8.jpg'),
(22, 'Dragon Ball Super', 30, '9.jpg'),
(23, 'One Punch Man', 30, '11.jpg'),
(24, 'Sakamoto Days', 30, '12.jpg'),
(25, 'Berserk', 40, '13.jpg'),
(26, 'Spy x Family', 40, '14.jpg'),
(27, 'Haikyuu', 35, '15.jpg'),
(28, 'Death Note', 30, '16.jpg'),
(29, 'Horimiya', 35, '17.jpg'),
(30, 'Demon Slayer', 35, '18.jpg'),
(31, 'Psycho Pass', 40, '19.jpg'),
(32, 'Blue Spring Ride', 35, '10.jpg'),
(33, 'Vinland Saga', 60, '20.jpg'),
(34, 'Jujustu Kaisen', 35, '2.jpg'),
(36, 'Hells Paradise', 40, '1.jpg'),
(37, 'Marvel Super Heroes : Secret Wars', 45, '400.jpg'),
(38, 'The Avengers : Earths Mightiest Super Heroes', 40, '100.jpg'),
(39, 'Giant Size X-Men : Deadly Genesis', 40, '200.jpg'),
(40, 'Captain America ', 30, '500.jpg'),
(41, 'Superman ', 35, '700.jpg'),
(42, 'Batman : The Killing Joke', 65, '900.jpg'),
(43, 'Wonder Woman Returns ', 35, '1000.jpg'),
(44, 'Batman Detective Requiem', 40, '600.jpg'),
(45, 'The Flash : Flash War', 40, '800.jpg'),
(46, 'Amazing Fantasy', 70, '300.jpg'),
(47, 'Batman The Movie Funko Pop', 55, 'funko1.jpg'),
(48, 'Naruto Sage Mode Funko Pop', 55, 'funko2.jpg'),
(49, 'Spider Man Stark Suit Funko Suit', 55, 'funko3.jpg'),
(50, 'Iron Man Endgame Snap Funko Pop', 55, 'funko4.jpg'),
(51, 'Demon Slayer Tanjiro Kamado Wall Poster', 15, 'poster1.jpg'),
(52, 'One Piece Monkey D. Luffy Wall Poster', 15, 'poster2.jpg'),
(53, 'Batman The Movie Wall Poster', 15, 'poster5.jpg'),
(54, 'Captain America Wall Poster ', 15, 'poster6.jpg'),
(55, 'Tokyo Ghoul Kaneki VS Jason Statue', 250, 'statue.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Nathan', 'uncharted@gmail.com', 'a81b667cafe0ddf66140a185b42918f0', 'user'),
(4, 'admin', 'admin101@gmail.com', '0192023a7bbd73250516f069df18b500', 'admin'),
(6, 'admin01', 'admin01@gmail.com', '18c6d818ae35a3e8279b5330eda01498', 'admin'),
(7, 'Chris', 'chris02@gmail.com', '35c295552034859e8aec16d7b511db8e', 'user'),
(10, 'GYRO', 'gyro@gmail.com', 'f2d20fff09cf5af58f6755d618e81176', 'user'),
(14, 'tharun', 'tharun02@gmail.com', '50cc544eb3e8f03c67bc8eaed75f8e41', 'user'),
(15, 'tharun', 'tharun02@gmail.com', '50cc544eb3e8f03c67bc8eaed75f8e41', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
