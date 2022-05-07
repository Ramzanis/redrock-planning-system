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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-04-30 19:20:26.309633','1','Subtask object (1)',1,'[{\"added\": {}}]',9,1),(2,'2022-05-04 19:51:30.083292','20','Subtask object (20)',3,'',9,1),(3,'2022-05-04 19:51:30.282545','19','Subtask object (19)',3,'',9,1),(4,'2022-05-04 19:51:30.478620','18','Subtask object (18)',3,'',9,1),(5,'2022-05-04 19:51:30.674815','17','Subtask object (17)',3,'',9,1),(6,'2022-05-04 19:51:30.870215','16','Subtask object (16)',3,'',9,1),(7,'2022-05-04 19:51:31.065139','15','Subtask object (15)',3,'',9,1),(8,'2022-05-04 19:51:31.265030','14','Subtask object (14)',3,'',9,1),(9,'2022-05-04 19:51:31.461230','13','Subtask object (13)',3,'',9,1),(10,'2022-05-04 19:51:31.657799','12','Subtask object (12)',3,'',9,1),(11,'2022-05-04 19:51:31.853605','11','Subtask object (11)',3,'',9,1),(12,'2022-05-05 08:25:08.565050','20','Subtask object (20)',1,'new through import_export',9,1),(13,'2022-05-05 08:25:08.816656','19','Subtask object (19)',1,'new through import_export',9,1),(14,'2022-05-05 08:25:09.023238','18','Subtask object (18)',1,'new through import_export',9,1),(15,'2022-05-05 08:25:09.230391','17','Subtask object (17)',1,'new through import_export',9,1),(16,'2022-05-05 08:25:09.445991','16','Subtask object (16)',1,'new through import_export',9,1),(17,'2022-05-05 08:25:09.652000','15','Subtask object (15)',1,'new through import_export',9,1),(18,'2022-05-05 08:25:09.858340','14','Subtask object (14)',1,'new through import_export',9,1),(19,'2022-05-05 08:25:10.065709','13','Subtask object (13)',1,'new through import_export',9,1),(20,'2022-05-05 08:25:10.271833','12','Subtask object (12)',1,'new through import_export',9,1),(21,'2022-05-05 08:25:10.479132','11','Subtask object (11)',1,'new through import_export',9,1),(22,'2022-05-05 08:25:10.688005','9','Subtask object (9)',1,'new through import_export',9,1),(23,'2022-05-05 08:25:10.897958','8','Subtask object (8)',1,'new through import_export',9,1),(24,'2022-05-05 08:25:11.103851','7','Subtask object (7)',1,'new through import_export',9,1),(25,'2022-05-05 08:25:11.311854','5','Subtask object (5)',1,'new through import_export',9,1),(26,'2022-05-05 08:25:11.527023','4','Subtask object (4)',1,'new through import_export',9,1),(27,'2022-05-05 08:34:02.479201','3','Operation object (3)',1,'new through import_export',7,1),(28,'2022-05-05 08:34:02.695444','4','Operation object (4)',1,'new through import_export',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-07 19:28:53
