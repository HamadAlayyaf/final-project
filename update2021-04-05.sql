-- MySQL dump 10.13  Distrib 8.0.23, for osx10.16 (x86_64)
--
-- Host: localhost    Database: projectdb
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_groups`
--

DROP TABLE IF EXISTS `_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_groups` (
  `id_groups` int NOT NULL AUTO_INCREMENT,
  `name_Groups` varchar(45) DEFAULT NULL,
  KEY `id_Groups_fk` (`id_groups`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_groups`
--

LOCK TABLES `_groups` WRITE;
/*!40000 ALTER TABLE `_groups` DISABLE KEYS */;
INSERT INTO `_groups` VALUES (44,'M85'),(45,'M86'),(46,'M88'),(47,'M90'),(48,'M91'),(49,'M92');
/*!40000 ALTER TABLE `_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add committees charis',7,'add_committeescharis'),(26,'Can change committees charis',7,'change_committeescharis'),(27,'Can delete committees charis',7,'delete_committeescharis'),(28,'Can view committees charis',7,'view_committeescharis'),(29,'Can add doctors',8,'add_doctors'),(30,'Can change doctors',8,'change_doctors'),(31,'Can delete doctors',8,'delete_doctors'),(32,'Can view doctors',8,'view_doctors'),(33,'Can add evaluation',9,'add_evaluation'),(34,'Can change evaluation',9,'change_evaluation'),(35,'Can delete evaluation',9,'delete_evaluation'),(36,'Can view evaluation',9,'view_evaluation'),(37,'Can add examiners',10,'add_examiners'),(38,'Can change examiners',10,'change_examiners'),(39,'Can delete examiners',10,'delete_examiners'),(40,'Can view examiners',10,'view_examiners'),(41,'Can add groups',11,'add_groups'),(42,'Can change groups',11,'change_groups'),(43,'Can delete groups',11,'delete_groups'),(44,'Can view groups',11,'view_groups'),(45,'Can add projects',12,'add_projects'),(46,'Can change projects',12,'change_projects'),(47,'Can delete projects',12,'delete_projects'),(48,'Can view projects',12,'view_projects'),(49,'Can add students',13,'add_students'),(50,'Can change students',13,'change_students'),(51,'Can delete students',13,'delete_students'),(52,'Can view students',13,'view_students'),(53,'Can add department',14,'add_department'),(54,'Can change department',14,'change_department'),(55,'Can delete department',14,'delete_department'),(56,'Can view department',14,'view_department'),(57,'Can add department',15,'add_department'),(58,'Can change department',15,'change_department'),(59,'Can delete department',15,'delete_department'),(60,'Can view department',15,'view_department'),(61,'Can add examiners',16,'add_examiners'),(62,'Can change examiners',16,'change_examiners'),(63,'Can delete examiners',16,'delete_examiners'),(64,'Can view examiners',16,'view_examiners'),(65,'Can add doctors',17,'add_doctors'),(66,'Can change doctors',17,'change_doctors'),(67,'Can delete doctors',17,'delete_doctors'),(68,'Can view doctors',17,'view_doctors'),(69,'Can add groups',18,'add_groups'),(70,'Can change groups',18,'change_groups'),(71,'Can delete groups',18,'delete_groups'),(72,'Can view groups',18,'view_groups'),(73,'Can add students',19,'add_students'),(74,'Can change students',19,'change_students'),(75,'Can delete students',19,'delete_students'),(76,'Can view students',19,'view_students'),(77,'Can add department',20,'add_department'),(78,'Can change department',20,'change_department'),(79,'Can delete department',20,'delete_department'),(80,'Can view department',20,'view_department'),(81,'Can add evaluation',21,'add_evaluation'),(82,'Can change evaluation',21,'change_evaluation'),(83,'Can delete evaluation',21,'delete_evaluation'),(84,'Can view evaluation',21,'view_evaluation'),(85,'Can add groups',22,'add_groups'),(86,'Can change groups',22,'change_groups'),(87,'Can delete groups',22,'delete_groups'),(88,'Can view groups',22,'view_groups'),(89,'Can add examiners',23,'add_examiners'),(90,'Can change examiners',23,'change_examiners'),(91,'Can delete examiners',23,'delete_examiners'),(92,'Can view examiners',23,'view_examiners'),(93,'Can add projects',24,'add_projects'),(94,'Can change projects',24,'change_projects'),(95,'Can delete projects',24,'delete_projects'),(96,'Can view projects',24,'view_projects'),(97,'Can add committees charis',25,'add_committeescharis'),(98,'Can change committees charis',25,'change_committeescharis'),(99,'Can delete committees charis',25,'delete_committeescharis'),(100,'Can view committees charis',25,'view_committeescharis'),(101,'Can add department',26,'add_department'),(102,'Can change department',26,'change_department'),(103,'Can delete department',26,'delete_department'),(104,'Can view department',26,'view_department'),(105,'Can add examiners',27,'add_examiners'),(106,'Can change examiners',27,'change_examiners'),(107,'Can delete examiners',27,'delete_examiners'),(108,'Can view examiners',27,'view_examiners'),(109,'Can add projects',28,'add_projects'),(110,'Can change projects',28,'change_projects'),(111,'Can delete projects',28,'delete_projects'),(112,'Can view projects',28,'view_projects'),(113,'Can add students',29,'add_students'),(114,'Can change students',29,'change_students'),(115,'Can delete students',29,'delete_students'),(116,'Can view students',29,'view_students'),(117,'Can add doctors',30,'add_doctors'),(118,'Can change doctors',30,'change_doctors'),(119,'Can delete doctors',30,'delete_doctors'),(120,'Can view doctors',30,'view_doctors'),(121,'Can add evaluation',31,'add_evaluation'),(122,'Can change evaluation',31,'change_evaluation'),(123,'Can delete evaluation',31,'delete_evaluation'),(124,'Can view evaluation',31,'view_evaluation'),(125,'Can add groups',32,'add_groups'),(126,'Can change groups',32,'change_groups'),(127,'Can delete groups',32,'delete_groups'),(128,'Can view groups',32,'view_groups');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$bEFqtTyNcHhy$+VvCoNC8KNFJ+FrwPglyW4EDV54QRBGVAv0uQPsFuSc=','2021-03-15 18:16:00.625511',1,'h3','','','',1,1,'2021-02-18 11:24:50.846476'),(2,'pbkdf2_sha256$216000$YfFgdzRmja3b$1/kjyVuuRiXKp2K+nPwuLLbve91Z8X96Q40YWsQ80fY=','2021-02-20 18:14:03.960621',1,'hamad','','','',1,1,'2021-02-20 18:12:57.170698'),(3,'pbkdf2_sha256$216000$0mrt5waVVNwu$OblBfM+rd8+WvRTEyLcrTpnOSSduPzroRQWWMx57JwA=','2021-02-21 18:46:38.684236',1,'admin','','','',1,1,'2021-02-21 18:46:16.690818'),(4,'pbkdf2_sha256$216000$N7yoL8BXCQDC$9aq4OmOz5WHE25xN+hd0VBAP479OV0OglYdJYHepx2E=',NULL,0,'438','','','',0,1,'2021-02-28 20:13:52.757494'),(5,'pbkdf2_sha256$216000$YIPODfaLzRid$pKgZTtHd7Kx0jnNUwjPizigCwhobmRMxmYXvzo17k1k=','2021-03-13 20:53:40.727730',1,'mohamed','','','',1,1,'2021-03-13 13:50:48.052967');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `committees_charis`
--

DROP TABLE IF EXISTS `committees_charis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `committees_charis` (
  `id_committees_charis` int NOT NULL AUTO_INCREMENT,
  `name_committees_charis` varchar(45) DEFAULT NULL,
  `passwords` varchar(45) DEFAULT NULL,
  `id_department_fk` int DEFAULT NULL,
  `bu_id` int DEFAULT NULL,
  PRIMARY KEY (`id_committees_charis`),
  KEY `id_committees_charis_fk` (`id_committees_charis`),
  KEY `id_depart_fk_idx` (`id_department_fk`),
  CONSTRAINT `id_depart_fk` FOREIGN KEY (`id_department_fk`) REFERENCES `department` (`id_department`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committees_charis`
--

LOCK TABLES `committees_charis` WRITE;
/*!40000 ALTER TABLE `committees_charis` DISABLE KEYS */;
INSERT INTO `committees_charis` VALUES (6,'sultan','123',1,5010),(7,'khalid','123',2,5020),(8,'Ahamad','123',3,5030);
/*!40000 ALTER TABLE `committees_charis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id_department` int NOT NULL AUTO_INCREMENT,
  `name_department` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_department`),
  KEY `id_department_fk` (`id_department`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'CS'),(2,'IT'),(3,'IS');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=632 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-02-20 18:14:29.853933','1','CS',1,'[{\"added\": {}}]',15,2),(2,'2021-02-20 18:15:22.435928','12','saleh',1,'[{\"added\": {}}]',17,2),(3,'2021-02-20 18:22:53.622374','12','saleh',1,'[{\"added\": {}}]',17,2),(4,'2021-02-20 19:53:00.535134','1','CS',1,'[{\"added\": {}}]',20,2),(5,'2021-02-20 19:53:48.571138','2','IT',1,'[{\"added\": {}}]',20,2),(6,'2021-02-20 19:54:00.003940','3','IS',1,'[{\"added\": {}}]',20,2),(7,'2021-02-20 19:55:43.721541','1','sultan',1,'[{\"added\": {}}]',7,2),(8,'2021-02-20 19:56:02.797469','2','faisal',1,'[{\"added\": {}}]',7,2),(9,'2021-02-20 19:56:24.768254','3','mohammed',1,'[{\"added\": {}}]',7,2),(10,'2021-02-20 20:00:24.066578','1','1',1,'[{\"added\": {}}]',22,2),(11,'2021-02-20 20:00:57.875036','438006941','438006941',1,'[{\"added\": {}}]',19,2),(12,'2021-02-20 20:01:37.473342','438010648','438010648',1,'[{\"added\": {}}]',19,2),(13,'2021-02-20 20:02:17.963174','438000519','438000519',1,'[{\"added\": {}}]',19,2),(14,'2021-02-20 20:03:03.512011','438009200','438009200',1,'[{\"added\": {}}]',19,2),(15,'2021-02-20 20:03:48.129277','12','saleh',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',17,2),(16,'2021-02-20 20:04:48.650730','3','3',1,'[{\"added\": {}}]',23,2),(17,'2021-02-20 20:05:07.244131','12','saleh',2,'[{\"changed\": {\"fields\": [\"Id examiners fk\"]}}]',17,2),(18,'2021-02-20 20:05:25.853950','12','saleh',2,'[]',17,2),(19,'2021-02-20 20:17:44.209145','2','2',1,'[{\"added\": {}}]',23,2),(20,'2021-02-20 20:18:00.317775','3','3',2,'[{\"changed\": {\"fields\": [\"Name examiners\"]}}]',23,2),(21,'2021-02-20 20:18:46.191704','1','1',1,'[{\"added\": {}}]',21,2),(22,'2021-02-20 20:19:00.364603','2','2',1,'[{\"added\": {}}]',21,2),(23,'2021-02-20 20:35:04.907560','2','saleh',1,'[{\"added\": {}}]',17,2),(24,'2021-02-22 15:01:26.006810','1','1',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(25,'2021-02-22 15:25:17.079599','1','1',2,'[]',22,3),(26,'2021-02-22 15:25:30.176056','12','12',1,'[{\"added\": {}}]',22,3),(27,'2021-02-22 15:25:41.597566','13','13',1,'[{\"added\": {}}]',22,3),(28,'2021-02-22 16:23:58.053874','13','13',3,'',22,3),(29,'2021-02-22 16:24:01.150110','12','12',3,'',22,3),(30,'2021-02-24 14:23:41.845300','2','2',1,'[{\"added\": {}}]',22,3),(31,'2021-02-24 14:45:09.011629','230','fhad',1,'[{\"added\": {}}]',17,3),(32,'2021-02-24 15:23:21.627029','3','3',1,'[{\"added\": {}}]',22,3),(33,'2021-02-26 19:47:08.342962','4','4',1,'[{\"added\": {}}]',22,3),(34,'2021-02-26 19:47:59.577946','10','naif',1,'[{\"added\": {}}]',17,3),(35,'2021-02-27 16:44:10.508551','10','naif',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',17,3),(36,'2021-02-27 16:59:51.649656','12','saleh',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',17,3),(37,'2021-02-27 17:01:09.952880','230','fhad',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',17,3),(38,'2021-02-28 17:24:47.199755','4','4',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(39,'2021-02-28 17:24:52.800200','3','3',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(40,'2021-02-28 17:24:58.220380','2','2',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(41,'2021-02-28 17:25:01.782704','1','1',2,'[]',22,3),(42,'2021-02-28 20:13:53.013472','4','438',1,'[{\"added\": {}}]',4,3),(43,'2021-03-01 09:22:35.219727','0','0',1,'[{\"added\": {}}]',19,3),(44,'2021-03-01 16:20:39.265923','0','ali',1,'[{\"added\": {}}]',17,3),(45,'2021-03-02 15:35:35.746474','1','1',2,'[{\"changed\": {\"fields\": [\"Id groups\", \"Name groups\", \"Idea groups\", \"Idea fescription\", \"Idea speciallty\"]}}]',22,3),(46,'2021-03-02 15:35:52.971056','1','1',3,'',22,3),(47,'2021-03-02 15:36:28.179208','1','1',1,'[{\"added\": {}}]',24,3),(48,'2021-03-02 15:37:07.728942','2','2',1,'[{\"added\": {}}]',24,3),(49,'2021-03-02 17:20:34.133056','1','1',2,'[{\"changed\": {\"fields\": [\"Name projects\"]}}]',24,3),(50,'2021-03-02 17:20:45.279355','1','1',2,'[{\"changed\": {\"fields\": [\"Name projects\"]}}]',24,3),(51,'2021-03-02 17:39:29.717826','5','5',3,'',24,3),(52,'2021-03-02 17:39:29.733817','2','2',3,'',24,3),(53,'2021-03-02 17:39:29.761803','1','1',3,'',24,3),(54,'2021-03-02 17:39:29.788799','0','0',3,'',24,3),(55,'2021-03-02 17:39:55.699270','0','0',3,'',24,3),(56,'2021-03-02 17:40:26.930857','0','0',3,'',24,3),(57,'2021-03-02 18:03:36.135604','0','0',3,'',24,3),(58,'2021-03-02 18:10:54.242951','5','5',3,'',24,3),(59,'2021-03-02 18:10:54.274932','2','2',3,'',24,3),(60,'2021-03-02 18:10:54.296933','0','0',3,'',24,3),(61,'2021-03-02 19:12:04.586399','0','0',3,'',19,3),(62,'2021-03-02 19:12:23.749755','0','0',1,'[{\"added\": {}}]',19,3),(63,'2021-03-02 21:15:36.690602','4','4',3,'',22,3),(64,'2021-03-02 21:15:36.700530','3','3',3,'',22,3),(65,'2021-03-02 21:15:36.720291','2','2',3,'',22,3),(66,'2021-03-02 21:16:00.780557','0','0',1,'[{\"added\": {}}]',22,3),(67,'2021-03-02 21:32:58.612658','2','2',1,'[{\"added\": {}}]',22,3),(68,'2021-03-02 21:33:05.207721','3','3',1,'[{\"added\": {}}]',22,3),(69,'2021-03-02 21:46:48.215564','4','4',1,'[{\"added\": {}}]',22,3),(70,'2021-03-02 21:46:55.125244','5','5',1,'[{\"added\": {}}]',22,3),(71,'2021-03-02 22:10:45.471601','5','sss',1,'[{\"added\": {}}]',24,3),(72,'2021-03-02 22:11:07.561810','1','qqqq',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(73,'2021-03-02 22:11:23.451408','5','sss',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(74,'2021-03-02 22:12:02.491478','5','sss',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(75,'2021-03-03 16:03:11.697727','438010649','438010649',1,'[{\"added\": {}}]',19,3),(76,'2021-03-03 16:03:18.821791','438010650','438010650',1,'[{\"added\": {}}]',19,3),(77,'2021-03-03 16:03:28.309408','1','1',2,'[{\"changed\": {\"fields\": [\"Passwords\"]}}]',19,3),(78,'2021-03-03 16:03:40.958127','438010651','438010651',1,'[{\"added\": {}}]',19,3),(79,'2021-03-03 16:04:01.588068','438010651','438010651',3,'',19,3),(80,'2021-03-03 16:04:01.601060','438010650','438010650',3,'',19,3),(81,'2021-03-03 16:04:01.615054','438010649','438010649',3,'',19,3),(82,'2021-03-03 16:04:01.633056','438010648','438010648',3,'',19,3),(83,'2021-03-03 16:04:01.647034','438009200','438009200',3,'',19,3),(84,'2021-03-03 16:04:01.667059','438006941','438006941',3,'',19,3),(85,'2021-03-03 16:04:01.690015','438000519','438000519',3,'',19,3),(86,'2021-03-03 16:04:01.711997','1','1',3,'',19,3),(87,'2021-03-03 16:04:06.296349','438010652','438010652',1,'[{\"added\": {}}]',19,3),(88,'2021-03-03 16:04:15.110623','438010653','438010653',1,'[{\"added\": {}}]',19,3),(89,'2021-03-03 16:05:03.055388','438010654','438010654',1,'[{\"added\": {}}]',19,3),(90,'2021-03-03 16:05:43.954180','438010654','438010654',3,'',19,3),(91,'2021-03-03 16:05:43.969172','438010653','438010653',3,'',19,3),(92,'2021-03-03 16:05:43.994157','438010652','438010652',3,'',19,3),(93,'2021-03-03 16:05:49.398520','438010655','438010655',1,'[{\"added\": {}}]',19,3),(94,'2021-03-03 16:06:00.178235','438010656','438010656',1,'[{\"added\": {}}]',19,3),(95,'2021-03-03 18:03:29.870537','231','ss',1,'[{\"added\": {}}]',17,3),(96,'2021-03-03 18:22:16.594169','438010656','438010656',3,'',19,3),(97,'2021-03-03 18:22:16.621157','438010655','438010655',3,'',19,3),(98,'2021-03-03 18:22:40.115084','438010657','438010657',1,'[{\"added\": {}}]',19,3),(99,'2021-03-03 18:23:41.013471','438010657','438010657',2,'[{\"changed\": {\"fields\": [\"Id groups fk\", \"Id department fk\"]}}]',19,3),(100,'2021-03-03 18:30:59.103556','438010658','438010658',1,'[{\"added\": {}}]',19,3),(101,'2021-03-03 18:34:27.690578','438010657','438010657',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',19,3),(102,'2021-03-03 18:38:28.309521','438010658','438010658',3,'',19,3),(103,'2021-03-03 18:38:28.331509','438010657','438010657',3,'',19,3),(104,'2021-03-03 18:45:31.807291','438010659','438010659',1,'[{\"added\": {}}]',19,3),(105,'2021-03-03 18:45:48.075526','438010660','438010660',1,'[{\"added\": {}}]',19,3),(106,'2021-03-03 18:48:05.466578','438010661','438010661',1,'[{\"added\": {}}]',19,3),(107,'2021-03-03 18:48:35.227591','6','6',1,'[{\"added\": {}}]',22,3),(108,'2021-03-03 18:51:13.396003','438010662','438010662',1,'[{\"added\": {}}]',19,3),(109,'2021-03-03 18:57:12.383764','438010663','438010663',1,'[{\"added\": {}}]',19,3),(110,'2021-03-03 18:57:18.654586','438010664','438010664',1,'[{\"added\": {}}]',19,3),(111,'2021-03-03 19:00:32.758376','438010664','438010664',3,'',19,3),(112,'2021-03-03 19:00:32.777366','438010663','438010663',3,'',19,3),(113,'2021-03-03 19:00:32.801360','438010662','438010662',3,'',19,3),(114,'2021-03-03 19:00:32.814347','438010661','438010661',3,'',19,3),(115,'2021-03-03 19:00:32.826395','438010660','438010660',3,'',19,3),(116,'2021-03-03 19:00:32.844328','438010659','438010659',3,'',19,3),(117,'2021-03-03 19:00:32.851343','1','1',3,'',19,3),(118,'2021-03-03 19:00:49.036699','438010665','438010665',1,'[{\"added\": {}}]',19,3),(119,'2021-03-03 20:34:18.278101','438010665','438010665',3,'',19,3),(120,'2021-03-03 20:38:01.403931','234','234',1,'[{\"added\": {}}]',17,3),(121,'2021-03-03 20:38:15.254297','234','234',3,'',17,3),(122,'2021-03-03 20:38:15.270348','231','231',3,'',17,3),(123,'2021-03-03 20:38:15.286300','230','230',3,'',17,3),(124,'2021-03-03 20:38:15.310352','12','12',3,'',17,3),(125,'2021-03-03 20:38:15.318301','10','10',3,'',17,3),(126,'2021-03-03 20:38:15.350355','2','2',3,'',17,3),(127,'2021-03-03 20:38:15.374295','1','1',3,'',17,3),(128,'2021-03-03 20:38:20.554659','235','235',1,'[{\"added\": {}}]',17,3),(129,'2021-03-03 20:38:31.373815','236','236',1,'[{\"added\": {}}]',17,3),(130,'2021-03-03 20:39:57.617819','4','s',1,'[{\"added\": {}}]',20,3),(131,'2021-03-03 20:40:06.096579','4','s',2,'[]',20,3),(132,'2021-03-03 20:40:45.726269','4','4',3,'',20,3),(133,'2021-03-03 20:41:46.341228','236','236',3,'',17,3),(134,'2021-03-03 20:41:46.349253','235','235',3,'',17,3),(135,'2021-03-03 20:43:06.973766','3','3',1,'[{\"added\": {}}]',21,3),(136,'2021-03-03 20:43:12.121381','4','4',1,'[{\"added\": {}}]',21,3),(137,'2021-03-03 20:44:15.229406','0','0',1,'[{\"added\": {}}]',23,3),(138,'2021-03-03 20:44:37.633103','3','3',3,'',23,3),(139,'2021-03-03 20:44:37.649100','2','2',3,'',23,3),(140,'2021-03-03 20:44:37.665142','0','0',3,'',23,3),(141,'2021-03-03 20:44:41.985533','0','0',1,'[{\"added\": {}}]',23,3),(142,'2021-03-03 20:48:50.496319','2','2',1,'[{\"added\": {}}]',23,3),(143,'2021-03-03 20:48:56.723906','3','3',1,'[{\"added\": {}}]',23,3),(144,'2021-03-03 20:51:42.751826','237','237',1,'[{\"added\": {}}]',17,3),(145,'2021-03-03 20:51:53.819159','438010666','438010666',1,'[{\"added\": {}}]',19,3),(146,'2021-03-03 20:52:05.817593','438010667','438010667',1,'[{\"added\": {}}]',19,3),(147,'2021-03-03 20:52:13.582285','438010668','438010668',1,'[{\"added\": {}}]',19,3),(148,'2021-03-03 20:54:49.128865','237','237',3,'',17,3),(149,'2021-03-03 20:54:52.385879','238','238',1,'[{\"added\": {}}]',17,3),(150,'2021-03-03 20:56:31.559538','438010669','438010669',1,'[{\"added\": {}}]',19,3),(151,'2021-03-03 21:02:51.171689','438010669','438010669',3,'',19,3),(152,'2021-03-03 21:02:51.187702','438010668','438010668',3,'',19,3),(153,'2021-03-03 21:02:51.211740','438010667','438010667',3,'',19,3),(154,'2021-03-03 21:02:51.243685','438010666','438010666',3,'',19,3),(155,'2021-03-03 21:03:28.838226','438010670','438010670',3,'',19,3),(156,'2021-03-03 21:07:35.529087','0','0',1,'[{\"added\": {}}]',19,3),(157,'2021-03-03 21:11:06.892928','3','3',1,'[{\"added\": {}}]',19,3),(158,'2021-03-03 21:11:21.101301','4','4',1,'[{\"added\": {}}]',19,3),(159,'2021-03-03 21:11:39.088351','238','238',3,'',17,3),(160,'2021-03-03 21:13:46.397403','2','2',1,'[{\"added\": {}}]',17,3),(161,'2021-03-03 21:14:36.135245','5','5',1,'[{\"added\": {}}]',19,3),(162,'2021-03-03 21:41:05.148986','13','13',3,'',24,3),(163,'2021-03-03 21:41:05.164999','12','12',3,'',24,3),(164,'2021-03-03 21:41:05.173008','11','11',3,'',24,3),(165,'2021-03-03 21:41:05.197027','10','10',3,'',24,3),(166,'2021-03-03 21:41:05.212988','9','9',3,'',24,3),(167,'2021-03-03 21:41:05.228987','8','8',3,'',24,3),(168,'2021-03-03 21:41:05.252958','7','7',3,'',24,3),(169,'2021-03-03 21:41:05.276981','6','6',3,'',24,3),(170,'2021-03-03 21:41:05.292955','5','5',3,'',24,3),(171,'2021-03-03 21:41:05.309017','4','4',3,'',24,3),(172,'2021-03-03 21:41:05.332953','3','3',3,'',24,3),(173,'2021-03-03 21:41:05.365012','2','2',3,'',24,3),(174,'2021-03-03 21:41:05.372989','1','1',3,'',24,3),(175,'2021-03-03 21:45:54.421955','14','14',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(176,'2021-03-03 21:46:26.732212','14','14',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(177,'2021-03-03 21:48:22.737908','14','14',3,'',24,3),(178,'2021-03-03 21:48:29.594843','15','15',1,'[{\"added\": {}}]',24,3),(179,'2021-03-03 21:48:40.039453','15','15',3,'',24,3),(180,'2021-03-03 21:52:14.500261','16','16',3,'',24,3),(181,'2021-03-03 21:52:47.332344','17','17',3,'',24,3),(182,'2021-03-03 22:07:52.108982','2','2',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(183,'2021-03-03 22:09:09.456260','6','6',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(184,'2021-03-03 22:09:14.425832','5','5',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(185,'2021-03-03 22:09:20.893280','4','4',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(186,'2021-03-03 22:09:25.780452','3','3',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(187,'2021-03-03 22:09:29.285208','2','2',2,'[]',22,3),(188,'2021-03-03 22:09:37.757122','1','1',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(189,'2021-03-04 10:52:51.530876','3','3',1,'[{\"added\": {}}]',17,3),(190,'2021-03-04 10:52:57.518951','3','3',3,'',17,3),(191,'2021-03-04 10:52:57.540927','2','2',3,'',17,3),(192,'2021-03-04 10:52:57.548918','1','1',3,'',17,3),(193,'2021-03-04 10:53:01.079115','4','4',1,'[{\"added\": {}}]',17,3),(194,'2021-03-04 10:54:08.944228','4','4',3,'',17,3),(195,'2021-03-04 10:54:16.866207','5','5',1,'[{\"added\": {}}]',17,3),(196,'2021-03-04 10:54:22.083977','5','5',3,'',17,3),(197,'2021-03-04 10:56:42.063929','2','2',1,'[{\"added\": {}}]',17,3),(198,'2021-03-06 16:09:31.868235','2','2',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',17,3),(199,'2021-03-06 16:09:40.397358','1','1',2,'[{\"changed\": {\"fields\": [\"Name Doctors\"]}}]',17,3),(200,'2021-03-06 16:09:51.088942','2','2',2,'[{\"changed\": {\"fields\": [\"Name Doctors\", \"Id department fk\"]}}]',17,3),(201,'2021-03-06 16:23:47.618030','40','40',3,'',22,3),(202,'2021-03-06 19:46:40.028106','1','1',3,'',22,3),(203,'2021-03-06 19:47:36.995655','53','53',3,'',22,3),(204,'2021-03-06 19:47:37.011744','52','52',3,'',22,3),(205,'2021-03-06 19:47:37.038690','51','51',3,'',22,3),(206,'2021-03-06 19:47:37.051666','50','50',3,'',22,3),(207,'2021-03-06 19:47:37.059716','49','49',3,'',22,3),(208,'2021-03-06 19:47:37.085651','48','48',3,'',22,3),(209,'2021-03-06 19:47:37.106636','47','47',3,'',22,3),(210,'2021-03-06 19:47:37.122656','46','46',3,'',22,3),(211,'2021-03-06 19:47:37.143615','45','45',3,'',22,3),(212,'2021-03-06 19:47:37.159604','44','44',3,'',22,3),(213,'2021-03-06 19:47:37.192587','43','43',3,'',22,3),(214,'2021-03-06 19:47:37.210648','42','42',3,'',22,3),(215,'2021-03-06 19:47:37.236559','41','41',3,'',22,3),(216,'2021-03-06 19:47:37.256548','39','39',3,'',22,3),(217,'2021-03-06 19:47:37.281590','38','38',3,'',22,3),(218,'2021-03-06 19:47:37.295528','37','37',3,'',22,3),(219,'2021-03-06 19:47:37.309518','36','36',3,'',22,3),(220,'2021-03-06 19:47:37.335503','35','35',3,'',22,3),(221,'2021-03-06 19:47:37.354548','34','34',3,'',22,3),(222,'2021-03-06 19:47:37.375479','33','33',3,'',22,3),(223,'2021-03-06 19:47:37.404467','32','32',3,'',22,3),(224,'2021-03-06 19:47:37.411468','31','31',3,'',22,3),(225,'2021-03-06 19:47:37.430448','30','30',3,'',22,3),(226,'2021-03-06 19:47:37.446439','29','29',3,'',22,3),(227,'2021-03-06 19:47:37.481420','28','28',3,'',22,3),(228,'2021-03-06 19:47:37.494414','27','27',3,'',22,3),(229,'2021-03-06 19:47:37.513400','26','26',3,'',22,3),(230,'2021-03-06 19:47:37.526393','25','25',3,'',22,3),(231,'2021-03-06 19:47:37.546438','24','24',3,'',22,3),(232,'2021-03-06 19:47:37.569379','23','23',3,'',22,3),(233,'2021-03-06 19:47:37.582398','22','22',3,'',22,3),(234,'2021-03-06 19:47:37.605368','21','21',3,'',22,3),(235,'2021-03-06 19:47:37.631372','20','20',3,'',22,3),(236,'2021-03-06 19:47:37.638331','19','19',3,'',22,3),(237,'2021-03-06 19:47:37.658399','18','18',3,'',22,3),(238,'2021-03-06 19:47:37.674341','17','17',3,'',22,3),(239,'2021-03-06 19:47:37.689301','16','16',3,'',22,3),(240,'2021-03-06 19:47:37.710288','15','15',3,'',22,3),(241,'2021-03-06 19:47:37.733278','14','14',3,'',22,3),(242,'2021-03-06 19:47:37.747272','13','13',3,'',22,3),(243,'2021-03-06 19:47:37.761318','12','12',3,'',22,3),(244,'2021-03-06 19:47:37.790279','11','11',3,'',22,3),(245,'2021-03-06 19:47:37.811268','10','10',3,'',22,3),(246,'2021-03-06 19:47:37.837253','9','9',3,'',22,3),(247,'2021-03-06 19:47:37.873198','8','8',3,'',22,3),(248,'2021-03-06 19:47:37.895182','7','7',3,'',22,3),(249,'2021-03-06 19:47:37.908174','6','6',3,'',22,3),(250,'2021-03-06 19:47:37.926164','5','5',3,'',22,3),(251,'2021-03-06 19:47:37.946152','4','4',3,'',22,3),(252,'2021-03-06 19:47:51.815493','54','54',1,'[{\"added\": {}}]',22,3),(253,'2021-03-06 19:48:03.334057','54','54',3,'',22,3),(254,'2021-03-06 19:48:03.352045','3','3',3,'',22,3),(255,'2021-03-06 19:48:03.366038','2','2',3,'',22,3),(256,'2021-03-06 19:58:52.968006','55','55',1,'[{\"added\": {}}]',22,3),(257,'2021-03-06 19:58:58.931620','55','55',3,'',22,3),(258,'2021-03-06 19:59:56.485472','56','56',1,'[{\"added\": {}}]',22,3),(259,'2021-03-06 20:00:48.213658','56','56',3,'',22,3),(260,'2021-03-06 20:02:13.906277','57','57',1,'[{\"added\": {}}]',22,3),(261,'2021-03-06 20:02:25.299694','57','57',3,'',22,3),(262,'2021-03-06 20:02:25.321690','2','2',3,'',22,3),(263,'2021-03-06 20:02:25.342670','1','1',3,'',22,3),(264,'2021-03-06 20:07:46.785160','59','59',3,'',22,3),(265,'2021-03-06 20:07:46.804193','58','58',3,'',22,3),(266,'2021-03-06 20:13:23.215795','62','62',3,'',22,3),(267,'2021-03-06 20:13:23.231803','61','61',3,'',22,3),(268,'2021-03-06 20:13:23.251830','0','0',3,'',22,3),(269,'2021-03-06 20:16:57.249324','64','64',3,'',22,3),(270,'2021-03-06 20:16:57.259047','63','63',3,'',22,3),(271,'2021-03-06 20:17:52.051440','1','1',1,'[{\"added\": {}}]',22,3),(272,'2021-03-06 20:17:57.077479','2','2',1,'[{\"added\": {}}]',22,3),(273,'2021-03-06 20:18:48.581490','2','2',3,'',22,3),(274,'2021-03-06 20:18:52.404522','3','3',1,'[{\"added\": {}}]',22,3),(275,'2021-03-06 20:19:32.414352','3','3',3,'',22,3),(276,'2021-03-06 20:19:32.426387','1','1',3,'',22,3),(277,'2021-03-06 20:19:36.688971','4','4',1,'[{\"added\": {}}]',22,3),(278,'2021-03-06 20:19:41.889583','4','4',3,'',22,3),(279,'2021-03-06 20:20:01.208009','1','1',1,'[{\"added\": {}}]',22,3),(280,'2021-03-06 20:39:01.531437','1','1',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(281,'2021-03-06 20:39:04.719489','2','2',1,'[{\"added\": {}}]',22,3),(282,'2021-03-06 20:39:16.844204','3','3',1,'[{\"added\": {}}]',22,3),(283,'2021-03-06 20:39:17.920473','4','4',1,'[{\"added\": {}}]',22,3),(284,'2021-03-06 20:39:19.552092','5','5',1,'[{\"added\": {}}]',22,3),(285,'2021-03-07 18:51:27.738956','1','1',2,'[{\"changed\": {\"fields\": [\"Name projects\", \"Filled projects\", \"Descriotion projects\", \"File project\"]}}]',24,3),(286,'2021-03-07 18:56:38.076505','6','6',1,'[{\"added\": {}}]',22,3),(287,'2021-03-07 18:56:57.006167','14','14',1,'[{\"added\": {}}]',24,3),(288,'2021-03-07 18:58:17.734551','3','3',1,'[{\"added\": {}}]',17,3),(289,'2021-03-08 08:45:37.619587','2','2',2,'[{\"changed\": {\"fields\": [\"Name projects\", \"Filled projects\", \"Id groups fk\"]}}]',24,3),(290,'2021-03-08 08:46:38.654561','3','3',2,'[{\"changed\": {\"fields\": [\"Name projects\", \"Filled projects\", \"Id groups fk\"]}}]',24,3),(291,'2021-03-09 18:43:42.891518','14','14',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',24,3),(292,'2021-03-09 18:52:16.941033','16','16',1,'[{\"added\": {}}]',24,3),(293,'2021-03-09 19:27:52.265288','18','18',1,'[{\"added\": {}}]',24,3),(294,'2021-03-09 19:28:18.250681','6','6',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',24,3),(295,'2021-03-10 11:25:50.222136','19','19',1,'[{\"added\": {}}]',24,3),(296,'2021-03-10 11:26:04.012130','19','19',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',24,3),(297,'2021-03-10 11:37:33.885674','20','20',1,'[{\"added\": {}}]',24,3),(298,'2021-03-10 11:37:52.553113','20','20',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',24,3),(299,'2021-03-10 11:51:04.030576','21','21',1,'[{\"added\": {}}]',24,3),(300,'2021-03-10 11:51:27.008915','16','16',2,'[{\"changed\": {\"fields\": [\"Id Doctors fk\", \"Active\"]}}]',24,3),(301,'2021-03-10 11:57:42.010901','22','22',1,'[{\"added\": {}}]',24,3),(302,'2021-03-10 11:58:05.419454','22','22',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',24,3),(303,'2021-03-10 12:01:35.595228','23','23',1,'[{\"added\": {}}]',24,3),(304,'2021-03-10 13:38:36.279880','24','24',1,'[{\"added\": {}}]',24,3),(305,'2021-03-12 14:38:22.029993','24','24',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',24,3),(306,'2021-03-12 14:39:37.287242','23','23',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',24,3),(307,'2021-03-12 16:57:08.828233','28','28',1,'[{\"added\": {}}]',24,3),(308,'2021-03-12 17:29:45.775671','29','29',1,'[{\"added\": {}}]',24,3),(309,'2021-03-12 17:30:00.548872','29','29',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',24,3),(310,'2021-03-12 18:00:37.179868','30','30',1,'[{\"added\": {}}]',24,3),(311,'2021-03-12 18:01:54.619672','30','30',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(312,'2021-03-12 18:02:01.198542','30','30',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(313,'2021-03-12 18:02:29.098104','30','30',2,'[{\"changed\": {\"fields\": [\"Name projects\", \"File project\"]}}]',24,3),(314,'2021-03-12 18:09:00.120022','31','31',1,'[{\"added\": {}}]',24,3),(315,'2021-03-12 18:10:03.796276','31','31',2,'[{\"changed\": {\"fields\": [\"Filled projects\", \"File project\"]}}]',24,3),(316,'2021-03-12 18:13:53.077241','31','31',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(317,'2021-03-12 18:28:06.672381','32','32',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(318,'2021-03-12 18:34:50.527476','33','33',1,'[{\"added\": {}}]',24,3),(319,'2021-03-12 18:44:05.426313','38','38',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(320,'2021-03-13 21:46:57.656733','3','3',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',21,5),(321,'2021-03-13 21:49:21.844045','2','2',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',21,5),(322,'2021-03-13 21:49:29.933059','3','3',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',21,5),(323,'2021-03-14 19:05:21.356880','2','2',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',21,5),(324,'2021-03-14 19:05:25.410795','3','3',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',21,5),(325,'2021-03-14 19:29:03.261162','2','2',2,'[{\"changed\": {\"fields\": [\"Id evaluation fk\"]}}]',17,5),(326,'2021-03-14 19:29:07.365020','3','3',2,'[{\"changed\": {\"fields\": [\"Id evaluation fk\"]}}]',17,5),(327,'2021-03-14 19:29:10.760766','1','1',2,'[{\"changed\": {\"fields\": [\"Id evaluation fk\"]}}]',17,5),(328,'2021-03-14 19:30:32.102772','4','4',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',21,5),(329,'2021-03-14 19:37:50.231010','1','1',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',17,5),(330,'2021-03-14 19:38:32.971409','4','4',2,'[{\"changed\": {\"fields\": [\"Gread evaluation\", \"Id groups fk\", \"Id doctor fk\"]}}]',21,5),(331,'2021-03-14 19:38:46.942795','1','1',2,'[]',17,5),(332,'2021-03-14 19:39:07.124771','2','2',2,'[{\"changed\": {\"fields\": [\"Id doctor fk\"]}}]',21,5),(333,'2021-03-14 19:40:12.535260','1','1',2,'[{\"changed\": {\"fields\": [\"Id doctor fk\"]}}]',21,5),(334,'2021-03-14 19:59:53.124489','4','4',2,'[{\"changed\": {\"fields\": [\"Id groups fk\", \"Id doctor fk\", \"Id doctor fk2\"]}}]',21,5),(335,'2021-03-14 20:01:20.888612','4','4',2,'[]',21,5),(336,'2021-03-14 20:01:45.648783','4','4',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',21,5),(337,'2021-03-14 20:04:10.598571','4','4',3,'',21,5),(338,'2021-03-14 20:04:10.601563','3','3',3,'',21,5),(339,'2021-03-14 20:04:10.603558','2','2',3,'',21,5),(340,'2021-03-14 20:04:10.605560','1','1',3,'',21,5),(341,'2021-03-14 20:04:21.532151','3','3',3,'',17,5),(342,'2021-03-14 20:04:21.536116','2','2',3,'',17,5),(343,'2021-03-14 20:04:21.538111','1','1',3,'',17,5),(344,'2021-03-14 20:04:45.477074','4','4',1,'[{\"added\": {}}]',17,5),(345,'2021-03-14 20:04:53.351883','4','4',2,'[]',17,5),(346,'2021-03-14 20:05:05.650792','4','4',2,'[]',17,5),(347,'2021-03-14 20:05:25.554848','4','4',2,'[]',17,5),(348,'2021-03-14 20:05:50.396111','5','5',1,'[{\"added\": {}}]',17,5),(349,'2021-03-14 20:05:57.979956','4','4',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',17,5),(350,'2021-03-14 20:06:12.865253','5','5',1,'[{\"added\": {}}]',21,5),(351,'2021-03-14 20:11:03.677248','6','6',1,'[{\"added\": {}}]',17,5),(352,'2021-03-14 20:11:11.576927','5','5',2,'[{\"changed\": {\"fields\": [\"Id doctor fk3\"]}}]',21,5),(353,'2021-03-15 19:11:15.037949','6','6',1,'[{\"added\": {}}]',21,1),(354,'2021-03-16 07:18:50.337893','6','6',2,'[{\"changed\": {\"fields\": [\"Id doctor fk\"]}}]',21,1),(355,'2021-03-16 07:26:43.844262','6','6',2,'[{\"changed\": {\"fields\": [\"Id doctor fk\", \"Id doctor fk2\"]}}]',21,1),(356,'2021-03-16 07:26:58.482818','6','6',2,'[{\"changed\": {\"fields\": [\"Id doctor fk\"]}}]',21,1),(357,'2021-03-16 07:27:40.960986','6','6',2,'[{\"changed\": {\"fields\": [\"Id doctor fk3\"]}}]',21,1),(358,'2021-03-16 07:36:04.570986','7','7',1,'[{\"added\": {}}]',21,1),(359,'2021-03-16 07:38:33.150676','7','7',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',21,1),(360,'2021-03-16 07:39:29.987700','7','7',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',21,1),(361,'2021-03-16 18:44:25.111108','4','4',1,'[{\"added\": {}}]',7,1),(362,'2021-03-16 18:45:10.568983','7','7',1,'[{\"added\": {}}]',17,1),(363,'2021-03-16 18:45:34.458366','6','6',1,'[{\"added\": {}}]',19,1),(364,'2021-03-22 12:23:30.640785','5','5',1,'[{\"added\": {}}]',25,1),(365,'2021-03-22 19:04:17.028576','7','7',2,'[{\"changed\": {\"fields\": [\"Id doctor fk\"]}}]',31,1),(366,'2021-03-22 19:04:36.542587','6','6',2,'[{\"changed\": {\"fields\": [\"Id doctor fk\"]}}]',31,1),(367,'2021-03-22 19:05:45.626837','6','6',2,'[{\"changed\": {\"fields\": [\"Id doctor fk\"]}}]',31,1),(368,'2021-03-22 20:09:41.594436','5','5',2,'[{\"changed\": {\"fields\": [\"Id doctor fk\"]}}]',31,1),(369,'2021-03-22 20:16:36.234022','7','7',2,'[{\"changed\": {\"fields\": [\"Id doctor fk2\", \"Id doctor fk3\"]}}]',31,1),(370,'2021-03-22 20:16:48.101624','6','6',2,'[{\"changed\": {\"fields\": [\"Id doctor fk2\", \"Id doctor fk3\"]}}]',31,1),(371,'2021-03-22 20:16:55.500525','5','5',2,'[]',31,1),(372,'2021-03-23 12:04:18.330556','8','8',1,'[{\"added\": {}}]',31,1),(373,'2021-03-23 12:04:27.476261','8','8',2,'[{\"changed\": {\"fields\": [\"Id doctor fk3\"]}}]',31,1),(374,'2021-03-23 12:27:41.379328','8','8',2,'[{\"changed\": {\"fields\": [\"Id doctor fk2\"]}}]',31,1),(375,'2021-03-23 12:27:58.422073','8','8',2,'[{\"changed\": {\"fields\": [\"Id doctor fk3\"]}}]',31,1),(376,'2021-03-23 16:19:21.418631','38','38',3,'',28,1),(377,'2021-03-23 16:19:21.437709','37','37',3,'',28,1),(378,'2021-03-23 16:19:21.443674','36','36',3,'',28,1),(379,'2021-03-23 16:19:21.450834','35','35',3,'',28,1),(380,'2021-03-23 16:19:21.453279','34','34',3,'',28,1),(381,'2021-03-23 16:19:21.455012','33','33',3,'',28,1),(382,'2021-03-23 16:19:21.457852','32','32',3,'',28,1),(383,'2021-03-23 16:19:21.460462','31','31',3,'',28,1),(384,'2021-03-23 16:19:21.467677','30','30',3,'',28,1),(385,'2021-03-23 16:19:21.471093','29','29',3,'',28,1),(386,'2021-03-23 16:19:21.473257','28','28',3,'',28,1),(387,'2021-03-23 16:19:21.475892','27','27',3,'',28,1),(388,'2021-03-23 16:19:21.479041','26','26',3,'',28,1),(389,'2021-03-23 16:19:21.481107','25','25',3,'',28,1),(390,'2021-03-23 16:19:21.483328','24','24',3,'',28,1),(391,'2021-03-23 16:19:21.485660','23','23',3,'',28,1),(392,'2021-03-23 16:19:21.488791','22','22',3,'',28,1),(393,'2021-03-23 16:19:21.492131','21','21',3,'',28,1),(394,'2021-03-23 16:19:21.497626','20','20',3,'',28,1),(395,'2021-03-23 16:19:21.501794','19','19',3,'',28,1),(396,'2021-03-23 16:19:21.504976','18','18',3,'',28,1),(397,'2021-03-23 16:19:21.507497','17','17',3,'',28,1),(398,'2021-03-23 16:19:21.509856','16','16',3,'',28,1),(399,'2021-03-23 16:19:21.511712','15','15',3,'',28,1),(400,'2021-03-23 16:19:21.528957','14','14',3,'',28,1),(401,'2021-03-23 16:19:21.547472','13','13',3,'',28,1),(402,'2021-03-23 16:19:21.550855','12','12',3,'',28,1),(403,'2021-03-23 16:19:21.555123','11','11',3,'',28,1),(404,'2021-03-23 16:19:21.557948','10','10',3,'',28,1),(405,'2021-03-23 16:19:21.566237','9','9',3,'',28,1),(406,'2021-03-23 16:19:21.570972','8','8',3,'',28,1),(407,'2021-03-23 16:19:21.578641','7','7',3,'',28,1),(408,'2021-03-23 16:19:21.591570','6','6',3,'',28,1),(409,'2021-03-23 16:19:21.601296','5','5',3,'',28,1),(410,'2021-03-23 16:19:21.621191','4','4',3,'',28,1),(411,'2021-03-23 16:19:21.633150','3','3',3,'',28,1),(412,'2021-03-23 16:19:21.637285','2','2',3,'',28,1),(413,'2021-03-23 16:19:21.640383','1','1',3,'',28,1),(414,'2021-03-23 18:36:57.030303','6','6',3,'',29,1),(415,'2021-03-23 18:36:57.069861','5','5',3,'',29,1),(416,'2021-03-23 18:36:57.077830','4','4',3,'',29,1),(417,'2021-03-23 18:36:57.085936','3','3',3,'',29,1),(418,'2021-03-23 18:36:57.091135','2','2',3,'',29,1),(419,'2021-03-23 18:36:57.095603','1','1',3,'',29,1),(420,'2021-03-23 18:37:15.545642','7','7',1,'[{\"added\": {}}]',29,1),(421,'2021-03-23 18:37:27.434504','8','8',1,'[{\"added\": {}}]',29,1),(422,'2021-03-23 18:49:09.964496','39','39',3,'',28,1),(423,'2021-03-23 18:49:43.326939','40','40',1,'[{\"added\": {}}]',28,1),(424,'2021-03-28 18:44:12.331448','44','44',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',28,1),(425,'2021-03-28 20:55:28.637889','45','45',3,'',28,1),(426,'2021-03-28 20:55:28.647136','44','44',3,'',28,1),(427,'2021-03-28 20:55:28.652822','43','43',3,'',28,1),(428,'2021-03-28 20:55:28.656053','42','42',3,'',28,1),(429,'2021-03-28 20:55:28.664547','41','41',3,'',28,1),(430,'2021-03-28 20:55:28.668312','40','40',3,'',28,1),(431,'2021-03-29 18:36:47.209568','46','46',3,'',28,1),(432,'2021-03-29 19:21:38.394153','47','47',1,'[{\"added\": {}}]',28,1),(433,'2021-03-29 20:43:34.720703','49','49',3,'',28,1),(434,'2021-03-29 20:43:34.731765','48','48',3,'',28,1),(435,'2021-03-29 20:43:34.734901','47','47',3,'',28,1),(436,'2021-03-29 20:44:18.008838','50','50',1,'[{\"added\": {}}]',28,1),(437,'2021-03-29 20:48:34.939562','8','8',3,'',31,1),(438,'2021-03-29 20:48:34.945624','7','7',3,'',31,1),(439,'2021-03-29 20:48:34.947182','6','6',3,'',31,1),(440,'2021-03-29 20:48:34.948734','5','5',3,'',31,1),(441,'2021-03-29 20:48:54.981376','9','9',1,'[{\"added\": {}}]',31,1),(442,'2021-03-30 20:01:01.720939','6','fahad',2,'[{\"changed\": {\"fields\": [\"Passwords\"]}}]',30,1),(443,'2021-03-30 21:25:52.045314','9','9',1,'[{\"added\": {}}]',30,1),(444,'2021-03-30 21:45:45.643322','6','6',2,'[{\"changed\": {\"fields\": [\"Id bu\"]}}]',30,1),(445,'2021-03-30 22:00:28.498731','50','50',3,'',28,1),(446,'2021-03-30 22:01:00.840723','51','51',1,'[{\"added\": {}}]',28,1),(447,'2021-03-30 22:01:55.608704','51','51',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',28,1),(448,'2021-03-30 22:07:32.602085','52','52',1,'[{\"added\": {}}]',28,1),(449,'2021-03-30 23:09:07.945563','8','8',2,'[{\"changed\": {\"fields\": [\"Bu id\"]}}]',29,1),(450,'2021-03-30 23:09:37.161649','9','9',1,'[{\"added\": {}}]',29,1),(451,'2021-03-30 23:21:56.400206','52','52',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',28,1),(452,'2021-03-30 23:26:18.100841','6','6',3,'',32,1),(453,'2021-03-30 23:26:18.107817','5','5',3,'',32,1),(454,'2021-03-30 23:26:18.109546','4','4',3,'',32,1),(455,'2021-03-30 23:26:18.111460','3','3',3,'',32,1),(456,'2021-03-30 23:26:18.112680','2','2',3,'',32,1),(457,'2021-03-30 23:26:18.114071','1','1',3,'',32,1),(458,'2021-03-30 23:48:10.397844','8','8',3,'',32,1),(459,'2021-03-30 23:48:10.403092','7','7',3,'',32,1),(460,'2021-03-30 23:53:04.872011','17','17',3,'',32,1),(461,'2021-03-30 23:53:04.882606','16','16',3,'',32,1),(462,'2021-03-30 23:53:04.886075','15','15',3,'',32,1),(463,'2021-03-30 23:53:04.892879','14','14',3,'',32,1),(464,'2021-03-30 23:53:04.898583','13','13',3,'',32,1),(465,'2021-03-30 23:53:04.907065','12','12',3,'',32,1),(466,'2021-03-30 23:53:04.911173','11','11',3,'',32,1),(467,'2021-03-30 23:53:04.914506','10','10',3,'',32,1),(468,'2021-03-30 23:53:04.917327','9','9',3,'',32,1),(469,'2021-03-31 00:52:47.234483','6','6',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',30,1),(470,'2021-03-31 18:33:34.921060','9','9',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',29,1),(471,'2021-03-31 18:48:51.022831','8','8',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',29,1),(472,'2021-03-31 19:01:44.122834','7','7',2,'[{\"changed\": {\"fields\": [\"Id groups fk\", \"Bu id\"]}}]',29,1),(473,'2021-03-31 19:37:22.553962','52','52',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',28,1),(474,'2021-03-31 19:37:44.817108','51','51',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',28,1),(475,'2021-03-31 19:38:04.036079','53','53',1,'[{\"added\": {}}]',28,1),(476,'2021-03-31 19:48:30.480302','9','9',2,'[{\"changed\": {\"fields\": [\"Id groups fk\", \"Id bu\"]}}]',30,1),(477,'2021-03-31 20:17:19.478147','10','10',3,'',31,1),(478,'2021-03-31 20:17:19.485698','9','9',3,'',31,1),(479,'2021-03-31 20:17:32.008538','11','11',1,'[{\"added\": {}}]',31,1),(480,'2021-03-31 20:34:58.131656','11','11',3,'',31,1),(481,'2021-03-31 20:35:27.906816','12','12',1,'[{\"added\": {}}]',31,1),(482,'2021-03-31 20:40:11.038664','12','12',3,'',31,1),(483,'2021-03-31 20:41:14.979871','13','13',3,'',31,1),(484,'2021-03-31 20:51:10.896708','15','15',1,'[{\"added\": {}}]',31,1),(485,'2021-03-31 20:52:38.560757','15','15',3,'',31,1),(486,'2021-03-31 20:52:38.574597','14','14',3,'',31,1),(487,'2021-03-31 20:52:46.863531','16','16',1,'[{\"added\": {}}]',31,1),(488,'2021-03-31 22:00:13.288346','17','17',2,'[{\"changed\": {\"fields\": [\"Id doctor fk\"]}}]',31,1),(489,'2021-03-31 22:08:58.700040','16','16',2,'[{\"changed\": {\"fields\": [\"Id doctor fk3\"]}}]',31,1),(490,'2021-03-31 22:18:29.257432','17','17',2,'[{\"changed\": {\"fields\": [\"Id doctor fk\"]}}]',31,1),(491,'2021-03-31 22:19:24.587861','17','17',2,'[{\"changed\": {\"fields\": [\"Id doctor fk\"]}}]',31,1),(492,'2021-03-31 22:19:30.569577','16','16',2,'[{\"changed\": {\"fields\": [\"Id doctor fk3\"]}}]',31,1),(493,'2021-03-31 22:48:39.199720','17','17',2,'[{\"changed\": {\"fields\": [\"Id doctor fk\"]}}]',31,1),(494,'2021-03-31 22:48:45.332147','16','16',2,'[{\"changed\": {\"fields\": [\"Id doctor fk3\"]}}]',31,1),(495,'2021-03-31 22:52:42.907688','18','18',1,'[{\"added\": {}}]',31,1),(496,'2021-03-31 23:45:40.069118','17','17',2,'[{\"changed\": {\"fields\": [\"Id doctor fk\"]}}]',31,1),(497,'2021-04-02 21:13:06.197746','54','54',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',28,1),(498,'2021-04-02 23:14:04.951843','54','54',2,'[{\"changed\": {\"fields\": [\"Id Doctors fk\"]}}]',28,1),(499,'2021-04-03 18:46:40.190391','55','55',3,'',28,1),(500,'2021-04-03 18:46:40.205771','54','54',3,'',28,1),(501,'2021-04-03 18:46:40.212381','53','53',3,'',28,1),(502,'2021-04-03 18:46:40.214501','52','52',3,'',28,1),(503,'2021-04-03 18:46:40.215732','51','51',3,'',28,1),(504,'2021-04-03 18:47:44.775836','56','56',1,'[{\"added\": {}}]',28,1),(505,'2021-04-03 18:48:02.611641','57','57',1,'[{\"added\": {}}]',28,1),(506,'2021-04-03 18:48:29.500094','58','58',1,'[{\"added\": {}}]',28,1),(507,'2021-04-03 18:51:51.461513','56','56',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',28,1),(508,'2021-04-03 18:52:05.143001','56','56',2,'[{\"changed\": {\"fields\": [\"Status\", \"Id department fk\"]}}]',28,1),(509,'2021-04-03 18:52:18.747173','57','57',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',28,1),(510,'2021-04-03 19:13:29.462143','59','59',1,'[{\"added\": {}}]',28,1),(511,'2021-04-03 19:16:50.174122','56','56',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',28,1),(512,'2021-04-03 19:18:24.922887','60','60',1,'[{\"added\": {}}]',28,1),(513,'2021-04-03 19:20:26.574008','56','56',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',28,1),(514,'2021-04-03 19:23:54.363167','56','56',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',28,1),(515,'2021-04-03 19:24:59.831261','60','60',2,'[{\"changed\": {\"fields\": [\"Id department fk\"]}}]',28,1),(516,'2021-04-03 19:31:35.620437','62','62',2,'[{\"changed\": {\"fields\": [\"Id groups fk\", \"Id Doctors fk\", \"Id department fk\"]}}]',28,1),(517,'2021-04-03 19:49:43.850668','9','9',2,'[{\"changed\": {\"fields\": [\"Id groups fk\", \"Id department fk\"]}}]',29,1),(518,'2021-04-03 19:50:30.003680','9','9',2,'[{\"changed\": {\"fields\": [\"Id department fk\"]}}]',29,1),(519,'2021-04-03 19:51:07.219417','7','7',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',29,1),(520,'2021-04-03 20:08:59.410389','8','8',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',29,1),(521,'2021-04-03 20:45:12.136478','62','62',3,'',28,1),(522,'2021-04-03 20:45:12.141086','61','61',3,'',28,1),(523,'2021-04-03 20:45:12.143778','60','60',3,'',28,1),(524,'2021-04-03 20:45:12.146628','59','59',3,'',28,1),(525,'2021-04-03 20:45:12.152992','58','58',3,'',28,1),(526,'2021-04-03 20:45:12.155829','57','57',3,'',28,1),(527,'2021-04-03 20:45:12.162962','56','56',3,'',28,1),(528,'2021-04-03 20:45:30.756084','63','63',1,'[{\"added\": {}}]',28,1),(529,'2021-04-03 20:47:45.108481','64','64',1,'[{\"added\": {}}]',28,1),(530,'2021-04-03 20:48:12.791310','63','63',2,'[{\"changed\": {\"fields\": [\"Id department fk\"]}}]',28,1),(531,'2021-04-03 20:48:28.712437','63','63',2,'[{\"changed\": {\"fields\": [\"Id department fk\"]}}]',28,1),(532,'2021-04-03 20:48:34.912410','64','64',2,'[{\"changed\": {\"fields\": [\"Id department fk\"]}}]',28,1),(533,'2021-04-03 20:50:52.225043','63','63',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',28,1),(534,'2021-04-03 20:52:47.219623','7','7',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',29,1),(535,'2021-04-03 20:53:26.925452','8','8',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',29,1),(536,'2021-04-03 21:24:23.430915','7','7',2,'[{\"changed\": {\"fields\": [\"Id groups fk\", \"Id department fk\"]}}]',29,1),(537,'2021-04-03 21:26:08.840773','7','7',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',29,1),(538,'2021-04-03 21:36:38.854649','8','8',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',29,1),(539,'2021-04-03 21:36:48.426051','8','8',2,'[{\"changed\": {\"fields\": [\"Id department fk\"]}}]',29,1),(540,'2021-04-03 21:39:11.138211','8','8',2,'[{\"changed\": {\"fields\": [\"Id department fk\"]}}]',29,1),(541,'2021-04-03 21:39:37.946242','8','8',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',29,1),(542,'2021-04-04 09:19:23.266943','1','1',2,'[{\"changed\": {\"fields\": [\"Bu id\"]}}]',25,1),(543,'2021-04-04 09:20:42.310704','1','1',2,'[]',25,1),(544,'2021-04-04 11:41:27.671001','66','66',2,'[]',28,1),(545,'2021-04-04 11:41:35.929074','65','65',2,'[{\"changed\": {\"fields\": [\"Status\", \"Id department fk\"]}}]',28,1),(546,'2021-04-04 11:42:25.094177','66','66',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',28,1),(547,'2021-04-04 18:57:04.754349','18','18',2,'[{\"changed\": {\"fields\": [\"Id department\"]}}]',31,1),(548,'2021-04-04 18:59:32.061255','17','17',2,'[{\"changed\": {\"fields\": [\"Id department\"]}}]',31,1),(549,'2021-04-04 18:59:41.607056','16','16',2,'[{\"changed\": {\"fields\": [\"Id department\"]}}]',31,1),(550,'2021-04-04 19:10:36.376893','18','18',3,'',31,1),(551,'2021-04-04 19:10:36.383693','17','17',3,'',31,1),(552,'2021-04-04 19:10:36.387153','16','16',3,'',31,1),(553,'2021-04-04 19:10:56.831708','5','5',3,'',25,1),(554,'2021-04-04 19:10:56.834368','4','4',3,'',25,1),(555,'2021-04-04 19:10:56.836766','3','3',3,'',25,1),(556,'2021-04-04 19:10:56.838951','2','2',3,'',25,1),(557,'2021-04-04 19:10:56.840131','1','1',3,'',25,1),(558,'2021-04-04 19:13:46.772766','9','9',3,'',30,1),(559,'2021-04-04 19:13:46.788685','8','8',3,'',30,1),(560,'2021-04-04 19:13:46.790200','7','7',3,'',30,1),(561,'2021-04-04 19:13:46.791937','6','6',3,'',30,1),(562,'2021-04-04 19:13:46.797460','5','5',3,'',30,1),(563,'2021-04-04 19:13:46.802990','4','4',3,'',30,1),(564,'2021-04-04 19:14:07.871963','43','43',3,'',32,1),(565,'2021-04-04 19:14:07.874734','42','42',3,'',32,1),(566,'2021-04-04 19:14:07.876604','41','41',3,'',32,1),(567,'2021-04-04 19:14:07.877935','40','40',3,'',32,1),(568,'2021-04-04 19:14:07.880177','39','39',3,'',32,1),(569,'2021-04-04 19:14:07.881675','38','38',3,'',32,1),(570,'2021-04-04 19:14:07.884329','37','37',3,'',32,1),(571,'2021-04-04 19:14:07.890703','36','36',3,'',32,1),(572,'2021-04-04 19:14:07.892463','35','35',3,'',32,1),(573,'2021-04-04 19:14:07.893805','34','34',3,'',32,1),(574,'2021-04-04 19:14:07.899029','33','33',3,'',32,1),(575,'2021-04-04 19:14:07.900702','32','32',3,'',32,1),(576,'2021-04-04 19:14:07.902151','31','31',3,'',32,1),(577,'2021-04-04 19:14:07.903724','30','30',3,'',32,1),(578,'2021-04-04 19:14:07.906091','29','29',3,'',32,1),(579,'2021-04-04 19:14:07.908981','28','28',3,'',32,1),(580,'2021-04-04 19:14:07.911465','27','27',3,'',32,1),(581,'2021-04-04 19:14:07.912909','26','26',3,'',32,1),(582,'2021-04-04 19:14:07.914252','25','25',3,'',32,1),(583,'2021-04-04 19:14:07.915862','24','24',3,'',32,1),(584,'2021-04-04 19:14:07.917363','23','23',3,'',32,1),(585,'2021-04-04 19:14:07.923742','22','22',3,'',32,1),(586,'2021-04-04 19:14:07.925316','21','21',3,'',32,1),(587,'2021-04-04 19:14:07.926564','20','20',3,'',32,1),(588,'2021-04-04 19:14:07.927710','19','19',3,'',32,1),(589,'2021-04-04 19:14:07.929644','18','18',3,'',32,1),(590,'2021-04-04 19:14:19.230451','66','66',3,'',28,1),(591,'2021-04-04 19:14:19.239888','65','65',3,'',28,1),(592,'2021-04-04 19:14:19.243806','64','64',3,'',28,1),(593,'2021-04-04 19:14:19.253373','63','63',3,'',28,1),(594,'2021-04-04 19:14:33.987659','9','9',3,'',29,1),(595,'2021-04-04 19:14:33.991349','8','8',3,'',29,1),(596,'2021-04-04 19:14:33.997071','7','7',3,'',29,1),(597,'2021-04-04 19:15:22.734290','10','10',1,'[{\"added\": {}}]',29,1),(598,'2021-04-04 19:16:06.587068','11','11',1,'[{\"added\": {}}]',29,1),(599,'2021-04-04 19:16:21.024882','12','12',1,'[{\"added\": {}}]',29,1),(600,'2021-04-04 19:16:46.696277','44','44',1,'[{\"added\": {}}]',32,1),(601,'2021-04-04 19:16:53.242494','45','45',1,'[{\"added\": {}}]',32,1),(602,'2021-04-04 19:16:58.727782','46','46',1,'[{\"added\": {}}]',32,1),(603,'2021-04-04 19:17:23.687322','19','19',1,'[{\"added\": {}}]',31,1),(604,'2021-04-04 19:17:29.127835','20','20',1,'[{\"added\": {}}]',31,1),(605,'2021-04-04 19:17:34.448022','21','21',1,'[{\"added\": {}}]',31,1),(606,'2021-04-04 19:18:09.331757','10','10',1,'[{\"added\": {}}]',30,1),(607,'2021-04-04 19:18:45.676629','11','11',1,'[{\"added\": {}}]',30,1),(608,'2021-04-04 19:19:18.698746','12','12',1,'[{\"added\": {}}]',30,1),(609,'2021-04-04 19:19:40.248014','11','11',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',29,1),(610,'2021-04-04 19:19:48.892043','10','10',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',29,1),(611,'2021-04-04 19:19:58.048046','12','12',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',29,1),(612,'2021-04-04 19:20:55.157121','67','67',1,'[{\"added\": {}}]',28,1),(613,'2021-04-04 19:21:17.053918','68','68',1,'[{\"added\": {}}]',28,1),(614,'2021-04-04 19:21:49.807691','69','69',1,'[{\"added\": {}}]',28,1),(615,'2021-04-04 19:23:06.613769','6','6',1,'[{\"added\": {}}]',25,1),(616,'2021-04-04 19:23:34.968098','7','7',1,'[{\"added\": {}}]',25,1),(617,'2021-04-04 19:24:26.219070','8','8',1,'[{\"added\": {}}]',25,1),(618,'2021-04-04 19:25:45.590626','47','47',1,'[{\"added\": {}}]',32,1),(619,'2021-04-04 19:25:52.336138','48','48',1,'[{\"added\": {}}]',32,1),(620,'2021-04-04 19:25:59.017150','49','49',1,'[{\"added\": {}}]',32,1),(621,'2021-04-04 19:26:48.302291','13','13',1,'[{\"added\": {}}]',29,1),(622,'2021-04-04 19:27:32.752620','14','14',1,'[{\"added\": {}}]',29,1),(623,'2021-04-04 19:28:06.882367','15','15',1,'[{\"added\": {}}]',29,1),(624,'2021-04-04 19:29:06.180113','70','70',1,'[{\"added\": {}}]',28,1),(625,'2021-04-04 19:29:51.101937','13','13',1,'[{\"added\": {}}]',30,1),(626,'2021-04-04 19:30:09.127947','14','14',1,'[{\"added\": {}}]',30,1),(627,'2021-04-04 19:30:41.172910','15','15',1,'[{\"added\": {}}]',30,1),(628,'2021-04-04 19:31:07.552380','70','70',2,'[{\"changed\": {\"fields\": [\"Id Doctors fk\"]}}]',28,1),(629,'2021-04-04 19:31:34.217694','71','71',1,'[{\"added\": {}}]',28,1),(630,'2021-04-04 19:31:59.976347','72','72',1,'[{\"added\": {}}]',28,1),(631,'2021-04-04 19:48:12.011676','13','13',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',29,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'committeeChairs','committeescharis'),(14,'committeeChairs','department'),(8,'committeeChairs','doctors'),(9,'committeeChairs','evaluation'),(10,'committeeChairs','examiners'),(11,'committeeChairs','groups'),(12,'committeeChairs','projects'),(13,'committeeChairs','students'),(5,'contenttypes','contenttype'),(20,'Department','department'),(15,'doctors','department'),(17,'doctors','doctors'),(16,'doctors','examiners'),(18,'doctors','groups'),(21,'Evaluation','evaluation'),(23,'Examiners','examiners'),(22,'Groups','groups'),(25,'login','committeescharis'),(26,'login','department'),(30,'login','doctors'),(31,'login','evaluation'),(27,'login','examiners'),(32,'login','groups'),(28,'login','projects'),(29,'login','students'),(24,'projects','projects'),(6,'sessions','session'),(19,'students','students');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-02-18 11:22:39.085082'),(2,'auth','0001_initial','2021-02-18 11:22:39.181248'),(3,'admin','0001_initial','2021-02-18 11:22:39.368098'),(4,'admin','0002_logentry_remove_auto_add','2021-02-18 11:22:39.426862'),(5,'admin','0003_logentry_add_action_flag_choices','2021-02-18 11:22:39.435032'),(6,'contenttypes','0002_remove_content_type_name','2021-02-18 11:22:39.492824'),(7,'auth','0002_alter_permission_name_max_length','2021-02-18 11:22:39.526836'),(8,'auth','0003_alter_user_email_max_length','2021-02-18 11:22:39.548109'),(9,'auth','0004_alter_user_username_opts','2021-02-18 11:22:39.557511'),(10,'auth','0005_alter_user_last_login_null','2021-02-18 11:22:39.591163'),(11,'auth','0006_require_contenttypes_0002','2021-02-18 11:22:39.593763'),(12,'auth','0007_alter_validators_add_error_messages','2021-02-18 11:22:39.602735'),(13,'auth','0008_alter_user_username_max_length','2021-02-18 11:22:39.640466'),(14,'auth','0009_alter_user_last_name_max_length','2021-02-18 11:22:39.678461'),(15,'auth','0010_alter_group_name_max_length','2021-02-18 11:22:39.699776'),(16,'auth','0011_update_proxy_permissions','2021-02-18 11:22:39.708652'),(17,'auth','0012_alter_user_first_name_max_length','2021-02-18 11:22:39.743798'),(18,'sessions','0001_initial','2021-02-18 11:22:39.758848'),(19,'committeeChairs','0001_initial','2021-02-20 18:07:37.908255'),(20,'doctors','0001_initial','2021-02-20 18:07:38.101946'),(21,'Department','0001_initial','2021-02-20 18:59:47.416660'),(22,'Evaluation','0001_initial','2021-02-20 18:59:47.477923'),(23,'Examiners','0001_initial','2021-02-20 18:59:47.502203'),(24,'Groups','0001_initial','2021-02-20 18:59:47.568619'),(25,'committeeChairs','0002_auto_20210220_1858','2021-02-20 18:59:47.700956'),(26,'doctors','0002_auto_20210220_1858','2021-02-20 18:59:47.879508'),(27,'projects','0001_initial','2021-02-20 18:59:47.885566'),(28,'students','0001_initial','2021-02-20 18:59:47.890055'),(29,'login','0001_initial','2021-03-22 11:45:38.648083');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('07l2soqnh1bjhkky4onofssq3rl5afo6','.eJxVjMsOwiAQRf-FtSEUKDN16d5vIDM8pGogKe3K-O_apAvd3nPOfQlP21r81tPi5yjOYhCn340pPFLdQbxTvTUZWl2XmeWuyIN2eW0xPS-H-3dQqJdvzQZHdqDQEAYmQg1WJRhUNhGUoQguW1asnUUd7WQZx4xTRjDgDFvx_gDQ0Tch:1lChQp:yuX8MlUVc48sbqRULEa5ypaJPVOjW0KZoKw7TTbH0IU','2021-03-04 11:25:15.564004'),('9cfoqxo2y3idctx6jb05kf1fdz90uwtz','.eJxtT8tygyAU_RfWjoOCgF22M5120W7yAcxFMJpGyCisOv33io-EtNlxz5tvJCH4TobJjLLX6AkVKEsxBc2XsZHQJ7BHlzfO-rFXeZTkGzvlH06b8_OmvQvoYOpmtyKiUoxjQUA0CkCUnGLDC9wSzTEBzVlLFVYlo6LUtKZKVK2oW8EJZ0TROdTCYOYkSgTGrKZxaFxcZ-g4unCJb1JETIU_ss_V2cEAcd3ktdTmsvy3iGfQxnq55b9dVSu8qMrbvZQtKGWpSv6rnblIPajaIZIh7Rrvxr38FbqlfEMXG76eSTVNNGtzjQt8cyalCbK1vBxmYeOGoffemB2dwtmDvWNiAkuBJPYefJy8b6vWben3N8P7Af38Ah8L0DM:1lT996:qjewAFhI45b-WZEZcPrINLI9CT2PJAux4k3rusFAzyA','2021-04-18 20:14:56.534720'),('l7yf27f5za868ugkh7knqdgj8bli6v1e','.eJxVjEEOwiAQRe_C2hCGKQO4dO8ZCAxUqoYmpV0Z765NutDtf-_9lwhxW2vYelnClMVZaHH63VLkR2k7yPfYbrPkua3LlOSuyIN2eZ1zeV4O9--gxl6_NUdChV6XYWTPA0SnSZO1o1KciShDQXDeZWQN1qAxjpz1UEAhECXx_gDBizZe:1lDWlX:pKio-RkR6OewLLvlmo0Y9OyoLLV_dumacNGGXUsZJLQ','2021-03-06 18:14:03.966145'),('lxof682l439phqfy6dlpjz9ru2x0l260','.eJxVjEEOwiAQRe_C2hChFgaX7j0DmRkGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxSuqsRnX43Qj5IXUD6Y711jS3uswT6U3RO-362pI8L7v7d1Cwl29tsgnJ0cBwyg4MWEAkCewd5AySAjBykuNgBxecB0sj-RwMYSC2Iur9AfjROLo:1lLBGW:1w7tEwWJjPAOcEmS7hEGIPd2A9nVYenu1sNd-3FAGCQ','2021-03-27 20:53:40.730721'),('q1lf2g6pi3ju2jt7dhnno641ngj2zcu6','eyJsYXN0X2xvZ2luIjoxMzc2NTg3NjkxfQ:1lP8Lp:TF1Ywch9NXoxL4ZDJUg5GTef5AVllNLurfhwR1T6NLs','2021-04-07 18:35:29.444782'),('z5d0mj1l4klmjvpsd3rzueu2ai2eav3u','.eJxVjMsOwiAQRf-FtSFCGWhduvcbmoGZSlUg6WNl_Hch6UJzV_d13mLEfYvjvvIyziQuohOn38xjeHJuBT0w34sMJW_L7GWbyKNd5a0Qv67H9g8QcY31bSGAgon5DJOrMhN4Rdr0GKpTgwbXK_JkOrbWW81KuaEjsKQH1sFUaMNlTFxpqURMiUl8vhDfP4E:1lKiLP:LwySsgtZZE6unkGSNdObLQ-SBf5aSASINvjVsJIF0ug','2021-03-26 14:00:47.686850');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id_Doctors` int NOT NULL AUTO_INCREMENT,
  `name_Doctors` varchar(45) DEFAULT NULL,
  `passwords` varchar(45) DEFAULT NULL,
  `id_department_fk` int DEFAULT NULL,
  `id_Groups_fk` int DEFAULT NULL,
  `id_bu` int DEFAULT NULL,
  PRIMARY KEY (`id_Doctors`),
  KEY `id_department_fk_idx` (`id_department_fk`),
  KEY `id_Groups_fk_idx` (`id_Groups_fk`),
  CONSTRAINT `id_department_fk` FOREIGN KEY (`id_department_fk`) REFERENCES `department` (`id_department`),
  CONSTRAINT `id_Groups` FOREIGN KEY (`id_Groups_fk`) REFERENCES `_groups` (`id_groups`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (10,'Fahad','123',1,44,9010),(11,'Anas','123',2,45,9020),(12,'Mohammed','123',3,46,9030),(13,'Saad','123',1,47,9040),(14,'Moath','123',2,48,9050),(15,'Saed','123',3,49,9060);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors_doctors`
--

DROP TABLE IF EXISTS `doctors_doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors_doctors` (
  `id_Doctors` int NOT NULL,
  `name_Doctors` varchar(45) DEFAULT NULL,
  `passwords` varchar(45) DEFAULT NULL,
  `id_department_fk` int DEFAULT NULL,
  `id_Examiners_fk` int DEFAULT NULL,
  `id_Groups_fk` int DEFAULT NULL,
  PRIMARY KEY (`id_Doctors`),
  KEY `doctors_doctors_id_department_fk_e6ee7269_fk_doctors_d` (`id_department_fk`),
  KEY `doctors_doctors_id_Examiners_fk_daa4ac9c_fk_examiners` (`id_Examiners_fk`),
  KEY `doctors_doctors_id_Groups_fk_1ec4368a_fk_doctors_g` (`id_Groups_fk`),
  CONSTRAINT `doctors_doctors_id_department_fk_e6ee7269_fk_doctors_d` FOREIGN KEY (`id_department_fk`) REFERENCES `doctors_department` (`id_department`),
  CONSTRAINT `doctors_doctors_id_Examiners_fk_daa4ac9c_fk_examiners` FOREIGN KEY (`id_Examiners_fk`) REFERENCES `examiners` (`id_Examiners`),
  CONSTRAINT `doctors_doctors_id_Groups_fk_1ec4368a_fk_doctors_g` FOREIGN KEY (`id_Groups_fk`) REFERENCES `doctors_groups` (`id_groups`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors_doctors`
--

LOCK TABLES `doctors_doctors` WRITE;
/*!40000 ALTER TABLE `doctors_doctors` DISABLE KEYS */;
INSERT INTO `doctors_doctors` VALUES (12,'saleh','123',1,NULL,NULL);
/*!40000 ALTER TABLE `doctors_doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation` (
  `id_Evaluation` int NOT NULL AUTO_INCREMENT,
  `file_evaluation_dr1` longtext,
  `id_Groups_fk` int DEFAULT NULL,
  `id_doctor_fk` int DEFAULT NULL,
  `id_doctor_fk2` int DEFAULT NULL,
  `id_doctor_fk3` int DEFAULT NULL,
  `file_evaluation_dr2` longtext,
  `file_evaluation_dr3` longtext,
  `id_department` int DEFAULT NULL,
  PRIMARY KEY (`id_Evaluation`),
  KEY `id_Evaluation_fk` (`id_Evaluation`),
  KEY `id_grops_fk_idx` (`id_Groups_fk`),
  KEY `id_doctor_fk_idx` (`id_doctor_fk`),
  KEY `id_docotor_fk2_idx` (`id_doctor_fk2`),
  KEY `id_doctor_fk3_idx` (`id_doctor_fk3`),
  KEY `id_dep_idx` (`id_department`),
  CONSTRAINT `id_dep_fk` FOREIGN KEY (`id_department`) REFERENCES `department` (`id_department`),
  CONSTRAINT `id_doctor_fk` FOREIGN KEY (`id_doctor_fk`) REFERENCES `doctors` (`id_Doctors`),
  CONSTRAINT `id_doctor_fk2` FOREIGN KEY (`id_doctor_fk2`) REFERENCES `doctors` (`id_Doctors`),
  CONSTRAINT `id_doctor_fk3` FOREIGN KEY (`id_doctor_fk3`) REFERENCES `doctors` (`id_Doctors`),
  CONSTRAINT `id_grops_fk` FOREIGN KEY (`id_Groups_fk`) REFERENCES `_groups` (`id_groups`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES (19,'doucment/defaultform.docx',NULL,NULL,NULL,NULL,'doucment/defaultform.docx','doucment/defaultform.docx',1),(20,'doucment/defaultform.docx',NULL,NULL,NULL,NULL,'doucment/defaultform.docx','doucment/defaultform.docx',2),(21,'doucment/defaultform.docx',NULL,NULL,NULL,NULL,'doucment/defaultform.docx','doucment/defaultform.docx',3);
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examiners`
--

DROP TABLE IF EXISTS `examiners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examiners` (
  `id_Examiners` int NOT NULL AUTO_INCREMENT,
  `name_Examiners` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Examiners`),
  KEY `id_Examiners` (`id_Examiners`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examiners`
--

LOCK TABLES `examiners` WRITE;
/*!40000 ALTER TABLE `examiners` DISABLE KEYS */;
INSERT INTO `examiners` VALUES (1,'f'),(2,'f'),(3,'d');
/*!40000 ALTER TABLE `examiners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_evaluation`
--

DROP TABLE IF EXISTS `login_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_evaluation` (
  `id_Evaluation` int NOT NULL AUTO_INCREMENT,
  `gread_evaluation` varchar(45) DEFAULT NULL,
  `id_doctor_fk` int DEFAULT NULL,
  `id_doctor_fk2` int DEFAULT NULL,
  `id_doctor_fk3` int DEFAULT NULL,
  `id_Groups_fk` int DEFAULT NULL,
  PRIMARY KEY (`id_Evaluation`),
  KEY `login_evaluation_id_doctor_fk_407c3dbf_fk_doctors_id_Doctors` (`id_doctor_fk`),
  KEY `login_evaluation_id_doctor_fk2_a5f1a457_fk_doctors_id_Doctors` (`id_doctor_fk2`),
  KEY `login_evaluation_id_doctor_fk3_e4e26c0a_fk_doctors_id_Doctors` (`id_doctor_fk3`),
  KEY `login_evaluation_id_Groups_fk_4d007574_fk__groups_id_groups` (`id_Groups_fk`),
  CONSTRAINT `login_evaluation_id_doctor_fk2_a5f1a457_fk_doctors_id_Doctors` FOREIGN KEY (`id_doctor_fk2`) REFERENCES `doctors` (`id_Doctors`),
  CONSTRAINT `login_evaluation_id_doctor_fk3_e4e26c0a_fk_doctors_id_Doctors` FOREIGN KEY (`id_doctor_fk3`) REFERENCES `doctors` (`id_Doctors`),
  CONSTRAINT `login_evaluation_id_doctor_fk_407c3dbf_fk_doctors_id_Doctors` FOREIGN KEY (`id_doctor_fk`) REFERENCES `doctors` (`id_Doctors`),
  CONSTRAINT `login_evaluation_id_Groups_fk_4d007574_fk__groups_id_groups` FOREIGN KEY (`id_Groups_fk`) REFERENCES `_groups` (`id_groups`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_evaluation`
--

LOCK TABLES `login_evaluation` WRITE;
/*!40000 ALTER TABLE `login_evaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id_Projects` int NOT NULL AUTO_INCREMENT,
  `title_projects` varchar(45) DEFAULT NULL,
  `filled_projects` varchar(45) DEFAULT NULL,
  `descriotion_projects` varchar(45) DEFAULT NULL,
  `id_Groups_fk` int DEFAULT NULL,
  `File_Project` longtext NOT NULL,
  `active` enum('True','False') DEFAULT NULL,
  `id_Doctors_fk` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `id_department_fk` int DEFAULT NULL,
  PRIMARY KEY (`id_Projects`),
  KEY `id_Group_fkk_idx` (`id_Groups_fk`),
  KEY `id_Doctors_fk_idx` (`id_Doctors_fk`),
  KEY `id_department_fk_idx` (`id_department_fk`),
  KEY `id_dep_idx` (`id_department_fk`),
  CONSTRAINT `id_dep` FOREIGN KEY (`id_department_fk`) REFERENCES `department` (`id_department`),
  CONSTRAINT `id_Doctor` FOREIGN KEY (`id_Doctors_fk`) REFERENCES `doctors` (`id_Doctors`),
  CONSTRAINT `id_Group_fkk` FOREIGN KEY (`id_Groups_fk`) REFERENCES `_groups` (`id_groups`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (67,'graduate project in cs','cs','dd',44,'doucment/01_Terminal1_cWtwSzq_1_XULGfvE_cQLTgsW.pptx',NULL,10,'avilable',1),(68,'graduate project in it','it','dd',45,'doucment/01_Terminal1_cWtwSzq_1_XULGfvE_3QpVmyX.pptx',NULL,11,'avilable',2),(69,'graduate project in mis','mis','dd',46,'doucment/01_Terminal1_cWtwSzq_1_XULGfvE_poQ3m0m.pptx',NULL,12,'avilable',3),(70,'traffic light 1','cs','dd',47,'doucment/01_Terminal1_cWtwSzq_1_XULGfvE_55JhfMF.pptx',NULL,13,'anvilable',1),(71,'traffic light 2','cs','dd',48,'doucment/01_Terminal1_cWtwSzq_1_XULGfvE_bKn7QaD.pptx',NULL,14,'anvilable',2),(72,'traffic light 3','cs','dd',49,'doucment/01_Terminal1_cWtwSzq_1_XULGfvE_wcUhPh7.pptx',NULL,15,'anvilable',3);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id_Students` int NOT NULL AUTO_INCREMENT,
  `name_Students` varchar(45) DEFAULT NULL,
  `passwords` varchar(45) DEFAULT NULL,
  `id_Groups_fk` int DEFAULT NULL,
  `id_department_fk` int DEFAULT NULL,
  `bu_id` int DEFAULT NULL,
  PRIMARY KEY (`id_Students`),
  KEY `id_Groups_fk_idx` (`id_Groups_fk`),
  CONSTRAINT `id_Groups_fk` FOREIGN KEY (`id_Groups_fk`) REFERENCES `_groups` (`id_groups`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (10,'Naif','123',44,1,438000519),(11,'Faisal','123',45,2,438009288),(12,'Hamad','123',46,3,438006941),(13,'Osama','123',NULL,1,438001),(14,'mohammed','123',48,2,438010648),(15,'Ahmad','123',49,3,438007034);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-05  1:10:52
