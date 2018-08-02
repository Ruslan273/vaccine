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
-- Table structure for table `vaccine_incident`
--

DROP TABLE IF EXISTS `vaccine_incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vaccine_incident` (
  `VaccineIncidentID` int(11) NOT NULL AUTO_INCREMENT,
  `ClinicName` varchar(45) DEFAULT NULL,
  `ContactName` varchar(45) DEFAULT NULL,
  `Code` varchar(45) DEFAULT NULL,
  `AddressIDVcIncident_FK` int(11) NOT NULL,
  PRIMARY KEY (`VaccineIncidentID`),
  KEY `AddressIDVcIncident_FK` (`AddressIDVcIncident_FK`),
  CONSTRAINT `vaccine_incident_ibfk_1` FOREIGN KEY (`AddressIDVcIncident_FK`) REFERENCES `address` (`addressid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccine_incident`
--

LOCK TABLES `vaccine_incident` WRITE;
/*!40000 ALTER TABLE `vaccine_incident` DISABLE KEYS */;
INSERT INTO `vaccine_incident` VALUES (1,'Overlake ER','Overlake','111',1),(2,'Harberview ER','Harverview','222',2),(3,'Redmond ER','Redmond','333',3),(4,'Providence ER','Providence','444',4),(5,'Preston ER','Preston','555',5),(6,'Cleveland Clinic','Cleveland','666',6),(7,'John Hopkins Hospital','JH','777',7),(8,'UCSF Medical Center','UCSF','888',8),(9,'Bellevue Medical Center','Bellevue','999',9),(10,'GroupHealth Clinic','Kirkland','191',10);
/*!40000 ALTER TABLE `vaccine_incident` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-02  6:02:38
