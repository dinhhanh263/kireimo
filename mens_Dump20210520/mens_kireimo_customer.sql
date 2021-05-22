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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(127) NOT NULL COMMENT 'ログインID',
  `password` varchar(127) NOT NULL COMMENT 'パスワード',
  `pw_sent_flg` tinyint(4) NOT NULL,
  `pw_sent_date` date NOT NULL,
  `shop_id` int(11) NOT NULL COMMENT '店舗ID',
  `cstaff_id` int(11) NOT NULL COMMENT 'カウンセリング担当',
  `no` varchar(11) NOT NULL COMMENT '会員番号',
  `sn_shop` int(11) NOT NULL COMMENT '同店舗会員番号',
  `status` tinyint(1) NOT NULL DEFAULT '2',
  `agree_status` tinyint(4) NOT NULL COMMENT '親権同意書の有無',
  `attorney_status` tinyint(4) NOT NULL COMMENT '委任状の有無',
  `contract_send` tinyint(4) NOT NULL,
  `ctype` tinyint(4) NOT NULL DEFAULT '1' COMMENT '会員タイプ',
  `name` varchar(63) NOT NULL COMMENT '名前',
  `name_kana` varchar(63) NOT NULL COMMENT 'ナマエ(カナ)',
  `pair_name_kana` varchar(63) NOT NULL,
  `cbs_no` varchar(63) NOT NULL,
  `card_no` varchar(7) DEFAULT NULL COMMENT 'カード下4桁',
  `card_name` varchar(63) NOT NULL COMMENT 'カード名義',
  `card_name_kana` varchar(31) NOT NULL,
  `card_limit_month` varchar(10) NOT NULL COMMENT 'カード有効期限(月)',
  `card_limit_year` varchar(5) NOT NULL COMMENT 'カード有効期限(年)',
  `zip` varchar(11) NOT NULL COMMENT '郵便番号',
  `pref` tinyint(4) NOT NULL COMMENT '都道府県',
  `address` varchar(255) NOT NULL COMMENT '住所',
  `mail` varchar(63) NOT NULL COMMENT 'メールアドレス',
  `mobile` varchar(63) NOT NULL COMMENT '携帯アドレス',
  `tel` varchar(63) NOT NULL COMMENT '電話',
  `pair_tel` varchar(63) NOT NULL,
  `sex` varchar(63) NOT NULL DEFAULT '1' COMMENT '性別(default:男性)',
  `birthday0` varchar(31) NOT NULL COMMENT '誕生日(yyyy/mm/dd)',
  `birthday` date NOT NULL COMMENT '誕生日(yyyy-mm-dd)',
  `age` varchar(11) NOT NULL COMMENT '年齢',
  `big_flg` tinyint(4) NOT NULL COMMENT '1.BIGの方',
  `change_flg` tinyint(4) NOT NULL COMMENT '1.プラン変更予定有り',
  `job` varchar(63) NOT NULL COMMENT 'ご職業',
  `job_sub` varchar(63) NOT NULL COMMENT 'ご職業(中分類)',
  `job_other` varchar(63) NOT NULL COMMENT 'ご職業(その他)',
  `marriage` tinyint(4) NOT NULL COMMENT '結婚',
  `height` varchar(31) NOT NULL COMMENT '身長',
  `weight` varchar(31) NOT NULL COMMENT '体重',
  `ad_name` varchar(63) NOT NULL,
  `introducer` varchar(31) NOT NULL COMMENT '紹介者',
  `introducer_type` tinyint(4) NOT NULL COMMENT '紹介者タイプ',
  `partner` tinyint(4) NOT NULL COMMENT '紹介企業',
  `special` tinyint(4) NOT NULL COMMENT '特別紹介者',
  `route` tinyint(4) NOT NULL DEFAULT '1' COMMENT '経由',
  `echo` varchar(255) NOT NULL COMMENT '反響',
  `mag` varchar(255) NOT NULL COMMENT '申し込み広告',
  `hope_campaign` varchar(31) NOT NULL,
  `hope_time_range` varchar(255) NOT NULL,
  `hopes_discount` tinyint(4) NOT NULL,
  `student_id` tinyint(4) NOT NULL,
  `times` tinyint(4) NOT NULL COMMENT '来店回数',
  `comment` text NOT NULL,
  `memo` text NOT NULL COMMENT '備考',
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `mo_agent` tinyint(4) NOT NULL COMMENT '端末キャリア',
  `adcode` varchar(127) NOT NULL COMMENT '広告ID',
  `flyer_no` int(11) NOT NULL COMMENT 'チラシ番号',
  `mo_id` tinyint(4) NOT NULL COMMENT '端末ID',
  `session_id` varchar(255) NOT NULL COMMENT 'セッションID',
  `url` varchar(255) NOT NULL COMMENT 'URL',
  `referer_url` text NOT NULL COMMENT '参照URL',
  `user_agent` text NOT NULL COMMENT 'ユーザーエージェント',
  `reg_flg` tinyint(4) NOT NULL COMMENT '登録フラグ',
  `rebook_flg` tinyint(4) NOT NULL COMMENT '１．一般再申込２．ID付（梅木）再申込',
  `reg_date` datetime NOT NULL COMMENT '登録日時',
  `edit_date` datetime NOT NULL,
  `sv_flg` tinyint(4) NOT NULL,
  `loan_delay_flg` tinyint(4) NOT NULL,
  `digicat_ng_flg` tinyint(4) NOT NULL,
  `nextpay_end_ng_flg` tinyint(4) NOT NULL,
  `nextpay_op_ng_flg` tinyint(4) NOT NULL,
  `bank_ng_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL COMMENT '削除フラグ',
  `pair_flg` varchar(4) NOT NULL COMMENT 'サロンでの脱毛経験の有無',
  `chk_name_flg` tinyint(4) NOT NULL COMMENT '名前曖昧フラグ',
  `chk_tel_flg` tinyint(4) NOT NULL,
  `chk_mail_flg` tinyint(4) NOT NULL,
  `chk_addr_flg` tinyint(4) NOT NULL,
  `chk_flg` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reg_date` (`reg_date`),
  KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=9481 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:29:43
