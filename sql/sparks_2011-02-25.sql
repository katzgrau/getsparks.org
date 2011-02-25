# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.49)
# Database: sparks
# Generation Time: 2011-02-25 09:53:18 -0500
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table contributors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contributors`;

CREATE TABLE `contributors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_hash` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `real_name` varchar(50) NOT NULL,
  `community_profile_link` varchar(150) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

LOCK TABLES `contributors` WRITE;
/*!40000 ALTER TABLE `contributors` DISABLE KEYS */;
INSERT INTO `contributors` (`id`,`username`,`email`,`email_hash`,`password`,`real_name`,`community_profile_link`,`website`,`created`,`modified`)
VALUES
	(1,'seejohnrun','elliot@haughin.com','05746ee5bd9c390529bcfc4e97bfaf92','','John Crepezzi','http://johncrepzzi.com','http://johncrepzzi.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(3,'katzgrau','katzgrau@gmail.com','053aed11225b557dbc877098912f9048','b79f57f1fec16eba817558d716cd3d3a4b602e63','Kenny Katzgrau',NULL,'http://codefury.net','2011-02-04 23:35:22','2011-02-04 23:35:22');

/*!40000 ALTER TABLE `contributors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table downloads
# ------------------------------------------------------------

DROP TABLE IF EXISTS `downloads`;

CREATE TABLE `downloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `user_agent` varchar(250) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_dl_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

LOCK TABLES `downloads` WRITE;
/*!40000 ALTER TABLE `downloads` DISABLE KEYS */;
INSERT INTO `downloads` (`id`,`type`,`ip`,`user_agent`,`created`)
VALUES
	(1,NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-07 23:33:10'),
	(2,NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-07 23:33:13'),
	(3,NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-07 23:33:20'),
	(4,NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-07 23:36:36'),
	(5,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-07 23:37:12'),
	(6,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-07 23:38:24'),
	(7,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-08 18:36:57'),
	(8,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-09 09:40:21'),
	(9,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-09 19:31:36'),
	(10,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-11 00:23:11'),
	(11,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-11 09:26:57'),
	(12,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-11 09:27:47'),
	(13,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-11 09:35:03'),
	(14,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-11 09:50:03'),
	(15,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-12 20:14:48'),
	(16,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.94 Safari/534.13','2011-02-12 20:30:09'),
	(17,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-12 20:56:47'),
	(18,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-12 23:57:19'),
	(19,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-13 15:36:18'),
	(20,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-13 17:01:53'),
	(21,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:06:57'),
	(22,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:07:17'),
	(23,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:07:52'),
	(24,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:07:58'),
	(25,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:09:14'),
	(26,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:09:15'),
	(27,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:12:29'),
	(28,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:12:30'),
	(29,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:32:56'),
	(30,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:33:01'),
	(31,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:33:02'),
	(32,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:33:15'),
	(33,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:33:16'),
	(34,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:33:19'),
	(35,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:33:36'),
	(36,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:33:37'),
	(37,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:33:40'),
	(38,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:34:28'),
	(39,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:35:59'),
	(40,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:36:00'),
	(41,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:36:01'),
	(42,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-16 23:52:14'),
	(43,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-19 21:09:36'),
	(44,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-19 21:12:37'),
	(45,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-19 21:12:37'),
	(46,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-19 21:12:38'),
	(47,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-19 21:13:08'),
	(48,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-19 21:13:08'),
	(49,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-20 09:11:46'),
	(50,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-20 12:22:01'),
	(51,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-20 16:14:17'),
	(52,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-20 16:14:24'),
	(53,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-22 09:28:16'),
	(54,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-22 09:29:30'),
	(55,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-22 09:31:19'),
	(56,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-22 21:47:13'),
	(57,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-22 22:21:16'),
	(58,'system','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-23 00:14:45'),
	(59,'spec','127.0.0.1','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','2011-02-25 09:26:02');

/*!40000 ALTER TABLE `downloads` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table installs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `installs`;

CREATE TABLE `installs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spark_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `spark_id` (`spark_id`),
  CONSTRAINT `installs_ibfk_1` FOREIGN KEY (`spark_id`) REFERENCES `sparks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

LOCK TABLES `installs` WRITE;
/*!40000 ALTER TABLE `installs` DISABLE KEYS */;
INSERT INTO `installs` (`id`,`spark_id`,`created`)
VALUES
	(42,13,'2011-02-19 21:09:36'),
	(43,13,'2011-02-19 21:12:37'),
	(44,13,'2011-02-19 21:12:37'),
	(45,13,'2011-02-19 21:12:38'),
	(46,13,'2011-02-19 21:13:08'),
	(47,13,'2011-02-19 21:13:08'),
	(48,13,'2011-02-20 09:11:46'),
	(49,13,'2011-02-20 12:22:01'),
	(50,14,'2011-02-20 16:14:17'),
	(51,14,'2011-02-20 16:14:24'),
	(52,13,'2011-02-25 09:26:02');

/*!40000 ALTER TABLE `installs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sparks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sparks`;

CREATE TABLE `sparks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contributor_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `repository_type` enum('svn','git','hg') NOT NULL,
  `base_location` varchar(150) NOT NULL,
  `website` varchar(150) NOT NULL,
  `is_unsupported` tinyint(1) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `is_official` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contributor_id` (`contributor_id`),
  KEY `idx_spark_name` (`name`),
  CONSTRAINT `sparks_ibfk_1` FOREIGN KEY (`contributor_id`) REFERENCES `contributors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

LOCK TABLES `sparks` WRITE;
/*!40000 ALTER TABLE `sparks` DISABLE KEYS */;
INSERT INTO `sparks` (`id`,`contributor_id`,`name`,`summary`,`description`,`repository_type`,`base_location`,`website`,`is_unsupported`,`is_approved`,`is_official`,`is_featured`,`created`,`modified`)
VALUES
	(11,3,'robot-helper','Robot Helper','For dealing w/ spam!','git','git://github.com/katzgrau/ci-robot-helper.git','',0,0,0,0,'2011-02-05 16:53:40','2011-02-05 16:53:40'),
	(12,1,'gravatar_helper','Gravatar Helper','Easily add gravatar to your site with a few convenient helpers','git','https://github.com/seejohnrun/gravatar_helper.git','',0,0,1,0,'2011-02-05 17:43:28','2011-02-05 17:43:28'),
	(13,3,'markdown','A markdown helper for easy parsing of markdown','# Markdown\n\nA spark for PHP\'s implementation of a markdown parser at [http://michelf.com/projects/php-markdown/](http://michelf.com/projects/php-markdown/)\n\n## Usage\n\nIt\'s simple! Just:\n\n    $this->load->spark(\'markdown\');\n    $html = parse_markdown($markdown);\n\n## Bugs\n\nSend bugs to katzgrau@gmail.com','hg','https://bitbucket.org/katzgrau/ci-spark-markdown','',0,0,1,1,'2011-02-11 03:38:03','2011-02-11 03:38:03'),
	(14,3,'example-spark','An example spark to install and use as a model for building sparks','# example-spark\n\nI wrote this spark as an example of how to write/package a spark, and also for use in a spark installation tutorial.\n\n## Usage\n\n    $this->spark->load(\'example-spark/1.0\');      # We specify the version for now. This might change\n    $this->example_spark->printHello();           # echo\'s \"Hello from the example spark!\"\n\n## Bug Reports\n\n[katzgrau@gmail.com](mailto:katzgrau@gmail.com)\n','hg','https://katzgrau@bitbucket.org/katzgrau/example-spark','',0,0,1,0,'2011-02-17 05:21:24','2011-02-17 05:21:24'),
	(15,3,'birdseed','A spark for grabbing a user\'s tweets!','Quite possibly the most useful spark ever!','hg','https://bitbucket.org/katzgrau/birdseed','',0,0,0,0,'2011-02-23 19:22:06','2011-02-23 19:22:06');

/*!40000 ALTER TABLE `sparks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `versions`;

CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spark_id` int(11) NOT NULL,
  `version` varchar(10) NOT NULL,
  `readme` text NOT NULL,
  `readme_html` text NOT NULL,
  `archive_url` varchar(300) NOT NULL,
  `is_deactivated` tinyint(1) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `spark_id` (`spark_id`),
  CONSTRAINT `versions_ibfk_1` FOREIGN KEY (`spark_id`) REFERENCES `sparks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` (`id`,`spark_id`,`version`,`readme`,`readme_html`,`archive_url`,`is_deactivated`,`is_verified`,`created`,`modified`)
VALUES
	(17,13,'1.0','','','http://sparks.codeigniter.com/static/archives/markdown/markdown-v1.0.zip',0,1,'2011-02-20 13:04:50','2011-02-20 13:04:50'),
	(18,13,'1.1','','','http://sparks.codeigniter.com/static/archives/markdown/markdown-v1.1.zip',0,1,'2011-02-20 13:05:18','2011-02-20 13:05:18'),
	(21,14,'1.0','','','http://sparks.codeigniter.com/static/archives/example-spark/example-spark-v1.0.zip',0,1,'2011-02-20 16:12:04','2011-02-20 16:12:04');

/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
