-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: mysql-69376-0.cloudclusters.net    Database: redrock
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `redrock_stow`
--

DROP TABLE IF EXISTS `redrock_stow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redrock_stow` (
  `stowID` int NOT NULL,
  `locationStow` varchar(20) NOT NULL,
  PRIMARY KEY (`stowID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redrock_stow`
--

LOCK TABLES `redrock_stow` WRITE;
/*!40000 ALTER TABLE `redrock_stow` DISABLE KEYS */;
INSERT INTO `redrock_stow` VALUES (1,'H1-A1'),(2,'H1-A2'),(3,'H1-A3'),(4,'H1-A4'),(5,'H1-B1'),(6,'H1-B2'),(7,'H1-B3'),(8,'H1-B4'),(9,'H1-C1'),(10,'H1-C2'),(11,'H1-C3'),(12,'H1-C4'),(13,'H1-D1'),(14,'H1-D2'),(15,'H1-D3'),(16,'H1-D4');
/*!40000 ALTER TABLE `redrock_stow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-07 19:28:37
