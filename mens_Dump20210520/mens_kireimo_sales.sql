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
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '1.カウンセリング、2.トリートメント、3.キャンセル、4.クーリングオフ、5.中途解約、6.プラン変更、7.売掛回収、10.プラン変更、11.その他、12.自動解約、27.トリートメント/売掛回収、21.カウンセリング/キャンセル、22.トリートメントキャンセル、15.ローン非承認、51.物販',
  `pid` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL COMMENT 'カウンセリングor施術担当',
  `rstaff_id` int(11) NOT NULL COMMENT 'レジ担当',
  `course_id` int(11) NOT NULL,
  `multiple_course_id` varchar(255) NOT NULL,
  `times` tinyint(4) NOT NULL COMMENT 'コース回数',
  `r_times` int(11) NOT NULL COMMENT '消化回数',
  `fixed_price` int(11) NOT NULL COMMENT 'コース金額',
  `discount` int(11) NOT NULL COMMENT '値引き',
  `dis_type` int(4) NOT NULL COMMENT '割引タイプ',
  `point` int(11) NOT NULL COMMENT 'ポイント',
  `option_name` varchar(63) NOT NULL COMMENT 'オプション名',
  `option_price` int(11) NOT NULL COMMENT 'オプション金額(現金)',
  `option_transfer` int(11) NOT NULL COMMENT 'オプション金額（振込）',
  `option_card` int(11) NOT NULL COMMENT 'オプション金額（カード）',
  `option_year` varchar(63) NOT NULL COMMENT '月額の何年分',
  `option_month` varchar(63) NOT NULL COMMENT '月額の何月分',
  `option_date` date NOT NULL COMMENT '金融機関の取引日',
  `option_name2` tinyint(4) NOT NULL,
  `option_price2` int(11) NOT NULL,
  `option_transfer2` int(11) NOT NULL,
  `option_card2` int(11) NOT NULL,
  `price` int(11) NOT NULL COMMENT '請求金額（残り）',
  `pay_type` tinyint(4) NOT NULL COMMENT '支払方法',
  `payment` int(11) NOT NULL COMMENT '商品（残金）支払金額',
  `payment_cash` int(11) NOT NULL,
  `payment_transfer` int(11) NOT NULL COMMENT '銀行振込',
  `payment_card` int(11) NOT NULL,
  `payment_loan` int(11) NOT NULL,
  `payment_coupon` int(11) NOT NULL,
  `charge` int(11) NOT NULL,
  `balance` int(11) NOT NULL COMMENT '売掛金',
  `stock_id` varchar(63) NOT NULL COMMENT '物販在庫ID',
  `product_no` varchar(63) NOT NULL COMMENT '商品番号:1.モイスチャーローション',
  `product_count` int(11) NOT NULL COMMENT '商品個数',
  `pay_date` date NOT NULL COMMENT '支払日（来店日）',
  `cancel_date` date NOT NULL,
  `reg_date` datetime NOT NULL COMMENT '登録日',
  `edit_date` datetime NOT NULL COMMENT '編集日',
  `memo` text NOT NULL,
  `r_times_flg` tinyint(4) NOT NULL COMMENT '1.消化済み',
  `chk_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `non_record_flg` tinyint(4) DEFAULT '0' COMMENT '売上非計上フラグ',
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `customer_id` (`customer_id`),
  KEY `del_flg` (`del_flg`)
) ENGINE=InnoDB AUTO_INCREMENT=38314 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:28:19
