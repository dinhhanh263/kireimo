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
-- Temporary view structure for view `reservation_view`
--

DROP TABLE IF EXISTS `reservation_view`;
/*!50001 DROP VIEW IF EXISTS `reservation_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reservation_view` AS SELECT 
 1 AS `id`,
 1 AS `customer_id`,
 1 AS `type`,
 1 AS `status`,
 1 AS `shop_id`,
 1 AS `room_id`,
 1 AS `hope_date`,
 1 AS `hope_time`,
 1 AS `length`,
 1 AS `part`,
 1 AS `del_flg`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales_view`
--

DROP TABLE IF EXISTS `sales_view`;
/*!50001 DROP VIEW IF EXISTS `sales_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_view` AS SELECT 
 1 AS `id`,
 1 AS `type`,
 1 AS `shop_id`,
 1 AS `pay_date`,
 1 AS `customer_id`,
 1 AS `no`,
 1 AS `name`,
 1 AS `name_kana`,
 1 AS `tel`,
 1 AS `mail`,
 1 AS `course_id`,
 1 AS `r_times`,
 1 AS `fixed_price`,
 1 AS `discount`,
 1 AS `price`,
 1 AS `balance`,
 1 AS `payment_cash`,
 1 AS `payment_card`,
 1 AS `payment_transfer`,
 1 AS `payment_loan`,
 1 AS `payment_coupon`,
 1 AS `option_price`,
 1 AS `option_transfer`,
 1 AS `option_card`,
 1 AS `reg_date`,
 1 AS `loan_status`,
 1 AS `conversion_flg`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `moto`
--

DROP TABLE IF EXISTS `moto`;
/*!50001 DROP VIEW IF EXISTS `moto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `moto` AS SELECT 
 1 AS `moto_id`,
 1 AS `moto_no`,
 1 AS `moto_name`,
 1 AS `moto_name_kana`,
 1 AS `moto_tel`,
 1 AS `moto_mail`,
 1 AS `moto_contract_status`,
 1 AS `moto_contract_shop_id`,
 1 AS `moto_contract_course_id`,
 1 AS `moto_contract_latest_date`,
 1 AS `moto_contract_r_times`,
 1 AS `moto_contract_date`,
 1 AS `moto_bank_name`,
 1 AS `moto_bank_branch`,
 1 AS `moto_bank_account_type`,
 1 AS `moto_bank_account_no`,
 1 AS `moto_bank_account_name`,
 1 AS `moto_bank_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `saki`
--

DROP TABLE IF EXISTS `saki`;
/*!50001 DROP VIEW IF EXISTS `saki`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `saki` AS SELECT 
 1 AS `saki_id`,
 1 AS `saki_no`,
 1 AS `saki_name`,
 1 AS `saki_name_kana`,
 1 AS `saki_tel`,
 1 AS `saki_mail`,
 1 AS `saki_contract_status`,
 1 AS `saki_contract_shop_id`,
 1 AS `saki_contract_course_id`,
 1 AS `saki_contract_latest_date`,
 1 AS `saki_contract_r_times`,
 1 AS `saki_contract_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `reservation_view`
--

/*!50001 DROP VIEW IF EXISTS `reservation_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dba`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `reservation_view` AS select `reservation`.`id` AS `id`,`reservation`.`customer_id` AS `customer_id`,`reservation`.`type` AS `type`,`reservation`.`status` AS `status`,`reservation`.`shop_id` AS `shop_id`,`reservation`.`room_id` AS `room_id`,`reservation`.`hope_date` AS `hope_date`,`reservation`.`hope_time` AS `hope_time`,`reservation`.`length` AS `length`,`reservation`.`part` AS `part`,`reservation`.`del_flg` AS `del_flg` from `reservation` where ((`reservation`.`del_flg` = 0) and (`reservation`.`type` <> 3) and (`reservation`.`hope_date` >= curdate())) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_view`
--

/*!50001 DROP VIEW IF EXISTS `sales_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dba`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_view` AS select `s`.`id` AS `id`,`s`.`type` AS `type`,`s`.`shop_id` AS `shop_id`,`s`.`pay_date` AS `pay_date`,`s`.`customer_id` AS `customer_id`,`c`.`no` AS `no`,`c`.`name` AS `name`,`c`.`name_kana` AS `name_kana`,`c`.`tel` AS `tel`,`c`.`mail` AS `mail`,`s`.`course_id` AS `course_id`,`s`.`r_times` AS `r_times`,`s`.`fixed_price` AS `fixed_price`,`s`.`discount` AS `discount`,`s`.`price` AS `price`,`s`.`balance` AS `balance`,`s`.`payment_cash` AS `payment_cash`,`s`.`payment_card` AS `payment_card`,`s`.`payment_transfer` AS `payment_transfer`,`s`.`payment_loan` AS `payment_loan`,`s`.`payment_coupon` AS `payment_coupon`,`s`.`option_price` AS `option_price`,`s`.`option_transfer` AS `option_transfer`,`s`.`option_card` AS `option_card`,`s`.`reg_date` AS `reg_date`,`t`.`loan_status` AS `loan_status`,`t`.`conversion_flg` AS `conversion_flg` from (`customer` `c` join (`sales` `s` left join `contract` `t` on(((`t`.`id` = `s`.`contract_id`) and (`t`.`del_flg` = 0))))) where ((`s`.`customer_id` = `c`.`id`) and (`c`.`del_flg` = 0) and (`s`.`del_flg` = 0) and ((not(`s`.`r_times`)) or `s`.`payment_cash` or `s`.`payment_card` or `s`.`payment_transfer` or `s`.`payment_loan` or `s`.`payment_coupon` or `s`.`option_price` or `s`.`option_price` or `s`.`option_transfer` or `s`.`option_card`)) order by `s`.`pay_date`,`s`.`reg_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `moto`
--

/*!50001 DROP VIEW IF EXISTS `moto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dba`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `moto` AS select `t1`.`id` AS `moto_id`,`t1`.`no` AS `moto_no`,`t1`.`name` AS `moto_name`,`t1`.`name_kana` AS `moto_name_kana`,`t1`.`tel` AS `moto_tel`,`t1`.`mail` AS `moto_mail`,`t2`.`status` AS `moto_contract_status`,`t2`.`shop_id` AS `moto_contract_shop_id`,`t2`.`course_id` AS `moto_contract_course_id`,`t2`.`latest_date` AS `moto_contract_latest_date`,`t2`.`r_times` AS `moto_contract_r_times`,`t2`.`contract_date` AS `moto_contract_date`,`t3`.`bank_name` AS `moto_bank_name`,`t3`.`bank_branch` AS `moto_bank_branch`,`t3`.`bank_account_type` AS `moto_bank_account_type`,`t3`.`bank_account_no` AS `moto_bank_account_no`,`t3`.`bank_account_name` AS `moto_bank_account_name`,`t3`.`status` AS `moto_bank_status` from ((`customer` `t1` left join `contract` `t2` on(((`t1`.`id` = `t2`.`customer_id`) and (`t2`.`del_flg` = 0) and ((`t2`.`status` = 0) or (`t2`.`status` = 8))))) left join `bank` `t3` on(((`t1`.`id` = `t3`.`customer_id`) and (`t3`.`del_flg` = 0)))) order by `t2`.`contract_date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `saki`
--

/*!50001 DROP VIEW IF EXISTS `saki`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dba`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `saki` AS select `t4`.`id` AS `saki_id`,`t4`.`no` AS `saki_no`,`t4`.`name` AS `saki_name`,`t4`.`name_kana` AS `saki_name_kana`,`t4`.`tel` AS `saki_tel`,`t4`.`mail` AS `saki_mail`,`t5`.`status` AS `saki_contract_status`,`t5`.`shop_id` AS `saki_contract_shop_id`,`t5`.`course_id` AS `saki_contract_course_id`,`t5`.`latest_date` AS `saki_contract_latest_date`,`t5`.`r_times` AS `saki_contract_r_times`,`t5`.`contract_date` AS `saki_contract_date` from (`customer` `t4` left join `contract` `t5` on(((`t4`.`id` = `t5`.`customer_id`) and (`t5`.`del_flg` = 0) and (`t5`.`status` = 0)))) order by `t5`.`contract_date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 12:16:03
