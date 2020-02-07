-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 18, 2015 at 12:28 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(10) NOT NULL,
  `item` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=248 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `item`) VALUES
(2, '5', '["5","5","5","5"]'),
(3, '5', '["5","5","5","5","5"]'),
(4, '13', '["5","6","6"]'),
(5, '5', '["5"]'),
(6, '5', '["5","5"]'),
(7, '5', '["5","5","5"]'),
(8, '16', '["6"]'),
(9, '16', '["6","5"]'),
(10, '16', '["6","5","7"]'),
(11, '16', '["6","5","7","8"]'),
(12, '16', '["6","5","7","8","11"]'),
(13, '16', '["6","5","7","8","11","7"]'),
(14, '16', '["6","5","7","8","11","7","6"]'),
(15, '16', '["7"]'),
(16, '16', '["7","10"]'),
(17, '16', '["7","10","5"]'),
(18, '16', '["7","10","5","6"]'),
(19, '16', '["7","10","5","6","10"]'),
(20, '16', '["7","10","5","6","10","10"]'),
(21, '16', '["7","10","5","6","10","10","10"]'),
(22, '16', '["7","10","5","6","10","10","10","10"]'),
(23, '16', '["7","10","5","6","10","10","10","10","10"]'),
(24, '16', '["7","10","5","6","10","10","10","10","10","10"]'),
(25, '16', '["7","10","5","6","10","10","10","10","10","10","10"]'),
(26, '16', '["7","10","5","6","10","10","10","10","10","10","10","10"]'),
(27, '16', '["7","10","5","6","10","10","10","10","10","10","10","10","10"]'),
(28, '16', '["7","10","5","6","10","10","10","10","10","10","10","10","10","10"]'),
(29, '13', '["7"]'),
(30, '13', '["7","7"]'),
(31, '13', '["7","7","7"]'),
(32, '13', '["7","7","7","8"]'),
(33, '13', '["6"]'),
(34, '13', '["6","6"]'),
(35, '13', '["6","6","7"]'),
(36, '13', '["6","6","7","5"]'),
(37, '13', '["7"]'),
(38, '13', '["7","5"]'),
(39, '', '["7"]'),
(40, '', '["7","7"]'),
(41, '', '["7","7","7"]'),
(42, '', '["7","7","7","7"]'),
(43, '', '["7","7","7","7","7"]'),
(44, '', '["7","7","7","7","7","7"]'),
(45, '', '["7","7","7","7","7","7","7"]'),
(46, '', '["7","7","7","7","7","7","7","7"]'),
(47, '', '["7","7","7","7","7","7","7","7","7"]'),
(48, '13', '["7"]'),
(49, '13', '["7","7"]'),
(50, '13', '["7","7","8"]'),
(51, '13', '["7","7","8","5"]'),
(52, '13', '["7"]'),
(53, '13', '["7"]'),
(54, '13', '["7","7"]'),
(55, '13', '["7","7","7"]'),
(56, '13', '["7","7","7","7"]'),
(57, '13', '["7","7","7","7","7"]'),
(58, '13', '["7","7","7","7","7","7"]'),
(59, '13', '["7","7","7","7","7","7","7"]'),
(60, '13', '["7","7","7","7","7","7","7","7"]'),
(61, '13', '["7","7","7","7","7","7","7","7","7"]'),
(62, '13', '["7","7","7","7","7","7","7","7","7","7"]'),
(63, '13', '["7","7","7","7","7","7","7","7","7","7","7"]'),
(64, '13', '["7","7","7","7","7","7","7","7","7","7","7","7"]'),
(65, '13', '["7","7","7","7","7","7","7","7","7","7","7","7","7"]'),
(66, '13', '["7","7","7","7","7","7","7","7","7","7","7","7","7","10"]'),
(67, '13', '["7"]'),
(68, '13', '["7","5"]'),
(69, '13', '["7"]'),
(70, '13', '["7","11"]'),
(71, '13', '["7","11","11"]'),
(72, '13', '["7","11","11","11"]'),
(73, '13', '["7","11","11","11","11"]'),
(74, '13', '["7","11","11","11","11","11"]'),
(75, '13', '["7","11","11","11","11","11","11"]'),
(76, '13', '["7","11","11","11","11","11","11","11"]'),
(77, '13', '["7","11","11","11","11","11","11","11","7"]'),
(78, '13', '["7","11","11","11","11","11","11","11","7","7"]'),
(79, '13', '["7","11","11","11","11","11","11","11","7","7","7"]'),
(80, '13', '["7","11","11","11","11","11","11","11","7","7","7","5"]'),
(81, '13', '["7"]'),
(82, '13', '["7","5"]'),
(83, '13', '["7"]'),
(84, '13', '["7","7"]'),
(85, '13', '["7","7","5"]'),
(86, '13', '["7","7","5","6"]'),
(87, '13', '["7"]'),
(88, '13', '["7","7"]'),
(89, '13', '["7","7","7"]'),
(90, '13', '["7","7","7","7"]'),
(91, '13', '["7","7","7","7","7"]'),
(92, '13', '["7","7","7","7","7","7"]'),
(93, '13', '["7","7","7","7","7","7","7"]'),
(94, '13', '["7","7","7","7","7","7","7","7"]'),
(95, '13', '["7","7","7","7","7","7","7","7","7"]'),
(96, '13', '["7","7","7","7","7","7","7","7","7","7"]'),
(97, '13', '["7","7","7","7","7","7","7","7","7","7","5"]'),
(98, '13', '["7","7","7","7","7","7","7","7","7","7","5","5"]'),
(99, '13', '["7","7","7","7","7","7","7","7","7","7","5","5",null]'),
(100, '13', '["7"]'),
(101, '13', '[""]'),
(102, '13', '["",""]'),
(103, '13', '["","",""]'),
(104, '13', '["","","",""]'),
(105, '13', '["","","","",""]'),
(106, '13', '["","","","","",""]'),
(107, '13', '["","","","","","",""]'),
(108, '13', '["","","","","","","",""]'),
(109, '13', '["","","","","","","","",""]'),
(110, '13', '["","","","","","","","","",""]'),
(111, '13', '["","","","","","","","","","",""]'),
(112, '13', '["","","","","","","","","","","",""]'),
(113, '13', '["","","","","","","","","","","","",""]'),
(114, '13', '["","","","","","","","","","","","","",""]'),
(115, '13', '["","","","","","","","","","","","","","",""]'),
(116, '13', '["","","","","","","","","","","","","","","",""]'),
(117, '13', '["","","","","","","","","","","","","","","","",""]'),
(118, '13', '["","","","","","","","","","","","","","","","","",""]'),
(119, '13', '["","","","","","","","","","","","","","","","","","",""]'),
(120, '13', '["","","","","","","","","","","","","","","","","","","",""]'),
(121, '13', '["","","","","","","","","","","","","","","","","","","","",""]'),
(122, '13', '["","","","","","","","","","","","","","","","","","","","","",""]'),
(123, '13', '["","","","","","","","","","","","","","","","","","","","","","",""]'),
(124, '13', '["","","","","","","","","","","","","","","","","","","","","","","",""]'),
(125, '13', '["","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(126, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(127, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(128, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(129, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(130, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(131, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(132, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(133, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(134, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(135, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(136, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(137, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(138, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(139, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(140, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(141, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(142, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(143, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(144, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(145, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(146, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(147, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(148, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(149, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(150, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(151, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(152, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(153, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(154, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(155, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(156, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(157, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(158, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(159, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(160, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(161, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(162, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(163, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(164, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(165, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(166, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(167, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(168, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(169, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(170, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(171, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(172, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(173, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(174, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(175, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(176, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(177, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(178, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(179, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(180, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(181, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(182, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(183, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(184, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(185, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(186, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(187, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(188, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(189, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(190, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(191, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(192, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(193, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(194, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(195, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(196, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(197, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(198, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(199, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(200, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(201, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(202, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(203, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(204, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(205, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(206, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(207, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(208, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(209, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(210, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(211, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(212, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(213, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(214, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(215, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(216, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(217, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(218, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(219, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(220, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(221, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(222, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(223, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(224, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(225, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(226, '13', '["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]'),
(227, '13', '[""]'),
(228, '13', '["",""]'),
(229, '13', '["","",""]'),
(230, '13', '["","","",""]'),
(231, '13', '["","","","",""]'),
(232, '13', '["","","","","",""]'),
(233, '13', '["","","","","","",""]'),
(234, '13', '["","","","","","","",""]'),
(235, '13', '["","","","","","","","",""]'),
(236, '13', '["","","","","","","","","",""]'),
(237, '13', '["","","","","","","","","","",""]'),
(238, '13', '["","","","","","","","","","","",""]'),
(239, '13', '["","","","","","","","","","","","",""]'),
(240, '13', '["","","","","","","","","","","","","",""]'),
(241, '13', '["","","","","","","","","","","","","","",""]'),
(242, '13', '["","","","","","","","","","","","","","","",""]'),
(243, '13', '["","","","","","","","","","","","","","","","",""]'),
(244, '13', '["","","","","","","","","","","","","","","","","",""]'),
(245, '13', '["","","","","","","","","","","","","","","","","","",""]'),
(246, '13', '["","","","","","","","","","","","","","","","","","","",""]'),
(247, '13', '["","","","","","","","","","","","","","","","","","","","",""]');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `comment` varchar(400) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `comment`) VALUES
(45, '16', 'you r welcome...');

-- --------------------------------------------------------

--
-- Table structure for table `food_info`
--

CREATE TABLE IF NOT EXISTS `food_info` (
  `food_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_name` varchar(50) NOT NULL,
  `food_category` varchar(50) NOT NULL,
  `food_price` varchar(5) NOT NULL,
  `image_link` varchar(100) NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `food_info`
--

INSERT INTO `food_info` (`food_id`, `food_name`, `food_category`, `food_price`, `image_link`) VALUES
(6, 'hamburger', 'burger', '200', 'http://10.10.3.156/1207025/uploads/hamburger-and-franch-fries.jpg'),
(7, 'pan_pizza', 'pizza', '222', 'http://10.10.3.156/project3/uploads/piz2.JPG'),
(8, 'cheese_pizza', 'pizza', '600', 'http://10.10.3.156/1207025/uploads/piz1.JPG'),
(9, 'pepsi', 'drinks', '25', 'http://10.10.3.156/1207025/uploads/drinks2.jpg'),
(13, 'Park Hill Pizza', 'pizza', '600', 'http://10.10.3.156/1207025/uploads/parkhillpizza.jpg'),
(14, 'Nuggy-burger', 'burger', '250', 'http://10.10.3.156/1207025/uploads/food2.jpg'),
(15, 'Double-layer Burger', 'burger', '300', 'http://10.10.3.156/1207025/uploads/special_hamburguesas.jpg'),
(16, 'coka cola', 'drinks', '50', 'http://10.10.3.156/1207025/uploads/coke.jpg'),
(17, 'Mirinda', 'drinks', '50', 'http://10.10.3.156/1207025/uploads/mirinda.jpg'),
(18, 'Seven Up', 'drinks', '50', 'http://10.10.3.156/1207025/uploads/7up.jpg'),
(19, 'Lime Pasta', 'pasta', '300', 'http://10.10.3.156/1207025/uploads/lime_pasta.jpg'),
(20, 'Italian Pasta', 'pasta', '400', 'http://10.10.3.156/1207025/uploads/italian pasta.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `new_order_table`
--

CREATE TABLE IF NOT EXISTS `new_order_table` (
  `user_id` varchar(60) NOT NULL,
  `food_id` varchar(60) NOT NULL,
  `food_name` varchar(60) NOT NULL,
  `food_price` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE IF NOT EXISTS `order_table` (
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `food_name` varchar(50) NOT NULL,
  `food_price` varchar(5) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `contact`, `address`, `gender`) VALUES
(10, 'asha', 'farjaasha@gmail.com', 'asha', '01681235595', 'comilla', 'Female'),
(16, 'admin', 'admin@gmail.com', 'admin', '713912749', 'admin', 'Male'),
(17, 'zihadi', 'aaa@hj.com', '1234', '342344', 'dsasf', 'Male'),
(18, 'asif', 'asif@gmail.com', '1234', '015541269836', 'room no-101,lalan shah hall,kuet', 'Male'),
(19, 'abir', 'abirhasan100@gmail.com', '1234', '01521453224', 'room no-306,lalan shah hall,kuet', 'Male');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
