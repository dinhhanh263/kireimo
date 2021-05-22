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
-- Table structure for table `sales_report`
--

DROP TABLE IF EXISTS `sales_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `sales_month` varchar(31) NOT NULL COMMENT '売上月',
  `sales_day` varchar(31) NOT NULL COMMENT '売上日',
  `cnt_rsv` int(11) NOT NULL COMMENT '予約件数',
  `cnt_comein` int(11) NOT NULL COMMENT '来店件数',
  `cnt_contract` int(11) NOT NULL COMMENT '契約件数',
  `cnt_nocontract` int(11) NOT NULL COMMENT '未契約件数',
  `cnt_monthly` int(11) NOT NULL COMMENT '月額件数',
  `cnt_pack` int(11) NOT NULL COMMENT 'パック件数',
  `total_cash` int(15) NOT NULL COMMENT '現金',
  `total_card` int(15) NOT NULL COMMENT 'カード',
  `total_transfer` int(15) NOT NULL COMMENT '銀行振込',
  `total_loan` int(15) NOT NULL COMMENT 'ローン',
  `total_without_balance` int(15) NOT NULL COMMENT '売上（売掛金を含まれず）',
  `total_balance` int(15) NOT NULL COMMENT '売掛金',
  `total_payment` int(15) NOT NULL COMMENT '売掛回収金（残金支払）',
  `reg_date` datetime NOT NULL COMMENT '最新登録日時',
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

-- Dump completed on 2021-05-20 12:28:40
