-- phpMyAdmin SQL Dump
-- version 4.2.3deb1.precise~ppa.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2015 at 06:55 PM
-- Server version: 5.5.43-0ubuntu0.12.04.1
-- PHP Version: 5.3.10-1ubuntu3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `taskmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
`id` int(11) NOT NULL,
  `status_name` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status_name`) VALUES
(1, 'New'),
(2, 'Completed'),
(3, 'Deleted');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE IF NOT EXISTS `task` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `priority` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL,
  `assign_to` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `title`, `description`, `priority`, `status_id`, `assign_to`, `created_by`, `created_on`, `updated_on`) VALUES
(1, 'fshs', 'hshshsh', 'low', 3, 1, 1, '2015-04-24 09:45:41', '2015-04-24 08:46:22'),
(2, 'Ticket no 404 issues dropdown', 'now check confirmation', 'medium', 3, 5, 1, '2015-04-24 10:49:45', '2015-04-24 06:52:00'),
(3, 'nan supera iruken', 'aga agagagag', 'high', 3, 4, 2, '2015-04-24 11:17:11', '2015-04-24 08:46:32'),
(4, 'Scrollbar issues', 'this scrollbar not completed please check', 'high', 1, 3, 2, '2015-04-24 12:47:38', '0000-00-00 00:00:00'),
(5, 'Window pop-up issues', 'If i click the pop-up box. it''s not working.', 'low', 2, 5, 2, '2015-04-24 12:48:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phoneno` bigint(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `address`, `phoneno`, `gender`, `status`, `created_date`) VALUES
(1, 'anand', 'anand@gmail.com', 'anandkumar', 'anand123', 'north street', 9025652321, 'male', 1, '2015-04-24 06:05:22'),
(2, 'viswa', 'viswanathan@gmail.com', 'viswanathan', 'viswa123', 'north street', 9874561232, 'male', 1, '2015-04-24 06:06:12'),
(3, 'vimala', 'vimala@gmail.com', 'vimalathangam', 'vimala123', 'usman road', 9867776776, 'female', 1, '2015-04-24 06:08:35'),
(4, 'sowmiya', 'sowmiya@gmail.com', 'sowmiyapriya', 'sowmiya123', 'nurthan street', 98087787878, 'female', 1, '2015-04-24 06:08:35'),
(5, 'kathir', 'kathir@gmail.com', 'kathirvel', 'kathirvel123', 'vadaku street', 9888787887, 'male', 1, '2015-04-24 06:09:50'),
(6, 'karthik', 'karthik@gmail.com', 'karthikeyan', 'karthikeyan123', 'aga aaggag', 98909887878, 'male', 1, '2015-04-24 06:09:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `status`
--
ALTER TABLE `status`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
