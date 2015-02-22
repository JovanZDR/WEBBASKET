-- phpMyAdmin SQL Dump
-- version 4.3.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 22, 2015 at 04:09 PM
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
-- Table structure for table `footer`
--

CREATE TABLE IF NOT EXISTS `footer` (
  `contact` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`contact`, `address`) VALUES
('Jovan.lund@gmail.com', 'Lund, 224 57 Vintergatan 5c');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `iid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `description` text,
  `uploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`iid`, `title`, `path`, `alt`, `description`, `uploaded`) VALUES
(1, 'Jack Nickolson', 'jack.jpg', NULL, 'Jack Nickolson', '2015-02-19 13:53:31'),
(2, 'Kobe Bryant', 'KobeBryant.jpg', NULL, 'Kobe Bryant', '2015-02-19 13:54:44'),
(3, 'Michael Jordan', 'jordan.jpg', NULL, 'Michael Jordan', '2015-02-19 13:55:19'),
(4, 'Jovan Zdravevski', 'jovan.jpg', NULL, 'Jovan Zdravevski', '2015-02-19 13:56:00'),
(5, 'Lebron James', 'lebron.jpg', NULL, 'Lebron James', '2015-02-19 13:56:36'),
(6, 'John Stockton', 'johns.jpg', NULL, 'John Stockton', '2015-02-22 15:16:08'),
(7, 'Kevin Spacey', 'kevin.jpg', NULL, 'Kevin Spacey', '2015-02-22 15:20:20'),
(8, 'Angela Merkel', 'merkel.jpg', NULL, 'Angela Merkel', '2015-02-22 15:46:54'),
(9, 'Shakespeare', 'shakespeare.jpg', NULL, 'Shakespeare', '2015-02-22 15:51:12'),
(10, 'Blue Ocean', 'blue.jpg', NULL, 'Blue Ocean', '2015-02-22 15:56:46'),
(11, 'me', 'me.jpg', NULL, 'me', '2015-02-22 16:00:50');

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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_links`
--

INSERT INTO `menu_links` (`mlid`, `title`, `path`, `plid`, `weight`) VALUES
(142, 'Home', '10', NULL, 1),
(143, 'Story', '11', NULL, 2),
(144, 'Purpose', '12', NULL, 1),
(145, 'Vision', '13', 144, 1),
(146, 'About', '14', NULL, 2),
(147, 'Strategy', '15', NULL, 3),
(148, 'Management', '16', 142, 1),
(149, 'Leadership', '17', 148, 2),
(150, 'Shakespeare', '18', 143, 1),
(151, 'Blue Ocean', '19', 147, 1),
(152, 'Creative ', '20', 149, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `pid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `img_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pid`, `title`, `body`, `img_id`, `user_id`, `video_id`, `created`) VALUES
(10, 'Organization', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue cursus quam vitae auctor. Sed euismod scelerisque neque ut rutrum. Praesent ullamcorper dolor eu ullamcorper tincidunt. Morbi a quam accumsan, laoreet tortor sed, ornare odio. Aliquam erat volutpat. Nunc tempor laoreet ipsum in fermentum. Ut in volutpat nisi. Nam molestie mollis sem, et laoreet dui. Quisque varius in quam ut feugiat. Nulla facilisi. Ut tristique tincidunt massa, ut elementum dolor pharetra placerat. Integer enim arcu, eleifend id ante et, varius lacinia quam. Morbi arcu nisi, pretium non aliquam vel, commodo at justo. In orci sem, interdum vel consequat vitae, gravida eget quam.  Aliquam bibendum porttitor nisi ac molestie. Fusce lacus ipsum, mattis sit amet magna eu, placerat cursus magna. Nunc iaculis volutpat tellus at faucibus. In sollicitudin pulvinar lacus, ut vestibulum ex porta ut. Pellentesque vel egestas mi. Phasellus tincidunt leo et iaculis accumsan. Suspendisse dictum sodales consequat. Nulla semper leo ac feugiat fringilla. Aliquam et pretium felis. Nullam augue sapien, volutpat ac lacus quis, fringilla bibendum risus. Vivamus finibus blandit sapien, in bibendum dolor rutrum sit amet. Nullam dapibus felis ac felis vehicula ultrices. Fusce at hendrerit libero. Fusce at dui massa. Proin vitae dapibus lacus, in mollis nisl.', 4, 1, NULL, '2015-02-20 14:34:37'),
(11, 'Top ten', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue cursus quam vitae auctor. Sed euismod scelerisque neque ut rutrum. Praesent ullamcorper dolor eu ullamcorper tincidunt. Morbi a quam accumsan, laoreet tortor sed, ornare odio. Aliquam erat volutpat. Nunc tempor laoreet ipsum in fermentum. Ut in volutpat nisi. Nam molestie mollis sem, et laoreet dui. Quisque varius in quam ut feugiat. Nulla facilisi. Ut tristique tincidunt massa, ut elementum dolor pharetra placerat. Integer enim arcu, eleifend id ante et, varius lacinia quam. Morbi arcu nisi, pretium non aliquam vel, commodo at justo. In orci sem, interdum vel consequat vitae, gravida eget quam.', 1, 1, NULL, '2015-02-20 14:35:12'),
(12, 'Greatness', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue cursus quam vitae auctor. Sed euismod scelerisque neque ut rutrum. Praesent ullamcorper dolor eu ullamcorper tincidunt. Morbi a quam accumsan, laoreet tortor sed, ornare odio. Aliquam erat volutpat. Nunc tempor laoreet ipsum in fermentum. Ut in volutpat nisi. Nam molestie mollis sem, et laoreet dui. Quisque varius in quam ut feugiat. Nulla facilisi. Ut tristique tincidunt massa, ut elementum dolor pharetra placerat. Integer enim arcu, eleifend id ante et, varius lacinia quam. Morbi arcu nisi, pretium non aliquam vel, commodo at justo. In orci sem, interdum vel consequat vitae, gravida eget quam.  Aliquam bibendum porttitor nisi ac molestie. Fusce lacus ipsum, mattis sit amet magna eu, placerat cursus magna. Nunc iaculis volutpat tellus at faucibus. In sollicitudin pulvinar lacus, ut vestibulum ex porta ut. Pellentesque vel egestas mi. Phasellus tincidunt leo et iaculis accumsan. Suspendisse dictum sodales consequat. Nulla semper leo ac feugiat fringilla. Aliquam et pretium felis. Nullam augue sapien, volutpat ac lacus quis, fringilla bibendum risus. Vivamus finibus blandit sapien, in bibendum dolor rutrum sit amet. Nullam dapibus felis ac felis vehicula ultrices. Fusce at hendrerit libero. Fusce at dui massa. Proin vitae dapibus lacus, in mollis nisl.', 3, 1, NULL, '2015-02-20 14:36:53'),
(13, 'Happiness', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue cursus quam vitae auctor. Sed euismod scelerisque neque ut rutrum. Praesent ullamcorper dolor eu ullamcorper tincidunt. Morbi a quam accumsan, laoreet tortor sed, ornare odio. Aliquam erat volutpat. Nunc tempor laoreet ipsum in fermentum. Ut in volutpat nisi. Nam molestie mollis sem, et laoreet dui. Quisque varius in quam ut feugiat. Nulla facilisi. Ut tristique tincidunt massa, ut elementum dolor pharetra placerat. Integer enim arcu, eleifend id ante et, varius lacinia quam. Morbi arcu nisi, pretium non aliquam vel, commodo at justo. In orci sem, interdum vel consequat vitae, gravida eget quam.  Aliquam bibendum porttitor nisi ac molestie. Fusce lacus ipsum, mattis sit amet magna eu, placerat cursus magna. Nunc iaculis volutpat tellus at faucibus. In sollicitudin pulvinar lacus, ut vestibulum ex porta ut. Pellentesque vel egestas mi. Phasellus tincidunt leo et iaculis accumsan. Suspendisse dictum sodales consequat. Nulla semper leo ac feugiat fringilla. Aliquam et pretium felis. Nullam augue sapien, volutpat ac lacus quis, fringilla bibendum risus. Vivamus finibus blandit sapien, in bibendum dolor rutrum sit amet. Nullam dapibus felis ac felis vehicula ultrices. Fusce at hendrerit libero. Fusce at dui massa. Proin vitae dapibus lacus, in mollis nisl.', 2, 1, NULL, '2015-02-20 14:37:35'),
(14, 'Voting', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue cursus quam vitae auctor. Sed euismod scelerisque neque ut rutrum. Praesent ullamcorper dolor eu ullamcorper tincidunt. Morbi a quam accumsan, laoreet tortor sed, ornare odio. Aliquam erat volutpat. Nunc tempor laoreet ipsum in fermentum. Ut in volutpat nisi. Nam molestie mollis sem, et laoreet dui. Quisque varius in quam ut feugiat. Nulla facilisi. Ut tristique tincidunt massa, ut elementum dolor pharetra placerat. Integer enim arcu, eleifend id ante et, varius lacinia quam. Morbi arcu nisi, pretium non aliquam vel, commodo at justo. In orci sem, interdum vel consequat vitae, gravida eget quam.\n\nAliquam bibendum porttitor nisi ac molestie. Fusce lacus ipsum, mattis sit amet magna eu, placerat cursus magna. Nunc iaculis volutpat tellus at faucibus. In sollicitudin pulvinar lacus, ut vestibulum ex porta ut. Pellentesque vel egestas mi. Phasellus tincidunt leo et iaculis accumsan. Suspendisse dictum sodales consequat. Nulla semper leo ac feugiat fringilla. Aliquam et pretium felis. Nullam augue sapien, volutpat ac lacus quis, fringilla bibendum risus. Vivamus finibus blandit sapien, in bibendum dolor rutrum sit amet. Nullam dapibus felis ac felis vehicula ultrices. Fusce at hendrerit libero. Fusce at dui massa. Proin vitae dapibus lacus, in mollis nisl.', 5, 1, NULL, '2015-02-22 14:54:46'),
(15, 'Success', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue cursus quam vitae auctor. Sed euismod scelerisque neque ut rutrum. Praesent ullamcorper dolor eu ullamcorper tincidunt. Morbi a quam accumsan, laoreet tortor sed, ornare odio. Aliquam erat volutpat. Nunc tempor laoreet ipsum in fermentum. Ut in volutpat nisi. Nam molestie mollis sem, et laoreet dui. Quisque varius in quam ut feugiat. Nulla facilisi. Ut tristique tincidunt massa, ut elementum dolor pharetra placerat. Integer enim arcu, eleifend id ante et, varius lacinia quam. Morbi arcu nisi, pretium non aliquam vel, commodo at justo. In orci sem, interdum vel consequat vitae, gravida eget quam.\n\nAliquam bibendum porttitor nisi ac molestie. Fusce lacus ipsum, mattis sit amet magna eu, placerat cursus magna. Nunc iaculis volutpat tellus at faucibus. In sollicitudin pulvinar lacus, ut vestibulum ex porta ut. Pellentesque vel egestas mi. Phasellus tincidunt leo et iaculis accumsan. Suspendisse dictum sodales consequat. Nulla semper leo ac feugiat fringilla. Aliquam et pretium felis. Nullam augue sapien, volutpat ac lacus quis, fringilla bibendum risus. Vivamus finibus blandit sapien, in bibendum dolor rutrum sit amet. Nullam dapibus felis ac felis vehicula ultrices. Fusce at hendrerit libero. Fusce at dui massa. Proin vitae dapibus lacus, in mollis nisl.', 6, 1, NULL, '2015-02-22 15:17:11'),
(16, 'Culture', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue cursus quam vitae auctor. Sed euismod scelerisque neque ut rutrum. Praesent ullamcorper dolor eu ullamcorper tincidunt. Morbi a quam accumsan, laoreet tortor sed, ornare odio. Aliquam erat volutpat. Nunc tempor laoreet ipsum in fermentum. Ut in volutpat nisi. Nam molestie mollis sem, et laoreet dui. Quisque varius in quam ut feugiat. Nulla facilisi. Ut tristique tincidunt massa, ut elementum dolor pharetra placerat. Integer enim arcu, eleifend id ante et, varius lacinia quam. Morbi arcu nisi, pretium non aliquam vel, commodo at justo. In orci sem, interdum vel consequat vitae, gravida eget quam.\n\nAliquam bibendum porttitor nisi ac molestie. Fusce lacus ipsum, mattis sit amet magna eu, placerat cursus magna. Nunc iaculis volutpat tellus at faucibus. In sollicitudin pulvinar lacus, ut vestibulum ex porta ut. Pellentesque vel egestas mi. Phasellus tincidunt leo et iaculis accumsan. Suspendisse dictum sodales consequat. Nulla semper leo ac feugiat fringilla. Aliquam et pretium felis. Nullam augue sapien, volutpat ac lacus quis, fringilla bibendum risus. Vivamus finibus blandit sapien, in bibendum dolor rutrum sit amet. Nullam dapibus felis ac felis vehicula ultrices. Fusce at hendrerit libero. Fusce at dui massa. Proin vitae dapibus lacus, in mollis nisl.', 7, 1, NULL, '2015-02-22 15:44:04'),
(17, 'Angela Merkel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue cursus quam vitae auctor. Sed euismod scelerisque neque ut rutrum. Praesent ullamcorper dolor eu ullamcorper tincidunt. Morbi a quam accumsan, laoreet tortor sed, ornare odio. Aliquam erat volutpat. Nunc tempor laoreet ipsum in fermentum. Ut in volutpat nisi. Nam molestie mollis sem, et laoreet dui. Quisque varius in quam ut feugiat. Nulla facilisi. Ut tristique tincidunt massa, ut elementum dolor pharetra placerat. Integer enim arcu, eleifend id ante et, varius lacinia quam. Morbi arcu nisi, pretium non aliquam vel, commodo at justo. In orci sem, interdum vel consequat vitae, gravida eget quam.\n\nAliquam bibendum porttitor nisi ac molestie. Fusce lacus ipsum, mattis sit amet magna eu, placerat cursus magna. Nunc iaculis volutpat tellus at faucibus. In sollicitudin pulvinar lacus, ut vestibulum ex porta ut. Pellentesque vel egestas mi. Phasellus tincidunt leo et iaculis accumsan. Suspendisse dictum sodales consequat. Nulla semper leo ac feugiat fringilla. Aliquam et pretium felis. Nullam augue sapien, volutpat ac lacus quis, fringilla bibendum risus. Vivamus finibus blandit sapien, in bibendum dolor rutrum sit amet. Nullam dapibus felis ac felis vehicula ultrices. Fusce at hendrerit libero. Fusce at dui massa. Proin vitae dapibus lacus, in mollis nisl.', 8, 1, NULL, '2015-02-22 15:47:59'),
(18, 'Storyteller', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue cursus quam vitae auctor. Sed euismod scelerisque neque ut rutrum. Praesent ullamcorper dolor eu ullamcorper tincidunt. Morbi a quam accumsan, laoreet tortor sed, ornare odio. Aliquam erat volutpat. Nunc tempor laoreet ipsum in fermentum. Ut in volutpat nisi. Nam molestie mollis sem, et laoreet dui. Quisque varius in quam ut feugiat. Nulla facilisi. Ut tristique tincidunt massa, ut elementum dolor pharetra placerat. Integer enim arcu, eleifend id ante et, varius lacinia quam. Morbi arcu nisi, pretium non aliquam vel, commodo at justo. In orci sem, interdum vel consequat vitae, gravida eget quam.\n\nAliquam bibendum porttitor nisi ac molestie. Fusce lacus ipsum, mattis sit amet magna eu, placerat cursus magna. Nunc iaculis volutpat tellus at faucibus. In sollicitudin pulvinar lacus, ut vestibulum ex porta ut. Pellentesque vel egestas mi. Phasellus tincidunt leo et iaculis accumsan. Suspendisse dictum sodales consequat. Nulla semper leo ac feugiat fringilla. Aliquam et pretium felis. Nullam augue sapien, volutpat ac lacus quis, fringilla bibendum risus. Vivamus finibus blandit sapien, in bibendum dolor rutrum sit amet. Nullam dapibus felis ac felis vehicula ultrices. Fusce at hendrerit libero. Fusce at dui massa. Proin vitae dapibus lacus, in mollis nisl.', 9, 1, NULL, '2015-02-22 15:53:01'),
(19, 'Market Leader', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue cursus quam vitae auctor. Sed euismod scelerisque neque ut rutrum. Praesent ullamcorper dolor eu ullamcorper tincidunt. Morbi a quam accumsan, laoreet tortor sed, ornare odio. Aliquam erat volutpat. Nunc tempor laoreet ipsum in fermentum. Ut in volutpat nisi. Nam molestie mollis sem, et laoreet dui. Quisque varius in quam ut feugiat. Nulla facilisi. Ut tristique tincidunt massa, ut elementum dolor pharetra placerat. Integer enim arcu, eleifend id ante et, varius lacinia quam. Morbi arcu nisi, pretium non aliquam vel, commodo at justo. In orci sem, interdum vel consequat vitae, gravida eget quam.\n\nAliquam bibendum porttitor nisi ac molestie. Fusce lacus ipsum, mattis sit amet magna eu, placerat cursus magna. Nunc iaculis volutpat tellus at faucibus. In sollicitudin pulvinar lacus, ut vestibulum ex porta ut. Pellentesque vel egestas mi. Phasellus tincidunt leo et iaculis accumsan. Suspendisse dictum sodales consequat. Nulla semper leo ac feugiat fringilla. Aliquam et pretium felis. Nullam augue sapien, volutpat ac lacus quis, fringilla bibendum risus. Vivamus finibus blandit sapien, in bibendum dolor rutrum sit amet. Nullam dapibus felis ac felis vehicula ultrices. Fusce at hendrerit libero. Fusce at dui massa. Proin vitae dapibus lacus, in mollis nisl.', 10, 1, NULL, '2015-02-22 15:57:51'),
(20, 'Me', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue cursus quam vitae auctor. Sed euismod scelerisque neque ut rutrum. Praesent ullamcorper dolor eu ullamcorper tincidunt. Morbi a quam accumsan, laoreet tortor sed, ornare odio. Aliquam erat volutpat. Nunc tempor laoreet ipsum in fermentum. Ut in volutpat nisi. Nam molestie mollis sem, et laoreet dui. Quisque varius in quam ut feugiat. Nulla facilisi. Ut tristique tincidunt massa, ut elementum dolor pharetra placerat. Integer enim arcu, eleifend id ante et, varius lacinia quam. Morbi arcu nisi, pretium non aliquam vel, commodo at justo. In orci sem, interdum vel consequat vitae, gravida eget quam.\n\nAliquam bibendum porttitor nisi ac molestie. Fusce lacus ipsum, mattis sit amet magna eu, placerat cursus magna. Nunc iaculis volutpat tellus at faucibus. In sollicitudin pulvinar lacus, ut vestibulum ex porta ut. Pellentesque vel egestas mi. Phasellus tincidunt leo et iaculis accumsan. Suspendisse dictum sodales consequat. Nulla semper leo ac feugiat fringilla. Aliquam et pretium felis. Nullam augue sapien, volutpat ac lacus quis, fringilla bibendum risus. Vivamus finibus blandit sapien, in bibendum dolor rutrum sit amet. Nullam dapibus felis ac felis vehicula ultrices. Fusce at hendrerit libero. Fusce at dui massa. Proin vitae dapibus lacus, in mollis nisl.', 11, 1, NULL, '2015-02-22 16:02:13');

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
(1, 'Jovan', 'Zdravevski', 'kkka', 'kkkk', 'cefcefcec', '2015-02-10 10:34:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `menu_links`
--
ALTER TABLE `menu_links`
  ADD PRIMARY KEY (`mlid`), ADD KEY `plid` (`plid`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`pid`), ADD KEY `user_id` (`user_id`), ADD KEY `img_id` (`img_id`), ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `menu_links`
--
ALTER TABLE `menu_links`
  MODIFY `mlid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
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
ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`),
ADD CONSTRAINT `pages_ibfk_2` FOREIGN KEY (`img_id`) REFERENCES `images` (`iid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
