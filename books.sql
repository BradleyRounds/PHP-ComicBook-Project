-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 25, 2017 at 08:45 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `comicbooks`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `publisher` varchar(32) NOT NULL,
  `title` varchar(64) NOT NULL,
  `issue_no` int(8) NOT NULL,
  `annual` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  `condition_list` varchar(16) NOT NULL,
  `listprice` float(4,2) NOT NULL,
  `demand` int(8) NOT NULL,
  `storyline` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=429 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`ID`, `publisher`, `title`, `issue_no`, `annual`, `date`, `condition_list`, `listprice`, `demand`, `storyline`) VALUES
(1, 'Marvel', 'ROM', 1, 1, '1982-01-01', 'Very Fine', 1.00, 2, ''),
(2, 'Marvel', 'ROM', 2, 1, '1983-01-01', 'Very Fine', 1.00, 2, ''),
(3, 'Marvel', 'ROM', 3, 1, '1984-01-01', 'Very Fine', 1.00, 2, ''),
(4, 'Marvel', 'ROM', 4, 1, '1985-01-01', 'Very Fine', 1.25, 2, ''),
(5, 'Marvel', 'ROM', 1, 0, '1979-12-01', 'Very Fine', 0.40, 2, ''),
(6, 'Marvel', 'ROM', 2, 0, '1980-01-01', 'Very Fine', 0.40, 2, ''),
(7, 'Marvel', 'ROM', 3, 0, '1980-02-01', 'Very Fine', 0.40, 2, ''),
(8, 'Marvel', 'ROM', 4, 0, '1980-03-01', 'Very Fine', 0.40, 2, ''),
(9, 'Marvel', 'ROM', 5, 0, '1980-04-01', 'Very Fine', 0.40, 2, ''),
(10, 'Marvel', 'ROM', 6, 0, '1980-05-01', 'Very Fine', 0.40, 2, ''),
(11, 'Marvel', 'ROM', 7, 0, '1980-06-01', 'Very Fine', 0.40, 2, ''),
(12, 'Marvel', 'ROM', 8, 0, '1980-07-01', 'Very Fine', 0.40, 2, ''),
(13, 'Marvel', 'ROM', 9, 0, '1980-08-01', 'Very Fine', 0.40, 2, ''),
(14, 'Marvel', 'ROM', 10, 0, '1980-09-10', 'Very Fine', 0.50, 2, ''),
(15, 'Marvel', 'ROM', 11, 0, '1980-10-01', 'Near Mint', 0.50, 2, ''),
(16, 'Marvel', 'ROM', 11, 0, '1980-10-01', 'Very Fine', 0.50, 2, ''),
(17, 'Marvel', 'ROM', 12, 0, '1980-11-01', 'Very Fine', 0.50, 2, ''),
(18, 'Marvel', 'ROM', 13, 0, '1980-12-01', 'Very Fine', 0.50, 2, ''),
(19, 'Marvel', 'ROM', 14, 0, '1981-01-01', 'Very Fine', 0.50, 2, ''),
(20, 'Marvel', 'ROM', 15, 0, '1981-02-01', 'Very Fine', 0.50, 2, ''),
(21, 'Marvel', 'ROM', 16, 0, '1981-03-01', 'Very Fine', 0.50, 2, ''),
(22, 'Marvel', 'ROM', 17, 0, '1981-04-01', 'Very Fine', 0.50, 2, ''),
(23, 'Marvel', 'ROM', 18, 0, '1981-05-01', 'Very Fine', 0.50, 2, ''),
(24, 'Marvel', 'ROM', 19, 0, '1981-06-01', 'Very Fine', 0.50, 2, ''),
(25, 'Marvel', 'ROM', 20, 0, '1981-07-01', 'Fine', 0.50, 2, ''),
(26, 'Marvel', 'ROM', 21, 0, '1981-08-01', 'Very Fine', 0.50, 2, ''),
(27, 'Marvel', 'ROM', 22, 0, '1981-09-01', 'Very Fine', 0.50, 2, ''),
(28, 'Marvel', 'ROM', 23, 0, '1981-10-01', 'Very Fine', 0.50, 2, ''),
(29, 'Marvel', 'ROM', 24, 0, '1981-11-01', 'Very Fine', 0.50, 2, ''),
(30, 'Marvel', 'ROM', 25, 0, '1981-12-01', 'Very Fine', 0.75, 2, ''),
(31, 'Marvel', 'ROM', 26, 0, '1982-01-01', 'Very Fine', 0.60, 2, ''),
(32, 'Marvel', 'ROM', 27, 0, '1982-02-01', 'Very Fine', 0.60, 2, ''),
(33, 'Marvel', 'ROM', 28, 0, '1982-03-01', 'Very Fine', 0.60, 2, ''),
(34, 'Marvel', 'ROM', 29, 0, '1982-04-01', 'Very Fine', 0.60, 2, ''),
(35, 'Marvel', 'ROM', 30, 0, '1982-05-01', 'Very Fine', 0.60, 2, ''),
(36, 'Marvel', 'ROM', 31, 0, '1982-06-01', 'Very Fine', 0.60, 2, ''),
(37, 'Marvel', 'ROM', 32, 0, '1982-07-01', 'Very Fine', 0.60, 2, ''),
(38, 'Marvel', 'ROM', 33, 0, '1982-08-01', 'Very Fine', 0.60, 2, ''),
(39, 'Marvel', 'ROM', 34, 0, '1982-09-01', 'Very Fine', 0.60, 2, ''),
(40, 'Marvel', 'ROM', 35, 0, '1982-10-01', 'Very Fine', 0.60, 2, ''),
(41, 'Marvel', 'ROM', 35, 0, '1982-10-01', 'Very Fine', 0.60, 2, ''),
(42, 'Marvel', 'ROM', 36, 0, '1982-11-01', 'Very Fine', 0.60, 2, ''),
(43, 'Marvel', 'ROM', 36, 0, '1982-11-01', 'Very Fine', 0.60, 2, ''),
(44, 'Marvel', 'ROM', 37, 0, '1982-12-01', 'Very Fine', 0.60, 2, ''),
(45, 'Marvel', 'ROM', 38, 0, '1983-01-01', 'Very Fine', 0.60, 2, ''),
(46, 'Marvel', 'ROM', 39, 0, '1983-02-01', 'Very Fine', 0.60, 2, ''),
(47, 'Marvel', 'ROM', 40, 0, '1983-03-01', 'Very Fine', 0.60, 2, ''),
(48, 'Marvel', 'ROM', 41, 0, '1983-04-01', 'Very Fine', 0.60, 2, ''),
(49, 'Marvel', 'ROM', 42, 0, '1983-05-01', 'Very Fine', 0.60, 2, ''),
(50, 'Marvel', 'ROM', 43, 0, '1983-06-01', 'Very Fine', 0.60, 2, ''),
(51, 'Marvel', 'ROM', 44, 0, '1983-07-01', 'Very Fine', 0.60, 2, ''),
(52, 'Marvel', 'ROM', 45, 0, '1983-08-01', 'Very Fine', 0.60, 2, ''),
(53, 'Marvel', 'ROM', 46, 0, '1983-09-01', 'Very Fine', 0.60, 2, ''),
(54, 'Marvel', 'ROM', 47, 0, '1983-10-01', 'Very Fine', 0.60, 2, ''),
(55, 'Marvel', 'ROM', 48, 0, '1983-11-01', 'Very Fine', 0.60, 2, ''),
(56, 'Marvel', 'ROM', 49, 0, '1983-12-01', 'Very Fine', 0.60, 2, ''),
(57, 'Marvel', 'ROM', 50, 0, '1984-01-01', 'Very Fine', 1.00, 2, ''),
(58, 'Marvel', 'ROM', 51, 0, '1984-02-01', 'Very Fine', 0.60, 2, ''),
(59, 'Marvel', 'ROM', 52, 0, '1984-03-01', 'Very Fine', 0.60, 2, ''),
(60, 'Marvel', 'ROM', 53, 0, '1984-04-01', 'Very Fine', 0.60, 2, ''),
(61, 'Marvel', 'ROM', 54, 0, '1984-05-01', 'Very Fine', 0.60, 2, ''),
(62, 'Marvel', 'ROM', 55, 0, '1984-06-01', 'Very Fine', 0.60, 2, ''),
(63, 'Marvel', 'ROM', 56, 0, '1984-07-01', 'Very Fine', 0.60, 2, ''),
(64, 'Marvel', 'ROM', 57, 0, '1984-08-01', 'Very Fine', 0.60, 2, ''),
(65, 'Marvel', 'ROM', 58, 0, '1984-09-01', 'Very Fine', 0.60, 2, ''),
(66, 'Marvel', 'ROM', 59, 0, '1984-10-01', 'Very Fine', 0.60, 2, ''),
(67, 'Marvel', 'ROM', 59, 0, '1984-10-01', 'Very Fine', 0.60, 2, ''),
(68, 'Marvel', 'ROM', 60, 0, '1984-11-01', 'Very Fine', 0.60, 2, ''),
(69, 'Marvel', 'ROM', 61, 0, '1984-12-01', 'Very Fine', 0.60, 2, ''),
(70, 'Marvel', 'ROM', 62, 0, '1985-01-01', 'Very Fine', 0.60, 2, ''),
(71, 'Marvel', 'ROM', 63, 0, '1985-02-01', 'Very Fine', 0.60, 2, ''),
(72, 'Marvel', 'ROM', 64, 0, '1985-03-01', 'Very Fine', 0.60, 2, ''),
(73, 'Marvel', 'ROM', 65, 0, '1985-04-01', 'Very Fine', 0.65, 2, ''),
(74, 'Marvel', 'ROM', 66, 0, '1985-05-01', 'Very Fine', 0.65, 2, ''),
(75, 'Marvel', 'ROM', 67, 0, '1985-06-01', 'Very Fine', 0.65, 2, ''),
(76, 'Marvel', 'ROM', 68, 0, '1985-07-01', 'Very Fine', 0.65, 2, ''),
(77, 'Marvel', 'ROM', 69, 0, '1985-08-01', 'Very Fine', 0.65, 2, ''),
(78, 'Marvel', 'ROM', 70, 0, '1985-09-01', 'Very Fine', 0.65, 2, ''),
(79, 'Marvel', 'ROM', 71, 0, '1985-10-01', 'Very Fine', 0.65, 2, ''),
(80, 'Marvel', 'ROM', 72, 0, '1985-11-01', 'Very Fine', 0.65, 2, ''),
(81, 'Marvel', 'ROM', 73, 0, '1985-12-01', 'Very Fine', 0.65, 2, ''),
(82, 'Marvel', 'ROM', 74, 0, '1986-01-01', 'Very Fine', 0.65, 2, ''),
(83, 'Marvel', 'ROM', 75, 0, '1986-02-01', 'Very Fine', 0.75, 2, ''),
(84, 'Marvel', 'Marvel Spectacular', 9, 0, '1974-09-01', 'Very Fine', 0.25, 2, ''),
(85, 'Marvel', 'Thor', 256, 0, '1977-02-01', 'Good', 0.30, 2, ''),
(86, 'Marvel', 'Thor', 300, 0, '1980-10-01', 'Very Good', 0.75, 2, ''),
(87, 'Marvel', 'Thor', 303, 0, '1981-01-01', 'Very Fine', 0.50, 2, ''),
(88, 'Marvel', 'Thor', 306, 0, '1981-04-01', 'Very Fine', 0.50, 2, ''),
(89, 'Marvel', 'Thor', 308, 0, '1981-06-01', 'Very Fine', 0.50, 2, ''),
(90, 'Marvel', 'Thor', 318, 0, '1982-04-01', 'Very Fine', 0.60, 2, ''),
(91, 'Marvel', 'Thor', 319, 0, '1982-05-01', 'Very Fine', 0.60, 2, ''),
(92, 'Marvel', 'Thor', 320, 0, '1982-06-01', 'Very Fine', 0.60, 2, ''),
(93, 'Marvel', 'Thor', 321, 0, '1982-07-01', 'Very Fine', 0.60, 2, ''),
(94, 'Marvel', 'Thor', 322, 0, '1982-08-01', 'Very Fine', 0.60, 2, ''),
(95, 'Marvel', 'Thor', 323, 0, '1982-09-01', 'Very Fine', 0.60, 2, ''),
(96, 'Marvel', 'Thor', 324, 0, '1982-10-01', 'Very Fine', 0.60, 2, ''),
(97, 'Marvel', 'Thor', 325, 0, '1982-11-01', 'Very Fine', 0.60, 2, ''),
(98, 'Marvel', 'Spider Man, Peter Parker The Spectacular ', 50, 0, '1981-01-01', 'Very Fine', 0.50, 2, ''),
(99, 'Marvel', 'Spider Man, Peter Parker The Spectacular ', 51, 0, '1981-02-01', 'Very Fine', 0.50, 2, ''),
(100, 'Marvel', 'Spider Man, Peter Parker The Spectacular ', 52, 0, '1981-03-01', 'Very Fine', 0.50, 2, ''),
(101, 'Marvel', 'Spider Man, Peter Parker The Spectacular ', 55, 0, '1981-06-01', 'Very Fine', 0.50, 2, ''),
(102, 'Marvel', 'Spider Man, Peter Parker The Spectacular ', 61, 0, '1981-12-01', 'Fine', 0.60, 2, ''),
(103, 'Marvel', 'Spider Man, Peter Parker The Spectacular ', 66, 0, '1982-05-01', 'Very Fine', 0.60, 2, ''),
(104, 'Marvel', 'Spider Man, Peter Parker The Spectacular ', 68, 0, '1982-07-01', 'Very Fine', 0.60, 2, ''),
(105, 'Marvel', 'Spider Man, Peter Parker The Spectacular ', 69, 0, '1982-08-01', 'Very Fine', 0.60, 2, ''),
(106, 'Marvel', 'Spider Man, Peter Parker The Spectacular ', 70, 0, '1982-09-01', 'Very Fine', 0.60, 2, ''),
(107, 'Marvel', 'Spider Man, Peter Parker The Spectacular ', 71, 0, '1982-10-01', 'Very Fine', 0.60, 2, ''),
(108, 'Marvel', 'Spider Man, the Amazing', 15, 1, '1981-01-01', 'Very Fine', 0.75, 2, ''),
(109, 'Marvel', 'Marvel Tales', 112, 0, '1980-12-01', 'Very Fine', 0.50, 2, ''),
(110, 'Marvel', 'Spider Man, the Amazing', 214, 0, '1981-03-01', 'Very Fine', 0.50, 2, ''),
(111, 'Marvel', 'Spider Man, the Amazing', 215, 0, '1981-04-01', 'Very Fine', 0.50, 2, ''),
(112, 'Marvel', 'Spider Man, the Amazing', 216, 0, '1981-05-01', 'Very Fine', 0.50, 2, ''),
(113, 'Marvel', 'Spider Man, the Amazing', 217, 0, '1981-06-01', 'Very Fine', 0.50, 2, ''),
(114, 'Marvel', 'Spider Man, the Amazing', 218, 0, '1981-07-01', 'Very Fine', 0.50, 2, ''),
(115, 'Marvel', 'Spider Man, the Amazing', 219, 0, '1981-08-01', 'Very Fine', 0.50, 2, ''),
(116, 'Marvel', 'Spider Man, the Amazing', 227, 0, '1982-04-01', 'Very Fine', 0.60, 2, ''),
(117, 'Marvel', 'Spider Man, the Amazing', 229, 0, '1982-06-01', 'Very Fine', 0.60, 2, ''),
(118, 'Marvel', 'Spider Man, the Amazing', 230, 0, '1982-07-01', 'Very Fine', 0.60, 2, ''),
(119, 'Marvel', 'Spider Man, the Amazing', 231, 0, '1982-08-01', 'Very Fine', 0.60, 2, ''),
(120, 'Marvel', 'Spider Man, the Amazing', 232, 0, '1982-09-01', 'Very Fine', 0.60, 2, ''),
(121, 'Marvel', 'Spider Man, the Amazing', 233, 0, '1982-10-01', 'Very Fine', 0.60, 2, ''),
(122, 'Marvel', 'Spider Man, the Amazing', 234, 0, '1982-11-01', 'Very Fine', 0.60, 2, ''),
(123, 'Marvel', 'Hulk, the Incredible', 9, 1, '1980-01-01', 'Very Fine', 0.75, 2, ''),
(124, 'Marvel', 'Hulk, the Incredible', 11, 1, '1982-01-01', 'Very Fine', 1.00, 2, ''),
(125, 'Marvel', 'Hulk, the Incredible', 94, 0, '1981-01-01', 'Very Fine', 0.50, 2, ''),
(126, 'Marvel', 'Hulk, the Incredible', 193, 0, '1975-11-01', 'Very Fine', 0.25, 2, ''),
(127, 'Marvel', 'Hulk, the Incredible', 199, 0, '1976-05-01', 'Very Fine', 0.25, 2, ''),
(128, 'Marvel', 'Hulk, the Incredible', 245, 0, '1980-03-01', 'Fair', 0.40, 2, ''),
(129, 'Marvel', 'Hulk, the Incredible', 251, 0, '1980-09-01', 'Very Fine', 0.50, 2, ''),
(130, 'Marvel', 'Hulk, the Incredible', 254, 0, '1980-12-01', 'Very Fine', 0.50, 2, ''),
(131, 'Marvel', 'Hulk, the Incredible', 256, 0, '1981-02-01', 'Very Fine', 0.50, 2, ''),
(132, 'Marvel', 'Hulk, the Incredible', 257, 0, '1981-03-01', 'Very Fine', 0.50, 2, ''),
(133, 'Marvel', 'Hulk, the Incredible', 258, 0, '1981-04-01', 'Very Fine', 0.50, 2, ''),
(134, 'Marvel', 'Hulk, the Incredible', 259, 0, '1981-05-01', 'Very Fine', 0.50, 2, ''),
(135, 'Marvel', 'Hulk, the Incredible', 260, 0, '1981-06-01', 'Very Fine', 0.50, 2, ''),
(136, 'Marvel', 'Hulk, the Incredible', 260, 0, '1981-06-01', 'Very Fine', 0.50, 2, ''),
(137, 'Marvel', 'Hulk, the Incredible', 269, 0, '1982-03-01', 'Very Fine', 0.60, 2, ''),
(138, 'Marvel', 'Hulk, the Incredible', 270, 0, '1982-04-01', 'Very Fine', 0.60, 2, ''),
(139, 'Marvel', 'Hulk, the Incredible', 271, 0, '1982-05-01', 'Very Fine', 0.60, 2, ''),
(140, 'Marvel', 'Hulk, the Incredible', 272, 0, '1982-06-01', 'Very Fine', 0.60, 2, ''),
(141, 'Marvel', 'Hulk, the Incredible', 273, 0, '1982-07-01', 'Very Fine', 0.60, 2, ''),
(142, 'Marvel', 'Hulk, the Incredible', 275, 0, '1982-09-01', 'Very Fine', 0.60, 2, ''),
(143, 'Marvel', 'Hulk, the Incredible', 276, 0, '1982-10-01', 'Very Fine', 0.60, 2, ''),
(144, 'Marvel', 'Hulk, the Incredible', 277, 0, '1982-11-01', 'Very Fine', 0.60, 2, ''),
(145, 'Marvel', 'Hulk, the Incredible', 281, 0, '1983-03-01', 'Very Fine', 0.60, 2, ''),
(146, 'Marvel', 'X-Men', 6, 1, '1982-01-01', 'Very Fine', 1.00, 2, ''),
(147, 'Marvel', 'X-Men', 7, 1, '1983-01-01', 'Very Fine', 1.00, 2, ''),
(148, 'Marvel', 'X-Men', 8, 1, '1984-01-01', 'Very Fine', 1.00, 2, ''),
(149, 'Marvel', 'X-Men', 9, 1, '1985-01-01', 'Very Fine', 1.25, 2, ''),
(150, 'Marvel', 'X-Men', 10, 1, '1986-01-01', 'Very Fine', 1.25, 2, ''),
(151, 'Marvel', 'X-Men', 11, 1, '1987-01-01', 'Very Fine', 1.25, 2, ''),
(152, 'Marvel', 'X-Men', 12, 1, '1988-01-01', 'Very Fine', 1.75, 2, ''),
(153, 'Marvel', 'X-Men, Amazing Adventures the Original', 13, 0, '1980-12-01', 'Very Fine', 0.50, 2, ''),
(154, 'Marvel', 'X-Men', 137, 0, '1980-09-01', 'Very Fine', 0.75, 2, ''),
(155, 'Marvel', 'X-Men', 138, 0, '1980-10-01', 'Very Fine', 0.50, 2, ''),
(156, 'Marvel', 'X-Men', 139, 0, '1980-11-01', 'Very Fine', 0.50, 2, ''),
(157, 'Marvel', 'X-Men', 140, 0, '1980-12-01', 'Very Fine', 0.50, 2, ''),
(158, 'Marvel', 'X-Men', 141, 0, '1981-01-01', 'Very Fine', 0.50, 2, ''),
(159, 'Marvel', 'X-Men', 142, 0, '1981-02-01', 'Very Fine', 0.50, 2, ''),
(160, 'Marvel', 'X-Men', 143, 0, '1981-03-01', 'Very Fine', 0.50, 2, ''),
(161, 'Marvel', 'X-Men', 144, 0, '1981-04-01', 'Very Fine', 0.50, 2, ''),
(162, 'Marvel', 'X-Men', 145, 0, '1981-05-01', 'Very Fine', 0.50, 2, ''),
(163, 'Marvel', 'X-Men', 146, 0, '1981-06-01', 'Very Fine', 0.50, 2, ''),
(164, 'Marvel', 'X-Men', 147, 0, '1981-07-01', 'Very Fine', 0.50, 2, ''),
(165, 'Marvel', 'X-Men', 148, 0, '1981-08-01', 'Very Fine', 0.50, 2, ''),
(166, 'Marvel', 'X-Men', 149, 0, '1981-09-01', 'Very Fine', 0.50, 2, ''),
(167, 'Marvel', 'X-Men', 150, 0, '1981-10-01', 'Very Fine', 0.75, 2, ''),
(168, 'Marvel', 'X-Men', 151, 0, '1981-11-01', 'Very Fine', 0.50, 2, ''),
(169, 'Marvel', 'X-Men', 152, 0, '1981-12-01', 'Very Fine', 0.50, 2, ''),
(170, 'Marvel', 'X-Men', 153, 0, '1982-01-01', 'Very Fine', 0.60, 2, ''),
(171, 'Marvel', 'X-Men', 154, 0, '1982-02-01', 'Very Fine', 0.60, 2, ''),
(172, 'Marvel', 'X-Men', 155, 0, '1982-03-01', 'Very Fine', 0.60, 2, ''),
(173, 'Marvel', 'X-Men', 156, 0, '1982-04-01', 'Very Fine', 0.60, 2, ''),
(174, 'Marvel', 'X-Men', 157, 0, '1982-05-01', 'Very Fine', 0.60, 2, ''),
(175, 'Marvel', 'X-Men', 158, 0, '1982-06-01', 'Very Fine', 0.60, 2, ''),
(176, 'Marvel', 'X-Men', 159, 0, '1982-07-01', 'Very Fine', 0.60, 2, ''),
(177, 'Marvel', 'X-Men', 160, 0, '1982-08-01', 'Very Fine', 0.60, 2, ''),
(178, 'Marvel', 'X-Men', 161, 0, '1982-09-01', 'Very Fine', 0.60, 2, ''),
(179, 'Marvel', 'X-Men', 161, 0, '1982-09-01', 'Very Fine', 0.60, 2, ''),
(180, 'Marvel', 'X-Men', 162, 0, '1982-10-01', 'Very Fine', 0.60, 2, ''),
(181, 'Marvel', 'X-Men', 163, 0, '1952-11-01', 'Very Fine', 0.60, 2, ''),
(182, 'Marvel', 'X-Men', 163, 0, '1982-11-01', 'Very Fine', 0.60, 2, ''),
(183, 'Marvel', 'X-Men', 164, 0, '1982-12-01', 'Very Fine', 0.60, 2, ''),
(184, 'Marvel', 'X-Men', 165, 0, '1983-01-01', 'Very Fine', 0.60, 2, ''),
(185, 'Marvel', 'X-Men', 166, 0, '1983-02-01', 'Very Fine', 1.00, 2, ''),
(186, 'Marvel', 'X-Men', 167, 0, '1983-03-01', 'Very Fine', 0.60, 2, ''),
(187, 'Marvel', 'X-Men', 168, 0, '1983-04-01', 'Very Fine', 0.60, 2, ''),
(188, 'Marvel', 'X-Men', 169, 0, '1983-05-01', 'Very Fine', 0.60, 2, ''),
(189, 'Marvel', 'X-Men', 170, 0, '1983-06-01', 'Very Fine', 0.60, 2, ''),
(190, 'Marvel', 'X-Men', 171, 0, '1983-07-01', 'Very Fine', 0.60, 2, ''),
(191, 'Marvel', 'X-Men', 172, 0, '1983-08-01', 'Very Fine', 0.60, 2, ''),
(192, 'Marvel', 'X-Men', 173, 0, '1983-09-01', 'Very Fine', 0.60, 2, ''),
(193, 'Marvel', 'X-Men', 174, 0, '1983-10-01', 'Very Fine', 0.60, 2, ''),
(194, 'Marvel', 'X-Men', 175, 0, '1983-11-01', 'Very Fine', 1.00, 2, ''),
(195, 'Marvel', 'X-Men', 176, 0, '1983-12-01', 'Very Fine', 0.60, 2, ''),
(196, 'Marvel', 'X-Men', 177, 0, '1984-01-01', 'Very Fine', 0.60, 2, ''),
(197, 'Marvel', 'X-Men', 178, 0, '1984-02-01', 'Very Fine', 0.60, 2, ''),
(198, 'Marvel', 'X-Men', 179, 0, '1984-03-01', 'Very Fine', 0.60, 2, ''),
(199, 'Marvel', 'X-Men', 180, 0, '1984-04-01', 'Very Fine', 0.60, 2, ''),
(200, 'Marvel', 'X-Men', 181, 0, '1984-05-01', 'Very Fine', 0.60, 2, ''),
(201, 'Marvel', 'X-Men', 182, 0, '1984-06-01', 'Very Fine', 0.60, 2, ''),
(202, 'Marvel', 'X-Men', 183, 0, '1984-07-01', 'Very Fine', 0.60, 2, ''),
(203, 'Marvel', 'X-Men', 184, 0, '1984-08-01', 'Very Fine', 0.60, 2, ''),
(204, 'Marvel', 'X-Men', 185, 0, '1984-09-01', 'Very Fine', 0.60, 2, ''),
(205, 'Marvel', 'X-Men', 186, 0, '1984-10-01', 'Very Fine', 1.00, 2, ''),
(206, 'Marvel', 'X-Men', 187, 0, '1984-11-01', 'Very Fine', 0.60, 2, ''),
(207, 'Marvel', 'X-Men', 188, 0, '1984-12-01', 'Very Fine', 0.60, 2, ''),
(208, 'Marvel', 'X-Men', 189, 0, '1985-01-01', 'Very Fine', 0.60, 2, ''),
(209, 'Marvel', 'X-Men', 190, 0, '1985-02-01', 'Very Fine', 0.60, 2, ''),
(210, 'Marvel', 'X-Men', 191, 0, '1985-03-01', 'Very Fine', 0.60, 2, ''),
(211, 'Marvel', 'X-Men', 192, 0, '1985-04-01', 'Very Fine', 0.65, 2, ''),
(212, 'Marvel', 'X-Men', 193, 0, '1985-05-01', 'Very Fine', 1.25, 2, ''),
(213, 'Marvel', 'X-Men', 194, 0, '1985-06-01', 'Very Fine', 0.65, 2, ''),
(214, 'Marvel', 'X-Men', 195, 0, '1985-07-01', 'Very Fine', 0.65, 2, ''),
(215, 'Marvel', 'X-Men', 196, 0, '1985-08-01', 'Very Fine', 0.65, 2, ''),
(216, 'Marvel', 'X-Men', 197, 0, '1985-09-01', 'Very Fine', 0.65, 2, ''),
(217, 'Marvel', 'X-Men', 198, 0, '1985-10-01', 'Very Fine', 0.65, 2, ''),
(218, 'Marvel', 'X-Men', 199, 0, '1985-11-01', 'Very Fine', 0.65, 2, ''),
(219, 'Marvel', 'X-Men', 200, 0, '1985-12-01', 'Very Fine', 1.25, 2, ''),
(220, 'Marvel', 'X-Men', 201, 0, '1986-01-01', 'Very Fine', 0.65, 2, ''),
(221, 'Marvel', 'X-Men', 202, 0, '1986-02-01', 'Very Fine', 0.75, 2, ''),
(222, 'Marvel', 'X-Men', 203, 0, '1986-03-01', 'Very Fine', 0.75, 2, ''),
(223, 'Marvel', 'X-Men', 204, 0, '1986-04-01', 'Very Fine', 0.75, 2, ''),
(224, 'Marvel', 'X-Men', 205, 0, '1986-05-01', 'Very Fine', 0.75, 2, ''),
(225, 'Marvel', 'X-Men', 206, 0, '1986-06-01', 'Very Fine', 0.75, 2, ''),
(226, 'Marvel', 'X-Men', 207, 0, '1986-07-01', 'Very Fine', 0.75, 2, ''),
(227, 'Marvel', 'X-Men', 208, 0, '1986-08-01', 'Very Fine', 0.75, 2, ''),
(228, 'Marvel', 'X-Men', 209, 0, '1986-09-01', 'Very Fine', 0.75, 2, ''),
(229, 'Marvel', 'X-Men', 210, 0, '1986-10-01', 'Very Fine', 0.75, 2, ''),
(230, 'Marvel', 'X-Men', 211, 0, '1986-11-01', 'Very Fine', 0.75, 2, ''),
(231, 'Marvel', 'X-Men', 212, 0, '1986-12-01', 'Very Fine', 0.75, 2, ''),
(232, 'Marvel', 'X-Men', 213, 0, '1987-01-01', 'Very Fine', 0.75, 2, ''),
(233, 'Marvel', 'X-Men', 214, 0, '1987-02-01', 'Very Fine', 0.75, 2, ''),
(234, 'Marvel', 'X-Men', 215, 0, '1987-03-01', 'Very Fine', 0.75, 2, ''),
(235, 'Marvel', 'X-Men', 216, 0, '1987-04-01', 'Very Fine', 0.75, 2, ''),
(236, 'Marvel', 'X-Men', 217, 0, '1987-05-01', 'Very Fine', 0.75, 2, ''),
(237, 'Marvel', 'X-Men', 218, 0, '1987-06-01', 'Very Fine', 0.75, 2, ''),
(238, 'Marvel', 'X-Men', 219, 0, '1987-07-01', 'Very Fine', 0.75, 2, ''),
(239, 'Marvel', 'X-Men', 220, 0, '1987-08-01', 'Very Fine', 0.75, 2, ''),
(240, 'Marvel', 'X-Men', 212, 0, '1987-09-01', 'Very Fine', 0.75, 2, ''),
(241, 'Marvel', 'X-Men', 222, 0, '1987-10-01', 'Very Fine', 0.75, 2, ''),
(242, 'Marvel', 'X-Men', 223, 0, '1987-11-01', 'Very Fine', 0.75, 2, ''),
(243, 'Marvel', 'X-Men', 224, 0, '1987-12-01', 'Very Fine', 0.75, 2, ''),
(244, 'Marvel', 'X-Men', 225, 0, '1988-01-01', 'Very Fine', 0.75, 2, ''),
(245, 'Marvel', 'X-Men', 226, 0, '1988-02-01', 'Very Fine', 1.25, 2, ''),
(246, 'Marvel', 'X-Men', 227, 0, '1988-03-01', 'Very Fine', 0.75, 2, ''),
(247, 'Marvel', 'X-Men', 228, 0, '1988-04-01', 'Very Fine', 0.75, 2, ''),
(248, 'Marvel', 'X-Men', 229, 0, '1988-05-01', 'Very Fine', 1.00, 2, ''),
(249, 'Marvel', 'X-Men', 230, 0, '1988-06-01', 'Very Fine', 1.00, 2, ''),
(250, 'Marvel', 'X-Men', 231, 0, '1988-07-01', 'Very Fine', 1.00, 2, ''),
(251, 'Marvel', 'X-Men', 232, 0, '1988-08-01', 'Very Fine', 1.00, 2, ''),
(252, 'Marvel', 'X-Men', 233, 0, '1988-09-01', 'Very Fine', 1.00, 2, ''),
(253, 'Marvel', 'X-Men', 234, 0, '1988-09-15', 'Very Fine', 1.00, 2, ''),
(254, 'Marvel', 'X-Men', 235, 0, '1988-10-01', 'Very Fine', 1.00, 2, ''),
(255, 'Marvel', 'X-Men', 236, 0, '1988-10-15', 'Very Fine', 1.00, 2, ''),
(256, 'Marvel', 'X-Men', 237, 0, '1988-11-01', 'Very Fine', 1.00, 2, ''),
(257, 'Marvel', 'X-Men', 238, 0, '1988-11-15', 'Very Fine', 1.00, 2, ''),
(258, 'Marvel', 'X-Men', 239, 0, '1988-12-01', 'Very Fine', 1.00, 2, ''),
(259, 'Marvel', 'X-Men', 240, 0, '1989-01-01', 'Very Fine', 1.00, 2, ''),
(260, 'Marvel', 'X-Men', 241, 0, '1989-02-01', 'Very Fine', 1.00, 2, ''),
(261, 'Marvel', 'X-Men', 242, 0, '1989-03-01', 'Very Fine', 1.50, 2, ''),
(262, 'Marvel', 'X-Men', 243, 0, '1989-04-01', 'Very Fine', 1.00, 2, ''),
(263, 'Marvel', 'X-Men', 244, 0, '1989-05-01', 'Very Fine', 1.00, 2, ''),
(264, 'Marvel', 'X-Men', 245, 0, '1989-06-01', 'Very Fine', 1.00, 2, ''),
(265, 'Marvel', 'X-Men', 246, 0, '1989-07-01', 'Very Fine', 1.00, 2, ''),
(266, 'Marvel', 'X-Men', 247, 0, '1989-08-01', 'Very Fine', 1.00, 2, ''),
(267, 'Marvel', 'X-Men', 248, 0, '1989-09-01', 'Very Fine', 1.00, 2, ''),
(268, 'Marvel', 'X-Men', 249, 0, '1989-10-01', 'Very Fine', 1.00, 2, ''),
(269, 'Marvel', 'X-Men', 250, 0, '1989-10-15', 'Very Fine', 1.00, 2, ''),
(270, 'Marvel', 'X-Men', 251, 0, '1989-11-01', 'Very Fine', 1.00, 2, ''),
(271, 'Marvel', 'X-Men', 252, 0, '1989-11-15', 'Very Fine', 1.00, 2, ''),
(272, 'Marvel', 'X-Men', 253, 0, '1989-11-30', 'Very Fine', 1.00, 2, ''),
(273, 'Marvel', 'X-Men', 254, 0, '1989-12-01', 'Very Fine', 1.00, 2, ''),
(274, 'Marvel', 'X-Men', 255, 0, '1989-12-15', 'Very Fine', 1.00, 2, ''),
(275, 'Marvel', 'X-Men', 256, 0, '1989-12-30', 'Very Fine', 1.00, 2, ''),
(276, 'Marvel', 'Hulk, the Incredible', 340, 0, '1988-02-01', 'Very Fine', 0.75, 2, ''),
(277, 'Marvel', 'the Defenders', 101, 0, '1981-11-01', 'Very Fine', 0.50, 2, ''),
(278, 'Marvel', 'Silver Surfer', 1, 1, '1988-01-01', 'Very Fine', 1.75, 2, ''),
(279, 'Marvel', 'Silver Surfer', 1, 0, '1987-07-01', 'Very Fine', 1.25, 2, ''),
(280, 'Marvel', 'Silver Surfer', 2, 0, '1987-08-01', 'Very Fine', 0.75, 2, ''),
(281, 'Marvel', 'Silver Surfer', 3, 0, '1987-09-01', 'Very Fine', 0.75, 2, ''),
(282, 'Marvel', 'Silver Surfer', 4, 0, '1987-10-01', 'Very Fine', 0.75, 2, ''),
(283, 'Marvel', 'Silver Surfer', 5, 0, '1987-11-01', 'Very Fine', 0.75, 2, ''),
(284, 'Marvel', 'Silver Surfer', 6, 0, '1987-12-01', 'Very Fine', 0.75, 2, ''),
(285, 'Marvel', 'Silver Surfer', 7, 0, '1988-01-01', 'Very Fine', 0.75, 2, ''),
(286, 'Marvel', 'Silver Surfer', 8, 0, '1988-02-01', 'Very Fine', 0.75, 2, ''),
(287, 'Marvel', 'Silver Surfer', 9, 0, '1988-03-01', 'Very Fine', 0.75, 2, ''),
(288, 'Marvel', 'Silver Surfer', 10, 0, '1988-04-01', 'Very Fine', 0.75, 2, ''),
(289, 'Marvel', 'Silver Surfer', 11, 0, '1988-05-01', 'Very Fine', 1.00, 2, ''),
(290, 'Marvel', 'Silver Surfer', 12, 0, '1988-06-01', 'Very Fine', 1.00, 2, ''),
(291, 'Marvel', 'Silver Surfer', 13, 0, '1988-07-01', 'Very Fine', 1.00, 2, ''),
(292, 'Marvel', 'Silver Surfer', 14, 0, '1988-08-01', 'Very Fine', 1.00, 2, ''),
(293, 'Marvel', 'Silver Surfer', 15, 0, '1988-09-01', 'Very Fine', 1.00, 2, ''),
(294, 'Marvel', 'Silver Surfer', 16, 0, '1988-10-01', 'Very Fine', 1.00, 2, ''),
(295, 'Marvel', 'Silver Surfer', 17, 0, '1988-11-01', 'Very Fine', 1.00, 2, ''),
(296, 'Marvel', 'Silver Surfer', 18, 0, '1988-12-01', 'Very Fine', 1.00, 2, ''),
(297, 'Marvel', 'Silver Surfer', 19, 0, '1989-01-01', 'Very Fine', 1.00, 2, ''),
(298, 'Marvel', 'Silver Surfer', 20, 0, '1989-02-01', 'Very Fine', 1.00, 2, ''),
(299, 'Marvel', 'Silver Surfer', 21, 0, '1989-03-01', 'Very Fine', 1.00, 2, ''),
(300, 'Marvel', 'Silver Surfer', 22, 0, '1989-04-01', 'Very Fine', 1.00, 2, ''),
(301, 'Marvel', 'Silver Surfer', 23, 0, '1989-05-01', 'Very Fine', 1.00, 2, ''),
(302, 'Marvel', 'Silver Surfer', 24, 0, '1989-06-01', 'Very Fine', 1.00, 2, ''),
(303, 'Marvel', 'Silver Surfer', 25, 0, '1989-07-01', 'Very Fine', 1.50, 2, ''),
(304, 'Marvel', 'Silver Surfer', 26, 0, '1989-08-01', 'Very Fine', 1.00, 2, ''),
(305, 'Marvel', 'Silver Surfer', 27, 0, '1989-09-01', 'Very Fine', 1.00, 2, ''),
(306, 'Marvel', 'Silver Surfer', 28, 0, '1989-10-01', 'Very Fine', 1.00, 2, ''),
(307, 'Marvel', 'Silver Surfer', 29, 0, '1989-11-01', 'Very Fine', 1.00, 2, ''),
(308, 'Marvel', 'Silver Surfer', 30, 0, '1989-11-15', 'Very Fine', 1.00, 2, ''),
(309, 'Marvel', 'the Silver Surfer', 18, 0, '1970-09-01', 'Very Fine', 0.15, 2, ''),
(310, 'Marvel', 'Silver Surfer, Fantasy Masterpieces', 7, 0, '1980-06-01', 'Very Fine', 0.75, 2, ''),
(311, 'Marvel', 'Silver Surfer, Fantasy Masterpieces', 8, 0, '1980-07-01', 'Very Fine', 0.75, 2, ''),
(312, 'Marvel', 'Silver Surfer, Fantasy Masterpieces', 10, 0, '1980-09-01', 'Very Fine', 0.75, 2, ''),
(313, 'Marvel', 'Silver Surfer, Fantasy Masterpieces', 14, 0, '1981-01-01', 'Very Fine', 0.75, 2, ''),
(314, 'Marvel / Epic Comics', 'Silver Surfer, LIMITED SERIES', 1, 0, '1988-12-01', 'Very Fine', 1.00, 2, ''),
(315, 'Marvel / Epic Comics', 'Silver Surfer, LIMITED SERIES', 2, 0, '1989-01-01', 'Very Fine', 1.00, 2, ''),
(316, 'Marvel', 'Spider Man, the Amazing', 22, 1, '1988-01-01', 'Very Fine', 1.75, 2, ''),
(317, 'Marvel', 'Spider-Man, the Spectacular', 8, 1, '1988-01-01', 'Very Fine', 1.75, 2, ''),
(318, 'Marvel', 'Spider Man, Web Of ', 4, 1, '1988-01-01', 'Very Fine', 1.75, 2, ''),
(319, 'First Comics', 'Sable, Freelance', 56, 0, '1988-02-01', 'Very Fine', 1.75, 2, ''),
(320, 'First Comics', 'Sable Return of the Hunter', 1, 0, '1988-03-01', 'Very Fine', 1.75, 2, ''),
(321, 'First Comics', 'Sable Return of the Hunter', 2, 0, '1988-04-01', 'Very Fine', 1.75, 2, ''),
(322, 'First Comics', 'Sable Return of the Hunter', 3, 0, '1988-05-01', 'Very Fine', 1.75, 2, ''),
(323, 'First Comics', 'Sable Return of the Hunter', 4, 0, '1988-06-01', 'Very Fine', 1.75, 2, ''),
(324, 'First Comics', 'Sable Return of the Hunter', 5, 0, '1988-07-01', 'Very Fine', 1.75, 2, ''),
(325, 'First Comics', 'Sable Return of the Hunter', 6, 0, '1988-08-01', 'Very Fine', 1.75, 2, ''),
(326, 'First Comics', 'Sable Return of the Hunter', 7, 0, '1988-09-01', 'Very Fine', 1.75, 2, ''),
(327, 'First Comics', 'Sable', 8, 0, '1988-10-01', 'Very Fine', 1.95, 2, ''),
(328, 'First Comics', 'Sable', 9, 0, '1988-11-01', 'Very Fine', 1.95, 2, ''),
(329, 'First Comics', 'Sable', 10, 0, '1988-12-01', 'Very Fine', 1.95, 2, ''),
(330, 'First Comics', 'Sable', 11, 0, '1989-01-01', 'Very Fine', 1.95, 2, ''),
(331, 'First Comics', 'Sable', 12, 0, '1989-02-01', 'Very Fine', 1.95, 2, ''),
(332, 'First Comics', 'Sable', 13, 0, '1989-03-01', 'Very Fine', 1.95, 2, ''),
(333, 'First Comics', 'Sable', 14, 0, '1989-04-01', 'Very Fine', 1.95, 2, ''),
(334, 'First Comics', 'Sable', 15, 0, '1989-05-01', 'Very Fine', 1.95, 2, ''),
(335, 'First Comics', 'Sable', 16, 0, '1989-06-01', 'Very Fine', 1.95, 2, ''),
(336, 'First Comics', 'Sable', 17, 0, '1989-07-01', 'Very Fine', 1.95, 2, ''),
(337, 'First Comics', 'Sable', 18, 0, '1989-08-01', 'Very Fine', 1.95, 2, ''),
(338, 'First Comics', 'Sable', 19, 0, '1989-09-01', 'Very Fine', 1.95, 2, ''),
(339, 'First Comics', 'Sable', 20, 0, '1989-10-01', 'Very Fine', 1.95, 2, ''),
(340, 'First Comics', 'Sable', 21, 0, '1989-11-01', 'Very Fine', 1.95, 2, ''),
(341, 'First Comics', 'Crossroads', 1, 0, '1988-07-01', 'Near Mint', 3.25, 2, ''),
(342, 'First Comics', 'Crossroads', 2, 0, '1988-08-01', 'Near Mint', 3.25, 2, ''),
(343, 'First Comics', 'Crossroads', 3, 0, '1988-09-01', 'Near Mint', 3.25, 2, ''),
(344, 'DC', 'Green Arrow the Longbow Hunters', 1, 0, '1987-01-01', 'Near Mint', 2.95, 2, ''),
(345, 'DC', 'Green Arrow the Longbow Hunters', 2, 0, '1987-01-01', 'Near Mint', 2.95, 2, ''),
(346, 'DC', 'Green Arrow the Longbow Hunters', 3, 0, '1987-01-01', 'Near Mint', 2.95, 2, ''),
(347, 'DC', 'Green Arrow', 1, 0, '1988-02-01', 'Near Mint', 1.00, 2, ''),
(348, 'DC', 'Green Arrow', 1, 0, '1988-02-01', 'Very Fine', 1.00, 2, ''),
(349, 'DC', 'Green Arrow', 2, 0, '1988-03-01', 'Very Fine', 1.00, 2, ''),
(350, 'DC', 'Green Arrow', 3, 0, '1988-04-01', 'Very Fine', 1.00, 2, ''),
(351, 'DC', 'Green Arrow', 4, 0, '1988-05-01', 'Very Fine', 1.00, 2, ''),
(352, 'DC', 'Green Arrow', 5, 0, '1988-06-01', 'Very Fine', 1.00, 2, ''),
(353, 'DC', 'Green Arrow', 6, 0, '1988-07-01', 'Very Fine', 1.00, 2, ''),
(354, 'DC', 'Green Arrow', 7, 0, '1988-08-01', 'Very Fine', 1.00, 2, ''),
(355, 'DC', 'Green Arrow', 8, 0, '1988-09-01', 'Very Fine', 1.00, 2, ''),
(356, 'DC', 'Green Arrow', 9, 0, '1988-10-01', 'Very Fine', 1.00, 2, ''),
(357, 'DC', 'Green Arrow', 10, 0, '1988-11-01', 'Very Fine', 1.00, 2, ''),
(358, 'DC', 'Green Arrow', 11, 0, '1988-12-01', 'Very Fine', 1.00, 2, ''),
(359, 'DC', 'Green Arrow', 12, 0, '1988-12-15', 'Very Fine', 1.00, 2, ''),
(360, 'DC', 'Green Arrow', 13, 0, '1988-12-30', 'Very Fine', 1.25, 2, ''),
(361, 'DC', 'Green Arrow', 14, 0, '1989-01-01', 'Very Fine', 1.25, 2, ''),
(362, 'DC', 'Green Arrow', 15, 0, '1989-02-01', 'Very Fine', 1.25, 2, ''),
(363, 'DC', 'Green Arrow', 16, 0, '1989-03-01', 'Very Fine', 1.25, 2, ''),
(364, 'DC', 'Green Arrow', 17, 0, '1989-04-01', 'Very Fine', 1.25, 2, ''),
(365, 'DC', 'Green Arrow', 18, 0, '1989-05-01', 'Very Fine', 1.25, 2, ''),
(366, 'DC', 'Green Arrow', 19, 0, '1989-06-01', 'Very Fine', 1.25, 2, ''),
(367, 'DC', 'Green Arrow', 20, 0, '1989-07-01', 'Very Fine', 1.25, 2, ''),
(368, 'DC', 'Green Arrow', 21, 0, '1989-08-01', 'Very Fine', 1.25, 2, ''),
(369, 'DC', 'Green Arrow', 22, 0, '1989-08-01', 'Very Fine', 1.25, 2, ''),
(370, 'DC', 'Green Arrow', 23, 0, '1989-09-01', 'Very Fine', 1.25, 2, ''),
(371, 'DC', 'Green Arrow', 24, 0, '1989-09-01', 'Very Fine', 1.25, 2, ''),
(372, 'DC', 'Detective Comics', 1, 1, '1988-01-01', 'Very Fine', 1.50, 2, 'Fables'),
(373, 'DC', 'Green Arrow', 1, 1, '1988-01-01', 'Very Fine', 2.00, 2, 'Fables'),
(374, 'DC', 'The Question', 1, 1, '1988-01-01', 'Very Fine', 2.50, 2, 'Fables'),
(375, 'DC', 'The Question', 2, 1, '1989-01-01', 'Very Fine', 3.50, 2, ''),
(376, 'DC', 'Green Arrow', 2, 1, '1989-01-01', 'Very Fine', 2.50, 2, ''),
(377, 'DC', 'The Question', 18, 0, '1988-07-01', 'Very Fine', 1.75, 2, ''),
(378, 'Epic Comics', 'Dreadstar', 1, 1, '1983-01-01', 'Near Mint', 2.00, 2, ''),
(379, 'Epic Comics', 'Dreadstar', 1, 0, '1982-11-01', 'Near Mint', 1.50, 2, ''),
(380, 'Epic Comics', 'Dreadstar', 2, 0, '1983-01-01', 'Near Mint', 1.50, 2, ''),
(381, 'Epic Comics', 'Dreadstar', 3, 0, '1983-03-01', 'Near Mint', 1.50, 2, ''),
(382, 'Epic Comics', 'Dreadstar', 4, 0, '1983-05-01', 'Near Mint', 1.50, 2, ''),
(383, 'Epic Comics', 'Dreadstar', 5, 0, '1983-07-01', 'Near Mint', 1.50, 2, ''),
(384, 'Epic Comics', 'Dreadstar', 6, 0, '1983-09-01', 'Near Mint', 1.50, 2, ''),
(385, 'Epic Comics', 'Dreadstar', 7, 0, '1983-11-01', 'Near Mint', 1.50, 2, ''),
(386, 'Epic Comics', 'Dreadstar', 8, 0, '1984-01-01', 'Near Mint', 1.50, 2, ''),
(387, 'Epic Comics', 'Dreadstar', 9, 0, '1984-03-01', 'Near Mint', 1.50, 2, ''),
(388, 'Epic Comics', 'Dreadstar', 10, 0, '1984-04-01', 'Near Mint', 1.50, 2, ''),
(389, 'Epic Comics', 'Dreadstar', 11, 0, '1984-06-01', 'Near Mint', 1.50, 2, ''),
(390, 'Epic Comics', 'Dreadstar', 12, 0, '1984-07-01', 'Near Mint', 1.50, 2, ''),
(391, 'Epic Comics', 'Dreadstar', 13, 0, '1984-08-01', 'Near Mint', 1.50, 2, ''),
(392, 'Epic Comics', 'Dreadstar', 14, 0, '1984-10-01', 'Near Mint', 1.50, 2, ''),
(393, 'Epic Comics', 'Dreadstar', 15, 0, '1984-11-01', 'Near Mint', 1.50, 2, ''),
(394, 'Epic Comics', 'Dreadstar', 16, 0, '1984-12-01', 'Near Mint', 1.50, 2, ''),
(395, 'Epic Comics', 'Dreadstar', 17, 0, '1985-02-01', 'Near Mint', 1.50, 2, ''),
(396, 'Epic Comics', 'Dreadstar', 18, 0, '1985-04-01', 'Near Mint', 1.50, 2, ''),
(397, 'Epic Comics', 'Dreadstar', 19, 0, '1985-06-01', 'Near Mint', 1.50, 2, ''),
(398, 'Epic Comics', 'Dreadstar', 20, 0, '1985-08-01', 'Near Mint', 1.50, 2, ''),
(399, 'Epic Comics', 'Dreadstar', 21, 0, '1985-10-01', 'Near Mint', 1.50, 2, ''),
(400, 'Epic Comics', 'Dreadstar', 22, 0, '1985-12-01', 'Near Mint', 1.50, 2, ''),
(401, 'Epic Comics', 'Dreadstar', 23, 0, '1986-02-01', 'Near Mint', 1.50, 2, ''),
(402, 'Epic Comics', 'Dreadstar', 24, 0, '1986-04-01', 'Near Mint', 1.50, 2, ''),
(403, 'Epic Comics', 'Dreadstar', 25, 0, '1986-06-01', 'Near Mint', 1.50, 2, ''),
(404, 'Epic Comics', 'Dreadstar', 26, 0, '1986-08-01', 'Near Mint', 1.50, 2, ''),
(405, 'First Comics', 'Dreadstar', 27, 0, '1986-11-01', 'Near Mint', 1.75, 2, ''),
(406, 'First Comics', 'Dreadstar', 28, 0, '1987-01-01', 'Near Mint', 1.75, 2, ''),
(407, 'First Comics', 'Dreadstar', 29, 0, '1987-03-01', 'Near Mint', 1.75, 2, ''),
(408, 'First Comics', 'Dreadstar', 30, 0, '1987-05-01', 'Near Mint', 1.75, 2, ''),
(409, 'First Comics', 'Dreadstar', 31, 0, '1987-07-01', 'Near Mint', 1.75, 2, ''),
(410, 'First Comics', 'Dreadstar', 32, 0, '1987-09-01', 'Near Mint', 1.75, 2, ''),
(411, 'First Comics', 'Dreadstar', 33, 0, '1987-11-01', 'Near Mint', 1.75, 2, ''),
(412, 'First Comics', 'Dreadstar', 34, 0, '1988-01-01', 'Near Mint', 1.75, 2, ''),
(413, 'First Comics', 'Dreadstar', 35, 0, '1988-03-01', 'Near Mint', 1.75, 2, ''),
(414, 'First Comics', 'Dreadstar', 36, 0, '1988-05-01', 'Near Mint', 1.75, 2, ''),
(415, 'First Comics', 'Dreadstar', 37, 0, '1988-07-01', 'Near Mint', 1.75, 2, ''),
(416, 'First Comics', 'Dreadstar', 38, 0, '1988-09-01', 'Near Mint', 1.75, 2, ''),
(417, 'First Comics', 'Dreadstar', 39, 0, '1988-11-01', 'Near Mint', 1.95, 2, ''),
(418, 'First Comics', 'Dreadstar', 40, 0, '1989-01-01', 'Near Mint', 1.95, 2, ''),
(419, 'First Comics', 'Dreadstar', 41, 0, '1989-03-01', 'Near Mint', 1.95, 2, ''),
(420, 'First Comics', 'Dreadstar', 42, 0, '1989-05-01', 'Near Mint', 1.95, 2, ''),
(421, 'First Comics', 'Dreadstar', 43, 0, '1988-06-01', 'Near Mint', 1.95, 2, ''),
(422, 'First Comics', 'Dreadstar', 44, 0, '1989-07-01', 'Near Mint', 1.95, 2, ''),
(423, 'First Comics', 'Dreadstar', 45, 0, '1989-08-01', 'Near Mint', 1.95, 2, ''),
(424, 'First Comics', 'Dreadstar', 46, 0, '1989-09-01', 'Near Mint', 1.95, 2, ''),
(425, 'First Comics', 'Dreadstar', 47, 0, '1989-10-01', 'Near Mint', 1.95, 2, ''),
(426, 'First Comics', 'Dreadstar', 48, 0, '1989-11-01', 'Near Mint', 1.95, 2, ''),
(427, 'First Comics', 'Dreadstar', 49, 0, '1989-12-01', 'Near Mint', 1.95, 2, ''),
(428, 'First Comics', 'Crossroads', 5, 0, '1988-11-01', 'Near Mint', 3.25, 2, '');
COMMIT;