-- phpMyAdmin SQL Dump
-- version 4.3.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 08, 2015 at 03:56 PM
-- Server version: 5.6.22
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `basket_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_links`
--

CREATE TABLE IF NOT EXISTS `menu_links` (
  `mlid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `plid` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_links`
--

INSERT INTO `menu_links` (`mlid`, `title`, `path`, `plid`, `weight`) VALUES
(46, 'sssss', '82', NULL, 1),
(47, 'sss', '83', NULL, 2),
(48, 'fvdfv', '84', NULL, 4),
(49, 'joksi', '85', NULL, 2),
(50, 'Jovan zdrav', '86', NULL, 4),
(51, 'kakak', '87', NULL, 0),
(52, 'ppppppppp', '88', NULL, -4),
(53, '[o[o[', '89', NULL, 7),
(54, 'kuala limpur', '91', NULL, 1),
(55, 'dddd', '92', NULL, 4),
(56, 'jovansa', '93', NULL, 0),
(57, 'sss', '94', NULL, 4),
(58, 'ewdwd', '95', NULL, 5),
(59, 'Konopiski', '96', NULL, 16),
(60, 'kakak', '97', NULL, 1),
(61, 'ZD Z ', '98', NULL, 0),
(62, 'JJJJ', '99', NULL, -5),
(63, 'dddd', '100', NULL, 1),
(64, 'ljjljljl', '101', NULL, 1),
(65, 'ojnnponp', '102', NULL, 1),
(66, 'kjjl', '103', NULL, 4),
(67, 'kmkö', '104', NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `pid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pid`, `title`, `body`, `user_id`, `created`) VALUES
(81, 'xxx', 'xx', 1, '2015-02-08 13:26:20'),
(82, 'sss', 'ssss', 1, '2015-02-08 13:31:35'),
(83, 'sss', 'ssss', 1, '2015-02-08 13:32:53'),
(84, 'dfgt', 'dfvdfv', 1, '2015-02-08 13:34:32'),
(85, 'Jovan', 'zdravevski', 1, '2015-02-08 13:38:08'),
(86, ';k;kl;l', '[[ml;kk', 1, '2015-02-08 13:39:09'),
(87, 'dvczdvz', 'zdc zd ', 1, '2015-02-08 13:39:39'),
(88, '[p[ok''l;', '[o', 1, '2015-02-08 13:40:11'),
(89, 'knk', 'kikkk', 1, '2015-02-08 13:40:50'),
(90, 'avzdsc', 'cszz', 1, '2015-02-08 13:41:18'),
(91, 'ljlkk', 'ddd', 1, '2015-02-08 13:41:47'),
(92, 'dddd', '', 1, '2015-02-08 13:44:09'),
(93, 'kkk', 'dd', 1, '2015-02-08 13:44:42'),
(94, 'ss', 'sssss', 1, '2015-02-08 13:45:50'),
(95, 'ddd', 'ddd', 1, '2015-02-08 13:53:56'),
(96, 'Jovan', 'jjj', 1, '2015-02-08 14:03:24'),
(97, 'kk;', 'jonjnl', 1, '2015-02-08 14:04:20'),
(98, 'csCAS', ' ZDD Z ', 1, '2015-02-08 14:12:31'),
(99, 'JJJJ', 'JJJ', 1, '2015-02-08 14:14:18'),
(100, 'ddd', 'dddd', 1, '2015-02-08 14:49:08'),
(101, 'kk', 'kjjk', 1, '2015-02-08 14:50:03'),
(102, 'jjj', 'kj ojnlj', 1, '2015-02-08 14:53:41'),
(103, 'kkjl jojn', 'lnil', 1, '2015-02-08 14:57:15'),
(104, 'ljlj', 'kjllkj', 1, '2015-02-08 15:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `description` text,
  `joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `email`, `pass`, `description`, `joined`) VALUES
(1, 'wcddew', ' wecwec', 'ddd@jj', 'fs', NULL, '2015-01-28 19:11:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_links`
--
ALTER TABLE `menu_links`
  ADD PRIMARY KEY (`mlid`), ADD KEY `plid` (`plid`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`pid`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_links`
--
ALTER TABLE `menu_links`
  MODIFY `mlid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_links`
--
ALTER TABLE `menu_links`
ADD CONSTRAINT `menu_links_ibfk_2` FOREIGN KEY (`plid`) REFERENCES `menu_links` (`mlid`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
