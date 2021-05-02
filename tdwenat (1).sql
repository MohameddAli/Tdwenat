-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2021 at 03:46 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tdwenat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@mail.com', 'Ee096407');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(100) NOT NULL,
  `categoryDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryDate`) VALUES
(44, 'ØªØ¯ÙˆÙŠÙ†Ø§Øª', '2021-04-27 21:33:04'),
(45, 'Ø¨Ø±Ù…Ø¬Ø©', '2021-04-27 21:33:07'),
(48, 'JavaScript', '2021-04-27 21:33:25'),
(50, 'Ø£Ø®Ø¨Ø§Ø±', '2021-04-27 21:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `postTitle` varchar(200) NOT NULL,
  `postCat` varchar(200) NOT NULL,
  `postImage` varchar(200) NOT NULL,
  `postContent` varchar(10000) NOT NULL,
  `postDate` datetime NOT NULL DEFAULT current_timestamp(),
  `postAuthor` varchar(200) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `postTitle`, `postCat`, `postImage`, `postContent`, `postDate`, `postAuthor`) VALUES
(47, 'Ù…Ù†Ø´ÙˆØ± Ø¬Ø¯ÙŠØ¯', 'Ø¨Ø±Ù…Ø¬Ø©', '862_147729593_454626852652099_3955560796888323110_n.jpg', 'Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… ', '2021-04-28 19:46:26', ''),
(48, 'one shot', 'Ø£Ø®Ø¨Ø§Ø±', '672_148588106_899829917435859_9202464362724121667_n.jpg', 'Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… ', '2021-04-28 19:46:39', ''),
(49, 'new post', 'JavaScript', '918_153593197_752448945682783_491859377940678501_n.jpg', 'Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… ', '2021-04-28 19:47:06', ''),
(50, 'new post 2', 'ØªØ¯ÙˆÙŠÙ†Ø§Øª', '945_149368432_699256994102852_6994355259282326350_n.jpg', 'Ø±Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… ', '2021-04-28 19:47:19', ''),
(51, 'PHP', 'Ø¨Ø±Ù…Ø¬Ø©', '812_154747575_775662976395142_4528549518657250803_o.jpg', 'Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… ', '2021-04-28 19:47:37', ''),
(52, 'Ù…Ø¯Ù‡Ø´', 'Ø£Ø®Ø¨Ø§Ø±', '908_150057270_899704564119663_7087587414936428891_o.jpg', 'Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… ', '2021-04-28 19:48:51', ''),
(53, 'Ø±Ø§Ø¦Ø¹', 'Ø£Ø®Ø¨Ø§Ø±', '170_150382105_3951085858264530_9113593377991095688_n.jpg', 'Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§ Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… ', '2021-04-28 19:49:23', ''),
(54, 'Ù…Ø´Ø±ÙˆØ¹ ØªØ®Ø±Ø¬', 'ØªØ¯ÙˆÙŠÙ†Ø§Øª', '864_144797910_10160786596054056_1659811691808094056_n.jpg', 'ÙŠØ´Ø¨ÙŠ ÙŠØ¨ ÙŠØ¨ ÙŠØ¨ ÙŠØ¨ ÙŠØ¨', '2021-04-30 11:55:12', ''),
(56, 'Ø§Ø­Ù…Ø¯ Ø¬Ù„Ø§Ù„', 'Ø£Ø®Ø¨Ø§Ø±', '36_147729593_454626852652099_3955560796888323110_n.jpg', 'Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… Ù‡Ø°Ø§  Ø§Ù„Ù†Øµ ØºÙŠØ± Ù…Ù‡Ù… ', '2021-04-30 23:36:05', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
