/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `session`;

CREATE TABLE `session` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `session_key` varchar(32) NOT NULL DEFAULT '',
  `session_start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `session_end` datetime DEFAULT NULL,
  `session_type` varchar(255) DEFAULT NULL,
  `session_subtype` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `active` char(1) DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;

INSERT INTO `session` (`id`, `name`, `session_key`, `session_start`, `session_end`, `session_type`, `session_subtype`, `description`, `active`)
VALUES
	('0183184a13d827265e984af5d1b97037','Mission','57','2019-01-25 15:00:00','2019-01-25 16:00:00','Physical Training [BRONZE]','','Work together to launch the shuttle to the International Space Station, to complete experiments that approximate those conducted in space and to return the crew to Earth. Problem solving and communication is key as problems, or anomalies, arise. In the Space Station you are busy at work completing several experiments in the areas of chemistry, physics and biology.','Y'),
	('05622bf5eb7f720b1540b90c56f82729','Crew Systems','25','2019-01-23 09:30:00','2019-01-23 10:30:00','Astronaut Training [GOLD]','','Part of astronaut training is learning how to sleep, eat and work in space. This session answers commonly asked questions about how astronauts perform everyday activities in microgravity.','Y'),
	('0a6278a3939836f5f526cb2ece340a86','1/6th Gravity Chair','37','2019-01-24 11:00:00','2019-01-24 12:00:00','Astronaut Training [GOLD]','','Find out how it would feel to walk on the moon, where there is only one sixth of the Earth&rsquo;s gravity, in this simulator inspired by the Apollo program.','Y'),
	('0d9f014dbf7604a8c6b6faeb89c446ec','Beam Me Up!','29','2019-01-23 09:30:00','2019-01-23 10:30:00','','Classroom','This session utilizes four experiments to teach the you about the scientific method and the wide variety of experiments conducted on the International Space Station. Each group of four completes one experiment.','Y'),
	('143a124eca93d53f277fe2f74fb95e80','Strange Robotics','43','2019-01-25 15:30:00','2019-01-25 16:30:00','Robotics [GOLD]','','This session presents you to the many real world applications of robotics technology with a slide show and Lego examples.','Y'),
	('182251ce7ea64009f7151dc211bb4560','Rocket Construction and Launch','46','2019-01-25 13:30:00','2019-01-25 14:30:00','Astronaut Training [GOLD]','','Discover how rockets function by creating and launching your own Estes rocket.','Y'),
	('1a90113c1ad29547dc3e7ce4726076f9','Engineering Workshop','28','2019-01-23 09:30:00','2019-01-23 10:30:00','Robotics [GOLD]','','This session uses a Lego model, the Mars Car, to teach you the steps of the design process and basic building strategies. You have an opportunity to experiment with different gear and pulley combinations before you race your creations at the end of the session.','Y'),
	('22db6b4769ed316d92f0b20d8e9ab6d3','Graduation','60','2019-01-26 03:00:00','2019-01-26 04:00:00','Get Together [BRONZE]','','','Y'),
	('2e8292a1c2886958293be6ab48687519','Flight Physiology','41','2019-01-24 09:30:00','2019-01-24 10:30:00','Aviation [SILVER]','','Investigate the spatial disorientation a pilot feels when aircraft malfunction in the Barney Chair, a training device used in pilot training programs worldwide. Concepts include aileron malfunction, tail rotor failure and their physiological effects on body systems.','Y'),
	('3299dff625e302161ab2e678f9803ded','Mission Training','27','2019-01-23 15:00:00','2019-01-23 16:00:00','history-21-gold','','Experience a one and half hour mission. Each member of the team will be trained in a specialized role in Mission Control or the Orbiter and Space Station simulators.','Y'),
	('4f02f11d4889cdde63c12890d48da26f','Mars Mission','50','2019-01-25 14:30:00','2019-01-25 15:30:00','History 21+ [GOLD]','','Test the soil, mineral makeup, landscape, acidity and radioactivity of four areas on Mars. Then decide which area would be the most suitable for human inhabitation.','Y'),
	('5395d2021bdde65031cb18559ecc1ffd','Script Practice','33','2019-01-23 16:30:00','2019-01-23 17:30:00','moon-stars-silver','','This is the last practice before the mission commences.','Y'),
	('62375e3eced796be9f6f4836625d8ecb','Astronaut Missions: Gemini Really Long Name Name Astronaut Missions: Gemini Really Long Name Name','24','2019-01-23 11:00:00','2019-01-23 12:00:00','','','Here trainees learn the steps that NASA took to test the many manuvers and procedures that would eventually take us to the moon.','Y'),
	('676e04e92592ef515ce496dd1d7b6f45','Shuttle Exhibit','2','2019-01-22 13:00:00','2019-01-22 14:00:00','Get Together [BRONZE]','','Expore the new Space and Rocket Center shuttle exhibit and discuss the highlights of twenty years of shuttle flights.','Y'),
	('6aa7e929889f8c87f483d5a121c0eff3','Patch Design','47','2019-01-24 13:30:00','2019-01-24 14:30:00','History 21+ [GOLD]','','Design a squadron patch that describes your group.','Y'),
	('76aa890a6969126fb480b8a6b06374f7','Strange Science','35','2019-01-23 13:30:00','2019-01-23 14:30:00','history-21-gold','Classroom','This highly interactive and energetic presentation about the amazing things space has to offer. These simple demonstrations illustrate principles as they relate to space exploration.','Y'),
	('7c536d6765a2aab6294dbb71d4374ba9','Land Survival','32','2019-01-23 13:30:00','2019-01-23 14:30:00','Aviation [SILVER]','','Aircraft may not always work, and pilots should be prepared for any situation. Like pilots and astronauts, learn the basics of land survival.','Y'),
	('836498346d0e7495d309b78008bb6dff','Mission Debrief','48','2019-01-22 12:30:00','2019-01-22 13:30:00','','','The mission debrief is a time to discuss and celebrate the completed mission and to share the comments made by Simulations staff.','Y'),
	('872299026b91bca89fd6ace3987940ac','5-Degrees of Freedom Chair','22','2019-01-23 11:00:00','2019-01-23 12:00:00','Astronaut Training [GOLD]','','This simulator simulates the five degrees of freedom, forward, backward, side-to-side, roll, pitch and yaw. Performing these movements simulate what it would be like to work in the frictionless environment of space during an EVA. They also demonstrate Newton&rsquo;s Third Law of Motion.','Y'),
	('87ac84437c9b76c66e3decb94c0f11a4','Robots','36','2019-01-23 19:00:00','2019-01-23 21:00:00','Get Together [BRONZE]','','Today\'s robots are nothing short of astonishing. Those coming in the not-too-distant future are simply revolutionary&mdash;and they are becoming eerily like us. What does it take to make a humanoid robot&mdash;a robot that can do anything we can do without the benefit of a human brain? How close are scientists to replicating some of the particularly challenging human characteristics? (Think fingers and toes.) Why are we even attempting to create humanoids in the first place? ROBOTS answers these questions and more as it showcases the latest developments&mdash;the successes and failures&mdash;of robotics around the world. ROBOTS is a fascinating and fun look at what makes us human, how far machines can really go to look and act like us, and how humanoids are already changing our world. ROBOTS is a sneak peek into the future at what might be possible as scientists use innovative engineering and design to make cyber characters less \"humanoid\"\" and more just plain human. Robot \"\"actor\"\" RoboThespian will introduce you to CHIMP','A'),
	('940db9f9690c8edb26bbe75c1361d3bd','G Force','23','2019-01-23 08:00:00','2019-01-23 09:00:00','Astronaut Training [GOLD]','','This simulator is designed to prepare you for the forces of acceleration experienced by astronauts during launch, the times the force of Earth&rsquo;s gravity.','Y'),
	('95248a611c862c86e0af59a155bbc6d7','Why Space?','31','2019-01-23 13:30:00','2019-01-23 14:30:00','Astronaut Training [GOLD]','Classroom','Discuss why scientists chose to explore space, and learn about common products developed with space technology.','Y'),
	('a060d9bc4b5afd75a0e1973d94513474','Robotics Banners','52','2019-01-25 10:00:00','2019-01-25 11:00:00','Aerospace Robotics [SILVER], Robotics [GOLD]','','Create banners to represent the attributes of your <a href=\"https://schedspacecamp2015.sched.com/editor/\\\\\\\\&quot;https:/en.wikipedia.org/wiki/Robotics\\\\\\\\&quot;\"\" target=\"\"\\\\\\\\&quot;_self\\\\\\\\&quot;\"\">robotics</a> group.\"','Y'),
	('a9675d2149c850639bbd05694026ab23','Liftoff','40','2019-01-24 09:30:00','2019-01-24 10:30:00','Astronaut Training [GOLD]','','Take the role of a shuttle commander during launch in this computer simulation.','Y'),
	('aa997d551e791ded805f5d5cc4521709','Graduation','51','2019-01-26 03:00:00','2019-01-26 04:00:00','History 21+ [GOLD]','','','N'),
	('b22c429c6cf7b232c2eff63c2c489c20','Spacewalk Simulator 2','54','2019-01-25 09:00:00','2019-01-25 11:00:00','Astronaut Training [GOLD]','','This motion-based simulation features a spacewalk outside of the International Space Station.','Y'),
	('bd02c1166d312ca95058ad09faaa8d14','Astronaut Missions: Apollo','39','2019-01-24 11:00:00','2019-01-24 12:00:00','History 21+ [GOLD]','','This session chronicals some of the most exciting moments in the space race. Trainees find out how NASA recoved from the tragic Apollo 1 fire, how engineers designed the vehicles that transported men to the moon and what astronauts and scientists discovered from these trips.','Y'),
	('c5f781e5c037094146c82ed140fbe1f2','Spacewalk Simulator 3','55','2019-01-25 20:30:00','2019-01-25 22:30:00','Physical Training [BRONZE]','','This <strong>motion-based simulation</strong> features a <em>spacewalk outside</em> of the <a href=\\\\\\\"https://www.nasa.gov/mission_pages/station/main/\\\\\\\\\"\" target=\\\\\\\\\"\"_blank\\\\\\\\\"\">International Space Station</a>.\"','Y'),
	('d1a8dee46a1a2fd57bd5ca53ba657637','Skybase','44','2019-01-24 09:30:00','2019-01-24 10:30:00','moon-stars-silver','','Design you own modular space station that meets particular engineering objectives in this computer simulation that utilizes the parts of the International Space Station.','Y'),
	('e2f450fa28293fb7d88144879e62b97d','Flight Simulators','26','2019-01-23 09:30:00','2019-01-23 10:30:00','Aviation [SILVER]','','Practice take-off, landing and basic maneuvers in four computer simulations that allow the you to see the principles of flight in action.','Y'),
	('e5eebd6970ee66291d86412ec3d6ba7b','Programming Workshop','34','2019-01-23 13:30:00','2019-01-23 14:30:00','Robotics [GOLD]','','In this session you learn to use Robolab, a powerful programming language, to command robotic creations.','Y'),
	('e8178cf4d9552e63920e453ee2d4278e','Space Shot','38','2019-01-24 08:00:00','2019-01-24 09:00:00','Astronaut Training [GOLD]','','This exciting simulator launches the you 140 feet in 2.5 seconds allowing you to feel four times the force of Earth&rsquo;s gravity and 2-3 seconds of freefall.','Y'),
	('e979adf948f46fd8909c24f4959ef44f','Journey To Space','21','2019-01-22 19:00:00','2019-01-22 21:00:00','Get Together [BRONZE]','','Journey to Space uses visually stunning imagery and commentary from leading space experts to review NASA\'s recent adventures and illustrate its upcoming challenges&mdash;exploring deep space and eventually sending a manned craft to Mars. Through brilliant narration by film and television icon Sir Patrick Stewart and extensive interviews with NASA astronauts Chris Ferguson and Serena Aunon, the film captures the spirit of human exploration and depicts how NASA has transitioned from the end of the space shuttle era to a much more ambitious future that will forever change how we live and operate in space. Meet the new machines and craft that will help NASA write this new chapter in space exploration. Take a look back at the space shuttle program and its 135 missions flown by 355 astronauts. Learn how the shuttle program\'s last major project&mdash;the launch and assembly of the International Space Station&mdash;will now help to reveal the challenges that may face our deep space explorers on their way toward new frontiers.','Y'),
	('f100d464a96481a774b6efefb1ce39e9','Water Activities','45','2019-01-24 11:00:00','2019-01-24 12:00:00','Physical Training [BRONZE]','','Astronauts train underwater because neutral buoyancy is the closest we can come on earth to creating a weightless environment in which astronauts can train. The activities are designed to create some of those same sensations as well as opportunities for teams to work together and practice team-building skills.','Y'),
	('f735a43e6933e41901887035236e38f3','Robotics Banners','49','2019-01-25 11:00:00','2019-01-25 12:00:00','History 21+ [GOLD], Moon & Stars [SILVER]','','Create banners to represent the attributes of your <a href=\"https://en.wikipedia.org/wiki/Robotics\"\" target=\"\"_self\"\">robotics</a> group.\"','Y'),
	('f9492399461f390b11b639e20a5d83bb','Water Activities','30','2019-01-23 11:00:00','2019-01-23 12:00:00','Physical Training [BRONZE]','','Astronauts train underwater because neutral buoyancy is the closest we can come on earth to creating a weightless environment in which astronauts can train. The activities are designed to create some of those same sensations as well as opportunities for teams to work together and practice team-building skills.','Y');

/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
