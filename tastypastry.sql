-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 12:55 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tastypastry`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_number` int(11) NOT NULL,
  `item_name` varchar(60) NOT NULL,
  `price` varchar(20) NOT NULL,
  `likes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_number`, `item_name`, `price`, `likes`) VALUES
(1, 'Rapsberry Sugar Doughnut Holes', '$8.99', 26),
(2, 'Red Velvet Macarons', '$6.99', 87),
(3, 'Red Velvet Cupcake', '$4.99', 42),
(4, 'Red Velvet Cake', '$8.99', 102),
(5, 'Raspberry Rose Chocolate Cupcake', '$7.99', 95),
(6, 'Puff Pastry Doughnut', '$3.99', 34),
(7, 'Cinnamon Puff Pastry Hearts', '$3.99', 63),
(8, 'Brioche Doughnut', '$6.99', 51),
(9, 'Lemon Berry Cream Tart', '$9.99', 124),
(10, 'Paris Brest', '$5.99', 29);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `reserver` varchar(50) NOT NULL,
  `Seating` enum('Inside','Outside') NOT NULL,
  `quantity` int(8) NOT NULL,
  `reservation` date NOT NULL,
  `reservationtime` time NOT NULL,
  `comments` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `reserver`, `Seating`, `quantity`, `reservation`, `reservationtime`, `comments`) VALUES
(10, 'Hafsah Khan', 'Inside', 2, '2022-11-30', '19:35:00', 'Table in the corner');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_number`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
