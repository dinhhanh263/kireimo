-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: kireimo-dev-db.mysql.database.azure.com    Database: kireimo
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
-- Table structure for table `adcode`
--

DROP TABLE IF EXISTS `adcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` varchar(63) NOT NULL,
  `adcode` varchar(63) NOT NULL,
  `name` varchar(255) NOT NULL,
  `request_id` int(11) NOT NULL,
  `site` tinyint(4) NOT NULL COMMENT 'サイト名',
  `page_id` int(11) NOT NULL,
  `page_name` varchar(63) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `ad_group` tinyint(4) NOT NULL COMMENT '1.アフィリエイト2.リスティング3.ブログ4.その他',
  `free_dial` varchar(31) NOT NULL,
  `flyer_no` varchar(31) NOT NULL COMMENT 'チラシ広告番号',
  `cost1` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `release_date` varchar(63) NOT NULL,
  `maximum` int(11) NOT NULL,
  `hide_flg` int(11) NOT NULL,
  `job_flg` tinyint(4) NOT NULL,
  `form_type` tinyint(1) NOT NULL,
  `memo` varchar(255) NOT NULL COMMENT '店舗表示文章',
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  `del_flg` int(1) NOT NULL,
  `del_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `adcode` (`adcode`),
  KEY `flyer_no` (`flyer_no`),
  KEY `name` (`name`),
  KEY `del_flg` (`del_flg`)
) ENGINE=InnoDB AUTO_INCREMENT=6983 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:14:22
