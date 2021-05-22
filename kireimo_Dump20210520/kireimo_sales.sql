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
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '1.カウンセリング2.トリートメント3.キャンセル4.クーリングオフ5.中途解約(月額退会)6.プラン変更7.売掛回収8.月額支払9.ローン取消10.プラン変更（レジ）11.その他12.自動解約13.カウンセリング戻り14.当日キャンセル51.物販',
  `contract_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL COMMENT 'カウンセリングor施術担当',
  `rstaff_id` int(11) NOT NULL COMMENT 'レジ担当',
  `course_id` int(11) NOT NULL,
  `times` tinyint(4) NOT NULL COMMENT 'コース回数',
  `r_times` int(11) NOT NULL COMMENT '消化回数',
  `fixed_price` int(11) NOT NULL COMMENT 'コース金額',
  `discount` int(11) NOT NULL COMMENT '値引き',
  `dis_type` tinyint(4) NOT NULL COMMENT '割引タイプ',
  `point` int(11) NOT NULL COMMENT 'ポイント',
  `option_name` varchar(63) NOT NULL COMMENT 'オプション名:1.シェービング2.店舗移動費3.解約手数料4.月額支払5.延滞手数料6.中途解約手数料7.DigiCatキャンセル手数料8.お顔脱毛体験料51.物販',
  `option_price` int(11) NOT NULL COMMENT 'オプション金額(現金)',
  `option_transfer` int(11) NOT NULL COMMENT 'オプション金額（振込）',
  `option_card` int(11) NOT NULL COMMENT 'オプション金額（カード）',
  `option_year` varchar(63) NOT NULL COMMENT '何年支払代金',
  `option_month` varchar(63) NOT NULL COMMENT '月額の何月分記載',
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
  `charge2` int(11) NOT NULL COMMENT 'ローン分割手数料',
  `charge3` int(11) NOT NULL COMMENT 'ローンキャンセル料',
  `balance` int(11) NOT NULL COMMENT '売掛金',
  `stock_id` varchar(63) NOT NULL COMMENT '物販在庫ID',
  `product_no` varchar(63) NOT NULL COMMENT '商品番号:1.モイスチャーローション',
  `product_count` int(11) NOT NULL COMMENT '商品個数',
  `memo` text NOT NULL,
  `pay_date` date NOT NULL COMMENT '支払日（来店日）',
  `cancel_date` date NOT NULL,
  `reg_date` datetime NOT NULL COMMENT '登録日',
  `edit_date` datetime NOT NULL COMMENT '編集日',
  `del_flg` tinyint(4) NOT NULL,
  `chk_flg` tinyint(4) NOT NULL,
  `terminate_day` date DEFAULT NULL COMMENT '解約日',
  `digestion_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '消化タイプ',
  `slenda_sales_id` varchar(255) DEFAULT NULL COMMENT 'スレンダ売上ID',
  `non_record_flg` tinyint(4) DEFAULT '0' COMMENT '売上非計上フラグ',
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `customer_id` (`customer_id`),
  KEY `del_flg` (`del_flg`),
  KEY `pay_date` (`pay_date`),
  KEY `reg_date` (`reg_date`),
  KEY `reservation_id` (`reservation_id`),
  KEY `type` (`type`),
  KEY `shop_id` (`shop_id`),
  KEY `payment_loan` (`payment_loan`),
  KEY `contract_id` (`contract_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5098051 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:13:41
