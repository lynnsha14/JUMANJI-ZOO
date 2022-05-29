-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 02:32 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_zoo`
--

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `newsletter_id` int(11) NOT NULL,
  `newsletter_email` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`newsletter_id`, `newsletter_email`, `date`) VALUES
(1, 'hjhgkujhl@yahoo.fr', '2022-05-28 21:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(20) NOT NULL,
  `ticket_price` float NOT NULL,
  `ticket_name` varchar(15) NOT NULL,
  `seat` int(10) NOT NULL,
  `zoo_zone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `ticket_price`, `ticket_name`, `seat`, `zoo_zone`) VALUES
(1, 5, 'pop', 3, 'g_zone'),
(2, 5, 'sample', 2, 'm_zone');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` tinytext COLLATE latin1_general_ci NOT NULL,
  `user_email` tinytext COLLATE latin1_general_ci NOT NULL,
  `user_pwd` longtext COLLATE latin1_general_ci NOT NULL,
  `access_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pwd`, `access_level`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$Lvm6p7c/as9BfSjyaS8eAO1Ipkg0V.AVGkz68PLkEfuOyWMNfoGxG', 1),
(2, 'ma', 'ma@ma.com', '$2y$10$Gy6gniQlmq.sytck0BxpTelB/Tzby6NDEqp5XB8YFHJl5CxBpClZO', 2),
(3, 'thibaut', 'thibautbanzance@yahoo.fr', '$2y$10$TIh.jJ6gWlj8Htk/yu5N6ewZTy8CysHpalDhTioXcs3MwDrjRnYbK', 2),
(4, 'saphir', 'saphir@saphir.com', '$2y$10$NyOII2LNOeVb.tQ5PhE.9.grPUD9j/UQoqalIJ7gZpD0gETZd8ZuC', 2),
(5, 'lynn', 'lynn@lynn.com', '$2y$10$NhS.Gtca6l09HrNmx1lW1uSLaF2sWxfHV8af4HjQF8eXmawwmJkWG', 2),
(9, 'john', 'john@john.com', '$2y$10$jaiHVp5fF0iKfwQ4lYEzZOIt0gssZgEXOMUtXMJ./jkQM4YDbNg26', 2),
(10, 'pop', 'johntrush2@gmail.com', '$2y$10$OyRx5Zk7GPtPJqqd5/qCreJxg9fzu9.FCklDCgfUCNaiCG91MO4ka', 1),
(11, 'pop', 'johntrush2@gmail.com', '$2y$10$.Dsg9hj7nITeKh8Ji0Ver.4AEwmi8euVESsOpLUqvWDjDGsmSVwCa', 1),
(12, 'baby', 'baby@baby.com', '$2y$10$8R8t0aznWfjtdt6wbL/rie39X16PSUauCppOd.Wzp2Frkr/anqwYi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `profile_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `user_name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `first_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `last_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `postal_code` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `phone` int(20) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `photo` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `bg_photo` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `about_me` tinytext COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`profile_id`, `user_id`, `user_email`, `user_name`, `first_name`, `last_name`, `address`, `city`, `country`, `postal_code`, `phone`, `birth_date`, `gender`, `photo`, `bg_photo`, `about_me`) VALUES
(3, 4, 'saphir@saphir.com', 'saphir', 'saphir', 'mohammed', 'odza', 'yaoundÃ©', 'cameroon', '00012', 699876501, '1995-07-20', 'male', 'pictures/pic_profile/admin-settings-male_1570596883.png', 'pictures/bg_profile/downloadpycharm_1570596861.jpg', 'Coders never quit, Quiters never code'),
(4, 3, 'thibautbanzance@yahoo.fr', 'thibaut', 'thibaut', 'jiongang', 'biyem-assi', 'yaoundÃ©', 'cameroon', '123456', 691303184, '1995-02-08', 'male', 'pictures/pic_profile/pp_1570597406.jpg', 'pictures/bg_profile/cover-profile-2_1570597478.jpg', '\"Do what thou wilt !\"'),
(5, 2, 'ma@ma.com', 'ma', 'ma', 'young', 'new york city', 'new york', 'USA', '555563', 19288263, '1996-06-21', 'other', 'pictures/pic_profile/9_1570597775.jpg', 'pictures/bg_profile/cover-profile-2_1570597765.jpg', 'they were trying to get me '),
(6, 5, 'lynn@lynn.com', 'lynn', 'lynn', 'kembou', 'invirgia', 'yaoundÃ©', 'cameroon', '17765yde', 697239684, '1997-06-14', 'female', '', '', 'entre Ãªtre ou ne pas Ãªtre !'),
(7, 6, 'tsafackrovanos@yahoo.fr', 'rovanoos', 'rovanos', 'tsafack', 'monti', 'yaoundÃ©', 'cameroon', '13342', 699878661, '1996-08-14', 'male', '', '', 'its all about mathematics'),
(8, 7, 'tchingaalice@yahoo.fr', 'alice', '', '', '', '', '', '', 0, '0000-00-00', '', '', '', ''),
(9, 8, 'gaga@gaga.fr', 'gaga', '', '', '', '', '', '', 0, '0000-00-00', '', '', '', ''),
(10, 9, 'john@john.com', 'john', '', '', '', '', '', '', 0, '0000-00-00', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`profile_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `newsletter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
