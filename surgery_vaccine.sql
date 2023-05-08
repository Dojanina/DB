-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: surgery
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vaccine`
--

DROP TABLE IF EXISTS `vaccine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccine` (
  `nhsNum` int NOT NULL,
  `DoseNo` int NOT NULL,
  `VaccinationDate` date NOT NULL,
  `VaccineManufacturer` varchar(15) NOT NULL,
  `DiseaseTargeted` varchar(15) NOT NULL,
  `VaccineType` varchar(15) NOT NULL,
  `Product` varchar(15) NOT NULL,
  `VaccineBatchNumber` varchar(15) NOT NULL,
  `CountryOfVaccination` varchar(15) NOT NULL,
  `Authority` varchar(15) NOT NULL,
  `Site` varchar(15) NOT NULL,
  `TotalSeriesOfDoses` int NOT NULL,
  `DisplayName` varchar(15) NOT NULL,
  `SnomedCode` int NOT NULL,
  `DateEntered` date NOT NULL,
  `ProcedureCode` int NOT NULL,
  `Booster` tinyint(1) NOT NULL,
  PRIMARY KEY (`nhsNum`,`DoseNo`),
  CONSTRAINT `vaccine_ibfk_1` FOREIGN KEY (`nhsNum`) REFERENCES `patient` (`nhsNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccine`
--
-- ORDER BY:  `nhsNum`,`DoseNo`

LOCK TABLES `vaccine` WRITE;
/*!40000 ALTER TABLE `vaccine` DISABLE KEYS */;
INSERT INTO `vaccine` VALUES (12345678,2,'2022-01-10','Pfizer','Covid_19','covax','BioNtech','840539006','UK','Gmbh','EU',2,'comirnaty',56,'2022-01-10',9876,0);
/*!40000 ALTER TABLE `vaccine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-08  1:20:18
