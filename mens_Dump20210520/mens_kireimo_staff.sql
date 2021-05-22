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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(127) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `name_kana` varchar(127) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `class` smallint(6) DEFAULT NULL,
  `new_face` tinyint(4) NOT NULL,
  `treat_only` tinyint(4) NOT NULL,
  `auth_id` int(11) NOT NULL,
  `login_id` varchar(127) NOT NULL,
  `password` varchar(127) NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(63) NOT NULL,
  `address` varchar(127) NOT NULL,
  `parent_name` varchar(63) NOT NULL COMMENT '身元保証人名前',
  `parent_tel` varchar(63) NOT NULL COMMENT '身元保証人電話',
  `parent_address` varchar(127) NOT NULL COMMENT '身元保証人住所',
  `birthday` date NOT NULL,
  `begin_day` date NOT NULL,
  `end_day` date NOT NULL,
  `photo` varchar(255) NOT NULL,
  `memo` text NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  `employment_type` tinyint(4) DEFAULT NULL COMMENT '雇用形態',
  `job_type` tinyint(4) DEFAULT NULL COMMENT '職種',
  `position` tinyint(4) DEFAULT NULL COMMENT '役職',
  `shr_id` varchar(255) DEFAULT NULL COMMENT 'SmartHRID',
  `total_stars` smallint(6) DEFAULT '0',
  `active_stars` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `del_flg` (`del_flg`),
  KEY `status` (`status`),
  KEY `end_day` (`end_day`)
) ENGINE=InnoDB AUTO_INCREMENT=4489 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:29:29
