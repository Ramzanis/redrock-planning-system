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
-- Table structure for table `redrock_operation`
--

DROP TABLE IF EXISTS `redrock_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redrock_operation` (
  `operationID` int NOT NULL,
  `assignee_id` int NOT NULL,
  `dateRegistered` datetime(6) NOT NULL,
  `timeStart` datetime(6) DEFAULT NULL,
  `timeFinish` datetime(6) NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`operationID`),
  KEY `redrock_operation_status_id_1f001d02_fk_redrock_status_statusID` (`status_id`),
  KEY `redrock_operation_assignee_id_9778b7dd` (`assignee_id`),
  CONSTRAINT `redrock_operation_assignee_id_9778b7dd_fk_redrock_e` FOREIGN KEY (`assignee_id`) REFERENCES `redrock_employee` (`employeeID`),
  CONSTRAINT `redrock_operation_status_id_1f001d02_fk_redrock_status_statusID` FOREIGN KEY (`status_id`) REFERENCES `redrock_status` (`statusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redrock_operation`
--

LOCK TABLES `redrock_operation` WRITE;
/*!40000 ALTER TABLE `redrock_operation` DISABLE KEYS */;
INSERT INTO `redrock_operation` VALUES (1,1,'2022-04-30 22:26:21.000000','2022-04-30 22:26:22.000000','2022-04-30 22:26:25.000000',1),(2,2,'2022-04-30 22:26:44.000000','2022-04-30 22:26:46.000000','2022-04-30 22:26:48.000000',2),(3,1,'2022-05-05 08:33:58.035746','2022-05-05 08:33:58.035774','2022-05-05 08:33:58.035786',2),(4,1,'2022-05-05 08:34:00.295490','2022-05-05 08:34:00.295520','2022-05-05 08:34:00.295533',1);
/*!40000 ALTER TABLE `redrock_operation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-07 19:28:28
