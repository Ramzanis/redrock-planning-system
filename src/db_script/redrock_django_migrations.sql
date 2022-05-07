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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-03-19 23:16:25.032448'),(2,'auth','0001_initial','2022-03-19 23:16:33.864675'),(3,'admin','0001_initial','2022-03-19 23:16:36.130754'),(4,'admin','0002_logentry_remove_auto_add','2022-03-19 23:16:36.541674'),(5,'admin','0003_logentry_add_action_flag_choices','2022-03-19 23:16:36.953816'),(6,'contenttypes','0002_remove_content_type_name','2022-03-19 23:16:38.769330'),(7,'auth','0002_alter_permission_name_max_length','2022-03-19 23:16:39.697390'),(8,'auth','0003_alter_user_email_max_length','2022-03-19 23:16:40.658379'),(9,'auth','0004_alter_user_username_opts','2022-03-19 23:16:41.064250'),(10,'auth','0005_alter_user_last_login_null','2022-03-19 23:16:41.929504'),(11,'auth','0006_require_contenttypes_0002','2022-03-19 23:16:42.332972'),(12,'auth','0007_alter_validators_add_error_messages','2022-03-19 23:16:42.744590'),(13,'auth','0008_alter_user_username_max_length','2022-03-19 23:16:43.710925'),(14,'auth','0009_alter_user_last_name_max_length','2022-03-19 23:16:44.648824'),(15,'auth','0010_alter_group_name_max_length','2022-03-19 23:16:45.540949'),(16,'auth','0011_update_proxy_permissions','2022-03-19 23:16:46.538555'),(17,'auth','0012_alter_user_first_name_max_length','2022-03-19 23:16:47.409536'),(18,'redrock','0001_initial','2022-03-19 23:16:50.604577'),(19,'redrock','0002_remove_subtask_operationid_remove_subtask_status_and_more','2022-03-19 23:16:55.438344'),(20,'redrock','0003_initial','2022-03-19 23:16:59.167356'),(21,'redrock','0004_remove_subtask_operationid_remove_subtask_status_and_more','2022-03-19 23:17:04.450799'),(22,'redrock','0005_initial','2022-03-19 23:17:07.930694'),(23,'redrock','0006_remove_subtask_operationid_remove_subtask_status_and_more','2022-03-19 23:17:13.341627'),(24,'redrock','0007_initial','2022-03-19 23:17:16.952621'),(25,'redrock','0008_alter_operation_timefinish_alter_operation_timestart_and_more','2022-03-19 23:17:19.005002'),(26,'redrock','0009_alter_operation_status','2022-03-19 23:17:21.879923'),(27,'redrock','0010_alter_operation_status','2022-03-19 23:17:24.909231'),(28,'redrock','0011_alter_operation_status','2022-03-19 23:17:27.601457'),(29,'redrock','0012_rename_status_status_statustitle','2022-03-19 23:17:28.226608'),(30,'redrock','0013_rename_statustitle_status_status','2022-03-19 23:17:28.852225'),(31,'redrock','0014_employee_moveto_stow_alter_status_status_and_more','2022-03-19 23:17:35.786255'),(32,'sessions','0001_initial','2022-03-19 23:17:37.215417'),(33,'auditlog','0001_initial','2022-04-20 10:38:38.951451'),(34,'auditlog','0002_auto_support_long_primary_keys','2022-04-20 10:38:41.363034'),(35,'auditlog','0003_logentry_remote_addr','2022-04-20 10:38:42.017301'),(36,'auditlog','0004_logentry_detailed_object_repr','2022-04-20 10:38:42.682828'),(37,'auditlog','0005_logentry_additional_data_verbose_name','2022-04-20 10:38:43.087038'),(38,'auditlog','0006_object_pk_index','2022-04-20 10:38:44.206117'),(39,'auditlog','0007_object_pk_type','2022-04-20 10:38:44.611410'),(40,'auditlog','0008_action_index','2022-04-20 10:38:45.266132'),(41,'auditlog','0009_alter_logentry_additional_data','2022-04-20 10:38:45.675148'),(44,'redrock','0015_alter_operation_timefinish','2022-04-30 20:29:23.799849'),(45,'redrock','0016_subtask_assignee','2022-04-30 20:49:22.165764'),(46,'redrock','0017_remove_subtask_operationid_and_more','2022-05-05 08:51:13.877937');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-07 19:28:57
