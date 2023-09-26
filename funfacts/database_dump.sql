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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
(25,'Can add categories',7,'add_categories'),
(26,'Can change categories',7,'change_categories'),
(27,'Can delete categories',7,'delete_categories'),
(28,'Can view categories',7,'view_categories'),
(29,'Can add facts',8,'add_facts'),
(30,'Can change facts',8,'change_facts'),
(31,'Can delete facts',8,'delete_facts'),
(32,'Can view facts',8,'view_facts'),
(33,'Can add user',9,'add_user'),
(34,'Can change user',9,'change_user'),
(35,'Can delete user',9,'delete_user'),
(36,'Can view user',9,'view_user'),
(37,'Can add user profile',10,'add_userprofile'),
(38,'Can change user profile',10,'change_userprofile'),
(39,'Can delete user profile',10,'delete_userprofile'),
(40,'Can view user profile',10,'view_userprofile'),
(41,'Can add user preferences',11,'add_userpreferences'),
(42,'Can change user preferences',11,'change_userpreferences'),
(43,'Can delete user preferences',11,'delete_userpreferences'),
(44,'Can view user preferences',11,'view_userpreferences'),
(45,'Can add user activity',12,'add_useractivity'),
(46,'Can change user activity',12,'change_useractivity'),
(47,'Can delete user activity',12,'delete_useractivity'),
(48,'Can view user activity',12,'view_useractivity'),
(49,'Can add ratings',13,'add_ratings'),
(50,'Can change ratings',13,'change_ratings'),
(51,'Can delete ratings',13,'delete_ratings'),
(52,'Can view ratings',13,'view_ratings'),
(53,'Can add images',14,'add_images'),
(54,'Can change images',14,'change_images'),
(55,'Can delete images',14,'delete_images'),
(56,'Can view images',14,'view_images'),
(57,'Can add fact categories',15,'add_factcategories'),
(58,'Can change fact categories',15,'change_factcategories'),
(59,'Can delete fact categories',15,'delete_factcategories'),
(60,'Can view fact categories',15,'view_factcategories'),
(61,'Can add comments',16,'add_comments'),
(62,'Can change comments',16,'change_comments'),
(63,'Can delete comments',16,'delete_comments'),
(64,'Can view comments',16,'view_comments');
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
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
(7,'facts','categories'),
(16,'facts','comments'),
(15,'facts','factcategories'),
(8,'facts','facts'),
(14,'facts','images'),
(13,'facts','ratings'),
(9,'facts','user'),
(12,'facts','useractivity'),
(11,'facts','userpreferences'),
(10,'facts','userprofile'),
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2023-06-07 12:24:40.202337'),
(2,'auth','0001_initial','2023-06-07 12:24:45.680673'),
(3,'admin','0001_initial','2023-06-07 12:24:46.969311'),
(4,'admin','0002_logentry_remove_auto_add','2023-06-07 12:24:47.008215'),
(5,'admin','0003_logentry_add_action_flag_choices','2023-06-07 12:24:47.074337'),
(6,'admin','0004_alter_logentry_user','2023-06-07 12:24:47.145958'),
(7,'contenttypes','0002_remove_content_type_name','2023-06-07 12:24:47.780440'),
(8,'auth','0002_alter_permission_name_max_length','2023-06-07 12:24:48.302513'),
(9,'auth','0003_alter_user_email_max_length','2023-06-07 12:24:48.502627'),
(10,'auth','0004_alter_user_username_opts','2023-06-07 12:24:48.539378'),
(11,'auth','0005_alter_user_last_login_null','2023-06-07 12:24:48.913685'),
(12,'auth','0006_require_contenttypes_0002','2023-06-07 12:24:48.926376'),
(13,'auth','0007_alter_validators_add_error_messages','2023-06-07 12:24:48.962180'),
(14,'auth','0008_alter_user_username_max_length','2023-06-07 12:24:49.147137'),
(15,'auth','0009_alter_user_last_name_max_length','2023-06-07 12:24:49.369081'),
(16,'auth','0010_alter_group_name_max_length','2023-06-07 12:24:49.569234'),
(17,'auth','0011_update_proxy_permissions','2023-06-07 12:24:49.607529'),
(18,'auth','0012_alter_user_first_name_max_length','2023-06-07 12:24:49.802296'),
(19,'facts','0001_initial','2023-06-07 12:24:59.989418'),
(20,'sessions','0001_initial','2023-06-07 12:25:00.499031'),
(21,'facts','0002_alter_facts_id','2023-06-07 12:54:27.325447'),
(22,'facts','0003_alter_categories_options_alter_categories_id','2023-06-11 00:35:39.593996'),
(23,'facts','0004_alter_categories_category_name','2023-06-11 00:39:56.621048');
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
INSERT INTO `django_session` VALUES
('0byxezx0k969q1ejkd1l9m7wq8i3uqxb','.eJxVjEEOwiAQRe_C2pDptB3ApXvP0AwDlaqBpLQr492VpAvdvvf-f6mJ9y1Ne43rtAR1VqhOv8yzPGJuItw534qWkrd18bol-rBVX0uIz8vR_h0krqmtAV3sPDgfSQyIJbKD9F8SwJH0AzASoJXO4DzS4EfAzokbDc3co6j3B8Z4NtM:1q6wNd:KorIdM-2fWNtIfqZNH7kVyeo3hiTDIQ5E-6PTCUyIRs','2023-06-21 16:51:29.976251'),
('4n17usd86h2j0h0lfawy0iek4l37rgzw','.eJxVjEEOgjAQRe8ya9MMBQbK0r1naNrpIFXTGgqJxnh3JWHD9r33_wdskVJiTlZezzi_YcATWLcuk12LzDYGGEDDgXnHd0mbCDeXrllxTsscvdoStduiLjnI47y3h4PJlWlbozZSeTReiDvknqhvuP6TgIa4btBpQt1z1emxpca3qCvDpu1odLVm-P4A71Q-EA:1q7DPX:38cbsbRRX-8OygI1RZPh2zWuDkIsECN-1g43XLnGOH0','2023-06-22 11:02:35.437314');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facts_categories`
--

DROP TABLE IF EXISTS `facts_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facts_categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facts_categories_category_name_b62c0ec0_uniq` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_categories`
--

LOCK TABLES `facts_categories` WRITE;
/*!40000 ALTER TABLE `facts_categories` DISABLE KEYS */;
INSERT INTO `facts_categories` VALUES
(1,'Animal Facts'),
(11,'Animals'),
(9,'Art and Literature Facts'),
(6,'Food and Drink Facts'),
(14,'Geography'),
(4,'Geography Facts'),
(12,'Historical'),
(2,'Historical Facts'),
(8,'Nature Facts'),
(7,'Pop Culture Facts'),
(13,'Science'),
(3,'Science Facts'),
(5,'Sports Facts'),
(10,'Technology Facts');
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
  `facts_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facts_categories_facts_categories_id_facts_id_33c35531_uniq` (`categories_id`,`facts_id`),
  KEY `facts_categories_facts_facts_id_1d1387f6_fk` (`facts_id`),
  CONSTRAINT `facts_categories_facts_categories_id_708aca6e_fk` FOREIGN KEY (`categories_id`) REFERENCES `facts_categories` (`id`),
  CONSTRAINT `facts_categories_facts_facts_id_1d1387f6_fk` FOREIGN KEY (`facts_id`) REFERENCES `facts_facts` (`id`)
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
  `fact_id_id` char(36) NOT NULL,
  `users_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facts_comments_users_id_id_602672e5_fk_facts_user_id` (`users_id_id`),
  KEY `facts_comments_fact_id_id_81a0e2c6_fk` (`fact_id_id`),
  CONSTRAINT `facts_comments_fact_id_id_81a0e2c6_fk` FOREIGN KEY (`fact_id_id`) REFERENCES `facts_facts` (`id`),
  CONSTRAINT `facts_comments_users_id_id_602672e5_fk_facts_user_id` FOREIGN KEY (`users_id_id`) REFERENCES `facts_user` (`id`)
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
  `fact_id_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facts_factcategories_fact_id_id_77cd9325_fk` (`fact_id_id`),
  KEY `facts_factcategories_category_id_id_f69c4b08_fk` (`category_id_id`),
  CONSTRAINT `facts_factcategories_category_id_id_f69c4b08_fk` FOREIGN KEY (`category_id_id`) REFERENCES `facts_categories` (`id`),
  CONSTRAINT `facts_factcategories_fact_id_id_77cd9325_fk` FOREIGN KEY (`fact_id_id`) REFERENCES `facts_facts` (`id`)
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
  `id` char(36) NOT NULL,
  `fact_title` varchar(128) DEFAULT NULL,
  `fact_text` varchar(500) NOT NULL,
  `fact_discription` longtext DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_facts`
--

LOCK TABLES `facts_facts` WRITE;
/*!40000 ALTER TABLE `facts_facts` DISABLE KEYS */;
INSERT INTO `facts_facts` VALUES
('034e8005-939f-4aa8-a637-e9b0de2fe507','Cricket Origins','Cricket, which is popular in many Commonwealth countries, can be traced back to 16th century England.','The game evolved from other bat and ball games, and has since spread to other parts of the world, including India, Australia, and South Africa.','BBC','2023-06-11 00:50:59.557256'),
('0b36285f-d4e3-412a-ae41-96d46a2a7268','Seagrass Longevity','The longest living organism on Earth is a type of seagrass called \"Posidonia oceanica\", which can live for up to 100,000 years.','The seagrass reproduces asexually, and can form large meadows that cover thousands of hectares of the ocean floor.','BBC','2023-06-11 00:50:59.464935'),
('0e04288b-0530-11ee-83ae-3cf86293e12b','I am a genius','one might even use me to describe what a genius means','but i will tell u who is not genius in any context of the word','and that is the guy reading this right now, YES YOU!!','2023-06-07 16:04:20.000000'),
('123bb82f-ac13-411a-85fa-e5401177f99a','Shortest War','The shortest war in history was between Britain and Zanzibar in 1896, and lasted just 38 minutes.','The war started when the Sultan of Zanzibar died and his successor refused to acknowledge the British consul. The British responded by bombing the palace and declaring war.','Guinness World Records','2023-06-11 00:50:59.387431'),
('1c11cd48-4807-48f2-bbd3-bb325c13ee06','Great Wall of China','The Great Wall of China is not actually visible from space, despite popular belief.','The wall is only a few meters wide, making it difficult to see from space without magnification.','NASA','2023-06-11 00:50:59.374674'),
('2c774f27-9c33-454f-918b-7042121d951b','Mars Volcano','The largest volcano in our solar system is on Mars, and it\'s three times the height of Mount Everest.','The volcano, called Olympus Mons, is over 13 miles high, making it one of the tallest mountains in the solar system.','NASA','2023-06-11 00:50:59.454666'),
('30581b93-6674-4aa5-aa39-2da76f4368bd','Norwegian Town','There is a town in Norway called \"Hell\", and it freezes over in winter.','The town has a population of around 1,500, and is located near the Trondheim airport.','CNN','2023-06-11 00:50:59.476356'),
('45735a79-c22d-470f-b9cb-6fb1c74bb6b2','Basketball Invention','Basketball was invented by a Canadian physical education teacher named James Naismith in 1891.','Naismith wanted to create a new game that could be played indoors during the winter, and came up with basketball as a solution.','NBA','2023-06-11 00:50:59.508982'),
('4eb8e96a-3615-4dbb-9f6a-3cc9804391b3','Antarctic Desert','The largest desert in the world is not the Sahara, but actually Antarctica, which is considered a polar desert.','Antarctica is the driest continent on Earth, with an annual precipitation of less than 10 centimeters.','National Geographic','2023-06-11 00:50:59.497527'),
('5089f755-c5ca-4e50-9cd6-3727ae8b292e','Blue Whale Heart','The heart of a blue whale is so big that a human could swim through its arteries.','The blue whale is the largest animal on Earth, and its heart can weigh up to 1,000 pounds.','National Geographic','2023-06-11 00:50:59.317586'),
('73f5f22f-0fb0-470c-906a-f5bed801c069','Pig Intelligence','Pigs are actually very intelligent animals, and can be trained to play video games with a joystick.','Pigs have been shown to be as intelligent as dogs, and can even learn to use mirrors to find hidden food.','BBC','2023-06-11 00:50:59.342016'),
('9add7cbc-0fbe-4f5a-adf9-3a777fb09dea','Blue Whale Heart','The heart of a blue whale is so big that a human could swim through its arteries.','The blue whale is the largest animal on Earth, and its heart can weigh up to 1,000 pounds.','National Geographic','2023-06-11 00:57:17.463892'),
('b2b5e4d1-791e-4be7-80fe-b0674f70609b','Sloth Defecation','Sloths only defecate once a week, and will often climb down from trees to do so.','Sloths have a very slow metabolism, which means they don\'t need to eat very often, and can conserve energy by only defecating once a week.','Smithsonian Magazine','2023-06-11 00:50:59.364486'),
('c1d886d0-052e-11ee-83ae-3cf86293e12b','the first fact','No text for this fact','Duh, No Description too.','I\'m the source!','2023-06-07 15:55:03.000000'),
('d21b9eeb-e4a9-440b-8966-b754a28058bd','Soccer Popularity','Soccer (or football) is the most popular sport in the world, with an estimated 4 billion fans.','The sport is played in almost every country, and has a long history dating back to ancient civilizations.','FIFA','2023-06-11 00:50:59.520408'),
('e0ed6d8e-4630-4329-ad43-eda531476273','Greek Exercise','The ancient Greeks used to exercise in the nude, and the word \"gymnasium\" actually comes from the Greek word \"gymnos\" meaning \"naked\".','The Greeks believed that exercise was essential for both physical and mental health, and often did so in public without clothing.','Smithsonian Magazine','2023-06-11 00:50:59.424426'),
('ee91b26c-2d5e-4a0f-9ff8-12c228c256f5','Venice Islands','The city of Venice in Italy is built on over 100 small islands, and has over 400 bridges connecting them.','The islands are connected by a network of canals, and the city is known for its beautiful architecture and artwork.','Lonely Planet','2023-06-11 00:50:59.486924'),
('f3ee1090-b85e-43d3-870b-d5aa314d84aa','Brain Connections','The human brain contains more connections than there are stars in the Milky Way galaxy.','The human brain has over 100 billion neurons, each of which can form thousands of connections with other neurons, resulting in trillions of connections in total.','Scientific American','2023-06-11 00:50:59.442910');
/*!40000 ALTER TABLE `facts_facts` ENABLE KEYS */;
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
  `fact_id_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facts_images_fact_id_id_09e6d684_fk` (`fact_id_id`),
  CONSTRAINT `facts_images_fact_id_id_09e6d684_fk` FOREIGN KEY (`fact_id_id`) REFERENCES `facts_facts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_images`
--

LOCK TABLES `facts_images` WRITE;
/*!40000 ALTER TABLE `facts_images` DISABLE KEYS */;
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
  `fact_id_id` char(36) NOT NULL,
  `user_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facts_ratings_user_id_id_e503070c_fk_facts_user_id` (`user_id_id`),
  KEY `facts_ratings_fact_id_id_b6ab23e1_fk` (`fact_id_id`),
  CONSTRAINT `facts_ratings_fact_id_id_b6ab23e1_fk` FOREIGN KEY (`fact_id_id`) REFERENCES `facts_facts` (`id`),
  CONSTRAINT `facts_ratings_user_id_id_e503070c_fk_facts_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `facts_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_ratings`
--

LOCK TABLES `facts_ratings` WRITE;
/*!40000 ALTER TABLE `facts_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `facts_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facts_user`
--

DROP TABLE IF EXISTS `facts_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facts_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `username` varchar(30) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_user`
--

LOCK TABLES `facts_user` WRITE;
/*!40000 ALTER TABLE `facts_user` DISABLE KEYS */;
INSERT INTO `facts_user` VALUES
(1,'pbkdf2_sha256$600000$dmoO1lypbmDfIDb8SH2tmH$OzXxWlHXFaVuI5RZyXD1qHvvKpRjs3h5nMOvPCIqo24=','john',1,0,0,'2023-06-07 16:46:46.355270'),
(2,'pbkdf2_sha256$600000$OY9UmWth7jm537fDSQA29O$7C4BrJUZVmd9RF2fxKTwneinnhxLJuxLyte51DcACgM=','jj',1,0,0,'2023-06-08 11:02:35.390572');
/*!40000 ALTER TABLE `facts_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facts_useractivity`
--

DROP TABLE IF EXISTS `facts_useractivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facts_useractivity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_date` datetime(6) NOT NULL,
  `activity_type` varchar(20) NOT NULL,
  `activity_details` longtext NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facts_useractivity_user_id_981ce2d8_fk_facts_user_id` (`user_id`),
  CONSTRAINT `facts_useractivity_user_id_981ce2d8_fk_facts_user_id` FOREIGN KEY (`user_id`) REFERENCES `facts_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_useractivity`
--

LOCK TABLES `facts_useractivity` WRITE;
/*!40000 ALTER TABLE `facts_useractivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `facts_useractivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facts_userpreferences`
--

DROP TABLE IF EXISTS `facts_userpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facts_userpreferences` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `preferences` longtext NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `facts_userpreferences_user_id_3499caa3_fk_facts_user_id` FOREIGN KEY (`user_id`) REFERENCES `facts_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_userpreferences`
--

LOCK TABLES `facts_userpreferences` WRITE;
/*!40000 ALTER TABLE `facts_userpreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `facts_userpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facts_userprofile`
--

DROP TABLE IF EXISTS `facts_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facts_userprofile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `bio` longtext NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `facts_userprofile_user_id_4747b6ed_fk_facts_user_id` FOREIGN KEY (`user_id`) REFERENCES `facts_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_userprofile`
--

LOCK TABLES `facts_userprofile` WRITE;
/*!40000 ALTER TABLE `facts_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `facts_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-07 16:20:56
