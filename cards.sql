-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: cards
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `card_element`
--

DROP TABLE IF EXISTS `card_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_element` (
  `cards_id` int(11) NOT NULL,
  `elements_id` int(11) NOT NULL,
  KEY `cards_id` (`cards_id`),
  KEY `elements_id` (`elements_id`),
  CONSTRAINT `card_element_ibfk_1` FOREIGN KEY (`cards_id`) REFERENCES `cards` (`id`),
  CONSTRAINT `card_element_ibfk_2` FOREIGN KEY (`elements_id`) REFERENCES `elements` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_element`
--

LOCK TABLES `card_element` WRITE;
/*!40000 ALTER TABLE `card_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `scoreUp` int(11) NOT NULL,
  `scoreDown` int(11) NOT NULL,
  `scoreRight` int(11) NOT NULL,
  `scoreLeft` int(11) NOT NULL,
  `id_element` int(11) DEFAULT NULL,
  `path` text,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (1,'Geezard',1,1,4,5,9,'Geezard',1),(2,'Funguar',1,3,3,5,9,'Funguar',1),(3,'Bite Bug',1,3,3,5,9,'BiteBug',1),(4,'Red Bat',6,1,1,2,9,'RedBat',1),(5,'Blobra',2,1,3,5,9,'Blobra',1),(6,'Gayla',2,1,3,4,3,'Gayla',1),(7,'Gesper',1,4,5,1,9,'Gesper',1),(8,'Fastitocalon-F',3,2,5,1,4,'FastitocalonF',1),(9,'Blood Soul',2,6,1,1,9,'BloodSoul',1),(10,'Caterchipillar',4,4,2,3,9,'Caterchipillar',1),(11,'Cockatrice',2,2,1,6,3,'Cockatrice',1);
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elements`
--

DROP TABLE IF EXISTS `elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elements`
--

LOCK TABLES `elements` WRITE;
/*!40000 ALTER TABLE `elements` DISABLE KEYS */;
INSERT INTO `elements` VALUES (1,'Fire'),(2,'Ice'),(3,'Thunder'),(4,'Earth'),(5,'Wind'),(6,'Water'),(7,'Poison'),(8,'Holy'),(9,'None');
/*!40000 ALTER TABLE `elements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-17 13:02:10
