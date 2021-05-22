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
-- Table structure for table `loan_info`
--

DROP TABLE IF EXISTS `loan_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recept_no` int(11) DEFAULT NULL COMMENT '受付番号',
  `loan_contract_no` varchar(15) NOT NULL COMMENT '契約番号',
  `loan_contract_date` date DEFAULT NULL COMMENT 'ローン契約日',
  `contract_date` date NOT NULL COMMENT 'エステ契約日',
  `end_date` date NOT NULL COMMENT 'エステ契約終了日',
  `return_date` date NOT NULL COMMENT '自動解約復帰日',
  `loan_end_date` date DEFAULT NULL COMMENT '契約終了日',
  `customer_id` int(11) NOT NULL COMMENT '顧客ID',
  `pw` varchar(127) NOT NULL,
  `no` varchar(31) NOT NULL COMMENT '会員番号',
  `contract_id` int(11) NOT NULL COMMENT '契約ID',
  `contract_status` tinyint(4) NOT NULL COMMENT 'ステータス',
  `accept_category` tinyint(4) NOT NULL COMMENT '承認区分',
  `process_category` tinyint(4) NOT NULL COMMENT '契約終了区分',
  `regist_category` tinyint(4) NOT NULL COMMENT '受付終了区分',
  `consent_or_income` tinyint(4) NOT NULL COMMENT '同意書or年収変更',
  `consent_recovery` tinyint(4) NOT NULL COMMENT '同意書リカバー',
  `special_rating` tinyint(4) NOT NULL COMMENT '特別承認評価',
  `support_status` tinyint(4) NOT NULL COMMENT '督促',
  `application_date` date DEFAULT NULL COMMENT '申込日',
  `name` varchar(63) NOT NULL COMMENT '氏名',
  `name_kana` varchar(11) NOT NULL COMMENT 'フリガナ',
  `sex` tinyint(4) NOT NULL COMMENT '性別',
  `birthday` date DEFAULT NULL COMMENT '生年月日',
  `tel` varchar(63) NOT NULL COMMENT '電話番号',
  `home_tel` varchar(31) NOT NULL COMMENT '自宅電話番号',
  `mail` varchar(63) NOT NULL COMMENT 'メールアドレス',
  `zip` varchar(11) NOT NULL COMMENT '郵便番号',
  `pref` tinyint(4) DEFAULT NULL COMMENT '都道府県',
  `address` varchar(255) NOT NULL COMMENT '住所',
  `course_id` mediumint(11) NOT NULL COMMENT 'コースID',
  `shop_id` int(11) NOT NULL COMMENT '店舗ID',
  `staff_id` int(11) NOT NULL COMMENT '担当者ID',
  `loan_company_id` int(11) NOT NULL COMMENT 'ローン会社ID',
  `product` varchar(31) NOT NULL COMMENT '申込商品',
  `product_times` varchar(15) NOT NULL COMMENT 'コース回数',
  `price` int(11) NOT NULL COMMENT '商品金額(値引後)',
  `initial_payment` int(11) NOT NULL COMMENT '頭金(売掛含)',
  `amount` int(11) NOT NULL COMMENT '申込金額',
  `number_of_payments` tinyint(4) NOT NULL COMMENT '支払回数',
  `total_installment_commission` int(11) NOT NULL COMMENT '分割手数料合計',
  `amount_of_installments` int(11) NOT NULL COMMENT '分割支払金合計',
  `installment_amount_1st` int(11) NOT NULL COMMENT '第１回支払額',
  `installment_amount_2nd` int(11) NOT NULL COMMENT '第２回支払額',
  `annual_amount` int(11) NOT NULL COMMENT '年間請求予定額',
  `installment_commission` int(11) NOT NULL COMMENT '手数料/回',
  `appropriation_principal_1st` int(11) NOT NULL COMMENT '第1回充当元金',
  `appropriation_principal_2nd` int(11) NOT NULL COMMENT '第2回充当元金',
  `first_payment_year` int(4) DEFAULT NULL COMMENT '支払初月(年)',
  `first_payment_month` int(2) DEFAULT NULL COMMENT '支払初月(月)',
  `expected_end_year` varchar(4) NOT NULL COMMENT '支払終了予定年月(年)',
  `expected_end_month` varchar(2) NOT NULL COMMENT '支払終了予定年月(月)',
  `expected_end_date` date DEFAULT NULL COMMENT '契約終了予定日(未使用)',
  `asp_start_year` int(4) DEFAULT NULL COMMENT 'ASP開始月(年)',
  `asp_start_month` int(2) DEFAULT NULL COMMENT 'ASP開始月(月)',
  `identification_type` tinyint(4) NOT NULL COMMENT '本人確認書類',
  `identification_number` varchar(63) NOT NULL COMMENT '運転免許証番号',
  `payment_lent` tinyint(4) NOT NULL COMMENT '家賃負担',
  `same_living_count` tinyint(4) NOT NULL COMMENT '同一生計人数',
  `annual_income` int(4) NOT NULL COMMENT '年収',
  `claim_irregular` varchar(255) NOT NULL COMMENT '請求･入金ｲﾚｷﾞｭﾗｰ',
  `memo` text NOT NULL COMMENT '備考',
  `history` text NOT NULL COMMENT '架電・対応履歴・内容',
  `transfer_mailing_date` date DEFAULT NULL COMMENT '口振依頼書 みずほへの発送済日',
  `transfer_status` varchar(4) NOT NULL COMMENT '支払方法',
  `withdrawal_status` tinyint(4) NOT NULL COMMENT '自動引落属性',
  `transfer_attribute` tinyint(4) NOT NULL COMMENT '振込属性',
  `unable_appointment_status` tinyint(4) NOT NULL COMMENT '予約不可状況',
  `datetime` datetime DEFAULT NULL COMMENT '年月日・時間',
  `accepted_date` date DEFAULT NULL COMMENT '本承認年月日',
  `house_type` tinyint(4) NOT NULL COMMENT 'お住まい',
  `living_grant` tinyint(4) NOT NULL COMMENT '生活費の援助',
  `cor_request` tinyint(4) NOT NULL COMMENT '対応依頼',
  `debt` int(11) NOT NULL COMMENT '借入金',
  `credit_app_agree` tinyint(4) NOT NULL,
  `privacy_agree` int(11) NOT NULL,
  `call_timezone` tinyint(4) NOT NULL COMMENT '電話連絡可能時間帯',
  `verify_datetime_date1` date DEFAULT NULL COMMENT 'ベリファイ日時1_日',
  `verify_datetime_time1` varchar(7) NOT NULL COMMENT 'ベリファイ日時1_時',
  `verify_datetime_date2` date DEFAULT NULL COMMENT 'ベリファイ日時2_日',
  `verify_datetime_time2` varchar(7) NOT NULL COMMENT 'ベリファイ日時2_時',
  `verify_datetime_date3` date DEFAULT NULL COMMENT 'ベリファイ日時3_日',
  `verify_datetime_time3` varchar(7) NOT NULL COMMENT 'ベリファイ日時3_時',
  `verify_status` tinyint(4) NOT NULL COMMENT 'ベリファイ確認状況1.確認中2.確認済',
  `verify_complete_datetime` datetime DEFAULT NULL COMMENT 'ベリファイ確認済日時',
  `prepaid` int(11) NOT NULL COMMENT '既払金',
  `cancel_process_status` tinyint(4) NOT NULL COMMENT '解約処理ｽﾃｰﾀｽ',
  `cancel_process_date` datetime NOT NULL COMMENT '解約処理日時',
  `auto_cancle_date` date NOT NULL COMMENT '自動解約日１',
  `auto_cancle_date2` date NOT NULL COMMENT '自動解約日２',
  `complete_flg` tinyint(4) NOT NULL COMMENT '完全完了フラグ',
  `eva_flg` tinyint(4) NOT NULL COMMENT '優良評価フラグ',
  `apl_flg` tinyint(4) NOT NULL COMMENT '申込完了フラグ',
  `del_flg` int(11) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41881 DEFAULT CHARSET=utf8 COMMENT='サクシード申込';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:12:00
