-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 12, 2016 at 04:36 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `association`
--

-- --------------------------------------------------------

--
-- Table structure for table `off`
--

CREATE TABLE IF NOT EXISTS `off` (
  `username` varchar(40) NOT NULL,
  `from` int(2) NOT NULL,
  `to` int(2) NOT NULL,
  `offday` int(2) NOT NULL,
  `serial` int(2) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`serial`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `off`
--

INSERT INTO `off` (`username`, `from`, `to`, `offday`, `serial`) VALUES
('', 7, 15, -8, 1),
('', 8, 20, -12, 2),
('karim', 8, 20, -12, 3),
('karim', 5, 2, 3, 4),
('', 7, 9, -2, 5),
('', 4, 3, -1, 6),
('', 4, 3, -1, 7),
('', 4, 3, -1, 8),
('', 7, 9, 2, 9),
('', 9, 23, 14, 10),
('', 10, 20, 10, 11),
('', 15, 25, 10, 12),
('', 15, 25, 10, 13);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `username` varchar(40) NOT NULL,
  `password` int(32) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(40) NOT NULL,
  `telephone` int(20) NOT NULL,
  `id` int(2) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`username`, `password`, `date_of_birth`, `email`, `telephone`, `id`) VALUES
('karim', 963, '2016-01-23', 'karim@gmail.com', 1764004720, 2),
('karim', 963, '2016-01-06', 'ka@gmail.com', 789641, 3),
('karimbbb', 963258, '2016-01-01', 'safiullahkue@gmail.com', 789654123, 8),
('karimb', 9633, '2016-01-22', 'karimm@gmail.com', 745210, 7),
('karimb', 9633, '2016-01-26', 'karima@gmail.com', 96321456, 6),
('j', 1, '2016-01-02', 'k@gmail.com', 789456, 9),
('karimba', 778899, '2016-01-27', 'safiullahkue@gmail.com', 789456123, 10),
('jahangir', 1307039, '2016-02-06', 'jahangir@gmail.com', 1764004720, 11),
('jamuna', 789456789, '2016-02-03', 'jahir@gmail.com', 2147483647, 12),
('jamuna', 77441100, '2016-01-11', 'saf@gmail.com', 2147483647, 13),
('aaadfad', 789456123, '2016-01-06', 'asfdfsd@gmail.com', 1764004720, 14),
('hasan', 89456, '2016-01-22', 'hasan@gmail.com', 1764004720, 15),
('hasan', 7894123, '2016-01-22', 'hasan@gmail.com', 1764004720, 16),
('ami', 789, '2016-01-08', 'ami@gmail.com', 1764004720, 17),
('admin', 1764004720, '2016-02-13', 'admin@gmail.com', 1784004720, 18);

-- --------------------------------------------------------

--
-- Table structure for table `update`
--

CREATE TABLE IF NOT EXISTS `update` (
  `Status` longtext NOT NULL,
  `date` date NOT NULL,
  `num` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `update`
--

INSERT INTO `update` (`Status`, `date`, `num`) VALUES
('Annual Feast of this Year will be held on next upcoming 26 th January.All \r\nboarders including attasted are requested to keep thir meall ON.NO Guest\r\nMeal allowed', '2010-11-13', 1),
('fasddddddddddddddddddddddddddd sda f', '2016-01-06', 2),
('Annual Feast of this Year will be held on next upcoming 26 th January.All \r\nboarders including attasted are requested to keep thir meall ON.NO Guest\r\nMeal allowed', '2016-01-07', 3),
('ok go now', '2016-01-06', 4),
('', '0000-00-00', 5),
('dsafasdf', '2016-01-15', 6),
('jkkjkjkjkj jjjkjkj jkkkkkkkkkkkkkkkkkkkkkkkkkk kjjjjjjjjjjjjjjj\r\n', '2016-11-14', 7);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
