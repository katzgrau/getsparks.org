# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.49)
# Database: sparks
# Generation Time: 2011-02-02 23:26:17 -0500
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
  `real_name` varchar(50) NOT NULL,
  `community_profile_link` varchar(150) NOT NULL,
  `website` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `contributors` WRITE;
/*!40000 ALTER TABLE `contributors` DISABLE KEYS */;
INSERT INTO `contributors` (`id`,`username`,`real_name`,`community_profile_link`,`website`,`email`,`created`,`modified`)
VALUES
	(1,'seejohnrun','John Crepezzi','http://johncrepzzi.com','http://johncrepzzi.com','john@oconf.org','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `contributors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sparks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sparks`;

CREATE TABLE `sparks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contributor_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `repository_type` enum('svn','git','hg') NOT NULL,
  `base_location` varchar(150) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contributor_id` (`contributor_id`),
  CONSTRAINT `sparks_ibfk_1` FOREIGN KEY (`contributor_id`) REFERENCES `contributors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `sparks` WRITE;
/*!40000 ALTER TABLE `sparks` DISABLE KEYS */;
INSERT INTO `sparks` (`id`,`contributor_id`,`name`,`display_name`,`description`,`repository_type`,`base_location`,`created`,`modified`)
VALUES
	(1,1,'gravataz','Gravataz','A gravatar helper for CodeIgniter','hg','https://bitbucket.org/seejohnrun/gravatar_helper','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `sparks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `versions`;

CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spark_id` int(11) NOT NULL,
  `version` varchar(10) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `spark_id` (`spark_id`),
  CONSTRAINT `versions_ibfk_1` FOREIGN KEY (`spark_id`) REFERENCES `sparks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` (`id`,`spark_id`,`version`,`created`,`modified`)
VALUES
	(1,1,'1.0','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
