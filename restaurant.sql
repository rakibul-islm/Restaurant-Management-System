-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2021 at 08:29 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE `cost` (
  `Date` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Cost` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cost`
--

INSERT INTO `cost` (`Date`, `Name`, `Description`, `Cost`) VALUES
('2021-06-18', 'MANAGER', 'Raw Metarials of Restaurant', 2000),
('2021-06-17', 'RAKIB', 'Rice (50kg x 2)', 3500),
('2021-05-17', 'RAKIB', 'Raw Materials of restaurant', 4000),
('2021-06-18', 'MANAGER', 'Sugar (10 kg), Ata (10 kg)', 1000),
('2021-06-18', 'MANAGER', 'Raw Metarials of Restaurant ', 2000),
('2021-06-18', 'MANAGER', 'Meat (10 kg), Vagetables', 5000),
('2021-06-18', 'MANAGER', 'Eggs (20 piece)', 140),
('2021-06-18', 'MANAGER', '7up (10 piece) ', 350),
('2021-06-19', 'MANAGER', 'Raw Metarials of Restaurant', 2000),
('2021-06-25', 'MANAGER', 'Suger', 500),
('2021-06-30', 'KABIR', 'potato(10 kg), suger 5 kg, cock\n10 kg, meat 5 kg', 3600),
('2021-07-01', 'MANAGER', 'Restaurant raw metareials', 2000),
('2021-07-02', 'MANAGER', 'Onion(10 kg*100 tk)', 350);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Staff_ID` int(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Designation` varchar(30) NOT NULL,
  `Placement` varchar(30) NOT NULL,
  `FoodServe` int(30) NOT NULL DEFAULT 0,
  `Salary` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Staff_ID`, `Name`, `Designation`, `Placement`, `FoodServe`, `Salary`) VALUES
(1001, 'KABIR', 'Waiter', 'Table - 1', 1516, '15500'),
(1002, 'ZAHID', 'Waiter', 'Table - 2', 700, '14500'),
(1003, 'SUMON', 'Waiter', 'Table - 3', 1960, '13000'),
(1004, 'SADDAM', 'Waiter', 'Table - 4', 540, '12000'),
(1005, 'OPU', 'Waiter', 'Table - 5', 650, '13000'),
(1006, 'SHAHADAT', 'Waiter', 'Table - 6', 550, '12000'),
(1007, 'JUYEL', 'Waiter', 'Table - 7', 3700, '13500'),
(1008, 'FOYSAL', 'Waiter', 'Table - 8', 450, '12000'),
(1009, 'AKKAS', 'Cleaner', 'No need', 0, '9000'),
(1010, 'AMAN', 'Chef', 'Kitchen', 0, '20000'),
(1017, 'MASUM', 'Chef', 'Kitchen', 0, '20000');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `MenuID` int(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Price` int(30) NOT NULL,
  `Type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`MenuID`, `Name`, `Price`, `Type`) VALUES
(1001, 'SANDWICH', 46, 'Snacks'),
(1002, 'CUTLET', 55, 'Snacks'),
(1003, 'BREAD BALL', 30, 'Snacks'),
(1004, 'SINGARA', 5, 'Snacks'),
(1005, 'CHAMUCHA', 5, 'Snacks'),
(1006, 'BARGER', 35, 'Snacks'),
(1007, 'PAROTA', 10, 'Snacks'),
(1008, 'VEGETABLES CURRY', 15, 'Snacks'),
(1009, 'MUMLET', 20, 'Snacks'),
(1010, 'NUN (SPECIAL)', 15, 'Snacks'),
(1011, 'CHAPATI', 30, 'Snacks'),
(1012, 'PAN CAKE', 25, 'Snacks'),
(1013, 'FRENCH FRIES', 106, 'Main'),
(1014, 'CHILLI CHEESE', 110, 'Main'),
(1015, 'RUSSIAN SALAD', 119, 'Main'),
(1016, 'MACCRONI HOTPOT', 218, 'Main'),
(1017, 'VEG. AUGRATIN', 200, 'Main'),
(1018, 'PASTA SPICY', 190, 'Snacks'),
(1019, 'TANDOORI PIZZA', 250, 'Snacks'),
(1020, 'LASANANA ROLL', 133, 'Snacks'),
(1021, 'PANEER SALSA WRAP', 133, 'Snacks'),
(1022, 'SOUPS', 109, 'Main'),
(1023, 'SAUCE', 15, 'Snacks'),
(1024, 'NOODLES', 66, 'Snacks'),
(1025, 'CHILLY GARLIC RICE', 166, 'Main'),
(1026, 'STEAM RICE', 30, 'Main'),
(1027, 'DAL MAKHANI', 65, 'Main'),
(1028, 'HYDERABADI BIRYANI', 222, 'Main'),
(1029, 'JEERA RAITA', 102, 'Main'),
(1030, 'HALWA (SEASONAL)', 68, 'Main'),
(1031, 'FRESH JUICES', 54, 'Drinks'),
(1032, 'ITALIAN SMOOCH', 150, 'Main'),
(1033, 'FRUIT SALAD SUNDAE', 99, 'Main'),
(1034, 'LIME ICE', 119, 'Snacks'),
(1035, 'PEPSI', 55, 'Drinks'),
(1036, 'MINERAL WATER', 55, 'Drinks'),
(1037, 'FRESH LIME WATER', 60, 'Drinks'),
(1038, 'COLD-COFFEE', 70, 'Drinks'),
(1039, 'COFFEE AMERICANO (BLACK)', 58, 'Drinks'),
(1040, 'TEA', 40, 'Drinks'),
(1041, '7 UP', 35, 'Drinks'),
(1042, 'COCA-COLA', 35, 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `Menu_ID` int(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Price` int(30) NOT NULL,
  `offer` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`Menu_ID`, `Name`, `Price`, `offer`) VALUES
(2001, 'GRILLED CHICKEN', 100, 60),
(2002, 'BEEF', 150, 70),
(2003, 'MUTTON', 170, 100),
(2004, 'DUCK', 190, 120),
(2005, 'CHICKEN', 100, 50),
(2006, 'HILSHA (FISH)', 250, 150),
(2007, 'PLAIN (RICE)', 30, 20),
(2008, 'PLAIN (POLAUE)', 50, 35),
(2009, 'VEGETABLE (POLAUE)', 70, 50),
(2010, 'MUGHAL (KACCHI)', 150, 100),
(2011, 'SPECIAL (KACCHI)', 120, 90),
(2012, 'PIZZA', 220, 150);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Date` varchar(30) NOT NULL,
  `Time` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `Price` int(30) NOT NULL,
  `Placement` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `UserID` int(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Restaurant` varchar(100) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `user` varchar(30) NOT NULL DEFAULT 'Customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`UserID`, `Name`, `Restaurant`, `Contact`, `Email`, `Password`, `user`) VALUES
(1001, 'MD RAKIBUL ISLAM', 'ABC RESTAURANT', '10000000', 'abc@gmail.com', '123', 'Manager'),
(1002, 'MD RAKIBUL ISLAM', 'AL MADINA CHINEES RESTAURANT', '01626016869', 'mdr048454@gmail.com', 'r123', 'Manager'),
(1023, 'abc', 'Dhaka, Bangladesh', '0165656455', 'a@gmail.com', '123', 'Customer'),
(1025, 'MD RAKIBUL ISLAM', 'ARSHINAGAR MAIN RAOD, DHAKA', '01626016869', 'mdr048454@gmail.com', '123', 'Customer'),
(1026, 'Emon Bhuiyan', 'Dhaka, Bangladesh', '01566565', 'm@gmail.com', '123', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `totalsales`
--

CREATE TABLE `totalsales` (
  `Date` varchar(30) NOT NULL,
  `Time` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Quantity` int(30) NOT NULL,
  `Price` int(30) NOT NULL,
  `Placement` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `totalsales`
--

INSERT INTO `totalsales` (`Date`, `Time`, `Name`, `Quantity`, `Price`, `Placement`) VALUES
('2021-05-19', '10:44 PM', 'PIZZA', 2, 400, 'Table - 1'),
('2021-05-19', '10:44 PM', 'RICE', 2, 20, 'Table - 1'),
('2021-05-19', '10:44 PM', '7 UP (2 LITRE)', 2, 200, 'Table - 1'),
('2020-05-18', '08:50 pm', 'rice', 20, 200, 'parcel'),
('2021-05-20', '01:30 AM', 'BANANA', 12, 60, 'Table - 1'),
('2021-05-20', '01:30 AM', '7 UP (2 LITRE)', 5, 500, 'Table - 1'),
('2021-05-20', '01:30 AM', 'PIZZA', 5, 1000, 'Table - 1'),
('2021-05-20', '10:38 AM', 'RICE', 10, 100, 'Table - 2'),
('2021-05-20', '10:38 AM', '7 UP (1 LITRE)', 2, 100, 'Table - 2'),
('2021-05-20', '10:40 AM', 'PIZZA', 2, 400, 'Parcel'),
('2021-05-20', '10:42 AM', 'PIZZA', 10, 2000, 'Parcel'),
('2021-05-20', '10:43 AM', '7 UP (1 LITRE)', 1, 50, 'Table - 1'),
('2021-05-20', '10:42 AM', 'PIZZA', 10, 2000, 'Parcel'),
('2021-05-20', '10:43 AM', '7 UP (1 LITRE)', 1, 50, 'Table - 1'),
('2021-05-20', '10:43 AM', 'RICE', 12, 120, 'Table - 1'),
('2021-05-20', '10:43 AM', 'RICE', 12, 120, 'Table - 1'),
('2021-05-22', '02:58 AM', 'BEEF', 2, 140, 'Table - 1'),
('2021-05-22', '03:47 AM', 'GRILLED CHICKEN', 2, 120, 'Table - 1'),
('2021-05-22', '04:50 AM', 'BANANA', 20, 100, 'Table - 3'),
('2021-05-22', '04:51 AM', 'GRILLED CHICKEN', 1, 60, 'Table - 1'),
('2021-05-22', '04:52 AM', '7 UP (1 LITRE)', 1, 50, 'Table - 1'),
('2021-05-22', '12:48 PM', 'PIZZA', 1, 200, 'Table - 1'),
('2021-05-22', '12:48 PM', 'GRILLED CHICKEN', 1, 60, 'Table - 1'),
('2021-05-22', '12:49 PM', 'BANANA', 2, 10, 'Table - 1'),
('2021-05-22', '07:19 PM', '7 UP (2 LITRE)', 1, 100, 'Table - 1'),
('2021-05-22', '07:26 PM', 'GRILLED CHICKEN', 4, 240, 'Parcel'),
('2021-05-22', '07:26 PM', '7 UP (1 LITRE)', 1, 50, 'Table - 1'),
('2021-05-22', '10:51 PM', '7 UP (2 LITRE)', 1, 100, 'Table - 1'),
('2021-05-23', '11:15 AM', 'SANDWICH', 2, 80, 'Table - 1'),
('2021-05-23', '11:17 AM', 'PAN CAKE', 4, 100, 'Parcel'),
('2021-05-23', '11:52 AM', 'BEEF', 2, 140, 'Table - 3'),
('2021-05-23', '11:52 AM', 'CHICKEN', 2, 100, 'Table - 3'),
('2021-05-23', '11:52 AM', 'FRENCH FRIES', 1, 106, 'Table - 1'),
('2021-05-23', '11:53 AM', 'PEPSI', 1, 55, 'Table - 1'),
('2021-05-23', '11:53 AM', 'BARGER', 1, 30, 'Table - 1'),
('2021-05-24', '12:25 PM', 'BEEF', 2, 140, 'Table - 1'),
('2021-05-24', '12:25 PM', 'PIZZA', 2, 300, 'Table - 1'),
('2021-05-24', '12:25 PM', 'FRENCH FRIES', 2, 212, 'Table - 1'),
('2021-05-24', '12:28 PM', 'SANDWICH', 1, 40, 'Table - 1'),
('2021-05-24', '12:28 PM', 'BARGER', 1, 30, 'Table - 2'),
('2021-05-24', '12:28 PM', 'FRESH JUICES', 1, 54, 'Table - 3'),
('2021-05-24', '12:29 PM', 'GRILLED CHICKEN', 2, 120, 'Table - 3'),
('2021-05-25', '05:40 PM', 'DUCK', 2, 240, 'Parcel'),
('2021-05-25', '05:41 PM', 'FRENCH FRIES', 2, 212, 'Parcel'),
('2021-05-25', '05:41 PM', 'COCA-COLA', 2, 70, 'Parcel'),
('2021-05-25', '05:41 PM', 'CUTLET', 2, 110, 'Parcel'),
('2021-05-25', '06:11 PM', 'BARGER', 2, 60, 'Table - 1'),
('2021-05-25', '06:14 PM', 'VEG. AUGRATIN', 5, 1025, 'Table - 1'),
('2021-05-25', '06:37 PM', 'VEGETABLE (POLAUE)', 2, 100, 'Table - 1'),
('2021-05-25', '06:38 PM', 'CHICKEN', 1, 50, 'Table - 1'),
('2021-05-25', '06:41 PM', 'PAROTA', 2, 20, 'Table - 1'),
('2021-05-25', '06:41 PM', 'NUN (SPECIAL)', 2, 30, 'Table - 1'),
('2021-05-25', '06:41 PM', 'TANDOORI PIZZA', 2, 500, 'Table - 1'),
('2021-05-25', '06:42 PM', 'HILSHA (FISH)', 2, 300, 'Table - 1'),
('2021-05-26', '12:40 AM', 'PLAIN (POLAUE)', 5, 175, 'Table - 4'),
('2021-05-26', '12:40 AM', 'DUCK', 5, 600, 'Table - 4'),
('2021-05-26', '12:40 AM', 'SPECIAL (KACCHI)', 5, 450, 'Table - 4'),
('2021-05-26', '12:40 AM', 'COLD-COFFEE', 5, 350, 'Table - 4'),
('2021-05-26', '12:40 AM', 'FRESH JUICES', 5, 270, 'Table - 4'),
('2021-05-26', '12:41 AM', 'SANDWICH', 5, 200, 'Table - 4'),
('2021-05-26', '12:47 AM', 'CHAMUCHA', 10, 50, 'Table - 6'),
('2021-05-26', '12:47 AM', 'SINGARA', 10, 50, 'Table - 6'),
('2021-05-26', '12:47 AM', 'COCA-COLA', 1, 35, 'Table - 6'),
('2021-05-27', '01:25 AM', 'PAROTA', 2, 20, 'Parcel'),
('2021-05-27', '01:25 AM', 'CUTLET', 2, 110, 'Parcel'),
('2021-05-27', '01:25 AM', 'COCA-COLA', 2, 70, 'Parcel'),
('2021-05-27', '01:25 AM', 'PEPSI', 2, 110, 'Parcel'),
('2021-05-27', '01:25 AM', 'SANDWICH', 2, 80, 'Parcel'),
('2021-05-27', '01:25 AM', 'BEEF', 2, 140, 'Parcel'),
('2021-05-27', '01:33 AM', 'SANDWICH', 1, 40, 'Table - 5'),
('2021-05-27', '01:40 AM', 'CUTLET', 2, 110, 'Parcel'),
('2021-05-27', '01:40 AM', 'PAROTA', 2, 20, 'Parcel'),
('2021-05-27', '01:40 AM', 'TEA', 2, 80, 'Parcel'),
('2021-05-27', '01:40 AM', 'CHAPATI', 2, 60, 'Parcel'),
('2021-05-27', '01:40 AM', 'PIZZA', 2, 300, 'Table - 2'),
('2021-05-27', '01:56 AM', 'SANDWICH', 2, 80, 'Table - 1'),
('2021-05-27', '02:01 AM', '7 UP', 1, 35, 'Table - 1'),
('2021-05-27', '02:01 AM', 'COCA-COLA', 1, 35, 'Table - 1'),
('2021-05-27', '02:06 AM', 'CUTLET', 2, 110, 'Table - 7'),
('2021-05-27', '02:08 AM', 'MUMLET', 10, 200, 'Table - 8'),
('2021-05-27', '02:08 AM', 'BARGER', 10, 300, 'Table - 8'),
('2021-05-27', '02:08 AM', 'PAROTA', 30, 300, 'Table - 8'),
('2021-05-27', '02:20 AM', 'SINGARA', 20, 100, 'Table - 4'),
('2021-05-27', '02:20 AM', 'CHAMUCHA', 20, 100, 'Table - 4'),
('2021-05-27', '02:20 AM', 'COCA-COLA', 1, 35, 'Table - 4'),
('2021-05-27', '10:16 AM', 'BEEF', 2, 140, 'Parcel'),
('2021-05-27', '10:16 AM', 'PIZZA', 2, 300, 'Parcel'),
('2021-05-27', '10:17 AM', 'COCA-COLA', 2, 70, 'Parcel'),
('2021-05-27', '12:34 PM', 'BEEF', 2, 140, 'Table - 1'),
('2021-05-27', '12:35 PM', 'DUCK', 2, 240, 'Table - 1'),
('2021-05-27', '12:35 PM', 'SOUPS', 2, 218, 'Table - 1'),
('2021-05-27', '12:49 PM', 'BEEF', 2, 140, 'Table - 1'),
('2021-05-27', '12:49 PM', 'PIZZA', 2, 300, 'Table - 1'),
('2021-05-27', '12:49 PM', 'SOUPS', 2, 218, 'Table - 1'),
('2021-05-27', '12:49 PM', 'TEA', 2, 80, 'Table - 1'),
('2021-05-27', '12:49 PM', 'CUTLET', 2, 110, 'Table - 1'),
('2021-05-27', '12:51 PM', 'SANDWICH', 2, 80, 'Table - 1'),
('2021-05-27', '12:51 PM', 'VEGETABLES CURRY', 2, 30, 'Table - 1'),
('2021-05-28', '01:01 AM', 'SOUPS', 2, 218, 'Table - 1'),
('2021-05-28', '01:01 AM', 'TEA', 2, 80, 'Table - 1'),
('2021-05-28', '01:02 AM', 'SANDWICH', 2, 80, 'Table - 1'),
('2021-05-28', '01:02 AM', 'PIZZA', 2, 300, 'Table - 1'),
('2021-05-28', '03:52 PM', 'BEEF', 2, 140, 'Parcel'),
('2021-05-28', '03:52 PM', 'DUCK', 2, 240, 'Parcel'),
('2021-05-28', '03:52 PM', 'SOUPS', 2, 218, 'Parcel'),
('2021-05-28', '03:52 PM', 'TEA', 2, 80, 'Table - 1'),
('2021-05-28', '03:53 PM', 'PAN CAKE', 2, 50, 'Parcel'),
('2021-05-28', '03:58 PM', 'PIZZA', 2, 300, 'Parcel'),
('2021-05-28', '03:58 PM', 'MINERAL WATER', 1, 55, 'Parcel'),
('2021-05-28', '05:00 PM', 'MUGHAL (KACCHI)', 10, 1000, 'Parcel'),
('2021-05-28', '07:29 PM', 'CHICKEN', 1, 50, 'Table - 2'),
('2021-05-28', '07:29 PM', 'PLAIN (RICE)', 1, 20, 'Table - 2'),
('2021-05-28', '07:29 PM', 'MINERAL WATER', 1, 55, 'Table - 2'),
('2021-05-28', '08:15 PM', 'PIZZA', 2, 300, 'Parcel'),
('2021-05-28', '08:16 PM', 'PEPSI', 1, 55, 'Parcel'),
('2021-05-28', '08:16 PM', 'CUTLET', 1, 55, 'Parcel'),
('2021-05-29', '08:25 PM', 'PAROTA', 1, 10, 'Table - 1'),
('2021-05-29', '08:25 PM', 'TEA', 1, 40, 'Table - 1'),
('2021-05-29', '08:25 PM', 'MUMLET', 1, 20, 'Table - 1'),
('2021-05-30', '10:13 PM', 'NUN (SPECIAL)', 1, 15, 'Table - 5'),
('2021-05-30', '10:14 PM', 'VEG. AUGRATIN', 1, 205, 'Table - 5'),
('2021-05-30', '10:14 PM', 'MINERAL WATER', 1, 55, 'Table - 5'),
('2021-05-30', '10:14 PM', 'GRILLED CHICKEN', 1, 60, 'Table - 5'),
('2021-05-31', '07:41 PM', 'DUCK', 1, 120, 'Table - 1'),
('2021-05-31', '07:42 PM', 'PLAIN (POLAUE)', 1, 35, 'Table - 1'),
('2021-06-01', '06:24 PM', 'SOUPS', 3, 327, 'Table - 2'),
('2021-06-01', '06:25 PM', 'HYDERABADI BIRYANI', 3, 666, 'Table - 2'),
('2021-06-01', '06:25 PM', 'COCA-COLA', 1, 35, 'Table - 2'),
('2021-06-01', '06:25 PM', 'SANDWICH', 3, 120, 'Table - 2'),
('2021-06-01', '06:26 PM', 'PIZZA', 1, 150, 'Table - 2'),
('2021-06-01', '06:39 PM', 'SANDWICH', 2, 80, 'Table - 1'),
('2021-06-01', '06:39 PM', 'BARGER', 2, 70, 'Table - 1'),
('2021-06-01', '06:39 PM', 'PAROTA', 2, 20, 'Table - 1'),
('2021-06-10', '09:05 PM', 'SOUPS', 1, 109, 'Table - 1'),
('2021-06-10', '09:05 PM', '7 UP', 1, 35, 'Table - 1'),
('2021-06-10', '09:05 PM', 'SANDWICH', 1, 40, 'Table - 1'),
('2021-06-10', '09:05 PM', 'BEEF', 1, 70, 'Table - 1'),
('2021-06-10', '09:08 PM', 'PEPSI', 1, 55, 'Parcel'),
('2021-06-10', '11:56 PM', 'SINGARA', 1, 5, 'Parcel'),
('2021-06-10', '11:56 PM', 'CHAMUCHA', 1, 5, 'Parcel'),
('2021-06-10', '11:56 PM', 'PEPSI', 1, 55, 'Parcel'),
('2021-06-10', '11:57 PM', 'SANDWICH', 1, 40, 'Parcel'),
('2021-06-10', '11:57 PM', 'PIZZA', 1, 150, 'Parcel'),
('2021-06-18', '04:23 PM', 'DUCK', 2, 240, 'Table - 1'),
('2021-06-18', '04:26 PM', 'PIZZA', 5, 750, 'Table - 1'),
('2021-06-18', '05:38 PM', 'DUCK', 5, 600, 'Table - 1'),
('2021-06-18', '08:27 PM', 'PAROTA', 3, 30, 'Table - 1'),
('2021-06-18', '08:27 PM', 'MUMLET', 1, 20, 'Table - 1'),
('2021-06-19', '12:28 AM', 'PIZZA', 60, 9000, 'Parcel'),
('2021-06-19', '12:50 AM', 'SINGARA', 140, 700, 'Table - 5'),
('2021-06-19', '12:50 AM', 'PAROTA', 140, 1400, 'Table - 5'),
('2021-06-19', '12:51 AM', 'BARGER', 140, 4900, 'Table - 5'),
('2021-06-19', '12:51 AM', 'VEGETABLES CURRY', 140, 2100, 'Table - 5'),
('2021-06-19', '12:51 AM', '7 UP', 140, 4900, 'Table - 5'),
('2021-06-19', '12:51 AM', 'PEPSI', 140, 7700, 'Table - 5'),
('2021-06-19', '12:51 AM', 'SAUCE', 140, 2100, 'Table - 5'),
('2021-06-19', '12:51 AM', 'SPECIAL (KACCHI)', 50, 4500, 'Table - 5'),
('2021-06-19', '12:51 AM', 'HILSHA (FISH)', 50, 7500, 'Table - 3'),
('2021-06-19', '01:32 AM', 'MUMLET', 1, 20, 'Table - 2'),
('2021-06-19', '03:28 AM', 'PAROTA', 1, 10, 'Table - 4'),
('2021-06-19', '09:45 PM', 'PIZZA', 50, 7500, 'Table - 6'),
('2021-06-19', '09:45 PM', '7 UP', 10, 350, 'Table - 7'),
('2021-06-19', '09:48 PM', 'DUCK', 5, 600, 'Parcel'),
('2021-06-19', '09:48 PM', 'PEPSI', 1, 55, 'Table - 1'),
('2021-06-20', '10:28 PM', 'SANDWICH', 2, 92, 'Table - 1'),
('2021-06-20', '10:28 PM', '7 UP', 2, 70, 'Table - 1'),
('2021-06-20', '10:28 PM', 'MINERAL WATER', 2, 110, 'Table - 1'),
('2021-06-23', '12:29 AM', 'CHILLI CHEESE', 1, 110, 'Table - 1'),
('2021-06-23', '12:40 AM', '7 UP', 1, 35, 'Table - 1'),
('2021-06-23', '12:55 AM', '7 UP', 1, 35, 'Parcel'),
('2021-06-23', '12:55 AM', 'SANDWICH', 1, 46, 'Parcel'),
('2021-06-23', '12:57 AM', 'CUTLET', 1, 55, 'Table - 1'),
('2021-06-23', '01:25 AM', 'PIZZA', 10, 1500, 'Parcel'),
('2021-06-23', '01:25 AM', '7 UP', 5, 175, 'Table - 1'),
('2021-06-23', '01:27 AM', 'MUMLET', 1, 20, 'Table - 1'),
('2021-06-25', '02:53 AM', 'CUTLET', 1, 55, 'Table - 1'),
('2021-06-25', '10:24 PM', 'SOUPS', 1, 109, 'Table - 5'),
('2021-06-25', '10:24 PM', '7 UP', 1, 35, 'Table - 5'),
('2021-06-25', '10:24 PM', 'SANDWICH', 1, 46, 'Table - 5'),
('2021-06-25', '10:24 PM', 'PIZZA', 1, 150, 'Table - 5'),
('2021-06-25', '10:27 PM', 'MUMLET', 1, 20, 'Table - 1'),
('2021-06-25', '10:27 PM', 'PAROTA', 1, 10, 'Table - 1'),
('2021-06-27', '12:45 AM', 'CHAMUCHA', 5, 25, 'Table - 1'),
('2021-06-27', '12:45 AM', 'SINGARA', 5, 25, 'Table - 1'),
('2021-06-30', '04:47 PM', 'CUTLET', 1, 55, 'Table - 1'),
('2021-06-30', '04:48 PM', 'MUMLET', 1, 20, 'Table - 1'),
('2021-06-30', '04:50 PM', '7 UP', 1, 35, 'Parcel'),
('2021-06-30', '04:50 PM', 'SANDWICH', 1, 46, 'Parcel'),
('2021-06-30', '04:51 PM', 'BARGER', 1, 35, 'Parcel'),
('2021-06-30', '04:58 PM', 'SAUCE', 5, 75, 'Parcel'),
('2021-07-01', '08:42 PM', 'PAROTA', 2, 20, 'Table - 3'),
('2021-07-01', '08:42 PM', 'MUMLET', 1, 20, 'Table - 3'),
('2021-07-01', '09:02 PM', 'MUMLET', 1, 20, 'Table - 1'),
('2021-07-01', '09:03 PM', 'PAROTA', 10, 100, 'Table - 1'),
('2021-07-01', '10:55 PM', 'PIZZA', 2, 300, 'Table - 5'),
('2021-07-01', '10:56 PM', '7 UP', 1, 35, 'Table - 5'),
('2021-07-01', '10:56 PM', 'SANDWICH', 1, 46, 'Table - 5'),
('2021-07-01', '10:57 PM', 'SINGARA', 10, 50, 'Parcel'),
('2021-07-01', '10:57 PM', 'CHAMUCHA', 10, 50, 'Parcel'),
('2021-07-01', '11:00 PM', 'BARGER', 10, 350, 'Table - 1'),
('2021-07-02', '01:13 PM', 'SINGARA', 10, 50, 'Parcel'),
('2021-07-02', '01:15 PM', 'BARGER', 10, 350, 'Table - 2'),
('2021-07-02', '01:19 PM', 'SANDWICH', 10, 460, 'Table - 3'),
('2021-07-02', '01:19 PM', 'FRESH JUICES', 10, 540, 'Table - 4'),
('2021-07-02', '01:20 PM', 'PEPSI', 10, 550, 'Table - 5'),
('2021-07-02', '01:20 PM', 'MINERAL WATER', 10, 550, 'Table - 6'),
('2021-07-02', '01:20 PM', 'COLD-COFFEE', 10, 700, 'Table - 7'),
('2021-07-02', '01:20 PM', 'COCA-COLA', 10, 350, 'Table - 8'),
('2021-07-02', '01:21 PM', 'BARGER', 10, 350, 'Table - 1'),
('2021-07-02', '02:19 PM', 'SANDWICH', 10, 460, 'Table - 2'),
('2021-07-02', '02:22 PM', 'PIZZA', 1, 150, 'Table - 2'),
('2021-07-02', '02:31 PM', '7 UP', 10, 350, 'Table - 2'),
('2021-07-02', '02:31 PM', 'PIZZA', 10, 1500, 'Table - 3'),
('2021-07-02', '02:34 PM', 'PAROTA', 10, 100, 'Table - 5'),
('2021-07-02', '02:36 PM', 'PIZZA', 20, 3000, 'Table - 7'),
('2021-07-02', '03:58 PM', 'PAROTA', 10, 100, 'Parcel'),
('2021-07-02', '04:30 PM', '7 UP', 10, 350, 'Table - 1'),
('2021-07-02', '05:05 PM', 'SINGARA', 10, 50, 'Table - 1'),
('2021-07-02', '05:05 PM', 'CHAMUCHA', 10, 50, 'Table - 1'),
('2021-07-02', '05:06 PM', 'SINGARA', 10, 50, 'Table - 8'),
('2021-07-02', '05:06 PM', 'CHAMUCHA', 10, 50, 'Table - 8'),
('2021-07-02', '11:24 PM', 'SANDWICH', 1, 46, 'Table - 1'),
('2021-07-04', '02:52 PM', 'BARGER', 2, 70, 'Parcel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`MenuID`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`Menu_ID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Staff_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1018;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `MenuID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1044;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `Menu_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2013;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `UserID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1027;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
