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
-- Table structure for table `q_answer`
--

DROP TABLE IF EXISTS `q_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `q_id` tinyint(4) NOT NULL COMMENT 'アンケートID',
  `reservation_id` int(11) NOT NULL COMMENT '予約ID',
  `reg_date` datetime NOT NULL COMMENT '登録日時',
  `edit_date` datetime NOT NULL COMMENT '編集日時',
  `del_flg` tinyint(4) NOT NULL COMMENT '削除フラグ',
  `q1_1` text NOT NULL,
  `q1_2` text NOT NULL,
  `q1_3` text NOT NULL,
  `q1_4` text NOT NULL,
  `q1_5` text NOT NULL,
  `q1_6` text NOT NULL,
  `q1_7` text NOT NULL,
  `q1_8` text NOT NULL,
  `q1_9` text NOT NULL,
  `q1_10` text NOT NULL,
  `q2_1` text NOT NULL,
  `q2_2` text NOT NULL,
  `q2_3` text NOT NULL,
  `q2_4` text NOT NULL,
  `q2_5` text NOT NULL,
  `q2_6` text NOT NULL,
  `q2_7` text NOT NULL,
  `q2_8` text NOT NULL,
  `q2_9` text NOT NULL,
  `q2_10` text NOT NULL,
  `q3_1` text NOT NULL,
  `q3_2` text NOT NULL,
  `q3_3` text NOT NULL,
  `q3_4` text NOT NULL,
  `q3_5` text NOT NULL,
  `q3_6` text NOT NULL,
  `q3_7` text NOT NULL,
  `q3_8` text NOT NULL,
  `q3_9` text NOT NULL,
  `q3_10` text NOT NULL,
  `q4_1` text NOT NULL,
  `q4_2` text NOT NULL,
  `q4_3` text NOT NULL,
  `q4_4` text NOT NULL,
  `q4_5` text NOT NULL,
  `q4_6` text NOT NULL,
  `q4_7` text NOT NULL,
  `q4_8` text NOT NULL,
  `q4_9` text NOT NULL,
  `q4_10` text NOT NULL,
  `q5_1` text NOT NULL,
  `q5_2` text NOT NULL,
  `q5_3` text NOT NULL,
  `q5_4` text NOT NULL,
  `q5_5` text NOT NULL,
  `q5_6` text NOT NULL,
  `q5_7` text NOT NULL,
  `q5_8` text NOT NULL,
  `q5_9` text NOT NULL,
  `q5_10` text NOT NULL,
  `q6_1` text NOT NULL,
  `q6_2` text NOT NULL,
  `q6_3` text NOT NULL,
  `q6_4` text NOT NULL,
  `q6_5` text NOT NULL,
  `q6_6` text NOT NULL,
  `q6_7` text NOT NULL,
  `q6_8` text NOT NULL,
  `q6_9` text NOT NULL,
  `q6_10` text NOT NULL,
  `q7_1` text NOT NULL,
  `q7_2` text NOT NULL,
  `q7_3` text NOT NULL,
  `q7_4` text NOT NULL,
  `q7_5` text NOT NULL,
  `q7_6` text NOT NULL,
  `q7_7` text NOT NULL,
  `q7_8` text NOT NULL,
  `q7_9` text NOT NULL,
  `q7_10` text NOT NULL,
  `q8_1` text NOT NULL,
  `q8_2` text NOT NULL,
  `q8_3` text NOT NULL,
  `q8_4` text NOT NULL,
  `q8_5` text NOT NULL,
  `q8_6` text NOT NULL,
  `q8_7` text NOT NULL,
  `q8_8` text NOT NULL,
  `q8_9` text NOT NULL,
  `q8_10` text NOT NULL,
  `q9_1` text NOT NULL,
  `q9_2` text NOT NULL,
  `q9_3` text NOT NULL,
  `q9_4` text NOT NULL,
  `q9_5` text NOT NULL,
  `q9_6` text NOT NULL,
  `q9_7` text NOT NULL,
  `q9_8` text NOT NULL,
  `q9_9` text NOT NULL,
  `q9_10` text NOT NULL,
  `q10_1` text NOT NULL,
  `q10_2` text NOT NULL,
  `q10_3` text NOT NULL,
  `q10_4` text NOT NULL,
  `q10_5` text NOT NULL,
  `q10_6` text NOT NULL,
  `q10_7` text NOT NULL,
  `q10_8` text NOT NULL,
  `q10_9` text NOT NULL,
  `q10_10` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `del_flg` (`del_flg`),
  KEY `q_id` (`q_id`),
  KEY `reservation_id` (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1494460 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:11:26
