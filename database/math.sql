-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 19, 2022 at 05:12 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `math`
--

-- --------------------------------------------------------

--
-- Table structure for table `difficulty`
--

DROP TABLE IF EXISTS `difficulty`;
CREATE TABLE IF NOT EXISTS `difficulty` (
  `difficulty_id` int(11) NOT NULL AUTO_INCREMENT,
  `difficulty_level` varchar(11) NOT NULL,
  PRIMARY KEY (`difficulty_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `difficulty`
--

INSERT INTO `difficulty` (`difficulty_id`, `difficulty_level`) VALUES
(1, 'hard'),
(2, 'medium'),
(4, 'easy');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE IF NOT EXISTS `grades` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(4) NOT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`grade_id`, `number`) VALUES
(1, 11),
(2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_grade` int(3) NOT NULL,
  `question_topic` varchar(20) NOT NULL,
  `question_img` varchar(100) NOT NULL,
  `question_difficulty` int(11) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `question_grade`, `question_topic`, `question_img`, `question_difficulty`) VALUES
(1, 12, 'Data Management', 'https://courseware-openhouse.ilc.org/mdm4u/assets/img/mdm4u_01.03.03b.jpg', 2),
(2, 12, 'Calculus', 'https://courseware-openhouse.ilc.org/mdm4u/assets/img/mdm4u_01.03.03b.jpg', 3),
(3, 11, 'Functions', 'https://courseware-openhouse.ilc.org/mdm4u/assets/img/mdm4u_01.03.03b.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(30) NOT NULL,
  `topic_description` text NOT NULL,
  `topic_image` varchar(100) NOT NULL,
  `read_number` int(10) DEFAULT NULL,
  `grades_id` int(11) NOT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `topic_name`, `topic_description`, `topic_image`, `read_number`, `grades_id`) VALUES
(1, 'Data Management', 'This course will broaden your understanding of mathematics as it relates to managing data. You will apply methods for organizing and analysing large amounts of information; solve problems involving probability and statistics; and carry out a culminating investigation that integrates statistical concepts and skills. You will also refine your use of the mathematical processes necessary for success in senior mathematics. If you are planning to enter university programs in business, the social sciences, and the humanities you will find this course of particular interest.', 'https://courseware-openhouse.ilc.org/mdm4u/assets/img/mdm4u_01.01.01.jpg', 0, 2),
(2, 'Functions', 'This course introduces basic features of the function by extending your experiences with quadratic relations. It focuses on quadratic, trigonometric, and exponential functions and their use in modelling real-world situations. You will represent functions numerically, graphically, and algebraically; simplify expressions; solve equations; and solve problems relating to applications. You will reason mathematically and communicate your thinking as you solve multi-step problems', 'https://courseware-openhouse.ilc.org/mcf3m/assets/img/mcf3m_04.05.05.jpg', 0, 1),
(3, 'Calculus', 'This course builds on your previous experience with functions and your developing understanding of rates of change. You will solve problems involving geometric and algebraic representations of vectors and representations of lines and planes in three-dimensional space; broaden your understanding of rates of change to include the derivatives of polynomial, sinusoidal, exponential, rational, and radical functions; and apply these concepts and skills to the modelling of real-world relationships.\r\n\r\nYou will also refine your use of the mathematical processes necessary for success in senior mathematics. This course prepares you for careers in fields such as science, engineering, economics, and some areas of business. It will prepare you for university-level calculus, linear algebra, or physics courses.', 'https://courseware-openhouse.ilc.org/mcv4u/assets/img/mcv4u_01.02.01.jpg', 0, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
