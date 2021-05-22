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
-- Table structure for table `loan_bank`
--

DROP TABLE IF EXISTS `loan_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '口座情報ID',
  `loan_info_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL COMMENT '会員ID',
  `bank_name` varchar(128) DEFAULT NULL COMMENT '銀行名 半角カナのみ',
  `bank_code` varchar(128) DEFAULT NULL COMMENT '銀行コード 半角数字のみ',
  `bank_branch` varchar(128) DEFAULT NULL COMMENT '支店名 半角カナのみ',
  `bank_branch_code` varchar(128) DEFAULT NULL COMMENT '支店コード 半角数字のみ',
  `bank_account_type` tinyint(4) DEFAULT '1' COMMENT '口座種別	 1-普通, 2-当座, 3-貯蓄',
  `bank_account_no` varchar(7) DEFAULT NULL COMMENT '口座番号	 半角数字のみ 7桁番号 通常は頭を0埋めする',
  `bank_account_name` varchar(128) DEFAULT NULL COMMENT '口座名義 半角カナのみ',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登録日時',
  `edit_date` datetime NOT NULL COMMENT '更新日時',
  `del_flg` tinyint(4) NOT NULL COMMENT '削除フラグ	 1-削除',
  `ng_flg` tinyint(4) NOT NULL COMMENT 'NGフラグ	 1-NG',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6614 DEFAULT CHARSET=utf8 COMMENT='ローン支払用口座情報';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:15:20
