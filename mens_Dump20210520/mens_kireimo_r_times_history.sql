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
-- Table structure for table `r_times_history`
--

DROP TABLE IF EXISTS `r_times_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r_times_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '''0.契約中、1.契約終了、2.クーリングオフ、3.中途解約、4.プラン変更、6.自動解約、7.契約待ち',
  `reservation_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL COMMENT 'カウンセリングor施術担当',
  `rstaff_id` int(11) NOT NULL COMMENT 'レジ担当',
  `type` tinyint(4) NOT NULL COMMENT '1.カウンセリング、2.トリートメント、3.キャンセル、7.売上回収、8.月額支払、10.プラン変更、11.その他、20.単発、27.トリートメント/売掛回収、15.ローン非承認、51.物販',
  `course_id` int(11) DEFAULT NULL COMMENT 'コースID',
  `times` tinyint(4) NOT NULL COMMENT 'コース回数',
  `r_times` int(11) NOT NULL COMMENT '消化回数',
  `contract_part` varchar(255) NOT NULL COMMENT '契約部位',
  `part_time_sum` int(11) NOT NULL COMMENT '施術時間合計',
  `fixed_price` int(11) NOT NULL COMMENT 'コース金額',
  `discount` int(11) NOT NULL COMMENT '値引き',
  `dis_type` int(4) NOT NULL COMMENT '割引タイプ',
  `price` int(11) NOT NULL COMMENT '請求金額（残り）',
  `unit_price` int(11) NOT NULL COMMENT '消化単価',
  `pay_date` date NOT NULL COMMENT '支払日（来店日）',
  `cancel_date` date NOT NULL,
  `memo` text NOT NULL,
  `reg_date` datetime NOT NULL COMMENT '登録日',
  `edit_date` datetime NOT NULL COMMENT '編集日',
  `r_times_flg` tinyint(4) NOT NULL COMMENT '1.消化済み',
  `del_flg` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `customer_id` (`customer_id`),
  KEY `del_flg` (`del_flg`)
) ENGINE=InnoDB AUTO_INCREMENT=34921 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:27:04
