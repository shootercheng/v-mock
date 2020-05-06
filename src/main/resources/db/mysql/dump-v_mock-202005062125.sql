-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: v_mock
-- ------------------------------------------------------
-- Server version	5.7.19

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

DROP DATABASE IF EXISTS v_mock;

CREATE DATABASE v_mock CHARSET=utf8mb4;

USE v_mock;

--
-- Table structure for table `mock_log`
--

DROP TABLE IF EXISTS `mock_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mock_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_method` text,
  `request_ip` text,
  `hit_url` text,
  `request_url` text,
  `response_detail` text,
  `request_detail` text,
  `del_flag` int(11) DEFAULT '0',
  `create_by` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` text,
  `parent_id` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `url` text,
  `target` text,
  `menu_type` int(11) DEFAULT NULL,
  `visible` int(11) DEFAULT NULL,
  `icon` text,
  `create_by` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` text,
  `user_display` int(11) DEFAULT '1',
  `del_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (3,'用户管理',0,1,'/system/user','menuItem',0,0,'fa fa-user','admin','2020-05-06 20:22:16','admin','2020-05-06 20:22:16','用户管理菜单',0,0),(4,'系统参数',0,7,'/system/config','menuItem',0,0,'fa fa-cogs','admin','2020-05-06 20:22:16','admin','2020-05-06 20:22:16','参数设置菜单',0,0),(5,'接口日志',0,2,'/system/log','menuItem',0,0,'fa fa-book','admin','2020-05-06 20:22:16','admin','2020-05-06 20:22:16','操作日志菜单',1,0),(6,'接口一览',0,1,'/system/url','menuItem',0,0,'fa fa-cloud','admin','2020-05-06 20:22:18','admin','2020-05-06 20:22:18','url路径菜单',1,0);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mock_url`
--

DROP TABLE IF EXISTS `mock_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mock_url` (
  `url_id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `name` text NOT NULL,
  `description` text,
  `logic` text,
  `del_flag` int(11) DEFAULT '0',
  `create_by` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `config_name` text,
  `config_key` text,
  `config_value` text,
  `create_by` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` text,
  `del_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'邀请码','system.invitation.code','vmock','1','2020-05-05 17:59:20','1','2020-05-05 17:59:20','用户由前台自己注册系统时，需要输入该邀请码验证身份，才能注册成功。',0);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` int(11) NOT NULL AUTO_INCREMENT,
  `dict_name` varchar(200) DEFAULT NULL,
  `dict_type` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_by` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `del_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex',0,'1','2020-05-06 20:53:16','1','2020-05-06 20:53:16','用户性别列表',NULL),(2,'菜单状态','sys_show_hide',0,'1','2020-05-06 20:53:23','1','2020-05-06 20:53:23','菜单状态列表',NULL),(3,'系统开关','sys_normal_disable',0,'1','2020-05-06 20:53:23','1','2020-05-06 20:53:23','系统开关列表',NULL),(4,'系统是否','sys_yes_no',0,'1','2020-05-06 20:53:23','1','2020-05-06 20:53:23','系统是否列表',NULL),(5,'系统状态','sys_common_status',0,'1','2020-05-06 20:53:23','1','2020-05-06 20:53:23','登录状态列表',NULL),(6,'请求方式','http_method',0,'1','2020-05-06 20:53:47','1','2020-05-06 20:53:47','',0);
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mock_url_logic`
--

DROP TABLE IF EXISTS `mock_url_logic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mock_url_logic` (
  `logic_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_url` varchar(200) NOT NULL,
  `del_flag` int(11) DEFAULT '0',
  `create_by` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`logic_id`),
  KEY `idx_sub_url` (`sub_url`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` int(11) NOT NULL AUTO_INCREMENT,
  `dict_sort` int(11) DEFAULT NULL,
  `dict_label` text,
  `dict_value` text,
  `dict_type` text,
  `css_class` text,
  `list_class` text,
  `is_default` varchar(10) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_by` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` text,
  `del_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y',0,'admin','2020-05-06 20:37:47','ry','2020-05-06 20:37:47','性别男',0),(2,2,'女','1','sys_user_sex','','','N',0,'admin','2020-05-06 20:37:56','ry','2020-05-06 20:37:56','性别女',0),(3,3,'未知','2','sys_user_sex','','','N',0,'admin','2020-05-06 20:37:56','ry','2020-05-06 20:37:56','性别未知',0),(4,1,'显示','0','sys_show_hide','','primary','Y',0,'admin','2020-05-06 20:37:56','ry','2020-05-06 20:37:56','显示菜单',0),(5,2,'隐藏','1','sys_show_hide','','danger','N',0,'admin','2020-05-06 20:37:56','ry','2020-05-06 20:37:56','隐藏菜单',0),(6,1,'正常','0','sys_normal_disable','','primary','Y',0,'admin','2020-05-06 20:37:56','ry','2020-05-06 20:37:56','正常状态',0),(7,2,'停用','1','sys_normal_disable','','danger','N',0,'admin','2020-05-06 20:37:56','ry','2020-05-06 20:37:56','停用状态',0),(8,1,'是','Y','sys_yes_no','','primary','Y',0,'admin','2020-05-06 20:37:56','ry','2020-05-06 20:37:56','系统默认是',0),(9,2,'否','N','sys_yes_no','','danger','N',0,'admin','2020-05-06 20:37:56','ry','2020-05-06 20:37:56','系统默认否',0),(10,1,'成功','0','sys_common_status','','primary','N',0,'admin','2020-05-06 20:37:56','ry','2020-05-06 20:37:56','正常状态',0),(11,2,'失败','1','sys_common_status','','danger','N',0,'admin','2020-05-06 20:37:56','ry','2020-05-06 20:37:56','停用状态',0),(12,1,'GET','GET','http_method','','','',0,'1','2020-05-06 20:42:34','1','2020-05-06 20:42:34','',0),(13,2,'HEAD','HEAD','http_method','','','',0,'1','2020-05-06 20:42:45','1','2020-05-06 20:42:45','',0),(14,3,'POST','POST','http_method','','','',0,'1','2020-05-06 20:42:45','1','2020-05-06 20:42:45','',0),(15,4,'PUT','PUT','http_method','','','',0,'1','2020-05-06 20:42:45','1','2020-05-06 20:42:45','',0),(16,5,'PATCH','PATCH','http_method','','','',0,'1','2020-05-06 20:42:45','1','2020-05-06 20:42:45','',0),(17,6,'DELETE','DELETE','http_method','','','',0,'1','2020-05-06 20:42:45','1','2020-05-06 20:42:45','',0),(18,7,'OPTIONS','OPTIONS','http_method','','','',0,'1','2020-05-06 20:42:45','1','2020-05-06 20:42:45','',0),(19,8,'TRACE','TRACE','http_method','','','',0,'1','2020-05-06 20:42:47','1','2020-05-06 20:42:47','',0);
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mock_response`
--

DROP TABLE IF EXISTS `mock_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mock_response` (
  `response_id` int(11) NOT NULL AUTO_INCREMENT,
  `url_id` int(11) DEFAULT NULL,
  `content` text,
  `status_code` int(11) DEFAULT NULL,
  `main` int(11) DEFAULT '0',
  `description` text,
  `custom_header` text,
  `del_flag` int(11) DEFAULT '0',
  `create_by` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` text,
  `method` text,
  PRIMARY KEY (`response_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` text NOT NULL,
  `user_name` text,
  `user_type` int(11) DEFAULT '0',
  `email` text,
  `phonenumber` text,
  `sex` int(11) DEFAULT NULL,
  `avatar` text,
  `password` text,
  `salt` text,
  `status` int(11) DEFAULT '0',
  `del_flag` int(11) DEFAULT '0',
  `login_ip` text,
  `login_date` datetime DEFAULT NULL,
  `create_by` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'vmock','super admin',1,'','13999999999',1,'','e2c6d918956ea1ab106f9f80ea6433c9','fc4a41',0,0,'0:0:0:0:0:0:0:1','2020-05-06 12:15:47','0','2020-05-05 18:30:44','1','2020-05-05 18:30:44',''),(2,'chengdu','chengdu',0,NULL,NULL,NULL,NULL,'cde7444ac74187c01310cd181ed89ab8','d44e6f',0,0,'0:0:0:0:0:0:0:1','2020-05-06 13:22:12',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-06 21:25:27
