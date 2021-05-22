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
-- Table structure for table `store_manager`
--

DROP TABLE IF EXISTS `store_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `target_year_month` date NOT NULL,
  `shop1_store_manager_id` int(11) NOT NULL,
  `shop2_store_manager_id` int(11) NOT NULL,
  `shop3_store_manager_id` int(11) NOT NULL,
  `shop4_store_manager_id` int(11) NOT NULL,
  `shop5_store_manager_id` int(11) NOT NULL,
  `shop6_store_manager_id` int(11) NOT NULL,
  `shop7_store_manager_id` int(11) NOT NULL,
  `shop8_store_manager_id` int(11) NOT NULL,
  `shop9_store_manager_id` int(11) NOT NULL,
  `shop10_store_manager_id` int(11) NOT NULL,
  `shop11_store_manager_id` int(11) NOT NULL,
  `shop12_store_manager_id` int(11) NOT NULL,
  `shop13_store_manager_id` int(11) NOT NULL,
  `shop14_store_manager_id` int(11) NOT NULL,
  `shop15_store_manager_id` int(11) NOT NULL,
  `shop16_store_manager_id` int(11) NOT NULL,
  `shop17_store_manager_id` int(11) NOT NULL,
  `shop18_store_manager_id` int(11) NOT NULL,
  `shop19_store_manager_id` int(11) NOT NULL,
  `shop20_store_manager_id` int(11) NOT NULL,
  `shop21_store_manager_id` int(11) NOT NULL,
  `shop22_store_manager_id` int(11) NOT NULL,
  `shop23_store_manager_id` int(11) NOT NULL,
  `shop24_store_manager_id` int(11) NOT NULL,
  `shop25_store_manager_id` int(11) NOT NULL,
  `shop26_store_manager_id` int(11) NOT NULL,
  `shop27_store_manager_id` int(11) NOT NULL,
  `shop28_store_manager_id` int(11) NOT NULL,
  `shop29_store_manager_id` int(11) NOT NULL,
  `shop30_store_manager_id` int(11) NOT NULL,
  `shop31_store_manager_id` int(11) NOT NULL,
  `shop32_store_manager_id` int(11) NOT NULL,
  `shop33_store_manager_id` int(11) NOT NULL,
  `shop34_store_manager_id` int(11) NOT NULL,
  `shop35_store_manager_id` int(11) NOT NULL,
  `shop36_store_manager_id` int(11) NOT NULL,
  `shop37_store_manager_id` int(11) NOT NULL,
  `shop38_store_manager_id` int(11) NOT NULL,
  `shop39_store_manager_id` int(11) NOT NULL,
  `shop40_store_manager_id` int(11) NOT NULL,
  `shop41_store_manager_id` int(11) NOT NULL,
  `shop42_store_manager_id` int(11) NOT NULL,
  `shop43_store_manager_id` int(11) NOT NULL,
  `shop44_store_manager_id` int(11) NOT NULL,
  `shop45_store_manager_id` int(11) NOT NULL,
  `shop46_store_manager_id` int(11) NOT NULL,
  `shop47_store_manager_id` int(11) NOT NULL,
  `shop48_store_manager_id` int(11) NOT NULL,
  `shop49_store_manager_id` int(11) NOT NULL,
  `shop50_store_manager_id` int(11) NOT NULL,
  `shop51_store_manager_id` int(11) NOT NULL,
  `shop52_store_manager_id` int(11) NOT NULL,
  `shop53_store_manager_id` int(11) NOT NULL,
  `shop54_store_manager_id` int(11) NOT NULL,
  `shop55_store_manager_id` int(11) NOT NULL,
  `shop56_store_manager_id` int(11) NOT NULL,
  `shop57_store_manager_id` int(11) NOT NULL,
  `shop58_store_manager_id` int(11) NOT NULL,
  `shop59_store_manager_id` int(11) NOT NULL,
  `shop60_store_manager_id` int(11) NOT NULL,
  `shop61_store_manager_id` int(11) NOT NULL,
  `shop62_store_manager_id` int(11) NOT NULL,
  `shop63_store_manager_id` int(11) NOT NULL,
  `shop64_store_manager_id` int(11) NOT NULL,
  `shop65_store_manager_id` int(11) NOT NULL,
  `shop66_store_manager_id` int(11) NOT NULL,
  `shop67_store_manager_id` int(11) NOT NULL,
  `shop68_store_manager_id` int(11) NOT NULL,
  `shop69_store_manager_id` int(11) NOT NULL,
  `shop70_store_manager_id` int(11) NOT NULL,
  `shop71_store_manager_id` int(11) NOT NULL,
  `shop72_store_manager_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:12:51
