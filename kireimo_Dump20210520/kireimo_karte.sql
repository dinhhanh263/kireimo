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
-- Table structure for table `karte`
--

DROP TABLE IF EXISTS `karte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `karte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL COMMENT '顧客ID',
  `reservation_id` int(11) NOT NULL COMMENT '契約ID',
  `course_id` int(11) NOT NULL COMMENT 'コースID',
  `r_times` tinyint(4) NOT NULL COMMENT '役務消化回数',
  `shop_id` int(11) NOT NULL COMMENT '店舗ID',
  `name` varchar(63) NOT NULL COMMENT '名前',
  `hope_date` date NOT NULL COMMENT '予約希望日',
  `hope_time` tinyint(4) NOT NULL COMMENT '予約希望時間ID',
  `tstaff_id` int(11) NOT NULL COMMENT '施術主担当',
  `tstaff_sub1_id` int(11) NOT NULL COMMENT '施術サブ担当1',
  `tstaff_sub2_id` int(11) NOT NULL COMMENT '施術サブ担当2',
  `foot` varchar(63) NOT NULL COMMENT '脚の甲・指',
  `skin_status` varchar(63) NOT NULL COMMENT 'トリートメント後の肌状態',
  `allergy` varchar(63) NOT NULL COMMENT 'アレルギー',
  `shaving` tinyint(4) NOT NULL COMMENT '剃毛',
  `finger` varchar(31) NOT NULL COMMENT '手の指',
  `drug1` tinyint(4) NOT NULL COMMENT '薬服用1',
  `drug2` tinyint(4) NOT NULL COMMENT '薬服用2',
  `datumo_v` varchar(63) NOT NULL COMMENT 'V',
  `datumo_io` varchar(63) NOT NULL COMMENT 'IO',
  `neck` varchar(63) NOT NULL COMMENT 'うなじ',
  `skin` varchar(31) NOT NULL COMMENT '皮膚',
  `sunburn` tinyint(4) NOT NULL COMMENT '日焼け',
  `tattoo` varchar(31) NOT NULL COMMENT 'タトゥー',
  `effect` tinyint(4) NOT NULL COMMENT '効果実感',
  `report` text NOT NULL COMMENT '特記事項',
  `repeat_part` varchar(63) NOT NULL COMMENT '繰り越し部位',
  `hair_quality` tinyint(4) NOT NULL COMMENT '毛質',
  `hair_amount` tinyint(4) NOT NULL COMMENT '毛量',
  `memo` text NOT NULL COMMENT '備考',
  `shaving_stat` varchar(63) NOT NULL COMMENT 'シェービングの状態',
  `skin_color` tinyint(4) NOT NULL COMMENT '肌色_v2',
  `skin_type` tinyint(4) NOT NULL COMMENT '肌質_v2',
  `face` tinyint(4) NOT NULL COMMENT 'お顔_v2',
  `machine_main` varchar(63) NOT NULL COMMENT '施術機械（メイン）',
  `machine_sub` varchar(63) NOT NULL COMMENT '施術機械（サブ）',
  `neck_j` int(11) NOT NULL COMMENT 'うなじ_J_v2',
  `neck_p` int(11) NOT NULL,
  `neck_stat` varchar(63) NOT NULL,
  `vio_j` int(11) NOT NULL,
  `vio_p` int(11) NOT NULL,
  `vio_v_stat` varchar(63) NOT NULL,
  `vio_v_height` int(11) NOT NULL,
  `vio_v_width` int(11) NOT NULL,
  `vio_i_stat` varchar(31) NOT NULL,
  `vio_i_width` int(11) NOT NULL,
  `vio_o_stat` varchar(31) NOT NULL,
  `foot_j` int(11) NOT NULL,
  `foot_p` int(11) NOT NULL,
  `foot_stat` varchar(63) NOT NULL,
  `foot_toe` varchar(63) NOT NULL,
  `foot_nevus` varchar(63) NOT NULL,
  `foot_scar` varchar(63) NOT NULL,
  `foot_tattoo` varchar(63) NOT NULL,
  `arm_j` int(11) NOT NULL,
  `arm_p` int(11) NOT NULL,
  `arm_stat` varchar(63) NOT NULL,
  `arm_nevus` varchar(63) NOT NULL,
  `arm_scar` varchar(63) NOT NULL,
  `arm_tattoo` varchar(63) NOT NULL,
  `back_j` int(11) NOT NULL,
  `back_p` int(11) NOT NULL,
  `back_stat` varchar(63) NOT NULL,
  `back_nevus` varchar(63) NOT NULL,
  `back_scar` varchar(63) NOT NULL,
  `back_tattoo` varchar(63) NOT NULL,
  `stomach_j` int(11) NOT NULL,
  `stomach_p` int(11) NOT NULL,
  `stomach_stat` varchar(63) NOT NULL,
  `stomach_nevus` varchar(63) NOT NULL,
  `stomach_scar` varchar(63) NOT NULL,
  `stomach_tattoo` varchar(63) NOT NULL,
  `face_j` int(11) NOT NULL,
  `face_p` int(11) NOT NULL,
  `face_stat` varchar(63) NOT NULL,
  `buttocks_j` int(11) NOT NULL COMMENT 'ヒップ_J_v1',
  `buttocks_p` int(11) NOT NULL COMMENT 'ヒップ_plus_v1',
  `buttocks_stat` varchar(63) NOT NULL COMMENT 'ヒップ_状態_v1',
  `buttocks_nevus` varchar(63) NOT NULL COMMENT 'ヒップ 部位(アザ)',
  `buttocks_scar` varchar(63) NOT NULL COMMENT 'ヒップ 部位(傷)',
  `buttocks_tattoo` varchar(63) NOT NULL COMMENT 'ヒップ 部位(タトゥー)',
  `notice` text NOT NULL,
  `gel_type` tinyint(4) NOT NULL COMMENT 'ジェルの種類 1.スリム、2.美白',
  `repeat_part_chk` tinyint(4) NOT NULL,
  `repeat_part_memo` text NOT NULL,
  `communication` text NOT NULL,
  `karte_ver` tinyint(4) NOT NULL,
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reservation_id` (`reservation_id`),
  KEY `del_flg` (`del_flg`)
) ENGINE=InnoDB AUTO_INCREMENT=2940337 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:11:48
