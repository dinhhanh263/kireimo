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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '0.回数制、1.月額制',
  `group_id` tinyint(4) DEFAULT NULL,
  `length` tinyint(4) NOT NULL COMMENT '所要時間',
  `price` int(11) DEFAULT NULL,
  `times` tinyint(4) NOT NULL COMMENT '回数',
  `period` smallint(6) DEFAULT NULL COMMENT '返金保証期間(日)',
  `memo` text NOT NULL,
  `zero_flg` tinyint(4) DEFAULT NULL COMMENT '通いホーダイフラグ 1.あり',
  `new_flg` tinyint(4) NOT NULL COMMENT '新月額フラグ 0.新月額以外、1.新月額',
  `old_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `interval_date` smallint(5) DEFAULT NULL COMMENT '施術可能間隔',
  `sales_start_date` date DEFAULT NULL COMMENT '販売開始日',
  `sales_end_date` date DEFAULT NULL COMMENT '販売終了日',
  `extension_period` smallint(6) DEFAULT NULL COMMENT '回数保証期間 - 返金保証期間(日)',
  `minor_plan_flg` tinyint(4) NOT NULL DEFAULT '0' COMMENT '未成年プランフラグ',
  `weekdays_plan_type` tinyint(4) DEFAULT NULL COMMENT '0:平日とく得プラン',
  `treatment_type` tinyint(4) NOT NULL COMMENT '0.脱毛、1.エステ、2.整体',
  `reservation_max_times` smallint(6) NOT NULL DEFAULT '1' COMMENT '同時予約最大数',
  `slenda_course_id` varchar(255) DEFAULT NULL COMMENT 'スレンダコースID',
  `next_course_id` int(11) DEFAULT NULL COMMENT '返金保証回数終了コースのID',
  `old_course_id` int(11) DEFAULT NULL COMMENT '返金保証回数終了コース前ID',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `group_id` (`group_id`),
  KEY `status` (`status`),
  KEY `del_flg` (`del_flg`)
) ENGINE=InnoDB AUTO_INCREMENT=2002 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:12:17
