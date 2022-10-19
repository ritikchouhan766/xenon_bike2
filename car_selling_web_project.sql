-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2022 at 09:39 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_selling_web_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_page`
--

CREATE TABLE `contact_page` (
  `id` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_page`
--

INSERT INTO `contact_page` (`id`, `userid`, `email`, `subject`, `description`, `status`, `date`) VALUES
(NULL, 2, 'test@gmail.com', 'subject', 'description', 0, '2022-10-19 17:58:49'),
(NULL, 0, 'xyz@gmail.com', 'sdd', 'hjbj\r\n', 0, '2022-10-19 19:34:10'),
(NULL, 0, 'xyz@gmail.com', 'sdd', 'hjbj\r\n', 0, '2022-10-19 19:34:31'),
(NULL, 0, 'ss@gmail.com', 'jjk', 'jk', 0, '2022-10-19 19:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_status` int(11) DEFAULT 1 COMMENT 'status 1 = active user, status 2 =Inactive user, status 0 = deleted user',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `user_status`, `date`) VALUES
(NULL, 'rahul', '123', 1, '2022-10-19 18:44:17'),
(NULL, 'yogesh', '123', 1, '2022-10-19 19:20:03'),
(NULL, 'ram', '123', 1, '2022-10-19 19:23:45'),
(NULL, 'xyz', '123', 1, '2022-10-19 19:27:06');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
