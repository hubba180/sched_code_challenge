# ************************************************************
# Sequel Pro SQL dump
# Version 5224
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 192.168.187.127 (MySQL 5.5.53-38.5-log)
# Database: analytics
# Generation Time: 2018-04-20 18:05:27 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL DEFAULT '',
  `joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  `about` mediumtext,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 4096 kB; InnoDB free: 0 kB';

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `username`, `joined`, `name`, `email`, `url`, `about`, `avatar`)
VALUES
	(2168713,'sally_ride.1u3o2d5k','2015-08-06 13:55:38','Sally Ride','racheldrudi+sally@gmail.com','','Sally Kristen Ride was an American physicist and astronaut. Born in Los Angeles, she joined NASA in 1978 and became the first American woman in space in 1983.','//avatars.schd.ws/2/DF/2168713/avatar.jpg'),
	(2168714,'nasa.6lyt1bg','2015-08-06 13:55:38','NASA','racheldrudi+nasa@gmail.com','http://www.nasa.gov/','This is a test','//avatars.schd.ws/1/7C/2168714/avatar.jpg'),
	(2168715,'chris_hadfield.1u3o2d59','2015-08-06 13:55:38','Chris Hadfield','','http://chrishadfield.ca/','Chris Austin Hadfield OC OOnt MSC CD is a retired Canadian astronaut who was the first Canadian to walk in space.','//avatars.schd.ws/8/6E/2168715/avatar.jpg'),
	(2168717,'us_marine_corps.1u3o2d4l','2015-08-06 13:55:38','US Marine Corps','','https://www.marines.com/','The United States Marine Corps (USMC) is a branch of the United States Armed Forces responsible for providing power projection from the sea,[8] using the mobility of the U.S. Navy to rapidly deliver combined-arms task forces. The U.S. Marine Corps is one of the four branches in the U.S. Department of Defense as a member of the Joint Chiefs of Staff. It is one of the seven uniformed services of the United States.','//avatars.schd.ws/2/69/2168717/avatar.jpg'),
	(2168719,'lego.1u3o2d5j','2015-08-06 13:55:38','Lego','','http://www.lego.com/en-us/','Toy building bricks','//avatars.schd.ws/6/92/2168719/avatar.jpg'),
	(2168722,'omnimax.1u3o2d7l','2015-08-06 13:55:39','IMAX','','https://www.imax.com/','IMAX (an acronym for Image MAXimum) is a motion picture film format and a set of cinema projection standards created by the Canadian company IMAX Corporation and developed by Graeme Ferguson, Roman Kroitor, Robert Kerr, and William C. Shaw.[1] IMAX has the capacity to record and display images of far greater size and resolution than conventional film systems. Since 2002, some feature films have been converted (or upgraded) into IMAX format for display in IMAX theatres and some have also been partially shot in IMAX.','//avatars.schd.ws/1/A2/2168722/avatar.jpg'),
	(2402291,'racheldrudicheckin','2015-10-23 07:52:36','Checkin Test','racheldrudi+checkin@gmail.com','','','//avatars.schd.ws/F/0D/2402291/avatar.jpg'),
	(3095269,'bill','2016-07-05 13:33:11','Bill','bill@headnix.com','','','//avatars.schd.ws/2/8c/3095269/avatar.jpg.320x320px.jpg?49c'),
	(3096302,'billblah','2016-07-06 02:32:47','Blah Blah 1','bill-blah@autopilot.headnix.com','','',NULL),
	(3114760,'racheldrudicheckintest','2016-07-12 17:32:43','Checkin Test','racheldrudi+checkintest@gmail.com','','',''),
	(3199382,'mlee525spacecamp','2016-08-09 12:39:19','Michelle','mlee525+spacecamp@gmail.com','','',NULL),
	(3531084,'stmataiccheckinapp','2016-11-14 06:17:22','STM Checkin','stmataic+checkinapp@gmail.com','','',''),
	(3766082,'ryswearcheckintest','2017-02-17 13:04:41','Test (Ryan)','ryswear+checkintest@gmail.com','','','');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
