-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: kireimo-dev-db.mysql.database.azure.com    Database: mens_kireimo
-- ------------------------------------------------------
-- Server version	5.6.47.0

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
-- Table structure for table `ad_address`
--

DROP TABLE IF EXISTS `ad_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_address` (
  `id` int(9) NOT NULL DEFAULT '0',
  `ken_id` int(2) DEFAULT NULL,
  `city_id` int(5) DEFAULT NULL,
  `town_id` int(9) DEFAULT NULL,
  `zip` varchar(8) DEFAULT NULL,
  `office_flg` tinyint(1) DEFAULT NULL,
  `delete_flg` tinyint(1) DEFAULT NULL,
  `ken_name` varchar(8) DEFAULT NULL,
  `ken_furi` varchar(8) DEFAULT NULL,
  `city_name` varchar(24) DEFAULT NULL,
  `city_furi` varchar(24) DEFAULT NULL,
  `town_name` varchar(32) DEFAULT NULL,
  `town_furi` varchar(32) DEFAULT NULL,
  `town_memo` varchar(16) DEFAULT NULL,
  `kyoto_street` varchar(32) DEFAULT NULL,
  `block_name` varchar(64) DEFAULT NULL,
  `block_furi` varchar(64) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `office_furi` varchar(255) DEFAULT NULL,
  `office_address` varchar(255) DEFAULT NULL,
  `new_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:27:57
