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
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '缂栧彿',
  `table_name` varchar(200) DEFAULT '' COMMENT '琛ㄥ悕绉?,
  `table_comment` varchar(500) DEFAULT '' COMMENT '琛ㄦ弿杩?,
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '鍏宠仈瀛愯〃鐨勮〃鍚?,
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '瀛愯〃鍏宠仈鐨勫閿悕',
  `class_name` varchar(100) DEFAULT '' COMMENT '瀹炰綋绫诲悕绉?,
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '浣跨敤鐨勬ā鏉匡紙crud鍗曡〃鎿嶄綔 tree鏍戣〃鎿嶄綔锛?,
  `package_name` varchar(100) DEFAULT NULL COMMENT '鐢熸垚鍖呰矾寰?,
  `module_name` varchar(30) DEFAULT NULL COMMENT '鐢熸垚妯″潡鍚?,
  `business_name` varchar(30) DEFAULT NULL COMMENT '鐢熸垚涓氬姟鍚?,
  `function_name` varchar(50) DEFAULT NULL COMMENT '鐢熸垚鍔熻兘鍚?,
  `function_author` varchar(50) DEFAULT NULL COMMENT '鐢熸垚鍔熻兘浣滆€?,
  `gen_type` char(1) DEFAULT '0' COMMENT '鐢熸垚浠ｇ爜鏂瑰紡锛?zip鍘嬬缉鍖?1鑷畾涔夎矾寰勶級',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '鐢熸垚璺緞锛堜笉濉粯璁ら」鐩矾寰勶級',
  `options` varchar(1000) DEFAULT NULL COMMENT '鍏跺畠鐢熸垚閫夐」',
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='浠ｇ爜鐢熸垚涓氬姟琛?;
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
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '缂栧彿',
  `table_id` varchar(64) DEFAULT NULL COMMENT '褰掑睘琛ㄧ紪鍙?,
  `column_name` varchar(200) DEFAULT NULL COMMENT '鍒楀悕绉?,
  `column_comment` varchar(500) DEFAULT NULL COMMENT '鍒楁弿杩?,
  `column_type` varchar(100) DEFAULT NULL COMMENT '鍒楃被鍨?,
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA绫诲瀷',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA瀛楁鍚?,
  `is_pk` char(1) DEFAULT NULL COMMENT '鏄惁涓婚敭锛?鏄級',
  `is_increment` char(1) DEFAULT NULL COMMENT '鏄惁鑷锛?鏄級',
  `is_required` char(1) DEFAULT NULL COMMENT '鏄惁蹇呭～锛?鏄級',
  `is_insert` char(1) DEFAULT NULL COMMENT '鏄惁涓烘彃鍏ュ瓧娈碉紙1鏄級',
  `is_edit` char(1) DEFAULT NULL COMMENT '鏄惁缂栬緫瀛楁锛?鏄級',
  `is_list` char(1) DEFAULT NULL COMMENT '鏄惁鍒楄〃瀛楁锛?鏄級',
  `is_query` char(1) DEFAULT NULL COMMENT '鏄惁鏌ヨ瀛楁锛?鏄級',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '鏌ヨ鏂瑰紡锛堢瓑浜庛€佷笉绛変簬銆佸ぇ浜庛€佸皬浜庛€佽寖鍥达級',
  `html_type` varchar(200) DEFAULT NULL COMMENT '鏄剧ず绫诲瀷锛堟枃鏈銆佹枃鏈煙銆佷笅鎷夋銆佸閫夋銆佸崟閫夋銆佹棩鏈熸帶浠讹級',
  `dict_type` varchar(200) DEFAULT '' COMMENT '瀛楀吀绫诲瀷',
  `sort` int DEFAULT NULL COMMENT '鎺掑簭',
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='浠ｇ爜鐢熸垚涓氬姟琛ㄥ瓧娈?;
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
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '琝韁0sr\0org.quartz.JobDataMap煱冭咯癨?\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap?\鑌名\臸(\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\??v\n\?\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\诹\?`\?\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj?KYt\0\0xpw\0\0zk棤xpt\0\0pppt\01t\00/10 * * * * ?t\0ryTask.ryNoParamst\0DEFAULTsr\0java.lang.Long;媆鋹虖#\?\0J\0valuexr\0java.lang.Number啲?擻鄫\0\0xp\0\0\0\0\0\0\0t\0绯荤粺榛樿锛堟棤鍙傦級t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '琝韁0sr\0org.quartz.JobDataMap煱冭咯癨?\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap?\鑌名\臸(\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\??v\n\?\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\诹\?`\?\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj?KYt\0\0xpw\0\0zk棤xpt\0\0pppt\01t\00/15 * * * * ?t\0ryTask.ryParams(\'ry\')t\0DEFAULTsr\0java.lang.Long;媆鋹虖#\?\0J\0valuexr\0java.lang.Number啲?擻鄫\0\0xp\0\0\0\0\0\0\0t\0绯荤粺榛樿锛堟湁鍙傦級t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '琝韁0sr\0org.quartz.JobDataMap煱冭咯癨?\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap?\鑌名\臸(\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\??v\n\?\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\诹\?`\?\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj?KYt\0\0xpw\0\0zk棤xpt\0\0pppt\01t\00/20 * * * * ?t\08ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)t\0DEFAULTsr\0java.lang.Long;媆鋹虖#\?\0J\0valuexr\0java.lang.Number啲?擻鄫\0\0xp\0\0\0\0\0\0\0t\0绯荤粺榛樿锛堝鍙傦級t\03t\01x\0');
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
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler','DESKTOP-QV38KVH1625625653979',1625633729161,15000);
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
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '鍙傛暟涓婚敭',
  `config_name` varchar(100) DEFAULT '' COMMENT '鍙傛暟鍚嶇О',
  `config_key` varchar(100) DEFAULT '' COMMENT '鍙傛暟閿悕',
  `config_value` varchar(500) DEFAULT '' COMMENT '鍙傛暟閿€?,
  `config_type` char(1) DEFAULT 'N' COMMENT '绯荤粺鍐呯疆锛圷鏄?N鍚︼級',
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鍙傛暟閰嶇疆琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'涓绘鏋堕〉-榛樿鐨偆鏍峰紡鍚嶇О','sys.index.skinName','skin-blue','Y','admin','2021-07-03 14:34:43','',NULL,'钃濊壊 skin-blue銆佺豢鑹?skin-green銆佺传鑹?skin-purple銆佺孩鑹?skin-red銆侀粍鑹?skin-yellow'),(2,'鐢ㄦ埛绠＄悊-璐﹀彿鍒濆瀵嗙爜','sys.user.initPassword','123456','Y','admin','2021-07-03 14:34:43','',NULL,'鍒濆鍖栧瘑鐮?123456'),(3,'涓绘鏋堕〉-渚ц竟鏍忎富棰?,'sys.index.sideTheme','theme-dark','Y','admin','2021-07-03 14:34:43','',NULL,'娣辫壊涓婚theme-dark锛屾祬鑹蹭富棰榯heme-light');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '閮ㄩ棬id',
  `parent_id` bigint DEFAULT '0' COMMENT '鐖堕儴闂╥d',
  `ancestors` varchar(50) DEFAULT '' COMMENT '绁栫骇鍒楄〃',
  `dept_name` varchar(30) DEFAULT '' COMMENT '閮ㄩ棬鍚嶇О',
  `order_num` int DEFAULT '0' COMMENT '鏄剧ず椤哄簭',
  `leader` varchar(20) DEFAULT NULL COMMENT '璐熻矗浜?,
  `phone` varchar(11) DEFAULT NULL COMMENT '鑱旂郴鐢佃瘽',
  `email` varchar(50) DEFAULT NULL COMMENT '閭',
  `status` char(1) DEFAULT '0' COMMENT '閮ㄩ棬鐘舵€侊紙0姝ｅ父 1鍋滅敤锛?,
  `del_flag` char(1) DEFAULT '0' COMMENT '鍒犻櫎鏍囧織锛?浠ｈ〃瀛樺湪 2浠ｈ〃鍒犻櫎锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='閮ㄩ棬琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','涓婃捣鏉夎揪瀛﹂櫌',0,'鑻ヤ緷','15888888888','ry@qq.com','0','0','admin','2021-07-03 14:34:28','admin','2021-07-04 17:42:05'),(101,100,'0,100','娣卞湷鎬诲叕鍙?,1,'鑻ヤ緷','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(102,100,'0,100','闀挎矙鍒嗗叕鍙?,2,'鑻ヤ緷','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(103,101,'0,100,101','鐮斿彂閮ㄩ棬',1,'鑻ヤ緷','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(104,101,'0,100,101','甯傚満閮ㄩ棬',2,'鑻ヤ緷','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(105,101,'0,100,101','娴嬭瘯閮ㄩ棬',3,'鑻ヤ緷','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(106,101,'0,100,101','璐㈠姟閮ㄩ棬',4,'鑻ヤ緷','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(107,101,'0,100,101','杩愮淮閮ㄩ棬',5,'鑻ヤ緷','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(108,102,'0,100,102','甯傚満閮ㄩ棬',1,'鑻ヤ緷','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:28','',NULL),(109,102,'0,100,102','璐㈠姟閮ㄩ棬',2,'鑻ヤ緷','15888888888','ry@qq.com','0','2','admin','2021-07-03 14:34:29','',NULL),(200,100,'0,100','鍢夊杽鍒嗘牎',3,NULL,NULL,NULL,'0','0','admin','2021-07-04 17:42:45','',NULL),(201,200,'0,100,200','閰掑簵绠＄悊',1,NULL,NULL,NULL,'0','0','admin','2021-07-04 17:43:23','',NULL),(202,100,'0,100','閲戞捣鍒嗘牎',1,NULL,NULL,NULL,'0','0','admin','2021-07-06 11:41:48','',NULL),(203,202,'0,100,202','璁＄畻鏈虹瀛︿笌鎶€鏈?,1,NULL,NULL,NULL,'0','0','admin','2021-07-06 11:42:28','',NULL),(204,100,'0,100','閲戞矙姹熷垎鏍?,2,NULL,NULL,NULL,'0','2','admin','2021-07-06 17:04:47','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '瀛楀吀缂栫爜',
  `dict_sort` int DEFAULT '0' COMMENT '瀛楀吀鎺掑簭',
  `dict_label` varchar(100) DEFAULT '' COMMENT '瀛楀吀鏍囩',
  `dict_value` varchar(100) DEFAULT '' COMMENT '瀛楀吀閿€?,
  `dict_type` varchar(100) DEFAULT '' COMMENT '瀛楀吀绫诲瀷',
  `css_class` varchar(100) DEFAULT NULL COMMENT '鏍峰紡灞炴€э紙鍏朵粬鏍峰紡鎵╁睍锛?,
  `list_class` varchar(100) DEFAULT NULL COMMENT '琛ㄦ牸鍥炴樉鏍峰紡',
  `is_default` char(1) DEFAULT 'N' COMMENT '鏄惁榛樿锛圷鏄?N鍚︼級',
  `status` char(1) DEFAULT '0' COMMENT '鐘舵€侊紙0姝ｅ父 1鍋滅敤锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瀛楀吀鏁版嵁琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'鐢?,'0','sys_user_sex','','','Y','0','admin','2021-07-03 14:34:42','',NULL,'鎬у埆鐢?),(2,2,'濂?,'1','sys_user_sex','','','N','0','admin','2021-07-03 14:34:42','',NULL,'鎬у埆濂?),(3,3,'鏈煡','2','sys_user_sex','','','N','0','admin','2021-07-03 14:34:42','',NULL,'鎬у埆鏈煡'),(4,1,'鏄剧ず','0','sys_show_hide','','primary','Y','0','admin','2021-07-03 14:34:42','',NULL,'鏄剧ず鑿滃崟'),(5,2,'闅愯棌','1','sys_show_hide','','danger','N','0','admin','2021-07-03 14:34:42','',NULL,'闅愯棌鑿滃崟'),(6,1,'姝ｅ父','0','sys_normal_disable','','primary','Y','0','admin','2021-07-03 14:34:42','',NULL,'姝ｅ父鐘舵€?),(7,2,'鍋滅敤','1','sys_normal_disable','','danger','N','0','admin','2021-07-03 14:34:42','',NULL,'鍋滅敤鐘舵€?),(8,1,'姝ｅ父','0','sys_job_status','','primary','Y','0','admin','2021-07-03 14:34:42','',NULL,'姝ｅ父鐘舵€?),(9,2,'鏆傚仠','1','sys_job_status','','danger','N','0','admin','2021-07-03 14:34:42','',NULL,'鍋滅敤鐘舵€?),(10,1,'榛樿','DEFAULT','sys_job_group','','','Y','0','admin','2021-07-03 14:34:42','',NULL,'榛樿鍒嗙粍'),(11,2,'绯荤粺','SYSTEM','sys_job_group','','','N','0','admin','2021-07-03 14:34:42','',NULL,'绯荤粺鍒嗙粍'),(12,1,'鏄?,'Y','sys_yes_no','','primary','Y','0','admin','2021-07-03 14:34:42','',NULL,'绯荤粺榛樿鏄?),(13,2,'鍚?,'N','sys_yes_no','','danger','N','0','admin','2021-07-03 14:34:42','',NULL,'绯荤粺榛樿鍚?),(14,1,'閫氱煡','1','sys_notice_type','','warning','Y','0','admin','2021-07-03 14:34:42','',NULL,'閫氱煡'),(15,2,'鍏憡','2','sys_notice_type','','success','N','0','admin','2021-07-03 14:34:42','',NULL,'鍏憡'),(16,1,'姝ｅ父','0','sys_notice_status','','primary','Y','0','admin','2021-07-03 14:34:43','',NULL,'姝ｅ父鐘舵€?),(17,2,'鍏抽棴','1','sys_notice_status','','danger','N','0','admin','2021-07-03 14:34:43','',NULL,'鍏抽棴鐘舵€?),(18,1,'鏂板','1','sys_oper_type','','info','N','0','admin','2021-07-03 14:34:43','',NULL,'鏂板鎿嶄綔'),(19,2,'淇敼','2','sys_oper_type','','info','N','0','admin','2021-07-03 14:34:43','',NULL,'淇敼鎿嶄綔'),(20,3,'鍒犻櫎','3','sys_oper_type','','danger','N','0','admin','2021-07-03 14:34:43','',NULL,'鍒犻櫎鎿嶄綔'),(21,4,'鎺堟潈','4','sys_oper_type','','primary','N','0','admin','2021-07-03 14:34:43','',NULL,'鎺堟潈鎿嶄綔'),(22,5,'瀵煎嚭','5','sys_oper_type','','warning','N','0','admin','2021-07-03 14:34:43','',NULL,'瀵煎嚭鎿嶄綔'),(23,6,'瀵煎叆','6','sys_oper_type','','warning','N','0','admin','2021-07-03 14:34:43','',NULL,'瀵煎叆鎿嶄綔'),(24,7,'寮洪€€','7','sys_oper_type','','danger','N','0','admin','2021-07-03 14:34:43','',NULL,'寮洪€€鎿嶄綔'),(25,8,'鐢熸垚浠ｇ爜','8','sys_oper_type','','warning','N','0','admin','2021-07-03 14:34:43','',NULL,'鐢熸垚鎿嶄綔'),(26,9,'娓呯┖鏁版嵁','9','sys_oper_type','','danger','N','0','admin','2021-07-03 14:34:43','',NULL,'娓呯┖鎿嶄綔'),(27,1,'鎴愬姛','0','sys_common_status','','primary','N','0','admin','2021-07-03 14:34:43','',NULL,'姝ｅ父鐘舵€?),(28,2,'澶辫触','1','sys_common_status','','danger','N','0','admin','2021-07-03 14:34:43','',NULL,'鍋滅敤鐘舵€?),(100,1,'鐢?,'0','sys_student_sex',NULL,'default','N','0','admin','2021-07-04 17:21:13','admin','2021-07-04 17:23:25','鎬у埆鐢?),(101,2,'濂?,'1','sys_student_sex',NULL,'default','N','0','admin','2021-07-04 17:22:05','admin','2021-07-04 17:23:35','鎬у埆濂?),(102,3,'鏈煡','2','sys_student_sex',NULL,'default','N','0','admin','2021-07-04 17:23:07','',NULL,'鎬у埆鏈煡');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '瀛楀吀涓婚敭',
  `dict_name` varchar(100) DEFAULT '' COMMENT '瀛楀吀鍚嶇О',
  `dict_type` varchar(100) DEFAULT '' COMMENT '瀛楀吀绫诲瀷',
  `status` char(1) DEFAULT '0' COMMENT '鐘舵€侊紙0姝ｅ父 1鍋滅敤锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瀛楀吀绫诲瀷琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'鐢ㄦ埛鎬у埆','sys_user_sex','0','admin','2021-07-03 14:34:41','',NULL,'鐢ㄦ埛鎬у埆鍒楄〃'),(2,'鑿滃崟鐘舵€?,'sys_show_hide','0','admin','2021-07-03 14:34:41','',NULL,'鑿滃崟鐘舵€佸垪琛?),(3,'绯荤粺寮€鍏?,'sys_normal_disable','0','admin','2021-07-03 14:34:41','',NULL,'绯荤粺寮€鍏冲垪琛?),(4,'浠诲姟鐘舵€?,'sys_job_status','0','admin','2021-07-03 14:34:41','',NULL,'浠诲姟鐘舵€佸垪琛?),(5,'浠诲姟鍒嗙粍','sys_job_group','0','admin','2021-07-03 14:34:41','',NULL,'浠诲姟鍒嗙粍鍒楄〃'),(6,'绯荤粺鏄惁','sys_yes_no','0','admin','2021-07-03 14:34:41','',NULL,'绯荤粺鏄惁鍒楄〃'),(7,'閫氱煡绫诲瀷','sys_notice_type','0','admin','2021-07-03 14:34:41','',NULL,'閫氱煡绫诲瀷鍒楄〃'),(8,'閫氱煡鐘舵€?,'sys_notice_status','0','admin','2021-07-03 14:34:41','',NULL,'閫氱煡鐘舵€佸垪琛?),(9,'鎿嶄綔绫诲瀷','sys_oper_type','0','admin','2021-07-03 14:34:41','',NULL,'鎿嶄綔绫诲瀷鍒楄〃'),(10,'绯荤粺鐘舵€?,'sys_common_status','0','admin','2021-07-03 14:34:42','',NULL,'鐧诲綍鐘舵€佸垪琛?),(100,'瀛︾敓鎬у埆','sys_student_sex','0','admin','2021-07-04 14:00:42','admin','2021-07-04 14:02:30','瀛︾敓鎬у埆鍒楄〃');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '浠诲姟ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '浠诲姟鍚嶇О',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '浠诲姟缁勫悕',
  `invoke_target` varchar(500) NOT NULL COMMENT '璋冪敤鐩爣瀛楃涓?,
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron鎵ц琛ㄨ揪寮?,
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '璁″垝鎵ц閿欒绛栫暐锛?绔嬪嵆鎵ц 2鎵ц涓€娆?3鏀惧純鎵ц锛?,
  `concurrent` char(1) DEFAULT '1' COMMENT '鏄惁骞跺彂鎵ц锛?鍏佽 1绂佹锛?,
  `status` char(1) DEFAULT '0' COMMENT '鐘舵€侊紙0姝ｅ父 1鏆傚仠锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT '' COMMENT '澶囨敞淇℃伅',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瀹氭椂浠诲姟璋冨害琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'绯荤粺榛樿锛堟棤鍙傦級','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2021-07-03 14:34:44','',NULL,''),(2,'绯荤粺榛樿锛堟湁鍙傦級','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2021-07-03 14:34:44','',NULL,''),(3,'绯荤粺榛樿锛堝鍙傦級','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2021-07-03 14:34:44','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '浠诲姟鏃ュ織ID',
  `job_name` varchar(64) NOT NULL COMMENT '浠诲姟鍚嶇О',
  `job_group` varchar(64) NOT NULL COMMENT '浠诲姟缁勫悕',
  `invoke_target` varchar(500) NOT NULL COMMENT '璋冪敤鐩爣瀛楃涓?,
  `job_message` varchar(500) DEFAULT NULL COMMENT '鏃ュ織淇℃伅',
  `status` char(1) DEFAULT '0' COMMENT '鎵ц鐘舵€侊紙0姝ｅ父 1澶辫触锛?,
  `exception_info` varchar(2000) DEFAULT '' COMMENT '寮傚父淇℃伅',
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瀹氭椂浠诲姟璋冨害鏃ュ織琛?;
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
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '璁块棶ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '鐢ㄦ埛璐﹀彿',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '鐧诲綍IP鍦板潃',
  `login_location` varchar(255) DEFAULT '' COMMENT '鐧诲綍鍦扮偣',
  `browser` varchar(50) DEFAULT '' COMMENT '娴忚鍣ㄧ被鍨?,
  `os` varchar(50) DEFAULT '' COMMENT '鎿嶄綔绯荤粺',
  `status` char(1) DEFAULT '0' COMMENT '鐧诲綍鐘舵€侊紙0鎴愬姛 1澶辫触锛?,
  `msg` varchar(255) DEFAULT '' COMMENT '鎻愮ず娑堟伅',
  `login_time` datetime DEFAULT NULL COMMENT '璁块棶鏃堕棿',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='绯荤粺璁块棶璁板綍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','鍐呯綉IP','Chrome 8','Windows 10','0','鐧诲綍鎴愬姛','2021-07-03 14:49:47'),(101,'admin','127.0.0.1','鍐呯綉IP','Chrome 8','Windows 10','1','楠岃瘉鐮侀敊璇?,'2021-07-03 14:49:48'),(102,'admin','127.0.0.1','鍐呯綉IP','Chrome 8','Windows 10','0','鐧诲綍鎴愬姛','2021-07-03 14:49:55'),(103,'admin','127.0.0.1','鍐呯綉IP','Chrome 8','Windows 10','1','楠岃瘉鐮侀敊璇?,'2021-07-03 14:53:26'),(104,'admin','127.0.0.1','鍐呯綉IP','Chrome 8','Windows 10','0','鐧诲綍鎴愬姛','2021-07-03 14:53:32'),(105,'admin','127.0.0.1','鍐呯綉IP','Chrome 8','Windows 10','0','鐧诲綍鎴愬姛','2021-07-03 21:22:33'),(106,'admin','127.0.0.1','鍐呯綉IP','Chrome 8','Windows 10','0','鐧诲綍鎴愬姛','2021-07-04 12:29:21'),(107,'admin','127.0.0.1','鍐呯綉IP','Chrome 8','Windows 10','0','鐧诲綍鎴愬姛','2021-07-04 13:22:14'),(108,'admin','127.0.0.1','鍐呯綉IP','Chrome 8','Windows 10','0','鐧诲綍鎴愬姛','2021-07-04 16:53:54'),(109,'admin','127.0.0.1','鍐呯綉IP','Chrome 8','Windows 10','0','鐧诲綍鎴愬姛','2021-07-06 10:38:05'),(110,'admin','127.0.0.1','鍐呯綉IP','Chrome 8','Windows 10','0','鐧诲綍鎴愬姛','2021-07-06 11:30:14'),(111,'admin','127.0.0.1','鍐呯綉IP','Chrome 8','Windows 10','0','鐧诲綍鎴愬姛','2021-07-06 16:47:09'),(112,'admin','127.0.0.1','鍐呯綉IP','Chrome 8','Windows 10','1','楠岃瘉鐮侀敊璇?,'2021-07-07 10:43:19'),(113,'admin','127.0.0.1','鍐呯綉IP','Chrome 8','Windows 10','0','鐧诲綍鎴愬姛','2021-07-07 10:43:24');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '鑿滃崟ID',
  `menu_name` varchar(50) NOT NULL COMMENT '鑿滃崟鍚嶇О',
  `parent_id` bigint DEFAULT '0' COMMENT '鐖惰彍鍗旾D',
  `order_num` int DEFAULT '0' COMMENT '鏄剧ず椤哄簭',
  `path` varchar(200) DEFAULT '' COMMENT '璺敱鍦板潃',
  `component` varchar(255) DEFAULT NULL COMMENT '缁勪欢璺緞',
  `is_frame` int DEFAULT '1' COMMENT '鏄惁涓哄閾撅紙0鏄?1鍚︼級',
  `is_cache` int DEFAULT '0' COMMENT '鏄惁缂撳瓨锛?缂撳瓨 1涓嶇紦瀛橈級',
  `menu_type` char(1) DEFAULT '' COMMENT '鑿滃崟绫诲瀷锛圡鐩綍 C鑿滃崟 F鎸夐挳锛?,
  `visible` char(1) DEFAULT '0' COMMENT '鑿滃崟鐘舵€侊紙0鏄剧ず 1闅愯棌锛?,
  `status` char(1) DEFAULT '0' COMMENT '鑿滃崟鐘舵€侊紙0姝ｅ父 1鍋滅敤锛?,
  `perms` varchar(100) DEFAULT NULL COMMENT '鏉冮檺鏍囪瘑',
  `icon` varchar(100) DEFAULT '#' COMMENT '鑿滃崟鍥炬爣',
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT '' COMMENT '澶囨敞',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2009 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鑿滃崟鏉冮檺琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'绯荤粺绠＄悊',0,1,'system',NULL,1,0,'M','0','0','','system','admin','2021-07-03 14:34:31','',NULL,'绯荤粺绠＄悊鐩綍'),(2,'绯荤粺鐩戞帶',0,2,'monitor',NULL,1,0,'M','0','0','','monitor','admin','2021-07-03 14:34:31','',NULL,'绯荤粺鐩戞帶鐩綍'),(3,'绯荤粺宸ュ叿',0,3,'tool',NULL,1,0,'M','0','0','','tool','admin','2021-07-03 14:34:31','',NULL,'绯荤粺宸ュ叿鐩綍'),(4,'鑻ヤ緷瀹樼綉',0,4,'http://ruoyi.vip',NULL,0,0,'M','0','0','','guide','admin','2021-07-03 14:34:31','',NULL,'鑻ヤ緷瀹樼綉鍦板潃'),(100,'鐢ㄦ埛绠＄悊',1,1,'user','system/user/index',1,0,'C','0','0','system:user:list','user','admin','2021-07-03 14:34:31','',NULL,'鐢ㄦ埛绠＄悊鑿滃崟'),(101,'瑙掕壊绠＄悊',1,2,'role','system/role/index',1,0,'C','0','0','system:role:list','peoples','admin','2021-07-03 14:34:31','',NULL,'瑙掕壊绠＄悊鑿滃崟'),(102,'鑿滃崟绠＄悊',1,3,'menu','system/menu/index',1,0,'C','0','0','system:menu:list','tree-table','admin','2021-07-03 14:34:31','',NULL,'鑿滃崟绠＄悊鑿滃崟'),(103,'閮ㄩ棬绠＄悊',1,4,'dept','system/dept/index',1,0,'C','0','0','system:dept:list','tree','admin','2021-07-03 14:34:31','',NULL,'閮ㄩ棬绠＄悊鑿滃崟'),(104,'宀椾綅绠＄悊',1,5,'post','system/post/index',1,0,'C','0','0','system:post:list','post','admin','2021-07-03 14:34:31','',NULL,'宀椾綅绠＄悊鑿滃崟'),(105,'瀛楀吀绠＄悊',1,6,'dict','system/dict/index',1,0,'C','0','0','system:dict:list','dict','admin','2021-07-03 14:34:31','',NULL,'瀛楀吀绠＄悊鑿滃崟'),(106,'鍙傛暟璁剧疆',1,7,'config','system/config/index',1,0,'C','0','0','system:config:list','edit','admin','2021-07-03 14:34:31','',NULL,'鍙傛暟璁剧疆鑿滃崟'),(107,'閫氱煡鍏憡',1,8,'notice','system/notice/index',1,0,'C','0','0','system:notice:list','message','admin','2021-07-03 14:34:31','',NULL,'閫氱煡鍏憡鑿滃崟'),(108,'鏃ュ織绠＄悊',1,9,'log','',1,0,'M','0','0','','log','admin','2021-07-03 14:34:31','',NULL,'鏃ュ織绠＄悊鑿滃崟'),(109,'鍦ㄧ嚎鐢ㄦ埛',2,1,'online','monitor/online/index',1,0,'C','0','0','monitor:online:list','online','admin','2021-07-03 14:34:31','',NULL,'鍦ㄧ嚎鐢ㄦ埛鑿滃崟'),(110,'瀹氭椂浠诲姟',2,2,'job','monitor/job/index',1,0,'C','0','0','monitor:job:list','job','admin','2021-07-03 14:34:31','',NULL,'瀹氭椂浠诲姟鑿滃崟'),(111,'鏁版嵁鐩戞帶',2,3,'druid','monitor/druid/index',1,0,'C','0','0','monitor:druid:list','druid','admin','2021-07-03 14:34:32','',NULL,'鏁版嵁鐩戞帶鑿滃崟'),(112,'鏈嶅姟鐩戞帶',2,4,'server','monitor/server/index',1,0,'C','0','0','monitor:server:list','server','admin','2021-07-03 14:34:32','',NULL,'鏈嶅姟鐩戞帶鑿滃崟'),(113,'缂撳瓨鐩戞帶',2,5,'cache','monitor/cache/index',1,0,'C','0','0','monitor:cache:list','redis','admin','2021-07-03 14:34:32','',NULL,'缂撳瓨鐩戞帶鑿滃崟'),(114,'琛ㄥ崟鏋勫缓',3,1,'build','tool/build/index',1,0,'C','0','0','tool:build:list','build','admin','2021-07-03 14:34:32','',NULL,'琛ㄥ崟鏋勫缓鑿滃崟'),(115,'浠ｇ爜鐢熸垚',3,2,'gen','tool/gen/index',1,0,'C','0','0','tool:gen:list','code','admin','2021-07-03 14:34:32','',NULL,'浠ｇ爜鐢熸垚鑿滃崟'),(116,'绯荤粺鎺ュ彛',3,3,'swagger','tool/swagger/index',1,0,'C','0','0','tool:swagger:list','swagger','admin','2021-07-03 14:34:32','',NULL,'绯荤粺鎺ュ彛鑿滃崟'),(500,'鎿嶄綔鏃ュ織',108,1,'operlog','monitor/operlog/index',1,0,'C','0','0','monitor:operlog:list','form','admin','2021-07-03 14:34:32','',NULL,'鎿嶄綔鏃ュ織鑿滃崟'),(501,'鐧诲綍鏃ュ織',108,2,'logininfor','monitor/logininfor/index',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2021-07-03 14:34:32','',NULL,'鐧诲綍鏃ュ織鑿滃崟'),(1001,'鐢ㄦ埛鏌ヨ',100,1,'','',1,0,'F','0','0','system:user:query','#','admin','2021-07-03 14:34:32','',NULL,''),(1002,'鐢ㄦ埛鏂板',100,2,'','',1,0,'F','0','0','system:user:add','#','admin','2021-07-03 14:34:32','',NULL,''),(1003,'鐢ㄦ埛淇敼',100,3,'','',1,0,'F','0','0','system:user:edit','#','admin','2021-07-03 14:34:32','',NULL,''),(1004,'鐢ㄦ埛鍒犻櫎',100,4,'','',1,0,'F','0','0','system:user:remove','#','admin','2021-07-03 14:34:32','',NULL,''),(1005,'鐢ㄦ埛瀵煎嚭',100,5,'','',1,0,'F','0','0','system:user:export','#','admin','2021-07-03 14:34:32','',NULL,''),(1006,'鐢ㄦ埛瀵煎叆',100,6,'','',1,0,'F','0','0','system:user:import','#','admin','2021-07-03 14:34:32','',NULL,''),(1007,'閲嶇疆瀵嗙爜',100,7,'','',1,0,'F','0','0','system:user:resetPwd','#','admin','2021-07-03 14:34:32','',NULL,''),(1008,'瑙掕壊鏌ヨ',101,1,'','',1,0,'F','0','0','system:role:query','#','admin','2021-07-03 14:34:32','',NULL,''),(1009,'瑙掕壊鏂板',101,2,'','',1,0,'F','0','0','system:role:add','#','admin','2021-07-03 14:34:32','',NULL,''),(1010,'瑙掕壊淇敼',101,3,'','',1,0,'F','0','0','system:role:edit','#','admin','2021-07-03 14:34:32','',NULL,''),(1011,'瑙掕壊鍒犻櫎',101,4,'','',1,0,'F','0','0','system:role:remove','#','admin','2021-07-03 14:34:32','',NULL,''),(1012,'瑙掕壊瀵煎嚭',101,5,'','',1,0,'F','0','0','system:role:export','#','admin','2021-07-03 14:34:32','',NULL,''),(1013,'鑿滃崟鏌ヨ',102,1,'','',1,0,'F','0','0','system:menu:query','#','admin','2021-07-03 14:34:33','',NULL,''),(1014,'鑿滃崟鏂板',102,2,'','',1,0,'F','0','0','system:menu:add','#','admin','2021-07-03 14:34:33','',NULL,''),(1015,'鑿滃崟淇敼',102,3,'','',1,0,'F','0','0','system:menu:edit','#','admin','2021-07-03 14:34:33','',NULL,''),(1016,'鑿滃崟鍒犻櫎',102,4,'','',1,0,'F','0','0','system:menu:remove','#','admin','2021-07-03 14:34:33','',NULL,''),(1017,'閮ㄩ棬鏌ヨ',103,1,'','',1,0,'F','0','0','system:dept:query','#','admin','2021-07-03 14:34:33','',NULL,''),(1018,'閮ㄩ棬鏂板',103,2,'','',1,0,'F','0','0','system:dept:add','#','admin','2021-07-03 14:34:33','',NULL,''),(1019,'閮ㄩ棬淇敼',103,3,'','',1,0,'F','0','0','system:dept:edit','#','admin','2021-07-03 14:34:33','',NULL,''),(1020,'閮ㄩ棬鍒犻櫎',103,4,'','',1,0,'F','0','0','system:dept:remove','#','admin','2021-07-03 14:34:33','',NULL,''),(1021,'宀椾綅鏌ヨ',104,1,'','',1,0,'F','0','0','system:post:query','#','admin','2021-07-03 14:34:33','',NULL,''),(1022,'宀椾綅鏂板',104,2,'','',1,0,'F','0','0','system:post:add','#','admin','2021-07-03 14:34:33','',NULL,''),(1023,'宀椾綅淇敼',104,3,'','',1,0,'F','0','0','system:post:edit','#','admin','2021-07-03 14:34:33','',NULL,''),(1024,'宀椾綅鍒犻櫎',104,4,'','',1,0,'F','0','0','system:post:remove','#','admin','2021-07-03 14:34:33','',NULL,''),(1025,'宀椾綅瀵煎嚭',104,5,'','',1,0,'F','0','0','system:post:export','#','admin','2021-07-03 14:34:33','',NULL,''),(1026,'瀛楀吀鏌ヨ',105,1,'#','',1,0,'F','0','0','system:dict:query','#','admin','2021-07-03 14:34:33','',NULL,''),(1027,'瀛楀吀鏂板',105,2,'#','',1,0,'F','0','0','system:dict:add','#','admin','2021-07-03 14:34:33','',NULL,''),(1028,'瀛楀吀淇敼',105,3,'#','',1,0,'F','0','0','system:dict:edit','#','admin','2021-07-03 14:34:33','',NULL,''),(1029,'瀛楀吀鍒犻櫎',105,4,'#','',1,0,'F','0','0','system:dict:remove','#','admin','2021-07-03 14:34:33','',NULL,''),(1030,'瀛楀吀瀵煎嚭',105,5,'#','',1,0,'F','0','0','system:dict:export','#','admin','2021-07-03 14:34:33','',NULL,''),(1031,'鍙傛暟鏌ヨ',106,1,'#','',1,0,'F','0','0','system:config:query','#','admin','2021-07-03 14:34:33','',NULL,''),(1032,'鍙傛暟鏂板',106,2,'#','',1,0,'F','0','0','system:config:add','#','admin','2021-07-03 14:34:33','',NULL,''),(1033,'鍙傛暟淇敼',106,3,'#','',1,0,'F','0','0','system:config:edit','#','admin','2021-07-03 14:34:33','',NULL,''),(1034,'鍙傛暟鍒犻櫎',106,4,'#','',1,0,'F','0','0','system:config:remove','#','admin','2021-07-03 14:34:33','',NULL,''),(1035,'鍙傛暟瀵煎嚭',106,5,'#','',1,0,'F','0','0','system:config:export','#','admin','2021-07-03 14:34:34','',NULL,''),(1036,'鍏憡鏌ヨ',107,1,'#','',1,0,'F','0','0','system:notice:query','#','admin','2021-07-03 14:34:34','',NULL,''),(1037,'鍏憡鏂板',107,2,'#','',1,0,'F','0','0','system:notice:add','#','admin','2021-07-03 14:34:34','',NULL,''),(1038,'鍏憡淇敼',107,3,'#','',1,0,'F','0','0','system:notice:edit','#','admin','2021-07-03 14:34:34','',NULL,''),(1039,'鍏憡鍒犻櫎',107,4,'#','',1,0,'F','0','0','system:notice:remove','#','admin','2021-07-03 14:34:34','',NULL,''),(1040,'鎿嶄綔鏌ヨ',500,1,'#','',1,0,'F','0','0','monitor:operlog:query','#','admin','2021-07-03 14:34:34','',NULL,''),(1041,'鎿嶄綔鍒犻櫎',500,2,'#','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2021-07-03 14:34:34','',NULL,''),(1042,'鏃ュ織瀵煎嚭',500,4,'#','',1,0,'F','0','0','monitor:operlog:export','#','admin','2021-07-03 14:34:34','',NULL,''),(1043,'鐧诲綍鏌ヨ',501,1,'#','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2021-07-03 14:34:34','',NULL,''),(1044,'鐧诲綍鍒犻櫎',501,2,'#','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2021-07-03 14:34:34','',NULL,''),(1045,'鏃ュ織瀵煎嚭',501,3,'#','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2021-07-03 14:34:34','',NULL,''),(1046,'鍦ㄧ嚎鏌ヨ',109,1,'#','',1,0,'F','0','0','monitor:online:query','#','admin','2021-07-03 14:34:34','',NULL,''),(1047,'鎵归噺寮洪€€',109,2,'#','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2021-07-03 14:34:34','',NULL,''),(1048,'鍗曟潯寮洪€€',109,3,'#','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2021-07-03 14:34:34','',NULL,''),(1049,'浠诲姟鏌ヨ',110,1,'#','',1,0,'F','0','0','monitor:job:query','#','admin','2021-07-03 14:34:34','',NULL,''),(1050,'浠诲姟鏂板',110,2,'#','',1,0,'F','0','0','monitor:job:add','#','admin','2021-07-03 14:34:34','',NULL,''),(1051,'浠诲姟淇敼',110,3,'#','',1,0,'F','0','0','monitor:job:edit','#','admin','2021-07-03 14:34:34','',NULL,''),(1052,'浠诲姟鍒犻櫎',110,4,'#','',1,0,'F','0','0','monitor:job:remove','#','admin','2021-07-03 14:34:34','',NULL,''),(1053,'鐘舵€佷慨鏀?,110,5,'#','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2021-07-03 14:34:34','',NULL,''),(1054,'浠诲姟瀵煎嚭',110,7,'#','',1,0,'F','0','0','monitor:job:export','#','admin','2021-07-03 14:34:34','',NULL,''),(1055,'鐢熸垚鏌ヨ',115,1,'#','',1,0,'F','0','0','tool:gen:query','#','admin','2021-07-03 14:34:34','',NULL,''),(1056,'鐢熸垚淇敼',115,2,'#','',1,0,'F','0','0','tool:gen:edit','#','admin','2021-07-03 14:34:35','',NULL,''),(1057,'鐢熸垚鍒犻櫎',115,3,'#','',1,0,'F','0','0','tool:gen:remove','#','admin','2021-07-03 14:34:35','',NULL,''),(1058,'瀵煎叆浠ｇ爜',115,2,'#','',1,0,'F','0','0','tool:gen:import','#','admin','2021-07-03 14:34:35','',NULL,''),(1059,'棰勮浠ｇ爜',115,4,'#','',1,0,'F','0','0','tool:gen:preview','#','admin','2021-07-03 14:34:35','',NULL,''),(1060,'鐢熸垚浠ｇ爜',115,5,'#','',1,0,'F','0','0','tool:gen:code','#','admin','2021-07-03 14:34:35','',NULL,''),(2003,'瀛︾敓淇℃伅',1,1,'student','system/student/index',1,0,'M','0','1','system:student:list','#','admin','2021-07-04 13:44:53','admin','2021-07-06 11:48:08','瀛︾敓淇℃伅鑿滃崟'),(2004,'瀛︾敓淇℃伅鏌ヨ',2003,1,'#','',1,0,'F','0','0','system:student:query','#','admin','2021-07-04 13:44:54','',NULL,''),(2005,'瀛︾敓淇℃伅鏂板',2003,2,'#','',1,0,'F','0','0','system:student:add','#','admin','2021-07-04 13:44:54','',NULL,''),(2006,'瀛︾敓淇℃伅淇敼',2003,3,'#','',1,0,'F','0','0','system:student:edit','#','admin','2021-07-04 13:44:54','',NULL,''),(2007,'瀛︾敓淇℃伅鍒犻櫎',2003,4,'#','',1,0,'F','0','0','system:student:remove','#','admin','2021-07-04 13:44:54','',NULL,''),(2008,'瀛︾敓淇℃伅瀵煎嚭',2003,5,'#','',1,0,'F','0','0','system:student:export','#','admin','2021-07-04 13:44:54','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '鍏憡ID',
  `notice_title` varchar(50) NOT NULL COMMENT '鍏憡鏍囬',
  `notice_type` char(1) NOT NULL COMMENT '鍏憡绫诲瀷锛?閫氱煡 2鍏憡锛?,
  `notice_content` longblob COMMENT '鍏憡鍐呭',
  `status` char(1) DEFAULT '0' COMMENT '鍏憡鐘舵€侊紙0姝ｅ父 1鍏抽棴锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(255) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='閫氱煡鍏憡琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'娓╅Θ鎻愰啋锛?018-07-01 鑻ヤ緷鏂扮増鏈彂甯冨暒','2',_binary '\新版本\腬赲萛?,'0','admin','2021-07-03 14:34:45','',NULL,'绠＄悊鍛?),(2,'缁存姢閫氱煡锛?018-07-01 鑻ヤ緷绯荤粺鍑屾櫒缁存姢','1',_binary '维护\腬赲萛?,'0','admin','2021-07-03 14:34:45','',NULL,'绠＄悊鍛?);
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '鏃ュ織涓婚敭',
  `title` varchar(50) DEFAULT '' COMMENT '妯″潡鏍囬',
  `business_type` int DEFAULT '0' COMMENT '涓氬姟绫诲瀷锛?鍏跺畠 1鏂板 2淇敼 3鍒犻櫎锛?,
  `method` varchar(100) DEFAULT '' COMMENT '鏂规硶鍚嶇О',
  `request_method` varchar(10) DEFAULT '' COMMENT '璇锋眰鏂瑰紡',
  `operator_type` int DEFAULT '0' COMMENT '鎿嶄綔绫诲埆锛?鍏跺畠 1鍚庡彴鐢ㄦ埛 2鎵嬫満绔敤鎴凤級',
  `oper_name` varchar(50) DEFAULT '' COMMENT '鎿嶄綔浜哄憳',
  `dept_name` varchar(50) DEFAULT '' COMMENT '閮ㄩ棬鍚嶇О',
  `oper_url` varchar(255) DEFAULT '' COMMENT '璇锋眰URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '涓绘満鍦板潃',
  `oper_location` varchar(255) DEFAULT '' COMMENT '鎿嶄綔鍦扮偣',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '璇锋眰鍙傛暟',
  `json_result` varchar(2000) DEFAULT '' COMMENT '杩斿洖鍙傛暟',
  `status` int DEFAULT '0' COMMENT '鎿嶄綔鐘舵€侊紙0姝ｅ父 1寮傚父锛?,
  `error_msg` varchar(2000) DEFAULT '' COMMENT '閿欒娑堟伅',
  `oper_time` datetime DEFAULT NULL COMMENT '鎿嶄綔鏃堕棿',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鎿嶄綔鏃ュ織璁板綍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'浠ｇ爜鐢熸垚',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','鍐呯綉IP','sys_student','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 13:27:59'),(101,'浠ｇ爜鐢熸垚',2,'com.ruoyi.generator.controller.GenController.synchDb()','GET',1,'admin',NULL,'/tool/gen/synchDb/sys_student','127.0.0.1','鍐呯綉IP','{tableName=sys_student}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 13:30:26'),(102,'浠ｇ爜鐢熸垚',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','鍐呯綉IP','{}','null',0,NULL,'2021-07-04 13:30:29'),(103,'浠ｇ爜鐢熸垚',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','鍐呯綉IP','{}','null',0,NULL,'2021-07-04 13:30:32'),(104,'浠ｇ爜鐢熸垚',2,'com.ruoyi.generator.controller.GenController.synchDb()','GET',1,'admin',NULL,'/tool/gen/synchDb/sys_student','127.0.0.1','鍐呯綉IP','{tableName=sys_student}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 13:37:04'),(105,'浠ｇ爜鐢熸垚',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin',NULL,'/tool/gen/1','127.0.0.1','鍐呯綉IP','{tableIds=1}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 13:43:00'),(106,'鑿滃崟绠＄悊',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2000','127.0.0.1','鍐呯綉IP','{menuId=2000}','{\"msg\":\"瀛樺湪瀛愯彍鍗?涓嶅厑璁稿垹闄",\"code\":500}',0,NULL,'2021-07-04 13:52:48'),(107,'鑿滃崟绠＄悊',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2001','127.0.0.1','鍐呯綉IP','{menuId=2001}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 13:52:58'),(108,'鑿滃崟绠＄悊',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2002','127.0.0.1','鍐呯綉IP','{menuId=2002}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 13:53:02'),(109,'鑿滃崟绠＄悊',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2000','127.0.0.1','鍐呯綉IP','{menuId=2000}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 13:53:06'),(110,'瀛楀吀绫诲瀷',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','鍐呯綉IP','{}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 13:53:24'),(111,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','鍐呯綉IP','{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"瀛︾敓淇℃伅\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"student\",\"component\":\"system/student/index\",\"children\":[],\"createTime\":1625377493000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"M\",\"perms\":\"system:student:list\",\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 13:54:33'),(112,'瀛︾敓淇℃伅',1,'com.ruoyi.web.controller.system.SysStudentController.add()','POST',1,'admin',NULL,'/system/student','127.0.0.1','鍐呯綉IP','{\"studentBirthday\":893088000000,\"params\":{},\"studentHobby\":\"闊充箰锛屽皬璇碶",\"studentId\":1,\"studentName\":\"鏉庡垰\",\"studentStatus\":\"1\",\"studentSex\":\"\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 13:58:53'),(113,'瀛楀吀绫诲瀷',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','鍐呯綉IP','{}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 13:59:13'),(114,'瀛楀吀绫诲瀷',1,'com.ruoyi.web.controller.system.SysDictTypeController.add()','POST',1,'admin',NULL,'/system/dict/type','127.0.0.1','鍐呯綉IP','{\"createBy\":\"admin\",\"dictName\":\"瀛︾敓鎬у埆\",\"remark\":\"瀛︾敓鎬у埆鍒楄〃\",\"params\":{},\"dictType\":\"sys_student_sex\",\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 14:00:42'),(115,'瀛楀吀绫诲瀷',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','鍐呯綉IP','{}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 14:00:47'),(116,'瀛楀吀绫诲瀷',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','鍐呯綉IP','{}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 14:00:49'),(117,'瀛楀吀绫诲瀷',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','鍐呯綉IP','{}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 14:00:50'),(118,'瀛︾敓淇℃伅',2,'com.ruoyi.web.controller.system.SysStudentController.edit()','PUT',1,'admin',NULL,'/system/student','127.0.0.1','鍐呯綉IP','{\"studentBirthday\":893088000000,\"params\":{},\"studentHobby\":\"闊充箰锛屽皬璇碶",\"studentId\":1,\"studentName\":\"鏉庡垰\",\"studentStatus\":\"1\",\"studentSex\":\"\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 14:01:13'),(119,'瀛楀吀绫诲瀷',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','鍐呯綉IP','{}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 14:02:10'),(120,'瀛楀吀绫诲瀷',2,'com.ruoyi.web.controller.system.SysDictTypeController.edit()','PUT',1,'admin',NULL,'/system/dict/type','127.0.0.1','鍐呯綉IP','{\"createBy\":\"admin\",\"createTime\":1625378442000,\"updateBy\":\"admin\",\"dictName\":\"瀛︾敓鎬у埆\",\"remark\":\"瀛︾敓鎬у埆鍒楄〃\",\"dictId\":100,\"params\":{},\"dictType\":\"sys_student_sex\",\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 14:02:30'),(121,'瀛楀吀绫诲瀷',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','鍐呯綉IP','{}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 14:22:47'),(122,'瀛楀吀绫诲瀷',5,'com.ruoyi.web.controller.system.SysDictTypeController.export()','GET',1,'admin',NULL,'/system/dict/type/export','127.0.0.1','鍐呯綉IP','{}','{\"msg\":\"0dca6546-b23a-4d47-bea0-81bd6e5bac1a_瀛楀吀绫诲瀷.xlsx\",\"code\":200}',0,NULL,'2021-07-04 14:22:57'),(123,'瀛楀吀绫诲瀷',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','鍐呯綉IP','{}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 16:58:42'),(124,'瀛楀吀绫诲瀷',9,'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()','DELETE',1,'admin',NULL,'/system/dict/type/refreshCache','127.0.0.1','鍐呯綉IP','{}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:02:59'),(125,'瀛楀吀鏁版嵁',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin',NULL,'/system/dict/data','127.0.0.1','鍐呯綉IP','{\"dictValue\":\"0\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"sys_student_sex\",\"dictLabel\":\"鐢穃",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:21:13'),(126,'瀛楀吀鏁版嵁',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin',NULL,'/system/dict/data','127.0.0.1','鍐呯綉IP','{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"sys_student_sex\",\"dictLabel\":\"濂砛",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:22:05'),(127,'瀛楀吀鏁版嵁',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin',NULL,'/system/dict/data','127.0.0.1','鍐呯綉IP','{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":3,\"remark\":\"鎬у埆鏈煡\",\"params\":{},\"dictType\":\"sys_student_sex\",\"dictLabel\":\"鏈煡\",\"createBy\":\"admin\",\"default\":false,\"cssClass\":\"\",\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:23:07'),(128,'瀛楀吀鏁版嵁',2,'com.ruoyi.web.controller.system.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','鍐呯綉IP','{\"dictValue\":\"0\",\"listClass\":\"default\",\"dictSort\":1,\"remark\":\"鎬у埆鐢穃",\"params\":{},\"dictType\":\"sys_student_sex\",\"dictLabel\":\"鐢穃",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1625390473000,\"dictCode\":100,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:23:25'),(129,'瀛楀吀鏁版嵁',2,'com.ruoyi.web.controller.system.SysDictDataController.edit()','PUT',1,'admin',NULL,'/system/dict/data','127.0.0.1','鍐呯綉IP','{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":2,\"remark\":\"鎬у埆濂砛",\"params\":{},\"dictType\":\"sys_student_sex\",\"dictLabel\":\"濂砛",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1625390525000,\"dictCode\":101,\"updateBy\":\"admin\",\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:23:35'),(130,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.edit()','PUT',1,'admin',NULL,'/system/dept','127.0.0.1','鍐呯綉IP','{\"deptName\":\"涓婃捣鏉夎揪瀛﹂櫌\",\"leader\":\"鑻ヤ緷\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1625294068000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"ry@qq.com\",\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:42:05'),(131,'閮ㄩ棬绠＄悊',1,'com.ruoyi.web.controller.system.SysDeptController.add()','POST',1,'admin',NULL,'/system/dept','127.0.0.1','鍐呯綉IP','{\"deptName\":\"鍢夊杽鍒嗘牎\",\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:42:45'),(132,'閮ㄩ棬绠＄悊',1,'com.ruoyi.web.controller.system.SysDeptController.add()','POST',1,'admin',NULL,'/system/dept','127.0.0.1','鍐呯綉IP','{\"deptName\":\"閰掑簵绠＄悊\",\"orderNum\":\"1\",\"params\":{},\"parentId\":200,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100,200\",\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:43:23'),(133,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:44:48'),(134,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:44:50'),(135,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:44:50'),(136,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:44:50'),(137,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:44:51'),(138,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:44:59'),(139,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"鏅€氳鑹瞈",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1625294070000,\"remark\":\"娴嬭瘯鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"娴嬭瘯閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1625294070000,\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:45:48'),(140,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"admin\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:46:18'),(141,'鐢ㄦ埛绠＄悊',4,'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()','PUT',1,'admin',NULL,'/system/user/authRole','127.0.0.1','鍐呯綉IP','1 [1,2]','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:47:11'),(142,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"鏅€氳鑹瞈",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1625294070000,\"remark\":\"娴嬭瘯鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"aa\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"涓婃捣鏉夎揪瀛﹂櫌\",\"leader\":\"鑻ヤ緷\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1625294070000,\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:47:22'),(143,'鐢ㄦ埛绠＄悊',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin',NULL,'/system/user/2','127.0.0.1','鍐呯綉IP','{userIds=2}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:48:04'),(144,'鐢ㄦ埛绠＄悊',4,'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()','PUT',1,'admin',NULL,'/system/user/authRole','127.0.0.1','鍐呯綉IP','1 [2]','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:49:10'),(145,'鐢ㄦ埛绠＄悊',4,'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()','PUT',1,'admin',NULL,'/system/user/authRole','127.0.0.1','鍐呯綉IP','1 [1]','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:49:26'),(146,'鐢ㄦ埛绠＄悊',4,'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()','PUT',1,'admin',NULL,'/system/user/authRole','127.0.0.1','鍐呯綉IP','1 []','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:49:45'),(147,'鐢ㄦ埛绠＄悊',4,'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()','PUT',1,'admin',NULL,'/system/user/authRole','127.0.0.1','鍐呯綉IP','1 [2]','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:51:27'),(148,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"鏅€氳鑹瞈",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"闃挎媺寮楁媺\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:51:37'),(149,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"鏅€氳鑹瞈",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:52:03'),(150,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"鏅€氳鑹瞈",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:52:04'),(151,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"鏅€氳鑹瞈",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:52:05'),(152,'鐢ㄦ埛绠＄悊',4,'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()','PUT',1,'admin',NULL,'/system/user/authRole','127.0.0.1','鍐呯綉IP','1 [1]','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-04 17:52:14'),(153,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:54:32'),(154,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:54:33'),(155,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:54:33'),(156,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:54:33'),(157,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:54:34'),(158,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625388834000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鑻ヤ緷\",\"sex\":\"1\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-04 17:54:40'),(159,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625539085000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鏉庡垰\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-06 10:50:35'),(160,'涓汉淇℃伅',2,'com.ruoyi.web.controller.system.SysProfileController.updateProfile()','PUT',1,'admin',NULL,'/system/user/profile','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625539085093,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"鏉庡垰\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1625294070000,\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 10:51:13'),(161,'涓汉淇℃伅',2,'com.ruoyi.web.controller.system.SysProfileController.updateProfile()','PUT',1,'admin',NULL,'/system/user/profile','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625539085093,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"390023206@163.com\",\"nickName\":\"鏉庡垰\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1625294070000,\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 10:51:35'),(162,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625539085000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"390023206@163.com\",\"nickName\":\"鏉庡垰\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-06 10:52:05'),(163,'閮ㄩ棬绠＄悊',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/103','127.0.0.1','鍐呯綉IP','{deptId=103}','{\"msg\":\"閮ㄩ棬瀛樺湪鐢ㄦ埛,涓嶅厑璁稿垹闄",\"code\":500}',0,NULL,'2021-07-06 10:52:52'),(164,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625539085000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"390023206@163.com\",\"nickName\":\"鏉庡垰\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"1\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-06 10:53:16'),(165,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625539085000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"390023206@163.com\",\"nickName\":\"鏉庡垰\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-06 10:53:29'),(166,'閮ㄩ棬绠＄悊',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/101','127.0.0.1','鍐呯綉IP','{deptId=101}','{\"msg\":\"瀛樺湪涓嬬骇閮ㄩ棬,涓嶅厑璁稿垹闄",\"code\":500}',0,NULL,'2021-07-06 11:40:40'),(167,'閮ㄩ棬绠＄悊',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/103','127.0.0.1','鍐呯綉IP','{deptId=103}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 11:40:44'),(168,'閮ㄩ棬绠＄悊',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/104','127.0.0.1','鍐呯綉IP','{deptId=104}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 11:40:46'),(169,'閮ㄩ棬绠＄悊',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/105','127.0.0.1','鍐呯綉IP','{deptId=105}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 11:40:49'),(170,'閮ㄩ棬绠＄悊',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/106','127.0.0.1','鍐呯綉IP','{deptId=106}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 11:40:51'),(171,'閮ㄩ棬绠＄悊',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/107','127.0.0.1','鍐呯綉IP','{deptId=107}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 11:40:54'),(172,'閮ㄩ棬绠＄悊',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/108','127.0.0.1','鍐呯綉IP','{deptId=108}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 11:40:56'),(173,'閮ㄩ棬绠＄悊',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/109','127.0.0.1','鍐呯綉IP','{deptId=109}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 11:40:59'),(174,'閮ㄩ棬绠＄悊',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/102','127.0.0.1','鍐呯綉IP','{deptId=102}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 11:41:02'),(175,'閮ㄩ棬绠＄悊',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/101','127.0.0.1','鍐呯綉IP','{deptId=101}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 11:41:04'),(176,'閮ㄩ棬绠＄悊',1,'com.ruoyi.web.controller.system.SysDeptController.add()','POST',1,'admin',NULL,'/system/dept','127.0.0.1','鍐呯綉IP','{\"deptName\":\"閲戞捣鍒嗘牎\",\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 11:41:48'),(177,'閮ㄩ棬绠＄悊',1,'com.ruoyi.web.controller.system.SysDeptController.add()','POST',1,'admin',NULL,'/system/dept','127.0.0.1','鍐呯綉IP','{\"deptName\":\"璁＄畻鏈虹瀛︿笌鎶€鏈痋",\"orderNum\":\"1\",\"params\":{},\"parentId\":202,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100,202\",\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 11:42:28'),(178,'涓汉淇℃伅',2,'com.ruoyi.web.controller.system.SysProfileController.updateProfile()','PUT',1,'admin',NULL,'/system/user/profile','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625542214768,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"390023206@qq.com\",\"nickName\":\"鏉庡垰\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1625294070000,\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 11:46:56'),(179,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','鍐呯綉IP','{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"瀛︾敓淇℃伅\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"student\",\"component\":\"system/student/index\",\"children\":[],\"createTime\":1625377493000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"M\",\"perms\":\"system:student:list\",\"status\":\"1\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 11:48:08'),(180,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"瓒呯骇绠＄悊鍛榎",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1625542215000,\"remark\":\"绠＄悊鍛榎",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"390023206@qq.com\",\"nickName\":\"鏉庡垰\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"鐮斿彂閮ㄩ棬\",\"leader\":\"鑻ヤ緷\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1625294070000,\"status\":\"0\"}','null',1,'涓嶅厑璁告搷浣滆秴绾х鐞嗗憳鐢ㄦ埛','2021-07-06 11:51:15'),(181,'鐢ㄦ埛绠＄悊',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"admin\":false,\"password\":\"$2a$10$UcxZUZhc2KSQBD2sCLtmpO0dyEoQaq1S5uH/G3ouckbW/48dZuiUC\",\"postIds\":[],\"nickName\":\"鏉庡垰\",\"deptId\":203,\"params\":{},\"userName\":\"鏉庡垰\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 16:59:56'),(182,'鐢ㄦ埛绠＄悊',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin',NULL,'/system/user/100','127.0.0.1','鍐呯綉IP','{userIds=100}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 17:00:11'),(183,'鐢ㄦ埛绠＄悊',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"admin\":false,\"password\":\"123456\",\"postIds\":[],\"nickName\":\"鏉庡垰\",\"params\":{},\"userName\":\"鏉庡垰\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"鏂板鐢ㄦ埛\'鏉庡垰\'澶辫触锛岀櫥褰曡处鍙峰凡瀛樺湪\",\"code\":500}',0,NULL,'2021-07-06 17:01:44'),(184,'鐢ㄦ埛绠＄悊',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"admin\":false,\"password\":\"123456\",\"postIds\":[],\"nickName\":\"鏉庡垰\",\"params\":{},\"userName\":\"鏉庡垰\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"鏂板鐢ㄦ埛\'鏉庡垰\'澶辫触锛岀櫥褰曡处鍙峰凡瀛樺湪\",\"code\":500}',0,NULL,'2021-07-06 17:01:46'),(185,'閮ㄩ棬绠＄悊',1,'com.ruoyi.web.controller.system.SysDeptController.add()','POST',1,'admin',NULL,'/system/dept','127.0.0.1','鍐呯綉IP','{\"deptName\":\"閲戞矙姹熷垎鏍",\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 17:04:47'),(186,'閮ㄩ棬绠＄悊',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin',NULL,'/system/dept/204','127.0.0.1','鍐呯綉IP','{deptId=204}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 17:04:57'),(187,'鐢ㄦ埛绠＄悊',5,'com.ruoyi.web.controller.system.SysUserController.export()','GET',1,'admin',NULL,'/system/user/export','127.0.0.1','鍐呯綉IP','{}','{\"msg\":\"acc7740e-7550-456a-9ac0-8e48359422c5_鐢ㄦ埛鏁版嵁.xlsx\",\"code\":200}',0,NULL,'2021-07-06 17:09:15'),(188,'鐢ㄦ埛绠＄悊',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"admin\":false,\"password\":\"$2a$10$Khvs3NaIXwX.aGmXLMKsm.vCOagx0tuq7gicjK9DOJkYn/e9ft5MS\",\"postIds\":[],\"nickName\":\"寤栨捣椋瀄",\"deptId\":203,\"params\":{},\"userName\":\"寤栨捣椋瀄",\"userId\":101,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 17:20:10'),(189,'鐢ㄦ埛绠＄悊',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','鍐呯綉IP','{\"admin\":false,\"password\":\"$2a$10$R3YNqh1HxUdCeR1uhyEH8.o18YhAmDgeemYWYJD5G4KQNbzub0gQ.\",\"postIds\":[],\"nickName\":\"寮犵厹鐎歕",\"deptId\":203,\"params\":{},\"userName\":\"寮犵厹鐎歕",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"鎿嶄綔鎴愬姛\",\"code\":200}',0,NULL,'2021-07-06 17:21:19');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '宀椾綅ID',
  `post_code` varchar(64) NOT NULL COMMENT '宀椾綅缂栫爜',
  `post_name` varchar(50) NOT NULL COMMENT '宀椾綅鍚嶇О',
  `post_sort` int NOT NULL COMMENT '鏄剧ず椤哄簭',
  `status` char(1) NOT NULL COMMENT '鐘舵€侊紙0姝ｅ父 1鍋滅敤锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='宀椾綅淇℃伅琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','钁ｄ簨闀?,1,'0','admin','2021-07-03 14:34:30','',NULL,''),(2,'se','椤圭洰缁忕悊',2,'0','admin','2021-07-03 14:34:30','',NULL,''),(3,'hr','浜哄姏璧勬簮',3,'0','admin','2021-07-03 14:34:30','',NULL,''),(4,'user','鏅€氬憳宸?,4,'0','admin','2021-07-03 14:34:30','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '瑙掕壊ID',
  `role_name` varchar(30) NOT NULL COMMENT '瑙掕壊鍚嶇О',
  `role_key` varchar(100) NOT NULL COMMENT '瑙掕壊鏉冮檺瀛楃涓?,
  `role_sort` int NOT NULL COMMENT '鏄剧ず椤哄簭',
  `data_scope` char(1) DEFAULT '1' COMMENT '鏁版嵁鑼冨洿锛?锛氬叏閮ㄦ暟鎹潈闄?2锛氳嚜瀹氭暟鎹潈闄?3锛氭湰閮ㄩ棬鏁版嵁鏉冮檺 4锛氭湰閮ㄩ棬鍙婁互涓嬫暟鎹潈闄愶級',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '鑿滃崟鏍戦€夋嫨椤规槸鍚﹀叧鑱旀樉绀?,
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '閮ㄩ棬鏍戦€夋嫨椤规槸鍚﹀叧鑱旀樉绀?,
  `status` char(1) NOT NULL COMMENT '瑙掕壊鐘舵€侊紙0姝ｅ父 1鍋滅敤锛?,
  `del_flag` char(1) DEFAULT '0' COMMENT '鍒犻櫎鏍囧織锛?浠ｈ〃瀛樺湪 2浠ｈ〃鍒犻櫎锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瑙掕壊淇℃伅琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'瓒呯骇绠＄悊鍛?,'admin',1,'1',1,1,'0','0','admin','2021-07-03 14:34:30','',NULL,'瓒呯骇绠＄悊鍛?),(2,'鏅€氳鑹?,'common',2,'2',1,1,'0','0','admin','2021-07-03 14:34:30','',NULL,'鏅€氳鑹?);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '瑙掕壊ID',
  `dept_id` bigint NOT NULL COMMENT '閮ㄩ棬ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瑙掕壊鍜岄儴闂ㄥ叧鑱旇〃';
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
  `role_id` bigint NOT NULL COMMENT '瑙掕壊ID',
  `menu_id` bigint NOT NULL COMMENT '鑿滃崟ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瑙掕壊鍜岃彍鍗曞叧鑱旇〃';
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
  `student_id` int NOT NULL AUTO_INCREMENT COMMENT '缂栧彿',
  `student_name` varchar(30) DEFAULT '' COMMENT '瀛︾敓鍚嶇О',
  `student_age` int DEFAULT NULL COMMENT '骞撮緞',
  `student_hobby` varchar(30) DEFAULT '' COMMENT '鐖卞ソ锛?浠ｇ爜 1闊充箰 2鐢靛奖锛?,
  `student_sex` char(1) DEFAULT '0' COMMENT '鎬у埆锛?鐢?1濂?2鏈煡锛?,
  `student_status` char(1) DEFAULT '0' COMMENT '鐘舵€侊紙0姝ｅ父 1鍋滅敤锛?,
  `student_birthday` datetime DEFAULT NULL COMMENT '鐢熸棩',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瀛︾敓淇℃伅琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_student`
--

LOCK TABLES `sys_student` WRITE;
/*!40000 ALTER TABLE `sys_student` DISABLE KEYS */;
INSERT INTO `sys_student` VALUES (1,'鏉庡垰',NULL,'闊充箰锛屽皬璇?,'','1','1998-04-21 00:00:00');
/*!40000 ALTER TABLE `sys_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '鐢ㄦ埛ID',
  `dept_id` bigint DEFAULT NULL COMMENT '閮ㄩ棬ID',
  `user_name` varchar(30) NOT NULL COMMENT '鐢ㄦ埛璐﹀彿',
  `nick_name` varchar(30) NOT NULL COMMENT '鐢ㄦ埛鏄电О',
  `user_type` varchar(2) DEFAULT '00' COMMENT '鐢ㄦ埛绫诲瀷锛?0绯荤粺鐢ㄦ埛锛?,
  `email` varchar(50) DEFAULT '' COMMENT '鐢ㄦ埛閭',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '鎵嬫満鍙风爜',
  `sex` char(1) DEFAULT '0' COMMENT '鐢ㄦ埛鎬у埆锛?鐢?1濂?2鏈煡锛?,
  `avatar` varchar(100) DEFAULT '' COMMENT '澶村儚鍦板潃',
  `password` varchar(100) DEFAULT '' COMMENT '瀵嗙爜',
  `status` char(1) DEFAULT '0' COMMENT '甯愬彿鐘舵€侊紙0姝ｅ父 1鍋滅敤锛?,
  `del_flag` char(1) DEFAULT '0' COMMENT '鍒犻櫎鏍囧織锛?浠ｈ〃瀛樺湪 2浠ｈ〃鍒犻櫎锛?,
  `login_ip` varchar(128) DEFAULT '' COMMENT '鏈€鍚庣櫥褰旾P',
  `login_date` datetime DEFAULT NULL COMMENT '鏈€鍚庣櫥褰曟椂闂?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鐢ㄦ埛淇℃伅琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,100,'admin','鏉庡垰','00','390023206@qq.com','15888888888','0','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2021-07-07 10:43:25','admin','2021-07-03 14:34:30','','2021-07-07 10:43:24','绠＄悊鍛?),(2,100,'ry','aa','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','2','127.0.0.1','2021-07-03 14:34:30','admin','2021-07-03 14:34:30','admin','2021-07-04 17:47:22','娴嬭瘯鍛?),(101,203,'寤栨捣椋?,'寤栨捣椋?,'00','','','0','','$2a$10$Khvs3NaIXwX.aGmXLMKsm.vCOagx0tuq7gicjK9DOJkYn/e9ft5MS','0','0','',NULL,'admin','2021-07-06 17:20:10','',NULL,NULL),(102,203,'寮犵厹鐎?,'寮犵厹鐎?,'00','','','0','','$2a$10$R3YNqh1HxUdCeR1uhyEH8.o18YhAmDgeemYWYJD5G4KQNbzub0gQ.','0','0','',NULL,'admin','2021-07-06 17:21:19','',NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '鐢ㄦ埛ID',
  `post_id` bigint NOT NULL COMMENT '宀椾綅ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鐢ㄦ埛涓庡矖浣嶅叧鑱旇〃';
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
  `user_id` bigint NOT NULL COMMENT '鐢ㄦ埛ID',
  `role_id` bigint NOT NULL COMMENT '瑙掕壊ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鐢ㄦ埛鍜岃鑹插叧鑱旇〃';
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

-- Dump completed on 2021-07-07 12:55:42
