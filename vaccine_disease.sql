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
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `disease` (
  `VaccineID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(45) DEFAULT NULL,
  `AbbName` varchar(45) DEFAULT NULL,
  `SpreadByName` varchar(45) DEFAULT NULL,
  `Symptom` varchar(45) DEFAULT NULL,
  `ImmunizationProgram` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`VaccineID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
INSERT INTO `disease` VALUES (1,'Ebola','EBOV','Animals','Coughing','N/A'),(2,'AIDS','AIDS','STD','Respiratory','N/A'),(3,'Prion','PRN','Contact','Hemreggin','N/A'),(4,'Glanders','GLD','Unkown','Unknown','N/A'),(5,'Rabies','RBS','Animals','Foaming at Mouth','Vaccine'),(6,'African Trypanosomiases','AFT','Unknown','Coughing','N/A'),(7,'Anthrax','ANT','Animals','Coughing','N/A'),(8,'Herpes B Virus','HPV','Humans','Skin rashes','N/A'),(9,'SmallPox','SP','People','Coughing/Rashes','N/A'),(10,'Plague','PLG','Animals','Coughing/Bleeding','N/A');
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-02  6:02:39
