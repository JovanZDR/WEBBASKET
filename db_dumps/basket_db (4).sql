-- phpMyAdmin SQL Dump
-- version 4.3.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2015 at 02:08 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_links`
--

INSERT INTO `menu_links` (`mlid`, `title`, `path`, `plid`, `weight`) VALUES
(118, 'Home', '174', NULL, -2),
(119, 'About', '175', NULL, 1),
(120, 'Products', '176', NULL, 1),
(121, 'Best Player', '177', 120, 1),
(122, 'Future', '178', NULL, 1),
(123, 'Log in ', '179', NULL, 3),
(124, 'Admin', '180', NULL, 1),
(125, 'pakti', '181', 122, 2),
(126, 'Jobs', '182', 122, 1),
(127, 'Challenge', '183', 121, 2),
(128, 'Payment', '184', 124, 3),
(129, 'Organization', '185', 119, 1),
(130, 'Managment', '186', 129, -2);

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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pid`, `title`, `body`, `user_id`, `created`) VALUES
(174, 'Complexity', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pulvinar diam augue, non viverra arcu tempus a. Nulla dapibus a felis ac molestie. Sed bibendum maximus justo. Donec fermentum sem a egestas lobortis. Donec vitae imperdiet urna. In nec lobortis orci. Maecenas eget convallis sapien. Vivamus vitae magna nec nibh interdum pharetra. Aenean id augue vitae purus blandit aliquet. Phasellus accumsan dignissim volutpat. Curabitur dictum elementum lacus, quis porttitor metus pulvinar a. In varius nisi id tincidunt pharetra. Proin tellus erat, ornare dictum nunc eu, porttitor mollis turpis. Vivamus nec egestas tellus. Fusce gravida venenatis dolor vel consectetur. Pellentesque gravida vestibulum mauris sit amet pharetra. Ut vestibulum pretium elit, vitae semper orci elementum sit amet. Nam venenatis, leo ac ullamcorper ultrices, augue felis laoreet turpis, quis tincidunt est dui nec magna. Donec vitae ipsum ultricies, accumsan dolor non, dictum libero. Vivamus ac vestibulum nisl. Etiam eu odio nec eros suscipit porta. Nunc laoreet pellentesque ante sed congue. Suspendisse nibh lectus, tincidunt eu pretium eu, mollis eu nisi. Quisque eget lacus nec nunc sodales mollis. Ut felis quam, viverra non diam quis, interdum consectetur tellus. Etiam consequat, nulla quis tempor porttitor, dolor nunc vehicula ipsum, ut sagittis elit nibh vitae magna. Morbi euismod rhoncus consequat. Praesent lacinia, ex a luctus tincidunt, ante tortor vestibulum lorem, sit amet gravida enim magna vel tortor. Quisque vehicula tortor vel purus feugiat faucibus. In finibus est nec leo maximus, ut varius nulla mattis. Aliquam erat volutpat.', 1, '2015-02-17 15:09:08'),
(175, 'basket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pulvinar diam augue, non viverra arcu tempus a. Nulla dapibus a felis ac molestie. Sed bibendum maximus justo. Donec fermentum sem a egestas lobortis. Donec vitae imperdiet urna. In nec lobortis orci. Maecenas eget convallis sapien. Vivamus vitae magna nec nibh interdum pharetra. Aenean id augue vitae purus blandit aliquet. Phasellus accumsan dignissim volutpat. Curabitur dictum elementum lacus, quis porttitor metus pulvinar a. In varius nisi id tincidunt pharetra. Proin tellus erat, ornare dictum nunc eu, porttitor mollis turpis. Vivamus nec egestas tellus. Fusce gravida venenatis dolor vel consectetur. Pellentesque gravida vestibulum mauris sit amet pharetra. Ut vestibulum pretium elit, vitae semper orci elementum sit amet. Nam venenatis, leo ac ullamcorper ultrices, augue felis laoreet turpis, quis tincidunt est dui nec magna. Donec vitae ipsum ultricies, accumsan dolor non, dictum libero. Vivamus ac vestibulum nisl. Etiam eu odio nec eros suscipit porta. Nunc laoreet pellentesque ante sed congue. Suspendisse nibh lectus, tincidunt eu pretium eu, mollis eu nisi. Quisque eget lacus nec nunc sodales mollis. Ut felis quam, viverra non diam quis, interdum consectetur tellus. Etiam consequat, nulla quis tempor porttitor, dolor nunc vehicula ipsum, ut sagittis elit nibh vitae magna. Morbi euismod rhoncus consequat. Praesent lacinia, ex a luctus tincidunt, ante tortor vestibulum lorem, sit amet gravida enim magna vel tortor. Quisque vehicula tortor vel purus feugiat faucibus. In finibus est nec leo maximus, ut varius nulla mattis. Aliquam erat volutpat.', 1, '2015-02-17 15:11:02'),
(176, 'under', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pulvinar diam augue, non viverra arcu tempus a. Nulla dapibus a felis ac molestie. Sed bibendum maximus justo. Donec fermentum sem a egestas lobortis. Donec vitae imperdiet urna. In nec lobortis orci. Maecenas eget convallis sapien. Vivamus vitae magna nec nibh interdum pharetra. Aenean id augue vitae purus blandit aliquet. Phasellus accumsan dignissim volutpat. Curabitur dictum elementum lacus, quis porttitor metus pulvinar a. In varius nisi id tincidunt pharetra. Proin tellus erat, ornare dictum nunc eu, porttitor mollis turpis. Vivamus nec egestas tellus. Fusce gravida venenatis dolor vel consectetur. Pellentesque gravida vestibulum mauris sit amet pharetra. Ut vestibulum pretium elit, vitae semper orci elementum sit amet. Nam venenatis, leo ac ullamcorper ultrices, augue felis laoreet turpis, quis tincidunt est dui nec magna. Donec vitae ipsum ultricies, accumsan dolor non, dictum libero. Vivamus ac vestibulum nisl. Etiam eu odio nec eros suscipit porta. Nunc laoreet pellentesque ante sed congue. Suspendisse nibh lectus, tincidunt eu pretium eu, mollis eu nisi. Quisque eget lacus nec nunc sodales mollis. Ut felis quam, viverra non diam quis, interdum consectetur tellus. Etiam consequat, nulla quis tempor porttitor, dolor nunc vehicula ipsum, ut sagittis elit nibh vitae magna. Morbi euismod rhoncus consequat. Praesent lacinia, ex a luctus tincidunt, ante tortor vestibulum lorem, sit amet gravida enim magna vel tortor. Quisque vehicula tortor vel purus feugiat faucibus. In finibus est nec leo maximus, ut varius nulla mattis. Aliquam erat volutpat.', 1, '2015-02-17 15:13:10'),
(177, 'basket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pulvinar diam augue, non viverra arcu tempus a. Nulla dapibus a felis ac molestie. Sed bibendum maximus justo. Donec fermentum sem a egestas lobortis. Donec vitae imperdiet urna. In nec lobortis orci. Maecenas eget convallis sapien. Vivamus vitae magna nec nibh interdum pharetra. Aenean id augue vitae purus blandit aliquet. Phasellus accumsan dignissim volutpat. Curabitur dictum elementum lacus, quis porttitor metus pulvinar a. In varius nisi id tincidunt pharetra. Proin tellus erat, ornare dictum nunc eu, porttitor mollis turpis. Vivamus nec egestas tellus. Fusce gravida venenatis dolor vel consectetur. Pellentesque gravida vestibulum mauris sit amet pharetra. Ut vestibulum pretium elit, vitae semper orci elementum sit amet. Nam venenatis, leo ac ullamcorper ultrices, augue felis laoreet turpis, quis tincidunt est dui nec magna. Donec vitae ipsum ultricies, accumsan dolor non, dictum libero. Vivamus ac vestibulum nisl. Etiam eu odio nec eros suscipit porta. Nunc laoreet pellentesque ante sed congue. Suspendisse nibh lectus, tincidunt eu pretium eu, mollis eu nisi. Quisque eget lacus nec nunc sodales mollis. Ut felis quam, viverra non diam quis, interdum consectetur tellus. Etiam consequat, nulla quis tempor porttitor, dolor nunc vehicula ipsum, ut sagittis elit nibh vitae magna. Morbi euismod rhoncus consequat. Praesent lacinia, ex a luctus tincidunt, ante tortor vestibulum lorem, sit amet gravida enim magna vel tortor. Quisque vehicula tortor vel purus feugiat faucibus. In finibus est nec leo maximus, ut varius nulla mattis. Aliquam erat volutpat.', 1, '2015-02-17 15:15:42'),
(178, 'Employee', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pulvinar diam augue, non viverra arcu tempus a. Nulla dapibus a felis ac molestie. Sed bibendum maximus justo. Donec fermentum sem a egestas lobortis. Donec vitae imperdiet urna. In nec lobortis orci. Maecenas eget convallis sapien. Vivamus vitae magna nec nibh interdum pharetra. Aenean id augue vitae purus blandit aliquet. Phasellus accumsan dignissim volutpat. Curabitur dictum elementum lacus, quis porttitor metus pulvinar a. In varius nisi id tincidunt pharetra. Proin tellus erat, ornare dictum nunc eu, porttitor mollis turpis. Vivamus nec egestas tellus. Fusce gravida venenatis dolor vel consectetur. Pellentesque gravida vestibulum mauris sit amet pharetra. Ut vestibulum pretium elit, vitae semper orci elementum sit amet. Nam venenatis, leo ac ullamcorper ultrices, augue felis laoreet turpis, quis tincidunt est dui nec magna. Donec vitae ipsum ultricies, accumsan dolor non, dictum libero. Vivamus ac vestibulum nisl. Etiam eu odio nec eros suscipit porta. Nunc laoreet pellentesque ante sed congue. Suspendisse nibh lectus, tincidunt eu pretium eu, mollis eu nisi. Quisque eget lacus nec nunc sodales mollis. Ut felis quam, viverra non diam quis, interdum consectetur tellus. Etiam consequat, nulla quis tempor porttitor, dolor nunc vehicula ipsum, ut sagittis elit nibh vitae magna. Morbi euismod rhoncus consequat. Praesent lacinia, ex a luctus tincidunt, ante tortor vestibulum lorem, sit amet gravida enim magna vel tortor. Quisque vehicula tortor vel purus feugiat faucibus. In finibus est nec leo maximus, ut varius nulla mattis. Aliquam erat volutpat.', 1, '2015-02-18 09:26:34'),
(179, 'Marketing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pulvinar diam augue, non viverra arcu tempus a. Nulla dapibus a felis ac molestie. Sed bibendum maximus justo. Donec fermentum sem a egestas lobortis. Donec vitae imperdiet urna. In nec lobortis orci. Maecenas eget convallis sapien. Vivamus vitae magna nec nibh interdum pharetra. Aenean id augue vitae purus blandit aliquet. Phasellus accumsan dignissim volutpat. Curabitur dictum elementum lacus, quis porttitor metus pulvinar a. In varius nisi id tincidunt pharetra. Proin tellus erat, ornare dictum nunc eu, porttitor mollis turpis. Vivamus nec egestas tellus. Fusce gravida venenatis dolor vel consectetur. Pellentesque gravida vestibulum mauris sit amet pharetra. Ut vestibulum pretium elit, vitae semper orci elementum sit amet. Nam venenatis, leo ac ullamcorper ultrices, augue felis laoreet turpis, quis tincidunt est dui nec magna. Donec vitae ipsum ultricies, accumsan dolor non, dictum libero. Vivamus ac vestibulum nisl. Etiam eu odio nec eros suscipit porta. Nunc laoreet pellentesque ante sed congue. Suspendisse nibh lectus, tincidunt eu pretium eu, mollis eu nisi. Quisque eget lacus nec nunc sodales mollis. Ut felis quam, viverra non diam quis, interdum consectetur tellus. Etiam consequat, nulla quis tempor porttitor, dolor nunc vehicula ipsum, ut sagittis elit nibh vitae magna. Morbi euismod rhoncus consequat. Praesent lacinia, ex a luctus tincidunt, ante tortor vestibulum lorem, sit amet gravida enim magna vel tortor. Quisque vehicula tortor vel purus feugiat faucibus. In finibus est nec leo maximus, ut varius nulla mattis. Aliquam erat volutpat.', 1, '2015-02-18 09:55:28'),
(180, 'Company', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pulvinar diam augue, non viverra arcu tempus a. Nulla dapibus a felis ac molestie. Sed bibendum maximus justo. Donec fermentum sem a egestas lobortis. Donec vitae imperdiet urna. In nec lobortis orci. Maecenas eget convallis sapien. Vivamus vitae magna nec nibh interdum pharetra. Aenean id augue vitae purus blandit aliquet. Phasellus accumsan dignissim volutpat. Curabitur dictum elementum lacus, quis porttitor metus pulvinar a. In varius nisi id tincidunt pharetra. Proin tellus erat, ornare dictum nunc eu, porttitor mollis turpis. Vivamus nec egestas tellus. Fusce gravida venenatis dolor vel consectetur. Pellentesque gravida vestibulum mauris sit amet pharetra. Ut vestibulum pretium elit, vitae semper orci elementum sit amet. Nam venenatis, leo ac ullamcorper ultrices, augue felis laoreet turpis, quis tincidunt est dui nec magna. Donec vitae ipsum ultricies, accumsan dolor non, dictum libero. Vivamus ac vestibulum nisl. Etiam eu odio nec eros suscipit porta. Nunc laoreet pellentesque ante sed congue. Suspendisse nibh lectus, tincidunt eu pretium eu, mollis eu nisi. Quisque eget lacus nec nunc sodales mollis. Ut felis quam, viverra non diam quis, interdum consectetur tellus. Etiam consequat, nulla quis tempor porttitor, dolor nunc vehicula ipsum, ut sagittis elit nibh vitae magna. Morbi euismod rhoncus consequat. Praesent lacinia, ex a luctus tincidunt, ante tortor vestibulum lorem, sit amet gravida enim magna vel tortor. Quisque vehicula tortor vel purus feugiat faucibus. In finibus est nec leo maximus, ut varius nulla mattis. Aliquam erat volutpat.', 1, '2015-02-18 09:58:13'),
(181, 'Underfun', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pulvinar diam augue, non viverra arcu tempus a. Nulla dapibus a felis ac molestie. Sed bibendum maximus justo. Donec fermentum sem a egestas lobortis. Donec vitae imperdiet urna. In nec lobortis orci. Maecenas eget convallis sapien. Vivamus vitae magna nec nibh interdum pharetra. Aenean id augue vitae purus blandit aliquet. Phasellus accumsan dignissim volutpat. Curabitur dictum elementum lacus, quis porttitor metus pulvinar a. In varius nisi id tincidunt pharetra. Proin tellus erat, ornare dictum nunc eu, porttitor mollis turpis. Vivamus nec egestas tellus. Fusce gravida venenatis dolor vel consectetur. Pellentesque gravida vestibulum mauris sit amet pharetra. Ut vestibulum pretium elit, vitae semper orci elementum sit amet. Nam venenatis, leo ac ullamcorper ultrices, augue felis laoreet turpis, quis tincidunt est dui nec magna. Donec vitae ipsum ultricies, accumsan dolor non, dictum libero. Vivamus ac vestibulum nisl. Etiam eu odio nec eros suscipit porta. Nunc laoreet pellentesque ante sed congue. Suspendisse nibh lectus, tincidunt eu pretium eu, mollis eu nisi. Quisque eget lacus nec nunc sodales mollis. Ut felis quam, viverra non diam quis, interdum consectetur tellus. Etiam consequat, nulla quis tempor porttitor, dolor nunc vehicula ipsum, ut sagittis elit nibh vitae magna. Morbi euismod rhoncus consequat. Praesent lacinia, ex a luctus tincidunt, ante tortor vestibulum lorem, sit amet gravida enim magna vel tortor. Quisque vehicula tortor vel purus feugiat faucibus. In finibus est nec leo maximus, ut varius nulla mattis. Aliquam erat volutpat.', 1, '2015-02-18 12:26:01'),
(182, 'Jobs', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pulvinar diam augue, non viverra arcu tempus a. Nulla dapibus a felis ac molestie. Sed bibendum maximus justo. Donec fermentum sem a egestas lobortis. Donec vitae imperdiet urna. In nec lobortis orci. Maecenas eget convallis sapien. Vivamus vitae magna nec nibh interdum pharetra. Aenean id augue vitae purus blandit aliquet. Phasellus accumsan dignissim volutpat. Curabitur dictum elementum lacus, quis porttitor metus pulvinar a.\n\nIn varius nisi id tincidunt pharetra. Proin tellus erat, ornare dictum nunc eu, porttitor mollis turpis. Vivamus nec egestas tellus. Fusce gravida venenatis dolor vel consectetur. Pellentesque gravida vestibulum mauris sit amet pharetra. Ut vestibulum pretium elit, vitae semper orci elementum sit amet. Nam venenatis, leo ac ullamcorper ultrices, augue felis laoreet turpis, quis tincidunt est dui nec magna.\n\nDonec vitae ipsum ultricies, accumsan dolor non, dictum libero. Vivamus ac vestibulum nisl. Etiam eu odio nec eros suscipit porta. Nunc laoreet pellentesque ante sed congue. Suspendisse nibh lectus, tincidunt eu pretium eu, mollis eu nisi. Quisque eget lacus nec nunc sodales mollis. Ut felis quam, viverra non diam quis, interdum consectetur tellus. Etiam consequat, nulla quis tempor porttitor, dolor nunc vehicula ipsum, ut sagittis elit nibh vitae magna. Morbi euismod rhoncus consequat. Praesent lacinia, ex a luctus tincidunt, ante tortor vestibulum lorem, sit amet gravida enim magna vel tortor. Quisque vehicula tortor vel purus feugiat faucibus. In finibus est nec leo maximus, ut varius nulla mattis. Aliquam erat volutpat.', 1, '2015-02-18 13:40:47'),
(183, 'Challenge', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pulvinar diam augue, non viverra arcu tempus a. Nulla dapibus a felis ac molestie. Sed bibendum maximus justo. Donec fermentum sem a egestas lobortis. Donec vitae imperdiet urna. In nec lobortis orci. Maecenas eget convallis sapien. Vivamus vitae magna nec nibh interdum pharetra. Aenean id augue vitae purus blandit aliquet. Phasellus accumsan dignissim volutpat. Curabitur dictum elementum lacus, quis porttitor metus pulvinar a.\n\nIn varius nisi id tincidunt pharetra. Proin tellus erat, ornare dictum nunc eu, porttitor mollis turpis. Vivamus nec egestas tellus. Fusce gravida venenatis dolor vel consectetur. Pellentesque gravida vestibulum mauris sit amet pharetra. Ut vestibulum pretium elit, vitae semper orci elementum sit amet. Nam venenatis, leo ac ullamcorper ultrices, augue felis laoreet turpis, quis tincidunt est dui nec magna.\n\n', 1, '2015-02-18 13:41:30'),
(184, 'Payment', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pulvinar diam augue, non viverra arcu tempus a. Nulla dapibus a felis ac molestie. Sed bibendum maximus justo. Donec fermentum sem a egestas lobortis. Donec vitae imperdiet urna. In nec lobortis orci. Maecenas eget convallis sapien. Vivamus vitae magna nec nibh interdum pharetra. Aenean id augue vitae purus blandit aliquet. Phasellus accumsan dignissim volutpat. Curabitur dictum elementum lacus, quis porttitor metus pulvinar a.\n\nIn varius nisi id tincidunt pharetra. Proin tellus erat, ornare dictum nunc eu, porttitor mollis turpis. Vivamus nec egestas tellus. Fusce gravida venenatis dolor vel consectetur. Pellentesque gravida vestibulum mauris sit amet pharetra. Ut vestibulum pretium elit, vitae semper orci elementum sit amet. Nam venenatis, leo ac ullamcorper ultrices, augue felis laoreet turpis, quis tincidunt est dui nec magna.\n\nDonec vitae ipsum ultricies, accumsan dolor non, dictum libero. Vivamus ac vestibulum nisl. Etiam eu odio nec eros suscipit porta. Nunc laoreet pellentesque ante sed congue. Suspendisse nibh lectus, tincidunt eu pretium eu, mollis eu nisi. Quisque eget lacus nec nunc sodales mollis. Ut felis quam, viverra non diam quis, interdum consectetur tellus. Etiam consequat, nulla quis tempor porttitor, dolor nunc vehicula ipsum, ut sagittis elit nibh vitae magna. Morbi euismod rhoncus consequat. Praesent lacinia, ex a luctus tincidunt, ante tortor vestibulum lorem, sit amet gravida enim magna vel tortor. Quisque vehicula tortor vel purus feugiat faucibus. In finibus est nec leo maximus, ut varius nulla mattis. Aliquam erat volutpat.', 1, '2015-02-18 13:42:09'),
(185, 'Organization', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pulvinar diam augue, non viverra arcu tempus a. Nulla dapibus a felis ac molestie. Sed bibendum maximus justo. Donec fermentum sem a egestas lobortis. Donec vitae imperdiet urna. In nec lobortis orci. Maecenas eget convallis sapien. Vivamus vitae magna nec nibh interdum pharetra. Aenean id augue vitae purus blandit aliquet. Phasellus accumsan dignissim volutpat. Curabitur dictum elementum lacus, quis porttitor metus pulvinar a.\n\nIn varius nisi id tincidunt pharetra. Proin tellus erat, ornare dictum nunc eu, porttitor mollis turpis. Vivamus nec egestas tellus. Fusce gravida venenatis dolor vel consectetur. Pellentesque gravida vestibulum mauris sit amet pharetra. Ut vestibulum pretium elit, vitae semper orci elementum sit amet. Nam venenatis, leo ac ullamcorper ultrices, augue felis laoreet turpis, quis tincidunt est dui nec magna.\n\nDonec vitae ipsum ultricies, accumsan dolor non, dictum libero. Vivamus ac vestibulum nisl. Etiam eu odio nec eros suscipit porta. Nunc laoreet pellentesque ante sed congue. Suspendisse nibh lectus, tincidunt eu pretium eu, mollis eu nisi. Quisque eget lacus nec nunc sodales mollis. Ut felis quam, viverra non diam quis, interdum consectetur tellus. Etiam consequat, nulla quis tempor porttitor, dolor nunc vehicula ipsum, ut sagittis elit nibh vitae magna. Morbi euismod rhoncus consequat. Praesent lacinia, ex a luctus tincidunt, ante tortor vestibulum lorem, sit amet gravida enim magna vel tortor. Quisque vehicula tortor vel purus feugiat faucibus. In finibus est nec leo maximus, ut varius nulla mattis. Aliquam erat volutpat.', 1, '2015-02-18 13:42:54'),
(186, 'Managmenet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pulvinar diam augue, non viverra arcu tempus a. Nulla dapibus a felis ac molestie. Sed bibendum maximus justo. Donec fermentum sem a egestas lobortis. Donec vitae imperdiet urna. In nec lobortis orci. Maecenas eget convallis sapien. Vivamus vitae magna nec nibh interdum pharetra. Aenean id augue vitae purus blandit aliquet. Phasellus accumsan dignissim volutpat. Curabitur dictum elementum lacus, quis porttitor metus pulvinar a.\n\nIn varius nisi id tincidunt pharetra. Proin tellus erat, ornare dictum nunc eu, porttitor mollis turpis. Vivamus nec egestas tellus. Fusce gravida venenatis dolor vel consectetur. Pellentesque gravida vestibulum mauris sit amet pharetra. Ut vestibulum pretium elit, vitae semper orci elementum sit amet. Nam venenatis, leo ac ullamcorper ultrices, augue felis laoreet turpis, quis tincidunt est dui nec magna.\n\nDonec vitae ipsum ultricies, accumsan dolor non, dictum libero. Vivamus ac vestibulum nisl. Etiam eu odio nec eros suscipit porta. Nunc laoreet pellentesque ante sed congue. Suspendisse nibh lectus, tincidunt eu pretium eu, mollis eu nisi. Quisque eget lacus nec nunc sodales mollis. Ut felis quam, viverra non diam quis, interdum consectetur tellus. Etiam consequat, nulla quis tempor porttitor, dolor nunc vehicula ipsum, ut sagittis elit nibh vitae magna. Morbi euismod rhoncus consequat. Praesent lacinia, ex a luctus tincidunt, ante tortor vestibulum lorem, sit amet gravida enim magna vel tortor. Quisque vehicula tortor vel purus feugiat faucibus. In finibus est nec leo maximus, ut varius nulla mattis. Aliquam erat volutpat.', 1, '2015-02-18 13:43:32');

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
  MODIFY `mlid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=187;
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
