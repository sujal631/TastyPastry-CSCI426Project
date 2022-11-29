-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 11:36 PM
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
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `ID` int(11) NOT NULL,
  `Item_Name` text NOT NULL,
  `Number_of_Likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`ID`, `Item_Name`, `Number_of_Likes`) VALUES
(1, 'Raspberry Sugar Doughnut Holes', 5),
(2, 'Red Velvet Macarons', 10),
(3, 'Red Velvet Cupcake', 2),
(4, 'Red Velvet Cake', 14),
(5, 'Raspberry Rose Chocolate Cupcake', 4),
(6, 'Puff Pastry Doughnut', 8),
(7, 'Cinnamon Puff Pastry Hearts', 13),
(8, 'Brioche Doughnut', 3),
(9, 'Lemon Berry Cream Tart', 9),
(10, 'Paris Brest', 7);

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
(10, 'Hafsah Khan', 'Inside', 2, '2022-11-30', '19:35:00', 'Table in the corner'),
(13, 'Sheb', 'Inside', 4, '2022-11-14', '16:18:00', 'dawd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
