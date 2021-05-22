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
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0.契約中、1.契約終了、2.クーリングオフ、3.中途解約、4.プラン変更、5.ローン取消、6.自動解約、7.契約待ち、8.返金保証回数終了',
  `new_contract_id` int(11) NOT NULL COMMENT 'プラン変更後の契約ID',
  `new_course_id` int(11) NOT NULL COMMENT '変更後のコースID',
  `old_contract_id` int(11) NOT NULL COMMENT '変更前の契約ID',
  `old_course_id` int(11) NOT NULL COMMENT '変更前のコースID',
  `reservation_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL COMMENT '解約時売上ID',
  `customer_id` int(11) NOT NULL COMMENT '会員ID',
  `shop_id` int(11) NOT NULL COMMENT '店舗ID',
  `staff_id` int(11) NOT NULL COMMENT 'カウンセリング担当ID',
  `course_id` int(11) NOT NULL COMMENT 'コースID',
  `times` tinyint(4) NOT NULL COMMENT 'コース回数',
  `contract_part` varchar(255) NOT NULL COMMENT '契約部位',
  `part_time_sum` int(11) NOT NULL,
  `pay_type` tinyint(4) NOT NULL COMMENT '支払方法',
  `pay_shop` int(11) NOT NULL COMMENT '月額引き落としの登録店舗',
  `pay_reg_date` date NOT NULL,
  `pay_complete_date` date NOT NULL COMMENT '支払完了日',
  `fixed_price` int(11) NOT NULL COMMENT '商品金額',
  `unit_price` int(11) NOT NULL COMMENT '消化単価',
  `surplus_unit_price` int(11) NOT NULL COMMENT '消化単価余剰分',
  `discount` int(11) NOT NULL COMMENT '値引き',
  `dis_type` tinyint(4) NOT NULL,
  `price` int(11) NOT NULL COMMENT '値引後金額',
  `payment` int(11) NOT NULL COMMENT '入金',
  `payment_cash` int(11) NOT NULL,
  `payment_transfer` int(11) NOT NULL COMMENT '銀行振込',
  `payment_card` int(11) NOT NULL,
  `card_type` tinyint(4) NOT NULL COMMENT 'JCB、VISA、MASTER、AMEX、DINERS、デビット',
  `payment_loan` int(11) NOT NULL,
  `payment_loan_kari` int(11) NOT NULL COMMENT '承認中ローン（保留）',
  `loan_status` tinyint(4) NOT NULL DEFAULT '3' COMMENT '1.承認済2.非承認3.承認中4.取消',
  `loan_date` date NOT NULL COMMENT 'ローン処理日',
  `loan_sid` int(11) NOT NULL COMMENT '承認計上の売上ID',
  `payment_coupon` int(11) NOT NULL,
  `balance` int(11) NOT NULL COMMENT '売掛金',
  `latest_date` date NOT NULL COMMENT '最終消化日',
  `r_times` tinyint(4) NOT NULL COMMENT '消化回数or来店回数（月額）',
  `part_flg` tinyint(4) NOT NULL COMMENT '0.月額下半身から、1.上半身に切替',
  `contract_date` date NOT NULL COMMENT '契約日',
  `end_date` date NOT NULL COMMENT '契約期間',
  `cancel_type` tinyint(4) NOT NULL,
  `cancel_date` date NOT NULL COMMENT '解約日',
  `if_cancel_date` tinyint(4) NOT NULL COMMENT 'プラン変更適応日',
  `repay` int(11) NOT NULL COMMENT '契約返金額',
  `memo` varchar(255) NOT NULL,
  `reg_date` datetime NOT NULL COMMENT '登録日時',
  `edit_date` datetime NOT NULL,
  `wait_flg` tinyint(4) NOT NULL COMMENT '契約待ちよりFlag',
  `chk_flg` tinyint(4) NOT NULL COMMENT '契約待ちよりFlag',
  `del_flg` tinyint(4) NOT NULL,
  `introducer_staff_id` int(11) DEFAULT '0' COMMENT '紹介元スタッフID',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`),
  KEY `del_flg` (`del_flg`)
) ENGINE=InnoDB AUTO_INCREMENT=7075 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:28:37
