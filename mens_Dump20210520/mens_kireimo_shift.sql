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
-- Table structure for table `shift`
--

DROP TABLE IF EXISTS `shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` tinyint(4) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `shift_month` varchar(11) NOT NULL,
  `day1` int(11) NOT NULL,
  `day2` int(11) NOT NULL,
  `day3` int(11) NOT NULL,
  `day4` int(11) NOT NULL,
  `day5` int(11) NOT NULL,
  `day6` int(11) NOT NULL,
  `day7` int(11) NOT NULL,
  `day8` int(11) NOT NULL,
  `day9` int(11) NOT NULL,
  `day10` int(11) NOT NULL,
  `day11` int(11) NOT NULL,
  `day12` int(11) NOT NULL,
  `day13` int(11) NOT NULL,
  `day14` int(11) NOT NULL,
  `day15` int(11) NOT NULL,
  `day16` int(11) NOT NULL,
  `day17` int(11) NOT NULL,
  `day18` int(11) NOT NULL,
  `day19` int(11) NOT NULL,
  `day20` int(11) NOT NULL,
  `day21` int(11) NOT NULL,
  `day22` int(11) NOT NULL,
  `day23` int(11) NOT NULL,
  `day24` int(11) NOT NULL,
  `day25` int(11) NOT NULL,
  `day26` int(11) NOT NULL,
  `day27` int(11) NOT NULL,
  `day28` int(11) NOT NULL,
  `day29` int(11) NOT NULL,
  `day30` int(11) NOT NULL,
  `day31` int(11) NOT NULL,
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  `memo` varchar(255) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98397 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:28:22
