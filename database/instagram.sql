-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 11:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instagram`
--

-- --------------------------------------------------------

--
-- Table structure for table `message_data`
--

CREATE TABLE `message_data` (
  `id` int(11) NOT NULL,
  `send_id` int(10) NOT NULL,
  `recive_id` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message_data`
--

INSERT INTO `message_data` (`id`, `send_id`, `recive_id`, `message`) VALUES
(1, 2, 1, 'hii'),
(2, 1, 2, 'hii'),
(3, 2, 1, 'welcome'),
(4, 2, 1, 'hello good morning'),
(5, 1, 2, 'hello'),
(6, 1, 2, 'hiii'),
(7, 1, 2, '???'),
(8, 2, 1, 'welcome'),
(9, 2, 1, 'good morning'),
(10, 1, 2, 'very good morning'),
(11, 1, 7, 'hiii');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `post`, `description`) VALUES
(3, 1, 'photo3.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat quidem ipsa nisi quo excepturi unde, dicta quas in temporibus.'),
(4, 2, '01-big-blog.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat quidem ipsa nisi quo excepturi unde, dicta quas in temporibus.'),
(22, 1, '88800309-portfolio.jpg,527951calltoaction-image.jpg,799533multicard.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat quidem ipsa nisi quo excepturi unde, dicta quas in temporibus.'),
(23, 7, '5380602-big-blog.jpg,92739502-big-portfolio.jpg,72054302-blog.jpg,42657702-portfolio.jpg,61442502-slide.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat quidem ipsa nisi quo excepturi unde, dicta quas in temporibus.'),
(24, 5, '53443604-portfolio.jpg,39017405-blog.jpg,67301005-portfolio.jpg,73341806-blog.jpg,94931807-portfolio.jpg,67423709-portfolio.jpg,79044210-portfolio.jpg,57353911-portfolio.jpg,2234312-portfolio.jpg,422624calltoaction-image.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat quidem ipsa nisi quo excepturi unde, dicta quas in temporibus.'),
(25, 5, '12970401-portfolio.jpg,84782501-recentpost.jpg,42702-blog.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat quidem ipsa nisi quo excepturi unde, dicta quas in temporibus.'),
(26, 8, '76830603-big-blog.jpg,71945803-big-portfolio.jpg,44098503-blog.jpg,87994903-portfolio.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat quidem ipsa nisi quo excepturi unde, dicta quas in temporibus.'),
(27, 6, '9751909-portfolio.jpg,5668710-portfolio.jpg,56398011-portfolio.jpg,15566012-portfolio.jpg,80736calltoaction-image.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat quidem ipsa nisi quo excepturi unde, dicta quas in temporibus.'),
(28, 6, '54556511-portfolio.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat quidem ipsa nisi quo excepturi unde, dicta quas in temporibus.'),
(29, 1, '58305201-blog.jpg,47050601-portfolio.jpg,30877701-recentpost.jpg,62454702-big-blog.jpg,6358602-big-portfolio.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat quidem ipsa nisi quo excepturi unde, dicta quas in temporibus.'),
(30, 1, '99173203-big-blog.jpg,20045003-blog.jpg,82658303-portfolio.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat quidem ipsa nisi quo excepturi unde, dicta quas in temporibus.'),
(31, 1, '48983203-big-blog.jpg,75960003-big-portfolio.jpg,69819203-blog.jpg,3155703-portfolio.jpg,75148704-blog.jpg,9481205-blog.jpg,44857406-portfolio.jpg,8862108-portfolio.jpg,6746609-portfolio.jpg,40174010-portfolio.jpg,51089212-portfolio.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat quidem ipsa nisi quo excepturi unde, dicta quas in temporibus.'),
(32, 1, '80680303-portfolio.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat quidem ipsa nisi quo excepturi unde, dicta quas in temporibus.'),
(33, 5, '98545701-big-blog.jpg,80903701-blog - Copy.jpg,96845601-portfolio.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat quidem ipsa nisi quo excepturi unde, dicta quas in temporibus.'),
(34, 2, '74763620210115100746_IMG_3499.JPG', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `fname` varchar(111) NOT NULL,
  `lname` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `mobile` varchar(111) NOT NULL,
  `gender` varchar(111) NOT NULL,
  `pass` varchar(111) NOT NULL,
  `cpass` varchar(111) NOT NULL,
  `country` varchar(111) NOT NULL,
  `state` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `followers` varchar(255) NOT NULL,
  `logins` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `image`, `fname`, `lname`, `email`, `mobile`, `gender`, `pass`, `cpass`, `country`, `state`, `city`, `followers`, `logins`) VALUES
(1, '01-author-comment.jpg', 'madhur', 'kathrotiya', 'madhur@gmail.com', '1234567890', 'male', '123', '123', 'india', 'gujarat', 'surat', '6,7,2', 0),
(2, 'user8-128x128.jpg', 'rakesh', 'yadav', 'rakesh@gmail.com', '1234567890', 'male', '123', '123', 'india', 'gujarat', 'surat', '5,6,7,8', 1),
(3, 'user3-128x128.jpg', 'dharmi', 'kathrotiya', 'dharmi@gmail.com', '1234567890', 'female', '123', '123', 'india', 'gujarat', 'surat', '5,7,8,1,2', 0),
(5, 'user2-160x160.jpg', 'bhanu', 'mahajan', 'bhanu@gmail.com', '1234567890', 'male', '123', '123', 'india', 'gujarat', 'surat', '3,6,7,8,1', 0),
(6, 'user1-128x128.jpg', 'bhaldev', 'savaliya', 'bhalu@gmail.com', '1234567890', 'male', '123', '123', 'india', 'gujarat', 'surat', '2,3,5,7,8,1', 0),
(7, 'user4-128x128.jpg', 'ekta', 'gajera', 'ekta@gmail.com', '1234567890', 'female', '123', '123', 'india', 'gujarat', 'surat', '3,5,1', 0),
(8, 'avatar5.png', 'rutvik', 'Radadiya', 'radadiyarutvik3@gmail.com', '8460969032', 'male', 'rutvik@16', 'rutvik@16', 'india', 'gujrat', 'surat', '2,5', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message_data`
--
ALTER TABLE `message_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message_data`
--
ALTER TABLE `message_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
