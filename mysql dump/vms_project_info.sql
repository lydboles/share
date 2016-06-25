-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: vmdb_master    Database: vms
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
-- Table structure for table `project_info`
--

DROP TABLE IF EXISTS `project_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_info` (
  `project_id` int(11) NOT NULL auto_increment,
  `deleted` tinyint(1) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `guid` varchar(40) default NULL,
  PRIMARY KEY  (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_info`
--

LOCK TABLES `project_info` WRITE;
/*!40000 ALTER TABLE `project_info` DISABLE KEYS */;
INSERT INTO `project_info` VALUES (208,0,'swy-2030_live','4a9619e5-d077-415a-9c0f-0330776b95b5'),(285,0,'ck-8652_live','0c5d534a-865d-40cc-99e4-c20fa761d3e5'),(286,0,'ck-3378_live','2fc38c49-b040-4f59-b44d-73a21d767323'),(287,0,'shtz-338_live','8a344c47-8fef-4e6d-87c6-8ded146c2d9a'),(292,0,'shtz-327_live','96624eb3-41f1-47dc-9599-09ffb313ffc7'),(295,0,'ampm-83100_live','8cd42db5-9da8-4d64-b127-4ede8ae5a77e'),(296,0,'ck-9980_live','a33affc8-3e69-4326-a3e9-f9e4bb45175b'),(308,0,'swy-0413_live','8d872398-d0b2-41b4-a591-92a799a95414'),(309,0,'swy-2607_live','e381d936-0116-4dfd-9e10-1edd1053fe5a'),(310,0,'fl-1353_live','5764529f-ef50-4003-943f-c8f898cd78d2'),(311,0,'fl-566_live','5baefb8c-eb32-4f9a-bb19-ea7ff4c1ee6c'),(312,0,'fl-1062_live','69ef9f7e-fcbd-4f3a-93aa-b33ac024b936'),(313,0,'fl-682_live','71badc99-54e0-499f-b96d-7f417b4ecb06'),(329,0,'swy-1751_live','59d0a263-41a9-4d91-a54e-a3502e6e2245'),(335,0,'ahld-6097_live','b52fb606-edc3-4f40-b09c-906a24a79cca'),(337,0,'swy-2890_live','a370a772-ec0e-4ff7-b681-c2b1da035664'),(340,0,'swy-1480_live','9a3b1362-28c5-4528-bc51-bf885b4ab0ec'),(349,0,'tgt-0880_live','df56d2d2-5ed7-4333-82d8-83bf66b42366'),(350,0,'tgt-1481_live','9cb3b2d5-31e5-4072-887b-7235f275552c'),(351,0,'tgt-1510_live','ca749237-c262-4dc2-b7ab-9139365b307e'),(352,0,'tgt-1819_live','f7e55e76-9488-4e66-a6dd-8f1fc5282161'),(353,0,'tgt-1932_live','c0ba15c8-e491-4881-b892-43f6f989c85c'),(354,0,'tgt-1104_live','9273efbf-3cb0-43ac-8d69-e908c22ed6ad'),(372,0,'mac-32809_live','cc05fdfd-6cd1-41d5-a72f-fc38f7eeb7ed'),(373,0,'mac-33180_live','00869f82-0796-40e2-8344-4ae277c5a946'),(374,0,'mac-53226_live','496db7d3-536d-4d91-b0bf-52c2e364f1b5'),(376,0,'mac-90703_live','36b4d440-6a31-495b-b665-20ac3899733d'),(377,0,'psm-1392_live','c4340924-ecac-418e-9ef3-57f3df9e76c7'),(378,0,'psm-434_live','9c89a8cc-6af4-4fbd-8146-f61b19ee26be'),(379,0,'rtrs-020_live','fcc7a2fd-d3fa-4afc-b25c-c2d5ee41f526'),(380,0,'mir-172_live','11fedde3-08d0-45eb-99a4-b7faab7d2a4f'),(381,0,'mir-245_live','8f580a42-6b83-46d6-b5e1-a76917d03828'),(383,0,'svmt-657_live','fd31b302-744e-480b-819e-1cb34aa4ad5d'),(384,0,'svmt-654_live','fbaf9dd4-35b1-4fd1-b77d-719732c3b35b'),(385,0,'svmt-73_live','dfdafd7f-1cdb-45c7-855f-bbff5895f875'),(386,0,'svmt-36_live','ca61ae5e-f753-4d6d-bda5-4c675695ef53'),(387,0,'svmt-650_live','f165977c-5698-401c-bc44-78d1661225b2'),(388,0,'psm-1099_live','b8cc8bb4-2cca-4a50-b20e-767a97b3f4b1'),(394,0,'vmhq-16801_live','b330b043-4a3f-489e-a655-1e4c894b0c06');
/*!40000 ALTER TABLE `project_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-18 16:06:32
