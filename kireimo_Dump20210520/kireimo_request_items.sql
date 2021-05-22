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
-- Table structure for table `request_items`
--

DROP TABLE IF EXISTS `request_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL COMMENT '顧客ID',
  `contract_id` int(11) NOT NULL COMMENT '契約ID',
  `shop_id` int(11) NOT NULL COMMENT '店舗ID',
  `reservation_id` int(11) NOT NULL COMMENT '予約ID',
  `type` tinyint(4) NOT NULL COMMENT '1.CC依頼2.店舗依頼',
  `status` tinyint(4) NOT NULL COMMENT '連絡事項1.月額退会(返金)2.クーオフ3.解約4.残高照会5.友人紹介6.返金(プラン変更差額等)7.プラン変更引落ストップ99.その他',
  `pay_back` int(11) NOT NULL COMMENT '返金額(店舗依頼)',
  `pay_back_cc` int(11) NOT NULL COMMENT '返金額(CC)',
  `last_visit_ym` varchar(7) NOT NULL COMMENT '月額最終来店月',
  `stop_request_date` date DEFAULT NULL COMMENT '引落ストップ依頼日',
  `transfer_date` date NOT NULL COMMENT '返金日・入金日',
  `process_approval` tinyint(4) NOT NULL COMMENT '経理処理（承認）',
  `process_detail` text NOT NULL COMMENT '経理処理（承認）',
  `process_status` tinyint(4) NOT NULL COMMENT '処理状況1.確認中2.対応中3.完了',
  `process_memo` text NOT NULL COMMENT '引き継ぎ内容記載',
  `transfer_commission` int(11) NOT NULL COMMENT '振込手数料',
  `amount` int(11) NOT NULL COMMENT '対応金額',
  `loan_respond` tinyint(4) NOT NULL COMMENT 'ローン部署対応',
  `loan_request_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'ローン会社依頼状況',
  `end_flg` tinyint(4) NOT NULL COMMENT '終了フラグ',
  `del_flg` tinyint(4) NOT NULL COMMENT '削除フラグ',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登録日時',
  `end_date` datetime DEFAULT NULL COMMENT '終了日時',
  `edit_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `type` (`type`),
  KEY `end_flg` (`end_flg`),
  KEY `del_flg` (`del_flg`),
  KEY `reg_date` (`reg_date`),
  KEY `shop_id` (`shop_id`),
  KEY `process_status` (`process_status`)
) ENGINE=InnoDB AUTO_INCREMENT=119003 DEFAULT CHARSET=utf8 COMMENT='依頼事項';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:13:03
