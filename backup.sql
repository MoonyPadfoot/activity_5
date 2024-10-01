-- MariaDB dump 10.19  Distrib 10.5.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: kodacamp
-- ------------------------------------------------------
-- Server version	10.5.13-MariaDB-1:10.5.13+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2024-09-25 07:05:37.213611','2024-09-25 07:05:37.213611');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL,
  `released_at` timestamp NULL DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (63,'Laptop: Dell XPS 13','Sleek design and powerful performance for any task.',48,999,0,'2020-09-26 11:51:29',6,'2023-09-27 00:02:14.316911','2024-09-27 08:16:10.317334','https://picsum.photos/200/300?random=987'),(64,'Laptop: HP Spectre x360','Versatile 2-in-1 laptop with stunning visuals and performance.',160,1099,0,'2019-09-27 01:37:27',7,'2020-09-26 08:44:59.323268','2024-09-27 08:16:10.323567','https://picsum.photos/200/300?random=929'),(65,'Laptop: Lenovo ThinkPad X1 Carbon','Business-class laptop with exceptional durability and battery life.',254,1399,1,'2021-09-26 13:26:04',26,'2020-09-26 22:46:50.328690','2024-09-27 08:16:10.329150','https://picsum.photos/200/300?random=242'),(66,'Laptop: Acer Swift 3','Lightweight and portable laptop perfect for everyday use.',141,749,0,'2021-09-27 05:54:59',8,'2016-09-26 23:09:38.334990','2024-09-27 08:16:10.335321','https://picsum.photos/200/300?random=264'),(67,'Laptop: Microsoft Surface Laptop 4','Premium laptop with a high-resolution touchscreen and great performance.',263,1299,0,'2017-09-26 20:37:05',29,'2019-09-26 15:57:16.339661','2024-09-27 08:16:10.339937','https://picsum.photos/200/300?random=316'),(68,'Laptop: ASUS ROG Zephyrus G14','Powerful gaming laptop with advanced cooling technology.',65,1499,1,'2017-09-27 01:26:00',8,'2023-09-26 20:12:56.343434','2024-09-27 08:16:10.343679','https://picsum.photos/200/300?random=733'),(69,'Laptop: Razer Blade Stealth 13','Compact gaming laptop with a sleek design and high performance.',296,1699,0,'2015-09-27 07:49:58',17,'2019-09-27 07:19:42.347826','2024-09-27 08:16:10.348084','https://picsum.photos/200/300?random=307'),(70,'Laptop: MSI Prestige 14','Stylish and powerful laptop ideal for creators.',225,1299,1,'2020-09-27 01:14:34',5,'2015-09-26 11:09:14.351370','2024-09-27 08:16:10.351596','https://picsum.photos/200/300?random=544'),(71,'Laptop: Apple MacBook Air M1','Ultra-lightweight laptop with remarkable speed and battery life.',93,999,0,'2014-09-27 07:46:40',21,'2021-09-27 03:25:52.356045','2024-09-27 08:16:10.356383','https://picsum.photos/200/300?random=486'),(72,'Laptop: Samsung Galaxy Book Pro','Innovative laptop with a vibrant AMOLED display and portability.',276,999,0,'2020-09-27 07:35:55',22,'2020-09-26 14:37:03.360323','2024-09-27 08:16:10.360591','https://picsum.photos/200/300?random=163');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20240925073350'),('20240926040632'),('20240926041902'),('20240926042241'),('20240927071125');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-30  7:00:35
