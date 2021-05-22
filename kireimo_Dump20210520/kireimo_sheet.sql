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
-- Table structure for table `sheet`
--

DROP TABLE IF EXISTS `sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `shop_id` tinyint(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `input_date` date NOT NULL COMMENT '記入日',
  `name` varchar(63) NOT NULL COMMENT '名前',
  `name_kana` varchar(63) NOT NULL COMMENT 'ナマエ(カナ)',
  `birthday` date NOT NULL COMMENT '誕生日(yyyy-mm-dd)',
  `age` varchar(11) NOT NULL COMMENT '年齢',
  `tel` varchar(63) NOT NULL COMMENT '電話',
  `mail` varchar(63) NOT NULL COMMENT 'メールアドレス',
  `job` varchar(63) NOT NULL COMMENT 'ご職業',
  `job_sub` varchar(63) NOT NULL COMMENT 'ご職業(中分類)',
  `job_other` varchar(63) NOT NULL COMMENT 'ご職業(その他)',
  `zip` varchar(11) NOT NULL COMMENT '郵便番号',
  `pref` tinyint(4) NOT NULL COMMENT '都道府県',
  `address` varchar(127) NOT NULL COMMENT '住所',
  `height` varchar(15) NOT NULL COMMENT '身長',
  `weight` varchar(15) NOT NULL COMMENT '体重',
  `parent_name` varchar(63) NOT NULL COMMENT '護者の名前',
  `parent_tel` varchar(63) NOT NULL COMMENT '保護者の電話',
  `parent_address_check` tinyint(4) NOT NULL COMMENT '保護者の住所(本人と同居)',
  `parent_zip` varchar(11) NOT NULL COMMENT '保護者の郵便番号',
  `parent_pref` tinyint(4) NOT NULL COMMENT '保護者の都道府県',
  `parent_address` varchar(127) NOT NULL COMMENT '保護者の住所',
  `work_tel` varchar(63) NOT NULL COMMENT '勤務先の電話',
  `work_zip` varchar(11) NOT NULL COMMENT '勤務先の郵便番号',
  `work_pref` tinyint(4) NOT NULL COMMENT '勤務先の都道府県''',
  `work_address` varchar(127) NOT NULL COMMENT '勤務先の住所',
  `work_annual_income` int(11) NOT NULL COMMENT '勤務先の年収',
  `skin_type` tinyint(4) NOT NULL COMMENT '肌質',
  `self` varchar(63) NOT NULL COMMENT '自己処理方法',
  `self_other` varchar(255) NOT NULL COMMENT '自己処理方法(その他)',
  `experience` varchar(63) NOT NULL COMMENT '脱毛経験',
  `ex_history` varchar(31) NOT NULL COMMENT '脱毛（いつ頃）',
  `ex_period` varchar(31) NOT NULL COMMENT '脱毛期間',
  `experience_facility` varchar(255) NOT NULL COMMENT '脱毛経験あり',
  `experience_other` varchar(255) NOT NULL COMMENT '脱毛経験あり(その他)',
  `cm` tinyint(4) NOT NULL COMMENT '過去病歴',
  `cm_name` varchar(63) NOT NULL COMMENT '過去病名',
  `oc` tinyint(4) NOT NULL COMMENT '現治療',
  `oc_name` varchar(63) NOT NULL COMMENT '現病名',
  `drug` tinyint(4) NOT NULL COMMENT '薬服用',
  `drug_name` varchar(63) NOT NULL COMMENT '薬名',
  `allergie` tinyint(4) NOT NULL COMMENT 'アレルギー',
  `allergie_name` varchar(63) NOT NULL COMMENT 'アレルギー名',
  `pregnancy` tinyint(4) NOT NULL COMMENT '妊娠',
  `keloid` tinyint(4) NOT NULL COMMENT 'ケロイド',
  `keloid_check` varchar(255) NOT NULL COMMENT 'ケロイド、白斑',
  `keloid_type` tinyint(4) NOT NULL COMMENT 'ケロイド体質、または白斑',
  `kabure` tinyint(4) NOT NULL COMMENT 'カブレ',
  `cosme_name` varchar(31) NOT NULL COMMENT '化粧品名',
  `alien` tinyint(4) NOT NULL COMMENT '異物',
  `alien_palce` varchar(31) NOT NULL COMMENT '異物場所',
  `menstruation` tinyint(4) NOT NULL COMMENT '月経',
  `m_period` varchar(31) NOT NULL COMMENT '月経周期',
  `tattoo` varchar(255) NOT NULL COMMENT 'タトゥー',
  `tattoo_place` varchar(255) NOT NULL COMMENT 'タトゥーの場所',
  `tattoo_size` varchar(255) NOT NULL COMMENT 'タトゥーの大きさ',
  `knowledge` varchar(255) NOT NULL COMMENT '何で知ったのか',
  `knowledge_magazine` varchar(255) NOT NULL COMMENT '何で知ったのか(雑誌名)',
  `knowledge_freepaper` varchar(255) NOT NULL COMMENT '何で知ったのか(フリーペーパー名)',
  `knowledge_event` varchar(255) NOT NULL COMMENT '何で知ったのか(イベント名)',
  `knowledge_news` varchar(255) NOT NULL COMMENT '何で知ったのか(ニュース名)',
  `knowledge_blog` varchar(255) NOT NULL COMMENT '何で知ったのか(ブログ名)',
  `knowledge_other` varchar(255) NOT NULL COMMENT '何で知ったのか(その他)',
  `seeing` varchar(255) NOT NULL COMMENT '何を見て来たのか',
  `seeing_intro` varchar(255) NOT NULL COMMENT '何を見て来たのか(誰の紹介か)',
  `seeing_blog` varchar(255) NOT NULL COMMENT '何を見て来たのか(ブログ名)',
  `seeing_magazine` varchar(255) NOT NULL COMMENT '何を見て来たのか(雑誌名)',
  `seeing_freepaper` varchar(255) NOT NULL COMMENT '何を見て来たのか(フリーペーパー名)',
  `seeing_other` varchar(255) NOT NULL COMMENT '何を見て来たのか(その他)',
  `beginning` varchar(255) NOT NULL COMMENT '始めるきっかけ',
  `beginning_place` varchar(255) NOT NULL COMMENT '始めるきっかけ(通いやすい・近い方の利用場所)',
  `beginning_other` varchar(255) NOT NULL COMMENT '始めるきっかけ(その他)',
  `anxiety` varchar(255) NOT NULL COMMENT 'わからないこと・不安なこと',
  `anxiety_other` varchar(255) NOT NULL COMMENT 'わからないこと・不安なこと(その他)',
  `point` varchar(255) NOT NULL COMMENT '脱毛サロンを選ぶポイント',
  `point_other` varchar(255) NOT NULL COMMENT '脱毛サロンを選ぶポイント(その他)',
  `externalshop` varchar(255) NOT NULL COMMENT 'KIREIMO以外の状況',
  `externalshop_other` varchar(255) NOT NULL COMMENT 'KIREIMO以外の状況(その他)',
  `skincare` varchar(255) NOT NULL COMMENT 'スキンケア用品',
  `skincare_other` varchar(255) NOT NULL COMMENT 'スキンケア用品名',
  `care` varchar(255) NOT NULL COMMENT 'ケア用品',
  `money` varchar(255) NOT NULL COMMENT 'スキンケアにかける月の平均金額',
  `buy` varchar(255) NOT NULL COMMENT 'スキンケア用品を購入した理由（効果）',
  `soapbar` varchar(255) NOT NULL COMMENT '石鹸',
  `stress` tinyint(4) NOT NULL COMMENT 'ストレス',
  `s_cause` varchar(63) NOT NULL COMMENT 'ストレス原因',
  `sunburn` tinyint(4) NOT NULL COMMENT '日焼け',
  `s_place` varchar(63) NOT NULL COMMENT '日焼け部位',
  `s_history` varchar(63) NOT NULL COMMENT '日焼けいつ頃',
  `infection` tinyint(4) NOT NULL COMMENT '感染症',
  `media` varchar(63) NOT NULL,
  `intro` varchar(63) NOT NULL COMMENT '紹介',
  `blog` varchar(63) NOT NULL COMMENT 'ブログ',
  `mag` varchar(63) NOT NULL COMMENT '雑誌',
  `homepage` varchar(63) NOT NULL COMMENT 'ホームページ',
  `free_paper` varchar(63) NOT NULL COMMENT 'フリーペーパー',
  `other` varchar(63) NOT NULL COMMENT 'その他',
  `memo` text NOT NULL,
  `reg_date` datetime DEFAULT NULL,
  `edit_date` datetime DEFAULT NULL,
  `del_flg` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `del_flg` (`del_flg`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=509594 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:12:54
