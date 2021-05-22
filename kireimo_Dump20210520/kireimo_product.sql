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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `name` varchar(255) NOT NULL COMMENT '商品名',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '公開・非公開1.非公開、2.公開',
  `shop_flg` tinyint(4) NOT NULL COMMENT '店舗販売　0.非公開、1.公開',
  `employee_flg` tinyint(4) NOT NULL COMMENT '社内販売　0.非公開、1.公開',
  `rank` tinyint(4) NOT NULL COMMENT '表示順位',
  `base_price` int(11) NOT NULL COMMENT '本体価格（税抜）',
  `employee_price` int(11) NOT NULL COMMENT '社員価格',
  `main_category` tinyint(4) NOT NULL COMMENT '大カテゴリ1.化粧品',
  `sub_category` tinyint(4) NOT NULL COMMENT '中カテゴリ1.スキンケア・基礎化粧品、2.ボディケア',
  `child_sub_category` tinyint(4) NOT NULL COMMENT '小カテゴリcategory2=(1.化粧水) category2=2(1..ボディクリーム)',
  `start_date` datetime NOT NULL COMMENT '発売日',
  `end_date` datetime DEFAULT NULL COMMENT '終了日',
  `reg_date` datetime NOT NULL COMMENT '登録日時',
  `edit_date` datetime NOT NULL COMMENT '編集日時',
  `del_flg` tinyint(4) NOT NULL DEFAULT '0' COMMENT '削除フラグ',
  `reduced_tax_rate_flg` tinyint(4) DEFAULT '0' COMMENT '軽減税率フラグ',
  `fixed_base_price` int(11) NOT NULL COMMENT '本体固定価格(税込)',
  `fixed_employee_price` int(11) NOT NULL COMMENT '社員固定価格(税込)',
  PRIMARY KEY (`id`,`name`),
  KEY `del_flg` (`del_flg`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COMMENT='物販商品';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:12:57
