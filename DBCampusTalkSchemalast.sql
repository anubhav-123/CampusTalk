CREATE DATABASE  IF NOT EXISTS `campustalk` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `campustalk`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: campustalk
-- ------------------------------------------------------
-- Server version	5.5.8

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch` (
  `branchid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`branchid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'M.Sc.I.T',2),(2,'B.Tech',4),(4,'M.Tech',2);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `detail` text NOT NULL,
  `enttime` datetime NOT NULL,
  `status` char(2) NOT NULL,
  PRIMARY KEY (`commentid`),
  KEY `user_idx` (`userid`),
  KEY `cpost_idx` (`postid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,3,1,':D :D ;-)','2012-11-03 05:57:57','D'),(2,1,1,'\\m/ <3','2012-11-03 06:00:08','A'),(3,3,1,'Hey.. :)','2012-11-03 06:01:05','A'),(4,1,1,'New Comment :-P','2012-11-03 19:36:23','D'),(5,2,1,'Yo Yo ..','2012-11-04 04:21:35','A'),(6,2,2,'Hey  :)','2012-11-04 06:05:08','A'),(7,3,2,'WHat happen ;-)','2012-11-04 06:05:26','A'),(8,2,1,'Whats up !!','2012-11-04 14:15:55','A'),(9,2,1,'test','2012-11-04 23:23:52','A'),(10,2,1,'new :-','2012-11-04 23:24:47','A'),(11,4,1,'Hey hey','2012-11-04 23:25:47','D'),(12,7,1,'tetetete','2012-11-04 23:26:16','A'),(13,7,1,':-)','2012-11-04 23:29:03','A'),(14,5,2,'New :-)','2012-11-05 04:58:17','A'),(15,2,2,'\\m/','2012-11-05 04:58:33','A'),(16,4,1,'Whats up !!','2012-11-08 15:40:40','D'),(17,14,1,'Whats up !','2012-11-08 16:41:19','A'),(18,14,1,'Ok !!','2012-11-08 16:43:05','A'),(19,14,1,'whts up','2012-11-08 16:45:08','D'),(20,4,1,'Yo yo !!','2012-11-08 16:45:48','A'),(21,4,1,'what ?','2012-11-08 16:46:57','D'),(22,3,1,'whats up :-)','2012-11-10 04:13:33','A'),(23,3,1,'whats up :-)','2012-11-10 04:13:33','A');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `countonreportabuses`
--

DROP TABLE IF EXISTS `countonreportabuses`;
/*!50001 DROP VIEW IF EXISTS `countonreportabuses`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `countonreportabuses` (
  `numberofreport` bigint(21),
  `rpostid` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `eventattends`
--

DROP TABLE IF EXISTS `eventattends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventattends` (
  `eventid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` char(2) NOT NULL,
  PRIMARY KEY (`eventid`,`userid`),
  KEY `userid` (`userid`),
  KEY `eauser_idx` (`userid`),
  KEY `eventid_idx` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventattends`
--

LOCK TABLES `eventattends` WRITE;
/*!40000 ALTER TABLE `eventattends` DISABLE KEYS */;
INSERT INTO `eventattends` VALUES (2,1,'Y'),(2,2,'y'),(12,1,'Y'),(13,1,'Y'),(14,1,'Y');
/*!40000 ALTER TABLE `eventattends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `eventid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `fromdate` datetime NOT NULL,
  `todate` datetime NOT NULL,
  `place` varchar(200) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`eventid`),
  KEY `user_idx` (`userid`),
  KEY `user_idx1` (`userid`),
  KEY `euser_idx` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,'Will tell you later','2013-07-11 00:00:00','2013-08-11 00:00:00','DAIICT','Test'),(2,1,'Will tell you later','2013-07-11 00:00:00','2013-08-11 00:00:00','DAIICT','Test'),(3,1,'Will tell you later','2013-07-11 00:00:00','2013-08-11 00:00:00','DAIICT','Test'),(4,1,'Will tell you later','2013-07-11 00:00:00','2013-08-11 00:00:00','DAIICT','Test'),(5,1,'Get To Gether','2012-06-11 00:00:00','2012-07-11 00:00:00','Gandhinagar','DAIICT'),(6,1,'KKK','2012-06-11 00:00:00','2012-07-11 00:00:00','Ahmedabad','Party'),(7,1,'111','2012-06-11 00:00:00','2012-07-11 00:00:00','Ahmedabad','Party'),(8,1,'Get To Gether','2012-07-11 00:00:00','2012-01-11 00:00:00','Ahmedabad','Cafe'),(9,1,'Get To Gether','2012-07-11 00:00:00','2012-01-11 00:00:00','Ahmedabad','Cafe'),(10,1,'Get To Gether','2014-06-10 00:00:00','2012-01-11 00:00:00','Ahmedabad','Cafe'),(11,1,'Get Together','2012-11-12 00:00:00','2012-10-12 00:00:00','Ahmedbad','Meet AT Place'),(12,1,'Get Together','2012-11-12 00:00:00','2012-10-12 00:00:00','Ahmedbad','Meet AT Place'),(13,1,'TEest','2014-06-10 00:00:00','2013-03-11 00:00:00','Test','Test'),(14,1,'Test Descripiotn','2012-10-11 00:00:00','2012-10-11 00:00:00','TEst Event','Test Subject');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupmembers`
--

DROP TABLE IF EXISTS `groupmembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupmembers` (
  `groupid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `status` char(2) NOT NULL,
  `entdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`,`groupid`),
  KEY `gmuser` (`userid`),
  KEY `gid_idx` (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupmembers`
--

LOCK TABLES `groupmembers` WRITE;
/*!40000 ALTER TABLE `groupmembers` DISABLE KEYS */;
INSERT INTO `groupmembers` VALUES (1,1,'Convenor','V','2012-11-08 20:53:39'),(1,2,'Deputy Convenor','V','2012-11-08 21:00:59');
/*!40000 ALTER TABLE `groupmembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` char(2) NOT NULL,
  PRIMARY KEY (`groupid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'SPC','Student Placement Cell','V'),(2,'Cultural','Cultural Events for DA-IICT','V'),(3,'Sports','Sports @ Daiict','D'),(4,'SBG','Student Body Goverment','V'),(5,'test groupe','testet ','D');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messagedetails`
--

DROP TABLE IF EXISTS `messagedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagedetails` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `message` text NOT NULL,
  `status` char(2) NOT NULL,
  `enttime` datetime NOT NULL,
  PRIMARY KEY (`messageid`),
  KEY `userid_idx` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messagedetails`
--

LOCK TABLES `messagedetails` WRITE;
/*!40000 ALTER TABLE `messagedetails` DISABLE KEYS */;
INSERT INTO `messagedetails` VALUES (17,2,'Hey !!','V','2012-11-07 11:29:22'),(18,1,'Hi Faishal\nWhats up :)','V','2012-11-07 11:31:21'),(19,2,'Nothing much dude .. :)\ntp .. u say \nwhats going on ?','V','2012-11-07 11:47:13'),(20,2,'Nothing much dude .. :)\ntp .. u say \nwhats going on ?','V','2012-11-07 11:47:15'),(21,1,'Nothing much .. Sen project','V','2012-11-07 11:53:28'),(22,2,'Ohk .. :D','V','2012-11-07 11:54:21'),(23,2,'test BroadCast','V','2012-11-07 15:09:37'),(24,2,'You got that :(','V','2012-11-07 15:11:24'),(25,2,'Ellow !! u der ?','V','2012-11-07 15:12:27'),(26,2,'??','V','2012-11-07 15:14:08'),(27,2,'??','V','2012-11-07 15:44:23'),(28,1,'what !!','V','2012-11-07 15:59:26'),(29,1,'what !!','V','2012-11-07 16:00:41'),(30,1,'??','V','2012-11-07 18:09:19'),(31,2,'Nothing !!','V','2012-11-07 18:14:29'),(32,1,'?? ??','V','2012-11-07 18:16:24'),(33,1,'??','V','2012-11-07 18:29:15'),(34,1,'??','V','2012-11-07 18:36:49'),(35,1,'1! !','V','2012-11-07 18:38:36'),(36,1,'? ? ?','V','2012-11-07 18:39:31'),(37,1,'! _ 1','V','2012-11-07 18:40:51'),(38,1,'Yo yo','V','2012-11-07 19:57:20'),(39,1,'Test message','V','2012-11-08 15:41:40'),(40,1,'ok','V','2012-11-10 04:13:57');
/*!40000 ALTER TABLE `messagedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `messageid` int(11) NOT NULL,
  `touserid` int(11) NOT NULL,
  `status` char(2) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`messageid`,`touserid`),
  KEY `mmid_idx` (`messageid`),
  KEY `muser_idx` (`touserid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (17,1,'R'),(18,2,'R'),(19,1,'R'),(20,1,'R'),(21,2,'R'),(22,1,'R'),(23,1,'R'),(24,1,'R'),(25,1,'R'),(26,1,'R'),(27,1,'R'),(28,2,'R'),(29,2,'R'),(30,2,'R'),(31,1,'R'),(32,2,'R'),(33,2,'R'),(34,2,'N'),(35,2,'N'),(36,2,'N'),(37,2,'N'),(38,2,'N'),(39,1,'R'),(40,2,'N');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `detail` text NOT NULL,
  `type` char(2) NOT NULL,
  `status` char(2) NOT NULL,
  `enttime` datetime NOT NULL,
  `lastmodifytime` datetime DEFAULT NULL,
  PRIMARY KEY (`postid`),
  KEY `puserid_idx` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'First Post... :-)','P','D','2012-11-03 01:22:16','2012-11-03 19:36:23'),(2,1,'Second Post :-)','A','D','2012-11-03 01:29:00','2012-11-05 04:58:33'),(3,1,':-D','A','A','2012-11-03 01:29:43','2012-11-10 04:13:33'),(4,1,'New pOst','P','B','2012-11-04 04:21:20','2012-11-08 16:46:57'),(5,2,'My Post :-)','P','A','2012-11-04 07:07:42','2012-11-05 04:58:17'),(6,1,'Test Post :D','A','D','2012-11-04 22:02:29','2012-11-04 22:02:29'),(7,1,'again Test Post','A','D','2012-11-04 22:03:02','2012-11-04 23:29:03'),(8,1,'again Test Post :-)','P','D','2012-11-04 22:03:15','2012-11-04 22:03:15'),(9,1,'yo yo Honey Singh :-)','A','B','2012-11-04 22:05:56','2012-11-04 22:05:56'),(10,1,'Whats Up Private Post :D','P','B','2012-11-06 20:06:54','2012-11-06 20:06:54'),(11,2,'New Post :)','A','A','2012-11-06 20:07:39','2012-11-06 20:07:39'),(12,2,'Welcome Post','A','A','2012-11-06 20:08:06','2012-11-06 20:08:06'),(13,2,'Yo yo Honey Singh Post\n\n\n\n\nOk :)','A','A','2012-11-06 20:08:24','2012-11-06 20:08:24'),(14,2,'MTV Unpluged','A','B','2012-11-06 20:08:36','2012-11-08 16:45:08');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportabuses`
--

DROP TABLE IF EXISTS `reportabuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportabuses` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `enttime` datetime NOT NULL,
  `status` char(2) NOT NULL,
  `detail` text NOT NULL,
  PRIMARY KEY (`postid`,`userid`),
  KEY `user_idx` (`userid`),
  KEY `post_idx` (`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportabuses`
--

LOCK TABLES `reportabuses` WRITE;
/*!40000 ALTER TABLE `reportabuses` DISABLE KEYS */;
INSERT INTO `reportabuses` VALUES (4,1,'2012-11-09 18:30:19','R','test'),(5,2,'2012-11-09 19:52:17','R','test'),(9,1,'2012-11-08 15:39:59','R','Aise hi :P'),(10,1,'2012-11-08 03:32:36','R','testing'),(12,1,'2012-11-09 19:16:33','R','test'),(13,1,'2012-11-08 03:30:01','R','yo to !!!'),(14,1,'2012-11-08 03:29:33','R','test report');
/*!40000 ALTER TABLE `reportabuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`roleid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(3,'Moderator'),(4,'Professore'),(2,'Student');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userroles` (
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`roleid`),
  KEY `userid_idx` (`userid`),
  KEY `role_idx` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
INSERT INTO `userroles` VALUES (1,1),(2,3),(5,1),(7,2),(8,2),(9,2);
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `registerwith` varchar(20) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `authstring` varchar(100) DEFAULT NULL,
  `authdate` datetime DEFAULT NULL,
  `registerdate` datetime DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL,
  `branchid` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `pictureUrl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `branch_idx` (`branchid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'saiyedfaishal@gmail.com','9cb966ff0bb252eeaf8be1b658ec0115','google','V','4ae69bbfed3f4974b6cbbd3d681cec092b8d9266249a47ff93b10e7914b917d6','2012-11-19 14:23:19','2012-10-28 05:11:12','$triKer','$trike#','1990-01-07','Male',NULL,1,2011,'https://lh3.googleusercontent.com/-XVHns1ycTI0/AAAAAAAAAAI/AAAAAAAAAN0/31SL_TsfpRM/photo.jpg?sz=50'),(2,'samrocker4rock@gmail.com','7c26dc798bda94a414a866030d530ea1','google','V',NULL,NULL,'2012-11-04 05:38:44','Samir','Patel',NULL,'male',0,2,2010,'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50'),(3,'201112071@daiict.ac.in','9cb966ff0bb252eeaf8be1b658ec0115','linkedin','V',NULL,NULL,'2012-11-10 01:13:00','Faishal','Saiyed',NULL,NULL,NULL,1,2011,'http://m3.licdn.com/mpr/mprx/0_xrBNYrLmfPC3yjbTAnzbYthDDznSyjbTgN_IYtQt-PCg_MK319bZr--yi49t0VQSY1vElzZL89PN'),(5,'201112001@daiict.ac.in',NULL,NULL,'V',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,2011,NULL),(7,'201112072@daiict.ac.in','9cb966ff0bb252eeaf8be1b658ec0115','linkedin','R','53f87cc1b43e4a35a222d103b76b856bfd260c0dd4774db1a51704fb3ffb5d7c','2012-11-25 01:06:46',NULL,'Faishal','Saiyed',NULL,NULL,NULL,1,2011,'http://m3.licdn.com/mpr/mprx/0_xrBNYrLmfPC3yjbTAnzbYthDDznSyjbTgN_IYtQt-PCg_MK319bZr--yi49t0VQSY1vElzZL89PN'),(8,'201112070@daiict.ac.in',NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,2011,NULL),(9,'201112073@daiict.ac.in',NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,2011,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'campustalk'
--

--
-- Dumping routines for database 'campustalk'
--
/*!50003 DROP FUNCTION IF EXISTS `CountCommentOnPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `CountCommentOnPost`(rpostid INT) RETURNS int(11)
BEGIN
    DECLARE cnt INT;
    
     SELECT COUNT(c.commentid) INTO cnt FROM comment c WHERE c.status ='A' AND c.postid = rpostid;
       RETURN cnt;
    
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CountEventAttends` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `CountEventAttends`(eventid INT) RETURNS int(11)
    DETERMINISTIC
BEGIN
    
    DECLARE num_attends INT;
    
    
     SELECT COUNT(ea.eventid) INTO  num_attends FROM eventattends ea WHERE ea.eventid = eventid AND ea.status ='Y';

    RETURN num_attends;
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CountPostReportByStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `CountPostReportByStatus`(postid INT, rstatus CHAR(2)) RETURNS int(11)
    DETERMINISTIC
BEGIN
    DECLARE cnt INT;
    
    SELECT COUNT(r.postid) INTO cnt FROM reportabuses r WHERE r.status =rstatus AND r.postid = postid; 
      
      
     RETURN cnt;
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBranchID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `getBranchID`(bname VARCHAR(50)) RETURNS int(11)
BEGIN
  
    DECLARE branchid INT; 
    
     SELECT b.branchid INTO branchid FROM branch b WHERE b.name LIKE bname;
    RETURN branchid;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getGroupID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `getGroupID`(name varchar(100)) RETURNS int(11)
    DETERMINISTIC
BEGIN

DECLARE GID INT(11);

SELECT g.groupid INTO GID FROM groups g WHERE g.name like name;

RETURN GID;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getMaxCommentID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `getMaxCommentID`() RETURNS int(11)
BEGIN
      DECLARE cid INT;
      
      SELECT MAX(comment.commentid) INTO cid FROM comment;
      
      RETURN cid;
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getMaxPostID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `getMaxPostID`() RETURNS int(11)
BEGIN
          
          DECLARE pid INT;
          SELECT MAX(postid) INTO pid FROM posts;
          RETURN pid; 		
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getMaxUserID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `getMaxUserID`() RETURNS int(11)
BEGIN
  
    DECLARE max_userid INT; 
    
     SELECT MAX(u.id) INTO max_userid FROM users u;
    RETURN max_userid;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getRoleID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `getRoleID`( rname nVARCHAR(20)) RETURNS int(11)
    DETERMINISTIC
BEGIN
  
    DECLARE roleid iNT; 
    
    SELECT r.roleid INTO roleid FROM roles r WHERE r.name LIKE rname;
    RETURN roleid;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getUserBranch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `getUserBranch`( email VARCHAR(100)) RETURNS varchar(50) CHARSET latin1
BEGIN
  
    DECLARE bname VARCHAR(50); 
    
    
    
   
    SELECT branch.name INTO bname FROM branch , users WHERE users.branchid =branch.branchid AND users.email = email;
    RETURN bname;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getUserFirstName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `getUserFirstName`( email VARCHAR(100)) RETURNS varchar(50) CHARSET latin1
BEGIN
  
    DECLARE fname INT; 
    
    SELECT u.firstname INTO fname FROM users u WHERE u.email LIKE email;
    RETURN fname;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getUserID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `getUserID`(email VARCHAR(50)) RETURNS int(11)
BEGIN
  
    DECLARE userid INT; 
    
     SELECT u.id INTO userid FROM users u WHERE u.email LIKE email;
    RETURN userid;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getUserLastName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `getUserLastName`( email VARCHAR(100)) RETURNS varchar(50) CHARSET latin1
BEGIN
  
    DECLARE lname INT; 
    
    SELECT u.lastname INTO lname FROM users u WHERE u.email LIKE email;
    RETURN lname;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getUserName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `getUserName`( email VARCHAR(100)) RETURNS varchar(101) CHARSET latin1
BEGIN
  
    DECLARE lname INT; 
    
    RETURN CONCAT(getUserFirstName(),getUserLastName());
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getUserYear` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `getUserYear`( email VARCHAR(100)) RETURNS varchar(50) CHARSET latin1
BEGIN
  
    DECLARE uyear INT; 
    
    SELECT u.year INTO uyear FROM users u WHERE u.email LIKE email;
    RETURN NAME;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isAlreadyReported` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `isAlreadyReported`(postid INT,userid INT) RETURNS tinyint(1)
BEGIN
      DECLARE pid INT;
      
      SELECT r.postid INTO pid FROM reportabuses r WHERE  r.postid =postid AND r.userid =userid;
     
      IF pid!=0 THEN
      
	RETURN TRUE;
      
      END IF;
      
      RETURN FALSE;
     
      
            
     
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isAuthorisedUserForPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `isAuthorisedUserForPost`(rpostid int,userid int) RETURNS tinyint(1)
BEGIN
Declare upostid int;
	SELECT 
    `posts`.`postid` AS `postid` 
into upostid 
FROM
    `posts`
WHERE
    (`posts`.`postid` = rpostid)
        AND (`posts`.`type` = 'A')
        AND (`posts`.`status` = 'A') ;

IF upostid IS NULL THEN
SELECT 
    `posts`.`postid` AS `postid`
into upostid 
FROM
    `posts`
WHERE
    (`posts`.`postid` = rpostid)
        AND (`posts`.`userid` IN (SELECT 
            `users`.`id`
        FROM
            `users`
        WHERE
            `users`.`branchid` IN (SELECT 
                    `users`.`branchid`
                FROM
                    `users`
                WHERE
                    (`users`.`id` = userid)))
        AND (`posts`.`type` = 'P')
        AND (`posts`.`status` = 'A'));

end if;
	if upostid is NULL then
		return true;
else
	return false;
end if;
	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isBranchExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `isBranchExist`( bname VARCHAR(50),bid int) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
    
      DECLARE branchid INT; 
    
     SELECT b.branchid INTO branchid FROM branch b WHERE b.name LIKE bname and b.branchid<>bid ;
    
     IF branchid!=0 THEN
	RETURN TRUE; /* branch with given name already exist*/
   
     ELSE
	 
     RETURN FALSE;  /* branch with given name not already exist*/
    END IF;
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isGroupExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `isGroupExist`( gname VARCHAR(50),gid int) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
    
      DECLARE groupid INT; 
    
     SELECT g.groupid INTO groupid FROM groups g WHERE g.name LIKE gname and g.groupid <> gid;
    
    IF groupid!=0 THEN
     
        RETURN TRUE; /* branch with given name already exist*/
  
    ELSE
     
        RETURN FALSE;  /* branch with given name not already exist*/
    END IF;
    
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isGroupMemberExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `isGroupMemberExist`( 
gname VARCHAR(50)) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
    
      DECLARE groupid INT; 
    
     SELECT g.groupid INTO groupid FROM groups g WHERE g.name LIKE gname;
    
    IF groupid!=0 THEN
     
        RETURN TRUE; /* branch with given name already exist*/
  
    ELSE
     
        RETURN FALSE;  /* branch with given name not already exist*/
    END IF;
    
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isJoinAlreday` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `isJoinAlreday`(eventid INT, userid INT) RETURNS tinyint(1)
BEGIN
    
       DECLARE uid INT;
       
       SELECT e.userid INTO uid FROM eventattends e WHERE e.eventid = eventid AND e.userid =userid;
       
       IF(uid!=0)THEN
         RETURN TRUE;
       END IF;
       
       RETURN FALSE; 

    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isPasswordExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `isPasswordExist`( userid int,opass varchar(100)) RETURNS int(11)
BEGIN

  declare uid int;
  
  select id into uid from users u where u.id = userid and u.password = md5(opass);
  
  if(uid!=0) then
  
     return 1;
  end if;
  
  return 0;
  

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isRoleExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `isRoleExist`( rname VARCHAR(50)) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
    
      DECLARE roleid INT; 
    
     SELECT r.roleid INTO roleid FROM roles r WHERE r.name LIKE rname;
    
     IF roleid!=0 THEN
	RETURN TRUE; /* role with given name already exist*/
     
     ELSE
	 
     RETURN FALSE;  /* role with given name not already exist*/
  END IF;
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `unreadUserAllMessages` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `unreadUserAllMessages`(fromUser int, toUser int) RETURNS int(11)
BEGIN
	update messages set status='R' where touserid=toUser  and messageid in (select md.messageid from messagedetails md where md.userid=fromUser );
	RETURN 1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `UserGetAuthDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `UserGetAuthDate`(email VARCHAR(50)) RETURNS date
BEGIN
	DECLARE authdate DATETIME;
	
	SELECT u.authdate INTO authdate FROM users u WHERE u.email LIKE email;
        
        RETURN authdate;
           		
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `UserGetAuthString` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `UserGetAuthString`( email VARCHAR(50)) RETURNS varchar(100) CHARSET utf8
BEGIN
    DECLARE aString VARCHAR(100);
    SELECT u.authstring INTO aString FROM users u WHERE u.email LIKE email;
    RETURN aString ;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `UserGetStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `UserGetStatus`( email VARCHAR(50)) RETURNS char(1) CHARSET latin1
BEGIN
    DECLARE ustatus CHAR(1);
    SELECT u.status INTO ustatus FROM users u WHERE u.email LIKE email;
    RETURN ustatus ;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `blockPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `blockPost`(IN postid INT)
BEGIN
    
     UPDATE posts SET posts.status = 'B' WHERE posts.postid =postid;
 call updateReportStatusForPost(postid,'R');
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `blockUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `blockUser`(IN userid INT , IN pid INT)
BEGIN
       UPDATE users u SET u.status ='B' WHERE u.id =userid;
call updateReportStatusForPost(pid,'R');
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangePass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `ChangePass`(in userid int,in opass varchar(100),in npass varchar(100),out querystatus bool)
BEGIN


declare uid int;

if(isPasswordExist(userid,opass)!=0) then

   update users u set u.password = md5(npass) where u.id = userid;

    set querystatus = true;
    
else

  set querystatus = false;
  
end if;

    


  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CommentDeleteOfPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `CommentDeleteOfPost`(IN dCommentId int, in dUserId int,out flag boolean)
BEGIN
	Declare dTest int ;
	select 
    `comment`.`userid`
		into dTest from
			`campustalk`.`comment`
		where
			`comment`.`commentid` = dCommentId
				and `comment`.`userid` = dUserId;
	if dTest is null then
		select 
			`comment`.`userid`
			into dTest from
				`campustalk`.`comment`,
				`campustalk`.`posts`
			where
				`comment`.`commentid` = dCommentId
					and `comment`.`postid` = `posts`.`postid`
					and `posts`.`userid` = dUserId;

		if dTest is null then
			set flag=true;
		else
			set flag=false;
		end if;
	else
		set flag=true;
	end if;
if flag = true then
 update `campustalk`.`comment` set `comment`.`status`='D' where `comment`.`commentid`=dCommentId;
end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CommentOnPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `CommentOnPost`(IN postid INT,IN userid INT,IN detail TEXT,OUT commentid INT)
BEGIN
	if isAuthorisedUserForPost(postid,userid) = 0 then

     INSERT INTO comment(postid,userid,detail,enttime,STATUS) VALUE(postid,userid,detail,SYSDATE(),'A');
     
     SET commentid = getMaxCommentID();
     /* Status: A- indicate active comment :*/
     
     UPDATE posts SET posts.lastmodifytime = SYSDATE() WHERE posts.postid =postid;
end if;	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteBranch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `deleteBranch`(id int)
BEGIN
              delete from branch where branchid=id;
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteGroupData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `deleteGroupData`(in groupid INT(11))
BEGIN

	update groups g set g.status='D' where g.groupid=groupid; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteGroupMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `deleteGroupMember`(in rgroupid int(11),
in ruserid int(11))
BEGIN

delete from groupmembers  where groupid=rgroupid and userid=ruserid;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteRoles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `deleteRoles`(id int)
BEGIN
delete FROM roles WHERE roleid=id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EditProfile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `EditProfile`(
IN uid INT(11),
in firstname varchar(50),
in lastname varchar(50),
in birthdate date,
in gender varchar(7)

)
BEGIN 
        
update users u set u.firstname =firstname,u.lastname=lastname,
u.birthdate=birthdate,u.gender=gender where u.id=uid;
	
		
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `editUser`(in id int(11),
in email varchar(50),
in branchname varchar(50),
in year int(11),
in rolename varchar(20),
in status char(2))
BEGIN


update users u set u.email=email, u.branchid=getBranchID(branchname), u.year=year, u.status=status
where u.id=id;

update userroles ur set ur.roleid=getRoleID(rolename) where ur.userid=id;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllBranch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getAllBranch`()
BEGIN
    select * from branch;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllMessageForUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getAllMessageForUser`(in fromUser int, in toUser int )
BEGIN
	Declare rCount int;
	select md.messageid,md.message,md.userid,md.enttime,u.firstname from messagedetails md left outer join messages m on m.messageid=md.messageid join users u on md.userid=u.id where (m.touserid=fromUser and md.userid=toUser) or(m.touserid=toUser and md.userid=fromUser) order by md.enttime ;
	set rCount=unreadUserAllMessages(toUser,fromUser);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllMessageUsersList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getAllMessageUsersList`(in muserid INT)
BEGIN
select 
    count(m.messageid) as tCount,
    u.firstname,
    u.lastname,
    u.pictureurl,
	u.email,
    u.id,(select 
            count(sm.messageid)
        from
            
			messagedetails smd
            left outer join
			messages sm
             ON sm.messageid = smd.messageid
        where
			sm.status <> 'D' and
            ((sm.touserid = muserid AND smd.userid = u.id) 
			or 
				(sm.touserid = u.id AND smd.userid = muserid)
                )) as totMsg,
    (select 
            count(sm.messageid)
        from
            messages sm
                join
            messagedetails smd ON sm.messageid = smd.messageid
        where
            sm.touserid = muserid
                and sm.status = 'N'
                and smd.userid = u.id) as unreadmsg,
    (select 
            cmd.enttime
        from
            messages cm
                join
            messagedetails cmd ON cm.messageid = cmd.messageid
        where
            cm.touserid = muserid
                and cmd.userid = u.id
        order by cmd.enttime desc
        limit 1) as lastmsgtime
from
    messages m
        join
    messagedetails md ON md.messageid = m.messageid
        join
    users u ON u.id = md.userid
where
    touserid = muserid
group by u.firstname , u.lastname , u.pictureurl order by lastmsgtime desc;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllRole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getAllRole`()
BEGIN
    select * from roles;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getAllUser`()
BEGIN

 select users.id , users.email,users.firstname,users.lastname,
 branch.name as branch, users.year ,roles.name as role, users.status from roles 
inner join userroles  on roles.roleid = userroles.roleid inner join users  on userroles.userid = users.id
 inner join branch on users.branchid = branch.branchid   ;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getBranchById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getBranchById`(IN rbranchid INT)
BEGIN
	select `branch`.* from `campustalk`.`branch` where `branch`.`branchid`=rbranchid ;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getBranchData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getBranchData`()
BEGIN

select * from branch;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCommentOnPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getCommentOnPost`(IN postid INT,IN _START INTEGER, 
IN _LIMIT INTEGER , in ruserid int)
BEGIN
   
    /* status = A indicate active comment */
      
      DECLARE cstatus CHAR(2);
 if isAuthorisedUserForPost(postid,ruserid) = 0 then
      SET cstatus ='A';
   /*   select * from comment where comment.postid = postid and comment.status ='A' limit 3;*/
      
      
         PREPARE STMT FROM "select c.* from (SELECT `comment`.*,`users`.`firstname`,`users`.`lastname`,`users`.`pictureurl` FROM `comment`,`users` WHERE comment.postid = ? AND `comment`.`userid` =`users`.`id` AND comment.status =? order by comment.enttime desc LIMIT ?,? ) c order by c.enttime "; 
         SET @v_postid = postid;
         SET @v_status = cstatus;
         
         SET @START = _START; 
         SET @LIMIT = _LIMIT; 
      
         EXECUTE STMT USING @v_postid, @v_status, @START, @LIMIT;
else 
		select `comment`.* from `campustalk`.`comment` where 1!=1;
	end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getEventByDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getEventByDate`(IN edate date)
BEGIN
	
     SELECT e.title,e.fromdate,e.todate,e.place,e.description, TIME(e.fromdate) AS eventtime,  e.userid, e.eventid ,  CountEventAttends(e.eventid) AS num_attends
      FROM EVENTS e WHERE DATE(e.fromdate) between concat(date(edate), ' 00:00:00') and concat(date(edate), ' 23:59:59') ;
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getEventData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getEventData`()
begin
select * from events;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getEventDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getEventDetails`(in id int, in uid int)
BEGIN

select e.eventid, e.fromdate, e.todate, e.place, e.title,
 e.description, ea.status,isJoinAlreday(id,uid)as joinstatus,CountEventAttends(e.eventid) AS 
num_attend from events e, eventattends ea where e.eventid=id 
and e.eventid=ea.eventid;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getGroupData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getGroupData`()
BEGIN

select g.groupid,g.name,g.description,g.status from groups g;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getGroupMemberData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getGroupMemberData`(IN groupid int)
BEGIN

 
select g.userid, u.email,concat(concat(u.firstname,' '),u.lastname) as name, g.position 
from groupmembers g,users u
where g.userid=u.id and g.groupid=groupid and g.status='V';

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPostsForUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getPostsForUser`(IN remail VARCHAR(50),IN rSkip INT,in rRows INT )
BEGIN
SET @s = CONCAT('SELECT `posts`.`postid` AS `postid`,`posts`.`userid` AS `userid`,`posts`.`detail` AS `detail`,`posts`.`type` AS `type`,`posts`.`status` AS `status`,`posts`.`enttime` AS `enttime`,`posts`.`lastmodifytime` AS `lastmodifytime`,`users`.`firstname`,`users`.`lastname`,`users`.`pictureurl`,(select count(`comment`.`userid`) from `comment` where `comment`.`postid`=`posts`.`postid` and `comment`.`status` !=\'D\') as nocomment FROM `posts`,`users`  WHERE `posts`.`userid`=`users`.`id` and  ((`posts`.`type` = \'A\') AND (`posts`.`status` = \'A\')) 
 UNION 
(SELECT `posts`.`postid` AS `postid`,`posts`.`userid` AS `userid`,`posts`.`detail` AS `detail`,`posts`.`type` AS `type`,`posts`.`status` AS `status`,`posts`.`enttime` AS `enttime`,`posts`.`lastmodifytime` AS `lastmodifytime`,`users`.`firstname`,`users`.`lastname`,`users`.`pictureurl`,(select count(`comment`.`userid`) from `comment` where `comment`.`postid`=`posts`.`postid` and `comment`.`status` !=\'D\') as nocomment FROM `posts`,`users` 
 WHERE `posts`.`userid`=`users`.`id` and (`posts`.`userid` IN (SELECT `users`.`id` FROM `users` WHERE  `users`.`branchid` IN (SELECT `users`.`branchid` FROM `users` WHERE (`users`.`email` = "',remail,'"))) AND (`posts`.`type` = \'P\') AND (`posts`.`status` = \'A\'))) order by lastmodifytime desc limit ', rSkip ,', ', rRows); 

PREPARE stmt1 FROM @s;
EXECUTE stmt1; 
DEALLOCATE PREPARE stmt1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getReportOnAllPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getReportOnAllPost`()
BEGIN
    
    

SELECT 
    COUNT(r.postid) AS cntpost,
    u.id,
    u.firstname,
    u.lastname,
    u.pictureUrl,
	u.email,
    r.postid,
    (select CountCommentOnPost(r.postid) )AS cntcomment,
    (select CountPostReportByStatus(r.postid, 'N')) AS cntnewreport,
    (select CountPostReportByStatus(r.postid, 'R')) AS cntreadreport
FROM
    `campustalk`.reportabuses r
        INNER JOIN
    `campustalk`.posts p ON r.postid = p.postid
        INNER JOIN
    `campustalk`.users u ON p.userid = u.id
GROUP BY r.postid
HAVING cntnewreport > 0;
 
 

    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getReportOnAllPostusers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getReportOnAllPostusers`()
BEGIN
    
    
SELECT  COUNT(r.postid)AS cntpost,  u.id,u.firstname, u.lastname,u.pictureUrl , r.postid, CountCommentOnPost(r.postid) AS cntcomment

,CountPostReportByStatus(r.postid,'N')AS cntnewreport
,CountPostReportByStatus(r.postid,'R') AS cntreadreport


  FROM reportabuses r INNER JOIN posts p ON r.postid = p.postid INNER JOIN users u ON p.userid = u.id  
  GROUP BY r.postid  HAVING cntpost>0;
 
 

    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getReportReason` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getReportReason`(IN postid INT)
BEGIN
	SELECT r.detail, r.enttime,r.postid,r.userid,u.email,u.firstname,getBranchName(u.branchid) AS branchname, u.year FROM reportabuses r INNER JOIN
	 users u ON r.userid = u.id WHERE r.postid = postid;
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getRoleById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getRoleById`(in uroleid int)
BEGIN
	select `roles`.* from `campustalk`.`roles` where `roles`.`roleid` = uroleid ;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getRolesData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getRolesData`()
BEGIN

select * from roles;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gettAllReportedPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `gettAllReportedPost`()
BEGIN
                                                  
  SELECT posts.*,users.firstname,users.lastname,users.email FROM posts INNER JOIN users ON posts.userid = users.id
   WHERE posts.postid IN (SELECT cr.rpostid FROM countonreportabuses cr);
      
        
       END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUserIdListFromEmailList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getUserIdListFromEmailList`(IN emailList TEXT)
BEGIN
		Declare val TEXT;
		SET @val = REPLACE(emailList, ',', CONCAT('\',\''));
		SET @val = CONCAT('(\'', @val,'\')'); -- This produces a string like this -> (1, 100),(2, 100),(3, 100)
		SET @val = CONCAT('select id from  users where email in ', @val, ';'); -- Build INSERT statement like this -> INSERT INTO RolesMenus VALUES(1, 100),(2, 100),(3, 100)
		-- Execute INSERT statement
		PREPARE stmt FROM @val;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getuserProfileDataByEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getuserProfileDataByEmail`(in uemail varchar(100))
BEGIN
select u.firstname, u.lastname, u.pictureurl, u.email,(select getUserBranch(u.email)) as branch,u.year,u.gender,DATE_FORMAT(u.birthdate,'%d-%m-%Y') as birthdate," " as city,(select count(*) from posts p where p.userid=u.id ) as nopost,(select count(*) from comment c where c.userid=u.id ) as nocomment
from users u  where u.email like uemail;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getuserProfileDataById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getuserProfileDataById`(in userid INT)
BEGIN
	select u.firstname, u.lastname, u.pictureurl, u.email,(select getUserBranch(u.email)) as branch,u.year,u.gender,DATE_FORMAT(u.birthdate,'%d-%m-%Y') as birthdate," " as city,(select count(*) from posts p where p.userid=u.id ) as nopost,(select count(*) from comment c where c.userid=u.id ) as nocomment
	from users u  where u.id=userid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUserRoleById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getUserRoleById`(IN mroleid INT)
BEGIN
	select `userroles`.* from `campustalk`.`userroles` where `userroles`.`userid`= mroleid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUserRoleNameById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getUserRoleNameById`(in uroleid int)
BEGIN
select r.name from users u left outer join userroles ru on u.id=ru.userid join roles r on ru.roleid=r.roleid where u.id=uroleid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertBranch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost` PROCEDURE `insertBranch`(IN bname VARCHAR(50), IN duration INT,OUT isExist BOOL)
BEGIN
        /* NOTE: call isBranchExist(branchname varchar)*/ /*!50003 function : check  whether given  branch alredy exist or not    
        
        2 ways of using this function :
         if you want to check on db side     
       
        1 ) call first this function individul before insertBranch procedure call, to check existance of branch in db
        2) call this function iside this procedure inserBranch before insert into stmt in order to reduce db call
         
         if on application side
                 
        -> if all branch information alredy fetch on application side using procedure for the same then no need to used either of this 2 ways,
           compare on application side 
         
                 
 */ 
        IF isBranchExist(bname,0) THEN
		SET isExist = FALSE;
		
             ELSE
	INSERT INTO branch(name,duration) VALUES (bname, duration);
	
	  SET isExist = TRUE;
            
             END IF;	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertEvents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `insertEvents`(in fdate date,in tdate date, in name VARCHAR(20),in ddesc VARCHAR(40), in place VARChAR(20), in id int, OUT isExist BOOL)
BEGIN
DECLARE eid INT;

INSERT INTO `campustalk`.`events` (`userid`, `title`, `fromdate`, `todate`, `place`, `description`) VALUES (id, name, fdate, tdate,place, ddesc);

select max(e.eventid) into eid from events e;

insert into eventattends(eventid,userid,status)  values(eid,id,'Y');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertGroup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `insertGroup`(
IN gname VARCHAR(100),
IN description TEXT,
OUT isExist BOOL)
BEGIN 

IF isGroupExist(gname,0) THEN

		SET isExist = FALSE;
		ELSE
    INSERT INTO groups (name,description,status) VALUES(gname,description,'V');
   SET isExist=TRUE;
   
   END IF;
    


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertGroupMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `insertGroupMember`(in gname int,
in email varchar(50),
in position varchar(100),
out rflag boolean)
BEGIN

DECLARE groupid INT(11);
DECLARE userid INT(11);

SET userid=getUserID(email);
 insert into groupmembers values(gname,userid,position,'V',sysdate());
	set rflag=true;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertReportAbuses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `insertReportAbuses`(IN postid INT , IN userid INT, IN detail TEXT,OUT isReported BOOL)
BEGIN
	
	IF isAlreadyReported(postid,userid) THEN
		SET isReported  =TRUE; /* if user has alreday reported for the given post, then user not allow to report again*/
	ELSE
	
	INSERT INTO reportabuses(postid,userid,enttime,STATUS,detail) VALUES(postid,userid,SYSDATE(),'N',detail);
               	SET isReported  =FALSE;/* if not reported then allow  */
	 
        END IF;
                	
     END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertRoles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `insertRoles`(in rname varchar(20),
OUT isExist BOOL)
BEGIN

 IF isRoleExist(rname) THEN

    SET isExist = FALSE;
		
 ELSE
 
    insert into roles(name) values(rname);

    SET isExist = TRUE;
            
 END IF;	

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `joinEvents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `joinEvents`(IN eid INT,IN uid INT)
BEGIN
insert into eventattends values(eid,uid,'Y');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `openRegistration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `openRegistration`(IN email VARCHAR(50),
	IN bname VARCHAR(50), 
	IN uyear INT, 
	IN roletype VARCHAR(20))
BEGIN
    DECLARE bid,rid,max_userid INT;
	
	SET bid = getBranchID(bname); /* return branch id for given branch name */
	
	INSERT INTO users   (email, branchid, YEAR, STATUS) VALUES  (email,bid,uyear, 'N') ; /*  status = N indicate new user that added by admin*/
	
	SET rid = getRoleID(roletype);  /* return role id for given role  */
        
	SET max_userid = getMaxUserID(); /* return max userid of table users and i.e the user inserted through previous query i.e last */
	INSERT INTO userroles(userid,roleid) VALUES(max_userid,rid);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `postdelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `postdelete`(in duserid int , in dpostid int)
BEGIN
	update posts set status='D' where postid=dpostid and userid=duserid;
	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PostInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `PostInsert`(IN userid INT,IN content TEXT, IN ptype CHAR(2),OUT postid INT)
BEGIN
    
    
    INSERT INTO posts(userid,detail,TYPE,STATUS,enttime,lastmodifytime) VALUES(userid,content,ptype,'A',SYSDATE(),SYSDATE());
    
    SET postid = getMaxPostID();
    
   /* STATUS : A -> by default status is ACTIVE when post inserted */
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `readReportedPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `readReportedPost`(IN postid INT,IN userid INT)
BEGIN

	   UPDATE reportabuses  r SET r.status = 'R' WHERE r.postid = postid AND r.userid = userid AND r.status ='N';
   
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchUserMsgAC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `SearchUserMsgAC`(IN squery VARCHAR(100))
BEGIN
	select id,firstname,lastname,email,pictureurl from users where email like  CONCAT('%',squery ,'%') ;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sendMessege` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sendMessege`(IN fromUserid INT,IN toUserid TEXT,IN msgDetail TEXT,out rtnFlag Boolean)
BEGIN
	Declare msgId int;
	Declare val Text;
	Declare insrt Text;
	set rtnFlag= false;
	insert into messagedetails (userid,message,status,enttime) value (fromUserId,msgDetail,'V',SYSDATE());
	select max(messageid) into msgid from messagedetails; 
	if NOT msgId is null then 
		SET @val = REPLACE(toUserid, ',', CONCAT(', ', msgId, '),('));
		SET @val = CONCAT('(', @val, ', ', msgId, ')'); -- This produces a string like this -> (1, 100),(2, 100),(3, 100)
		SET @insrt = CONCAT('INSERT INTO messages (touserid,messageid) VALUES ', @val, ';'); -- Build INSERT statement like this -> INSERT INTO RolesMenus VALUES(1, 100),(2, 100),(3, 100)
		-- Execute INSERT statement
		PREPARE stmt FROM @insrt;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;
		set rtnFlag= true;
	else
		set rtnFlag= false;
	end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateBranchByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `updateBranchByID`(IN branchid INT,IN nbname VARCHAR(50),IN duration INT,OUT isExist BOOL)
BEGIN


              IF isBranchExist(nbname,branchid) THEN
		SET isExist = FALSE;
		
             ELSE
        	   
	        UPDATE branch b SET b.name = nbname , b.duration = duration WHERE b.branchid=branchid;
                SET isExist = TRUE;
            
             END IF;	
    
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateGroupById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `updateGroupById`(
IN groupid int(11),
IN newname VARCHAR(100),
IN description text,
in gstatus char(2),
OUT isExist BOOL)
BEGIN 
      
	
	IF isGroupExist(newname,groupid) THEN
		SET isExist = FALSE;
		
   ELSE
		SET isExist = TRUE;
		update groups g set g.name = newname , g.description = description, g.status = gstatus where g.groupid  = groupid;
     
            
   END IF;	
	
	
	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateReportStatusForPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `updateReportStatusForPost`(IN postid INT,IN rstatus CHAR(2))
BEGIN
    
    /* status : R for read*/
      UPDATE reportabuses  r SET r.status = rstatus WHERE r.postid = postid;
       
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateRoleByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `updateRoleByID`(IN roleid INT,IN nrname VARCHAR(20),OUT isExist BOOL)
BEGIN


              IF isRoleExist(nrname) THEN
		SET isExist = FALSE;
		
             ELSE
        	   
	        UPDATE roles r SET r.name = nrname WHERE r.roleid=roleid;
                SET isExist = TRUE;
            
             END IF;	
    
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateUserStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `updateUserStatus`( IN id INT(11),IN ustatus CHAR(1))
BEGIN     
        
        UPDATE  users  u SET u.status = ustatus WHERE u.id = id; 
        	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UserDetailFromEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `UserDetailFromEmail`(IN useremail VARCHAR(100))
BEGIN
Select `id`,`email`,`password`,`registerwith`,`status`,`authstring`,`authdate`,`registerdate`,`firstname`,`lastname`,`birthdate`,`gender`,`cityid`,`branchid`,`year`,`pictureurl`
From users
where email=useremail;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UserLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `UserLogin`(IN uemail VARCHAR(50), IN upassword VARCHAR(100), OUT loginFlag int)
BEGIN
	 Declare tPassword VARCHAR(100);
	 Declare userid int;
	 Declare ustatus varchar(1);
	 SELECT u.id , u.password,u.status INTO userid,tPassword,ustatus  FROM users u WHERE u.email=uemail;
    	SET loginFlag =FALSE;
		IF userid != 0 THEN
			if tPassword=md5(upassword)	then
				if(ustatus="V") then
					SET loginFlag = TRUE;
				end if;
				if(ustatus="P") then
					SET loginFlag = TRUE;
					update `users` set `users`.`authstring`=null,`users`.`authdate`=null,`users`.`status`="R" where `users`.`email`=uemail;
				end if;
			end if;
			
		END IF;
		select * from users u where u.email=uemail;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userMakeModerator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `userMakeModerator`(in uemail varchar(100),out rflag boolean)
BEGIN
#
 #declare  rflag boolean;
 declare  uid int;
 declare  uroleid int;
 declare  sroleid int;
 declare rid int;
 set rflag=false;
 select id into uid from users where email like uemail;
 select roleid into uroleid from roles where name like 'moderator';

if uroleid is null then 
	insert into roles (name) value ("moderator");
	 select roleid into uroleid from roles where name like 'moderator';

end if;

 select roleid into sroleid from roles where name like 'student';

if sroleid is null then 
	insert into roles (`name`) value ("student");
	 select roleid into sroleid from roles where name like 'student';
end if;
select roleid into rid from userroles where userid=uid;

if rid!=uroleid then
	update userroles set roleid=uroleid where userid=uid and roleid=sroleid;
	set rflag=true;
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UserNewRegisteration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `UserNewRegisteration`(
	IN userid INT,
	IN fname VARCHAR(50),
	IN lname VARCHAR(50), 
	IN gender VARCHAR(7),
	IN passwd VARCHAR(100),
    IN authstring VARCHAR(100),
    IN registerwith VARCHAR(20),
	IN picURL VARCHAR(200))
BEGIN 
               
        /* GET CITY ID FROM GIVEN CITY..and also add one more parameter for city ONCE TABLE CREATED FOR THE SAME */
		         
        UPDATE  users  u SET u.firstname = fname , u.lastname =lname ,u.gender = gender,u.password =MD5(passwd), u.registerwith = registerwith, u.authstring =authstring, u.authdate =ADDDATE(SYSDATE(),INTERVAL 15 DAY ) , u.status = 'R', u.pictureurl = picURL 
        WHERE u.id = userid AND u.status ='N'; 
	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UserVerifyRegistration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `UserVerifyRegistration`( IN email VARCHAR(50),IN aString VARCHAR(100),OUT errorCode INT)
BEGIN 
		
        IF UserGetStatus(email) = 'R' THEN
			IF UserGetAuthString(email) = aString THEN
				IF SYSDATE() < UsergetAuthDate(email)  THEN
					UPDATE  users  u SET u.status ='V' ,u.registerdate = SYSDATE(),u.authstring=null,u.authdate=null WHERE u.email LIKE email ; 
					SET  errorcode = 0;
				ELSE
					SET errorcode=3;
				END IF;
			ELSE
				SET errorcode=2;
			END IF;
		ELSE 
          SET errorcode=1;
		END IF;        	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `countonreportabuses`
--

/*!50001 DROP TABLE IF EXISTS `countonreportabuses`*/;
/*!50001 DROP VIEW IF EXISTS `countonreportabuses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `countonreportabuses` AS (select count(`r`.`postid`) AS `numberofreport`,`r`.`postid` AS `rpostid` from `reportabuses` `r` where (`r`.`status` = 'N') group by `r`.`postid` having (`numberofreport` >= 2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-10 14:05:38
