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
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL COMMENT '0.契約中、1.契約終了、2.クーリングオフ、3.中途解約、4.プラン変更、5.ローン取消、6.自動解約、7.契約待ち、8.返金保証回数終了、9.期限切れ解約、10.未成年プラン終了、11.月額休会中',
  `new_contract_id` int(11) NOT NULL COMMENT '変更後の契約ID',
  `new_course_id` int(11) NOT NULL,
  `old_contract_id` int(11) NOT NULL,
  `old_course_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL COMMENT '解約時売上ID',
  `customer_id` int(11) NOT NULL COMMENT '会員ID',
  `shop_id` int(11) NOT NULL COMMENT '店舗ID',
  `staff_id` int(11) NOT NULL COMMENT 'カウンセリング担当ID',
  `option_name` tinyint(4) NOT NULL COMMENT 'オプション',
  `course_id` int(11) NOT NULL COMMENT 'コースID',
  `times` tinyint(4) NOT NULL COMMENT 'コース回数',
  `pay_type` tinyint(4) NOT NULL COMMENT '支払方法',
  `pay_shop` int(11) NOT NULL COMMENT '月額引き落としの登録店舗',
  `pay_reg_date` date NOT NULL COMMENT '引落手続日',
  `payinfo_del_flg` tinyint(4) NOT NULL COMMENT 'カード情報削除フラグ',
  `pay_complete_date` date NOT NULL COMMENT '支払完了日',
  `fixed_price` int(11) NOT NULL COMMENT '商品金額',
  `discount` int(11) NOT NULL COMMENT '値引き',
  `dis_type` tinyint(4) NOT NULL COMMENT '割引タイプ',
  `price` int(11) NOT NULL COMMENT '値引後金額',
  `payment` int(11) NOT NULL COMMENT '入金',
  `payment_cash` int(11) NOT NULL,
  `payment_transfer` int(11) NOT NULL COMMENT '銀行振込',
  `payment_card` int(11) NOT NULL,
  `card_type` tinyint(4) NOT NULL COMMENT 'JCB、VISA、MASTER、AMEX、DINERS、デビット',
  `payment_loan` int(11) NOT NULL,
  `payment_loan_kari` int(11) NOT NULL COMMENT '承認中ローン(保留）',
  `loan_status` tinyint(4) NOT NULL DEFAULT '3' COMMENT '1.承認済2.非承認3.承認中4.取消5.クレピコ6.承認中(OK)7.立替済8.完済',
  `loan_application_date` date NOT NULL COMMENT 'ローン申込日',
  `loan_date` date NOT NULL COMMENT 'ローン処理日',
  `loan_sid` int(11) NOT NULL COMMENT '承認計上売上ID',
  `loan_company_id` int(11) NOT NULL COMMENT 'ローン会社ID',
  `loan_recept_no` varchar(15) NOT NULL COMMENT 'ローン受付番号',
  `payment_coupon` int(11) NOT NULL,
  `balance` int(11) NOT NULL COMMENT '売掛金',
  `latest_date` date NOT NULL COMMENT '最終消化日',
  `r_times` tinyint(4) NOT NULL COMMENT '消化回数or来店回数（月額）',
  `part_flg` tinyint(4) NOT NULL COMMENT '0.月額下半身から、1.上半身に切替。未使用',
  `contract_date` date NOT NULL COMMENT '契約日',
  `end_date` date NOT NULL COMMENT '契約期間',
  `cancel_type` tinyint(4) NOT NULL,
  `cancel_date` date NOT NULL COMMENT '解約日(変更日)',
  `if_cancel_date` tinyint(4) NOT NULL COMMENT 'プラン変更適応日',
  `start_ym` int(6) NOT NULL COMMENT '施術開始予定年月(月額)',
  `repay` int(11) NOT NULL COMMENT '契約返金額',
  `memo` varchar(255) NOT NULL,
  `reg_date` datetime NOT NULL COMMENT '登録日時',
  `edit_date` datetime NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `extension_flg` tinyint(4) DEFAULT NULL COMMENT '施術保証期間延長Flag',
  `extension_edit_date` date DEFAULT NULL COMMENT '保証期間延長登録日',
  `wait_flg` tinyint(4) NOT NULL COMMENT '契約待ちよりFlag',
  `chk_flg` tinyint(4) NOT NULL,
  `conversion_flg` tinyint(4) NOT NULL COMMENT 'プラン組替フラグ',
  `bad_debt_flg` tinyint(1) NOT NULL DEFAULT '0' COMMENT '貸し倒れフラグ',
  `terminate_day` date DEFAULT NULL COMMENT '解約日',
  `crepico_flg` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'クレピコ登録必要フラグ',
  `loan_cancel_reason` tinyint(4) DEFAULT NULL COMMENT '1.非承認、2.経過キャンセル、3.支払方法変更、4.組額変更、5.クーオフ、6.解約、7.延滞自動解約、8.店舗エラー、99.その他',
  `extension_end_date` date DEFAULT NULL COMMENT '猶予期間終了日',
  `terminate_pending_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '解約保留ステータス 1.自動解約保留',
  `sp_penalty_cancel_times` tinyint(4) NOT NULL DEFAULT '0' COMMENT '返金保証回数終了SPプラン消化キャンセル回数',
  `sp_cancel_auto_pending_reg_date` datetime NOT NULL COMMENT 'SP自動解約保留登録日時',
  `loan_cancel_before_contract_id` int(11) NOT NULL DEFAULT '0' COMMENT 'ローン取り消し時前契約ID',
  `loan_delay_flg` tinyint(4) NOT NULL COMMENT 'ローン延滞者フラグ',
  `slenda_contract_id` varchar(255) DEFAULT NULL COMMENT 'スレンダ契約ID',
  `succead_auto_cancel_flg` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'サクシード自動解約フラグ',
  `option_contract_id` int(11) NOT NULL DEFAULT '0',
  `introducer_staff_id` int(11) DEFAULT '0' COMMENT '紹介元スタッフID',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`),
  KEY `del_flg` (`del_flg`),
  KEY `contract_date` (`contract_date`),
  KEY `pay_complete_date` (`pay_complete_date`),
  KEY `payment_loan` (`payment_loan`),
  KEY `loan_status` (`loan_status`)
) ENGINE=InnoDB AUTO_INCREMENT=574014 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:14:04
