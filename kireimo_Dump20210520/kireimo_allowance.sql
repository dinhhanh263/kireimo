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
-- Table structure for table `allowance`
--

DROP TABLE IF EXISTS `allowance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allowance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `ym` varchar(15) NOT NULL COMMENT '手当発生年月',
  `work_location` tinyint(4) NOT NULL COMMENT '出勤形態',
  `base_salary` int(11) NOT NULL COMMENT '基本給',
  `type` tinyint(4) NOT NULL COMMENT '役職',
  `coun_allowance` int(11) NOT NULL COMMENT 'ｶｳﾝｾﾘﾝｸﾞ手当',
  `trea_allowance` int(11) NOT NULL COMMENT '施術手当',
  `train_allowance` int(11) NOT NULL COMMENT '研修手当',
  `trav_allowance` int(11) NOT NULL COMMENT '出張手当',
  `intro_allowance` int(11) NOT NULL COMMENT '紹介手当',
  `president_award` int(11) NOT NULL COMMENT '社長賞',
  `achi_allowance` int(11) NOT NULL COMMENT '目標達成手当',
  `sales` int(11) NOT NULL COMMENT '社販分',
  `del_flg` tinyint(4) NOT NULL,
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `del_flg` (`del_flg`),
  KEY `staff_id` (`staff_id`),
  KEY `ym` (`ym`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:11:11
