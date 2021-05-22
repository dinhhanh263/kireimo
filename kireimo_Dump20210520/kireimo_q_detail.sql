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
-- Table structure for table `q_detail`
--

DROP TABLE IF EXISTS `q_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `q_id` tinyint(4) NOT NULL COMMENT 'アンケートID',
  `group_id` tinyint(4) NOT NULL COMMENT 'グループID',
  `parent_flg` tinyint(4) NOT NULL COMMENT '親フラグ',
  `items_name` varchar(255) NOT NULL COMMENT '設問名',
  `items_max` tinyint(4) NOT NULL COMMENT '設問数',
  `input_id` tinyint(4) NOT NULL COMMENT '質問ID',
  `required_flg` tinyint(4) NOT NULL COMMENT '必須フラグ',
  `reg_date` datetime NOT NULL COMMENT '登録日時',
  `edit_date` datetime NOT NULL COMMENT '編集日時',
  `del_flg` tinyint(4) NOT NULL COMMENT '削除フラグ',
  PRIMARY KEY (`id`),
  KEY `q_id` (`q_id`),
  KEY `group_id` (`group_id`),
  KEY `parent_flg` (`parent_flg`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:14:28
