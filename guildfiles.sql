-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 06:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guildfiles`
--

-- --------------------------------------------------------

--
-- Table structure for table `council`
--

CREATE TABLE `council` (
  `id` int(10) NOT NULL,
  `username` varchar(264) NOT NULL,
  `password` varchar(264) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `council`
--

INSERT INTO `council` (`id`, `username`, `password`) VALUES
(1, 'admin1', 'pass1');

-- --------------------------------------------------------

--
-- Table structure for table `deathlogs`
--

CREATE TABLE `deathlogs` (
  `dLogid` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `Head` varchar(264) NOT NULL,
  `Chest` varchar(264) NOT NULL,
  `mainWeapon` varchar(264) NOT NULL,
  `offHand` varchar(264) NOT NULL,
  `Boots` varchar(264) NOT NULL,
  `Status` varchar(264) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deathlogs`
--

INSERT INTO `deathlogs` (`dLogid`, `user_id`, `Head`, `Chest`, `mainWeapon`, `offHand`, `Boots`, `Status`) VALUES
(1, 3, 'asd', 'asd', 'asd', 'asd', 'asdasd', ''),
(2, 2, 'asdasd', 'asdasdas', 'dassdasd', 'hadfhadfhadfh', 'adfhadf', ''),
(3, 1, 'adhgasdhasdfh', 'adfhadfhadhf', 'adfhadfh', 'adfhadfh', 'adfhadfhahfdadfh', ''),
(4, 1, 'x', 'x', 'x', 'x', 'x', 'x');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(10) NOT NULL,
  `username` varchar(264) NOT NULL,
  `password` varchar(264) NOT NULL,
  `ign` varchar(264) NOT NULL,
  `role` varchar(264) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `username`, `password`, `ign`, `role`) VALUES
(1, 'asd', 'asd', 'asd', 'asd'),
(2, '', '', '', ''),
(3, '', '', '', ''),
(4, 'asdasdasdaaad', 'asdasdasdasdaaasd', 'asdasdasdaasdaaaa', 'asdsdasdsdasd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `council`
--
ALTER TABLE `council`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deathlogs`
--
ALTER TABLE `deathlogs`
  ADD PRIMARY KEY (`dLogid`),
  ADD KEY `foreign key` (`user_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `council`
--
ALTER TABLE `council`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deathlogs`
--
ALTER TABLE `deathlogs`
  MODIFY `dLogid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deathlogs`
--
ALTER TABLE `deathlogs`
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`user_id`) REFERENCES `member` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
