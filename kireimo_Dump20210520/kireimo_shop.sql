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
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `assign` tinyint(4) NOT NULL,
  `name` varchar(63) NOT NULL,
  `name_kana` varchar(63) NOT NULL,
  `name_alias` varchar(11) NOT NULL COMMENT '略名',
  `old_name` varchar(63) NOT NULL COMMENT '旧店舗名',
  `old_name_kana` varchar(63) NOT NULL COMMENT 'キュウテンポメイ（カナ）',
  `code` varchar(11) NOT NULL,
  `open_date` varchar(63) NOT NULL,
  `rsv_date` varchar(63) NOT NULL,
  `area` tinyint(4) NOT NULL,
  `zip` varchar(127) NOT NULL,
  `pref` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mail` varchar(127) NOT NULL,
  `tel` varchar(63) NOT NULL,
  `rank` tinyint(1) NOT NULL,
  `open_time` varchar(127) NOT NULL,
  `day_off` varchar(255) NOT NULL,
  `counseling_rooms` varchar(4) NOT NULL COMMENT 'カウンセリングルーム数',
  `current_c_rooms` varchar(4) NOT NULL COMMENT '実際カウンセリングルーム数',
  `medical_rooms` varchar(4) NOT NULL COMMENT '施術ルーム数',
  `current_m_rooms` varchar(4) NOT NULL COMMENT '実際施術ルーム数',
  `pack_rooms` varchar(4) NOT NULL COMMENT 'パックルーム数',
  `vip_rooms` varchar(4) NOT NULL COMMENT 'VIPルーム数',
  `current_vip_rooms` varchar(4) NOT NULL COMMENT '実際VIPルーム数',
  `machines` tinyint(4) NOT NULL COMMENT '機械台数',
  `access` text NOT NULL,
  `card` tinyint(4) NOT NULL,
  `park` tinyint(4) NOT NULL,
  `icon1` tinyint(4) NOT NULL,
  `icon2` tinyint(4) NOT NULL,
  `icon3` tinyint(4) NOT NULL,
  `shop_img` varchar(127) NOT NULL,
  `shop_img2` varchar(127) NOT NULL,
  `shop_img3` varchar(127) NOT NULL,
  `notice` text NOT NULL,
  `memo` varchar(255) NOT NULL,
  `url` varchar(122) DEFAULT NULL,
  `ryfety_id` varchar(255) NOT NULL COMMENT 'ライフティ加盟店支店ID',
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `detail_area` tinyint(4) DEFAULT NULL COMMENT '都道府県内エリアコード',
  `detail_area_name` varchar(63) DEFAULT NULL COMMENT '都道府県内エリア名',
  `rsv_date_treatment` varchar(63) DEFAULT NULL,
  `latitude` double(10,7) DEFAULT NULL COMMENT '緯度',
  `longitude` double(10,7) DEFAULT NULL COMMENT '経度',
  `block_code` tinyint(4) DEFAULT NULL COMMENT 'ブロックコード',
  `analytics_area_code` tinyint(4) DEFAULT NULL COMMENT '管理会計エリアコード',
  `old_block_code` tinyint(4) DEFAULT NULL COMMENT '前ブロックコード',
  `close_date` varchar(63) DEFAULT NULL,
  `area_code` tinyint(4) DEFAULT NULL,
  `gipv4` varchar(255) DEFAULT NULL COMMENT '店舗GIP',
  `chiropractic_flg` tinyint(1) NOT NULL DEFAULT '0' COMMENT '整体フラグ',
  `esthetics_flg` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'エステフラグ',
  `ninety_time_rooms` varchar(4) NOT NULL COMMENT '90分施術ルーム数',
  `sixty_time_rooms` varchar(4) NOT NULL COMMENT '60分施術ルーム数',
  `thirty_time_rooms` varchar(4) NOT NULL COMMENT '30分施術ルーム数',
  `special_rooms` varchar(4) NOT NULL COMMENT '時間変動部屋数(整体ルーム)',
  `class` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `del_flg` (`del_flg`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:14:37
