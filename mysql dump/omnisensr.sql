-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: vmdb_master    Database: omnisensr
-- ------------------------------------------------------
-- Server version	5.0.51a-community-nt-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `cam_proj_status`
--

DROP TABLE IF EXISTS `cam_proj_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cam_proj_status` (
  `id` bigint(20) NOT NULL auto_increment,
  `cam_id` bigint(20) default NULL,
  `camera_name` varchar(255) default NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `mac_address` varchar(255) NOT NULL,
  `status_type_id` bigint(20) default NULL,
  `project_name` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cam_proj_status`
--

LOCK TABLES `cam_proj_status` WRITE;
/*!40000 ALTER TABLE `cam_proj_status` DISABLE KEYS */;
INSERT INTO `cam_proj_status` VALUES (1,2,NULL,'2016-01-29 18:42:54','b827eb7e4f2d',NULL,NULL),(2,2,NULL,'2016-02-02 15:17:52','b827eb7e4f2d',NULL,NULL),(3,2,'CAM024','2016-02-02 19:43:20','b827eb7e4f2d',1,'vmhq-16801_live'),(4,1,'CAM001','2016-02-02 19:45:31','b827eb082376',1,'vmhq-16801_live'),(5,27,'CAM014','2016-02-02 19:47:24','b827eb01d477',1,'vmhq-16801_live'),(6,22,'CAM019','2016-02-02 19:49:17','b827eb20f5e4',1,'vmhq-16801_live'),(7,21,'CAM018','2016-02-02 19:50:45','b827eb9be888',1,'vmhq-16801_live'),(8,20,'CAM004','2016-02-02 19:53:52','b827eb1f28c2',1,'vmhq-16801_live'),(9,18,'CAM022','2016-02-02 19:55:14','b827eb77fee4',1,'vmhq-16801_live'),(10,29,'CAM027','2016-02-02 20:05:31','b827ebd7cdb7',1,'vmhq-16801_live'),(11,17,'CAM025','2016-02-02 20:07:25','b827ebb14937',1,'vmhq-16801_live'),(12,3,'CAM026','2016-02-02 20:08:55','b827eb00f739',1,'vmhq-16801_live'),(13,28,'CAM020','2016-02-02 20:10:22','b827eb295223',1,'vmhq-16801_live'),(14,16,'CAM023','2016-02-02 20:11:41','b827eb7be84b',1,'vmhq-16801_live'),(15,15,'CAM032','2016-02-02 20:13:01','b827eb180671',1,'vmhq-16801_live'),(16,19,'FAC002','2016-02-02 20:14:07','b827ebaef840',1,'vmhq-16801_live'),(17,6,'FAC001','2016-02-02 20:17:37','b827eb7eaf82',1,'vmhq-16801_live'),(18,8,'CAM021','2016-02-02 20:18:58','b827ebcf45fc',1,'vmhq-16801_live'),(19,4,'CAM033','2016-02-02 20:20:30','b827ebaf8336',1,'vmhq-16801_live'),(20,25,'CAM031','2016-02-02 20:22:04','b827eb7ae46e',1,'vmhq-16801_live'),(21,26,'CAM028','2016-02-02 20:23:27','b827eb54a03b',1,'vmhq-16801_live'),(22,23,'CAM030','2016-02-02 20:24:36','b827eb41a0fe',1,'vmhq-16801_live'),(23,24,'CAM029','2016-02-02 20:29:17','b827eb0e94c0',1,'vmhq-16801_live'),(24,10,'CAM017','2016-02-02 20:31:26','b827ebfdb56d',1,'vmhq-16801_live'),(25,5,'CAM016','2016-02-02 20:34:19','b827eb41d1dd',3,'vmhq-16801_live'),(26,9,'CAM003','2016-02-02 20:36:06','b827eb4a0ef6',1,'vmhq-16801_live'),(27,12,'CAM009','2016-02-02 20:37:18','b827eb100a58',1,'vmhq-16801_live'),(28,13,'CAM008','2016-02-02 20:42:04','b827eb5d1282',3,'vmhq-16801_live'),(29,11,'CAM007','2016-02-02 20:43:21','b827ebe70c0d',1,'vmhq-16801_live'),(30,14,'CAM015','2016-02-02 20:44:27','b827ebb0262c',1,'vmhq-16801_live'),(31,31,'CAM002','2016-02-02 21:30:50','b827ebc5e3dd',1,'vmhq-16801_live'),(32,30,'CAM010','2016-02-02 21:32:38','b827eb224a55',1,'vmhq-16801_live'),(33,34,'CAM005','2016-02-03 14:51:27','b827ebfaf4e1',1,'vmhq-16801_live'),(34,7,'CAM013','2016-02-03 14:53:08','b827eb6dafeb',1,'vmhq-16801_live'),(35,32,'CAM012','2016-02-03 14:54:37','b827eb36a39a',1,'vmhq-16801_live'),(36,33,'CAM011','2016-02-03 14:56:51','b827eb16875d',1,'vmhq-16801_live'),(37,66,'CAM008','2016-03-09 13:54:50','b827eb0cc034',1,'vmhq-16801_live'),(38,87,NULL,'2016-03-23 18:57:27','b827eb12b076',NULL,NULL),(39,88,NULL,'2016-03-23 19:11:42','b827ebf36288',NULL,NULL),(40,89,NULL,'2016-03-23 19:22:55','b827eb1b86f0',NULL,NULL),(41,90,NULL,'2016-03-23 19:25:22','b827eb669985',NULL,NULL),(42,93,NULL,'2016-03-24 14:09:48','b827eb92b479',NULL,NULL),(43,96,NULL,'2016-03-24 14:22:58','b827eb5c1ea6',NULL,NULL),(44,95,NULL,'2016-03-24 14:27:55','b827eb1fbabe',NULL,NULL),(45,92,NULL,'2016-03-24 14:33:51','b827eb357295',NULL,NULL),(46,91,NULL,'2016-03-24 15:32:10','b827eb1c930d',NULL,NULL),(47,94,NULL,'2016-03-24 15:59:26','b827eb6263da',NULL,NULL),(48,84,NULL,'2016-03-24 16:04:52','b827ebf8f551',NULL,NULL),(49,83,NULL,'2016-03-24 16:13:44','b827eb5e984f',NULL,NULL),(50,83,NULL,'2016-03-24 16:17:23','b827eb5e984f',NULL,NULL),(51,82,NULL,'2016-03-24 17:14:20','b827ebe8da7d',NULL,NULL),(52,81,NULL,'2016-03-24 17:32:55','b827ebea22bc',NULL,NULL),(53,80,NULL,'2016-03-24 17:38:55','b827ebdda7a0',NULL,NULL),(54,78,NULL,'2016-03-24 18:43:54','b827eb6a8896',NULL,NULL),(55,79,NULL,'2016-03-24 18:47:43','b827eb24c0ce',NULL,NULL),(56,77,NULL,'2016-03-24 19:33:28','b827eb0774ab',NULL,NULL),(57,85,NULL,'2016-03-24 19:53:37','b827ebdfb6b5',NULL,NULL),(58,86,NULL,'2016-03-25 13:36:10','b827ebe81641',NULL,NULL),(59,67,'CAM034','2016-03-25 13:39:58','b827eb48331e',1,'vmhq-16801_live'),(60,97,'fac005','2016-03-31 18:42:53','b827eb1d468b',1,'rtrs-020_live'),(61,98,'cam015','2016-03-31 18:44:25','b827eb80d069',1,'rtrs-020_live'),(62,123,NULL,'2016-04-12 13:50:55','b827ebe8d6d8',NULL,NULL),(63,124,NULL,'2016-04-12 14:16:39','b827eb81b2eb',NULL,NULL),(64,125,NULL,'2016-04-12 14:34:19','b827ebeadb37',NULL,NULL),(65,126,NULL,'2016-04-12 14:38:02','b827eb6e0aaa',NULL,NULL),(66,127,NULL,'2016-04-12 14:43:14','b827ebc5b61a',NULL,NULL),(67,128,NULL,'2016-04-12 14:45:42','b827eb8bcf65',NULL,NULL),(68,129,NULL,'2016-04-12 14:49:11','b827eb1ecede',NULL,NULL),(69,130,NULL,'2016-04-12 14:55:01','b827eb62e27a',NULL,NULL),(70,131,NULL,'2016-04-12 14:58:44','b827eb42651f',NULL,NULL),(71,132,NULL,'2016-04-12 15:31:02','b827eb30c531',NULL,NULL),(72,133,NULL,'2016-04-12 15:40:33','b827eb899b0c',NULL,NULL),(73,134,NULL,'2016-04-12 17:06:35','b827eb8e18ad',NULL,NULL),(74,135,NULL,'2016-04-12 17:09:14','b827eb9565fe',NULL,NULL),(75,136,NULL,'2016-04-12 17:12:23','b827eb098bfc',NULL,NULL),(76,137,NULL,'2016-04-12 17:17:45','b827ebf00759',NULL,NULL),(77,138,NULL,'2016-04-12 17:39:49','b827eb5ce689',NULL,NULL),(78,139,NULL,'2016-04-12 18:33:27','b827eb744904',NULL,NULL),(79,140,NULL,'2016-04-12 19:07:41','b827eb92ce9b',NULL,NULL),(80,141,NULL,'2016-04-12 20:02:45','b827eb395564',NULL,NULL),(81,142,NULL,'2016-04-12 20:04:10','b827eb10ac61',NULL,NULL);
/*!40000 ALTER TABLE `cam_proj_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cam_proj_status_type_name`
--

DROP TABLE IF EXISTS `cam_proj_status_type_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cam_proj_status_type_name` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cam_proj_status_type_name`
--

LOCK TABLES `cam_proj_status_type_name` WRITE;
/*!40000 ALTER TABLE `cam_proj_status_type_name` DISABLE KEYS */;
INSERT INTO `cam_proj_status_type_name` VALUES (1,'Active'),(2,'Deactivate'),(3,'Return Repair');
/*!40000 ALTER TABLE `cam_proj_status_type_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cam_ship_record`
--

DROP TABLE IF EXISTS `cam_ship_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cam_ship_record` (
  `id` bigint(20) NOT NULL auto_increment,
  `ship_id` varchar(10) NOT NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `retailer_name` varchar(100) default NULL,
  `store_no` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cam_ship_record`
--

LOCK TABLES `cam_ship_record` WRITE;
/*!40000 ALTER TABLE `cam_ship_record` DISABLE KEYS */;
INSERT INTO `cam_ship_record` VALUES (1,'SHP0000001','2016-02-03 15:19:54',NULL,NULL),(2,'SHP0000002','2016-02-03 15:39:00',NULL,NULL),(3,'SHP0000003','2016-02-03 18:06:42',NULL,NULL),(4,'SHP0000004','2016-02-03 18:47:21',NULL,NULL),(5,'SHP0000005','2016-02-03 18:58:43',NULL,NULL),(6,'SHP0000006','2016-02-03 19:04:08',NULL,NULL),(7,'SHP0000007','2016-02-03 19:05:57',NULL,NULL),(8,'SHP0000008','2016-02-03 19:18:33','vmhq','16801'),(9,'SHP0000009','2016-02-03 19:35:16','vmhq','16801'),(10,'SHP0000010','2016-02-03 19:45:12','vmhq','16801'),(11,'SHP0000011','2016-02-11 14:54:57',NULL,NULL),(12,'SHP0000012','2016-02-17 20:16:29',NULL,NULL),(13,'SHP0000013','2016-02-22 14:53:21',NULL,NULL),(14,'SHP0000014','2016-02-22 14:59:40',NULL,NULL),(15,'SHP0000015','2016-03-09 14:02:05','vmhq','16801'),(16,'SHP0000016','2016-03-25 13:44:35',NULL,NULL),(17,'SHP0000017','2016-03-25 13:48:25',NULL,NULL),(18,'SHP0000018','2016-03-25 15:23:40',NULL,NULL),(19,'SHP0000019','2016-03-25 15:47:51',NULL,NULL),(20,'SHP0000020','2016-03-25 15:54:38','vmhq','16601'),(21,'SHP0000021','2016-03-31 18:46:10',NULL,NULL),(22,'SHP0000022','2016-03-31 18:49:12','Rutters','020'),(23,'SHP0000023','2016-03-31 19:50:58',NULL,NULL),(24,'SHP0000024','2016-04-01 17:18:22',NULL,NULL),(25,'SHP0000025','2016-06-09 19:33:56',NULL,NULL),(26,'SHP0000026','2016-06-09 19:35:42',NULL,NULL),(27,'SHP0000027','2016-06-09 19:39:54',NULL,NULL);
/*!40000 ALTER TABLE `cam_ship_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cam_ship_record_dtl`
--

DROP TABLE IF EXISTS `cam_ship_record_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cam_ship_record_dtl` (
  `id` bigint(20) NOT NULL auto_increment,
  `dhcp_static_ip` varchar(1) NOT NULL,
  `subnet_mask` varchar(100) default NULL,
  `gateway` varchar(100) default NULL,
  `cam_id` bigint(20) default NULL,
  `ship_record_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cam_ship_record_dtl`
--

LOCK TABLES `cam_ship_record_dtl` WRITE;
/*!40000 ALTER TABLE `cam_ship_record_dtl` DISABLE KEYS */;
INSERT INTO `cam_ship_record_dtl` VALUES (1,'s','255.255.0.0','172.31.1.1',1,8),(2,'s','255.255.0.0','172.31.1.1',31,8),(3,'s','255.255.0.0','172.31.1.1',9,8),(4,'s','255.255.0.0','172.31.1.1',20,8),(5,'s','255.255.0.0','172.31.1.1',12,8),(6,'s','255.255.0.0','172.31.1.1',13,8),(7,'s','255.255.0.0','172.31.1.1',11,8),(8,'s','255.255.0.0','172.31.1.1',34,8),(9,'s','255.255.0.0','172.31.1.1',30,8),(10,'s','255.255.0.0','172.31.1.1',33,8),(11,'s','255.255.0.0','172.31.1.1',32,8),(12,'s','255.255.0.0','172.31.1.1',7,8),(13,'s','255.255.0.0','172.31.1.1',27,9),(14,'s','255.255.0.0','172.31.1.1',14,9),(15,'s','255.255.0.0','172.31.1.1',5,9),(16,'s','255.255.0.0','172.31.1.1',10,9),(17,'s','255.255.0.0','172.31.1.1',21,9),(18,'s','255.255.0.0','172.31.1.1',22,9),(19,'s','255.255.0.0','172.31.1.1',28,9),(20,'s','255.255.0.0','172.31.1.1',8,9),(21,'s','255.255.0.0','172.31.1.1',18,9),(22,'s','255.255.0.0','172.31.1.1',16,9),(23,'s','255.255.0.0','172.31.1.1',2,9),(24,'s','255.255.0.0','172.31.1.1',17,9),(25,'s','255.255.0.0','172.31.1.1',29,10),(26,'s','255.255.0.0','172.31.1.1',3,10),(27,'s','255.255.0.0','172.31.1.1',26,10),(28,'s','255.255.0.0','172.31.1.1',24,10),(29,'s','255.255.0.0','172.31.1.1',23,10),(30,'s','255.255.0.0','172.31.1.1',25,10),(31,'s','255.255.0.0','172.31.1.1',15,10),(32,'s','255.255.0.0','172.31.1.1',4,10),(33,'s','255.255.0.0','172.31.1.1',6,10),(34,'s','255.255.0.0','172.31.1.1',19,10),(35,'s','255.255.0.0','172.31.1.1',66,15),(36,'s','255.255.0.0','172.31.1.1',67,20),(37,'s','255.255.0.0','10.58.1.1',98,22),(38,'s','255.255.0.0','10.58.1.1',97,22);
/*!40000 ALTER TABLE `cam_ship_record_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cam_states`
--

DROP TABLE IF EXISTS `cam_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cam_states` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cam_states`
--

LOCK TABLES `cam_states` WRITE;
/*!40000 ALTER TABLE `cam_states` DISABLE KEYS */;
INSERT INTO `cam_states` VALUES (1,'Assembled'),(2,'Tested'),(3,'Failed'),(4,'Deployed'),(5,'Returned'),(6,'Decommissioned');
/*!40000 ALTER TABLE `cam_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cam_status`
--

DROP TABLE IF EXISTS `cam_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cam_status` (
  `id` bigint(20) NOT NULL auto_increment,
  `cam_inv_id` bigint(20) default NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `state_id` bigint(20) default NULL,
  `use_id` bigint(20) default NULL,
  `notes` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cam_status`
--

LOCK TABLES `cam_status` WRITE;
/*!40000 ALTER TABLE `cam_status` DISABLE KEYS */;
INSERT INTO `cam_status` VALUES (1,1,'2016-01-29 18:08:18',1,6,NULL),(2,2,'2016-01-29 18:32:29',1,6,NULL),(3,2,'2016-01-29 18:42:54',2,6,NULL),(4,2,'2016-02-02 15:17:52',2,6,NULL),(5,3,'2016-02-02 15:58:30',1,6,NULL),(6,4,'2016-02-02 19:07:10',1,6,NULL),(7,5,'2016-02-02 19:07:15',1,6,NULL),(8,6,'2016-02-02 19:07:22',1,6,NULL),(9,7,'2016-02-02 19:07:27',1,6,NULL),(10,8,'2016-02-02 19:07:32',1,6,NULL),(11,9,'2016-02-02 19:07:36',1,6,NULL),(12,10,'2016-02-02 19:07:42',1,6,NULL),(13,11,'2016-02-02 19:07:46',1,6,NULL),(14,12,'2016-02-02 19:07:50',1,6,NULL),(15,13,'2016-02-02 19:07:55',1,6,NULL),(16,14,'2016-02-02 19:08:00',1,6,NULL),(17,15,'2016-02-02 19:09:25',1,6,NULL),(18,16,'2016-02-02 19:09:30',1,6,NULL),(19,17,'2016-02-02 19:09:33',1,6,NULL),(20,18,'2016-02-02 19:09:38',1,6,NULL),(21,19,'2016-02-02 19:09:43',1,6,NULL),(22,20,'2016-02-02 19:09:47',1,6,NULL),(23,21,'2016-02-02 19:10:05',1,6,NULL),(24,22,'2016-02-02 19:10:10',1,6,NULL),(25,23,'2016-02-02 19:10:15',1,6,NULL),(26,24,'2016-02-02 19:10:19',1,6,NULL),(27,25,'2016-02-02 19:10:24',1,6,NULL),(28,26,'2016-02-02 19:10:29',1,6,NULL),(29,27,'2016-02-02 19:11:47',1,6,NULL),(30,28,'2016-02-02 19:11:52',1,6,NULL),(31,29,'2016-02-02 19:11:59',1,6,NULL),(32,2,'2016-02-02 19:43:20',2,6,NULL),(33,1,'2016-02-02 19:45:31',2,6,NULL),(34,27,'2016-02-02 19:47:24',2,6,NULL),(35,22,'2016-02-02 19:49:17',2,6,NULL),(36,21,'2016-02-02 19:50:45',2,6,NULL),(37,20,'2016-02-02 19:53:52',2,6,NULL),(38,18,'2016-02-02 19:55:14',2,6,NULL),(39,29,'2016-02-02 20:05:31',2,6,NULL),(40,17,'2016-02-02 20:07:25',2,6,NULL),(41,3,'2016-02-02 20:08:55',2,6,NULL),(42,28,'2016-02-02 20:10:22',2,6,NULL),(43,16,'2016-02-02 20:11:41',2,6,NULL),(44,15,'2016-02-02 20:13:01',2,6,NULL),(45,19,'2016-02-02 20:14:07',2,6,NULL),(46,6,'2016-02-02 20:17:37',2,6,NULL),(47,8,'2016-02-02 20:18:58',2,6,NULL),(48,4,'2016-02-02 20:20:29',2,6,NULL),(49,25,'2016-02-02 20:22:04',2,6,NULL),(50,26,'2016-02-02 20:23:27',2,6,NULL),(51,23,'2016-02-02 20:24:36',2,6,NULL),(52,24,'2016-02-02 20:29:17',2,6,NULL),(53,10,'2016-02-02 20:31:26',2,6,NULL),(54,5,'2016-02-02 20:34:19',2,6,NULL),(55,9,'2016-02-02 20:36:06',2,6,NULL),(56,12,'2016-02-02 20:37:18',2,6,NULL),(57,7,'2016-02-02 20:40:36',3,6,'Scratched lens'),(58,13,'2016-02-02 20:42:04',2,6,NULL),(59,11,'2016-02-02 20:43:21',2,6,NULL),(60,14,'2016-02-02 20:44:26',2,6,NULL),(61,7,'2016-02-02 20:44:57',3,6,NULL),(62,30,'2016-02-02 21:29:25',1,6,NULL),(63,31,'2016-02-02 21:29:44',1,6,NULL),(64,31,'2016-02-02 21:30:50',2,6,NULL),(65,30,'2016-02-02 21:32:38',2,6,NULL),(66,32,'2016-02-03 14:02:16',1,6,NULL),(67,33,'2016-02-03 14:02:20',1,6,NULL),(68,34,'2016-02-03 14:02:49',1,6,NULL),(69,34,'2016-02-03 14:51:27',2,6,NULL),(70,7,'2016-02-03 14:53:08',2,6,'Replaced camera'),(71,32,'2016-02-03 14:54:37',2,6,NULL),(72,33,'2016-02-03 14:56:51',2,6,NULL),(73,1,'2016-02-03 19:18:33',4,6,NULL),(74,31,'2016-02-03 19:19:14',4,6,NULL),(75,9,'2016-02-03 19:19:27',4,6,NULL),(76,20,'2016-02-03 19:19:40',4,6,NULL),(77,12,'2016-02-03 19:20:08',4,6,NULL),(78,13,'2016-02-03 19:20:28',4,6,NULL),(79,11,'2016-02-03 19:20:51',4,6,NULL),(80,34,'2016-02-03 19:21:04',4,6,NULL),(81,30,'2016-02-03 19:21:31',4,6,NULL),(82,33,'2016-02-03 19:21:46',4,6,NULL),(83,32,'2016-02-03 19:22:01',4,6,NULL),(84,7,'2016-02-03 19:22:16',4,6,NULL),(85,27,'2016-02-03 19:35:16',4,6,NULL),(86,14,'2016-02-03 19:35:32',4,6,NULL),(87,5,'2016-02-03 19:35:51',4,6,NULL),(88,10,'2016-02-03 19:36:05',4,6,NULL),(89,21,'2016-02-03 19:36:28',4,6,NULL),(90,22,'2016-02-03 19:36:38',4,6,NULL),(91,28,'2016-02-03 19:36:50',4,6,NULL),(92,8,'2016-02-03 19:37:00',4,6,NULL),(93,18,'2016-02-03 19:37:30',4,6,NULL),(94,16,'2016-02-03 19:37:51',4,6,NULL),(95,2,'2016-02-03 19:38:06',4,6,NULL),(96,17,'2016-02-03 19:38:25',4,6,NULL),(97,29,'2016-02-03 19:45:12',4,6,NULL),(98,3,'2016-02-03 19:45:29',4,6,NULL),(99,26,'2016-02-03 19:45:47',4,6,NULL),(100,24,'2016-02-03 19:46:05',4,6,NULL),(101,23,'2016-02-03 19:46:15',4,6,NULL),(102,25,'2016-02-03 19:46:25',4,6,NULL),(103,15,'2016-02-03 19:46:37',4,6,NULL),(104,4,'2016-02-03 19:46:46',4,6,NULL),(105,6,'2016-02-03 19:47:06',4,6,NULL),(106,19,'2016-02-03 19:47:21',4,6,NULL),(107,35,'2016-02-16 15:25:46',1,6,NULL),(108,36,'2016-02-16 15:25:52',1,6,NULL),(109,37,'2016-02-16 15:25:58',1,6,NULL),(110,38,'2016-02-16 15:26:04',1,6,NULL),(111,39,'2016-02-16 15:26:11',1,6,NULL),(112,40,'2016-02-16 15:26:16',1,6,NULL),(113,41,'2016-02-16 15:26:20',1,6,NULL),(114,42,'2016-02-16 15:26:24',1,6,NULL),(115,43,'2016-02-16 15:26:27',1,6,NULL),(116,44,'2016-02-16 15:26:31',1,6,NULL),(117,45,'2016-02-16 15:26:35',1,6,NULL),(118,46,'2016-02-16 15:26:39',1,6,NULL),(119,47,'2016-02-16 15:26:43',1,6,NULL),(120,48,'2016-02-16 15:30:57',1,6,NULL),(121,49,'2016-02-16 15:30:59',1,6,NULL),(122,50,'2016-02-16 15:31:06',1,6,NULL),(123,51,'2016-02-16 15:31:13',1,6,NULL),(124,52,'2016-02-16 15:31:17',1,6,NULL),(125,53,'2016-02-16 15:31:23',1,6,NULL),(126,54,'2016-02-16 15:31:28',1,6,NULL),(127,55,'2016-02-16 15:31:32',1,6,NULL),(128,56,'2016-02-16 15:31:36',1,6,NULL),(129,57,'2016-02-16 15:31:40',1,6,NULL),(130,58,'2016-02-16 15:31:45',1,6,NULL),(131,59,'2016-02-16 15:31:48',1,6,NULL),(132,60,'2016-02-16 15:31:55',1,6,NULL),(133,61,'2016-02-16 15:34:18',1,6,NULL),(134,62,'2016-02-16 15:34:22',1,6,NULL),(135,5,'2016-02-16 15:37:53',3,6,NULL),(136,5,'2016-02-16 15:45:38',3,6,NULL),(137,63,'2016-02-16 20:04:26',1,6,NULL),(138,64,'2016-02-16 20:04:33',1,6,NULL),(139,65,'2016-02-16 20:04:38',1,6,NULL),(140,66,'2016-02-16 20:04:43',1,6,NULL),(141,67,'2016-02-17 16:59:19',1,6,NULL),(142,68,'2016-02-17 16:59:21',1,6,NULL),(143,69,'2016-02-17 16:59:26',1,6,NULL),(144,70,'2016-02-17 16:59:28',1,6,NULL),(145,71,'2016-02-17 16:59:33',1,6,NULL),(146,72,'2016-02-17 16:59:37',1,6,NULL),(147,73,'2016-02-17 16:59:39',1,6,NULL),(148,74,'2016-02-17 16:59:42',1,6,NULL),(149,75,'2016-02-17 16:59:44',1,6,NULL),(150,76,'2016-02-17 16:59:46',1,6,NULL),(151,66,'2016-03-09 13:54:50',2,6,NULL),(152,13,'2016-03-09 13:57:53',3,6,NULL),(153,66,'2016-03-09 14:02:05',4,6,NULL),(154,77,'2016-03-18 15:20:33',1,7,NULL),(155,78,'2016-03-18 15:21:30',1,7,NULL),(156,79,'2016-03-18 15:21:56',1,7,NULL),(157,80,'2016-03-18 15:22:55',1,7,NULL),(158,81,'2016-03-18 15:23:35',1,7,NULL),(159,82,'2016-03-18 15:24:09',1,7,NULL),(160,83,'2016-03-18 15:28:48',1,7,NULL),(161,84,'2016-03-18 15:29:21',1,7,NULL),(162,85,'2016-03-18 15:29:36',1,7,NULL),(163,86,'2016-03-18 15:29:56',1,7,NULL),(164,87,'2016-03-21 16:53:45',1,7,NULL),(165,88,'2016-03-21 16:53:59',1,7,NULL),(166,89,'2016-03-21 16:54:12',1,7,NULL),(167,90,'2016-03-21 16:54:25',1,7,NULL),(168,91,'2016-03-21 16:54:45',1,7,NULL),(169,92,'2016-03-21 16:55:02',1,7,NULL),(170,93,'2016-03-21 16:55:25',1,7,NULL),(171,94,'2016-03-21 16:55:51',1,7,NULL),(172,95,'2016-03-21 16:56:11',1,7,NULL),(173,96,'2016-03-21 17:11:18',1,7,NULL),(174,87,'2016-03-23 18:57:27',2,7,NULL),(175,88,'2016-03-23 19:11:42',2,7,NULL),(176,89,'2016-03-23 19:22:55',2,7,NULL),(177,90,'2016-03-23 19:25:22',2,7,NULL),(178,93,'2016-03-24 14:09:48',2,7,NULL),(179,96,'2016-03-24 14:22:58',2,7,NULL),(180,95,'2016-03-24 14:27:55',2,7,NULL),(181,92,'2016-03-24 14:33:51',2,7,NULL),(182,91,'2016-03-24 15:32:10',2,7,NULL),(183,94,'2016-03-24 15:59:26',2,7,NULL),(184,84,'2016-03-24 16:04:52',2,7,NULL),(185,83,'2016-03-24 16:13:44',2,7,NULL),(186,83,'2016-03-24 16:17:23',2,7,NULL),(187,82,'2016-03-24 17:14:20',2,7,NULL),(188,81,'2016-03-24 17:32:55',2,7,NULL),(189,80,'2016-03-24 17:38:55',2,7,NULL),(190,78,'2016-03-24 18:43:54',2,7,NULL),(191,79,'2016-03-24 18:47:43',2,7,NULL),(192,77,'2016-03-24 19:33:28',2,7,NULL),(193,85,'2016-03-24 19:53:37',2,7,NULL),(194,86,'2016-03-25 13:36:10',2,7,NULL),(195,67,'2016-03-25 13:39:58',2,7,NULL),(196,67,'2016-03-25 15:54:38',4,7,NULL),(197,97,'2016-03-31 18:36:39',1,7,NULL),(198,98,'2016-03-31 18:36:51',1,7,NULL),(199,97,'2016-03-31 18:42:53',2,7,NULL),(200,98,'2016-03-31 18:44:25',2,7,NULL),(201,98,'2016-03-31 18:49:12',4,7,NULL),(202,97,'2016-03-31 18:50:25',4,7,NULL),(203,99,'2016-04-01 17:26:16',1,7,NULL),(204,100,'2016-04-01 17:28:57',1,7,NULL),(205,101,'2016-04-01 17:29:02',1,7,NULL),(206,102,'2016-04-01 17:29:08',1,7,NULL),(207,103,'2016-04-01 17:29:14',1,7,NULL),(208,104,'2016-04-01 17:29:20',1,7,NULL),(209,105,'2016-04-01 17:29:24',1,7,NULL),(210,106,'2016-04-01 17:29:29',1,7,NULL),(211,107,'2016-04-01 17:29:34',1,7,NULL),(212,108,'2016-04-01 17:29:39',1,7,NULL),(213,109,'2016-04-01 17:29:44',1,7,NULL),(214,110,'2016-04-01 17:29:48',1,7,NULL),(215,111,'2016-04-01 17:29:52',1,7,NULL),(216,112,'2016-04-01 17:29:57',1,7,NULL),(217,113,'2016-04-01 17:30:02',1,7,NULL),(218,114,'2016-04-01 17:30:06',1,7,NULL),(219,115,'2016-04-01 17:30:10',1,7,NULL),(220,116,'2016-04-01 17:30:15',1,7,NULL),(221,117,'2016-04-01 17:30:19',1,7,NULL),(222,118,'2016-04-01 17:30:28',1,7,NULL),(223,119,'2016-04-01 17:30:34',1,7,NULL),(224,120,'2016-04-01 17:30:38',1,7,NULL),(225,121,'2016-04-01 17:30:42',1,7,NULL),(226,122,'2016-04-01 17:30:46',1,7,NULL),(227,123,'2016-04-11 20:06:11',1,7,NULL),(228,123,'2016-04-12 13:50:55',2,7,NULL),(229,124,'2016-04-12 14:11:31',1,3,NULL),(230,124,'2016-04-12 14:16:39',2,7,NULL),(231,125,'2016-04-12 14:33:39',1,3,NULL),(232,125,'2016-04-12 14:34:19',2,7,NULL),(233,126,'2016-04-12 14:37:00',1,3,NULL),(234,126,'2016-04-12 14:38:02',2,7,NULL),(235,127,'2016-04-12 14:43:04',1,3,NULL),(236,127,'2016-04-12 14:43:14',2,7,NULL),(237,128,'2016-04-12 14:44:53',1,3,NULL),(238,128,'2016-04-12 14:45:42',2,7,NULL),(239,129,'2016-04-12 14:48:27',1,3,NULL),(240,129,'2016-04-12 14:49:11',2,7,NULL),(241,130,'2016-04-12 14:53:33',1,3,NULL),(242,130,'2016-04-12 14:55:01',2,7,NULL),(243,131,'2016-04-12 14:57:21',1,3,NULL),(244,131,'2016-04-12 14:58:44',2,7,NULL),(245,132,'2016-04-12 15:29:54',1,3,NULL),(246,132,'2016-04-12 15:31:02',2,7,NULL),(247,133,'2016-04-12 15:38:39',1,3,NULL),(248,133,'2016-04-12 15:40:33',2,7,NULL),(249,134,'2016-04-12 17:05:18',1,3,NULL),(250,134,'2016-04-12 17:06:35',2,7,NULL),(251,135,'2016-04-12 17:07:45',1,3,NULL),(252,135,'2016-04-12 17:09:14',2,7,NULL),(253,136,'2016-04-12 17:11:20',1,3,NULL),(254,136,'2016-04-12 17:12:23',2,7,NULL),(255,137,'2016-04-12 17:14:02',1,3,NULL),(256,137,'2016-04-12 17:17:45',2,7,NULL),(257,138,'2016-04-12 17:23:08',1,3,NULL),(258,138,'2016-04-12 17:39:49',2,7,NULL),(259,139,'2016-04-12 18:32:49',1,3,NULL),(260,139,'2016-04-12 18:33:27',2,7,NULL),(261,140,'2016-04-12 19:06:46',1,3,NULL),(262,140,'2016-04-12 19:07:41',2,7,NULL),(263,141,'2016-04-12 20:01:37',1,3,NULL),(264,141,'2016-04-12 20:02:45',2,7,NULL),(265,142,'2016-04-12 20:03:23',1,3,NULL),(266,142,'2016-04-12 20:04:10',2,7,NULL),(267,143,'2016-06-09 19:25:58',1,7,NULL);
/*!40000 ALTER TABLE `cam_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cam_status_agg`
--

DROP TABLE IF EXISTS `cam_status_agg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cam_status_agg` (
  `id` bigint(20) NOT NULL default '0',
  `serial_number` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL default '0000-00-00 00:00:00',
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cam_status_agg`
--

LOCK TABLES `cam_status_agg` WRITE;
/*!40000 ALTER TABLE `cam_status_agg` DISABLE KEYS */;
INSERT INTO `cam_status_agg` VALUES (1,'A0000000046','2015-11-24 19:09:23','Assembled'),(1,'A0000000046','2015-11-24 19:16:59','Assembled'),(1,'A0000000046','2015-11-24 19:25:44','Tested'),(1,'A0000000046','2015-11-24 19:27:37','Deployed'),(1,'A0000000046','2015-11-24 19:29:23','Failed'),(2,'A0000000002','2015-11-24 19:17:04','Assembled'),(2,'A0000000002','2015-11-24 19:26:35','Tested'),(2,'A0000000002','2015-11-24 19:27:48','Deployed'),(3,'A0000000001','2015-11-24 19:17:09','Assembled'),(4,'A0000000038','2015-12-08 14:45:41','Assembled');
/*!40000 ALTER TABLE `cam_status_agg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camera_inventory`
--

DROP TABLE IF EXISTS `camera_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `camera_inventory` (
  `id` bigint(20) NOT NULL auto_increment,
  `serial_number` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camera_inventory`
--

LOCK TABLES `camera_inventory` WRITE;
/*!40000 ALTER TABLE `camera_inventory` DISABLE KEYS */;
INSERT INTO `camera_inventory` VALUES (1,'A0000000051'),(2,'A0000000050'),(3,'A0000000089'),(4,'A0000000048'),(5,'A0000000014'),(6,'A0000000038'),(7,'A0000000100'),(8,'A0000000029'),(9,'A0000000055'),(10,'A0000000046'),(11,'A0000000088'),(12,'A0000000053'),(13,'A0000000037'),(14,'A0000000090'),(15,'A0000000041'),(16,'A0000000042'),(17,'A0000000045'),(18,'A0000000077'),(19,'A0000000036'),(20,'A0000000028'),(21,'A0000000043'),(22,'A0000000039'),(23,'A0000000052'),(24,'A0000000095'),(25,'A0000000061'),(26,'A0000000044'),(27,'A0000000049'),(28,'A0000000091'),(29,'A0000000069'),(30,'A0000000011'),(31,'A0000000054'),(32,'A0000000097'),(33,'A0000000047'),(34,'A0000000062'),(35,'A0000000067'),(36,'A0000000072'),(37,'A0000000066'),(38,'A0000000008'),(39,'A0000000074'),(40,'A0000000010'),(41,'A0000000099'),(42,'A0000000092'),(43,'A0000000087'),(44,'A0000000076'),(45,'A0000000071'),(46,'A0000000086'),(47,'A0000000064'),(48,'A0000000084'),(49,'A0000000096'),(50,'A0000000075'),(51,'A0000000058'),(52,'A0000000068'),(53,'A0000000070'),(54,'A0000000093'),(55,'A0000000094'),(56,'A0000000056'),(57,'A0000000081'),(58,'A0000000065'),(59,'A0000000073'),(60,'A0000000007'),(61,'A0000000057'),(62,'A0000000063'),(63,'A0000000103'),(64,'A0000000104'),(65,'A0000000101'),(66,'A0000000102'),(67,'A0000000105'),(68,'A0000000106'),(69,'A0000000107'),(70,'A0000000108'),(71,'A0000000109'),(72,'A0000000110'),(73,'A0000000111'),(74,'A0000000112'),(75,'A0000000113'),(76,'A0000000114'),(77,'A0000000115'),(78,'A0000000122'),(79,'A0000000118'),(80,'A0000000116'),(81,'A0000000125'),(82,'A0000000117'),(83,'A0000000124'),(84,'A0000000121'),(85,'A0000000120'),(86,'A0000000123'),(87,'A0000000119'),(88,'A0000000127'),(89,'A0000000126'),(90,'A0000000129'),(91,'A0000000128'),(92,'A0000000134'),(93,'A0000000131'),(94,'A0000000133'),(95,'A0000000130'),(96,'A0000000132'),(97,'A0000000138'),(98,'A0000000137'),(99,'A0000000023'),(100,'A0000000078'),(101,'A0000000019'),(102,'A0000000025'),(103,'A0000000009'),(104,'A0000000002'),(105,'A0000000079'),(106,'A0000000012'),(107,'A0000000016'),(108,'A0000000003'),(109,'A0000000024'),(110,'A0000000018'),(111,'A0000000080'),(112,'A0000000004'),(113,'A0000000022'),(114,'A0000000006'),(115,'A0000000015'),(116,'A0000000082'),(117,'A0000000020'),(118,'A0000000013'),(119,'A0000000005'),(120,'A0000000021'),(121,'A0000000085'),(122,'A0000000098'),(123,'A0000000149'),(124,'A0000000144'),(125,'A0000000148'),(126,'A0000000147'),(127,'A0000000146'),(128,'A0000000145'),(129,'A0000000150'),(130,'A0000000151'),(131,'A0000000152'),(132,'A0000000153'),(133,'A0000000141'),(134,'A0000000143'),(135,'A0000000142'),(136,'A0000000140'),(137,'A0000000135'),(138,'A0000000139'),(139,'A0000000136'),(140,'A0000000154'),(141,'A0000000155'),(142,'A0000000156'),(143,'A0000000157');
/*!40000 ALTER TABLE `camera_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dhcp_addresses`
--

DROP TABLE IF EXISTS `dhcp_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dhcp_addresses` (
  `addrID` int(11) NOT NULL auto_increment,
  `curIP` varchar(15) NOT NULL,
  `macAddr` varchar(12) NOT NULL,
  `machineName` varchar(35) NOT NULL default 'NONE',
  `processed` tinyint(1) NOT NULL default '0',
  `timeStamp` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`addrID`),
  UNIQUE KEY `mac_idx` (`macAddr`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dhcp_addresses`
--

LOCK TABLES `dhcp_addresses` WRITE;
/*!40000 ALTER TABLE `dhcp_addresses` DISABLE KEYS */;
INSERT INTO `dhcp_addresses` VALUES (6,'10.252.0.117','b827eb831bf5','vmcnuc01',0,'2016-04-12 13:51:00'),(9,'10.252.0.149','b827eb53bdab','vmcnuc01',0,'2016-03-25 14:42:32'),(15,'10.252.0.134','b827eb5d1282','vmcnuc01',0,'2016-04-12 17:05:19'),(16,'10.252.0.139','via','vmcnuc01',0,'2016-03-25 16:01:32'),(18,'10.252.0.142','b827eb3a0851','vmcnuc01',0,'2016-04-12 13:50:55'),(27,'10.252.0.139','0026b9de19b5','vmcnuc01',0,'2016-03-24 19:34:06'),(33,'10.252.0.130','b827eba22eb4','vmcnuc01',0,'2016-04-12 13:51:00'),(34,'on','to','vmcnuc01',0,'2016-06-09 19:30:12'),(35,'10.252.0.113','b827eb35eb99','vmcnuc01',0,'2016-06-09 19:51:07');
/*!40000 ALTER TABLE `dhcp_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_tests`
--

DROP TABLE IF EXISTS `failed_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_tests` (
  `id` bigint(20) NOT NULL auto_increment,
  `qa_test_id` bigint(20) default NULL,
  `stat_id` bigint(20) default NULL,
  `cam_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_tests`
--

LOCK TABLES `failed_tests` WRITE;
/*!40000 ALTER TABLE `failed_tests` DISABLE KEYS */;
INSERT INTO `failed_tests` VALUES (1,11,57,7);
/*!40000 ALTER TABLE `failed_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_tests`
--

DROP TABLE IF EXISTS `qa_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_tests` (
  `id` bigint(20) NOT NULL auto_increment,
  `test_desc` varchar(255) NOT NULL,
  `test_name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_tests`
--

LOCK TABLES `qa_tests` WRITE;
/*!40000 ALTER TABLE `qa_tests` DISABLE KEYS */;
INSERT INTO `qa_tests` VALUES (5,' STATE_MON0','STATE_MON0'),(6,'STATE_MON1','STATE_MON1'),(7,'STATE_MON2','STATE_MON2'),(8,'STATE_BOND0','STATE_BOND0'),(9,'STATE_MQTT','STATE_MQTT'),(10,'STATE_BEACON','STATE_BEACON'),(11,'Ensure that the camera is focused such that even the farthest point in the field of view is sharp.','Camera Focused'),(12,'Ensure that the fan label is visible through the heat vent. When running, it should push air out.','Fan Direction');
/*!40000 ALTER TABLE `qa_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `activeflag` varchar(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,'admin','password','admin','Y'),(2,'UNKNOWNRMA','UNKNOWNRMA','UNKNOWNRMA','N'),(3,'UNKNOWNQA','UNKNOWNQA','UNKNOWNQA','N'),(4,'Gary Panulla','gpanulla','gpanulla','Y'),(5,'Dilip Hari','dhari','dhari','Y'),(6,'Christopher Stewart','garbage','cstewart','Y'),(7,'Dean Rineer','password','drineer','Y');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `special_role` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'Assembler','N'),(2,'QA Technician','N'),(3,'Shipper/Receiver','N'),(4,'IT Admin','Y');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_map`
--

DROP TABLE IF EXISTS `user_role_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role_map` (
  `id` bigint(20) NOT NULL auto_increment,
  `roleid` bigint(20) default NULL,
  `userid` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_map`
--

LOCK TABLES `user_role_map` WRITE;
/*!40000 ALTER TABLE `user_role_map` DISABLE KEYS */;
INSERT INTO `user_role_map` VALUES (6,1,5),(7,2,5),(8,3,5),(9,4,5),(10,1,1),(11,2,1),(12,3,1),(13,4,1),(14,1,6),(15,2,6),(16,3,6),(17,4,6),(18,1,4),(19,2,4),(20,3,4),(21,4,4),(22,1,7),(23,2,7),(24,3,7),(25,4,7);
/*!40000 ALTER TABLE `user_role_map` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-17 14:34:04
