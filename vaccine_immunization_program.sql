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
-- Table structure for table `immunization_program`
--

DROP TABLE IF EXISTS `immunization_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `immunization_program` (
  `DiseaseID` int(11) NOT NULL AUTO_INCREMENT,
  `HealthOrginization` varchar(45) DEFAULT NULL,
  `VSPName` varchar(45) DEFAULT NULL,
  `VSPNumber` varchar(45) DEFAULT NULL,
  `StartDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DiseaseID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `immunization_program`
--

LOCK TABLES `immunization_program` WRITE;
/*!40000 ALTER TABLE `immunization_program` DISABLE KEYS */;
INSERT INTO `immunization_program` VALUES (1,'Red Cross','Apple','12345','01/01/1999'),(2,'Red Cross','Apple','12345','01/01/1999'),(3,'World Health Organization','Vaccine for Children','12511','10/01/1999'),(4,'CDC','Vaccines for Health','94784','01/01/1999'),(5,'APH','Vaccine International','12345','01/01/1999'),(6,'WHA','Apple','12345','01/01/1989'),(7,'The Joint Commision','CDC Global VSP','12345','01/01/1899'),(8,'PHAO','Apple','12345','01/01/2001'),(9,'FDA','SHIELD','12345','01/01/2003'),(10,'Red Cross','Apple','12345','08/01/1996');
/*!40000 ALTER TABLE `immunization_program` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-02  6:02:40
