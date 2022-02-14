-- MySQL dump 10.13  Distrib 5.7.30, for Win64 (x86_64)
--
-- Host: localhost    Database: online-taxi
-- ------------------------------------------------------
-- Server version	5.7.30-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_sms_record`
--

DROP TABLE IF EXISTS `tbl_sms_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sms_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(16) NOT NULL DEFAULT '' COMMENT '乘客手机号',
  `sms_content` varchar(512) NOT NULL DEFAULT '' COMMENT '短信内容',
  `send_time` datetime NOT NULL COMMENT '发送时间',
  `operator_name` varchar(255) NOT NULL DEFAULT '' COMMENT '操作人',
  `send_flag` tinyint(1) NOT NULL COMMENT '发送状态 0:失败  1: 成功',
  `send_number` tinyint(1) NOT NULL DEFAULT '0' COMMENT '发送失败次数',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1982 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sms_record`
--

LOCK TABLES `tbl_sms_record` WRITE;
/*!40000 ALTER TABLE `tbl_sms_record` DISABLE KEYS */;
INSERT INTO `tbl_sms_record` VALUES (1977,'13412341234','手机验证码：9876，10分钟内有效。如非本人操作，请忽略。','2022-02-14 21:48:41','',1,0,'2022-02-14 13:48:41','2022-02-14 13:48:40'),(1978,'18186129177','手机验证码：9876，10分钟内有效。如非本人操作，请忽略。','2022-02-14 21:49:18','',1,0,'2022-02-14 13:49:18','2022-02-14 13:49:18'),(1979,'18186129177','手机验证码：347846，10分钟内有效。如非本人操作，请忽略。','2022-02-14 22:09:26','',1,0,'2022-02-14 14:09:26','2022-02-14 14:09:25'),(1980,'18186129177','手机验证码：010101，10分钟内有效。如非本人操作，请忽略。','2022-02-14 23:07:36','',1,0,'2022-02-14 15:07:36','2022-02-14 15:07:35'),(1981,'18186129177','手机验证码：010101，10分钟内有效。如非本人操作，请忽略。','2022-02-14 23:19:31','',1,0,'2022-02-14 15:19:31','2022-02-14 15:19:31');
/*!40000 ALTER TABLE `tbl_sms_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sms_template`
--

DROP TABLE IF EXISTS `tbl_sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sms_template` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` varchar(16) NOT NULL DEFAULT '' COMMENT '短信模板ID',
  `template_name` varchar(128) DEFAULT NULL,
  `content` varchar(512) NOT NULL DEFAULT '' COMMENT '模板内容',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `template_type` tinyint(1) NOT NULL DEFAULT '3' COMMENT '模板类型（1：营销；2：通知；3：订单）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TEMPLATE_ID` (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sms_template`
--

LOCK TABLES `tbl_sms_template` WRITE;
/*!40000 ALTER TABLE `tbl_sms_template` DISABLE KEYS */;
INSERT INTO `tbl_sms_template` VALUES (5,'SMS_144145499','登录验证码','手机验证码：${code}，10分钟内有效。如非本人操作，请忽略。','2018-09-07 07:00:11','2022-02-14 13:48:01',3);
/*!40000 ALTER TABLE `tbl_sms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'online-taxi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-14 23:38:36
