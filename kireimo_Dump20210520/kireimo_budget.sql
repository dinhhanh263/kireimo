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
-- Table structure for table `budget`
--

DROP TABLE IF EXISTS `budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_ym` date NOT NULL DEFAULT '0000-00-00',
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `new_sales` int(11) NOT NULL DEFAULT '0' COMMENT '新規契約金額目標',
  `append_sales` int(11) NOT NULL DEFAULT '0' COMMENT '追加契約金額目標',
  `shot_sales` int(11) NOT NULL DEFAULT '0' COMMENT 'ショット金額目標',
  `middle_sales` int(11) NOT NULL DEFAULT '0' COMMENT 'プラン変更金額目標',
  `monthly_sales` int(11) NOT NULL DEFAULT '0' COMMENT '月額支払金額目標',
  `product_sales` int(11) NOT NULL DEFAULT '0' COMMENT '物販売上金額目標',
  `incidental_sales` int(11) NOT NULL DEFAULT '0' COMMENT '消化付帯金額目標',
  `settlement_sales` int(11) NOT NULL DEFAULT '0' COMMENT '解約清算金額目標',
  `cancel_loss` int(11) NOT NULL DEFAULT '0' COMMENT 'プラン解約金額目標',
  `coolingoff_loss` int(11) NOT NULL DEFAULT '0' COMMENT 'クーリングオフ金額目標',
  `digestion_count` smallint(6) NOT NULL DEFAULT '0' COMMENT '純消化数',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1821 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:10:51
