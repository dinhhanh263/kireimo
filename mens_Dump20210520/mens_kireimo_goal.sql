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
-- Table structure for table `goal`
--

DROP TABLE IF EXISTS `goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ym2` varchar(11) NOT NULL COMMENT '目標年月',
  `shop_id` text NOT NULL COMMENT '売上達成店舗',
  `shop_id2` text NOT NULL COMMENT '消化達成店舗',
  `shop_id3` text NOT NULL COMMENT '3%解約率店舗',
  `shop_id4` text NOT NULL COMMENT '5%解約率店舗',
  `shop_id5` text NOT NULL COMMENT '7%解約率店舗',
  `shop_id6` text NOT NULL COMMENT '80%成約率店舗',
  `shop_id7` text NOT NULL COMMENT '75%成約率店舗',
  `churn_all` tinyint(4) NOT NULL COMMENT '全店舗解約率:1-3%,2-5%,3-7%',
  `contract_all` tinyint(4) NOT NULL COMMENT '全店舗成約率:1-80%,2-75%',
  `sales_all` tinyint(4) NOT NULL COMMENT '全店舗売上:0.未達成1.達成',
  `del_flg` tinyint(4) NOT NULL,
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
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

-- Dump completed on 2021-05-20 12:29:35
