CREATE DATABASE  IF NOT EXISTS `quizeria` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `quizeria`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: quizeria
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `AUTH`
--

DROP TABLE IF EXISTS `AUTH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTH` (
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTH`
--

LOCK TABLES `AUTH` WRITE;
/*!40000 ALTER TABLE `AUTH` DISABLE KEYS */;
INSERT INTO `AUTH` VALUES ('admin','admin');
/*!40000 ALTER TABLE `AUTH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUESTIONS`
--

DROP TABLE IF EXISTS `QUESTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUESTIONS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `QUESTION` varchar(150) DEFAULT NULL,
  `OPTION_1` varchar(150) DEFAULT NULL,
  `OPTION_2` varchar(150) DEFAULT NULL,
  `OPTION_3` varchar(150) DEFAULT NULL,
  `OPTION_4` varchar(150) DEFAULT NULL,
  `ANSWER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUESTIONS`
--

LOCK TABLES `QUESTIONS` WRITE;
/*!40000 ALTER TABLE `QUESTIONS` DISABLE KEYS */;
INSERT INTO `QUESTIONS` VALUES (1,'What is the capital of India?','New Delhi','Bangalore','Chennai','Mumbai',1),(2,'What is the capital of Uttar Pradesh?','Ghaziabad','Meerut','Allahabad','Lucknow',4),(3,'What is the capital of Rajasthan?','Jodhpur','Ujjain','Jaipur','Ajmer',3),(4,'What is the capital of Maharashtra?','Mumbai','Pune','Kolhapur','Nagpur',1),(5,'What is the capital of Gujarat?','Porbandar','Surat','Ahmedabad','Gandhinagar',4);
/*!40000 ALTER TABLE `QUESTIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `F_NAME` varchar(20) DEFAULT NULL,
  `L_NAME` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `SCORE` int(11) DEFAULT NULL,
  `TOTAL_SCORE` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMAIL`),
  UNIQUE KEY `EMAIL_UNIQUE` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-23  1:10:47
