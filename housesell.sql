mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 8.4.8, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: housesell
-- ------------------------------------------------------
-- Server version	8.4.8

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `a_customer_lease`
--

DROP TABLE IF EXISTS `a_customer_lease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_customer_lease` (
  `id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `house_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `seller_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `status` int NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `user_money` decimal(19,2) DEFAULT NULL,
  `user_remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_customer_lease`
--

LOCK TABLES `a_customer_lease` WRITE;
/*!40000 ALTER TABLE `a_customer_lease` DISABLE KEYS */;
INSERT INTO `a_customer_lease` VALUES ('1588813619368431616','17859654125','2026-04-01 09:30:00.000000',0,'17859654121','2026-04-01 09:30:00.000000','1588808881004482560','1464772465946398721',1,'1464764315201572865',1200.00,'我要租你的房子！'),('2042877163568500736','17859654125','2026-04-01 09:30:00.000000',0,'17859654121','2026-04-01 09:30:00.000000','1588808881004482560','1464772465946398721',2,'1464764315201572865',12.00,'1212'),('2042891527038046209','17859654125','2026-04-01 09:30:00.000000',0,'17859654121','2026-04-01 09:30:00.000000','1588808739903901696','1464772465946398721',1,'1464764315201572865',1600.00,'1');
/*!40000 ALTER TABLE `a_customer_lease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_customer_sell`
--

DROP TABLE IF EXISTS `a_customer_sell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_customer_sell` (
  `id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `house_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `seller_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `status` int NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `user_money` decimal(19,2) DEFAULT NULL,
  `user_remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_customer_sell`
--

LOCK TABLES `a_customer_sell` WRITE;
/*!40000 ALTER TABLE `a_customer_sell` DISABLE KEYS */;
INSERT INTO `a_customer_sell` VALUES ('1588813374744039424','17859654125','2026-04-02 10:00:00.000000',0,'17859654121','2026-04-02 10:00:00.000000','1588808510404169728','1464772465946398721',1,'1464764315201572865',120.00,'我要了哈哈！'),('2042891635452416000','17859654125','2026-04-02 10:00:00.000000',0,'17859654121','2026-04-02 10:00:00.000000','1588808247119319040','1464772465946398721',1,'1464764315201572865',230.00,'11');
/*!40000 ALTER TABLE `a_customer_sell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_department`
--

DROP TABLE IF EXISTS `a_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_department` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_department`
--

LOCK TABLES `a_department` WRITE;
/*!40000 ALTER TABLE `a_department` DISABLE KEYS */;
INSERT INTO `a_department` VALUES (1464487288363945985,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',0,1.00,0,'人力资源部',_binary ''),(1464487332064399361,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',0,2.00,0,'行政综合部',_binary ''),(1464487379074158593,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',0,3.00,0,'设计研发部',_binary ''),(1464487406328745985,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',0,4.00,0,'财务部',_binary '\0'),(1464487432169852929,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',0,5.00,0,'综合发展部',_binary '\0'),(1464487524662644737,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',1464487288363945985,1.00,0,'HRBP部',_binary '\0'),(1464487559647334401,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',1464487288363945985,2.00,0,'招聘部',_binary '\0'),(1464487623933431809,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',1464487332064399361,1.00,0,'安保部',_binary '\0'),(1464487656678363137,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',1464487332064399361,2.00,0,'保洁部',_binary '\0'),(1464487691780493313,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',1464487332064399361,3.00,0,'设备维修部',_binary '\0'),(1464487733895499777,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',1464487379074158593,1.00,0,'视频剪辑部',_binary '\0'),(1464487807572643841,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',1464487379074158593,2.00,0,'产品应用部',_binary '\0'),(1527834362656198656,'admin','2022-05-21 10:11:13',0,NULL,NULL,0,6.00,0,'客服部',_binary '\0');
/*!40000 ALTER TABLE `a_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_department_header`
--

DROP TABLE IF EXISTS `a_department_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_department_header` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `department_id` bigint unsigned DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_department_header`
--

LOCK TABLES `a_department_header` WRITE;
/*!40000 ALTER TABLE `a_department_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `a_department_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_dict`
--

DROP TABLE IF EXISTS `a_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_dict` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_dict`
--

LOCK TABLES `a_dict` WRITE;
/*!40000 ALTER TABLE `a_dict` DISABLE KEYS */;
INSERT INTO `a_dict` VALUES (75135930788220928,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','','性别','sex',0.00),(75388696739713024,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','','分权限','permission_type',2.00),(1536612750841745408,'admin','2022-06-14 15:33:23',0,NULL,NULL,'','学历','education',3.00),(1536613395229446144,'admin','2022-06-14 15:35:57',0,NULL,NULL,'','在职状态','occupationStatus',4.00);
/*!40000 ALTER TABLE `a_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_dict_data`
--

DROP TABLE IF EXISTS `a_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_dict_data` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dict_id` bigint unsigned DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sort_order` (`sort_order`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_dict_data`
--

LOCK TABLES `a_dict_data` WRITE;
/*!40000 ALTER TABLE `a_dict_data` DISABLE KEYS */;
INSERT INTO `a_dict_data` VALUES (75158227712479232,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75135930788220928,0.00,0,'男','男'),(75159254272577536,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75135930788220928,1.00,0,'女','女'),(75159898425397248,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75135930788220928,2.00,-1,'保密','保密'),(75390787835138048,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75388696739713024,0.00,0,'查看操作(view)','view'),(75390886501945344,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75388696739713024,1.00,0,'添加操作(add)','add'),(75390993939042304,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75388696739713024,2.00,0,'编辑操作(edit)','edit'),(75391067532300288,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75388696739713024,3.00,0,'删除操作(delete)','delete'),(75391126902673408,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75388696739713024,4.00,0,'清空操作(clear)','clear'),(75391192883269632,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75388696739713024,5.00,0,'启用操作(enable)','enable'),(75391251024711680,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75388696739713024,6.00,0,'禁用操作(disable)','disable'),(75391297124306944,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75388696739713024,7.00,0,'搜索操作(search)','search'),(75391343379091456,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75388696739713024,8.00,0,'上传文件(upload)','upload'),(75391407526776832,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75388696739713024,9.00,0,'导出操作(output)','output'),(75391475042488320,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75388696739713024,10.00,0,'导入操作(input)','input'),(75391522182270976,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75388696739713024,11.00,0,'分配权限(editPerm)','editPerm'),(75391576364290048,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75388696739713024,12.00,0,'设为默认(setDefault)','setDefault'),(75391798033256448,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','',75388696739713024,13.00,0,'其他操作(other)','other'),(1536612796106674176,'admin','2022-06-14 15:33:34',0,NULL,NULL,'',1536612750841745408,1.00,0,'博士','博士'),(1536612834962706432,'admin','2022-06-14 15:33:43',0,NULL,NULL,'',1536612750841745408,2.00,0,'硕士','硕士'),(1536612883465637888,'admin','2022-06-14 15:33:55',0,'admin','2022-06-14 15:34:13','',1536612750841745408,3.00,0,'本科','本科'),(1536612930576060416,'admin','2022-06-14 15:34:06',0,'admin','2022-06-14 15:34:11','',1536612750841745408,4.00,0,'专科','专科'),(1536612993519980544,'admin','2022-06-14 15:34:21',0,'',NULL,'',1536612750841745408,5.00,0,'高中及以下','高中及以下'),(1536613425902391296,'admin','2022-06-14 15:36:04',0,NULL,NULL,'',1536613395229446144,1.00,0,'在职','在职'),(1536613447544999936,'admin','2022-06-14 15:36:09',0,NULL,NULL,'',1536613395229446144,2.00,0,'离职','离职');
/*!40000 ALTER TABLE `a_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_file`
--

DROP TABLE IF EXISTS `a_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_file` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint unsigned DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `f_key` varchar(255) DEFAULT NULL,
  `location` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_file`
--

LOCK TABLES `a_file` WRITE;
/*!40000 ALTER TABLE `a_file` DISABLE KEYS */;
INSERT INTO `a_file` VALUES (1527897791781801984,'admin','2022-05-21 14:23:15',0,NULL,NULL,'gh_57ba35562a20_258.jpg',43531,'image/jpeg','C:\\oa-file/20220521/1e07b00ffc20427fbdf2c434231c1e1e.jpg','1e07b00ffc20427fbdf2c434231c1e1e.jpg',0),(1527897840372813824,'admin','2022-05-21 14:23:27',0,NULL,NULL,'美术版权.xlsx',3605123,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','C:\\oa-file/20220521/4c1dadd45a8a4aca9a9ebd5f3256ba45.xlsx','4c1dadd45a8a4aca9a9ebd5f3256ba45.xlsx',0),(1527897921570344960,'admin','2022-05-21 14:23:46',0,NULL,NULL,'公司大门通行设备使用说明-V1.pdf',914877,'application/pdf','C:\\oa-file/20220521/74e865aed9594ea9a9a0536161e40066.pdf','74e865aed9594ea9a9a0536161e40066.pdf',0),(1527898199690448896,'admin','2022-05-21 14:24:52',0,NULL,NULL,'111.mp4',180593,'video/mp4','C:\\oa-file/20220521/113344a2389349ed8d02fb7dacfa058f.mp4','113344a2389349ed8d02fb7dacfa058f.mp4',0),(1527899386892390400,'admin','2022-05-21 14:29:36',0,NULL,NULL,'【模版】需求文档.md.zip',3104,'application/x-zip-compressed','C:\\oa-file/20220521/dacc0bc61cf34bc18d1259b4ce60d52c.zip','dacc0bc61cf34bc18d1259b4ce60d52c.zip',0),(1536614206311370752,'admin','2022-06-14 15:39:10',0,NULL,NULL,'张三签名.png',1686,'image/png','C:\\\\oa-file/20220614/62a6f2fde5994e5fac6a78aa5ad070ad.png','62a6f2fde5994e5fac6a78aa5ad070ad.png',0),(1536614698903015424,'admin','2022-06-14 15:41:08',0,NULL,NULL,'张三简历.pdf',28091,'application/pdf','C:\\\\oa-file/20220614/2a643018f08a4a4bbfacbb19218ab1e2.pdf','2a643018f08a4a4bbfacbb19218ab1e2.pdf',0);
/*!40000 ALTER TABLE `a_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_house_lease`
--

DROP TABLE IF EXISTS `a_house_lease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_house_lease` (
  `id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `house_money` decimal(19,2) DEFAULT NULL,
  `house_owner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `house_size` decimal(19,2) DEFAULT NULL,
  `house_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `image_url2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `image_url3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `init_money` decimal(19,2) DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `seller_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_house_lease`
--

LOCK TABLES `a_house_lease` WRITE;
/*!40000 ALTER TABLE `a_house_lease` DISABLE KEYS */;
INSERT INTO `a_house_lease` VALUES ('1588808739903901696','admin','2026-03-15 10:30:00.000000',0,NULL,'2026-03-15 10:30:00.000000','北京市朝阳区建国路88号SOHO现代城',2800.00,'张明',52.00,'单身公寓','https://tuzhizhijia.com/uploads/220108/1-22010Q4594V60.jpg','https://tuzhizhijia.com/uploads/220108/1-22010Q4594V60.jpg','https://tuzhizhijia.com/uploads/220108/1-22010Q4594V60.jpg',5600.00,'13812345678','精装修，近地铁，家电齐全','1464772465946398721',0),('1588808881004482560','admin','2026-03-20 14:20:00.000000',0,NULL,'2026-03-20 14:20:00.000000','上海市浦东新区陆家嘴环路1000号',5500.00,'李华',95.00,'三室一厅','https://tuzhizhijia.com/uploads/allimg/161220/1-16122011542RZ.jpg','https://tuzhizhijia.com/uploads/allimg/161220/1-16122011542RZ.jpg','https://tuzhizhijia.com/uploads/allimg/161220/1-16122011542RZ.jpg',11000.00,'13698765432','高层江景房，南北通透，学区房','1464772465946398721',0);
/*!40000 ALTER TABLE `a_house_lease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_house_lease_order`
--

DROP TABLE IF EXISTS `a_house_lease_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_house_lease_order` (
  `id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `house_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `house_money` decimal(19,2) DEFAULT NULL,
  `house_owner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `house_size` decimal(19,2) DEFAULT NULL,
  `house_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `init_money` decimal(19,2) DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `seller_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `status` int NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `user_mobile` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `user_money` decimal(19,2) DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `user_remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_house_lease_order`
--

LOCK TABLES `a_house_lease_order` WRITE;
/*!40000 ALTER TABLE `a_house_lease_order` DISABLE KEYS */;
INSERT INTO `a_house_lease_order` VALUES ('1588817263136477184','17859654121','2026-04-01 09:30:00.000000',0,'17859654125','2026-04-01 09:30:00.000000','浙江省温州市XXXXX','1588808881004482560',1500.00,'17859654121',78.00,'三室一厅',2400.00,'17859654121','测试','1464772465946398721',1,'1464764315201572865','17859654125',1200.00,'测试买家','我要租你的房子！'),('2042891891485315074','17859654121','2026-04-05 14:20:00.000000',0,'17859654125','2026-04-05 14:20:00.000000','浙江省绍兴市XXX','1588808739903901696',1000.00,'17859654121',68.00,'单身公寓',2000.00,'17859654121','测试','1464772465946398721',1,'1464764315201572865','17859654125',1600.00,'测试买家','1');
/*!40000 ALTER TABLE `a_house_lease_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_house_sell`
--

DROP TABLE IF EXISTS `a_house_sell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_house_sell` (
  `id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `house_money` decimal(19,2) DEFAULT NULL,
  `house_owner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `house_size` decimal(19,2) DEFAULT NULL,
  `house_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `image_url2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `image_url3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `seller_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_house_sell`
--

LOCK TABLES `a_house_sell` WRITE;
/*!40000 ALTER TABLE `a_house_sell` DISABLE KEYS */;
INSERT INTO `a_house_sell` VALUES ('1588808032635195392','admin','2026-03-10 09:00:00.000000',0,NULL,'2026-03-10 09:00:00.000000','广州市天河区珠江新城花城大道',320.00,'王伟',110.00,'三室一厅','https://tuzhizhijia.com/uploads/allimg/200517/1-20051G103330-L.jpg','https://tuzhizhijia.com/uploads/allimg/200517/1-20051G103330-L.jpg','https://tuzhizhijia.com/uploads/allimg/200517/1-20051G103330-L.jpg','13511112222','电梯洋房，带车位，满五唯一','1464772465946398721',0),('1588808247119319040','admin','2026-03-18 11:15:00.000000',0,NULL,'2026-03-18 11:15:00.000000','深圳市南山区科技园南路深圳湾1号',580.00,'赵鹏',168.00,'五室两厅','https://tuzhizhijia.com/uploads/allimg/160212/1-1602121302410-L.jpg','https://tuzhizhijia.com/uploads/allimg/160212/1-1602121302410-L.jpg','https://tuzhizhijia.com/uploads/allimg/160212/1-1602121302410-L.jpg','13922223333','豪华装修，海景大平层，拎包入住','1464772465946398721',0),('1588808510404169728','admin','2026-03-25 16:00:00.000000',0,NULL,'2026-03-25 16:00:00.000000','杭州市西湖区文三路478号',85.00,'陈静',38.00,'单身公寓','https://tuzhizhijia.com/uploads/allimg/170107/1-1F10G433400-L.jpg','https://tuzhizhijia.com/uploads/allimg/170107/1-1F10G433400-L.jpg','https://tuzhizhijia.com/uploads/allimg/170107/1-1F10G433400-L.jpg','13633334444','精装loft，近西湖，适合自住或投资','1464772465946398721',0);
/*!40000 ALTER TABLE `a_house_sell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_house_sell_order`
--

DROP TABLE IF EXISTS `a_house_sell_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_house_sell_order` (
  `id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `house_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `house_money` decimal(19,2) DEFAULT NULL,
  `house_owner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `house_size` decimal(19,2) DEFAULT NULL,
  `house_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `seller_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `status` int NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `user_mobile` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `user_money` decimal(19,2) DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `user_remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_house_sell_order`
--

LOCK TABLES `a_house_sell_order` WRITE;
/*!40000 ALTER TABLE `a_house_sell_order` DISABLE KEYS */;
INSERT INTO `a_house_sell_order` VALUES ('1588817146182504448','17859654121','2026-04-02 10:00:00.000000',0,'17859654125','2026-04-02 10:00:00.000000','浙江省舟山市XXX','1588808510404169728',46.00,'王五',30.00,'单身公寓','13600000021','测试','1464772465946398721',1,'1464764315201572865','17859654125',120.00,'测试买家','我要了哈哈！'),('2042891872405426176','17859654121','2026-04-06 11:30:00.000000',0,'17859654125','2026-04-06 11:30:00.000000','浙江省宁波市XXX','1588808247119319040',230.00,'李四',120.00,'五室两厅','0571-62923654','测试','1464772465946398721',1,'1464764315201572865','17859654125',230.00,'测试买家','11');
/*!40000 ALTER TABLE `a_house_sell_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_log`
--

DROP TABLE IF EXISTS `a_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_log` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `cost_time` int unsigned DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ip_info` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `request_param` longtext,
  `request_type` varchar(255) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `log_type` tinyint(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_log`
--

LOCK TABLES `a_log` WRITE;
/*!40000 ALTER TABLE `a_log` DISABLE KEYS */;
INSERT INTO `a_log` VALUES (2042876793962237952,NULL,'2026-04-11 16:05:58',0,NULL,'2026-04-11 16:05:58',329,'127.0.0.1','本地测试','登录系统','{\"username\":\"admin\",\"password\":\"\",\"code\":\"5676\",\"captchaId\":\"6b4a42952aae4a4f92a43d5a57637f74\",\"saveLogin\":\"true\"}','POST','/zwz/login','admin',1,'','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876794062901248,NULL,'2026-04-11 16:05:58',0,NULL,'2026-04-11 16:05:58',306,'127.0.0.1','本地测试','获取当前登录用户','{}','GET','/zwz/user/info','admin',2,'USER-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876795962920960,NULL,'2026-04-11 16:05:58',0,NULL,'2026-04-11 16:05:58',56,'127.0.0.1','本地测试','查询个人门户菜单B','{}','POST','/zwz/myDoor/getMyDoorList6','admin',2,'MY-DOOR-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876796034224128,NULL,'2026-04-11 16:05:58',0,NULL,'2026-04-11 16:05:58',261,'127.0.0.1','本地测试','查询菜单','{}','GET','/zwz/permission/getMenuList','admin',2,'PERMISSION-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876806423515136,NULL,'2026-04-11 16:06:00',0,NULL,'2026-04-11 16:06:00',158,'127.0.0.1','本地测试','查询子部门','{}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876806532567041,NULL,'2026-04-11 16:06:00',0,NULL,'2026-04-11 16:06:00',148,'127.0.0.1','本地测试','查询用户','{\"pageNumber\":\"1\",\"pageSize\":\"10\",\"sort\":\"createTime\",\"order\":\"desc\",\"departmentId\":\"\"}','GET','/zwz/myUser/getByPage','admin',2,'USER-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876806796808192,NULL,'2026-04-11 16:06:00',0,NULL,'2026-04-11 16:06:00',84,'127.0.0.1','本地测试','查询子部门','{}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876810353577984,NULL,'2026-04-11 16:06:01',0,NULL,'2026-04-11 16:06:01',35,'127.0.0.1','本地测试','查看单个配置','{\"id\":\"FILE_VIEW\"}','GET','/zwz/setting/getOne','admin',2,'SETTING-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876810353577985,NULL,'2026-04-11 16:06:01',0,NULL,'2026-04-11 16:06:01',35,'127.0.0.1','本地测试','查看单个配置','{\"id\":\"FILE_HTTP\"}','GET','/zwz/setting/getOne','admin',2,'SETTING-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876810353577986,NULL,'2026-04-11 16:06:01',0,NULL,'2026-04-11 16:06:01',33,'127.0.0.1','本地测试','查看单个配置','{\"id\":\"FILE_PATH\"}','GET','/zwz/setting/getOne','admin',2,'SETTING-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876810399715329,NULL,'2026-04-11 16:06:01',0,NULL,'2026-04-11 16:06:01',99,'127.0.0.1','本地测试','查询系统文件','{\"name\":\"\",\"fkey\":\"\",\"type\":\"\",\"pageNumber\":\"1\",\"pageSize\":\"15\",\"sort\":\"createTime\",\"order\":\"desc\",\"startDate\":\"\",\"endDate\":\"\"}','GET','/zwz/file/getByCondition','admin',2,'FILE-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876819073536000,NULL,'2026-04-11 16:06:03',0,NULL,'2026-04-11 16:06:03',43,'127.0.0.1','本地测试','查询角色','{\"pageNumber\":\"1\",\"pageSize\":\"15\",\"sort\":\"createTime\",\"order\":\"desc\"}','GET','/zwz/role/getAllByPage','admin',2,'ROLE-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876819170004992,NULL,'2026-04-11 16:06:03',0,NULL,'2026-04-11 16:06:03',65,'127.0.0.1','本地测试','查询全部菜单','{}','GET','/zwz/permission/getAllList','admin',2,'PERMISSION-04','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876822005354496,NULL,'2026-04-11 16:06:04',0,NULL,'2026-04-11 16:06:04',38,'127.0.0.1','本地测试','查询单个数据字典的值','{}','GET','/zwz/dictData/getByType/permission_type','admin',2,'DICT_DATA-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876832134598656,NULL,'2026-04-11 16:06:06',0,NULL,'2026-04-11 16:06:06',33,'127.0.0.1','本地测试','查询所有数据字典','{}','GET','/zwz/dict/getAll','admin',2,'DICT-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876832168153088,NULL,'2026-04-11 16:06:06',0,NULL,'2026-04-11 16:06:06',38,'127.0.0.1','本地测试','查询数据字典值','{\"name\":\"\",\"status\":\"\",\"pageNumber\":\"1\",\"pageSize\":\"10\",\"sort\":\"sortOrder\",\"order\":\"asc\"}','GET','/zwz/dictData/getByCondition','admin',2,'DICT_DATA-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876849536765953,NULL,'2026-04-11 16:06:10',0,NULL,'2026-04-11 16:06:10',36,'127.0.0.1','本地测试','查询全部角色','{}','GET','/zwz/role/getAllList','admin',2,'ROLE-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876849540960256,NULL,'2026-04-11 16:06:10',0,NULL,'2026-04-11 16:06:10',39,'127.0.0.1','本地测试','查询单个数据字典的值','{}','GET','/zwz/dictData/getByType/sex','admin',2,'DICT_DATA-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876849549348865,NULL,'2026-04-11 16:06:10',0,NULL,'2026-04-11 16:06:10',89,'127.0.0.1','本地测试','查询子部门','{}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876849566126080,NULL,'2026-04-11 16:06:10',0,NULL,'2026-04-11 16:06:10',87,'127.0.0.1','本地测试','查询用户','{\"nickname\":\"\",\"departmentId\":\"\",\"pageNumber\":\"1\",\"pageSize\":\"20\",\"sort\":\"createTime\",\"order\":\"desc\"}','GET','/zwz/user/getUserList','admin',2,'USER-07','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876849943613444,NULL,'2026-04-11 16:06:11',0,NULL,'2026-04-11 16:06:11',36,'127.0.0.1','本地测试','查询子部门','{}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876857078124548,NULL,'2026-04-11 16:06:12',0,NULL,'2026-04-11 16:06:12',46,'127.0.0.1','本地测试','查询用户','{\"pageNumber\":\"1\",\"pageSize\":\"10\",\"sort\":\"createTime\",\"order\":\"desc\",\"departmentId\":\"\"}','GET','/zwz/myUser/getByPage','admin',2,'USER-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876857082318850,NULL,'2026-04-11 16:06:12',0,NULL,'2026-04-11 16:06:12',43,'127.0.0.1','本地测试','查询子部门','{}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876857241702405,NULL,'2026-04-11 16:06:12',0,NULL,'2026-04-11 16:06:12',37,'127.0.0.1','本地测试','查询子部门','{}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876861125627905,NULL,'2026-04-11 16:06:13',0,NULL,'2026-04-11 16:06:13',40,'127.0.0.1','本地测试','查询角色','{\"pageNumber\":\"1\",\"pageSize\":\"15\",\"sort\":\"createTime\",\"order\":\"desc\"}','GET','/zwz/role/getAllByPage','admin',2,'ROLE-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042876862996287488,NULL,'2026-04-11 16:06:14',0,NULL,'2026-04-11 16:06:14',31,'127.0.0.1','本地测试','查询单个数据字典的值','{}','GET','/zwz/dictData/getByType/permission_type','admin',2,'DICT_DATA-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042877081838292992,NULL,'2026-04-11 16:07:06',0,NULL,'2026-04-11 16:07:06',93,'127.0.0.1','本地测试','登录系统','{\"username\":\"17859654125\",\"password\":\"\",\"code\":\"2184\",\"captchaId\":\"06a86dfe14e2431b8426154779a4d357\",\"saveLogin\":\"true\"}','POST','/zwz/login','17859654125',1,'','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042877081917984768,NULL,'2026-04-11 16:07:06',0,NULL,'2026-04-11 16:07:06',108,'127.0.0.1','本地测试','获取当前登录用户','{}','GET','/zwz/user/info','17859654125',2,'USER-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042877082467438592,NULL,'2026-04-11 16:07:06',0,NULL,'2026-04-11 16:07:06',49,'127.0.0.1','本地测试','查询菜单','{}','GET','/zwz/permission/getMenuList','17859654125',2,'PERMISSION-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042877082920423424,NULL,'2026-04-11 16:07:06',0,NULL,'2026-04-11 16:07:06',46,'127.0.0.1','本地测试','查询个人门户菜单B','{}','POST','/zwz/myDoor/getMyDoorList6','17859654125',2,'MY-DOOR-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042877228915757056,NULL,'2026-04-11 16:07:41',0,NULL,'2026-04-11 16:07:41',121,'127.0.0.1','本地测试','登录系统','{\"username\":\"admin\",\"password\":\"\",\"code\":\"7040\",\"captchaId\":\"fbe7ab7de8b14a119cf71279e537283b\",\"saveLogin\":\"true\"}','POST','/zwz/login','admin',1,'','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042877228970283008,NULL,'2026-04-11 16:07:41',0,NULL,'2026-04-11 16:07:41',99,'127.0.0.1','本地测试','获取当前登录用户','{}','GET','/zwz/user/info','admin',2,'USER-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042877229423267840,NULL,'2026-04-11 16:07:41',0,NULL,'2026-04-11 16:07:41',44,'127.0.0.1','本地测试','查询菜单','{}','GET','/zwz/permission/getMenuList','admin',2,'PERMISSION-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042877229733646347,NULL,'2026-04-11 16:07:41',0,NULL,'2026-04-11 16:07:41',54,'127.0.0.1','本地测试','查询个人门户菜单B','{}','POST','/zwz/myDoor/getMyDoorList6','admin',2,'MY-DOOR-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042877245500035072,NULL,'2026-04-11 16:07:45',0,NULL,'2026-04-11 16:07:45',35,'127.0.0.1','本地测试','查询所有数据字典','{}','GET','/zwz/dict/getAll','admin',2,'DICT-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042877245525200896,NULL,'2026-04-11 16:07:45',0,NULL,'2026-04-11 16:07:45',46,'127.0.0.1','本地测试','查询数据字典值','{\"name\":\"\",\"status\":\"\",\"pageNumber\":\"1\",\"pageSize\":\"10\",\"sort\":\"sortOrder\",\"order\":\"asc\"}','GET','/zwz/dictData/getByCondition','admin',2,'DICT_DATA-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042891409505259520,NULL,'2026-04-11 17:04:02',0,NULL,'2026-04-11 17:04:02',169,'127.0.0.1','本地测试','登录系统','{\"username\":\"17859654125\",\"password\":\"\",\"code\":\"8504\",\"captchaId\":\"0ad0cc3af5264557a80616603da8237f\",\"saveLogin\":\"true\"}','POST','/zwz/login','17859654125',1,'','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042891409601728512,NULL,'2026-04-11 17:04:02',0,NULL,'2026-04-11 17:04:02',153,'127.0.0.1','本地测试','获取当前登录用户','{}','GET','/zwz/user/info','17859654125',2,'USER-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042891410344120320,NULL,'2026-04-11 17:04:02',0,NULL,'2026-04-11 17:04:02',52,'127.0.0.1','本地测试','查询菜单','{}','GET','/zwz/permission/getMenuList','17859654125',2,'PERMISSION-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042891411006820352,NULL,'2026-04-11 17:04:02',0,NULL,'2026-04-11 17:04:02',42,'127.0.0.1','本地测试','查询个人门户菜单B','{}','POST','/zwz/myDoor/getMyDoorList6','17859654125',2,'MY-DOOR-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042891829044711424,NULL,'2026-04-11 17:05:42',0,NULL,'2026-04-11 17:05:42',133,'127.0.0.1','本地测试','登录系统','{\"username\":\"17859654121\",\"password\":\"\",\"code\":\"2773\",\"captchaId\":\"0071811a436644a5aa2311323c85a060\",\"saveLogin\":\"true\"}','POST','/zwz/login','17859654121',1,'','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042891829183123456,NULL,'2026-04-11 17:05:42',0,NULL,'2026-04-11 17:05:42',124,'127.0.0.1','本地测试','获取当前登录用户','{}','GET','/zwz/user/info','17859654121',2,'USER-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042891829812269056,NULL,'2026-04-11 17:05:42',0,NULL,'2026-04-11 17:05:42',55,'127.0.0.1','本地测试','查询菜单','{}','GET','/zwz/permission/getMenuList','17859654121',2,'PERMISSION-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042891830298808321,NULL,'2026-04-11 17:05:42',0,NULL,'2026-04-11 17:05:42',49,'127.0.0.1','本地测试','查询个人门户菜单B','{}','POST','/zwz/myDoor/getMyDoorList6','17859654121',2,'MY-DOOR-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042891955423285248,NULL,'2026-04-11 17:06:12',0,NULL,'2026-04-11 17:06:12',106,'127.0.0.1','本地测试','查询单个数据字典的值','{}','GET','/zwz/dictData/getByType/sex','17859654121',2,'DICT_DATA-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892004366618624,NULL,'2026-04-11 17:06:24',0,NULL,'2026-04-11 17:06:24',93,'127.0.0.1','本地测试','登录系统','{\"username\":\"17859654125\",\"password\":\"\",\"code\":\"4745\",\"captchaId\":\"291f1342d1d946549d8a0ae7fddc2622\",\"saveLogin\":\"true\"}','POST','/zwz/login','17859654125',1,'','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892004454699008,NULL,'2026-04-11 17:06:24',0,NULL,'2026-04-11 17:06:24',111,'127.0.0.1','本地测试','获取当前登录用户','{}','GET','/zwz/user/info','17859654125',2,'USER-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892004958015488,NULL,'2026-04-11 17:06:24',0,NULL,'2026-04-11 17:06:24',37,'127.0.0.1','本地测试','查询菜单','{}','GET','/zwz/permission/getMenuList','17859654125',2,'PERMISSION-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892005369057281,NULL,'2026-04-11 17:06:24',0,NULL,'2026-04-11 17:06:24',33,'127.0.0.1','本地测试','查询个人门户菜单B','{}','POST','/zwz/myDoor/getMyDoorList6','17859654125',2,'MY-DOOR-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892117080150016,NULL,'2026-04-11 17:06:51',0,NULL,'2026-04-11 17:06:51',112,'127.0.0.1','本地测试','登录系统','{\"username\":\"admin\",\"password\":\"\",\"code\":\"5016\",\"captchaId\":\"2fe97524f5f94a6396f9f10cfed30a1b\",\"saveLogin\":\"true\"}','POST','/zwz/login','admin',1,'','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892117130481664,NULL,'2026-04-11 17:06:51',0,NULL,'2026-04-11 17:06:51',99,'127.0.0.1','本地测试','获取当前登录用户','{}','GET','/zwz/user/info','admin',2,'USER-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892117667352576,NULL,'2026-04-11 17:06:51',0,NULL,'2026-04-11 17:06:51',85,'127.0.0.1','本地测试','查询菜单','{}','GET','/zwz/permission/getMenuList','admin',2,'PERMISSION-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892118141308928,NULL,'2026-04-11 17:06:51',0,NULL,'2026-04-11 17:06:51',49,'127.0.0.1','本地测试','查询个人门户菜单B','{}','POST','/zwz/myDoor/getMyDoorList6','admin',2,'MY-DOOR-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892128501239809,NULL,'2026-04-11 17:06:53',0,NULL,'2026-04-11 17:06:53',39,'127.0.0.1','本地测试','查询全部角色','{}','GET','/zwz/role/getAllList','admin',2,'ROLE-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892128513822721,NULL,'2026-04-11 17:06:53',0,NULL,'2026-04-11 17:06:53',43,'127.0.0.1','本地测试','查询单个数据字典的值','{}','GET','/zwz/dictData/getByType/sex','admin',2,'DICT_DATA-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892128522211333,NULL,'2026-04-11 17:06:53',0,NULL,'2026-04-11 17:06:53',121,'127.0.0.1','本地测试','查询子部门','{}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892128538988544,NULL,'2026-04-11 17:06:53',0,NULL,'2026-04-11 17:06:53',104,'127.0.0.1','本地测试','查询用户','{\"nickname\":\"\",\"departmentId\":\"\",\"pageNumber\":\"1\",\"pageSize\":\"20\",\"sort\":\"createTime\",\"order\":\"desc\"}','GET','/zwz/user/getUserList','admin',2,'USER-07','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892129042305024,NULL,'2026-04-11 17:06:53',0,NULL,'2026-04-11 17:06:53',45,'127.0.0.1','本地测试','查询子部门','{}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892157165113344,NULL,'2026-04-11 17:07:00',0,NULL,'2026-04-11 17:07:00',143,'127.0.0.1','本地测试','查询子部门','{}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892157169307648,NULL,'2026-04-11 17:07:00',0,NULL,'2026-04-11 17:07:00',143,'127.0.0.1','本地测试','查询用户','{\"pageNumber\":\"1\",\"pageSize\":\"10\",\"sort\":\"createTime\",\"order\":\"desc\",\"departmentId\":\"\"}','GET','/zwz/myUser/getByPage','admin',2,'USER-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892157676818432,NULL,'2026-04-11 17:07:00',0,NULL,'2026-04-11 17:07:00',44,'127.0.0.1','本地测试','查询子部门','{}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892176672821248,NULL,'2026-04-11 17:07:05',0,NULL,'2026-04-11 17:07:05',51,'127.0.0.1','本地测试','查询子部门','{\"parentId\":\"1464487288363945985\"}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892182460960768,NULL,'2026-04-11 17:07:06',0,NULL,'2026-04-11 17:07:06',49,'127.0.0.1','本地测试','查询子部门','{\"parentId\":\"1464487332064399361\"}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892280091774976,NULL,'2026-04-11 17:07:29',0,NULL,'2026-04-11 17:07:29',106,'127.0.0.1','本地测试','查看单个配置','{\"id\":\"FILE_HTTP\"}','GET','/zwz/setting/getOne','admin',2,'SETTING-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892280091774977,NULL,'2026-04-11 17:07:29',0,NULL,'2026-04-11 17:07:29',104,'127.0.0.1','本地测试','查看单个配置','{\"id\":\"FILE_PATH\"}','GET','/zwz/setting/getOne','admin',2,'SETTING-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892280095969280,NULL,'2026-04-11 17:07:29',0,NULL,'2026-04-11 17:07:29',119,'127.0.0.1','本地测试','查看单个配置','{\"id\":\"FILE_VIEW\"}','GET','/zwz/setting/getOne','admin',2,'SETTING-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892280242769920,NULL,'2026-04-11 17:07:29',0,NULL,'2026-04-11 17:07:29',138,'127.0.0.1','本地测试','查询系统文件','{\"name\":\"\",\"fkey\":\"\",\"type\":\"\",\"pageNumber\":\"1\",\"pageSize\":\"15\",\"sort\":\"createTime\",\"order\":\"desc\",\"startDate\":\"\",\"endDate\":\"\"}','GET','/zwz/file/getByCondition','admin',2,'FILE-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892305232433154,NULL,'2026-04-11 17:07:35',0,NULL,'2026-04-11 17:07:35',128,'127.0.0.1','本地测试','查询角色','{\"pageNumber\":\"1\",\"pageSize\":\"15\",\"sort\":\"createTime\",\"order\":\"desc\"}','GET','/zwz/role/getAllByPage','admin',2,'ROLE-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892404545163264,NULL,'2026-04-11 17:07:59',0,NULL,'2026-04-11 17:07:59',118,'127.0.0.1','本地测试','修改菜单权限','{\"roleId\":\"496138616573952\",\"permIds\":\"125909152017944576,1464484663442673664,5129710648430593,1464485105081913345,40238597734928384,1464485485316542465,56309618086776832,5129710648430592,5129710648430594,5129710648430595,39915540965232640,41363147411427328,1588788031622615040,1588790012172963840,1588790107618545664,1588804735811588096,1588805798111350784,1588805867338338304,1536599942410407936,1536600125332393984,1536600268379131904,1536604417711804416,1536606273959759872,1536606372668510208,1536606464712511488,1536606550951596032,1536606637815631872,1536875505901506560\"}','POST','/zwz/role/editRolePerm','admin',2,'ROLE-04','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892405128171521,NULL,'2026-04-11 17:07:59',0,NULL,'2026-04-11 17:07:59',41,'127.0.0.1','本地测试','查询角色','{\"pageNumber\":\"1\",\"pageSize\":\"15\",\"sort\":\"createTime\",\"order\":\"desc\"}','GET','/zwz/role/getAllByPage','admin',2,'ROLE-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892405182697472,NULL,'2026-04-11 17:07:59',0,NULL,'2026-04-11 17:07:59',144,'127.0.0.1','本地测试','查询菜单','{}','GET','/zwz/permission/getMenuList','admin',2,'PERMISSION-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892414229811200,NULL,'2026-04-11 17:08:01',0,NULL,'2026-04-11 17:08:01',61,'127.0.0.1','本地测试','查询单个数据字典的值','{}','GET','/zwz/dictData/getByType/permission_type','admin',2,'DICT_DATA-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892429803261952,NULL,'2026-04-11 17:08:05',0,NULL,'2026-04-11 17:08:05',51,'127.0.0.1','本地测试','查询日志','{\"logType\":\"1\",\"pageNumber\":\"1\",\"pageSize\":\"15\",\"startDate\":\"\",\"endDate\":\"\",\"sort\":\"createTime\",\"order\":\"desc\",\"ipInfo\":\"\",\"key\":\"\"}','GET','/zwz/log/getAllByPage','admin',2,'LOG-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892453316530179,NULL,'2026-04-11 17:08:11',0,NULL,'2026-04-11 17:08:11',112,'127.0.0.1','本地测试','查询个人门户菜单B','{}','POST','/zwz/myDoor/getMyDoorList6','admin',2,'MY-DOOR-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892459561848832,NULL,'2026-04-11 17:08:12',0,NULL,'2026-04-11 17:08:12',42,'127.0.0.1','本地测试','查询单个数据字典的值','{}','GET','/zwz/dictData/getByType/sex','admin',2,'DICT_DATA-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892459637346305,NULL,'2026-04-11 17:08:12',0,NULL,'2026-04-11 17:08:12',54,'127.0.0.1','本地测试','查询学生','{\"pageNumber\":\"1\",\"pageSize\":\"15\",\"sort\":\"createTime\",\"order\":\"desc\"}','GET','/zwz/student/getByPage','admin',3,'STUDENT-04','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892465656172546,NULL,'2026-04-11 17:08:14',0,NULL,'2026-04-11 17:08:14',41,'127.0.0.1','本地测试','查询单个数据字典的值','{}','GET','/zwz/dictData/getByType/education','admin',2,'DICT_DATA-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892465693921280,NULL,'2026-04-11 17:08:14',0,NULL,'2026-04-11 17:08:14',46,'127.0.0.1','本地测试','查询教师','{\"pageNumber\":\"1\",\"pageSize\":\"15\",\"sort\":\"createTime\",\"order\":\"desc\"}','GET','/zwz/teacher/getByPage','admin',3,'TEACHER-04','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892484538929160,NULL,'2026-04-11 17:08:18',0,NULL,'2026-04-11 17:08:18',44,'127.0.0.1','本地测试','查询个人门户菜单B','{}','POST','/zwz/myDoor/getMyDoorList6','admin',2,'MY-DOOR-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892493586042880,NULL,'2026-04-11 17:08:20',0,NULL,'2026-04-11 17:08:20',36,'127.0.0.1','本地测试','查询全部角色','{}','GET','/zwz/role/getAllList','admin',2,'ROLE-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892493590237184,NULL,'2026-04-11 17:08:20',0,NULL,'2026-04-11 17:08:20',39,'127.0.0.1','本地测试','查询单个数据字典的值','{}','GET','/zwz/dictData/getByType/sex','admin',2,'DICT_DATA-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892493594431488,NULL,'2026-04-11 17:08:20',0,NULL,'2026-04-11 17:08:20',111,'127.0.0.1','本地测试','查询子部门','{}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892493607014400,NULL,'2026-04-11 17:08:20',0,NULL,'2026-04-11 17:08:20',121,'127.0.0.1','本地测试','查询用户','{\"nickname\":\"\",\"departmentId\":\"\",\"pageNumber\":\"1\",\"pageSize\":\"20\",\"sort\":\"createTime\",\"order\":\"desc\"}','GET','/zwz/user/getUserList','admin',2,'USER-07','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892494076776448,NULL,'2026-04-11 17:08:20',0,NULL,'2026-04-11 17:08:20',42,'127.0.0.1','本地测试','查询子部门','{}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892521406861312,NULL,'2026-04-11 17:08:27',0,NULL,'2026-04-11 17:08:27',116,'127.0.0.1','本地测试','查询个人门户菜单B','{}','POST','/zwz/myDoor/getMyDoorList6','admin',2,'MY-DOOR-02','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892531770986496,NULL,'2026-04-11 17:08:29',0,NULL,'2026-04-11 17:08:29',41,'127.0.0.1','本地测试','查询用户','{\"pageNumber\":\"1\",\"pageSize\":\"10\",\"sort\":\"createTime\",\"order\":\"desc\",\"departmentId\":\"\"}','GET','/zwz/myUser/getByPage','admin',2,'USER-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892531775180805,NULL,'2026-04-11 17:08:29',0,NULL,'2026-04-11 17:08:29',44,'127.0.0.1','本地测试','查询子部门','{}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX'),(2042892531980701701,NULL,'2026-04-11 17:08:29',0,NULL,'2026-04-11 17:08:29',43,'127.0.0.1','本地测试','查询子部门','{}','GET','/zwz/department/getByParentId','admin',2,'DEP-01','PC端 | Chrome 146.0.0.0 | Mac OSX');
/*!40000 ALTER TABLE `a_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_permission`
--

DROP TABLE IF EXISTS `a_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_permission` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `level` int unsigned DEFAULT NULL,
  `button_type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `show_always` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_permission`
--

LOCK TABLES `a_permission` WRITE;
/*!40000 ALTER TABLE `a_permission` DISABLE KEYS */;
INSERT INTO `a_permission` VALUES (5129710648430592,'','2022-03-20 09:46:20',0,'admin','2022-05-29 13:05:28','','roleMenu',125909152017944576,0,4.00,'Main','/roleMenu','权限管理','md-desktop',1,'',0,_binary ''),(5129710648430593,'','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','','user-admin',1464484663442673664,0,1.10,'roster/user/user','user','用户管理','md-person',2,'',0,_binary ''),(5129710648430594,'','2022-03-20 09:46:20',0,'admin','2022-06-14 11:23:18','','role-manage',5129710648430592,0,1.00,'role/role/index','role','角色支持','md-contacts',2,'',0,_binary ''),(5129710648430595,'','2022-03-20 09:46:20',0,'admin','2022-06-14 11:23:13','','menu-manage',5129710648430592,0,2.00,'menu/menu/index','menu','菜单支持','md-menu',2,'',0,_binary ''),(39915540965232640,'','2022-03-20 09:46:20',0,'admin','2022-06-10 15:45:37','','monitor',125909152017944576,0,6.00,'Main','/monitor','日志管理','ios-analytics',1,'',0,_binary ''),(40238597734928384,'','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','','department-admin',1464485105081913345,0,1.20,'roster/department/department','department-admin','部门管理','md-git-branch',2,'',0,_binary ''),(41363147411427328,'','2022-03-20 09:46:20',0,'admin','2022-05-21 14:15:44','','log-manage',39915540965232640,0,2.20,'log/log/index','log','日志管理','md-list-box',2,'',0,_binary ''),(56309618086776832,'','2022-03-20 09:46:20',0,'admin','2022-05-29 07:18:02','','file-admin',1464485485316542465,0,1.00,'file/file/index','file','云盘','ios-folder',2,'',0,_binary ''),(125909152017944576,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','','zwz',0,-1,1.00,'','','数据中心','md-home',0,'',0,_binary ''),(1464484663442673664,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','','userTwoMenu',125909152017944576,0,1.00,'Main','/userTwoMenu','用户管理','md-analytics',1,'',0,_binary ''),(1464485105081913345,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',NULL,'depTwoMenu',125909152017944576,0,2.00,'Main','/depTwoMenu','部门管理','ios-apps',1,'',0,_binary ''),(1464485485316542465,'admin','2022-03-20 09:46:20',0,'admin','2022-05-21 14:13:42','','fileAdmin',125909152017944576,0,3.00,'Main','/fileAdmin','文件管理','md-basketball',1,'',0,_binary ''),(1530689520276738048,'admin','2022-05-29 07:16:35',0,NULL,NULL,NULL,'dictMenu',125909152017944576,0,5.00,'Main','/dictMenu','数据字典','ios-apps',1,'',-1,_binary ''),(1530689602321518592,'admin','2022-05-29 07:16:55',0,NULL,NULL,NULL,'dict',1530689520276738048,0,1.00,'dict/dict/index','dict','数据字典','ios-apps',2,'',0,_binary ''),(1535166254703316992,'admin','2022-06-10 15:45:32',0,NULL,NULL,NULL,'codeCreate',125909152017944576,0,7.00,'Main','/codeCreate','代码生成','ios-brush',1,'',-1,_binary ''),(1535166438371889152,'admin','2022-06-10 15:46:16',0,NULL,NULL,NULL,'vue',1535166254703316992,0,1.00,'code/vue/index','vue','前端表格','md-bug',2,'',0,_binary ''),(1536599942410407936,'admin','2022-06-14 14:42:30',0,NULL,NULL,NULL,'demo',0,-1,3.00,NULL,NULL,'二次开发','md-bulb',0,NULL,-1,NULL),(1536600125332393984,'admin','2022-06-14 14:43:13',0,'admin','2022-06-14 15:10:31','','tableDemo',1536599942410407936,0,1.00,'Main','/tableDemo','数据展示','ios-apps',1,'',-1,NULL),(1536600268379131904,'admin','2022-06-14 14:43:47',0,NULL,NULL,NULL,'demo1',1536600125332393984,0,1.00,'demo/demo1/index','demo1','代码生成样例','md-finger-print',2,'',0,NULL),(1536604417711804416,'admin','2022-06-14 15:00:17',0,'admin','2022-06-14 15:31:57','','demo2',1536600125332393984,0,2.00,'demo/demo2/index','demo2','复杂表格样例','md-archive',2,'',0,NULL),(1536606273959759872,'admin','2022-06-14 15:07:39',0,'admin','2022-06-14 15:10:23','','antv',1536599942410407936,0,2.00,'Main','/antv','图表展示','ios-pulse',1,'',0,NULL),(1536606372668510208,'admin','2022-06-14 15:08:03',0,NULL,NULL,NULL,'antv1',1536606273959759872,0,1.00,'demo/antv1/index','antv1','条形图','md-pricetags',2,'',0,NULL),(1536606464712511488,'admin','2022-06-14 15:08:25',0,NULL,NULL,NULL,'antv2',1536606273959759872,0,2.00,'demo/antv2/index','antv2','饼图','md-radio-button-off',2,'',0,NULL),(1536606550951596032,'admin','2022-06-14 15:08:45',0,NULL,NULL,NULL,'antv3',1536606273959759872,0,3.00,'demo/antv3/index','antv3','折线图','ios-nutrition',2,'',0,NULL),(1536606637815631872,'admin','2022-06-14 15:09:06',0,NULL,NULL,NULL,'antv4',1536606273959759872,0,4.00,'demo/antv4/index','antv4','柱状图','ios-phone-portrait',2,'',0,NULL),(1536875505901506560,'admin','2022-06-15 08:57:29',0,'admin','2022-06-15 09:01:01','','antvActive',1536606273959759872,0,5.00,'demo/antvActive/index','antvActive','动态图表样例','ios-apps',2,'',0,NULL),(1588788031622615040,'admin','2022-11-05 14:59:20',0,NULL,NULL,NULL,'houseTopMenu',0,-1,2.00,NULL,NULL,'房屋租售','md-aperture',0,NULL,0,NULL),(1588790012172963840,'admin','2022-11-05 15:07:12',0,NULL,NULL,NULL,'adminMenu',1588788031622615040,0,1.00,'Main','/adminMenu','管理员维护','md-aperture',1,'',0,NULL),(1588790107618545664,'admin','2022-11-05 15:07:35',0,NULL,NULL,NULL,'houseSell',1588790012172963840,0,1.00,'house/houseSell/index','houseSell','房屋销售维护','md-at',2,'',0,NULL),(1588790211800862720,'admin','2022-11-05 15:07:59',0,NULL,NULL,NULL,'userMenu',1588788031622615040,0,2.00,'Main','/userMenu','买家支持','md-card',1,'',0,NULL),(1588790321746153472,'admin','2022-11-05 15:08:26',0,NULL,NULL,NULL,'customerLeaseByUser',1588790211800862720,0,1.00,'house/customerLeaseByUser/index','customerLeaseByUser','我申请的出租','md-call',2,'',0,NULL),(1588790412640915456,'admin','2022-11-05 15:08:47',0,NULL,NULL,NULL,'houseLeaseByUser',1588790211800862720,0,2.00,'house/houseLeaseByUser/index','houseLeaseByUser','房屋出租浏览','ios-apps',2,'',0,NULL),(1588790562918633472,'admin','2022-11-05 15:09:23',0,'admin','2022-11-05 16:01:40','','houseSellByUser',1588790211800862720,0,3.00,'house/houseSellByUser/index','houseSellByUser','房屋销售浏览','ios-apps',2,'',0,NULL),(1588790631667470336,'admin','2022-11-05 15:09:40',0,'admin','2022-11-05 16:01:54','','customerSellByUser',1588790211800862720,0,4.00,'house/customerSellByUser/index','customerSellByUser','我申请的销售','md-analytics',2,'',0,NULL),(1588790707383046144,'admin','2022-11-05 15:09:58',0,NULL,NULL,NULL,'sellerMenu',1588788031622615040,0,3.00,'Main','/sellerMenu','卖家支持','md-analytics',1,'',0,NULL),(1588790791621447680,'admin','2022-11-05 15:10:18',0,NULL,NULL,NULL,'customerSellBySeller',1588790707383046144,0,1.00,'house/customerSellBySeller/index','customerSellBySeller','我的销售订单','ios-alarm',2,'',0,NULL),(1588790877353021440,'admin','2022-11-05 15:10:38',0,NULL,NULL,NULL,'customerLeaseBySeller',1588790707383046144,0,2.00,'house/customerLeaseBySeller/index','customerLeaseBySeller','我的出租订单','ios-american-football',2,'',0,NULL),(1588804266909372416,'admin','2022-11-05 16:03:50',0,NULL,NULL,NULL,'sellOrderBySeller',1588790707383046144,0,3.00,'house/sellOrderBySeller/index','sellOrderBySeller','我的销售交易','md-analytics',2,'',0,NULL),(1588804332646699008,'admin','2022-11-05 16:04:06',0,NULL,NULL,NULL,'leaseOrderBySeller',1588790707383046144,0,4.00,'house/leaseOrderBySeller/index','leaseOrderBySeller','我的出租交易','md-archive',2,'',0,NULL),(1588804513911934976,'admin','2022-11-05 16:04:49',0,NULL,NULL,NULL,'sellOrderByUser',1588790211800862720,0,5.00,'house/sellOrderByUser/index','sellOrderByUser','我的销售交易','md-basketball',2,'',0,NULL),(1588804589736562688,'admin','2022-11-05 16:05:07',0,NULL,NULL,NULL,'leaseOrderByUser',1588790211800862720,0,6.00,'house/leaseOrderByUser/index','leaseOrderByUser','我的出租交易','ios-calculator',2,'',0,NULL),(1588804735811588096,'admin','2022-11-05 16:05:42',0,NULL,NULL,NULL,'houseLease',1588790012172963840,0,2.00,'house/houseLease/index','houseLease','房屋出租维护','ios-basket',2,'',0,NULL),(1588805798111350784,'admin','2022-11-05 16:09:56',0,NULL,NULL,NULL,'customerSell',1588790012172963840,0,3.00,'house/customerSell/index','customerSell','销售订单维护','md-analytics',2,'',0,NULL),(1588805867338338304,'admin','2022-11-05 16:10:12',0,NULL,NULL,NULL,'customerLease',1588790012172963840,0,4.00,'house/customerLease/index','customerLease','出租订单维护','md-appstore',2,'',0,NULL);
/*!40000 ALTER TABLE `a_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_role`
--

DROP TABLE IF EXISTS `a_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_role` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `default_role` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `data_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_role`
--

LOCK TABLES `a_role` WRITE;
/*!40000 ALTER TABLE `a_role` DISABLE KEYS */;
INSERT INTO `a_role` VALUES (496138616573952,'','2022-03-20 09:46:20','admin','2022-03-20 09:46:20','ROLE_ADMIN',0,NULL,'超级管理员',0),(496138616573953,'','2022-03-20 09:46:20','admin','2022-11-05 16:10:29','ROLE_USER',0,_binary '','买家',0),(1588805978739052544,'admin','2022-11-05 16:10:39','admin','2022-03-20 09:46:20','ROLE_SELLER',0,_binary '','卖家',0);
/*!40000 ALTER TABLE `a_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_role_permission`
--

DROP TABLE IF EXISTS `a_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_role_permission` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `permission_id` bigint unsigned DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_role_permission`
--

LOCK TABLES `a_role_permission` WRITE;
/*!40000 ALTER TABLE `a_role_permission` DISABLE KEYS */;
INSERT INTO `a_role_permission` VALUES (1464514325862551552,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',125909152017944576,496138616573952),(1464514325862551553,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',1464484663442673664,496138616573952),(1464514325862551554,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',5129710648430593,496138616573952),(1464514325862551563,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',1464485105081913345,496138616573952),(1464514325862551564,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',40238597734928384,496138616573952),(1464514325862551568,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',1464485485316542465,496138616573952),(1464514325862551569,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',56309618086776832,496138616573952),(1464514325862551583,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',5129710648430592,496138616573952),(1464514325862551584,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',5129710648430594,496138616573952),(1464514325862551590,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',5129710648430595,496138616573952),(1464514325862551594,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',39915540965232640,496138616573952),(1464514325862551595,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',41363147411427328,496138616573952),(1536600292156641281,'admin','2022-06-14 14:43:53',0,NULL,NULL,1536599942410407936,496138616573952),(1536600292173418496,'admin','2022-06-14 14:43:53',0,NULL,NULL,1536600125332393984,496138616573952),(1536600292186001408,'admin','2022-06-14 14:43:53',0,NULL,NULL,1536600268379131904,496138616573952),(1536604439178252292,'admin','2022-06-14 15:00:22',0,NULL,NULL,1536604417711804416,496138616573952),(1536606659718287364,'admin','2022-06-14 15:09:11',0,NULL,NULL,1536606273959759872,496138616573952),(1536606659730870272,'admin','2022-06-14 15:09:11',0,NULL,NULL,1536606372668510208,496138616573952),(1536606659735064576,'admin','2022-06-14 15:09:11',0,NULL,NULL,1536606464712511488,496138616573952),(1536606659743453184,'admin','2022-06-14 15:09:11',0,NULL,NULL,1536606550951596032,496138616573952),(1536606659751841792,'admin','2022-06-14 15:09:11',0,NULL,NULL,1536606637815631872,496138616573952),(1536875525769924610,'admin','2022-06-15 08:57:34',0,NULL,NULL,1536875505901506560,496138616573952),(1588806017410535433,'admin','2022-11-05 16:10:48',0,NULL,NULL,1588788031622615040,496138616573952),(1588806017439895552,'admin','2022-11-05 16:10:48',0,NULL,NULL,1588790012172963840,496138616573952),(1588806017452478464,'admin','2022-11-05 16:10:48',0,NULL,NULL,1588790107618545664,496138616573952),(1588806017460867072,'admin','2022-11-05 16:10:48',0,NULL,NULL,1588804735811588096,496138616573952),(1588806017469255680,'admin','2022-11-05 16:10:48',0,NULL,NULL,1588805798111350784,496138616573952),(1588806017477644288,'admin','2022-11-05 16:10:48',0,NULL,NULL,1588805867338338304,496138616573952),(1588806073802952704,'admin','2022-11-05 16:11:01',0,NULL,NULL,1588788031622615040,496138616573953),(1588806073815535616,'admin','2022-11-05 16:11:01',0,NULL,NULL,1588790211800862720,496138616573953),(1588806073823924224,'admin','2022-11-05 16:11:01',0,NULL,NULL,1588790321746153472,496138616573953),(1588806073836507136,'admin','2022-11-05 16:11:01',0,NULL,NULL,1588790412640915456,496138616573953),(1588806073844895744,'admin','2022-11-05 16:11:01',0,NULL,NULL,1588790562918633472,496138616573953),(1588806073849090048,'admin','2022-11-05 16:11:01',0,NULL,NULL,1588790631667470336,496138616573953),(1588806073853284352,'admin','2022-11-05 16:11:01',0,NULL,NULL,1588804513911934976,496138616573953),(1588806073857478656,'admin','2022-11-05 16:11:01',0,NULL,NULL,1588804589736562688,496138616573953),(1588806073865867264,'admin','2022-11-05 16:11:01',0,NULL,NULL,1536599942410407936,496138616573953),(1588806073870061568,'admin','2022-11-05 16:11:01',0,NULL,NULL,1536600125332393984,496138616573953),(1588806073874255872,'admin','2022-11-05 16:11:01',0,NULL,NULL,1536600268379131904,496138616573953),(1588806073878450176,'admin','2022-11-05 16:11:01',0,NULL,NULL,1536604417711804416,496138616573953),(1588806073882644480,'admin','2022-11-05 16:11:01',0,NULL,NULL,1536606273959759872,496138616573953),(1588806073886838784,'admin','2022-11-05 16:11:01',0,NULL,NULL,1536606372668510208,496138616573953),(1588806073891033088,'admin','2022-11-05 16:11:01',0,NULL,NULL,1536606464712511488,496138616573953),(1588806073895227392,'admin','2022-11-05 16:11:01',0,NULL,NULL,1536606550951596032,496138616573953),(1588806073903616000,'admin','2022-11-05 16:11:01',0,NULL,NULL,1536606637815631872,496138616573953),(1588806073912004608,'admin','2022-11-05 16:11:01',0,NULL,NULL,1536875505901506560,496138616573953),(1588806122263941120,'admin','2022-11-05 16:11:13',0,NULL,NULL,1588788031622615040,1588805978739052544),(1588806122272329728,'admin','2022-11-05 16:11:13',0,NULL,NULL,1588790707383046144,1588805978739052544),(1588806122272329729,'admin','2022-11-05 16:11:13',0,NULL,NULL,1588790791621447680,1588805978739052544),(1588806122280718336,'admin','2022-11-05 16:11:13',0,NULL,NULL,1588790877353021440,1588805978739052544),(1588806122289106944,'admin','2022-11-05 16:11:13',0,NULL,NULL,1588804266909372416,1588805978739052544),(1588806122293301248,'admin','2022-11-05 16:11:13',0,NULL,NULL,1588804332646699008,1588805978739052544),(1588806122301689856,'admin','2022-11-05 16:11:13',0,NULL,NULL,1536599942410407936,1588805978739052544),(1588806122314272768,'admin','2022-11-05 16:11:13',0,NULL,NULL,1536600125332393984,1588805978739052544),(1588806122322661376,'admin','2022-11-05 16:11:13',0,NULL,NULL,1536600268379131904,1588805978739052544),(1588806122335244288,'admin','2022-11-05 16:11:13',0,NULL,NULL,1536604417711804416,1588805978739052544),(1588806122339438592,'admin','2022-11-05 16:11:13',0,NULL,NULL,1536606273959759872,1588805978739052544),(1588806122347827200,'admin','2022-11-05 16:11:13',0,NULL,NULL,1536606372668510208,1588805978739052544),(1588806122352021504,'admin','2022-11-05 16:11:13',0,NULL,NULL,1536606464712511488,1588805978739052544),(1588806122360410112,'admin','2022-11-05 16:11:13',0,NULL,NULL,1536606550951596032,1588805978739052544),(1588806122368798720,'admin','2022-11-05 16:11:13',0,NULL,NULL,1536606637815631872,1588805978739052544),(1588806122372993024,'admin','2022-11-05 16:11:13',0,NULL,NULL,1536875505901506560,1588805978739052544);
/*!40000 ALTER TABLE `a_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_setting`
--

DROP TABLE IF EXISTS `a_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_setting` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_setting`
--

LOCK TABLES `a_setting` WRITE;
/*!40000 ALTER TABLE `a_setting` DISABLE KEYS */;
INSERT INTO `a_setting` VALUES ('FILE_HTTP',NULL,NULL,0,'admin','2022-05-28 15:57:20','http://'),('FILE_PATH',NULL,NULL,0,'admin','2022-05-28 15:57:19','C:\\\\oa-file'),('FILE_VIEW',NULL,NULL,0,'admin','2022-05-28 15:57:20','127.0.0.1:8080/zwz/file/view'),('LOCAL_OSS','admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','{\"serviceName\":\"LOCAL_OSS\",\"endpoint\":\"127.0.0.1:8080/zwz/file/view\",\"http\":\"http://\",\"filePath\":\"C:\\\\oa-file\"}'),('OSS_USED','admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20','LOCAL_OSS');
/*!40000 ALTER TABLE `a_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_student`
--

DROP TABLE IF EXISTS `a_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_student` (
  `id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `age` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_student`
--

LOCK TABLES `a_student` WRITE;
/*!40000 ALTER TABLE `a_student` DISABLE KEYS */;
INSERT INTO `a_student` VALUES ('1536601255475023872','admin','2022-06-14 14:47:42.637000',0,NULL,NULL,'张三','001','北京大学','男',18.00),('1536601308352614400','admin','2022-06-14 14:47:55.244000',0,NULL,NULL,'李四','002','清华大学','女',19.00),('1536601388044390400','admin','2022-06-14 14:48:14.243000',0,NULL,NULL,'王五','003','浙江大学','男',20.00),('1536601469879455744','admin','2022-06-14 14:48:33.753000',0,NULL,NULL,'赵六','004','宁波大学','保密',21.00);
/*!40000 ALTER TABLE `a_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_teacher`
--

DROP TABLE IF EXISTS `a_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_teacher` (
  `id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `age` decimal(19,2) DEFAULT NULL,
  `autograph` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `graduated` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  `wages` decimal(19,2) DEFAULT NULL,
  `resume` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_teacher`
--

LOCK TABLES `a_teacher` WRITE;
/*!40000 ALTER TABLE `a_teacher` DISABLE KEYS */;
INSERT INTO `a_teacher` VALUES ('1536614275123122176','admin','2022-06-14 15:39:26.000000',0,'admin','2022-06-14 15:41:09.841000',30.00,'http://127.0.0.1:8080/zwz/file/view/1536614206311370752','博士','同济大学','张三','测试','在职',9960.00,'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),('1536614275123122177','admin','2022-06-14 15:39:26.000000',0,'admin','2022-06-14 15:41:09.841000',30.00,'http://127.0.0.1:8080/zwz/file/view/1536614206311370752','本科','同济大学','李四','测试','在职',7778.00,'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),('1536614275123122178','admin','2022-06-14 15:39:26.000000',0,'admin','2022-06-14 15:41:09.841000',30.00,'http://127.0.0.1:8080/zwz/file/view/1536614206311370752','硕士','同济大学','王五','测试','在职',8889.00,'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),('1536614275123122179','admin','2022-06-14 15:39:26.000000',0,'admin','2022-06-14 15:41:09.841000',30.00,'http://127.0.0.1:8080/zwz/file/view/1536614206311370752','硕士','同济大学','赵六','测试','在职',4445.00,'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),('1536614275123122180','admin','2022-06-14 15:39:26.000000',0,'admin','2022-06-14 15:41:09.841000',30.00,'http://127.0.0.1:8080/zwz/file/view/1536614206311370752','专科','同济大学','郑七','测试','在职',1118.00,'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),('1536614275123122181','admin','2022-06-14 15:39:26.000000',0,'admin','2022-06-14 15:41:09.841000',30.00,'http://127.0.0.1:8080/zwz/file/view/1536614206311370752','专科','同济大学','龚八','测试','在职',3337.00,'http://127.0.0.1:8080/zwz/file/view/1536614698903015424');
/*!40000 ALTER TABLE `a_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_user`
--

DROP TABLE IF EXISTS `a_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_user` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `department_id` bigint unsigned DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `pass_strength` varchar(2) DEFAULT NULL,
  `department_title` varchar(255) DEFAULT NULL,
  `birth` datetime(6) DEFAULT NULL,
  `my_door` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_user`
--

LOCK TABLES `a_user` WRITE;
/*!40000 ALTER TABLE `a_user` DISABLE KEYS */;
INSERT INTO `a_user` VALUES (682265633886208,'','2026-01-01 00:00:00','admin','2022-05-18 14:41:08','[\"330000\",\"330600\",\"330602\"]','https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0','北大','916077357@qq.com','17857054388','管理员','$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy','男',0,1,'admin',0,1464487379074158593,'东西街道2','弱','设计研发部','2000-01-08 00:00:00.000000','user-adminZWZ666department-admin'),(1464764315201572865,'','2026-03-01 10:00:00','admin','2022-11-05 16:23:47','','https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0','','17859654125@qq.com','17859654125','测试买家','$2a$10$E59nactOiILAzQvfcs0JFOYuZp06d4bLhugEadyQuygpmiLc0W.ha','女',0,0,'17859654125',0,1464487332064399361,'','','行政综合部',NULL,''),(1464772465946398721,'','2026-03-01 10:00:00','admin','2022-11-05 16:23:53','[\"110000\",\"110100\",\"110105\"]','https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0','','17859654121@qq.com','17859654121','测试卖家','$2a$10$vJyLo1RhFORH/SAu3sc9aeb37I5JRy5UugaN7fIt/e2vvsz6JWJCm','女',0,0,'17859654121',0,1464487432169852929,'','','综合发展部',NULL,''),(1527830053524738048,'admin','2022-05-21 09:54:05','admin','2022-11-05 16:23:25','[\"110000\",\"110100\",\"110106\"]','https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0',NULL,'user4@qq.com','17896525487','user4','$2a$10$oeP4aplYnswfQ44pK6lAO.Np9BuPYJGRwo17THO7CUNlIQoVGsPmy','男',-1,0,'user4',0,1464487332064399361,NULL,'弱','行政综合部',NULL,NULL);
/*!40000 ALTER TABLE `a_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_user_role`
--

DROP TABLE IF EXISTS `a_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_user_role` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_user_role`
--

LOCK TABLES `a_user_role` WRITE;
/*!40000 ALTER TABLE `a_user_role` DISABLE KEYS */;
INSERT INTO `a_user_role` VALUES (1464487931975700480,'admin','2022-03-20 09:46:20',0,'admin','2022-03-20 09:46:20',496138616573952,682265633886208),(1526802492967489537,NULL,'2022-05-18 13:50:56',0,NULL,NULL,496138616573953,1526802492443201536),(1526819095553642497,NULL,'2022-05-18 14:56:54',0,NULL,NULL,496138616573953,1526819095159377920),(1527830053889642496,'admin','2022-05-21 09:54:05',0,NULL,NULL,496138616573952,1527830053524738048),(1588809286815977472,'admin','2022-11-05 16:23:47',0,NULL,NULL,496138616573953,1464764315201572865),(1588809309658157056,'admin','2022-11-05 16:23:53',0,NULL,NULL,1588805978739052544,1464772465946398721);
/*!40000 ALTER TABLE `a_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-11 17:58:33
