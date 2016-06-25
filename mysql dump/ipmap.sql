-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: vmdb_master    Database: ipmap
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
-- Table structure for table `ipmap`
--

DROP TABLE IF EXISTS `ipmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipmap` (
  `id` bigint(20) NOT NULL auto_increment,
  `hostname` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `ip` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `hostname` (`hostname`,`name`,`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipmap`
--

LOCK TABLES `ipmap` WRITE;
/*!40000 ALTER TABLE `ipmap` DISABLE KEYS */;
INSERT INTO `ipmap` VALUES (1,'vmcnuc01','cam001','172.31.10.1'),(3,'vmcnuc01','cam002','172.31.10.2'),(2,'vmcnuc01','cam003','172.31.10.3'),(5,'vmcnuc01','cam004','172.31.10.4'),(4,'vmcnuc01','cam005','172.31.10.5'),(7,'vmcnuc01','cam006','172.31.10.6'),(6,'vmcnuc01','cam007','172.31.10.7'),(9,'vmcnuc01','cam008','172.31.10.8'),(8,'vmcnuc01','cam009','172.31.10.9'),(24,'vmcnuc01','cam010','172.31.10.10'),(25,'vmcnuc01','cam011','172.31.10.11'),(22,'vmcnuc01','cam012','172.31.10.12'),(23,'vmcnuc01','cam013','172.31.10.13'),(28,'vmcnuc01','cam014','172.31.10.14'),(29,'vmcnuc01','cam015','172.31.10.15'),(26,'vmcnuc01','cam016','172.31.10.16'),(27,'vmcnuc01','cam017','172.31.10.17'),(31,'vmcnuc01','cam018','172.31.10.18'),(32,'vmcnuc01','cam019','172.31.10.19'),(11,'vmcnuc01','cam020','172.31.10.20'),(10,'vmcnuc01','cam021','172.31.10.21'),(21,'vmcnuc01','cam022','172.31.10.22'),(20,'vmcnuc01','cam023','172.31.10.23'),(15,'vmcnuc01','cam024','172.31.10.24'),(14,'vmcnuc01','cam025','172.31.10.25'),(13,'vmcnuc01','cam026','172.31.10.26'),(12,'vmcnuc01','cam027','172.31.10.27'),(16,'vmcnuc01','cam028','172.31.10.28'),(17,'vmcnuc01','cam029','172.31.10.29'),(33,'vmcnuc01','cam030','172.31.10.30'),(34,'vmcnuc01','cam031','172.31.10.31'),(35,'vmcnuc01','cam032','172.31.10.32'),(36,'vmcnuc01','cam033','172.31.10.33'),(30,'vmcnuc01','cam034','172.31.10.34'),(18,'vmcnuc01','fac001','172.31.11.1'),(19,'vmcnuc01','fac002','172.31.11.2');
/*!40000 ALTER TABLE `ipmap` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-17 14:33:11
