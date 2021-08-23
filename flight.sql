-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2021 at 07:49 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight`
--

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
CREATE TABLE `airport` (
  `Airport_ID` int(11) NOT NULL,
  `City` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`Airport_ID`, `City`) VALUES
(1, 'NewDelhi'),
(2, 'Mumbai'),
(3, 'Kolkata'),
(4, 'Chennai'),
(5, 'Cochin'),
(6, 'Bangalore'),
(7, 'Trivandrum');

-- --------------------------------------------------------

--
-- Table structure for table `flight_details`
--

DROP TABLE IF EXISTS `flight_details`;
CREATE TABLE `flight_details` (
  `Flight_ID` int(11) NOT NULL,
  `Orgin` varchar(250) NOT NULL,
  `Destination` varchar(250) NOT NULL,
  `Departure_time` time NOT NULL,
  `Arrival_time` time NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Seat_Availability` int(100) NOT NULL,
  `Leave_On` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_details`
--

INSERT INTO `flight_details` (`Flight_ID`, `Orgin`, `Destination`, `Departure_time`, `Arrival_time`, `Price`, `Seat_Availability`, `Leave_On`) VALUES
(1192, 'NewDelhi', 'Mumbai', '16:00:00', '18:05:00', '2100', 150, '2021-08-25'),
(1193, 'NewDelhi', 'Kolkata', '17:00:00', '19:00:00', '2200', 150, '2021-08-25'),
(1194, 'NewDelhi', 'Chennai', '18:00:00', '21:00:00', '2000', 150, '2021-08-25'),
(1195, 'NewDelhi', 'Bangalore', '13:00:00', '15:40:00', '2800', 150, '2021-08-25'),
(1196, 'Cochin', 'NewDelhi', '10:00:00', '12:05:00', '2200', 150, '2021-08-25'),
(1197, 'Cochin', 'Kolkata', '11:00:00', '13:35:00', '2900', 150, '2021-08-25'),
(1198, 'Cochin', 'Chennai', '12:00:00', '13:50:00', '1500', 150, '2021-08-25'),
(1199, 'Cochin', 'Bangalore', '13:15:00', '14:55:00', '1800', 150, '2021-08-25'),
(1200, 'Kolkata', 'Delhi', '04:30:00', '06:50:00', '2700', 150, '2021-08-29'),
(1201, 'Kolkata', 'Mumbai', '06:00:00', '08:40:00', '3100', 150, '2021-08-29'),
(1202, 'Kolkata', 'Chennai', '09:25:00', '11:40:00', '2700', 150, '2021-08-29'),
(1203, 'Kolkata', 'Bangalore', '11:45:00', '14:25:00', '3500', 150, '2021-08-29'),
(1204, 'Chennai', 'Delhi', '00:00:00', '02:50:00', '2000', 150, '2021-08-25'),
(1205, 'Chennai', 'Mumbai', '02:00:00', '03:50:00', '1400', 150, '2021-08-25'),
(1206, 'Chennai', 'Bangalore', '10:00:00', '11:00:00', '1200', 150, '2021-08-25'),
(1207, 'Chennai', 'Kolkata', '09:00:00', '10:55:00', '2100', 150, '2021-08-25'),
(1208, 'Bangalore', 'Mumbai', '03:00:00', '04:40:00', '1900', 150, '2021-08-26'),
(1209, 'Bangalore', 'Delhi', '02:30:00', '05:05:00', '2900', 150, '2021-08-26'),
(1210, 'Bangalore', 'Kolkata', '14:45:00', '17:15:00', '3100', 150, '2021-08-25'),
(1211, 'Bangalore', 'Chennai', '15:20:00', '16:20:00', '1300', 150, '2021-08-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight_details`
--
ALTER TABLE `flight_details`
  ADD PRIMARY KEY (`Flight_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
