CREATE DATABASE  IF NOT EXISTS `vaccine` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `vaccine`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vaccine
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vaccine_master`
--

DROP TABLE IF EXISTS `vaccine_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vaccine_master` (
  `VaccineID` int(11) NOT NULL AUTO_INCREMENT,
  `PublishName` varchar(45) DEFAULT NULL,
  `CostPerUnit` varchar(45) DEFAULT NULL,
  `ExpDate` varchar(45) DEFAULT NULL,
  `VisID_FK` int(11) NOT NULL,
  `VaccineIncident_FK` int(11) NOT NULL,
  `VaccineReactionID_FK` int(11) NOT NULL,
  PRIMARY KEY (`VaccineID`),
  KEY `VisID_FK` (`VisID_FK`),
  KEY `VaccineIncident_FK` (`VaccineIncident_FK`),
  KEY `VaccineReactionID_FK` (`VaccineReactionID_FK`),
  CONSTRAINT `vaccine_master_ibfk_1` FOREIGN KEY (`VisID_FK`) REFERENCES `doctor` (`doctorid`) ON UPDATE CASCADE,
  CONSTRAINT `vaccine_master_ibfk_2` FOREIGN KEY (`VaccineIncident_FK`) REFERENCES `vaccine_incident` (`vaccineincidentid`) ON UPDATE CASCADE,
  CONSTRAINT `vaccine_master_ibfk_3` FOREIGN KEY (`VaccineReactionID_FK`) REFERENCES `vaccine_reaction` (`vaccinereactionid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccine_master`
--

LOCK TABLES `vaccine_master` WRITE;
/*!40000 ALTER TABLE `vaccine_master` DISABLE KEYS */;
INSERT INTO `vaccine_master` VALUES (1,'Obi-Wan','13','02/17/2014',1,1,1),(2,'DarthVader','13','03/05/2011',2,2,2),(3,'Yoda','13','10/01/2016',3,3,3),(4,'Mace Windu','13','06/01/2017',4,4,4),(5,'Commander Cody','13','08/02/2013',5,5,5),(6,'Captian Rex','13','01/03/2014',6,6,6),(7,'Satel Shan','13','01/11/2015',7,7,7),(8,'Darth Margus','13','01/23/2016',8,8,8),(9,'Darth Malek','13','08/17/2014',9,9,9),(10,'Darth Raven','13','09/17/2014',10,10,10);
/*!40000 ALTER TABLE `vaccine_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-02  6:02:37
