-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: ry_vue
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint NOT NULL,
  `sched_time` bigint NOT NULL,
  `priority` int NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017A6B1397A078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017A6B1397A078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017A6B1397A078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint NOT NULL,
  `checkin_interval` bigint NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler','DESKTOP-QV38KVH1625625653979',1625645070279,15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint NOT NULL,
  `repeat_interval` bigint NOT NULL,
  `times_triggered` bigint NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int DEFAULT NULL,
  `int_prop_2` int DEFAULT NULL,
  `long_prop_1` bigint DEFAULT NULL,
  `long_prop_2` bigint DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint DEFAULT NULL,
  `prev_fire_time` bigint DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint NOT NULL,
  `end_time` bigint DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1625625660000,-1,5,'PAUSED','CRON',1625625654000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1625625660000,-1,5,'PAUSED','CRON',1625625654000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,1625625660000,-1,5,'PAUSED','CRON',1625625655000,0,NULL,2,'');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2021-07-03 14:34:43','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2021-07-03 14:34:43','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2021-07-03 14:34:43','',NULL,'深色主题theme-dark，浅色主题theme-light');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','上海杉达学院',0,'若依','15888888888','ry@qq.com','0','0','admin','2021-07-03 14:34:28','admin','2021-07-04 17:42:05'),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:29','',NULL),(200,100,'0,100','嘉善分校',3,NULL,NULL,NULL,'0','0','admin','2021-07-04 17:42:45','',NULL),(201,200,'0,100,200','酒店管理',1,NULL,NULL,NULL,'0','0','admin','2021-07-04 17:43:23','',NULL),(202,100,'0,100','金海分校',1,NULL,NULL,NULL,'0','0','admin','2021-07-06 11:41:48','',NULL),(203,202,'0,100,202','计算机科学与技术',1,NULL,NULL,NULL,'0','0','admin','2021-07-06 11:42:28','',NULL),(204,100,'0,100','金沙江分校',2,NULL,NULL,NULL,'0','2','admin','2021-07-06 17:04:47','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2021-07-03 14:34:42','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2021-07-03 14:34:42','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2021-07-03 14:34:42','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2021-07-03 14:34:42','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2021-07-03 14:34:42','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2021-07-03 14:34:42','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2021-07-03 14:34:42','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2021-07-03 14:34:42','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2021-07-03 14:34:42','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2021-07-03 14:34:42','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2021-07-03 14:34:42','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2021-07-03 14:34:42','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2021-07-03 14:34:42','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2021-07-03 14:34:42','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2021-07-03 14:34:42','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2021-07-03 14:34:43','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2021-07-03 14:34:43','',NULL,'关闭状态'),(18,1,'新增','1','sys_oper_type','','info','N','0','admin','2021-07-03 14:34:43','',NULL,'新增操作'),(19,2,'修改','2','sys_oper_type','','info','N','0','admin','2021-07-03 14:34:43','',NULL,'修改操作'),(20,3,'删除','3','sys_oper_type','','danger','N','0','admin','2021-07-03 14:34:43','',NULL,'删除操作'),(21,4,'授权','4','sys_oper_type','','primary','N','0','admin','2021-07-03 14:34:43','',NULL,'授权操作'),(22,5,'导出','5','sys_oper_type','','warning','N','0','admin','2021-07-03 14:34:43','',NULL,'导出操作'),(23,6,'导入','6','sys_oper_type','','warning','N','0','admin','2021-07-03 14:34:43','',NULL,'导入操作'),(24,7,'强退','7','sys_oper_type','','danger','N','0','admin','2021-07-03 14:34:43','',NULL,'强退操作'),(25,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2021-07-03 14:34:43','',NULL,'生成操作'),(26,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2021-07-03 14:34:43','',NULL,'清空操作'),(27,1,'成功','0','sys_common_status','','primary','N','0','admin','2021-07-03 14:34:43','',NULL,'正常状态'),(28,2,'失败','1','sys_common_status','','danger','N','0','admin','2021-07-03 14:34:43','',NULL,'停用状态'),(100,1,'男','0','sys_student_sex',NULL,'default','N','0','admin','2021-07-04 17:21:13','admin','2021-07-04 17:23:25','性别男'),(101,2,'女','1','sys_student_sex',NULL,'default','N','0','admin','2021-07-04 17:22:05','admin','2021-07-04 17:23:35','性别女'),(102,3,'未知','2','sys_student_sex',NULL,'default','N','0','admin','2021-07-04 17:23:07','',NULL,'性别未知');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2021-07-03 14:34:41','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2021-07-03 14:34:41','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2021-07-03 14:34:41','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2021-07-03 14:34:41','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2021-07-03 14:34:41','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2021-07-03 14:34:41','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2021-07-03 14:34:41','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2021-07-03 14:34:41','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2021-07-03 14:34:41','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2021-07-03 14:34:42','',NULL,'登录状态列表'),(100,'学生性别','sys_student_sex','0','admin','2021-07-04 14:00:42','admin','2021-07-04 14:02:30','学生性别列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2021-07-03 14:34:44','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2021-07-03 14:34:44','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2021-07-03 14:34:44','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-07-03 14:49:47'),(101,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2021-07-03 14:49:48'),(102,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-07-03 14:49:55'),(103,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2021-07-03 14:53:26'),(104,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-07-03 14:53:32'),(105,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-07-03 21:22:33'),(106,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-07-04 12:29:21'),(107,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-07-04 13:22:14'),(108,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-07-04 16:53:54'),(109,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-07-06 10:38:05'),(110,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-07-06 11:30:14'),(111,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-07-06 16:47:09'),(112,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2021-07-07 10:43:19'),(113,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-07-07 10:43:24'),(114,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-07-07 15:54:43');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2009 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'system',NULL,1,0,'M','0','0','','system','admin','2021-07-03 14:34:31','',NULL,'系统管理目录'),(2,'系统监控',0,2,'monitor',NULL,1,0,'M','0','0','','monitor','admin','2021-07-03 14:34:31','',NULL,'系统监控目录'),(3,'系统工具',0,3,'tool',NULL,1,0,'M','0','0','','tool','admin','2021-07-03 14:34:31','',NULL,'系统工具目录'),(4,'若依官网',0,4,'http://ruoyi.vip',NULL,0,0,'M','0','0','','guide','admin','2021-07-03 14:34:31','',NULL,'若依官网地址'),(100,'用户管理',1,1,'user','system/user/index',1,0,'C','0','0','system:user:list','user','admin','2021-07-03 14:34:31','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'role','system/role/index',1,0,'C','0','0','system:role:list','peoples','admin','2021-07-03 14:34:31','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'menu','system/menu/index',1,0,'C','0','0','system:menu:list','tree-table','admin','2021-07-03 14:34:31','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'dept','system/dept/index',1,0,'C','0','0','system:dept:list','tree','admin','2021-07-03 14:34:31','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'post','system/post/index',1,0,'C','0','0','system:post:list','post','admin','2021-07-03 14:34:31','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'dict','system/dict/index',1,0,'C','0','0','system:dict:list','dict','admin','2021-07-03 14:34:31','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'config','system/config/index',1,0,'C','0','0','system:config:list','edit','admin','2021-07-03 14:34:31','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'notice','system/notice/index',1,0,'C','0','0','system:notice:list','message','admin','2021-07-03 14:34:31','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'log','',1,0,'M','0','0','','log','admin','2021-07-03 14:34:31','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'online','monitor/online/index',1,0,'C','0','0','monitor:online:list','online','admin','2021-07-03 14:34:31','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'job','monitor/job/index',1,0,'C','0','0','monitor:job:list','job','admin','2021-07-03 14:34:31','',NULL,'定时任务菜单'),(111,'数据监控',2,3,'druid','monitor/druid/index',1,0,'C','0','0','monitor:druid:list','druid','admin','2021-07-03 14:34:32','',NULL,'数据监控菜单'),(112,'服务监控',2,4,'server','monitor/server/index',1,0,'C','0','0','monitor:server:list','server','admin','2021-07-03 14:34:32','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'cache','monitor/cache/index',1,0,'C','0','0','monitor:cache:list','redis','admin','2021-07-03 14:34:32','',NULL,'缓存监控菜单'),(114,'表单构建',3,1,'build','tool/build/index',1,0,'C','0','0','tool:build:list','build','admin','2021-07-03 14:34:32','',NULL,'表单构建菜单'),(115,'代码生成',3,2,'gen','tool/gen/index',1,0,'C','0','0','tool:gen:list','code','admin','2021-07-03 14:34:32','',NULL,'代码生成菜单'),(116,'系统接口',3,3,'swagger','tool/swagger/index',1,0,'C','0','0','tool:swagger:list','swagger','admin','2021-07-03 14:34:32','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'operlog','monitor/operlog/index',1,0,'C','0','0','monitor:operlog:list','form','admin','2021-07-03 14:34:32','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'logininfor','monitor/logininfor/index',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2021-07-03 14:34:32','',NULL,'登录日志菜单'),(1001,'用户查询',100,1,'','',1,0,'F','0','0','system:user:query','#','admin','2021-07-03 14:34:32','',NULL,''),(1002,'用户新增',100,2,'','',1,0,'F','0','0','system:user:add','#','admin','2021-07-03 14:34:32','',NULL,''),(1003,'用户修改',100,3,'','',1,0,'F','0','0','system:user:edit','#','admin','2021-07-03 14:34:32','',NULL,''),(1004,'用户删除',100,4,'','',1,0,'F','0','0','system:user:remove','#','admin','2021-07-03 14:34:32','',NULL,''),(1005,'用户导出',100,5,'','',1,0,'F','0','0','system:user:export','#','admin','2021-07-03 14:34:32','',NULL,''),(1006,'用户导入',100,6,'','',1,0,'F','0','0','system:user:import','#','admin','2021-07-03 14:34:32','',NULL,''),(1007,'重置密码',100,7,'','',1,0,'F','0','0','system:user:resetPwd','#','admin','2021-07-03 14:34:32','',NULL,''),(1008,'角色查询',101,1,'','',1,0,'F','0','0','system:role:query','#','admin','2021-07-03 14:34:32','',NULL,''),(1009,'角色新增',101,2,'','',1,0,'F','0','0','system:role:add','#','admin','2021-07-03 14:34:32','',NULL,''),(1010,'角色修改',101,3,'','',1,0,'F','0','0','system:role:edit','#','admin','2021-07-03 14:34:32','',NULL,''),(1011,'角色删除',101,4,'','',1,0,'F','0','0','system:role:remove','#','admin','2021-07-03 14:34:32','',NULL,''),(1012,'角色导出',101,5,'','',1,0,'F','0','0','system:role:export','#','admin','2021-07-03 14:34:32','',NULL,''),(1013,'菜单查询',102,1,'','',1,0,'F','0','0','system:menu:query','#','admin','2021-07-03 14:34:33','',NULL,''),(1014,'菜单新增',102,2,'','',1,0,'F','0','0','system:menu:add','#','admin','2021-07-03 14:34:33','',NULL,''),(1015,'菜单修改',102,3,'','',1,0,'F','0','0','system:menu:edit','#','admin','2021-07-03 14:34:33','',NULL,''),(1016,'菜单删除',102,4,'','',1,0,'F','0','0','system:menu:remove','#','admin','2021-07-03 14:34:33','',NULL,''),(1017,'部门查询',103,1,'','',1,0,'F','0','0','system:dept:query','#','admin','2021-07-03 14:34:33','',NULL,''),(1018,'部门新增',103,2,'','',1,0,'F','0','0','system:dept:add','#','admin','2021-07-03 14:34:33','',NULL,''),(1019,'部门修改',103,3,'','',1,0,'F','0','0','system:dept:edit','#','admin','2021-07-03 14:34:33','',NULL,''),(1020,'部门删除',103,4,'','',1,0,'F','0','0','system:dept:remove','#','admin','2021-07-03 14:34:33','',NULL,''),(1021,'岗位查询',104,1,'','',1,0,'F','0','0','system:post:query','#','admin','2021-07-03 14:34:33','',NULL,''),(1022,'岗位新增',104,2,'','',1,0,'F','0','0','system:post:add','#','admin','2021-07-03 14:34:33','',NULL,''),(1023,'岗位修改',104,3,'','',1,0,'F','0','0','system:post:edit','#','admin','2021-07-03 14:34:33','',NULL,''),(1024,'岗位删除',104,4,'','',1,0,'F','0','0','system:post:remove','#','admin','2021-07-03 14:34:33','',NULL,''),(1025,'岗位导出',104,5,'','',1,0,'F','0','0','system:post:export','#','admin','2021-07-03 14:34:33','',NULL,''),(1026,'字典查询',105,1,'#','',1,0,'F','0','0','system:dict:query','#','admin','2021-07-03 14:34:33','',NULL,''),(1027,'字典新增',105,2,'#','',1,0,'F','0','0','system:dict:add','#','admin','2021-07-03 14:34:33','',NULL,''),(1028,'字典修改',105,3,'#','',1,0,'F','0','0','system:dict:edit','#','admin','2021-07-03 14:34:33','',NULL,''),(1029,'字典删除',105,4,'#','',1,0,'F','0','0','system:dict:remove','#','admin','2021-07-03 14:34:33','',NULL,''),(1030,'字典导出',105,5,'#','',1,0,'F','0','0','system:dict:export','#','admin','2021-07-03 14:34:33','',NULL,''),(1031,'参数查询',106,1,'#','',1,0,'F','0','0','system:config:query','#','admin','2021-07-03 14:34:33','',NULL,''),(1032,'参数新增',106,2,'#','',1,0,'F','0','0','system:config:add','#','admin','2021-07-03 14:34:33','',NULL,''),(1033,'参数修改',106,3,'#','',1,0,'F','0','0','system:config:edit','#','admin','2021-07-03 14:34:33','',NULL,''),(1034,'参数删除',106,4,'#','',1,0,'F','0','0','system:config:remove','#','admin','2021-07-03 14:34:33','',NULL,''),(1035,'参数导出',106,5,'#','',1,0,'F','0','0','system:config:export','#','admin','2021-07-03 14:34:34','',NULL,''),(1036,'公告查询',107,1,'#','',1,0,'F','0','0','system:notice:query','#','admin','2021-07-03 14:34:34','',NULL,''),(1037,'公告新增',107,2,'#','',1,0,'F','0','0','system:notice:add','#','admin','2021-07-03 14:34:34','',NULL,''),(1038,'公告修改',107,3,'#','',1,0,'F','0','0','system:notice:edit','#','admin','2021-07-03 14:34:34','',NULL,''),(1039,'公告删除',107,4,'#','',1,0,'F','0','0','system:notice:remove','#','admin','2021-07-03 14:34:34','',NULL,''),(1040,'操作查询',500,1,'#','',1,0,'F','0','0','monitor:operlog:query','#','admin','2021-07-03 14:34:34','',NULL,''),(1041,'操作删除',500,2,'#','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2021-07-03 14:34:34','',NULL,''),(1042,'日志导出',500,4,'#','',1,0,'F','0','0','monitor:operlog:export','#','admin','2021-07-03 14:34:34','',NULL,''),(1043,'登录查询',501,1,'#','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2021-07-03 14:34:34','',NULL,''),(1044,'登录删除',501,2,'#','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2021-07-03 14:34:34','',NULL,''),(1045,'日志导出',501,3,'#','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2021-07-03 14:34:34','',NULL,''),(1046,'在线查询',109,1,'#','',1,0,'F','0','0','monitor:online:query','#','admin','2021-07-03 14:34:34','',NULL,''),(1047,'批量强退',109,2,'#','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2021-07-03 14:34:34','',NULL,''),(1048,'单条强退',109,3,'#','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2021-07-03 14:34:34','',NULL,''),(1049,'任务查询',110,1,'#','',1,0,'F','0','0','monitor:job:query','#','admin','2021-07-03 14:34:34','',NULL,''),(1050,'任务新增',110,2,'#','',1,0,'F','0','0','monitor:job:add','#','admin','2021-07-03 14:34:34','',NULL,''),(1051,'任务修改',110,3,'#','',1,0,'F','0','0','monitor:job:edit','#','admin','2021-07-03 14:34:34','',NULL,''),(1052,'任务删除',110,4,'#','',1,0,'F','0','0','monitor:job:remove','#','admin','2021-07-03 14:34:34','',NULL,''),(1053,'状态修改',110,5,'#','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2021-07-03 14:34:34','',NULL,''),(1054,'任务导出',110,7,'#','',1,0,'F','0','0','monitor:job:export','#','admin','2021-07-03 14:34:34','',NULL,''),(1055,'生成查询',115,1,'#','',1,0,'F','0','0','tool:gen:query','#','admin','2021-07-03 14:34:34','',NULL,''),(1056,'生成修改',115,2,'#','',1,0,'F','0','0','tool:gen:edit','#','admin','2021-07-03 14:34:35','',NULL,''),(1057,'生成删除',115,3,'#','',1,0,'F','0','0','tool:gen:remove','#','admin','2021-07-03 14:34:35','',NULL,''),(1058,'导入代码',115,2,'#','',1,0,'F','0','0','tool:gen:import','#','admin','2021-07-03 14:34:35','',NULL,''),(1059,'预览代码',115,4,'#','',1,0,'F','0','0','tool:gen:preview','#','admin','2021-07-03 14:34:35','',NULL,''),(1060,'生成代码',115,5,'#','',1,0,'F','0','0','tool:gen:code','#','admin','2021-07-03 14:34:35','',NULL,''),(2003,'学生信息',1,1,'student','system/student/index',1,0,'M','0','1','system:student:list','#','admin','2021-07-04 13:44:53','admin','2021-07-06 11:48:08','学生信息菜单'),(2004,'学生信息查询',2003,1,'#','',1,0,'F','0','0','system:student:query','#','admin','2021-07-04 13:44:54','',NULL,''),(2005,'学生信息新增',2003,2,'#','',1,0,'F','0','0','system:student:add','#','admin','2021-07-04 13:44:54','',NULL,''),(2006,'学生信息修改',2003,3,'#','',1,0,'F','0','0','system:student:edit','#','admin','2021-07-04 13:44:54','',NULL,''),(2007,'学生信息删除',2003,4,'#','',1,0,'F','0','0','system:student:remove','#','admin','2021-07-04 13:44:54','',NULL,''),(2008,'学生信息导出',2003,5,'#','',1,0,'F','0','0','system:student:export','#','admin','2021-07-04 13:44:54','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2',0xD0C2B0E6B1BEC4DAC8DD,'0','admin','2021-07-03 14:34:45','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1',0xCEACBBA4C4DAC8DD,'0','admin','2021-07-03 14:34:45','',NULL,'管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','sys_student','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 13:27:59'),(101,'代码生成',2,'com.ruoyi.generator.controller.GenController.synchDb()','GET',1,'admin',NULL,'/tool/gen/synchDb/sys_student','127.0.0.1','内网IP','{tableName=sys_student}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 13:30:26'),(102,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{}','null',0,NULL,'2021-07-04 13:30:29'),(103,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{}','null',0,NULL,'2021-07-04 13:30:32'),(104,'代码生成',2,'com.ruoyi.generator.controller.GenController.synchDb()','GET',1,'admin',NULL,'/tool/gen/synchDb/sys_student','127.0.0.1','内网IP','{tableName=sys_student}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 13:37:04'),(105,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin',NULL,'/tool/gen/1','127.0.0.1','内网IP','{tableIds=1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 13:43:00'),(106,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2000','127.0.0.1','内网IP','{menuId=2000}','{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}',0,NULL,'2021-07-04 13:52:48'),(107,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2001','127.0.0.1','内网IP','{menuId=2001}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 13:52:58'),(108,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2002','127.0.0.1','内网IP','{menuId=2002}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 13:53:02'),(109,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2000','127.0.0.1','内网IP','{menuId=2000}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 13:53:06'),(110,'字典类型',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 13:53:24'),(111,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"学生信息\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"student\",\"component\":\"system/student/index\",\"children\":[],\"createTime\":1625377493000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"M\",\"perms\":\"system:student:list\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 13:54:33'),(112,'学生信息',1,'com.ruoyi.web.controller.system.SysStudentController.add()','POST',1,'admin',NULL,'/system/student','127.0.0.1','内网IP','{\"studentBirthday\":893088000000,\"params\":{},\"studentHobby\":\"音乐，小说\",\"studentId\":1,\"studentName\":\"李刚\",\"studentStatus\":\"1\",\"studentSex\":\"\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 13:58:53'),(113,'字典类型',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 13:59:13'),(114,'字典类型',1,'com.ruoyi.web.controller.system.SysDictTypeController.add()','POST',1,'admin',NULL,'/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"dictName\":\"学生性别\",\"remark\":\"学生性别列表\",\"params\":{},\"dictType\":\"sys_student_sex\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 14:00:42'),(115,'字典类型',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 14:00:47'),(116,'字典类型',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 14:00:49'),(117,'字典类型',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 14:00:50'),(118,'学生信息',2,'com.ruoyi.web.controller.system.SysStudentController.edit()','PUT',1,'admin',NULL,'/system/student','127.0.0.1','内网IP','{\"studentBirthday\":893088000000,\"params\":{},\"studentHobby\":\"音乐，小说\",\"studentId\":1,\"studentName\":\"李刚\",\"studentStatus\":\"1\",\"studentSex\":\"\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 14:01:13'),(119,'字典类型',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 14:02:10'),(120,'字典类型',2,'com.ruoyi.web.controller.system.SysDictTypeController.edit()','PUT',1,'admin',NULL,'/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":1625378442000,\"updateBy\":\"admin\",\"dictName\":\"学生性别\",\"remark\":\"学生性别列表\",\"dictId\":100,\"params\":{},\"dictType\":\"sys_student_sex\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 14:02:30'),(121,'字典类型',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 14:22:47'),(122,'字典类型',5,'com.ruoyi.web.controller.system.SysDictTypeController.export()','GET',1,'admin',NULL,'/system/dict/type/export','127.0.0.1','内网IP','{}','{\"msg\":\"0dca6546-b23a-4d47-bea0-81bd6e5bac1a_字典类型.xlsx\",\"code\":200}',0,NULL,'2021-07-04 14:22:57'),(123,'字典类型',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 16:58:42'),(124,'字典类型',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:02:59'),(125,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"0\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"sys_student_sex\",\"dictLabel\":\"男\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:21:13'),(126,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"sys_student_sex\",\"dictLabel\":\"女\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:22:05'),(127,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":3,\"remark\":\"性别未知\",\"params\":{},\"dictType\":\"sys_student_sex\",\"dictLabel\":\"未知\",\"createBy\":\"admin\",\"default\":false,\"cssClass\":\"\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:23:07'),(128,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"0\",\"listClass\":\"default\",\"dictSort\":1,\"remark\":\"性别男\",\"params\":{},\"dictType\":\"sys_student_sex\",\"dictLabel\":\"男\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1625390473000,\"dictCode\":100,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:23:25'),(129,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":2,\"remark\":\"性别女\",\"params\":{},\"dictType\":\"sys_student_sex\",\"dictLabel\":\"女\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1625390525000,\"dictCode\":101,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:23:35'),(130,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.edit()','PUT',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"上海杉达学院\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1625294068000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"ry@qq.com\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:42:05'),(131,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.add()','POST',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"嘉善分校\",\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:42:45'),(132,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.add()','POST',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"酒店管理\",\"orderNum\":\"1\",\"params\":{},\"parentId\":200,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100,200\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:43:23'),(133,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:44:48'),(134,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:44:50'),(135,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:44:50'),(136,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:44:50'),(137,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:44:51'),(138,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:44:59'),(139,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1625294070000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1625294070000,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:45:48'),(140,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"admin\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:46:18'),(141,'用户管理',4,'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()','PUT',1,'admin',NULL,'/system/user/authRole','127.0.0.1','内网IP','1 [1,2]','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:47:11'),(142,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1625294070000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"aa\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"上海杉达学院\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1625294070000,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:47:22'),(143,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin',NULL,'/system/user/2','127.0.0.1','内网IP','{userIds=2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:48:04'),(144,'用户管理',4,'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()','PUT',1,'admin',NULL,'/system/user/authRole','127.0.0.1','内网IP','1 [2]','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:49:10'),(145,'用户管理',4,'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()','PUT',1,'admin',NULL,'/system/user/authRole','127.0.0.1','内网IP','1 [1]','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:49:26'),(146,'用户管理',4,'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()','PUT',1,'admin',NULL,'/system/user/authRole','127.0.0.1','内网IP','1 []','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:49:45'),(147,'用户管理',4,'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()','PUT',1,'admin',NULL,'/system/user/authRole','127.0.0.1','内网IP','1 [2]','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:51:27'),(148,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"阿拉弗拉\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:51:37'),(149,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:52:03'),(150,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:52:04'),(151,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:52:05'),(152,'用户管理',4,'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()','PUT',1,'admin',NULL,'/system/user/authRole','127.0.0.1','内网IP','1 [1]','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-04 17:52:14'),(153,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:54:32'),(154,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:54:33'),(155,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:54:33'),(156,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:54:33'),(157,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:54:34'),(158,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-04 17:54:40'),(159,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625539085000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"李刚\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-06 10:50:35'),(160,'个人信息',2,'com.ruoyi.web.controller.system.SysProfileController.updateProfile()','PUT',1,'admin',NULL,'/system/user/profile','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625539085093,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"李刚\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1625294070000,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 10:51:13'),(161,'个人信息',2,'com.ruoyi.web.controller.system.SysProfileController.updateProfile()','PUT',1,'admin',NULL,'/system/user/profile','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625539085093,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"390023206@163.com\",\"nickName\":\"李刚\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1625294070000,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 10:51:35'),(162,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625539085000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"390023206@163.com\",\"nickName\":\"李刚\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-06 10:52:05'),(163,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/103','127.0.0.1','内网IP','{deptId=103}','{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}',0,NULL,'2021-07-06 10:52:52'),(164,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625539085000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"390023206@163.com\",\"nickName\":\"李刚\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"1\"}','null',1,'不允许操作超级管理员用户','2021-07-06 10:53:16'),(165,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625539085000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"390023206@163.com\",\"nickName\":\"李刚\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-06 10:53:29'),(166,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/101','127.0.0.1','内网IP','{deptId=101}','{\"msg\":\"存在下级部门,不允许删除\",\"code\":500}',0,NULL,'2021-07-06 11:40:40'),(167,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/103','127.0.0.1','内网IP','{deptId=103}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 11:40:44'),(168,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/104','127.0.0.1','内网IP','{deptId=104}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 11:40:46'),(169,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/105','127.0.0.1','内网IP','{deptId=105}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 11:40:49'),(170,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/106','127.0.0.1','内网IP','{deptId=106}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 11:40:51'),(171,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/107','127.0.0.1','内网IP','{deptId=107}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 11:40:54'),(172,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/108','127.0.0.1','内网IP','{deptId=108}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 11:40:56'),(173,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/109','127.0.0.1','内网IP','{deptId=109}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 11:40:59'),(174,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/102','127.0.0.1','内网IP','{deptId=102}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 11:41:02'),(175,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/101','127.0.0.1','内网IP','{deptId=101}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 11:41:04'),(176,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.add()','POST',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"金海分校\",\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 11:41:48'),(177,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.add()','POST',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"计算机科学与技术\",\"orderNum\":\"1\",\"params\":{},\"parentId\":202,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100,202\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 11:42:28'),(178,'个人信息',2,'com.ruoyi.web.controller.system.SysProfileController.updateProfile()','PUT',1,'admin',NULL,'/system/user/profile','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625542214768,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"390023206@qq.com\",\"nickName\":\"李刚\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1625294070000,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 11:46:56'),(179,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"学生信息\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"student\",\"component\":\"system/student/index\",\"children\":[],\"createTime\":1625377493000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"M\",\"perms\":\"system:student:list\",\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 11:48:08'),(180,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625542215000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"390023206@qq.com\",\"nickName\":\"李刚\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-07-06 11:51:15'),(181,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"password\":\"$2a$10$UcxZUZhc2KSQBD2sCLtmpO0dyEoQaq1S5uH/G3ouckbW/48dZuiUC\",\"postIds\":[],\"nickName\":\"李刚\",\"deptId\":203,\"params\":{},\"userName\":\"李刚\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 16:59:56'),(182,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin',NULL,'/system/user/100','127.0.0.1','内网IP','{userIds=100}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 17:00:11'),(183,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"password\":\"123456\",\"postIds\":[],\"nickName\":\"李刚\",\"params\":{},\"userName\":\"李刚\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"新增用户\'李刚\'失败，登录账号已存在\",\"code\":500}',0,NULL,'2021-07-06 17:01:44'),(184,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"password\":\"123456\",\"postIds\":[],\"nickName\":\"李刚\",\"params\":{},\"userName\":\"李刚\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"新增用户\'李刚\'失败，登录账号已存在\",\"code\":500}',0,NULL,'2021-07-06 17:01:46'),(185,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.add()','POST',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"金沙江分校\",\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 17:04:47'),(186,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/204','127.0.0.1','内网IP','{deptId=204}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 17:04:57'),(187,'用户管理',5,'com.ruoyi.web.controller.system.SysUserController.export()','GET',1,'admin',NULL,'/system/user/export','127.0.0.1','内网IP','{}','{\"msg\":\"acc7740e-7550-456a-9ac0-8e48359422c5_用户数据.xlsx\",\"code\":200}',0,NULL,'2021-07-06 17:09:15'),(188,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"password\":\"$2a$10$Khvs3NaIXwX.aGmXLMKsm.vCOagx0tuq7gicjK9DOJkYn/e9ft5MS\",\"postIds\":[],\"nickName\":\"廖海飞\",\"deptId\":203,\"params\":{},\"userName\":\"廖海飞\",\"userId\":101,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 17:20:10'),(189,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"password\":\"$2a$10$R3YNqh1HxUdCeR1uhyEH8.o18YhAmDgeemYWYJD5G4KQNbzub0gQ.\",\"postIds\":[],\"nickName\":\"张煜瀚\",\"deptId\":203,\"params\":{},\"userName\":\"张煜瀚\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-07-06 17:21:19');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2021-07-03 14:34:30','',NULL,''),(2,'se','项目经理',2,'0','admin','2021-07-03 14:34:30','',NULL,''),(3,'hr','人力资源',3,'0','admin','2021-07-03 14:34:30','',NULL,''),(4,'user','普通员工',4,'0','admin','2021-07-03 14:34:30','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2021-07-03 14:34:30','',NULL,'超级管理员'),(2,'普通角色','common',2,'2',1,1,'0','0','admin','2021-07-03 14:34:30','',NULL,'普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,1),(2,2),(2,3),(2,4),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,116),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),(2,1049),(2,1050),(2,1051),(2,1052),(2,1053),(2,1054),(2,1055),(2,1056),(2,1057),(2,1058),(2,1059),(2,1060);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_student`
--

DROP TABLE IF EXISTS `sys_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_student` (
  `student_id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `student_name` varchar(30) DEFAULT '' COMMENT '学生名称',
  `student_age` int DEFAULT NULL COMMENT '年龄',
  `student_hobby` varchar(30) DEFAULT '' COMMENT '爱好（0代码 1音乐 2电影）',
  `student_sex` char(1) DEFAULT '0' COMMENT '性别（0男 1女 2未知）',
  `student_status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `student_birthday` datetime DEFAULT NULL COMMENT '生日',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='学生信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_student`
--

LOCK TABLES `sys_student` WRITE;
/*!40000 ALTER TABLE `sys_student` DISABLE KEYS */;
INSERT INTO `sys_student` VALUES (1,'李刚',NULL,'音乐，小说','','1','1998-04-21 00:00:00');
/*!40000 ALTER TABLE `sys_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,100,'admin','李刚','00','390023206@qq.com','15888888888','0','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2021-07-07 15:54:43','admin','2021-07-03 14:34:30','','2021-07-07 15:54:43','管理员'),(2,100,'ry','aa','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','2','127.0.0.1','2021-07-03 14:34:30','admin','2021-07-03 14:34:30','admin','2021-07-04 17:47:22','测试员'),(101,203,'廖海飞','廖海飞','00','','','0','','$2a$10$Khvs3NaIXwX.aGmXLMKsm.vCOagx0tuq7gicjK9DOJkYn/e9ft5MS','0','0','',NULL,'admin','2021-07-06 17:20:10','',NULL,NULL),(102,203,'张煜瀚','张煜瀚','00','','','0','','$2a$10$R3YNqh1HxUdCeR1uhyEH8.o18YhAmDgeemYWYJD5G4KQNbzub0gQ.','0','0','',NULL,'admin','2021-07-06 17:21:19','',NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-07 16:10:30
