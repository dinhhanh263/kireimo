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
-- Table structure for table `ips_bank_info`
--

DROP TABLE IF EXISTS `ips_bank_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ips_bank_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自動採番',
  `ips_account_no` int(11) NOT NULL COMMENT '口座データNo',
  `ips_customer_no` int(11) NOT NULL COMMENT 'IPS会員番号',
  `bank_code` int(11) NOT NULL COMMENT '銀行コード',
  `bank_name` varchar(128) NOT NULL COMMENT '銀行名',
  `bank_branch_code` int(11) NOT NULL COMMENT '支店コード',
  `bank_account_type` tinyint(4) NOT NULL COMMENT '預金種別''0-普通、1-当座、2-貯蓄',
  `bank_account_no` int(11) NOT NULL COMMENT '口座番号',
  `bank_account_name` varchar(128) NOT NULL COMMENT '口座名義',
  `price` int(11) NOT NULL COMMENT '金額',
  `course_id` int(11) NOT NULL COMMENT 'コース名',
  `customer_no` varchar(128) NOT NULL COMMENT '会員番号',
  `customer_id` int(11) NOT NULL COMMENT '会員ID',
  `sys_price` int(11) NOT NULL COMMENT 'コースTBLの金額',
  `reg_date` datetime DEFAULT NULL COMMENT '登録日時',
  `edit_date` datetime DEFAULT NULL COMMENT '更新日時',
  `del_flg` tinyint(4) NOT NULL COMMENT '削除フラグ',
  PRIMARY KEY (`id`),
  KEY `del_flg` (`del_flg`)
) ENGINE=InnoDB AUTO_INCREMENT=6687 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:15:05
