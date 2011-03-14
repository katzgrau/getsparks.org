-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 13, 2011 at 11:01 PM
-- Server version: 5.1.44
-- PHP Version: 5.2.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `sparks`
--

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sparks_id` int(11) NOT NULL,
  `contributors_id` int(11) NOT NULL,
  `rating_id` varchar(16) NOT NULL,
  `voted` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sparks_id` (`sparks_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rating_names`
--

CREATE TABLE `rating_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rating_names`
--

INSERT INTO `rating_names` VALUES(1, 'hate');
INSERT INTO `rating_names` VALUES(2, 'like');
INSERT INTO `rating_names` VALUES(3, 'love');
