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
-- Table structure for table `auditlog_logentry`
--

DROP TABLE IF EXISTS `auditlog_logentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditlog_logentry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_pk` varchar(255) NOT NULL,
  `object_id` bigint DEFAULT NULL,
  `object_repr` longtext NOT NULL,
  `action` smallint unsigned NOT NULL,
  `changes` longtext NOT NULL,
  `timestamp` datetime NOT NULL,
  `actor_id` int DEFAULT NULL,
  `content_type_id` int NOT NULL,
  `remote_addr` char(39) DEFAULT NULL,
  `additional_data` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auditlog_logentry_actor_id_959271d2_fk_auth_user_id` (`actor_id`),
  KEY `auditlog_logentry_content_type_id_75830218_fk_django_co` (`content_type_id`),
  KEY `auditlog_logentry_object_id_09c2eee8` (`object_id`),
  KEY `auditlog_logentry_object_pk_6e3219c0` (`object_pk`),
  KEY `auditlog_logentry_action_229afe39` (`action`),
  CONSTRAINT `auditlog_logentry_actor_id_959271d2_fk_auth_user_id` FOREIGN KEY (`actor_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auditlog_logentry_content_type_id_75830218_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `auditlog_logentry_chk_2` CHECK ((`action` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditlog_logentry`
--

LOCK TABLES `auditlog_logentry` WRITE;
/*!40000 ALTER TABLE `auditlog_logentry` DISABLE KEYS */;
INSERT INTO `auditlog_logentry` VALUES (2,'3',3,'Subtask object (3)',1,'{\"moveTo\": [\"B1-A3\", \"B1-D3\"], \"stow\": [\"H1-C3\", \"H1-A2\"], \"containerWeightT\": [\"20.00\", \"2000\"], \"status\": [\"procesing\", \"finished\"], \"loadSeq\": [\"3\", \"333\"]}','2022-04-20 10:52:27',NULL,9,NULL,NULL),(3,'3',3,'Subtask object (3)',2,'{\"operationID\": [\"Operation object (1)\", \"None\"], \"subtaskID\": [\"3\", \"None\"], \"containerID\": [\"CONTAINER1126\", \"None\"], \"moveTo\": [\"B1-D3\", \"None\"], \"stow\": [\"H1-A2\", \"None\"], \"containerWeightT\": [\"2000.00\", \"None\"], \"status\": [\"finished\", \"None\"], \"loadSeq\": [\"333\", \"None\"]}','2022-04-20 10:53:12',NULL,9,NULL,NULL),(7,'10',10,'Subtask object (10)',2,'{\"operationID\": [\"Operation object (1)\", \"None\"], \"subtaskID\": [\"10\", \"None\"], \"containerID\": [\"CONTAINER1134\", \"None\"], \"moveTo\": [\"B1-C2\", \"None\"], \"stow\": [\"H1-C2\", \"None\"], \"containerWeightT\": [\"26.30\", \"None\"], \"status\": [\"pending\", \"None\"], \"loadSeq\": [\"10\", \"None\"]}','2022-04-20 11:21:59',NULL,9,NULL,NULL),(20,'5',5,'Operation object (5)',0,'{\"operationID\": [\"None\", \"5\"], \"status\": [\"None\", \"pending\"], \"dateRegistered\": [\"None\", \"2022-04-27 18:42:07.078170\"], \"timeStart\": [\"None\", \"2022-04-27 18:42:07.078335\"], \"assignee\": [\"None\", \"Sam\"]}','2022-04-27 18:42:10',NULL,7,NULL,NULL),(22,'5',5,'Operation object (5)',1,'{\"status\": [\"pending\", \"finished\"]}','2022-04-28 09:05:01',NULL,7,NULL,NULL),(26,'1',1,'Operation object (1)',1,'{\"status\": [\"pending\", \"finished\"]}','2022-04-29 09:11:29',NULL,7,NULL,NULL),(27,'1',1,'Subtask object (1)',0,'{\"status\": [\"None\", \"procesing\"], \"containerID\": [\"None\", \"34rr\"], \"operationID\": [\"None\", \"Operation object (1)\"], \"subtaskID\": [\"None\", \"1\"], \"moveTo\": [\"None\", \"B1-A2\"], \"stow\": [\"None\", \"H1-A2\"], \"containerWeightT\": [\"None\", \"23\"], \"loadSeq\": [\"None\", \"2\"]}','2022-04-30 19:20:26',1,9,'127.0.0.1',NULL),(32,'6',6,'Subtask object (6)',0,'{\"subtaskID\": [\"None\", \"6\"], \"moveTo\": [\"None\", \"B1-B2\"], \"containerID\": [\"None\", \"CONTAINER1129\"], \"containerWeightT\": [\"None\", \"26\"], \"stow\": [\"None\", \"H1-B2\"], \"status\": [\"None\", \"procesing\"], \"loadSeq\": [\"None\", \"6\"], \"operationID\": [\"None\", \"Operation object (1)\"]}','2022-04-30 19:36:52',NULL,9,NULL,NULL),(116,'20',20,'Subtask object (20)',0,'{\"stow\": [\"None\", \"H1-A1\"], \"containerWeightT\": [\"None\", \"26.30\"], \"operationID\": [\"None\", \"Operation object (2)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"finished\"], \"loadSeq\": [\"None\", \"10\"], \"subtaskID\": [\"None\", \"20\"], \"moveTo\": [\"None\", \"B1-A1\"], \"containerID\": [\"None\", \"CONTAINER1134\"]}','2022-05-05 08:24:28',1,9,'127.0.0.1',NULL),(117,'19',19,'Subtask object (19)',0,'{\"stow\": [\"None\", \"H1-D2\"], \"containerWeightT\": [\"None\", \"26.30\"], \"operationID\": [\"None\", \"Operation object (2)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"finished\"], \"loadSeq\": [\"None\", \"9\"], \"subtaskID\": [\"None\", \"19\"], \"moveTo\": [\"None\", \"B1-D2\"], \"containerID\": [\"None\", \"CONTAINER1132\"]}','2022-05-05 08:24:31',1,9,'127.0.0.1',NULL),(118,'18',18,'Subtask object (18)',0,'{\"stow\": [\"None\", \"H1-D3\"], \"containerWeightT\": [\"None\", \"39.00\"], \"operationID\": [\"None\", \"Operation object (2)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"finished\"], \"loadSeq\": [\"None\", \"8\"], \"subtaskID\": [\"None\", \"18\"], \"moveTo\": [\"None\", \"B1-D3\"], \"containerID\": [\"None\", \"CONTAINER1131\"]}','2022-05-05 08:24:34',1,9,'127.0.0.1',NULL),(119,'17',17,'Subtask object (17)',0,'{\"stow\": [\"None\", \"H1-B1\"], \"containerWeightT\": [\"None\", \"20.00\"], \"operationID\": [\"None\", \"Operation object (2)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"finished\"], \"loadSeq\": [\"None\", \"7\"], \"subtaskID\": [\"None\", \"17\"], \"moveTo\": [\"None\", \"B1-B1\"], \"containerID\": [\"None\", \"CONTAINER1130\"]}','2022-05-05 08:24:36',1,9,'127.0.0.1',NULL),(120,'16',16,'Subtask object (16)',0,'{\"stow\": [\"None\", \"H1-A4\"], \"containerWeightT\": [\"None\", \"26.30\"], \"operationID\": [\"None\", \"Operation object (2)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"pending\"], \"loadSeq\": [\"None\", \"6\"], \"subtaskID\": [\"None\", \"16\"], \"moveTo\": [\"None\", \"B1-A4\"], \"containerID\": [\"None\", \"CONTAINER1129\"]}','2022-05-05 08:24:39',1,9,'127.0.0.1',NULL),(121,'15',15,'Subtask object (15)',0,'{\"stow\": [\"None\", \"H1-A3\"], \"containerWeightT\": [\"None\", \"26.30\"], \"operationID\": [\"None\", \"Operation object (2)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"finished\"], \"loadSeq\": [\"None\", \"5\"], \"subtaskID\": [\"None\", \"15\"], \"moveTo\": [\"None\", \"B1-A3\"], \"containerID\": [\"None\", \"CONTAINER1128\"]}','2022-05-05 08:24:42',1,9,'127.0.0.1',NULL),(122,'14',14,'Subtask object (14)',0,'{\"stow\": [\"None\", \"H1-A2\"], \"containerWeightT\": [\"None\", \"26.30\"], \"operationID\": [\"None\", \"Operation object (2)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"pending\"], \"loadSeq\": [\"None\", \"4\"], \"subtaskID\": [\"None\", \"14\"], \"moveTo\": [\"None\", \"B1-A2\"], \"containerID\": [\"None\", \"CONTAINER1127\"]}','2022-05-05 08:24:45',1,9,'127.0.0.1',NULL),(123,'13',13,'Subtask object (13)',0,'{\"stow\": [\"None\", \"H1-D1\"], \"containerWeightT\": [\"None\", \"20.00\"], \"operationID\": [\"None\", \"Operation object (2)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"pending\"], \"loadSeq\": [\"None\", \"3\"], \"subtaskID\": [\"None\", \"13\"], \"moveTo\": [\"None\", \"B1-D1\"], \"containerID\": [\"None\", \"CONTAINER1126\"]}','2022-05-05 08:24:48',1,9,'127.0.0.1',NULL),(124,'12',12,'Subtask object (12)',0,'{\"stow\": [\"None\", \"H1-C4\"], \"containerWeightT\": [\"None\", \"26.30\"], \"operationID\": [\"None\", \"Operation object (2)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"procesing\"], \"loadSeq\": [\"None\", \"2\"], \"subtaskID\": [\"None\", \"12\"], \"moveTo\": [\"None\", \"B1-C4\"], \"containerID\": [\"None\", \"CONTAINER1125\"]}','2022-05-05 08:24:50',1,9,'127.0.0.1',NULL),(125,'11',11,'Subtask object (11)',0,'{\"stow\": [\"None\", \"H1-D1\"], \"containerWeightT\": [\"None\", \"25.00\"], \"operationID\": [\"None\", \"Operation object (2)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"finished\"], \"loadSeq\": [\"None\", \"1\"], \"subtaskID\": [\"None\", \"11\"], \"moveTo\": [\"None\", \"B1-D4\"], \"containerID\": [\"None\", \"CONTAINER1124\"]}','2022-05-05 08:24:53',1,9,'127.0.0.1',NULL),(126,'9',9,'Subtask object (9)',0,'{\"stow\": [\"None\", \"H1-C1\"], \"containerWeightT\": [\"None\", \"26.30\"], \"operationID\": [\"None\", \"Operation object (1)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"pending\"], \"loadSeq\": [\"None\", \"9\"], \"subtaskID\": [\"None\", \"9\"], \"moveTo\": [\"None\", \"B1-C1\"], \"containerID\": [\"None\", \"CONTAINER1132\"]}','2022-05-05 08:24:56',1,9,'127.0.0.1',NULL),(127,'8',8,'Subtask object (8)',0,'{\"stow\": [\"None\", \"H1-B4\"], \"containerWeightT\": [\"None\", \"33.20\"], \"operationID\": [\"None\", \"Operation object (1)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"pending\"], \"loadSeq\": [\"None\", \"8\"], \"subtaskID\": [\"None\", \"8\"], \"moveTo\": [\"None\", \"B1-B4\"], \"containerID\": [\"None\", \"CONTAINER1131\"]}','2022-05-05 08:24:59',1,9,'127.0.0.1',NULL),(128,'7',7,'Subtask object (7)',0,'{\"stow\": [\"None\", \"H1-B3\"], \"containerWeightT\": [\"None\", \"5.00\"], \"operationID\": [\"None\", \"Operation object (1)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"pending\"], \"loadSeq\": [\"None\", \"7\"], \"subtaskID\": [\"None\", \"7\"], \"moveTo\": [\"None\", \"B1-B3\"], \"containerID\": [\"None\", \"CONTAINER1130\"]}','2022-05-05 08:25:02',1,9,'127.0.0.1',NULL),(129,'5',5,'Subtask object (5)',0,'{\"stow\": [\"None\", \"H1-B2\"], \"containerWeightT\": [\"None\", \"240.00\"], \"operationID\": [\"None\", \"Operation object (1)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"procesing\"], \"loadSeq\": [\"None\", \"4\"], \"subtaskID\": [\"None\", \"5\"], \"moveTo\": [\"None\", \"B1-B1\"], \"containerID\": [\"None\", \"CONTAINER9999\"]}','2022-05-05 08:25:04',1,9,'127.0.0.1',NULL),(130,'4',4,'Subtask object (4)',0,'{\"stow\": [\"None\", \"H1-A4\"], \"containerWeightT\": [\"None\", \"33.00\"], \"operationID\": [\"None\", \"Operation object (1)\"], \"assignee\": [\"None\", \"Tiberiu\"], \"status\": [\"None\", \"pending\"], \"loadSeq\": [\"None\", \"4\"], \"subtaskID\": [\"None\", \"4\"], \"moveTo\": [\"None\", \"B1-A4\"], \"containerID\": [\"None\", \"CONTAINER1127\"]}','2022-05-05 08:25:07',1,9,'127.0.0.1',NULL),(133,'3',3,'Operation object (3)',0,'{\"timeStart\": [\"None\", \"2022-05-05 08:33:58.035774\"], \"assignee\": [\"None\", \"Tiberiu\"], \"timeFinish\": [\"None\", \"2022-05-05 08:33:58.035786\"], \"operationID\": [\"None\", \"3\"], \"status\": [\"None\", \"procesing\"], \"dateRegistered\": [\"None\", \"2022-05-05 08:33:58.035746\"]}','2022-05-05 08:33:59',1,7,'127.0.0.1',NULL),(134,'4',4,'Operation object (4)',0,'{\"timeStart\": [\"None\", \"2022-05-05 08:34:00.295520\"], \"assignee\": [\"None\", \"Tiberiu\"], \"timeFinish\": [\"None\", \"2022-05-05 08:34:00.295533\"], \"operationID\": [\"None\", \"4\"], \"status\": [\"None\", \"pending\"], \"dateRegistered\": [\"None\", \"2022-05-05 08:34:00.295490\"]}','2022-05-05 08:34:01',1,7,'127.0.0.1',NULL);
/*!40000 ALTER TABLE `auditlog_logentry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-07 19:27:54
