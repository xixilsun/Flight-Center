-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2019 at 03:09 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk`
--

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `id` int(11) NOT NULL,
  `id_destination` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iso` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`id`, `id_destination`, `name`, `iso`) VALUES
(1, 2, 'Halim Perdana Kusuma', 'HLP'),
(2, 2, 'Soekarno-Hatta', 'CGK'),
(3, 1, 'Husein Sastranegara', 'BDO'),
(4, 7, 'Achmad Yani', 'SRG'),
(5, 3, 'Juanda Airport', 'SUB'),
(6, 4, 'Adisumarmo Airport', 'SOC'),
(7, 6, 'Adisucipto', 'JOG'),
(8, 8, 'Sultan Iskandar Muda', 'BTJ'),
(9, 10, 'Radint Inten II Airport', 'TKG'),
(10, 5, 'Tunggul Wulung', 'CXP'),
(11, 9, 'Fatmawati-Soekarno Airport', 'BKS'),
(12, 11, 'Kualanamu', 'KNO');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `noid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `id_users`, `name`, `noid`) VALUES
(1, 2, 'xixil', '123'),
(2, 2, 'theo', '234'),
(3, 2, 'gary', '345'),
(4, 2, 'xixil', '123'),
(5, 2, 'xixil', '1234'),
(6, 2, 'gary', '101001221'),
(7, 2, 'xixil', '3456');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id` int(11) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `iso` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `destination`, `iso`) VALUES
(1, 'Bandung', 'BDG'),
(2, 'Jakarta', 'JKT'),
(3, 'Surabaya', 'SBY'),
(4, 'Solo', 'SOC'),
(5, 'Cilacap', 'CLP'),
(6, 'Yogyakarta', 'YYK'),
(7, 'Semarang', 'SMG'),
(8, 'Aceh', 'BNA'),
(9, 'Bengkulu', 'BGL'),
(10, 'Lampung', 'BDL'),
(11, 'Medan', 'KNO');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(10) NOT NULL,
  `reservation_code` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `reservation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `seat_code` varchar(10) NOT NULL,
  `rute_id` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `reservation_code`, `customer_id`, `reservation_date`, `seat_code`, `rute_id`, `status`) VALUES
(1, 'TOM25061', 1, '2019-06-25 02:43:39', '008', 14, 1),
(2, 'TOM25062', 2, '2019-06-25 02:43:41', '015', 14, 1),
(3, 'TOM25063', 3, '2019-06-25 02:55:07', '009', 14, 0),
(4, 'TOM25064', 4, '2019-06-25 03:01:02', '002', 15, 0),
(5, 'TOM27061', 7, '2019-06-27 03:12:19', '004', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rute`
--

CREATE TABLE `rute` (
  `id` int(11) NOT NULL,
  `depart_at` datetime NOT NULL,
  `rute_from` varchar(50) NOT NULL,
  `rute_to` varchar(50) NOT NULL,
  `arrival` datetime NOT NULL,
  `price` varchar(13) NOT NULL,
  `id_transportation` varchar(13) NOT NULL,
  `creat_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rute`
--

INSERT INTO `rute` (`id`, `depart_at`, `rute_from`, `rute_to`, `arrival`, `price`, `id_transportation`, `creat_date`) VALUES
(1, '2018-02-28 07:00:00', '1', '7', '2018-02-28 08:00:00', '750000', '1', '2018-02-24 21:45:53'),
(2, '2018-02-28 08:00:00', '2', '7', '2018-02-28 08:55:00', '900000', '3', '2018-02-25 08:47:41'),
(3, '2018-02-28 18:00:00', '10', '1', '2018-02-28 19:05:00', '450000', '2', '2018-02-24 21:50:56'),
(4, '2018-02-28 19:00:00', '1', '6', '2018-02-28 20:15:00', '600000', '1', '2018-02-24 21:53:40'),
(5, '2018-02-28 18:00:00', '2', '6', '2018-02-28 19:55:00', '500000', '2', '2018-02-24 21:56:04'),
(6, '2018-02-28 01:00:00', '2', '6', '2018-02-28 02:00:00', '300000', '4', '2018-02-26 23:50:49'),
(7, '2019-05-14 18:00:00', '3', '2', '2019-05-14 19:00:00', '200000', '1', '2019-05-14 13:32:19'),
(8, '2019-05-18 17:00:00', '12', '2', '2019-05-18 19:00:00', '600000', '1', '2019-05-16 15:46:45'),
(9, '2019-05-21 13:00:00', '3', '2', '2019-05-21 14:00:00', '600000', '1', '2019-05-20 10:58:06'),
(10, '2019-05-23 13:00:00', '12', '2', '2019-05-23 16:00:00', '500000', '2', '2019-05-23 13:08:00'),
(11, '2019-05-31 04:00:00', '3', '2', '2019-05-29 05:00:00', '100000', '1', '2019-05-29 00:52:32'),
(12, '2019-06-11 16:00:00', '3', '2', '2019-06-11 17:00:00', '500000', '2', '2019-06-01 14:36:20'),
(13, '2019-06-11 00:00:00', '3', '12', '2019-06-11 03:00:00', '600000', '1', '2019-06-05 23:00:06'),
(14, '2019-06-28 23:11:00', '3', '1', '2019-06-28 23:11:00', '1000000', '1', '2019-06-05 23:11:40'),
(15, '2019-06-28 05:00:00', '1', '3', '2019-06-28 06:00:00', '1000000', '2', '2019-06-24 23:34:28'),
(17, '2019-06-28 13:00:00', '3', '1', '2019-06-28 14:00:00', '400000', '2', '2019-06-25 11:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE `transportation` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(13) NOT NULL,
  `description` text NOT NULL,
  `seat_qty` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportation`
--

INSERT INTO `transportation` (`id`, `img`, `name`, `code`, `description`, `seat_qty`) VALUES
(1, 'gi.png', 'Garuda Indonesia', 'GIA', 'Ini adalah pesawat perfect', 90),
(2, 'la.png', 'Lion Air', 'LNI', 'pesawat singa', 90),
(3, 'Logo+Citilink.png', 'CITILINK', 'CTV', 'best plane 2k18', 90),
(4, 'batik-air.png', 'Batik Air', 'BTK', 'Pesawat berbatik', 90);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `jenkel` varchar(10) NOT NULL,
  `password` varchar(64) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `username`, `telepon`, `jenkel`, `password`, `level`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '081973168988', 'L', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'Xixillia', 'xixilliasun@gmail.com', 'xixil', '081973168988', 'P', '890eb9f7a93c6c5936a28793db9712eb', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reservation_code` (`reservation_code`);

--
-- Indexes for table `rute`
--
ALTER TABLE `rute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rute`
--
ALTER TABLE `rute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transportation`
--
ALTER TABLE `transportation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
