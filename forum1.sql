-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2017 at 07:42 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(8) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_description`) VALUES
(1, 'CSE', 'All posts related to CSE'),
(2, 'EECE', 'All posts related to EECE'),
(3, 'CE', 'All posts related to CE'),
(4, 'ME', 'All posts related to ME'),
(5, 'AE', 'All posts related to AE'),
(6, 'NAME', 'All posts related to NAME'),
(16, 'à¦ªà§à¦°à¦¥à¦® à¦†à¦²à§‹', 'à¦ªà§à¦°à¦¥à¦® à¦†à¦²à§‹ à¦ªà¦¤à§à¦°à¦¿à¦•à¦¾à¦° à¦¶à¦¿à¦°à§‹à¦¨à¦¾à¦®\r\n'),
(17, 'SE(Sessional)', 'All posts related to sessional');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(8) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` datetime NOT NULL,
  `post_topic` int(8) NOT NULL,
  `post_by` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_content`, `post_date`, `post_topic`, `post_by`) VALUES
(1, 'tuesday', '2016-10-31 06:51:44', 1, 1),
(2, 'ok\r\n', '2016-10-31 06:54:42', 1, 2),
(3, 'No idea', '2016-10-31 19:28:38', 2, 2),
(4, 'We need to change the date', '2016-11-01 17:35:59', 1, 5),
(5, 'class scheduled at 8:00 a.m.', '2016-11-01 19:02:28', 3, 2),
(6, 'nice', '2016-11-01 22:17:31', 1, 6),
(13, 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦•à§à¦°à¦¿à¦•à§‡à¦Ÿà§‡à¦° à¦¸à¦¬à¦šà§‡à§Ÿà§‡ à¦¬à¦¡à¦¼ à¦¬à¦¿à¦œà§à¦žà¦¾à¦ªà¦¨, à¦¸à¦¬à¦šà§‡à§Ÿà§‡ à¦¬à¦¡à¦¼ à¦­à¦°à¦¸à¦¾à¦° à¦¨à¦¾à¦®à¦“ à¦¸à¦¾à¦•à¦¿à¦¬ à¦†à¦² à¦¹à¦¾à¦¸à¦¾à¦¨à¥¤ à¦¤à¦¬à§‡ à¦•à§à¦°à¦¿à¦•à§‡à¦Ÿà§‡ à¦à¦•à¦¾à¦‡ à¦®à§à¦¯à¦¾à¦š à¦œà¦¿à¦¤à¦¿à§Ÿà§‡ à¦¦à§‡à¦“à§Ÿà¦¾à¦° à¦¯à§‡ à¦¤à¦¤à§à¦¤à§à¦¬, à¦¤à¦¾à¦¤à§‡ à¦­à¦¿à¦¨à§à¦¨ à¦®à¦¤ à¦à¦‡ à¦…à¦²à¦°à¦¾à¦‰à¦¨à§à¦¡à¦¾à¦°à§‡à¦°à¥¤ à¦¤à¦¾à¦°à§‡à¦• à¦®à¦¾à¦¹à¦®à§à¦¦à¦•à§‡ à¦¦à§‡à¦“à§Ÿà¦¾ à¦¸à¦¾à¦•à§à¦·à¦¾à§Žà¦•à¦¾à¦°à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¦à¦²à§‡à¦° à¦¨à¦¤à§à¦¨ à¦šà§‡à¦¹à¦¾à¦°à¦¾à¦Ÿà¦¾à¦‡ à¦¤à§à¦²à§‡ à¦§à¦°à§‡à¦›à§‡à¦¨ à¦¤à¦¿à¦¨à¦¿', '2016-11-02 07:16:23', 7, 1),
(14, 'à¦¨à§Ÿ à¦¬à¦›à¦° à¦†à¦—à§‡ à¦¬à¦¿à¦šà¦¾à¦° à¦¬à¦¿à¦­à¦¾à¦— à¦ªà§à¦°à¦¶à¦¾à¦¸à¦¨ à¦¥à§‡à¦•à§‡ à¦ªà§ƒà¦¥à¦• à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡ à¦®à¦¾à¦¸à¦¦à¦¾à¦° à¦¹à§‡à¦¾à¦¸à§‡à¦¨ à¦®à¦¾à¦®à¦²à¦¾à¦° à¦†à¦²à§‡à¦¾à¦•à§‡à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦¯à§‡ à¦ªà§à¦°à¦¤à§à¦¯à¦¾à¦¶à¦¾ à¦¨à¦¿à§Ÿà§‡ à¦¬à¦¿à¦šà¦¾à¦° à¦¬à¦¿à¦­à¦¾à¦— à¦ªà§à¦°à¦¶à¦¾à¦¸à¦¨ à¦¥à§‡à¦•à§‡ à¦ªà§ƒà¦¥à¦• à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡, à¦¤à¦¾ à¦†à¦œà¦“ à¦ªà§‚à¦°à¦£ à¦¹à§Ÿà¦¨à¦¿à¥¤ à¦•à§‡à¦¨à¦¨à¦¾, à¦ªà§ƒà¦¥à¦• à¦¹à¦“à§Ÿà¦¾à¦° à¦ªà¦° à¦¸à§à¦ªà§à¦°à¦¿à¦® à¦•à§‡à¦¾à¦°à§à¦Ÿà§‡à¦° à¦“à¦ªà¦° à¦¨à¦¿à¦®à§à¦¨ à¦†à¦¦à¦¾à¦²à¦¤à¦—à§à¦²à§‡à¦¾à¦° à¦•à¦¾à¦°à§à¦¯à¦•à§à¦°à¦®, à¦¯à¦¥à¦¾ à¦¬à¦¿à¦šà¦¾à¦°à¦•à¦¦à§‡à¦° à¦¬à¦¦à¦²à¦¿, à¦ªà¦¦à¦¾à§Ÿà¦¨, à¦¶à§ƒà¦™à§à¦–à¦²à¦¾à¦œà¦¨à¦¿à¦¤ à¦¬à§à¦¯à¦¬à¦¸à§à¦¥à¦¾à¦¸à¦¹ à¦à¦–à¦¨à§‡à¦¾ à¦†à¦‡à¦¨ à¦®à¦¨à§à¦¤à§à¦°à¦£à¦¾à¦²à§Ÿà§‡à¦° à¦¹à¦¾à¦¤à§‡ à¦°à§Ÿà§‡à¦›à§‡à¥¤ à¦†à¦‡à¦¨ à¦®à¦¨à§à¦¤à§à¦°à¦£à¦¾à¦²à§Ÿà§‡à¦° à¦ªà§à¦°à¦¸à§à¦¤à¦¾à¦¬ à¦…à¦¨à§à¦¸à¦¾à¦°à§‡ à¦¸à§à¦ªà§à¦°à¦¿à¦® à¦•à§‡à¦¾à¦°à§à¦Ÿà§‡à¦° à¦…à¦¨à§à¦®à§‡à¦¾à¦¦à¦¨ à¦¦à¦¿à¦¤à§‡ à¦¹à§Ÿà¥¤\r\n', '2016-11-02 07:17:35', 8, 1),
(15, 'à¦ªà§ƒà¦¥à¦•à§à¦•à¦°à¦£ à¦•à¦°à¦¤à§‡ à¦¹à¦²à§‡ à§§à§§à§¬ à¦¸à¦¤à§à¦¯à¦¿à¦‡ à¦«à¦¿à¦°à¦¿à§Ÿà§‡ à¦†à¦¨à¦¤à§‡ à¦¹à¦¬à§‡, à¦à¦Ÿà¦¿ à¦¸à¦®à¦°à§à¦¥à¦¨ à¦•à¦°à¦¿à¥¤ à¦à¦–à¦¾à¦¨à§‡ à§§à§§à§¬ à¦°à§Ÿà§‡à¦›à§‡, à¦…à¦¨à§à¦¯à¦¦à¦¿à¦•à§‡ à§§à§¦à§¯ à¦°à§Ÿà§‡ à¦—à§‡à¦²à¥¤ à¦¤à¦¾à¦¹à¦²à§‡ à¦¤à§‡à¦¾ à¦à¦•à¦Ÿà¦¾ à¦¦à§à¦¬à¦¨à§à¦¦à§à¦¬ à¦¹à¦“à§Ÿà¦¾à¦° à¦¸à¦®à§à¦­à¦¾à¦¬à¦¨à¦¾ à¦¥à¦¾à¦•à§‡à¥¤ à¦†à¦®à¦¿ à¦¦à§à¦¬à§ˆà¦¤ à¦¶à¦¾à¦¸à¦¨ à¦¬à¦²à¦¤à§‡ à¦šà¦¾à¦‡ à¦¨à¦¾à¥¤ à¦¤à¦¬à§‡ à¦¬à¦¦à¦²à¦¿ à¦“ à¦ªà¦¦à§‡à¦¾à¦¨à§à¦¨à¦¤à¦¿ à¦à¦¸à¦¬ à¦¬à§à¦¯à¦¾à¦ªà¦¾à¦°à§‡ à¦¦à§‡à¦–à¦¾ à¦¯à¦¾à§Ÿ à¦¯à§‡ à¦†à¦‡à¦¨ à¦®à¦¨à§à¦¤à§à¦°à¦£à¦¾à¦²à§Ÿà§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦ªà§à¦°à¦§à¦¾à¦¨ à¦¬à¦¿à¦šà¦¾à¦°à¦ªà¦¤à¦¿à¦° à¦•à¦¿à¦›à§ à¦Ÿà¦¾à¦¨à¦¾à¦ªà§œà§‡à¦¨ à¦šà¦²à¦›à§‡à¥¤ à¦•à§‡à¦¾à¦¥à¦¾à§Ÿ à¦•à§€ à¦¹à¦šà§à¦›à§‡, à¦¤à¦¾ à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦œà¦¾à¦¨à¦¿ à¦¨à¦¾à¥¤', '2016-11-02 07:19:03', 9, 1),
(16, 'à¦Ÿà¦¿à¦¨à§‡à¦° à¦˜à¦°à§‡à¦° à¦¬à§‡à§œà¦¾à¦Ÿà¦¿ à¦•à§à¦ªà¦¿à§Ÿà§‡ à¦›à¦¿à¦¨à§à¦¨à¦­à¦¿à¦¨à§à¦¨ à¦•à¦°à¦¾à¥¤ à¦†à¦° à¦˜à¦°à§‡à¦° à¦­à§‡à¦¤à¦° à¦ªà§à¦°à§‹ à¦¤à¦›à¦¨à¦›à¥¤ à¦›à§œà¦¿à§Ÿà§‡ à¦†à¦›à§‡ à¦­à¦¾à¦™à¦¾à¦šà§‹à¦°à¦¾ à¦†à¦¸à¦¬à¦¾à¦¬, à¦¹à¦¾à¦à§œà¦¿à¦ªà¦¾à¦¤à¦¿à¦², à¦à¦®à¦¨à¦•à¦¿ à¦¬à¦¹à§ à¦¯à¦¤à§à¦¨à§‡à¦°Å“ à¦¹à¦¾à¦°à¦®à§‹à¦¨à¦¿à§Ÿà¦¾à¦®à¦Ÿà¦¿à¦“à¥¤ à¦¬à¦™à§à¦—à¦¬à¦¨à§à¦§à§à¦° à¦¦à§à¦Ÿà¦¿ à¦›à¦¬à¦¿à¦“ à¦¦à¦²à¦¾à¦‡à¦®à¦²à¦¾à¦‡ à¦•à¦°à¦¾à¥¤\r\nà¦à¦¸à¦¬ à¦¦à§‡à¦–à¦¿à§Ÿà§‡ à¦•à¦¾à¦à¦¦à¦¤à§‡ à¦•à¦¾à¦à¦¦à¦¤à§‡ à¦¬à§ƒà¦¦à§à¦§à¦¾ à¦ªà§‚à¦°à§à¦£à¦¿à¦®à¦¾ à¦¦à¦¾à¦¸ à¦¬à¦²à¦²à§‡à¦¨, â€˜à¦“à¦°à¦¾ à¦¦à¦² à¦¬à§‡à¦à¦§à§‡ à¦†à¦‡à¦›à§‡à¥¤', '2016-11-02 07:20:14', 10, 1),
(17, 'C is one of many programming languages that are useful to learn as a beginner. MagPi, the official Raspberry Pi magazine, put together a book that helpfully walks you through the basics.', '2016-11-02 07:23:12', 11, 1),
(18, 'Final presentation will be submiited on 14th week', '2016-11-02 08:29:28', 12, 4),
(19, 'can the presentation date can be shifted???', '2016-11-02 08:30:29', 12, 5),
(20, 'à¦¸à¦¾à¦¬à¦¾à¦¶ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶', '2016-11-02 08:32:24', 7, 1),
(21, 'posts related to space', '2016-11-02 08:38:13', 13, 1),
(22, 'If Elon Musk''s SpaceX can get to Mars and bring samples back to Earth before the United States can get there, it would be cause for celebration not lament, said NASA''s new science chief.\r\n\r\n"If Elon Musk brought the samples in the door right now I''d throw him a party out of my own money," Thomas Zurbuchen, NASA''s newly named associate administrator for science, told reporters Monday.\r\n\r\n"I think that would be a huge success out of the strategies that were pursued by this administration of helping â€¦ the private industry to really grow capabilities that 10 years ago were not around," he said.\r\n\r\nDuring his first sit-down with journalists, Zurbuchen also said that polarizing topics, including science issues, need to be tackled with empathy for and patience with people who have opposing viewpoints.', '2016-11-02 08:38:44', 14, 1),
(23, 'If Elon Musk''s SpaceX can get to Mars and bring samples back to Earth before the United States can get there, it would be cause for celebration not lament, said NASA''s new science chief.\r\n\r\n"If Elon Musk brought the samples in the door right now I''d throw him a party out of my own money," Thomas Zurbuchen, NASA''s newly named associate administrator for science, told reporters Monday.\r\n\r\n"I think that would be a huge success out of the strategies that were pursued by this administration of helping â€¦ the private industry to really grow capabilities that 10 years ago were not around," he said.\r\n\r\nDuring his first sit-down with journalists, Zurbuchen also said that polarizing topics, including science issues, need to be tackled with empathy for and patience with people who have opposing viewpoints.\r\n\r\n\r\nIf Elon Musk''s SpaceX can get to Mars and bring samples back to Earth before the United States can get there, it would be cause for celebration not lament, said NASA''s new science chief.\r\n\r\n"If Elon Musk brought the samples in the door right now I''d throw him a party out of my own money," Thomas Zurbuchen, NASA''s newly named associate administrator for science, told reporters Monday.\r\n\r\n"I think that would be a huge success out of the strategies that were pursued by this administration of helping â€¦ the private industry to really grow capabilities that 10 years ago were not around," he said.\r\n\r\nDuring his first sit-down with journalists, Zurbuchen also said that polarizing topics, including science issues, need to be tackled with empathy for and patience with people who have opposing viewpoints.', '2016-11-02 08:42:56', 15, 1),
(24, 'posts relate to topic will be shown here', '2016-11-02 08:48:32', 16, 4),
(25, 'Give us more advice\r\n', '2016-11-05 15:48:08', 11, 4),
(26, 'Tell us all about other Programming languages.', '2016-11-05 15:48:58', 11, 5),
(27, 'yeaa', '2017-04-15 08:46:06', 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topic_id` int(8) NOT NULL,
  `topic_subject` varchar(255) NOT NULL,
  `topic_date` datetime NOT NULL,
  `topic_cat` int(8) NOT NULL,
  `topic_by` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `topic_subject`, `topic_date`, `topic_cat`, `topic_by`) VALUES
(1, 'atiq sir ct', '2016-10-31 06:51:44', 1, 1),
(2, 'Space', '2016-10-31 19:28:38', 1, 2),
(3, 'Programming', '2016-11-01 19:02:28', 1, 2),
(7, 'à¦–à§‡à¦²à¦¾à¦§à§à¦²à¦¾', '2016-11-02 07:16:23', 16, 1),
(8, 'à¦—à¦¨à¦¤à¦¨à§à¦°', '2016-11-02 07:17:35', 16, 1),
(9, 'à¦°à¦¾à¦œà¦¨à¦¿à¦¤à¦¿', '2016-11-02 07:19:03', 16, 1),
(10, 'à¦…à¦°à§à¦¥à¦¨à§€à¦¤à¦¿', '2016-11-02 07:20:14', 16, 1),
(11, 'C Programming', '2016-11-02 07:23:12', 1, 1),
(12, 'SE', '2016-11-02 08:29:28', 1, 4),
(13, 'Space', '2016-11-02 08:38:13', 5, 1),
(14, 'Space 2', '2016-11-02 08:38:44', 5, 1),
(15, 'Space 3', '2016-11-02 08:42:56', 1, 1),
(16, 'SE(Theory)', '2016-11-02 08:48:32', 17, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(8) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_date` datetime NOT NULL,
  `user_level` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_level`) VALUES
(1, 'hamim', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '2016-10-29 17:43:22', 1),
(2, 'abid', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '2016-10-29 17:45:21', 0),
(3, 'Nawsheen', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '2016-10-31 10:08:38', 0),
(4, 'asib', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'sdg@gamil.com', '2016-10-31 11:39:36', 0),
(5, 'Brazab', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'hamimdc@gmail.com', '2016-11-01 17:35:16', 0),
(6, 'Tarek', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'hamimdc@gmail.com', '2016-11-01 22:17:08', 0),
(7, 'Hasib', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'hamimdc@gmail.com', '2016-11-02 08:50:41', 0),
(8, 'Nadal', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'hamimdc@gmail.com', '2017-04-15 08:45:09', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name_unique` (`cat_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_topic` (`post_topic`),
  ADD KEY `post_by` (`post_by`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `topic_cat` (`topic_cat`),
  ADD KEY `topic_by` (`topic_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name_unique` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_topic`) REFERENCES `topics` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`post_by`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`topic_cat`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `topics_ibfk_2` FOREIGN KEY (`topic_by`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
