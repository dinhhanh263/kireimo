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
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL,
  `entry_name` varchar(63) NOT NULL,
  `entry_name_2` varchar(63) NOT NULL,
  `entry_name_kana` varchar(63) NOT NULL,
  `entry_name_kana_2` varchar(63) NOT NULL,
  `school_name` varchar(40) NOT NULL COMMENT '学校名',
  `sex` varchar(15) NOT NULL,
  `age` text NOT NULL,
  `birthday` date NOT NULL,
  `zip` varchar(10) NOT NULL,
  `pref` tinyint(4) NOT NULL COMMENT '都道府県',
  `now_address_1` text NOT NULL,
  `now_address_2` varchar(255) NOT NULL COMMENT '市区町村',
  `now_address_3` varchar(255) NOT NULL COMMENT '番地、ビル、マンション名',
  `now_tel_1` varchar(15) NOT NULL,
  `now_tel_2` varchar(15) NOT NULL,
  `now_email` varchar(63) NOT NULL,
  `line` varchar(63) NOT NULL,
  `station` varchar(31) NOT NULL COMMENT '最寄り駅',
  `shop` varchar(15) NOT NULL COMMENT '希望店舗 ',
  `type` tinyint(4) NOT NULL COMMENT '採用対象',
  `exeperience_c` tinyint(4) NOT NULL COMMENT '脱毛サロン勤務経験',
  `exeperience_y` varchar(15) NOT NULL,
  `opportunity` varchar(63) NOT NULL COMMENT '経験年数',
  `input_form_title_tab_self_pr` text NOT NULL,
  `comment` text NOT NULL COMMENT '応募のきっかけ',
  `mo_agent` tinyint(4) NOT NULL COMMENT '質問',
  `adcode` varchar(127) NOT NULL,
  `mo_id` tinyint(4) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `referer_url` text NOT NULL,
  `user_agent` text NOT NULL,
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  `reg_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
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

-- Dump completed on 2021-05-20 12:27:39
