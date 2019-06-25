-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 20, 2019 at 02:12 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tah77`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE IF NOT EXISTS `actors` (
  `actor_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `birth_date` datetime NOT NULL,
  `biography` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`actor_id`, `first_name`, `last_name`, `birth_date`, `biography`) VALUES
(1, 'Neely', 'Jacque', '1972-05-10 10:00:00', 'biography here'),
(2, 'Maria', 'McBee', '1992-04-20 09:00:00', 'actor biography'),
(3, 'Makai', 'Freeman', '1997-08-30 02:00:00', 'another biography'),
(4, 'Evelyn', 'Franklin', '1988-10-12 03:00:00', 'evelyn franklin biography'),
(5, 'Jed', 'Moro', '1990-08-11 01:00:00', 'jed moro biography'),
(6, 'Twanda', 'Ribiero', '1970-02-20 00:00:00', 'akdjadfljadkfj idfjlajf iuwoaeiwaueu'),
(7, 'Eda', 'Kovar', '1968-01-14 04:00:00', 'a biography for eda'),
(8, 'Jacinto', 'Caberra', '1982-06-08 07:00:00', 'blah blah blah blah'),
(9, 'Eliza', 'Malson', '1992-06-06 02:00:00', 'eliza malson bio'),
(10, 'Rashad', 'Paff', '2001-10-16 10:00:00', 'things that happened'),
(11, 'Raquele', 'Gularte', '1984-08-10 05:00:00', 'ssiufpidaiufu kslafjdj thtththht'),
(12, 'Ayanna', 'Ortman', '1996-10-16 07:00:00', 'ooooooooooooooooooooooooo');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(100) NOT NULL,
  `street_address` varchar(150) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `location_name`, `street_address`, `city`, `state`, `zip`) VALUES
(1, 'movie location', '123 street ave', 'new york', 'NY', '15217'),
(2, 'another place', '44 second ave', 'pittsburgh', 'PA', '15217'),
(3, 'a big building', '77 place rd', 'houston', 'TX', '15217'),
(4, 'the park', '543 brick st', 'san diego', 'CA', '15217'),
(5, 'niagara falls', '22 falls dr', 'niagara', 'NY', '15217');

-- --------------------------------------------------------

--
-- Table structure for table `Movies`
--

CREATE TABLE IF NOT EXISTS `Movies` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `release_date` datetime NOT NULL,
  `plot_description` varchar(4000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Movies`
--

INSERT INTO `Movies` (`movie_id`, `title`, `release_date`, `plot_description`) VALUES
(1, 'movietitle', '2018-02-10 10:34:34', 'description'),
(2, 'movietwo', '2004-12-03 10:24:04', 'a movie about things'),
(3, 'another_movie', '1976-03-13 02:24:03', 'insert plot'),
(4, 'movie_title', '2013-09-12 01:12:07', 'the plot of the movie'),
(5, 'the_fifth_movie', '2009-05-17 10:02:07', 'description of the plot'),
(6, 'Duke of Risk', '2018-11-19 05:00:00', 'action movie'),
(7, 'Green Destiny', '2017-02-15 03:00:00', 'Sddfjdjjdjd jajaiwoeu asdlkjalsdj lksjd'),
(8, 'The Academy Edge', '2008-03-16 09:00:00', 'wowowoow waoiudoasudosudi wkwkasdkjsdjsl'),
(9, 'Moon of Serpent', '2012-06-03 00:00:00', 'asldkasjdklsdj asldjslkdjskjd iaouwieuwoieuwoeu aslkdjskj'),
(10, 'Legacy of Flames', '2018-08-13 03:00:00', 'asodiusaidu fioeufriruaoadlfajkdfksaf lkdkjjsoiufe ueiourq'),
(11, 'Deep Night', '1999-07-31 04:00:00', 'jafdljadljf kwiuiwueue alksdjlaksjdlasjd '),
(12, 'The Bridge of the Witches', '2010-08-08 02:00:00', 'aldk sjdlkasjd sadk lsa wioeuwoiuewoiue asjjsj alsjdlskjd'),
(13, 'Seventh Tale', '1997-07-03 11:00:00', 'sldjks asidui usiu iu iuaodp lajdi iu iuio');

-- --------------------------------------------------------

--
-- Table structure for table `movies_actors`
--

CREATE TABLE IF NOT EXISTS `movies_actors` (
  `actor_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_actors`
--

INSERT INTO `movies_actors` (`actor_id`, `movie_id`) VALUES
(2, 1),
(3, 1),
(1, 2),
(5, 2),
(1, 3),
(10, 3),
(7, 4),
(9, 6),
(10, 6),
(4, 9),
(8, 12),
(8, 5),
(7, 5),
(7, 11),
(10, 8),
(11, 4),
(5, 12),
(7, 2),
(2, 12),
(6, 12),
(6, 4),
(1, 12),
(1, 4),
(6, 5),
(6, 7),
(1, 5),
(1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `movies_locations`
--

CREATE TABLE IF NOT EXISTS `movies_locations` (
  `movie_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_locations`
--

INSERT INTO `movies_locations` (`movie_id`, `location_id`) VALUES
(1, 5),
(2, 5),
(3, 4),
(12, 3),
(4, 3),
(2, 3),
(10, 3),
(4, 2),
(7, 5),
(10, 3),
(3, 1),
(6, 1),
(7, 1),
(11, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actor_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `Movies`
--
ALTER TABLE `Movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD KEY `fk_ma_movies` (`movie_id`),
  ADD KEY `fk_ma_actors` (`actor_id`);

--
-- Indexes for table `movies_locations`
--
ALTER TABLE `movies_locations`
  ADD KEY `fk_ml_movie` (`movie_id`),
  ADD KEY `fk_ml_location` (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `actor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Movies`
--
ALTER TABLE `Movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD CONSTRAINT `fk_ma_actors` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`),
  ADD CONSTRAINT `fk_ma_movies` FOREIGN KEY (`movie_id`) REFERENCES `Movies` (`movie_id`);

--
-- Constraints for table `movies_locations`
--
ALTER TABLE `movies_locations`
  ADD CONSTRAINT `fk_ml_location` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`),
  ADD CONSTRAINT `fk_ml_movie` FOREIGN KEY (`movie_id`) REFERENCES `Movies` (`movie_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
