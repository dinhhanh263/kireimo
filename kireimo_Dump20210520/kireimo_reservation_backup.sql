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
-- Table structure for table `reservation_backup`
--

DROP TABLE IF EXISTS `reservation_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contract_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `r_times` tinyint(4) NOT NULL COMMENT '施術回数',
  `staff_id` int(11) NOT NULL COMMENT '受付担当ID',
  `cstaff_id` int(11) NOT NULL COMMENT 'カウンセリング担当',
  `tstaff_id` int(11) NOT NULL COMMENT '施術主担当',
  `tstaff_sub1_id` int(11) NOT NULL COMMENT '施術サブ担当1',
  `tstaff_sub2_id` int(11) NOT NULL COMMENT '施術サブ担当2',
  `rstaff_id` int(11) NOT NULL COMMENT 'レジ担当',
  `ccstaff_id` int(11) NOT NULL COMMENT 'CC担当',
  `sales_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1.カウンセリング2.トリートメント3.キャンセル7.売掛回収8.月額支払10.プラン変更（レジ）11.その他',
  `rsv_status` tinyint(4) NOT NULL COMMENT '予約状況(13カウンセリング戻り,14当日キャンセル)',
  `hope_date` date NOT NULL,
  `hope_time` tinyint(4) NOT NULL,
  `part` text NOT NULL COMMENT '1.上半身2.下半身',
  `length` tinyint(4) NOT NULL COMMENT '実際所要時間',
  `persons` tinyint(4) NOT NULL,
  `route` tinyint(4) NOT NULL DEFAULT '1' COMMENT '経由',
  `point` int(11) NOT NULL,
  `hp_flg` tinyint(4) NOT NULL COMMENT 'ホットペッパー月額フラグ',
  `coupon` tinyint(4) NOT NULL COMMENT 'HP利用クーポン',
  `prize` tinyint(4) NOT NULL COMMENT '当選賞品',
  `echo` varchar(255) NOT NULL,
  `mag` varchar(255) NOT NULL,
  `hope_campaign` varchar(31) NOT NULL,
  `hope_time_range` varchar(255) NOT NULL,
  `hopes_discount` tinyint(4) NOT NULL,
  `introducer` varchar(63) NOT NULL,
  `introducer_type` tinyint(4) NOT NULL,
  `special` tinyint(4) NOT NULL,
  `pay` tinyint(4) NOT NULL,
  `count` varchar(11) NOT NULL,
  `balance` varchar(11) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '来店状況 0:-,11:来店,1:来店なし,2:未契約,3:契約月額,4:契約6回,5:契約10回,6:契約12回,7:契約15回,8:契約18回,9:カスタマイズ月額,10:カスタマイズパック,13:契約3回,14:体験,15:通い放題,16:全身月額プラン,17:全身1年プラン,18:全身2年プラン,19:全身SPプラン,20:平日とく得1年プラン,21:平日とく得2年プラン:22:平日とく得スペシャルプラン,23:U-19応援プラン',
  `con_status` tinyint(4) NOT NULL,
  `3dmail_status` tinyint(4) NOT NULL COMMENT '確認状況(3日前mail)',
  `premail_status` tinyint(4) NOT NULL COMMENT '確認状況(前日mail)',
  `preday_status` tinyint(4) NOT NULL COMMENT '確認状況(前日tel)',
  `preday_staff_id` int(11) NOT NULL COMMENT '前日確認担当',
  `preday_cnt` tinyint(4) NOT NULL COMMENT '前日架電回数',
  `today_status` tinyint(4) NOT NULL COMMENT '確認状況(予約時tel)',
  `today_staff_id` int(11) NOT NULL COMMENT '予約時確認担当',
  `today_cnt` tinyint(4) NOT NULL COMMENT '予約時架電回数',
  `comment` text NOT NULL,
  `shop_request` tinyint(4) NOT NULL COMMENT '店舗依頼事項',
  `cc_request` tinyint(4) NOT NULL COMMENT 'CC依頼事項',
  `stop_request_date` date NOT NULL COMMENT '引落ストップ依頼日',
  `memo` text NOT NULL,
  `memo2` text NOT NULL COMMENT '予約表に記載',
  `memo3` text NOT NULL COMMENT '本社用',
  `memo4` text NOT NULL COMMENT '備考（CC用）',
  `memo5` text NOT NULL COMMENT '備考(ローン関連)',
  `reg_flg` tinyint(4) NOT NULL COMMENT '1：レジ精算有り',
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `rebook_flg` tinyint(4) NOT NULL,
  `act_flg` tinyint(4) NOT NULL COMMENT '1.予約変更2.予約キャンセル',
  `adcode` varchar(127) NOT NULL,
  `flyer_no` int(11) NOT NULL COMMENT 'チラシ番号',
  `new_flg` tinyint(4) NOT NULL COMMENT '新規契約フラッグ',
  `cancel_flg` tinyint(4) NOT NULL COMMENT '0:カウンセリング,1:施術（パック）2:施術（月額）,3:その他-add by 140715',
  `chk_flg` tinyint(4) NOT NULL,
  `move_flg` tinyint(4) NOT NULL COMMENT '店舗移動フラグ',
  `cancel_before_type` tinyint(4) DEFAULT NULL COMMENT 'キャンセル前タイプ',
  `cancel_before_id` int(11) DEFAULT NULL COMMENT 'キャンセル前ID',
  `cancel_date` date DEFAULT NULL COMMENT 'キャンセル日',
  `delay_time_status` tinyint(4) NOT NULL COMMENT '遅刻時間（1:10分未満 2:10分以上）',
  `delay_time_reg_date` datetime NOT NULL COMMENT '遅刻連絡登録日時',
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `customer_id` (`customer_id`),
  KEY `hope_date` (`hope_date`),
  KEY `room_id` (`room_id`),
  KEY `reg_date` (`reg_date`),
  KEY `type` (`type`),
  KEY `shop_id` (`shop_id`),
  KEY `hope_time` (`hope_time`),
  KEY `length` (`length`),
  KEY `sales_id` (`sales_id`),
  KEY `contract_id` (`contract_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8534733 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:15:35
