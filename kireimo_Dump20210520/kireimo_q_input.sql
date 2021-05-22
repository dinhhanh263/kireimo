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
-- Table structure for table `q_input`
--

DROP TABLE IF EXISTS `q_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q_input` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '質問タイプ',
  `reg_date` datetime NOT NULL COMMENT '登録日時',
  `edit_date` datetime NOT NULL COMMENT '編集日時',
  `del_flg` tinyint(4) NOT NULL COMMENT '削除フラグ',
  `choices1` varchar(63) NOT NULL COMMENT '選択肢1',
  `choices2` varchar(63) NOT NULL COMMENT '選択肢2',
  `choices3` varchar(63) NOT NULL COMMENT '選択肢3',
  `choices4` varchar(63) NOT NULL COMMENT '選択肢4',
  `choices5` varchar(63) NOT NULL COMMENT '選択肢5',
  `choices6` varchar(63) NOT NULL COMMENT '選択肢6',
  `choices7` varchar(63) NOT NULL COMMENT '選択肢7',
  `choices8` varchar(63) NOT NULL COMMENT '選択肢8',
  `choices9` varchar(63) NOT NULL COMMENT '選択肢9',
  `choices10` varchar(63) NOT NULL COMMENT '選択肢10',
  `choices11` varchar(63) NOT NULL COMMENT '選択肢11',
  `choices12` varchar(63) NOT NULL COMMENT '選択肢12',
  `choices13` varchar(63) NOT NULL COMMENT '選択肢13',
  `choices14` varchar(63) NOT NULL COMMENT '選択肢14',
  `choices15` varchar(63) NOT NULL COMMENT '選択肢15',
  `choices16` varchar(63) NOT NULL COMMENT '選択肢16',
  `choices17` varchar(63) NOT NULL COMMENT '選択肢17',
  `choices18` varchar(63) NOT NULL COMMENT '選択肢18',
  `choices19` varchar(63) NOT NULL COMMENT '選択肢19',
  `choices20` varchar(63) NOT NULL COMMENT '選択肢20',
  PRIMARY KEY (`id`),
  KEY `del_flg` (`del_flg`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:13:33
