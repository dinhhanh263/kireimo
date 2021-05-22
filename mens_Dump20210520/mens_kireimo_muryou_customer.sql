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
-- Table structure for table `muryou_customer`
--

DROP TABLE IF EXISTS `muryou_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muryou_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL,
  `name_kana` varchar(63) NOT NULL,
  `birthday` date NOT NULL,
  `age` varchar(11) NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `zip` varchar(11) NOT NULL,
  `pref` tinyint(4) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mail` varchar(63) NOT NULL,
  `tel` varchar(63) NOT NULL,
  `facebook` varchar(127) NOT NULL,
  `present` varchar(127) NOT NULL,
  `mo_agent` tinyint(4) NOT NULL,
  `adcode` varchar(127) NOT NULL,
  `mo_id` tinyint(4) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `referer_url` text NOT NULL,
  `user_agent` text NOT NULL,
  `reg_flg` tinyint(4) NOT NULL,
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
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

-- Dump completed on 2021-05-20 12:27:24
