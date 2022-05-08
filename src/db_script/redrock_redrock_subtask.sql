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
-- Table structure for table `redrock_subtask`
--

DROP TABLE IF EXISTS `redrock_subtask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redrock_subtask` (
  `subtaskID` int NOT NULL,
  `containerID` varchar(255) NOT NULL,
  `containerWeightT` decimal(6,2) NOT NULL,
  `loadSeq` int NOT NULL,
  `moveTo_id` int NOT NULL,
  `stow_id` int NOT NULL,
  `status_id` int NOT NULL,
  `assignee_id` int NOT NULL,
  PRIMARY KEY (`subtaskID`),
  KEY `redrock_subtask_status_id_3a7fda8b_fk_redrock_status_statusID` (`status_id`),
  KEY `redrock_subtask_moveTo_id_c269111d` (`moveTo_id`),
  KEY `redrock_subtask_stow_id_056cf784` (`stow_id`),
  KEY `redrock_subtask_assignee_id_88996dd5_fk_redrock_e` (`assignee_id`),
  CONSTRAINT `redrock_subtask_assignee_id_88996dd5_fk_redrock_e` FOREIGN KEY (`assignee_id`) REFERENCES `redrock_employee` (`employeeID`),
  CONSTRAINT `redrock_subtask_moveTo_id_c269111d_fk_redrock_moveto_moveToID` FOREIGN KEY (`moveTo_id`) REFERENCES `redrock_moveto` (`moveToID`),
  CONSTRAINT `redrock_subtask_status_id_3a7fda8b_fk_redrock_status_statusID` FOREIGN KEY (`status_id`) REFERENCES `redrock_status` (`statusID`),
  CONSTRAINT `redrock_subtask_stow_id_056cf784_fk_redrock_stow_stowID` FOREIGN KEY (`stow_id`) REFERENCES `redrock_stow` (`stowID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redrock_subtask`
--

LOCK TABLES `redrock_subtask` WRITE;
/*!40000 ALTER TABLE `redrock_subtask` DISABLE KEYS */;
INSERT INTO `redrock_subtask` VALUES (4,'CONTAINER1127',33.00,4,4,4,1,1),(5,'CONTAINER9999',240.00,4,5,6,2,1),(7,'CONTAINER1130',5.00,7,7,7,1,1),(8,'CONTAINER1131',33.20,8,8,8,1,1),(9,'CONTAINER1132',26.30,9,9,9,1,1),(11,'CONTAINER1124',25.00,1,16,13,3,1),(12,'CONTAINER1125',26.30,2,12,12,2,1),(13,'CONTAINER1126',20.00,3,13,13,1,1),(14,'CONTAINER1127',26.30,4,2,2,1,1),(15,'CONTAINER1128',26.30,5,3,3,3,1),(16,'CONTAINER1129',26.30,6,4,4,1,1),(17,'CONTAINER1130',20.00,7,5,5,3,1),(18,'CONTAINER1131',39.00,8,15,15,3,1),(19,'CONTAINER1132',26.30,9,14,14,3,1),(20,'CONTAINER1134',26.30,10,1,1,3,1);
/*!40000 ALTER TABLE `redrock_subtask` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-07 19:28:49
