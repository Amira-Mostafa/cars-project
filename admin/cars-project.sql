-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:4306
-- Generation Time: Oct 07, 2023 at 12:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `title` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `model` smallint(6) NOT NULL,
  `auto` tinyint(1) NOT NULL,
  `properties` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `regdate`, `title`, `image`, `content`, `model`, `auto`, `properties`, `price`, `published`) VALUES
(4, '2023-10-02 20:12:26', 'rolce royce', '', 'rolce royce', 0, 0, 'rolce royce', 5500000, 0),
(5, '2023-10-02 20:13:54', 'rolce ', '', 'rolce ', 0, 0, 'rolce ', 5500000, 0),
(6, '2023-10-02 20:15:45', 'mazda', '1', 'mazda', 0, 0, 'mazda ', 5500000, 0),
(7, '2023-10-02 20:16:17', 'hundi', '1', 'hundi', 0, 0, 'hundi', 110000000, 0),
(8, '2023-10-02 20:18:39', 'ford', '1', 'ford', 66, 1, 'adfasdfsfsdfsfa', 100000000, 0),
(9, '2023-10-02 20:21:47', 'ferary', '1', 'ferary', 66, 0, 'adfasdfsfsdfsfa', 100000000, 0),
(10, '2023-10-02 20:25:48', 'ddd', '1', 'ddd', 12, 0, 'sklskdf', 100000000, 0),
(11, '2023-10-03 16:16:37', 'dd', '1', 'dsdsd', 12, 0, 'sdsd', 5500000, 0),
(12, '2023-10-03 16:18:00', 'sdd', '1', 'sdsd', 0, 0, 'honda', 5500000, 0),
(13, '2023-10-06 22:01:42', 'golf', 'e28a5826a86baa22a7869541b8773070.jpeg', 'hihihihi', 5, 0, 'asdasdasdasd', 15555, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` tinyint(1) NOT NULL COMMENT '0 female, 1 male',
  `active` tinyint(1) NOT NULL COMMENT '0 inactive, 1 active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `regdate`, `email`, `fullname`, `password`, `gender`, `active`) VALUES
(17, '2023-10-02 18:46:33', 'five@five', '5', '$2y$10$gG.cd3I/kxSHRZWToOlfeeRHsUFieLzn5V4VkOxO74dgPC5eMbYFq', 0, 1),
(18, '2023-10-03 15:46:24', 'seven@seven', '7', '$2y$10$Vf56JvZpNcSreVskkp1vvOrJD87zT3NWWw.bwQpVQqcuvwUa9aY1e', 1, 1),
(19, '2023-10-03 15:54:52', '3@3', '3', '$2y$10$eCJyeGfuSS0ban6GDNYo.ugudU5CeHLoUvqxuzHZLy0eltf9HZbwq', 0, 1),
(20, '2023-10-03 16:26:47', 'koko@ko', 'ko', '$2y$10$ZGnPPNLtMkosWNlYz2/YWO3JU.iqT3kA6KHak1VRS4o2bXOfWzn46', 1, 0),
(21, '2023-10-06 19:15:27', '6@6', 'amira', '$2y$10$emNNqiGepPcoP/fr93IkmeweujfFT.T2p.MiVTSh6r58yYm.zGTaq', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title_2` (`title`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
