-- MariaDB dump 10.19  Distrib 10.11.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: fun_facts
-- ------------------------------------------------------
-- Server version	10.11.2-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add users',7,'add_users'),
(26,'Can change users',7,'change_users'),
(27,'Can delete users',7,'delete_users'),
(28,'Can view users',7,'view_users'),
(29,'Can add comments',8,'add_comments'),
(30,'Can change comments',8,'change_comments'),
(31,'Can delete comments',8,'delete_comments'),
(32,'Can view comments',8,'view_comments'),
(33,'Can add categories',9,'add_categories'),
(34,'Can change categories',9,'change_categories'),
(35,'Can delete categories',9,'delete_categories'),
(36,'Can view categories',9,'view_categories'),
(37,'Can add images',10,'add_images'),
(38,'Can change images',10,'change_images'),
(39,'Can delete images',10,'delete_images'),
(40,'Can view images',10,'view_images'),
(41,'Can add fact categories',11,'add_factcategories'),
(42,'Can change fact categories',11,'change_factcategories'),
(43,'Can delete fact categories',11,'delete_factcategories'),
(44,'Can view fact categories',11,'view_factcategories'),
(45,'Can add facts',12,'add_facts'),
(46,'Can change facts',12,'change_facts'),
(47,'Can delete facts',12,'delete_facts'),
(48,'Can view facts',12,'view_facts'),
(49,'Can add ratings',13,'add_ratings'),
(50,'Can change ratings',13,'change_ratings'),
(51,'Can delete ratings',13,'delete_ratings'),
(52,'Can view ratings',13,'view_ratings'),
(53,'Can add user',14,'add_user'),
(54,'Can change user',14,'change_user'),
(55,'Can delete user',14,'delete_user'),
(56,'Can view user',14,'view_user'),
(57,'Can add user profile',15,'add_userprofile'),
(58,'Can change user profile',15,'change_userprofile'),
(59,'Can delete user profile',15,'delete_userprofile'),
(60,'Can view user profile',15,'view_userprofile'),
(61,'Can add user preferences',16,'add_userpreferences'),
(62,'Can change user preferences',16,'change_userpreferences'),
(63,'Can delete user preferences',16,'delete_userpreferences'),
(64,'Can view user preferences',16,'view_userpreferences'),
(65,'Can add user activity',17,'add_useractivity'),
(66,'Can change user activity',17,'change_useractivity'),
(67,'Can delete user activity',17,'delete_useractivity'),
(68,'Can view user activity',17,'view_useractivity');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(9,'facts','categories'),
(8,'facts','comments'),
(11,'facts','factcategories'),
(12,'facts','facts'),
(10,'facts','images'),
(13,'facts','ratings'),
(14,'facts','user'),
(17,'facts','useractivity'),
(16,'facts','userpreferences'),
(15,'facts','userprofile'),
(7,'facts','users'),
(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2023-05-25 07:27:31.844352'),
(2,'auth','0001_initial','2023-05-25 07:27:36.964507'),
(3,'admin','0001_initial','2023-05-25 07:27:38.255242'),
(4,'admin','0002_logentry_remove_auto_add','2023-05-25 07:27:38.301673'),
(5,'admin','0003_logentry_add_action_flag_choices','2023-05-25 07:27:38.336379'),
(6,'contenttypes','0002_remove_content_type_name','2023-05-25 07:27:38.999803'),
(7,'auth','0002_alter_permission_name_max_length','2023-05-25 07:27:39.397841'),
(8,'auth','0003_alter_user_email_max_length','2023-05-25 07:27:39.633204'),
(9,'auth','0004_alter_user_username_opts','2023-05-25 07:27:39.678795'),
(10,'auth','0005_alter_user_last_login_null','2023-05-25 07:27:40.320138'),
(11,'auth','0006_require_contenttypes_0002','2023-05-25 07:27:40.367284'),
(12,'auth','0007_alter_validators_add_error_messages','2023-05-25 07:27:40.409937'),
(13,'auth','0008_alter_user_username_max_length','2023-05-25 07:27:40.611019'),
(14,'auth','0009_alter_user_last_name_max_length','2023-05-25 07:27:40.842289'),
(15,'auth','0010_alter_group_name_max_length','2023-05-25 07:27:41.055465'),
(16,'auth','0011_update_proxy_permissions','2023-05-25 07:27:41.102169'),
(17,'auth','0012_alter_user_first_name_max_length','2023-05-25 07:27:41.297975'),
(18,'sessions','0001_initial','2023-05-25 07:27:41.664537'),
(19,'facts','0001_initial','2023-05-25 12:38:15.798766'),
(20,'facts','0002_auto_20230527_1228','2023-05-27 12:29:56.835878'),
(21,'facts','0003_alter_facts_fact_discription_alter_facts_fact_text','2023-05-27 13:11:08.542030'),
(22,'facts','0004_alter_facts_source','2023-05-27 18:39:38.269178'),
(23,'facts','0005_alter_facts_id','2023-05-27 18:48:44.919929'),
(24,'facts','0006_alter_facts_id','2023-05-27 19:02:05.432201'),
(25,'facts','0007_alter_facts_id','2023-05-27 19:02:26.454966'),
(26,'facts','0008_alter_facts_id','2023-05-27 19:18:30.994219'),
(27,'facts','0002_alter_facts_id','2023-05-30 11:07:58.592836'),
(28,'facts','0003_alter_facts_id','2023-06-02 17:03:06.259647'),
(29,'facts','0004_alter_facts_id','2023-06-05 20:26:20.962540'),
(30,'facts','0009_alter_facts_id','2023-06-06 09:53:03.789276'),
(31,'facts','0003_alter_facts_id_alter_users_is_superuser','2023-06-06 10:47:03.907261'),
(32,'admin','0004_alter_logentry_user','2023-06-06 11:42:17.596160'),
(33,'facts','0002_alter_userprofile_options_alter_users_options_and_more','2023-06-06 15:15:49.483998');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facts_categories`
--

DROP TABLE IF EXISTS `facts_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facts_categories` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_categories`
--

LOCK TABLES `facts_categories` WRITE;
/*!40000 ALTER TABLE `facts_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `facts_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facts_categories_facts`
--

DROP TABLE IF EXISTS `facts_categories_facts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facts_categories_facts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `categories_id` bigint(20) NOT NULL,
  `facts_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_categories_facts`
--

LOCK TABLES `facts_categories_facts` WRITE;
/*!40000 ALTER TABLE `facts_categories_facts` DISABLE KEYS */;
/*!40000 ALTER TABLE `facts_categories_facts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facts_comments`
--

DROP TABLE IF EXISTS `facts_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facts_comments` (
  `id` bigint(20) NOT NULL,
  `comment_text` longtext NOT NULL,
  `date_commented` datetime(6) DEFAULT NULL,
  `fact_id_id` varchar(36) NOT NULL,
  `users_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facts_comments_users_id_id_602672e5_fk_facts_users_id` (`users_id_id`),
  KEY `facts_comments_fact_id_id_81a0e2c6_fk` (`fact_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_comments`
--

LOCK TABLES `facts_comments` WRITE;
/*!40000 ALTER TABLE `facts_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `facts_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facts_factcategories`
--

DROP TABLE IF EXISTS `facts_factcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facts_factcategories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id_id` bigint(20) NOT NULL,
  `fact_id_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facts_factcategories_category_id_id_f69c4b08_fk_facts_cat` (`category_id_id`),
  KEY `facts_factcategories_fact_id_id_77cd9325_fk` (`fact_id_id`),
  CONSTRAINT `facts_factcategories_category_id_id_f69c4b08_fk_facts_cat` FOREIGN KEY (`category_id_id`) REFERENCES `facts_categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_factcategories`
--

LOCK TABLES `facts_factcategories` WRITE;
/*!40000 ALTER TABLE `facts_factcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `facts_factcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facts_facts`
--

DROP TABLE IF EXISTS `facts_facts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facts_facts` (
  `id` varchar(36) NOT NULL,
  `fact_text` varchar(500) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  `fact_discription` longtext DEFAULT NULL,
  `fact_title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_facts`
--

LOCK TABLES `facts_facts` WRITE;
/*!40000 ALTER TABLE `facts_facts` DISABLE KEYS */;
INSERT INTO `facts_facts` VALUES
('07ed30d7-b49f-413f-9480-10027ed69bda','The shortest commercial flight in the world between two airports is from St. Gallen–Altenrhein Airport in Switzerland to Friedrichshafen Airport in Germany. It lasts only 8 minutes.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('0c52c016-70ff-45a1-8797-e4cb3c195122','The world’s largest snowflake on record was 15 inches wide and 8 inches thick. \n','','2023-05-27 22:22:17.000000',NULL,NULL),
('1','There are more possible iterations of a game of chess than there are atoms in the known universe.','root','2023-05-25 17:59:56.000000',NULL,NULL),
('10e5969b-fe81-452b-83f5-20b903941569','A fear of long words is called Hippopotomonstrosesquippedaliophobia.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('111880fa-02e2-4112-94f5-ff32ed87e992','Blue whales have hearts that weigh as much as a car.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('1534de2b-a134-429a-b0d9-186091c8d89d','A group of raccoons is called a gaze.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('15483e67-9ee7-44c0-9a04-0f84da4c51f8','Ants don\'t sleep.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('16c32d12-b498-4c29-b6fd-5607a025ce9f','A cat\'s nose has unique ridges and bumps, much like a human fingerprint.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('178247c5-10f7-46f7-9b37-3216895aac6b','The first recorded game was played with a soccer ball and four baskets in ancient times China.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('18f6ce84-1cb1-4b96-b8de-400d8cee2048','Avocado originally referred to a testicle.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('196a227a-e89a-4da1-b04b-390ce50d4cfe','The longest place name in the world is Taumatawhakatangihangakoauauotamateaturipukakapikimaungahoronukupokaiwhenuakitanatahu, a hill in New Zealand.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('1d253137-20a8-4066-8e79-3122ad8e4ff7','The world\'s largest snow maze is located in Warren, Vermont and covers an area of over 3 acres\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('1da9bc98-f68f-4316-b08f-fcf8c38ed843','The shortest total solar eclipse ever recorded was only 1 second long.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('2','Did you know this is the second fact ever enterd in this website?','me','2023-05-27 21:16:43.000000',NULL,NULL),
('206b6250-313a-401f-8029-41c5cb5794ba','A group of crows is called a murder.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('224695f4-adae-4aaa-a9f5-d9c38ef6cb7d','The world\'s largest living organism is a mushroom that measures over 2.4 miles long in Oregon.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('28aaaf39-af1b-4a56-ab39-cbcb1f5d18fe','Over 50% of the human population has never made or received a telephone call.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('29233b8f-3b9d-472f-97b5-3944b7761edd','Honey never spoils. Archaeologists have found pots of honey in ancient Egyptian tombs that are still edible after thousands of years.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('2c240a8b-a5d6-4e3e-8301-68c9f361a120','The tallest mountain in the solar system is Olympus Mons on Mars, it’s over two times higher than Mount Everest.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('2cb2565f-19c2-4298-a634-fbe07356ab69','The world\'s largest pumpkin weighed over one tonne.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('3','Did you know this is the second fact ever enterd in this website?','','2023-05-27 21:25:27.000000',NULL,NULL),
('338b2a9f-fcc1-4deb-ac04-ca504d05dfd3','During prohibition, grape farmers would grow extra grapes and sell them to people to make their own wine.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('39545b5a-b329-40b0-a4d1-783565b9f8a5','A group of hedgehogs is called a prickle\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('39790d30-2c92-48e7-929a-5756ea8aad20','A koala\'s fingerprints are so close to human fingerprints that they have on occasion been confused at a crime scene.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('39a2cd5e-c4f9-4a2b-928c-575416649206','A shrimp\'s heart is located in its head.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('3aa19fea-8ecc-4d9d-9a83-80e937dcd8be','It takes about 63,000 trees to produce one Sunday edition of The New York Times newspaper.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('4','Did you know that there is a species of jellyfish called the immortal jellyfish, which can potentially live forever by reverting back to its juvenile polyp form after reaching maturity? This means that it can cycle through its life stages indefinitely unless it falls prey to predators or succumbs to disease.','','2023-05-27 21:26:08.000000',NULL,NULL),
('43affa71-63ea-4800-8111-8827b6c652b3','Dubai\'s police fleet includes a Lamborghini, Ferrari, and Bentley.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('4417abb8-da5a-477d-b98c-125df5e9f9a0','All the ants in the world weigh as much as all human beings.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('45b013eb-857b-459f-a04c-b89b20167a77','The world’s largest snowball fight was held in Seattle on January 12, 2013 with over 5,000 people in attendance.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('47906293-3436-4246-9f5e-13ec9dae372f','Pregnant women can have strange food cravings because of hormonal changes.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('4c19516a-687e-40e8-8bd1-c865e61c0123','The word gymnasium comes from the Greek word gymnazein, which means “to exercise naked.”\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('4c6233de-f39a-4a7d-b701-39b0534bcf38','A newborn kangaroo is about one inch long.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('4d7dcfa4-49c8-4390-9f27-97d10a48b272','Cheetahs can run up to 70mph in short bursts covering distances of up to 500 yards.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('4e75573b-e8bb-4a86-b2f2-5c9583f0e02c','A sugarcane plant can grow up to 6 meters tall.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('5','Did you know that there is a species of jellyfish called the immortal jellyfish, which can potentially live forever by reverting back to its juvenile polyp form after reaching maturity? This means that it can cycle through its life stages indefinitely unless it falls prey to predators or succumbs to disease.','','2023-05-27 21:27:03.000000',NULL,'Jellyfish'),
('518f8950-0362-4647-89d0-d627f5137316','Some cats have extra toes, which are called polydactyl.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('52c134ad-26e6-4c75-8f04-a98bfef8e9da','Snakes can help predict earthquakes because they can sense a coming earthquake from 75 miles away.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('5e0e33fd-e458-4104-839f-d23cde1c47fd','A slug has four noses\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('5f98c464-f0e6-4dd1-bb25-09aa705ea692','The muscles in your fingers are located in your hands.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('60b1c7b7-8d74-44cb-bae3-2231df600fa8','Apples are more efficient at waking you up in the morning than coffee.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('65a02b2d-2677-4749-b1b8-192f8bf3e1b5','The world’s first novel, The Tale of Genji, was written by a Japanese woman named Murasaki Shikibu.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('66dc843d-95ce-4a6d-9301-3ffd674be8c7','Ancient Egyptians shaved their eyebrows off to mourn the loss of their cats\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('67681af6-b8df-4c0f-8766-f38e74a4784f','A really small ladybug can consume up to 50 aphids in a day.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('6b1bb66b-74cb-406c-80e1-9d57bb8a1fa5','The shortest war in history was fought between Britain and Zanzibar in 1896. It lasted just 38 minutes. \n','','2023-05-27 22:22:17.000000',NULL,NULL),
('6bd594dc-0daa-4c18-9327-d22d3d025b89','A group of rhinoceroses is called a crash.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('70cd9c24-366c-4450-8c73-69facffa7e1b','A group of flamingos is called a flamboyance.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('74f4466a-b9d5-408c-b5e2-300fc1c4912d','The water hyacinth is the fastest growing plant and can double its population in two weeks.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('769a935e-2859-481d-88b0-8dcd24686d7d','A bear’s sense of smell is seven times better than a dog’s.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('7ca948c1-0e27-4d0b-a0d3-78df572a5caa','Bananas are berries, but strawberries are not.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('7df6ed23-5603-4ee4-a69c-0785fe434243','In 2016, a new blue color was discovered and named “YInMn”.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('828c4d9d-efb9-4b0f-b1f8-d5d6d7e26416','While sleeping, half your brain can remain awake to keep watch over danger.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('8375b505-cc08-4b12-8d23-7bd3d1bcd9d4','Sea otters hold hands while sleeping so they don\'t drift apart.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('852a1a59-8f29-4c7e-89f6-df58d7c83cea','A group of jellyfish is called a smack\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('85777c1d-9d4a-443d-9105-9666f436dee6','The shortest distance between Britain and France is 21 miles and it is known as the English Channel.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('8871f3d5-8531-4585-a9ef-2a5eaab5bde2','Sharks have been around longer than trees.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('88d84ec8-68f6-47ef-947e-3fcfe3b61dc6','Cockroaches can live for several weeks without their heads.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('91b5b12e-0a21-40ce-bde5-353143d0cfcf','There is a frog in Australia that screams when it is threatened.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('935e403c-3dec-440c-af8f-08f50feaae6a','The smallest bird in the world is the bee hummingbird, which is smaller than a penny.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('93cb8a3a-7984-4390-a49f-61c1c174650a','The small intestine is up to 6 meters long.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('97fcbd74-0990-4607-afbb-5358324e4bbc','Cows have best friends and become stressed when separated from them. \n','','2023-05-27 22:22:17.000000',NULL,NULL),
('9c399c08-2975-47cd-a537-19d374977de8','Your brain is more active at night than during the day.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('9ef18dce-2999-4a91-959a-bfb6db26fa98','The Earth has more than 80,000 species of edible plants.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('a01357fc-808b-4892-a0ec-5c1cdd788da5','The world’s largest artichoke was grown in Castroville, California, weighing in at 27 pounds and 5.25 inches in diameter.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('a1fcf97e-d432-4a59-ac74-5f4bbc4835d6','Owls are the only birds that can see the color blue.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('a6e0aff9-ef24-4786-ba30-13c1d3403161','Wombat poop comes out in cubes because they have square-shaped intestines.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('ace12cc7-12d2-4909-8e40-8bdea3ad3b6b','Peanuts are not actually nuts; they are legumes.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('b153588b-44b7-47b1-b988-dc2def73135f','The Empire State Building has its own zip code.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('b1589911-ef1c-4e48-99bc-708b1c933914','The “nine dots puzzle” was used to test the creativity and problem-solving skills of employees back in the 1960s.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('b4329d1d-6cd3-46e6-a5fc-ae3fa0f5e6fb','A tower of giraffes is called a tower.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('b5f9f627-6a5f-4b76-aa8c-541b6ddfec84','A group of pandas is called an embarrassment\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('b672eb9c-4376-4204-b011-53beeaf62925','The world\'s oldest piece of chewing gum is over 9,000 years old.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('b8ae9a99-8fc3-4b58-ab7e-f934d38de763','Butterflies can taste with their feet.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('ba4114f8-621d-4c1e-b434-89a9e18f0b56','Before the eraser was invented, people used crustless bread to erase pencil marks.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('ba68d4d5-19d9-458e-85ed-ef086e70bdf3','Buzz Aldrin was the first man to pee on the moon.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('bd745881-e1ce-4c75-8d5e-e8bcb46716b5','The shortest commercial flight in the world is between the two Scottish islands of Westray and Papa Westray; it takes only 47 seconds.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('be853c49-786e-46c1-bf4e-9b630be6c227','In Ancient Greece, throwing an apple to a woman was considered a marriage proposal.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('c2478f5f-73db-48b8-8cdd-bf41f6444235','The average lifespan of a single taste bud is about ten days.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('c26f8107-cea0-4fad-9c42-8b2d1320e255','The tallest recorded person in history measured 8ft 11in (2.7m).\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('c850e8a6-b1df-4cae-96ec-182ed832dd39','The male ostrich can roar like a lion.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('c9f698bf-31a5-4466-9415-b9aeddd78fb7','Sloths only poop once a week.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('cbb8f6da-baf3-4e39-b6d6-708bff794b65','A snail can sleep for three years.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('cd97267f-adf9-4462-ab58-637cb8c8190d','The biggest snowflake ever recorded was 15 inches wide and 8 inches thick.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('d2206647-eef0-4a5e-9a1a-a7623235522e','Ducks can walk on the surface of the water.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('d3292ceb-2036-418f-bf21-37c0510a9c89','A newborn kangaroo is no bigger than a jellybean.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('d32ff6bb-bfe5-4b8d-ae92-12968067f00b','Elephants can communicate with each other using sounds below the frequency of human hearing.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('d49e0da1-fbe9-40e0-920b-e18d3faf92d9','Electric eels can generate a shock of up to 600 volts.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('d71098f6-7a90-4c28-a841-93a89134356f','Moose are excellent swimmers and can swim up to 6 miles per hour.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('e4fad36e-bf80-4953-8e8f-7f8047d60efb','There are more possible iterations of a game of chess than there are atoms in the known universe.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('e807d47a-fc82-4ac6-a873-f483b1f8e25e','During your lifetime, you will produce enough saliva to fill two Olympic-sized swimming pools.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('ee326c2b-7ef8-4e23-a3d7-24c46411ce64','A group of bears is called a sloth.','','2023-05-27 22:22:17.000000',NULL,NULL),
('ee78919b-84e9-41f1-aec6-907c93c9ec4b','An average person spends six months of their lifetime waiting for red lights to turn green.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('f3762bd0-bbfb-4b5d-9cc8-7387d5695546','Adult cats only meow to communicate with humans.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('f7f8570c-11a0-4bb1-b45a-1927cddcbf5b','All of the ants on earth weigh about as much as all the human beings on earth.\n','','2023-05-27 22:22:17.000000',NULL,NULL),
('fd4cc225-a6b1-4a8f-8249-52f23e03deb0','Octopuses have three hearts.\n','','2023-05-27 22:22:17.000000',NULL,NULL);
/*!40000 ALTER TABLE `facts_facts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facts_facts_users`
--

DROP TABLE IF EXISTS `facts_facts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facts_facts_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `facts_id` char(32) NOT NULL,
  `users_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facts_facts_users_facts_id_users_id_9cade52d_uniq` (`facts_id`,`users_id`),
  CONSTRAINT `facts_facts_users_facts_id_c491b66f_fk_facts_facts_id` FOREIGN KEY (`facts_id`) REFERENCES `facts_facts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_facts_users`
--

LOCK TABLES `facts_facts_users` WRITE;
/*!40000 ALTER TABLE `facts_facts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `facts_facts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facts_images`
--

DROP TABLE IF EXISTS `facts_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facts_images` (
  `id` bigint(20) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `fact_id_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facts_images_fact_id_id_09e6d684_fk` (`fact_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_images`
--

LOCK TABLES `facts_images` WRITE;
/*!40000 ALTER TABLE `facts_images` DISABLE KEYS */;
INSERT INTO `facts_images` VALUES
(0,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/07ed30d7-b49f-413f-9480-10027ed69bda.png','07ed30d7-b49f-413f-9480-10027ed69bda'),
(1,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/0c52c016-70ff-45a1-8797-e4cb3c195122.png','0c52c016-70ff-45a1-8797-e4cb3c195122'),
(2,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/1.png','1'),
(3,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/10e5969b-fe81-452b-83f5-20b903941569.png','10e5969b-fe81-452b-83f5-20b903941569'),
(4,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/111880fa-02e2-4112-94f5-ff32ed87e992.png','111880fa-02e2-4112-94f5-ff32ed87e992'),
(5,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/1534de2b-a134-429a-b0d9-186091c8d89d.png','1534de2b-a134-429a-b0d9-186091c8d89d'),
(6,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/15483e67-9ee7-44c0-9a04-0f84da4c51f8.png','15483e67-9ee7-44c0-9a04-0f84da4c51f8'),
(7,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/16c32d12-b498-4c29-b6fd-5607a025ce9f.png','16c32d12-b498-4c29-b6fd-5607a025ce9f'),
(8,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/178247c5-10f7-46f7-9b37-3216895aac6b.png','178247c5-10f7-46f7-9b37-3216895aac6b'),
(9,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/18f6ce84-1cb1-4b96-b8de-400d8cee2048.png','18f6ce84-1cb1-4b96-b8de-400d8cee2048'),
(10,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/196a227a-e89a-4da1-b04b-390ce50d4cfe.png','196a227a-e89a-4da1-b04b-390ce50d4cfe'),
(11,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/1d253137-20a8-4066-8e79-3122ad8e4ff7.png','1d253137-20a8-4066-8e79-3122ad8e4ff7'),
(12,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/1da9bc98-f68f-4316-b08f-fcf8c38ed843.png','1da9bc98-f68f-4316-b08f-fcf8c38ed843'),
(13,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/2.png','2'),
(14,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/206b6250-313a-401f-8029-41c5cb5794ba.png','206b6250-313a-401f-8029-41c5cb5794ba'),
(15,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/224695f4-adae-4aaa-a9f5-d9c38ef6cb7d.png','224695f4-adae-4aaa-a9f5-d9c38ef6cb7d'),
(16,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/28aaaf39-af1b-4a56-ab39-cbcb1f5d18fe.png','28aaaf39-af1b-4a56-ab39-cbcb1f5d18fe'),
(17,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/29233b8f-3b9d-472f-97b5-3944b7761edd.png','29233b8f-3b9d-472f-97b5-3944b7761edd'),
(18,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/2c240a8b-a5d6-4e3e-8301-68c9f361a120.png','2c240a8b-a5d6-4e3e-8301-68c9f361a120'),
(19,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/2cb2565f-19c2-4298-a634-fbe07356ab69.png','2cb2565f-19c2-4298-a634-fbe07356ab69'),
(20,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/3.png','3'),
(21,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/338b2a9f-fcc1-4deb-ac04-ca504d05dfd3.png','338b2a9f-fcc1-4deb-ac04-ca504d05dfd3'),
(22,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/39545b5a-b329-40b0-a4d1-783565b9f8a5.png','39545b5a-b329-40b0-a4d1-783565b9f8a5'),
(23,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/39790d30-2c92-48e7-929a-5756ea8aad20.png','39790d30-2c92-48e7-929a-5756ea8aad20'),
(24,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/39a2cd5e-c4f9-4a2b-928c-575416649206.png','39a2cd5e-c4f9-4a2b-928c-575416649206'),
(25,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/3aa19fea-8ecc-4d9d-9a83-80e937dcd8be.png','3aa19fea-8ecc-4d9d-9a83-80e937dcd8be'),
(26,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/4.png','4'),
(27,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/43affa71-63ea-4800-8111-8827b6c652b3.png','43affa71-63ea-4800-8111-8827b6c652b3'),
(28,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/4417abb8-da5a-477d-b98c-125df5e9f9a0.png','4417abb8-da5a-477d-b98c-125df5e9f9a0'),
(29,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/45b013eb-857b-459f-a04c-b89b20167a77.png','45b013eb-857b-459f-a04c-b89b20167a77'),
(30,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/47906293-3436-4246-9f5e-13ec9dae372f.png','47906293-3436-4246-9f5e-13ec9dae372f'),
(31,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/4c19516a-687e-40e8-8bd1-c865e61c0123.png','4c19516a-687e-40e8-8bd1-c865e61c0123'),
(32,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/4c6233de-f39a-4a7d-b701-39b0534bcf38.png','4c6233de-f39a-4a7d-b701-39b0534bcf38'),
(33,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/4d7dcfa4-49c8-4390-9f27-97d10a48b272.png','4d7dcfa4-49c8-4390-9f27-97d10a48b272'),
(34,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/4e75573b-e8bb-4a86-b2f2-5c9583f0e02c.png','4e75573b-e8bb-4a86-b2f2-5c9583f0e02c'),
(35,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/5.png','5'),
(36,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/518f8950-0362-4647-89d0-d627f5137316.png','518f8950-0362-4647-89d0-d627f5137316'),
(37,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/52c134ad-26e6-4c75-8f04-a98bfef8e9da.png','52c134ad-26e6-4c75-8f04-a98bfef8e9da'),
(38,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/5e0e33fd-e458-4104-839f-d23cde1c47fd.png','5e0e33fd-e458-4104-839f-d23cde1c47fd'),
(39,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/5f98c464-f0e6-4dd1-bb25-09aa705ea692.png','5f98c464-f0e6-4dd1-bb25-09aa705ea692'),
(40,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/60b1c7b7-8d74-44cb-bae3-2231df600fa8.png','60b1c7b7-8d74-44cb-bae3-2231df600fa8'),
(41,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/65a02b2d-2677-4749-b1b8-192f8bf3e1b5.png','65a02b2d-2677-4749-b1b8-192f8bf3e1b5'),
(42,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/66dc843d-95ce-4a6d-9301-3ffd674be8c7.png','66dc843d-95ce-4a6d-9301-3ffd674be8c7'),
(43,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/67681af6-b8df-4c0f-8766-f38e74a4784f.png','67681af6-b8df-4c0f-8766-f38e74a4784f'),
(44,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/6b1bb66b-74cb-406c-80e1-9d57bb8a1fa5.png','6b1bb66b-74cb-406c-80e1-9d57bb8a1fa5'),
(45,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/6bd594dc-0daa-4c18-9327-d22d3d025b89.png','6bd594dc-0daa-4c18-9327-d22d3d025b89'),
(46,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/70cd9c24-366c-4450-8c73-69facffa7e1b.png','70cd9c24-366c-4450-8c73-69facffa7e1b'),
(47,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/74f4466a-b9d5-408c-b5e2-300fc1c4912d.png','74f4466a-b9d5-408c-b5e2-300fc1c4912d'),
(48,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/769a935e-2859-481d-88b0-8dcd24686d7d.png','769a935e-2859-481d-88b0-8dcd24686d7d'),
(49,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/7ca948c1-0e27-4d0b-a0d3-78df572a5caa.png','7ca948c1-0e27-4d0b-a0d3-78df572a5caa'),
(50,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/7df6ed23-5603-4ee4-a69c-0785fe434243.png','7df6ed23-5603-4ee4-a69c-0785fe434243'),
(51,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/828c4d9d-efb9-4b0f-b1f8-d5d6d7e26416.png','828c4d9d-efb9-4b0f-b1f8-d5d6d7e26416'),
(52,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/8375b505-cc08-4b12-8d23-7bd3d1bcd9d4.png','8375b505-cc08-4b12-8d23-7bd3d1bcd9d4'),
(53,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/852a1a59-8f29-4c7e-89f6-df58d7c83cea.png','852a1a59-8f29-4c7e-89f6-df58d7c83cea'),
(54,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/85777c1d-9d4a-443d-9105-9666f436dee6.png','85777c1d-9d4a-443d-9105-9666f436dee6'),
(55,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/8871f3d5-8531-4585-a9ef-2a5eaab5bde2.png','8871f3d5-8531-4585-a9ef-2a5eaab5bde2'),
(56,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/88d84ec8-68f6-47ef-947e-3fcfe3b61dc6.png','88d84ec8-68f6-47ef-947e-3fcfe3b61dc6'),
(57,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/91b5b12e-0a21-40ce-bde5-353143d0cfcf.png','91b5b12e-0a21-40ce-bde5-353143d0cfcf'),
(58,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/935e403c-3dec-440c-af8f-08f50feaae6a.png','935e403c-3dec-440c-af8f-08f50feaae6a'),
(59,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/93cb8a3a-7984-4390-a49f-61c1c174650a.png','93cb8a3a-7984-4390-a49f-61c1c174650a'),
(60,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/97fcbd74-0990-4607-afbb-5358324e4bbc.png','97fcbd74-0990-4607-afbb-5358324e4bbc'),
(61,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/9c399c08-2975-47cd-a537-19d374977de8.png','9c399c08-2975-47cd-a537-19d374977de8'),
(62,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/9ef18dce-2999-4a91-959a-bfb6db26fa98.png','9ef18dce-2999-4a91-959a-bfb6db26fa98'),
(63,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/a01357fc-808b-4892-a0ec-5c1cdd788da5.png','a01357fc-808b-4892-a0ec-5c1cdd788da5'),
(64,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/a1fcf97e-d432-4a59-ac74-5f4bbc4835d6.png','a1fcf97e-d432-4a59-ac74-5f4bbc4835d6'),
(65,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/a6e0aff9-ef24-4786-ba30-13c1d3403161.png','a6e0aff9-ef24-4786-ba30-13c1d3403161'),
(66,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/ace12cc7-12d2-4909-8e40-8bdea3ad3b6b.png','ace12cc7-12d2-4909-8e40-8bdea3ad3b6b'),
(67,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/b153588b-44b7-47b1-b988-dc2def73135f.png','b153588b-44b7-47b1-b988-dc2def73135f'),
(68,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/b1589911-ef1c-4e48-99bc-708b1c933914.png','b1589911-ef1c-4e48-99bc-708b1c933914'),
(69,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/b4329d1d-6cd3-46e6-a5fc-ae3fa0f5e6fb.png','b4329d1d-6cd3-46e6-a5fc-ae3fa0f5e6fb'),
(70,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/b5f9f627-6a5f-4b76-aa8c-541b6ddfec84.png','b5f9f627-6a5f-4b76-aa8c-541b6ddfec84'),
(71,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/b672eb9c-4376-4204-b011-53beeaf62925.png','b672eb9c-4376-4204-b011-53beeaf62925'),
(72,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/b8ae9a99-8fc3-4b58-ab7e-f934d38de763.png','b8ae9a99-8fc3-4b58-ab7e-f934d38de763'),
(73,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/ba4114f8-621d-4c1e-b434-89a9e18f0b56.png','ba4114f8-621d-4c1e-b434-89a9e18f0b56'),
(74,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/ba68d4d5-19d9-458e-85ed-ef086e70bdf3.png','ba68d4d5-19d9-458e-85ed-ef086e70bdf3'),
(75,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/bd745881-e1ce-4c75-8d5e-e8bcb46716b5.png','bd745881-e1ce-4c75-8d5e-e8bcb46716b5'),
(76,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/be853c49-786e-46c1-bf4e-9b630be6c227.png','be853c49-786e-46c1-bf4e-9b630be6c227'),
(77,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/c2478f5f-73db-48b8-8cdd-bf41f6444235.png','c2478f5f-73db-48b8-8cdd-bf41f6444235'),
(78,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/c26f8107-cea0-4fad-9c42-8b2d1320e255.png','c26f8107-cea0-4fad-9c42-8b2d1320e255'),
(79,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/c850e8a6-b1df-4cae-96ec-182ed832dd39.png','c850e8a6-b1df-4cae-96ec-182ed832dd39'),
(80,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/c9f698bf-31a5-4466-9415-b9aeddd78fb7.png','c9f698bf-31a5-4466-9415-b9aeddd78fb7'),
(81,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/cbb8f6da-baf3-4e39-b6d6-708bff794b65.png','cbb8f6da-baf3-4e39-b6d6-708bff794b65'),
(82,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/cd97267f-adf9-4462-ab58-637cb8c8190d.png','cd97267f-adf9-4462-ab58-637cb8c8190d'),
(83,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/d2206647-eef0-4a5e-9a1a-a7623235522e.png','d2206647-eef0-4a5e-9a1a-a7623235522e'),
(84,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/d3292ceb-2036-418f-bf21-37c0510a9c89.png','d3292ceb-2036-418f-bf21-37c0510a9c89'),
(85,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/d32ff6bb-bfe5-4b8d-ae92-12968067f00b.png','d32ff6bb-bfe5-4b8d-ae92-12968067f00b'),
(86,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/d49e0da1-fbe9-40e0-920b-e18d3faf92d9.png','d49e0da1-fbe9-40e0-920b-e18d3faf92d9'),
(87,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/d71098f6-7a90-4c28-a841-93a89134356f.png','d71098f6-7a90-4c28-a841-93a89134356f'),
(88,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/e4fad36e-bf80-4953-8e8f-7f8047d60efb.png','e4fad36e-bf80-4953-8e8f-7f8047d60efb'),
(89,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/e807d47a-fc82-4ac6-a873-f483b1f8e25e.png','e807d47a-fc82-4ac6-a873-f483b1f8e25e'),
(90,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/ee326c2b-7ef8-4e23-a3d7-24c46411ce64.png','ee326c2b-7ef8-4e23-a3d7-24c46411ce64'),
(91,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/ee78919b-84e9-41f1-aec6-907c93c9ec4b.png','ee78919b-84e9-41f1-aec6-907c93c9ec4b'),
(92,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/f3762bd0-bbfb-4b5d-9cc8-7387d5695546.png','f3762bd0-bbfb-4b5d-9cc8-7387d5695546'),
(93,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/f7f8570c-11a0-4bb1-b45a-1927cddcbf5b.png','f7f8570c-11a0-4bb1-b45a-1927cddcbf5b'),
(94,'https://storage.googleapis.com/factmania.appspot.com//kaggle/working/facts/fd4cc225-a6b1-4a8f-8249-52f23e03deb0.png','fd4cc225-a6b1-4a8f-8249-52f23e03deb0');
/*!40000 ALTER TABLE `facts_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facts_ratings`
--

DROP TABLE IF EXISTS `facts_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facts_ratings` (
  `id` bigint(20) NOT NULL,
  `rating` int(10) unsigned NOT NULL CHECK (`rating` >= 0),
  `date_rated` datetime(6) NOT NULL,
  `fact_id_id` varchar(36) NOT NULL,
  `user_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facts_ratings_user_id_id_e503070c_fk_facts_users_id` (`user_id_id`),
  KEY `facts_ratings_fact_id_id_b6ab23e1_fk` (`fact_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_ratings`
--

LOCK TABLES `facts_ratings` WRITE;
/*!40000 ALTER TABLE `facts_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `facts_ratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  8:51:18
