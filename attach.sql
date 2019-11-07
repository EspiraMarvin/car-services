-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2019 at 10:33 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attach`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_pass` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `user_email`, `user_pass`, `created_at`) VALUES
(65, 'espiramarvin@gmail.com', '$2y$10$3setsguaf4/TRji/CQokuu7kasxULDucUtYhfEDryVJXW.t9LiMMu', '2019-02-18 10:54:16.000000');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `application_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `cover_letter` varchar(400) NOT NULL,
  `cv_url` varchar(80) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`application_id`, `user_id`, `user_name`, `cover_letter`, `cv_url`, `created_at`) VALUES
(1, 1, 'Marvin Espira', 'i\'ve been going through you\'ve been through it, if you really love me you gotta prove it, i\'m still looking for the brighter star, awesome is calling a beautiful summer is calling, have you ever looked at someone and say I guess no seasons pass. ', '45963713596393739e55bd034fb387b6.docx', '2019-04-14 19:29:53.000000'),
(2, 14, 'Marvin Espira', 'dfs dfsddf dsf', '9a256ca11477a5a21f7a688019528e8c.docx', '2019-04-16 10:28:40.655439'),
(3, 1, 'Marvin Espira', 'sdfgdfskdfnasjdf asf wdgs dgf', '69aec6cabe8b8074f34aeb3db4a56ef2.docx', '2019-04-17 06:09:39.750269'),
(4, 1, 'Marvin Espira', 'sa dfsdf dgsd gdsd esira', '6f6761d1159754eaa2b4f0fb9fbf725a.docx', '2019-04-17 06:10:41.249987'),
(5, 1, 'Marvin Espira', 'dshu dfbd sdf ', 'd2f4e4a37ba72dd51131a3dd76fb3467.docx', '2019-04-17 06:12:49.570475'),
(6, 1, 'Marvin Espira', 'dn ds dj d d ds ds\n', '37e6834ee40e0668b21ace7149e06347.docx', '2019-04-17 06:18:22.018061'),
(7, 1, 'Marvin Espira', 'dn ds dj d d ds ds\n', '6a44ec35c134c2d7f88e19fa8b2fb174.docx', '2019-04-17 06:19:19.361666'),
(8, 1, 'Marvin Espira', 'dn ds dj d d ds ds\n', '2f1ea1499b539760dd6ae8bc57da3108.docx', '2019-04-17 06:19:24.550291'),
(9, 1, 'Marvin Espira', 'dn ds dj d d ds ds\n', '16ea4a5fb22cb4e0bd225028bef36fb6.docx', '2019-04-17 06:19:33.582201'),
(10, 1, 'Marvin Espira', 'dn ds dj d d ds ds\n', '7bf2879a5d5d3a61bc7ff275c64c5eb6.docx', '2019-04-17 06:19:42.726400'),
(11, 1, 'Marvin Espira', 'dn ds dj d d ds ds\n', '11ab74e7052ad871de6110d6e12b889e.docx', '2019-04-17 06:19:47.901597'),
(12, 1, 'Marvin Espira', 'dn ds dj d d ds ds\n', '7dbab1a80e2c93f38dc4b2b32b3f6370.docx', '2019-04-17 06:19:50.708547'),
(13, 1, 'Marvin Espira', 'dn ds dj d d ds ds\n', 'fe26f18ba2a69286adf0aa12729aa0fc.docx', '2019-04-17 06:19:57.338158'),
(14, 1, 'Marvin Espira', 'dn ds dj d d ds ds\n', '2e8aa67c7d56c2de2bb36f72398dae2f.docx', '2019-04-17 06:20:08.486904'),
(15, 15, 'Marvin Espira', 'DSF ', '3d1c644d7bc78f76840c6cc9c87e23b0.docx', '2019-04-17 06:23:14.346685'),
(16, 15, 'Marvin Espira', 'DSF ', '9fcc07cf8f634040d0005158942a2b65.docx', '2019-04-17 06:25:30.895303'),
(17, 15, 'Marvin Espira', 'DSF ', 'c3e85866ec4319fa2b971c8158a80cbd.docx', '2019-04-17 06:25:33.295101'),
(18, 15, 'Marvin Espira', 'jjjkk', '050b6ede8aaee4bbf7d5f781381c5711.docx', '2019-04-17 06:25:49.051355'),
(19, 15, 'Marvin Espira', 'gf  e vdt r er', 'd3fc074633f3755af64bbfc6cf380b2f.docx', '2019-04-17 06:28:35.454934'),
(20, 1, 'Marvin Espira', 'f f f f f f f f', 'e580815b414809098cb92e2cb291afcc.docx', '2019-04-17 06:42:53.178545'),
(21, 1, 'Marvin Espira', 'db sdj ', '368147a5667dbcc446f1cb2db41021d2.docx', '2019-04-17 06:45:12.328188'),
(22, 16, 'Marvin Espira', 'dsn sd f', 'bf3f86ee9c98568057d87eb623835bda.docx', '2019-04-17 06:48:31.259174'),
(23, 16, 'Recover ', 'dsgd d', '14c28fbc6769554004d029a693aa4c9e.docx', '2019-04-17 06:50:32.352928'),
(24, 1, 'Marvin Espira', 'sdjbdfsd\n', '39b8f4dbfbda3956a8260fc4bd2e128a.pdf', '2019-06-11 09:28:14.212895'),
(25, 1, 'Marvin Espira', 'sdjbdfsd\n', '89577d81a40f62d9041e0b0516f989a7.pdf', '2019-06-11 09:29:15.595109'),
(26, 1, 'Marvin Espira', 'sdjbdfsd\n', '1414d03595c81fbbadd2d9a05759ba2a.pdf', '2019-06-11 09:29:36.715171'),
(27, 1, 'Marvin Espira', 'sdj', '23453a9a8ddab63be6ffdb1bf7064eab.docx', '2019-06-17 11:01:52.211510'),
(28, 1, 'Marvin Espira', 'hcghfyujh', 'bcd4da27037c7ceb3a598e9e6221c662.docx', '2019-06-18 10:55:08.400331'),
(29, 1, 'marvin espira', 'i want this attachment opportunity', 'a33d3661e3f7a570dccbb2d2e7dac595.docx', '2019-09-16 21:27:13.322239'),
(30, 1, 'marvin espira', 'i want', 'f71aa8bba42ac5b3422805c2517d9938.docx', '2019-09-16 21:28:25.018221'),
(31, 16, 'marvin espira', 'k', 'e6ea353ccbcdab33eafcf44be245f811.docx', '2019-09-16 21:30:13.525206'),
(32, 16, 'marvin espira', 'j', 'dd8427f28057eef63ce575944e9a7800.docx', '2019-09-16 21:32:52.221687'),
(33, 16, 'marvin espira', '123', 'eb8938680811aa8748d6cf272b8d2e61.docx', '2019-09-16 21:34:06.374650'),
(34, 16, 'marvin espira', 'yess', '2eaf6d4a00ca31fdcc2249e3039e5ee1.docx', '2019-09-17 07:40:21.484302'),
(35, 16, 'marvin espira', 'yess', 'd06d4b716343299d36fc1b7e2fe6d2d8.docx', '2019-09-17 07:40:33.829217');

-- --------------------------------------------------------

--
-- Table structure for table `attached`
--

CREATE TABLE `attached` (
  `user_id` int(11) NOT NULL,
  `attached_id` int(11) NOT NULL,
  `org_name` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attached`
--

INSERT INTO `attached` (`user_id`, `attached_id`, `org_name`, `status`, `created_at`) VALUES
(1, 1, 'Shazam Ltd', 'Attached', '2019-04-17 18:48:33.677746');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `org_id` int(11) NOT NULL,
  `att_id` int(11) NOT NULL,
  `att_industry` varchar(40) NOT NULL,
  `att_title` varchar(40) NOT NULL,
  `c_date` date NOT NULL,
  `applicants_needed` int(11) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`org_id`, `att_id`, `att_industry`, `att_title`, `c_date`, `applicants_needed`, `created_at`) VALUES
(26, 1, 'Engineering', 'Civil Engineer', '2019-06-07', 7, '2019-04-04 05:50:52.000000'),
(26, 2, 'IT & Software', 'Software Engineer', '2019-06-18', 4, '2019-04-15 16:28:27.000000'),
(27, 3, 'Engineering', 'Software Engineer', '2018-12-21', 3, '2019-04-16 10:26:18.480185'),
(27, 4, 'Engineering', 'Chemical Engineer', '2019-06-20', 4, '2019-04-16 10:27:01.690532'),
(29, 5, 'Engineering', 'Software Engineer', '2019-06-14', 5, '2019-04-17 06:41:55.191594'),
(30, 6, 'Healthcare', 'Nurse', '2019-06-13', 4, '2019-06-11 07:43:25.801201'),
(33, 7, 'Hospitality & Hotel', 'Bakery', '2019-09-11', 6, '2019-09-02 10:57:45.290767'),
(34, 8, 'Art & Design', 'Interior Designer', '2019-09-27', 6, '2019-09-16 21:25:57.477682');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `org_id` int(11) NOT NULL,
  `org_name` varchar(40) NOT NULL,
  `org_email` varchar(40) NOT NULL,
  `org_location` varchar(40) NOT NULL,
  `org_pass` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`org_id`, `org_name`, `org_email`, `org_location`, `org_pass`, `created_at`) VALUES
(1, 'Safaricom ltd', 'safaricom@gmail.com', 'Nairobi, Kenya', '$2y$10$D4ejr7SvQhNkwqOn4cDmouYDbYIa.V2kYpY/tNzmZBanpiwAaGIxi', '2019-03-03 09:24:28.000000'),
(20, 'Pulsar ltd', 'pulsar@gmail.com', 'Naivasha, Nairobi', '$2y$10$apxs34RuGgf8EyCwslV7x.7CtbIVEsodzbX/lVomfCR8H6KLdmFfC', '2019-03-03 09:24:28.000000'),
(22, 'Google Africa', 'google@gmail.com', 'Gilgil, Kenya', '$2y$10$YegV8x54nHXMAxUuXVoThe05oTETwT2v6LTvbjK5bTG.OLStb5HQK', '2019-03-03 09:24:28.000000'),
(23, 'Kenya Power and Lighting Company', 'kenyapower@gmail.com', 'Nairobi, Kenya', '$2y$10$7uWJCc95WUKzdhX7jy0jtuEKd0wCanQWjSqDT5BYPz0OwF0hGcMEW', '2019-03-03 09:24:28.000000'),
(24, 'Fenty Clothline', 'fenty@gmail.com', 'Kisumu, Kenya', '$2y$10$aPixGxi1Fnxq/4CjszzTgO5elfK6IWIFKO/gHxNa6pyLrb0pDwHRu', '2019-03-05 12:50:50.000000'),
(25, 'itclass', 'btechinfotech2015@gmail.com', 'Nairobi, Kenya', '$2y$10$IR1EqKijRIfwfA3uWUrKA.LgGAzlXPo.HX77gx/1nWVvhRASn/Ima', '2019-03-24 06:43:16.000000'),
(26, 'shazam ltd', 'marvinrecover@gmail.com', 'Nairobi, Kenya', '$2y$10$xoyWyS0HQ7NvRxsxP8w5P.HXKiB5Q2WjOPRt3US8GbpWcD4l4QAr6', '2019-03-24 09:56:18.000000'),
(27, 'Tuk', 'ngaruiyanjeri@gmail.com', 'Nairobi,Kenya', '$2y$10$9T3U8dXxC62nKIB.nky.y.ulnA8Je2Il32OkgvS1DtQGCd1KredPm', '2019-04-16 10:25:18.504810'),
(29, 'Android', 'jamesshisiah@gmail.com', 'Nairobi,Kenya', '$2y$10$1J78DlQW5CF4Ju03jsr3Xe8s7LjNqtuJsUH6hNDOLaqbD3eYAM7AS', '2019-04-17 06:30:59.103192'),
(30, 'Berum', 'berum7tab@gmail.com', 'Nairobi, Kenya', '$2y$10$an5YJpIrr083s/qa6w5rFuHEU.tBm06cG4BANL1dXrdm1Wi3f9HvC', '2019-06-11 07:42:51.826397'),
(31, 'nokash', 'nokash', 'nokash', '$2y$10$VWVDdubQsZOvG7nX.N4E4OXk.wRSEpxp0qivE8Yy5YbyjIrKoTXLO', '2019-09-02 10:50:18.363115'),
(32, 'rashford', 'rashford', 'Nairobi', '$2y$10$jkuhB8xs3RbAP6t9P0pnQOLOBS8rIdffg4bf/9u.oTTGYTeGN5dBm', '2019-09-02 10:55:01.110790'),
(33, 'nokash', 'nokash@gumi.com', 'nokash', '$2y$10$NLnlnIK4qMArx0hUQQXOCuXwhmsscIrGf5ZwtjoJrFXIFvRljTF3G', '2019-09-02 10:56:35.924173'),
(34, 'Tbag', 'espiramarvin@gmail.com', 'Nairobi', '$2y$10$vLBTSFLzs8UM8KiRrQAxl.ZqRwsKEZnqG9K8teDItsHGF0NuqlaWa', '2019-09-16 21:25:22.199041');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `user_id` int(11) NOT NULL,
  `user_admno` varchar(20) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_course` varchar(60) NOT NULL,
  `user_pass` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`user_id`, `user_admno`, `user_email`, `user_course`, `user_pass`, `created_at`) VALUES
(1, 'scii/01972/2015', 'espiramarvin@gmail.com', 'Btech Information Technology', '$2y$10$0ZnbHRpP/dBmAFY/h6JgFO6oVvluRJzKbhpJsUbhmPKiRy1E.QZlm', '2019-02-27 07:11:42.000000'),
(2, 'scii/01972/2016', 'espiramarvin@gmail.com', 'Btech Computer Networks', '$2y$10$iKIz32mUs5ryLp2zOYHmMOOj9sbz32WuJlwkilw1NF0BCun6yCVlu', '2019-02-27 07:31:29.000000'),
(3, 'eici/01065/2015', 'espiramarvin@gmail.com', 'Btech Information Technology', '$2y$10$UH0vqHiApsk8L6skyTz3SeZp4vSZDuyFik51804N3zGFLGmvWCvPS', '2019-03-01 10:45:03.000000'),
(4, 'scii/00329/2015', 'juliomwashumbe@gmail.com', 'Btech Information Technology', '$2y$10$lK92bTVMwiEdffN0ogVRzeJNONNyQGWOd9DMoYFHNc7YAuqrrIMt.', '2019-03-01 10:46:26.000000'),
(6, 'scii/000/2015', 'espiramarvin@gmail.com', 'Btech Information Technology', '$2y$10$OxWv10Rj3uPA2PNaXxKV9eOcXmgC3E8pptZ37imhX1icMAx3qdk9W', '2019-03-02 07:38:46.000000'),
(9, 'scii/00331/2015', 'frank@gmail.com', 'Btech Information Technology', '$2y$10$EhCQEMZzjnuWIEC11F0l9O3gS9F5o1hkFmGmeu6keM3Kc1msHXFuq', '2019-03-22 07:42:36.000000'),
(10, 'scii/05701/2015', 'russelowuor3@gmail.com', 'Btech Information Technology', '$2y$10$EXPVOPGsynKBirwtFriEduz7QWJFmIracpmFgqiuD/mr8qdsc.vIe', '2019-03-22 08:34:19.000000'),
(11, 'scii/0/2015', 'b@gmail.com', 'Btech Information Technology', '$2y$10$2c1a/scqsZBsjTtBd5cdS.6jZ7RDnzr56R7uYuR.6EtDNRQHpFDZG', '2019-03-25 12:47:55.000000'),
(12, 'scii/1/2015', 'espiramarvin@gmail.com', 'Btech Information Technology', '$2y$10$PQWPquG7oYjgQGHtCKHEsuW2TVvXdT7ShrSo1WPEEr9E5IQfRSMg2', '2019-03-25 12:55:51.000000'),
(13, 'scii/01972/2011', 'espiramarvin@gmail.com', 'Btech information technology', '$2y$10$PtbkZbGrwwxbk8TVbG93t.59cuAkaGSOh6VachWnL9lwVtEk4Jbza', '2019-04-15 16:23:00.000000'),
(14, 'scii/0123/2015', 'espiramarvin@gmail.com', 'Btech Information Technology', '$2y$10$8f5QiwbImkDL24drJbofIOHWOxia6etNyQNA/xk0b0vsZ6kvHjp8C', '2019-04-16 10:21:20.190901'),
(15, 'scii/01/2015', 'jamesshisiah@gmail.com', 'Btech information technology', '$2y$10$/.JZCqviKSrUbKT4RSGwAeO/hWGOjloS3Z.HfkRMiPfxdbYEHXObu', '2019-04-17 06:22:28.017474'),
(16, 'scii/321/2015', 'marvinrecover@gmail.com', 'Btech information technology', '$2y$10$UsWds9EmlwpoR9AOj8/q7OpyGG54WvAzAXYkVg5SVN97PNcMtuBD6', '2019-04-17 06:47:49.564784'),
(17, 'scii/00345/2015', 'berum7tab@gmail.com', 'Btech Information Technology', '$2y$10$.tllVlTW.evs5b3qkFYG7ukWIitpYbURlLcq1X.4EPFJlQQI1cXTC', '2019-06-11 07:41:14.569427');

-- --------------------------------------------------------

--
-- Table structure for table `verification_table`
--

CREATE TABLE `verification_table` (
  `user_id` int(11) NOT NULL,
  `user_admno` varchar(20) NOT NULL,
  `user_faculty` varchar(40) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verification_table`
--

INSERT INTO `verification_table` (`user_id`, `user_admno`, `user_faculty`, `created_at`) VALUES
(1, 'scii/01972/2015', 'Social Sciences & Technology', '2019-04-04 07:04:38.000000'),
(2, 'scii/1/2015', 'Social Sciences & Technology', '2019-04-04 07:05:44.000000'),
(3, 'scii/01972/2011', 'Engineering Sciences & Technology', '2019-04-15 16:22:39.000000'),
(4, 'scii/0123/2015', 'Applied Sciences & Technology', '2019-04-16 10:20:47.202858'),
(5, 'scii/01/2015', 'Applied Sciences & Technology', '2019-04-17 06:20:59.793100'),
(6, 'scii/321/2015', 'Social Sciences & Technology', '2019-04-17 06:46:50.752993'),
(7, 'scii/00345/2015', 'Applied Sciences & Technology', '2019-06-11 07:40:10.896963');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`application_id`);

--
-- Indexes for table `attached`
--
ALTER TABLE `attached`
  ADD PRIMARY KEY (`attached_id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`org_id`),
  ADD UNIQUE KEY `org_email` (`org_email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_admno` (`user_admno`);

--
-- Indexes for table `verification_table`
--
ALTER TABLE `verification_table`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_admno` (`user_admno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `attached`
--
ALTER TABLE `attached`
  MODIFY `attached_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `verification_table`
--
ALTER TABLE `verification_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
