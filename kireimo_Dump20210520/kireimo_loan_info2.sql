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
-- Table structure for table `loan_info2`
--

DROP TABLE IF EXISTS `loan_info2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_info2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apl_id` int(32) NOT NULL COMMENT '申込ID',
  `customer_id` int(11) NOT NULL COMMENT '顧客ID',
  `contract_id` int(11) NOT NULL COMMENT '契約ID',
  `course_id` varchar(63) NOT NULL,
  `name` varchar(63) NOT NULL COMMENT '名前',
  `name_kana` varchar(11) NOT NULL COMMENT 'ナマエ(カナ)',
  `zip` varchar(11) NOT NULL COMMENT '郵便番号',
  `pref` tinyint(4) DEFAULT NULL COMMENT '都道府県',
  `address` varchar(255) NOT NULL COMMENT '住所',
  `mail` varchar(63) NOT NULL COMMENT 'メールアドレス',
  `home_tel` int(31) NOT NULL COMMENT '自宅電話番号',
  `tel` varchar(63) NOT NULL COMMENT '電話番号',
  `birthday` date DEFAULT NULL COMMENT '生年月日',
  `sex` tinyint(4) NOT NULL COMMENT '0.Lady1.Mens',
  `spouse` tinyint(4) NOT NULL COMMENT '配偶者の有無',
  `main_prvd` tinyint(4) NOT NULL COMMENT '生計費負担者:1.申込者2.配偶者3.親(同居)4.親(別居)5.子(同居)6.他',
  `housing` tinyint(4) NOT NULL COMMENT '住居:1.自己所有2.家族所有3.賃貸4.社宅・寮・その他',
  `veri_occasion` int(11) NOT NULL COMMENT '仕事:1.103万以上2.103万以下3.学生',
  `loan_company_id` int(11) NOT NULL COMMENT 'ローン会社ID',
  `loan_contract_no` varchar(15) NOT NULL COMMENT 'ローン契約番号',
  `loan_contract_date` date DEFAULT NULL COMMENT 'ローン契約日',
  `loan_end_date` date DEFAULT NULL COMMENT '契約終了日',
  `shop_id` int(11) NOT NULL COMMENT '申込店舗ID',
  `staff_id` int(11) NOT NULL COMMENT '担当者ID',
  `application_date` date DEFAULT NULL COMMENT '申込日',
  `product` varchar(127) NOT NULL COMMENT '商品名',
  `initial_payment` int(11) NOT NULL COMMENT '頭金',
  `amount` int(11) NOT NULL COMMENT '申込金額',
  `number_of_payments` tinyint(4) NOT NULL COMMENT '支払回数',
  `first_payment_year` int(4) DEFAULT NULL COMMENT '支払開始年',
  `first_payment_month` int(2) DEFAULT NULL COMMENT '支払開始月',
  `expected_end_year` varchar(4) NOT NULL COMMENT '支払終了予定年',
  `expected_end_month` varchar(2) NOT NULL COMMENT '支払終了予定月',
  `transfer_status` varchar(4) NOT NULL COMMENT '支払方法',
  `total_installment_commission` int(11) NOT NULL COMMENT '分割払手数料',
  `amount_of_installments` int(11) NOT NULL COMMENT '分割支払金合計',
  `installment_amount_1st` int(11) NOT NULL COMMENT '第１回支払額',
  `installment_amount_2nd` int(11) NOT NULL COMMENT '第２回支払額',
  `total_payments` int(11) NOT NULL COMMENT '支払総額',
  `annual_amount` int(11) NOT NULL COMMENT '年間請求予定額',
  `contract_status` tinyint(4) NOT NULL COMMENT 'ローン契約ステータス',
  `support_status` tinyint(4) NOT NULL COMMENT '督促',
  `accept_category` tinyint(4) NOT NULL COMMENT '承認区分',
  `special_rating` tinyint(4) NOT NULL COMMENT '特別承認評価',
  `debt` int(11) NOT NULL COMMENT '借入金',
  `process_category` tinyint(4) NOT NULL COMMENT '契約終了区分',
  `regist_category` tinyint(4) NOT NULL COMMENT '受付終了区分：1.申込2.受付3.決済処理中4.完了5.SMBC->NG6.案内メール済7.再メール送信済8.再々メール送信済',
  `eval_status` tinyint(4) NOT NULL COMMENT '審査ステータス：1.未処理2.審査中3.本人確認中4.承認済5.否決',
  `sum_up` tinyint(4) NOT NULL COMMENT '集計フラグ：1.集計済',
  `re_mail_date` datetime DEFAULT NULL COMMENT 'メール再送信日時',
  `re_re_mail_date` datetime DEFAULT NULL COMMENT 'メール再々送信日時',
  `deal_date` datetime DEFAULT NULL COMMENT '処理日時',
  `addm_no` varchar(31) NOT NULL COMMENT '承認番号',
  `addm_date` date DEFAULT NULL COMMENT '承認日',
  `shop_cancel` tinyint(4) NOT NULL COMMENT '店舗キャンセル：1.キャンセル',
  `own_cancel` tinyint(4) NOT NULL COMMENT '信販会社キャンセル',
  `last_update` datetime DEFAULT NULL COMMENT '最終更新日時',
  `update_name` varchar(63) NOT NULL COMMENT '最終更新者名',
  `memo` text NOT NULL COMMENT '備考',
  `history` text NOT NULL COMMENT '架電・対応履歴・内容',
  `service_start` date DEFAULT NULL COMMENT '役務期間（自）',
  `service_end` date DEFAULT NULL COMMENT '役務期間（至）',
  `save_amount` int(11) NOT NULL COMMENT '預貯金額',
  `side_job` tinyint(4) NOT NULL COMMENT '副収入種別',
  `side_income` int(11) NOT NULL COMMENT '副収入の年額 ',
  `payment_lent` tinyint(4) NOT NULL COMMENT '家賃負担',
  `update_end_flg` tinyint(4) NOT NULL COMMENT 'データ更新終了フラグ',
  `apl_flg` tinyint(4) NOT NULL COMMENT 'ローン申込み完了フラグ',
  `del_flg` int(11) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65479 DEFAULT CHARSET=utf8 COMMENT='ライフティ申込';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:11:29
