/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.10-MariaDB, for Linux (aarch64)
--
-- Host: localhost    Database: bookstack
-- ------------------------------------------------------
-- Server version	11.4.10-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) NOT NULL,
  `detail` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `loggable_id` bigint(20) unsigned DEFAULT NULL,
  `loggable_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_user_id_index` (`user_id`),
  KEY `activities_entity_id_index` (`loggable_id`),
  KEY `activities_key_index` (`type`),
  KEY `activities_created_at_index` (`created_at`),
  KEY `activities_ip_index` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES
(1,'auth_login','standard; (1) Admin',1,'192.168.65.1',NULL,NULL,'2026-05-05 08:33:43','2026-05-05 08:33:43'),
(2,'settings_update','features',1,'192.168.65.1',NULL,NULL,'2026-05-05 08:34:43','2026-05-05 08:34:43'),
(3,'auth_login','standard; (1) Admin',1,'192.168.65.1',NULL,NULL,'2026-05-05 08:35:11','2026-05-05 08:35:11'),
(4,'user_create','(4) Jamie Datson',1,'192.168.65.1',NULL,NULL,'2026-05-05 08:35:51','2026-05-05 08:35:51'),
(5,'user_update','(4) Jamie Datson',1,'192.168.65.1',NULL,NULL,'2026-05-05 08:36:00','2026-05-05 08:36:00'),
(6,'auth_login','standard; (4) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:36:22','2026-05-05 08:36:22'),
(7,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:37:13','2026-05-05 08:37:13'),
(8,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:37:38','2026-05-05 08:37:38'),
(9,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:38:21','2026-05-05 08:38:21'),
(10,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:38:46','2026-05-05 08:38:46'),
(11,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:39:21','2026-05-05 08:39:21'),
(12,'book_create','test',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:39:30','2026-05-05 10:08:37'),
(13,'book_delete','test',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:40:27','2026-05-05 10:08:37'),
(14,'user_update','(4) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:42:23','2026-05-05 08:42:23'),
(15,'maintenance_action_run','send-test-email',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:42:29','2026-05-05 08:42:29'),
(16,'bookshelf_create','ASAS',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:43:05','2026-05-05 10:08:37'),
(17,'bookshelf_delete','ASAS',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:43:15','2026-05-05 10:08:37'),
(18,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:44:20','2026-05-05 08:44:20'),
(19,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:44:22','2026-05-05 08:44:22'),
(20,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:45:48','2026-05-05 08:45:48'),
(21,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:46:13','2026-05-05 08:46:13'),
(22,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:46:35','2026-05-05 08:46:35'),
(23,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:47:14','2026-05-05 08:47:14'),
(24,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:48:04','2026-05-05 08:48:04'),
(25,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:48:28','2026-05-05 08:48:28'),
(26,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:49:56','2026-05-05 08:49:56'),
(27,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:50:29','2026-05-05 08:50:29'),
(28,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:50:53','2026-05-05 08:50:53'),
(29,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:51:06','2026-05-05 08:51:06'),
(30,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:51:16','2026-05-05 08:51:16'),
(31,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:51:22','2026-05-05 08:51:22'),
(32,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:51:27','2026-05-05 08:51:27'),
(33,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:51:31','2026-05-05 08:51:31'),
(34,'settings_update','features',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:53:27','2026-05-05 08:53:27'),
(35,'auth_login','standard; (4) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:53:35','2026-05-05 08:53:35'),
(36,'settings_update','features',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:53:40','2026-05-05 08:53:40'),
(37,'auth_login','standard; (4) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 08:54:06','2026-05-05 08:54:06'),
(38,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 09:56:27','2026-05-05 09:56:27'),
(39,'settings_update','customization',4,'192.168.65.1',NULL,NULL,'2026-05-05 09:57:37','2026-05-05 09:57:37'),
(40,'auth_login','standard; (4) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:02:22','2026-05-05 10:02:22'),
(41,'maintenance_action_run','send-test-email',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:02:31','2026-05-05 10:02:31'),
(42,'user_create','(5) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:04:51','2026-05-05 10:04:51'),
(43,'auth_login','standard; (4) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:05:24','2026-05-05 10:05:24'),
(44,'user_delete','(5) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:05:42','2026-05-05 10:05:42'),
(45,'mfa_setup_method','totp',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:06:33','2026-05-05 10:06:33'),
(46,'auth_login','standard; (4) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:06:53','2026-05-05 10:06:53'),
(47,'mfa_remove_method','totp',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:07:05','2026-05-05 10:07:05'),
(48,'settings_update','registration',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:07:38','2026-05-05 10:07:38'),
(49,'settings_update','registration',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:07:43','2026-05-05 10:07:43'),
(50,'recycle_bin_empty','',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:08:37','2026-05-05 10:08:37'),
(51,'role_update','(1) Admin',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:09:00','2026-05-05 10:09:00'),
(52,'mfa_setup_method','totp',2,'192.168.65.1',NULL,NULL,'2026-05-05 10:09:35','2026-05-05 10:09:35'),
(53,'auth_login','standard; (4) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:09:44','2026-05-05 10:09:44'),
(54,'user_create','(6) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:11:04','2026-05-05 10:11:04'),
(55,'auth_login','standard; (6) Jamie Datson',6,'192.168.65.1',NULL,NULL,'2026-05-05 10:11:16','2026-05-05 10:11:16'),
(56,'auth_login','standard; (4) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:11:36','2026-05-05 10:11:36'),
(57,'user_update','(2) Guest',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:12:06','2026-05-05 10:12:06'),
(58,'auth_login','standard; (4) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:12:28','2026-05-05 10:12:28'),
(59,'user_update','(2) Guest',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:12:40','2026-05-05 10:12:40'),
(60,'role_update','(1) Admin',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:12:57','2026-05-05 10:12:57'),
(61,'role_create','(5) Tech Team',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:14:14','2026-05-05 10:14:14'),
(62,'user_delete','(1) Admin',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:14:35','2026-05-05 10:14:35'),
(63,'user_delete','(6) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:14:40','2026-05-05 10:14:40'),
(64,'user_create','(7) admin',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:15:31','2026-05-05 10:15:31'),
(65,'user_delete','(4) Jamie Datson',4,'192.168.65.1',NULL,NULL,'2026-05-05 10:15:54','2026-05-05 10:15:54'),
(66,'auth_login','standard; (7) admin',7,'192.168.65.1',NULL,NULL,'2026-05-05 10:16:06','2026-05-05 10:16:06'),
(67,'user_create','(8) Jamie Datson',7,'192.168.65.1',NULL,NULL,'2026-05-05 10:16:35','2026-05-05 10:16:35'),
(68,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:16:46','2026-05-05 10:16:46'),
(69,'book_create','(4) test',8,'192.168.65.1',4,'book','2026-05-05 10:17:03','2026-05-05 10:17:03'),
(70,'chapter_create','(5) test',8,'192.168.65.1',5,'chapter','2026-05-05 10:17:08','2026-05-05 10:17:08'),
(71,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:17:38','2026-05-05 10:17:38'),
(72,'bookshelf_create','(6) test',8,'192.168.65.1',6,'bookshelf','2026-05-05 10:17:41','2026-05-05 10:17:41'),
(73,'book_create','(7) test',8,'192.168.65.1',7,'book','2026-05-05 10:17:44','2026-05-05 10:17:44'),
(74,'bookshelf_update','(6) test',8,'192.168.65.1',6,'bookshelf','2026-05-05 10:17:44','2026-05-05 10:17:44'),
(75,'chapter_create','(8) test',8,'192.168.65.1',8,'chapter','2026-05-05 10:17:47','2026-05-05 10:17:47'),
(76,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:19:08','2026-05-05 10:19:08'),
(77,'bookshelf_delete','(6) test',8,'192.168.65.1',6,'bookshelf','2026-05-05 10:19:15','2026-05-05 10:19:15'),
(78,'book_delete','(7) test',8,'192.168.65.1',7,'book','2026-05-05 10:19:22','2026-05-05 10:19:22'),
(79,'book_delete','(4) test',8,'192.168.65.1',4,'book','2026-05-05 10:19:30','2026-05-05 10:19:30'),
(80,'bookshelf_create','(9) ATC Training',8,'192.168.65.1',9,'bookshelf','2026-05-05 10:21:05','2026-05-05 10:21:05'),
(81,'role_update','(4) Public',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:23:17','2026-05-05 10:23:17'),
(82,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:23:24','2026-05-05 10:23:24'),
(83,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:26:35','2026-05-05 10:26:35'),
(84,'role_update','(4) Public',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:26:56','2026-05-05 10:26:56'),
(85,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:27:06','2026-05-05 10:27:06'),
(86,'book_create','(10) test',8,'192.168.65.1',10,'book','2026-05-05 10:27:11','2026-05-05 10:27:11'),
(87,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:27:17','2026-05-05 10:27:17'),
(88,'role_update','(4) Public',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:27:33','2026-05-05 10:27:33'),
(89,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:27:45','2026-05-05 10:27:45'),
(90,'role_update','(4) Public',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:28:12','2026-05-05 10:28:12'),
(91,'user_update','(2) Guest',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:28:21','2026-05-05 10:28:21'),
(92,'role_update','(3) Viewer',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:28:33','2026-05-05 10:28:33'),
(93,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:28:39','2026-05-05 10:28:39'),
(94,'role_update','(3) Viewer',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:29:00','2026-05-05 10:29:00'),
(95,'book_delete','(10) test',8,'192.168.65.1',10,'book','2026-05-05 10:29:13','2026-05-05 10:29:13'),
(96,'role_update','(3) Viewer',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:29:25','2026-05-05 10:29:25'),
(97,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:29:41','2026-05-05 10:29:41'),
(98,'role_update','(3) Viewer',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:29:51','2026-05-05 10:29:51'),
(99,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 10:29:58','2026-05-05 10:29:58'),
(100,'bookshelf_create','(11) SOP\'s',8,'192.168.65.1',11,'bookshelf','2026-05-05 10:31:51','2026-05-05 10:31:51'),
(101,'book_create','(12) DAAA (Algiers)',8,'192.168.65.1',12,'book','2026-05-05 10:32:11','2026-05-05 10:32:11'),
(102,'bookshelf_update','(11) SOP\'s',8,'192.168.65.1',11,'bookshelf','2026-05-05 10:32:11','2026-05-05 10:32:11'),
(103,'bookshelf_update','(11) SOP\'s (ACC)',8,'192.168.65.1',11,'bookshelf','2026-05-05 10:32:20','2026-05-05 10:32:20'),
(104,'bookshelf_create','(13) SOP\'s (APC/ADC)',8,'192.168.65.1',13,'bookshelf','2026-05-05 10:33:10','2026-05-05 10:33:10'),
(105,'book_create','(14) Algeria',8,'192.168.65.1',14,'book','2026-05-05 10:33:22','2026-05-05 10:33:22'),
(106,'bookshelf_update','(13) SOP\'s (APC/ADC)',8,'192.168.65.1',13,'bookshelf','2026-05-05 10:33:22','2026-05-05 10:33:22'),
(107,'page_create','(15) DAAG',8,'192.168.65.1',15,'page','2026-05-05 10:33:31','2026-05-05 10:33:31'),
(108,'page_create','(16) DABC',8,'192.168.65.1',16,'page','2026-05-05 10:33:38','2026-05-05 10:33:38'),
(109,'chapter_create','(18) DAAG',8,'192.168.65.1',18,'chapter','2026-05-05 10:33:48','2026-05-05 10:33:48'),
(110,'page_delete','(16) DABC',8,'192.168.65.1',16,'page','2026-05-05 10:34:08','2026-05-05 10:34:08'),
(111,'page_delete','(15) DAAG',8,'192.168.65.1',15,'page','2026-05-05 10:34:13','2026-05-05 10:34:13'),
(112,'page_create','(17) asas',8,'192.168.65.1',17,'page','2026-05-05 10:34:18','2026-05-05 10:34:18'),
(113,'page_delete','(17) asas',8,'192.168.65.1',17,'page','2026-05-05 10:34:20','2026-05-05 10:34:20'),
(114,'page_create','(19) APC',8,'192.168.65.1',19,'page','2026-05-05 10:34:27','2026-05-05 10:34:27'),
(115,'page_create','(20) AIR/GMC',8,'192.168.65.1',20,'page','2026-05-05 10:34:37','2026-05-05 10:34:37'),
(116,'chapter_create','(21) DAOO',8,'192.168.65.1',21,'chapter','2026-05-05 10:34:48','2026-05-05 10:34:48'),
(117,'page_create','(22) a',8,'192.168.65.1',22,'page','2026-05-05 10:34:54','2026-05-05 10:34:54'),
(118,'page_delete','(22) a',8,'192.168.65.1',22,'page','2026-05-05 10:34:58','2026-05-05 10:34:58'),
(119,'page_create','(23) APC',8,'192.168.65.1',23,'page','2026-05-05 10:35:09','2026-05-05 10:35:09'),
(120,'page_create','(24) APC/ADC',8,'192.168.65.1',24,'page','2026-05-05 10:35:24','2026-05-05 10:35:24'),
(121,'book_create','(25) Morocco',8,'192.168.65.1',25,'book','2026-05-05 10:35:37','2026-05-05 10:35:37'),
(122,'bookshelf_update','(13) SOP\'s (APC/ADC)',8,'192.168.65.1',13,'bookshelf','2026-05-05 10:35:37','2026-05-05 10:35:37'),
(123,'page_create','(26) New Page',8,'192.168.65.1',26,'page','2026-05-05 10:35:42','2026-05-05 10:35:42'),
(124,'page_delete','(26) New Page',8,'192.168.65.1',26,'page','2026-05-05 10:35:47','2026-05-05 10:35:47'),
(125,'chapter_create','(27) GMMN',8,'192.168.65.1',27,'chapter','2026-05-05 10:35:52','2026-05-05 10:35:52'),
(126,'chapter_create','(28) GMMX',8,'192.168.65.1',28,'chapter','2026-05-05 10:36:00','2026-05-05 10:36:00'),
(127,'chapter_delete','(28) GMMX',8,'192.168.65.1',28,'chapter','2026-05-05 10:36:05','2026-05-05 10:36:05'),
(128,'chapter_create','(30) GMMX',8,'192.168.65.1',30,'chapter','2026-05-05 10:36:10','2026-05-05 10:36:10'),
(129,'chapter_create','(31) GMAD',8,'192.168.65.1',31,'chapter','2026-05-05 10:36:15','2026-05-05 10:36:15'),
(130,'book_create','(32) Tunisia',8,'192.168.65.1',32,'book','2026-05-05 10:36:42','2026-05-05 10:36:42'),
(131,'bookshelf_update','(13) SOP\'s (APC/ADC)',8,'192.168.65.1',13,'bookshelf','2026-05-05 10:36:42','2026-05-05 10:36:42'),
(132,'chapter_create','(33) DTTA',8,'192.168.65.1',33,'chapter','2026-05-05 10:36:47','2026-05-05 10:36:47'),
(133,'book_create','(34) DTTC (Tunis)',8,'192.168.65.1',34,'book','2026-05-05 10:37:06','2026-05-05 10:37:06'),
(134,'bookshelf_update','(11) SOP\'s (ACC)',8,'192.168.65.1',11,'bookshelf','2026-05-05 10:37:06','2026-05-05 10:37:06'),
(135,'book_create','(35) GMMM (Casablanca)',8,'192.168.65.1',35,'book','2026-05-05 10:37:17','2026-05-05 10:37:17'),
(136,'bookshelf_update','(11) SOP\'s (ACC)',8,'192.168.65.1',11,'bookshelf','2026-05-05 10:37:17','2026-05-05 10:37:17'),
(137,'book_create','(36) GMAC (Agadir)',8,'192.168.65.1',36,'book','2026-05-05 10:37:26','2026-05-05 10:37:26'),
(138,'bookshelf_update','(11) SOP\'s (ACC)',8,'192.168.65.1',11,'bookshelf','2026-05-05 10:37:26','2026-05-05 10:37:26'),
(139,'bookshelf_create','(37) LoA\'s',8,'192.168.65.1',37,'bookshelf','2026-05-05 10:38:41','2026-05-05 10:38:41'),
(140,'bookshelf_update','(37) LoA\'s',8,'192.168.65.1',37,'bookshelf','2026-05-05 10:38:54','2026-05-05 10:38:54'),
(141,'bookshelf_create','(38) Software',8,'192.168.65.1',38,'bookshelf','2026-05-05 10:40:07','2026-05-05 10:40:07'),
(142,'book_create','(39) Euroscope',8,'192.168.65.1',39,'book','2026-05-05 10:40:15','2026-05-05 10:40:15'),
(143,'bookshelf_update','(38) Software',8,'192.168.65.1',38,'bookshelf','2026-05-05 10:40:15','2026-05-05 10:40:15'),
(144,'book_create','(40) Audio',8,'192.168.65.1',40,'book','2026-05-05 10:40:30','2026-05-05 10:40:30'),
(145,'bookshelf_update','(38) Software',8,'192.168.65.1',38,'bookshelf','2026-05-05 10:40:30','2026-05-05 10:40:30'),
(146,'book_create','(41) Optional',8,'192.168.65.1',41,'book','2026-05-05 10:40:40','2026-05-05 10:40:40'),
(147,'bookshelf_update','(38) Software',8,'192.168.65.1',38,'bookshelf','2026-05-05 10:40:40','2026-05-05 10:40:40'),
(148,'chapter_create','(42) CDM / vIFF',8,'192.168.65.1',42,'chapter','2026-05-05 10:40:51','2026-05-05 10:40:51'),
(149,'chapter_create','(43) vEFPS',8,'192.168.65.1',43,'chapter','2026-05-05 10:41:34','2026-05-05 10:41:34'),
(150,'bookshelf_create','(44) Pilots',8,'192.168.65.1',44,'bookshelf','2026-05-05 10:42:44','2026-05-05 10:42:44'),
(151,'chapter_create','(45) Sector splits',8,'192.168.65.1',45,'chapter','2026-05-05 10:43:10','2026-05-05 10:43:10'),
(152,'chapter_create','(46) Sector splits',8,'192.168.65.1',46,'chapter','2026-05-05 10:44:02','2026-05-05 10:44:02'),
(153,'chapter_create','(47) Sector splits',8,'192.168.65.1',47,'chapter','2026-05-05 10:44:05','2026-05-05 10:44:05'),
(154,'chapter_create','(48) Sector splits',8,'192.168.65.1',48,'chapter','2026-05-05 10:44:09','2026-05-05 10:44:09'),
(155,'book_update','(39) Euroscope',8,'192.168.65.1',39,'book','2026-05-05 10:47:51','2026-05-05 10:47:51'),
(156,'book_update','(40) Audio',8,'192.168.65.1',40,'book','2026-05-05 10:48:51','2026-05-05 10:48:51'),
(157,'chapter_create','(49) VACS',8,'192.168.65.1',49,'chapter','2026-05-05 10:49:59','2026-05-05 10:49:59'),
(158,'page_create','(50) VACS',8,'192.168.65.1',50,'page','2026-05-05 10:54:32','2026-05-05 10:54:32'),
(159,'page_update','(50) VACS',8,'192.168.65.1',50,'page','2026-05-05 10:56:03','2026-05-05 10:56:03'),
(160,'page_create','(51) CDM',8,'192.168.65.1',51,'page','2026-05-05 11:00:31','2026-05-05 11:00:31'),
(161,'page_update','(51) CDM',8,'192.168.65.1',51,'page','2026-05-05 11:00:42','2026-05-05 11:00:42'),
(162,'page_update','(51) CDM',8,'192.168.65.1',51,'page','2026-05-05 11:01:16','2026-05-05 11:01:16'),
(163,'chapter_delete','(49) VACS',8,'192.168.65.1',49,'chapter','2026-05-05 11:02:04','2026-05-05 11:02:04'),
(164,'page_create','(52) vacs',8,'192.168.65.1',52,'page','2026-05-05 11:02:15','2026-05-05 11:02:15'),
(165,'chapter_delete','(42) CDM / vIFF',8,'192.168.65.1',42,'chapter','2026-05-05 11:02:28','2026-05-05 11:02:28'),
(166,'page_create','(53) CDM / vIFF',8,'192.168.65.1',53,'page','2026-05-05 11:02:48','2026-05-05 11:02:48'),
(167,'chapter_delete','(43) vEFPS',8,'192.168.65.1',43,'chapter','2026-05-05 11:02:53','2026-05-05 11:02:53'),
(168,'page_create','(54) Audio For VATSIM',8,'192.168.65.1',54,'page','2026-05-05 11:04:06','2026-05-05 11:04:06'),
(169,'page_create','(54) Audio For VATSIM',8,'192.168.65.1',54,'page','2026-05-05 11:05:09','2026-05-05 11:05:09'),
(170,'page_create','(55) Tack Audio',8,'192.168.65.1',55,'page','2026-05-05 11:06:05','2026-05-05 11:06:05'),
(171,'book_create','(56) vATIS',8,'192.168.65.1',56,'book','2026-05-05 11:07:04','2026-05-05 11:07:04'),
(172,'bookshelf_update','(38) Software',8,'192.168.65.1',38,'bookshelf','2026-05-05 11:07:04','2026-05-05 11:07:04'),
(173,'page_create','(57) New Page',8,'192.168.65.1',57,'page','2026-05-05 11:22:37','2026-05-05 11:22:37'),
(174,'page_update','(57) New Page',8,'192.168.65.1',57,'page','2026-05-05 11:23:31','2026-05-05 11:23:31'),
(175,'page_update','(57) New Page',8,'192.168.65.1',57,'page','2026-05-05 11:24:27','2026-05-05 11:24:27'),
(176,'page_update','(57) New Page',8,'192.168.65.1',57,'page','2026-05-05 11:24:34','2026-05-05 11:24:34'),
(177,'page_update','(57) New Page',8,'192.168.65.1',57,'page','2026-05-05 11:25:12','2026-05-05 11:25:12'),
(178,'page_update','(57) vATIS',8,'192.168.65.1',57,'page','2026-05-05 11:25:47','2026-05-05 11:25:47'),
(179,'page_update','(57) vATIS',8,'192.168.65.1',57,'page','2026-05-05 11:31:51','2026-05-05 11:31:51'),
(180,'page_update','(57) vATIS',8,'192.168.65.1',57,'page','2026-05-05 11:35:29','2026-05-05 11:35:29'),
(181,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 11:35:37','2026-05-05 11:35:37'),
(182,'role_update','(3) Viewer',8,'192.168.65.1',NULL,NULL,'2026-05-05 11:35:56','2026-05-05 11:35:56'),
(183,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 11:36:23','2026-05-05 11:36:23'),
(184,'page_update','(57) vATIS',8,'192.168.65.1',57,'page','2026-05-05 11:37:19','2026-05-05 11:37:19'),
(185,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 11:38:25','2026-05-05 11:38:25'),
(186,'role_update','(3) Viewer',8,'192.168.65.1',NULL,NULL,'2026-05-05 11:39:11','2026-05-05 11:39:11'),
(187,'page_update','(57) vATIS',8,'192.168.65.1',57,'page','2026-05-05 11:40:21','2026-05-05 11:40:21'),
(188,'book_create','(58) New Controller (Orientation)',8,'192.168.65.1',58,'book','2026-05-05 11:41:22','2026-05-05 11:41:22'),
(189,'bookshelf_update','(9) ATC Training',8,'192.168.65.1',9,'bookshelf','2026-05-05 11:41:22','2026-05-05 11:41:22'),
(190,'page_update','(57) vATIS',8,'192.168.65.1',57,'page','2026-05-05 11:42:22','2026-05-05 11:42:22'),
(191,'page_update','(57) vATIS',8,'192.168.65.1',57,'page','2026-05-05 11:42:25','2026-05-05 11:42:25'),
(192,'bookshelf_create','(59) vATIS',8,'192.168.65.1',59,'bookshelf','2026-05-05 11:42:36','2026-05-05 11:42:36'),
(193,'bookshelf_create_from_book','(59) vATIS',8,'192.168.65.1',59,'bookshelf','2026-05-05 11:42:36','2026-05-05 11:42:36'),
(194,'bookshelf_update','(59) vATIS',8,'192.168.65.1',59,'bookshelf','2026-05-05 11:43:12','2026-05-05 11:43:12'),
(195,'bookshelf_delete','(59) vATIS',8,'192.168.65.1',59,'bookshelf','2026-05-05 11:43:46','2026-05-05 11:43:46'),
(196,'book_update','(56) vATIS',8,'192.168.65.1',56,'book','2026-05-05 11:44:03','2026-05-05 11:44:03'),
(197,'page_create','(60) x',8,'192.168.65.1',60,'page','2026-05-05 11:45:53','2026-05-05 11:45:53'),
(198,'page_delete','(60) x',8,'192.168.65.1',60,'page','2026-05-05 11:45:59','2026-05-05 11:45:59'),
(199,'page_update','(57) vATIS',8,'192.168.65.1',57,'page','2026-05-05 11:46:54','2026-05-05 11:46:54'),
(200,'book_update','(56) vATIS',8,'192.168.65.1',56,'book','2026-05-05 11:47:03','2026-05-05 11:47:03'),
(201,'page_create','(61) z',8,'192.168.65.1',61,'page','2026-05-05 11:47:36','2026-05-05 11:47:36'),
(202,'page_delete','(61) z',8,'192.168.65.1',61,'page','2026-05-05 11:47:39','2026-05-05 11:47:39'),
(203,'book_update','(39) Euroscope',8,'192.168.65.1',39,'book','2026-05-05 11:47:46','2026-05-05 11:47:46'),
(204,'page_create','(62) a',8,'192.168.65.1',62,'page','2026-05-05 11:47:51','2026-05-05 11:47:51'),
(205,'book_delete','(39) Euroscope',8,'192.168.65.1',39,'book','2026-05-05 11:47:57','2026-05-05 11:47:57'),
(206,'page_update','(57) vATIS',8,'192.168.65.1',57,'page','2026-05-05 11:48:18','2026-05-05 11:48:18'),
(207,'page_create','(63) test',8,'192.168.65.1',63,'page','2026-05-05 11:48:24','2026-05-05 11:48:24'),
(208,'permissions_update','(63) test',8,'192.168.65.1',63,'page','2026-05-05 11:48:44','2026-05-05 11:48:44'),
(209,'user_create','(9) Dhiaeddine Keskes',8,'192.168.65.1',NULL,NULL,'2026-05-05 11:49:30','2026-05-05 11:49:30'),
(210,'auth_login','standard; (9) Dhiaeddine Keskes',9,'192.168.65.1',NULL,NULL,'2026-05-05 11:49:47','2026-05-05 11:49:47'),
(211,'page_delete','(63) test',9,'192.168.65.1',63,'page','2026-05-05 11:49:56','2026-05-05 11:49:56'),
(212,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 11:50:04','2026-05-05 11:50:04'),
(213,'user_delete','(9) Dhiaeddine Keskes',8,'192.168.65.1',NULL,NULL,'2026-05-05 11:50:12','2026-05-05 11:50:12'),
(214,'user_update','(8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 11:50:20','2026-05-05 11:50:20'),
(215,'page_create','(64) aa',8,'192.168.65.1',64,'page','2026-05-05 11:50:47','2026-05-05 11:50:47'),
(216,'page_delete','(64) aa',8,'192.168.65.1',64,'page','2026-05-05 11:50:49','2026-05-05 11:50:49'),
(217,'bookshelf_create','(65) Useless Dont look',8,'192.168.65.1',65,'bookshelf','2026-05-05 11:50:59','2026-05-05 11:50:59'),
(218,'permissions_update','(65) Useless Dont look',8,'192.168.65.1',65,'bookshelf','2026-05-05 11:51:19','2026-05-05 11:51:19'),
(219,'book_create','(66) Template',8,'192.168.65.1',66,'book','2026-05-05 11:51:28','2026-05-05 11:51:28'),
(220,'bookshelf_update','(65) Useless Dont look',8,'192.168.65.1',65,'bookshelf','2026-05-05 11:51:28','2026-05-05 11:51:28'),
(221,'page_create','(67) Template',8,'192.168.65.1',67,'page','2026-05-05 11:53:02','2026-05-05 11:53:02'),
(222,'page_update','(67) Template',8,'192.168.65.1',67,'page','2026-05-05 11:53:33','2026-05-05 11:53:33'),
(223,'book_create','(68) How to use?',8,'192.168.65.1',68,'book','2026-05-05 11:53:53','2026-05-05 11:53:53'),
(224,'bookshelf_update','(65) Useless Dont look',8,'192.168.65.1',65,'bookshelf','2026-05-05 11:53:53','2026-05-05 11:53:53'),
(225,'page_create','(69) How to start',8,'192.168.65.1',69,'page','2026-05-05 11:54:14','2026-05-05 11:54:14'),
(226,'page_create','(70) How to use .md (The file type)',8,'192.168.65.1',70,'page','2026-05-05 11:54:59','2026-05-05 11:54:59'),
(227,'page_update','(69) How to start',8,'192.168.65.1',69,'page','2026-05-05 12:01:46','2026-05-05 12:01:46'),
(228,'bookshelf_update','(65) Editor stuff (Guides)',8,'192.168.65.1',65,'bookshelf','2026-05-05 12:02:18','2026-05-05 12:02:18'),
(229,'page_update','(70) How to use .md (The file type)',8,'192.168.65.1',70,'page','2026-05-05 12:06:24','2026-05-05 12:06:24'),
(230,'page_update','(70) How to use .md (The file type)',8,'192.168.65.1',70,'page','2026-05-05 12:06:41','2026-05-05 12:06:41'),
(231,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 12:07:21','2026-05-05 12:07:21'),
(232,'page_update','(57) vATIS',8,'192.168.65.1',57,'page','2026-05-05 12:09:05','2026-05-05 12:09:05'),
(233,'page_update','(57) vATIS',8,'192.168.65.1',57,'page','2026-05-05 12:09:36','2026-05-05 12:09:36'),
(234,'page_update','(57) vATIS',8,'192.168.65.1',57,'page','2026-05-05 12:10:24','2026-05-05 12:10:24'),
(235,'page_update','(55) Tack Audio',8,'192.168.65.1',55,'page','2026-05-05 12:16:19','2026-05-05 12:16:19'),
(236,'page_update','(55) Tack Audio',8,'192.168.65.1',55,'page','2026-05-05 12:16:29','2026-05-05 12:16:29'),
(237,'page_create','(71) asas',8,'192.168.65.1',71,'page','2026-05-05 12:17:19','2026-05-05 12:17:19'),
(238,'page_delete','(71) asas',8,'192.168.65.1',71,'page','2026-05-05 12:17:23','2026-05-05 12:17:23'),
(239,'chapter_create','(72) h',8,'192.168.65.1',72,'chapter','2026-05-05 12:17:41','2026-05-05 12:17:41'),
(240,'page_create','(73) i',8,'192.168.65.1',73,'page','2026-05-05 12:17:45','2026-05-05 12:17:45'),
(241,'chapter_delete','(72) h',8,'192.168.65.1',72,'chapter','2026-05-05 12:17:55','2026-05-05 12:17:55'),
(242,'bookshelf_update','(65) Editor stuff (Guides)',8,'192.168.65.1',65,'bookshelf','2026-05-05 12:19:28','2026-05-05 12:19:28'),
(243,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 12:19:49','2026-05-05 12:19:49'),
(244,'book_create','(74) Audio',8,'192.168.65.1',74,'book','2026-05-05 12:21:20','2026-05-05 12:21:20'),
(245,'page_create','(75) Audio For VATSIM',8,'192.168.65.1',75,'page','2026-05-05 12:21:20','2026-05-05 12:21:20'),
(246,'page_create','(76) Tack Audio',8,'192.168.65.1',76,'page','2026-05-05 12:21:20','2026-05-05 12:21:20'),
(247,'bookshelf_update','(9) ATC Training',8,'192.168.65.1',9,'bookshelf','2026-05-05 12:21:51','2026-05-05 12:21:51'),
(248,'book_delete','(74) Audio',8,'192.168.65.1',74,'book','2026-05-05 12:21:58','2026-05-05 12:21:58'),
(249,'book_delete','(56) vATIS',8,'192.168.65.1',56,'book','2026-05-05 12:22:11','2026-05-05 12:22:11'),
(250,'user_update','(2) Guest',8,'192.168.65.1',NULL,NULL,'2026-05-05 12:22:34','2026-05-05 12:22:34'),
(251,'role_update','(4) Public',8,'192.168.65.1',NULL,NULL,'2026-05-05 12:22:52','2026-05-05 12:22:52'),
(252,'maintenance_action_run','send-test-email',8,'192.168.65.1',NULL,NULL,'2026-05-05 12:23:28','2026-05-05 12:23:28'),
(253,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 12:29:08','2026-05-05 12:29:08'),
(254,'auth_login','standard; (8) Jamie Datson',8,'192.168.65.1',NULL,NULL,'2026-05-05 12:30:19','2026-05-05 12:30:19'),
(255,'recycle_bin_restore','Deletion (25) for book (56) vATIS',8,'192.168.65.1',NULL,NULL,'2026-05-05 12:31:07','2026-05-05 12:31:07'),
(256,'page_delete','(60) x',8,'192.168.65.1',60,'page','2026-05-05 12:31:20','2026-05-05 12:31:20'),
(257,'page_delete','(63) test',8,'192.168.65.1',63,'page','2026-05-05 12:31:25','2026-05-05 12:31:25'),
(258,'maintenance_action_run','send-test-email',8,'192.168.65.1',NULL,NULL,'2026-05-05 12:33:41','2026-05-05 12:33:41');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_tokens`
--

DROP TABLE IF EXISTS `api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `token_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `expires_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_tokens_token_id_unique` (`token_id`),
  KEY `api_tokens_user_id_index` (`user_id`),
  KEY `api_tokens_expires_at_index` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_tokens`
--

LOCK TABLES `api_tokens` WRITE;
/*!40000 ALTER TABLE `api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `path` text NOT NULL,
  `extension` varchar(20) NOT NULL,
  `uploaded_to` bigint(20) unsigned NOT NULL,
  `external` tinyint(1) NOT NULL,
  `order` int(11) NOT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attachments_uploaded_to_index` (`uploaded_to`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES
(1,'VATIS.webp','uploads/files/2026-05-May/QEFieFz47DeReN00-webp','webp',57,0,1,8,8,'2026-05-05 11:22:18','2026-05-05 11:22:18'),
(2,'option 1.webp','uploads/files/2026-05-May/vGcItIaLOGc7wZAl-webp','webp',57,0,2,8,8,'2026-05-05 11:31:37','2026-05-05 11:31:37'),
(3,'image.webp','uploads/files/2026-05-May/9qreFUTCxKJGuVrg-webp','webp',57,0,3,8,8,'2026-05-05 11:35:23','2026-05-05 11:35:23'),
(4,'new_book.webp','uploads/files/2026-05-May/vDggDKWSirpYC5dj-webp','webp',69,0,1,8,8,'2026-05-05 11:57:33','2026-05-05 11:57:33');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelves_books`
--

DROP TABLE IF EXISTS `bookshelves_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshelves_books` (
  `bookshelf_id` bigint(20) unsigned NOT NULL,
  `book_id` bigint(20) unsigned NOT NULL,
  `order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bookshelf_id`,`book_id`),
  KEY `bookshelves_books_book_id_foreign` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelves_books`
--

LOCK TABLES `bookshelves_books` WRITE;
/*!40000 ALTER TABLE `bookshelves_books` DISABLE KEYS */;
INSERT INTO `bookshelves_books` VALUES
(6,7,1),
(9,56,1),
(9,58,0),
(11,12,0),
(11,34,1),
(11,35,2),
(11,36,3),
(13,14,1),
(13,25,2),
(13,32,3),
(38,39,1),
(38,40,2),
(38,41,3),
(38,56,4),
(38,74,5),
(59,56,0),
(65,66,0),
(65,68,1);
/*!40000 ALTER TABLE `bookshelves_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `commentable_id` bigint(20) unsigned NOT NULL,
  `commentable_type` varchar(191) NOT NULL,
  `html` longtext DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `local_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content_ref` varchar(191) NOT NULL,
  `archived` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_entity_id_entity_type_index` (`commentable_id`,`commentable_type`),
  KEY `comments_local_id_index` (`local_id`),
  KEY `comments_archived_index` (`archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deletions`
--

DROP TABLE IF EXISTS `deletions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `deletions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  `deletable_type` varchar(100) NOT NULL,
  `deletable_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deletions_deleted_by_index` (`deleted_by`),
  KEY `deletions_deletable_type_index` (`deletable_type`),
  KEY `deletions_deletable_id_index` (`deletable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deletions`
--

LOCK TABLES `deletions` WRITE;
/*!40000 ALTER TABLE `deletions` DISABLE KEYS */;
INSERT INTO `deletions` VALUES
(3,8,'bookshelf',6,'2026-05-05 10:19:15','2026-05-05 10:19:15'),
(4,8,'book',7,'2026-05-05 10:19:22','2026-05-05 10:19:22'),
(5,8,'book',4,'2026-05-05 10:19:30','2026-05-05 10:19:30'),
(6,8,'book',10,'2026-05-05 10:29:13','2026-05-05 10:29:13'),
(7,8,'page',16,'2026-05-05 10:34:08','2026-05-05 10:34:08'),
(8,8,'page',15,'2026-05-05 10:34:13','2026-05-05 10:34:13'),
(9,8,'page',17,'2026-05-05 10:34:20','2026-05-05 10:34:20'),
(10,8,'page',22,'2026-05-05 10:34:58','2026-05-05 10:34:58'),
(11,8,'page',26,'2026-05-05 10:35:47','2026-05-05 10:35:47'),
(12,8,'chapter',28,'2026-05-05 10:36:05','2026-05-05 10:36:05'),
(13,8,'chapter',49,'2026-05-05 11:02:04','2026-05-05 11:02:04'),
(14,8,'chapter',42,'2026-05-05 11:02:28','2026-05-05 11:02:28'),
(15,8,'chapter',43,'2026-05-05 11:02:53','2026-05-05 11:02:53'),
(16,8,'bookshelf',59,'2026-05-05 11:43:46','2026-05-05 11:43:46'),
(18,8,'page',61,'2026-05-05 11:47:39','2026-05-05 11:47:39'),
(19,8,'book',39,'2026-05-05 11:47:57','2026-05-05 11:47:57'),
(21,8,'page',64,'2026-05-05 11:50:49','2026-05-05 11:50:49'),
(22,8,'page',71,'2026-05-05 12:17:23','2026-05-05 12:17:23'),
(23,8,'chapter',72,'2026-05-05 12:17:55','2026-05-05 12:17:55'),
(24,8,'book',74,'2026-05-05 12:21:58','2026-05-05 12:21:58'),
(26,8,'page',60,'2026-05-05 12:31:20','2026-05-05 12:31:20'),
(27,8,'page',63,'2026-05-05 12:31:25','2026-05-05 12:31:25');
/*!40000 ALTER TABLE `deletions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_confirmations`
--

DROP TABLE IF EXISTS `email_confirmations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_confirmations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_confirmations_user_id_index` (`user_id`),
  KEY `email_confirmations_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_confirmations`
--

LOCK TABLES `email_confirmations` WRITE;
/*!40000 ALTER TABLE `email_confirmations` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_confirmations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entities`
--

DROP TABLE IF EXISTS `entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `entities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `book_id` bigint(20) unsigned DEFAULT NULL,
  `chapter_id` bigint(20) unsigned DEFAULT NULL,
  `priority` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `owned_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`,`type`),
  KEY `entities_type_index` (`type`),
  KEY `entities_slug_index` (`slug`),
  KEY `entities_book_id_index` (`book_id`),
  KEY `entities_chapter_id_index` (`chapter_id`),
  KEY `entities_updated_at_index` (`updated_at`),
  KEY `entities_deleted_at_index` (`deleted_at`),
  KEY `entities_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entities`
--

LOCK TABLES `entities` WRITE;
/*!40000 ALTER TABLE `entities` DISABLE KEYS */;
INSERT INTO `entities` VALUES
(4,'book','test','test',NULL,NULL,NULL,'2026-05-05 10:17:03','2026-05-05 10:19:30','2026-05-05 10:19:30',8,8,8),
(5,'chapter','test','test',4,NULL,2,'2026-05-05 10:17:08','2026-05-05 10:19:30','2026-05-05 10:19:30',8,8,8),
(6,'bookshelf','test','test',NULL,NULL,NULL,'2026-05-05 10:17:41','2026-05-05 10:19:15','2026-05-05 10:19:15',8,8,8),
(7,'book','test','test-JF6',NULL,NULL,NULL,'2026-05-05 10:17:44','2026-05-05 10:19:22','2026-05-05 10:19:22',8,8,8),
(8,'chapter','test','test',7,NULL,2,'2026-05-05 10:17:47','2026-05-05 10:19:22','2026-05-05 10:19:22',8,8,8),
(9,'bookshelf','ATC Training','atc-training',NULL,NULL,NULL,'2026-05-05 10:21:05','2026-05-05 12:21:51',NULL,8,8,8),
(10,'book','test','test',NULL,NULL,NULL,'2026-05-05 10:27:11','2026-05-05 10:29:13','2026-05-05 10:29:13',8,8,8),
(11,'bookshelf','SOP\'s (ACC)','sops-acc',NULL,NULL,NULL,'2026-05-05 10:31:51','2026-05-05 10:32:20',NULL,8,8,8),
(12,'book','DAAA (Algiers)','daaa-algiers',NULL,NULL,NULL,'2026-05-05 10:32:11','2026-05-05 10:32:11',NULL,8,8,8),
(13,'bookshelf','SOP\'s (APC/ADC)','sops-apcadc',NULL,NULL,NULL,'2026-05-05 10:33:10','2026-05-05 10:33:10',NULL,8,8,8),
(14,'book','Algeria','algeria',NULL,NULL,NULL,'2026-05-05 10:33:22','2026-05-05 10:33:22',NULL,8,8,8),
(15,'page','DAAG','daag',14,NULL,2,'2026-05-05 10:33:23','2026-05-05 10:34:13','2026-05-05 10:34:13',8,8,8),
(16,'page','DABC','dabc',14,NULL,3,'2026-05-05 10:33:36','2026-05-05 10:34:08','2026-05-05 10:34:08',8,8,8),
(17,'page','asas','asas',14,NULL,5,'2026-05-05 10:33:42','2026-05-05 10:34:20','2026-05-05 10:34:20',8,8,8),
(18,'chapter','DAAG','daag',14,NULL,4,'2026-05-05 10:33:48','2026-05-05 10:33:48',NULL,8,8,8),
(19,'page','APC','apc',14,18,1,'2026-05-05 10:34:24','2026-05-05 10:34:27',NULL,8,8,8),
(20,'page','AIR/GMC','airgmc',14,18,2,'2026-05-05 10:34:31','2026-05-05 10:34:37',NULL,8,8,8),
(21,'chapter','DAOO','daoo',14,NULL,5,'2026-05-05 10:34:48','2026-05-05 10:34:48',NULL,8,8,8),
(22,'page','a','a',14,21,1,'2026-05-05 10:34:51','2026-05-05 10:34:58','2026-05-05 10:34:58',8,8,8),
(23,'page','APC','apc-lwK',14,21,1,'2026-05-05 10:35:08','2026-05-05 10:35:09',NULL,8,8,8),
(24,'page','APC/ADC','apcadc',14,21,2,'2026-05-05 10:35:12','2026-05-05 10:35:24',NULL,8,8,8),
(25,'book','Morocco','morocco',NULL,NULL,NULL,'2026-05-05 10:35:37','2026-05-05 10:35:37',NULL,8,8,8),
(26,'page','New Page','new-page',25,NULL,2,'2026-05-05 10:35:38','2026-05-05 10:35:47','2026-05-05 10:35:47',8,8,8),
(27,'chapter','GMMN','gmmn',25,NULL,2,'2026-05-05 10:35:52','2026-05-05 10:35:52',NULL,8,8,8),
(28,'chapter','GMMX','gmmx',25,NULL,3,'2026-05-05 10:36:00','2026-05-05 10:36:05','2026-05-05 10:36:05',8,8,8),
(29,'page','New Page','',25,28,NULL,'2026-05-05 10:36:01','2026-05-05 10:36:05','2026-05-05 10:36:05',8,8,8),
(30,'chapter','GMMX','gmmx',25,NULL,3,'2026-05-05 10:36:10','2026-05-05 10:36:10',NULL,8,8,8),
(31,'chapter','GMAD','gmad',25,NULL,4,'2026-05-05 10:36:15','2026-05-05 10:36:15',NULL,8,8,8),
(32,'book','Tunisia','tunisia',NULL,NULL,NULL,'2026-05-05 10:36:42','2026-05-05 10:36:42',NULL,8,8,8),
(33,'chapter','DTTA','dtta',32,NULL,2,'2026-05-05 10:36:47','2026-05-05 10:36:47',NULL,8,8,8),
(34,'book','DTTC (Tunis)','dttc-tunis',NULL,NULL,NULL,'2026-05-05 10:37:06','2026-05-05 10:37:06',NULL,8,8,8),
(35,'book','GMMM (Casablanca)','gmmm-casablanca',NULL,NULL,NULL,'2026-05-05 10:37:17','2026-05-05 10:37:17',NULL,8,8,8),
(36,'book','GMAC (Agadir)','gmac-agadir',NULL,NULL,NULL,'2026-05-05 10:37:26','2026-05-05 10:37:26',NULL,8,8,8),
(37,'bookshelf','LoA\'s','loas',NULL,NULL,NULL,'2026-05-05 10:38:41','2026-05-05 10:38:54',NULL,8,8,8),
(38,'bookshelf','Software','software',NULL,NULL,NULL,'2026-05-05 10:40:07','2026-05-05 10:40:07',NULL,8,8,8),
(39,'book','Euroscope','euroscope',NULL,NULL,NULL,'2026-05-05 10:40:15','2026-05-05 11:47:57','2026-05-05 11:47:57',8,8,8),
(40,'book','Audio','audio',NULL,NULL,NULL,'2026-05-05 10:40:29','2026-05-05 10:48:51',NULL,8,8,8),
(41,'book','Optional','optional',NULL,NULL,NULL,'2026-05-05 10:40:40','2026-05-05 10:40:40',NULL,8,8,8),
(42,'chapter','CDM / vIFF','cdm-viff',41,NULL,2,'2026-05-05 10:40:51','2026-05-05 11:02:28','2026-05-05 11:02:28',8,8,8),
(43,'chapter','vEFPS','vefps',41,NULL,3,'2026-05-05 10:41:34','2026-05-05 11:02:53','2026-05-05 11:02:53',8,8,8),
(44,'bookshelf','Pilots','pilots',NULL,NULL,NULL,'2026-05-05 10:42:44','2026-05-05 10:42:44',NULL,8,8,8),
(45,'chapter','Sector splits','sector-splits',12,NULL,2,'2026-05-05 10:43:10','2026-05-05 10:43:10',NULL,8,8,8),
(46,'chapter','Sector splits','sector-splits',34,NULL,2,'2026-05-05 10:44:02','2026-05-05 10:44:02',NULL,8,8,8),
(47,'chapter','Sector splits','sector-splits',35,NULL,2,'2026-05-05 10:44:05','2026-05-05 10:44:05',NULL,8,8,8),
(48,'chapter','Sector splits','sector-splits',36,NULL,2,'2026-05-05 10:44:09','2026-05-05 10:44:09',NULL,8,8,8),
(49,'chapter','VACS','vacs',41,NULL,4,'2026-05-05 10:49:59','2026-05-05 11:02:04','2026-05-05 11:02:04',8,8,8),
(50,'page','VACS','vacs',41,49,1,'2026-05-05 10:50:01','2026-05-05 11:02:04','2026-05-05 11:02:04',8,8,8),
(51,'page','CDM','cdm',41,42,1,'2026-05-05 10:57:24','2026-05-05 11:02:28','2026-05-05 11:02:28',8,8,8),
(52,'page','vacs','vacs',41,NULL,4,'2026-05-05 11:02:06','2026-05-05 11:02:15',NULL,8,8,8),
(53,'page','CDM / vIFF','cdm-viff',41,NULL,5,'2026-05-05 11:02:42','2026-05-05 11:02:48',NULL,8,8,8),
(54,'page','Audio For VATSIM','audio-for-vatsim',40,NULL,2,'2026-05-05 11:03:05','2026-05-05 11:05:09',NULL,8,8,8),
(55,'page','Tack Audio','tack-audio',40,NULL,3,'2026-05-05 11:05:29','2026-05-05 12:16:29',NULL,8,8,8),
(56,'book','vATIS','vatis',NULL,NULL,NULL,'2026-05-05 11:07:04','2026-05-05 12:31:07',NULL,8,8,8),
(57,'page','vATIS','vatis',56,NULL,2,'2026-05-05 11:07:06','2026-05-05 12:31:07',NULL,8,8,8),
(58,'book','New Controller (Orientation)','new-controller-orientation',NULL,NULL,NULL,'2026-05-05 11:41:22','2026-05-05 11:41:22',NULL,8,8,8),
(59,'bookshelf','vATIS','vatis',NULL,NULL,NULL,'2026-05-05 11:42:36','2026-05-05 11:43:46','2026-05-05 11:43:46',8,8,8),
(60,'page','x','x',56,NULL,3,'2026-05-05 11:45:49','2026-05-05 12:31:20','2026-05-05 12:31:20',8,8,8),
(61,'page','z','z',39,NULL,2,'2026-05-05 11:47:33','2026-05-05 11:47:39','2026-05-05 11:47:39',8,8,8),
(62,'page','a','a',39,NULL,2,'2026-05-05 11:47:48','2026-05-05 11:47:57','2026-05-05 11:47:57',8,8,8),
(63,'page','test','test',56,NULL,3,'2026-05-05 11:48:21','2026-05-05 12:31:25','2026-05-05 12:31:25',8,8,8),
(64,'page','aa','aa',40,NULL,4,'2026-05-05 11:50:43','2026-05-05 11:50:49','2026-05-05 11:50:49',8,8,8),
(65,'bookshelf','Editor stuff (Guides)','editor-stuff-guides',NULL,NULL,NULL,'2026-05-05 11:50:59','2026-05-05 12:19:28',NULL,8,8,8),
(66,'book','Template','template',NULL,NULL,NULL,'2026-05-05 11:51:28','2026-05-05 11:51:28',NULL,8,8,8),
(67,'page','Template','template',66,NULL,2,'2026-05-05 11:51:32','2026-05-05 11:53:33',NULL,8,8,8),
(68,'book','How to use?','how-to-use',NULL,NULL,NULL,'2026-05-05 11:53:53','2026-05-05 11:53:53',NULL,8,8,8),
(69,'page','How to start','how-to-start',68,NULL,2,'2026-05-05 11:54:00','2026-05-05 12:01:46',NULL,8,8,8),
(70,'page','How to use .md (The file type)','how-to-use-md-the-file-type',68,NULL,3,'2026-05-05 11:54:17','2026-05-05 12:06:41',NULL,8,8,8),
(71,'page','asas','asas',58,NULL,2,'2026-05-05 12:17:15','2026-05-05 12:17:23','2026-05-05 12:17:23',8,8,8),
(72,'chapter','h','h',58,NULL,2,'2026-05-05 12:17:41','2026-05-05 12:17:55','2026-05-05 12:17:55',8,8,8),
(73,'page','i','i',58,72,1,'2026-05-05 12:17:42','2026-05-05 12:17:55','2026-05-05 12:17:55',8,8,8),
(74,'book','Audio','audio-xgK',NULL,NULL,NULL,'2026-05-05 12:21:20','2026-05-05 12:21:58','2026-05-05 12:21:58',8,8,8),
(75,'page','Audio For VATSIM','audio-for-vatsim',74,NULL,2,'2026-05-05 12:21:20','2026-05-05 12:21:58','2026-05-05 12:21:58',8,8,8),
(76,'page','Tack Audio','tack-audio',74,NULL,3,'2026-05-05 12:21:20','2026-05-05 12:21:58','2026-05-05 12:21:58',8,8,8);
/*!40000 ALTER TABLE `entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_container_data`
--

DROP TABLE IF EXISTS `entity_container_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_container_data` (
  `entity_id` bigint(20) unsigned NOT NULL,
  `entity_type` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `description_html` text NOT NULL,
  `default_template_id` bigint(20) unsigned DEFAULT NULL,
  `image_id` int(10) unsigned DEFAULT NULL,
  `sort_rule_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_container_data`
--

LOCK TABLES `entity_container_data` WRITE;
/*!40000 ALTER TABLE `entity_container_data` DISABLE KEYS */;
INSERT INTO `entity_container_data` VALUES
(4,'book','','<p><br></p>',NULL,NULL,NULL),
(5,'chapter','','<p><br></p>',NULL,NULL,NULL),
(6,'bookshelf','','<p><br></p>',NULL,NULL,NULL),
(7,'book','','<p><br></p>',NULL,NULL,NULL),
(8,'chapter','','<p><br></p>',NULL,NULL,NULL),
(9,'bookshelf','','<p><br></p>',NULL,31,NULL),
(10,'book','','<p><br></p>',NULL,NULL,NULL),
(11,'bookshelf','','<p><br></p>',NULL,32,NULL),
(12,'book','','<p><br></p>',NULL,NULL,NULL),
(13,'bookshelf','','<p><br></p>',NULL,33,NULL),
(14,'book','','<p><br></p>',NULL,NULL,NULL),
(18,'chapter','','<p><br></p>',NULL,NULL,NULL),
(21,'chapter','','<p><br></p>',NULL,NULL,NULL),
(25,'book','','<p><br></p>',NULL,NULL,NULL),
(27,'chapter','','<p><br></p>',NULL,NULL,NULL),
(28,'chapter','','<p><br></p>',NULL,NULL,NULL),
(30,'chapter','','<p><br></p>',NULL,NULL,NULL),
(31,'chapter','','<p><br></p>',NULL,NULL,NULL),
(32,'book','','<p><br></p>',NULL,NULL,NULL),
(33,'chapter','','<p><br></p>',NULL,NULL,NULL),
(34,'book','','<p><br></p>',NULL,NULL,NULL),
(35,'book','','<p><br></p>',NULL,NULL,NULL),
(36,'book','','<p><br></p>',NULL,NULL,NULL),
(37,'bookshelf','','<p><br></p>',NULL,34,NULL),
(38,'bookshelf','','<p><br></p>',NULL,35,NULL),
(39,'book','','<p><br></p>',57,37,NULL),
(40,'book','','<p><br></p>',NULL,38,NULL),
(41,'book','','<p><br></p>',NULL,NULL,NULL),
(42,'chapter','','<p><br></p>',NULL,NULL,NULL),
(43,'chapter','','<p><br></p>',NULL,NULL,NULL),
(44,'bookshelf','','<p><br></p>',NULL,36,NULL),
(45,'chapter','','<p><br></p>',NULL,NULL,NULL),
(46,'chapter','','<p><br></p>',NULL,NULL,NULL),
(47,'chapter','','<p><br></p>',NULL,NULL,NULL),
(48,'chapter','','<p><br></p>',NULL,NULL,NULL),
(49,'chapter','','<p><br></p>',NULL,NULL,NULL),
(56,'book','','<p><br></p>',57,39,NULL),
(58,'book','','<p><br></p>',NULL,NULL,NULL),
(59,'bookshelf','','<p><br></p>',NULL,40,NULL),
(65,'bookshelf','','<p><br></p>',NULL,42,NULL),
(66,'book','','<p><br></p>',NULL,NULL,NULL),
(68,'book','','<p><br></p>',NULL,NULL,NULL),
(72,'chapter','','<p><br></p>',NULL,NULL,NULL),
(74,'book','','<p><br></p>',NULL,43,NULL);
/*!40000 ALTER TABLE `entity_container_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_page_data`
--

DROP TABLE IF EXISTS `entity_page_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_page_data` (
  `page_id` bigint(20) unsigned NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `template` tinyint(1) NOT NULL,
  `revision_count` int(10) unsigned NOT NULL,
  `editor` varchar(50) NOT NULL,
  `html` longtext NOT NULL,
  `text` longtext NOT NULL,
  `markdown` longtext NOT NULL,
  PRIMARY KEY (`page_id`),
  KEY `entity_page_data_draft_index` (`draft`),
  KEY `entity_page_data_template_index` (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_page_data`
--

LOCK TABLES `entity_page_data` WRITE;
/*!40000 ALTER TABLE `entity_page_data` DISABLE KEYS */;
INSERT INTO `entity_page_data` VALUES
(15,0,0,1,'markdown','','',''),
(16,0,0,1,'markdown','','',''),
(17,0,0,1,'markdown','','',''),
(19,0,0,1,'markdown','','',''),
(20,0,0,1,'markdown','','',''),
(22,0,0,1,'markdown','','',''),
(23,0,0,1,'markdown','','',''),
(24,0,0,1,'markdown','','',''),
(26,0,0,1,'markdown','','',''),
(29,1,0,0,'markdown','','',''),
(50,0,0,2,'markdown','<p id=\"bkmrk-the-vatsim-atc-commu\">The VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.#</p>\n<p id=\"bkmrk-vacs-is-a-recommende\">vacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.</p>\n<p id=\"bkmrk-when-logging-onto-va\">When logging onto vacs, you will every single sector available to be called. So, who do I call?\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.</p>\n<p id=\"bkmrk-abbreviations%3A\">Abbreviations:</p>\n<ul id=\"bkmrk-cld---clearance-deli\">\n<li>\n<p>CLD - Clearance Delivery (DEL)</p>\n</li>\n<li>\n<p>GMC - Ground Movement Control (GND)</p>\n</li>\n<li>\n<p>TWR - Tower (TWR)</p>\n</li>\n<li>\n<p>APP - Approach (APP)</p>\n</li>\n<li>\n<p>RDR - Radar (APP)</p>\n</li>\n<li>\n<p>ACC - Area Control Centre (CTR)</p>\n<br>\n</li>\n<li>\n<p><em>AFIS/INFO - Aerodrome Flight Information Service (I_xxx)</em></p>\n</li>\n</ul>\n<p id=\"bkmrk-install-vacs-here\">Install vacs <a href=\"https://vacs.network/\">HERE</a></p>\n<p id=\"bkmrk-more-in-depth-docume\">More in-depth documentation can be found <a href=\"https://docs.vacs.network/\">HERE</a></p>\n','The VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.#\nvacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.\nWhen logging onto vacs, you will every single sector available to be called. So, who do I call?\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.\nAbbreviations:\n\n\nCLD - Clearance Delivery (DEL)\n\n\nGMC - Ground Movement Control (GND)\n\n\nTWR - Tower (TWR)\n\n\nAPP - Approach (APP)\n\n\nRDR - Radar (APP)\n\n\nACC - Area Control Centre (CTR)\n\n\n\nAFIS/INFO - Aerodrome Flight Information Service (I_xxx)\n\n\nInstall vacs HERE\nMore in-depth documentation can be found HERE\n','The VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.# \r\n\r\nvacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.\r\n\r\nWhen logging onto vacs, you will every single sector available to be called. So, who do I call?\r\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.\r\n\r\nAbbreviations:\r\n- CLD - Clearance Delivery (DEL)\r\n- GMC - Ground Movement Control (GND)\r\n- TWR - Tower (TWR)\r\n- APP - Approach (APP)\r\n- RDR - Radar (APP)\r\n- ACC - Area Control Centre (CTR)\r\n  \r\n  <br />\r\n\r\n- *AFIS/INFO - Aerodrome Flight Information Service (I_xxx)*\r\n\r\nInstall vacs [HERE](https://vacs.network/)\r\n\r\nMore in-depth documentation can be found [HERE](https://docs.vacs.network/)'),
(51,0,0,3,'markdown','<p id=\"bkmrk-cdm-%28camu%29-is-a-tool\">CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.</p>\n<p id=\"bkmrk-how-to-start-cdm%3F\">How to Start CDM?</p>\n<ul id=\"bkmrk-when-loading-up-the-\">\n<li>When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.</li>\n</ul>\n<p id=\"bkmrk-when-am-i-the-%27maste\">When am I the \'master\' or the \'slave\'?</p>\n<ul id=\"bkmrk-during-normal-operat\">\n<li>During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.</li>\n</ul>\n<p id=\"bkmrk-how-do-i-use-cdm%3F\">How do I use CDM?</p>\n<ul id=\"bkmrk-when-an-aircraft-cal\">\n<li>When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.</li>\n</ul>\n<p id=\"bkmrk-what-do-i-do-when-ha\">What do I do when handing over from CLD to GMC?</p>\n<ul id=\"bkmrk-whilst-operating-cld\">\n<li>Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.</li>\n</ul>\n<p id=\"bkmrk-what-happens-when-an\">What happens when an aircraft misses their TSAT slot?\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.</p>\n<p id=\"bkmrk-useful-commands%3A\">Useful commands:</p>\n<ul id=\"bkmrk-.cdm-panel---hides-t\">\n<li>.cdm panel - Hides the CDM panel</li>\n<li>.cdm master/slave ICAO - Master, or slave an airport</li>\n<li>.cdm atfcm - Shows the ATFCM list</li>\n<li>.cdm refresh - Refresh the CDM plugin</li>\n</ul>\n<p id=\"bkmrk-how-to-start-cdm%3F-1\">How to Start CDM?</p>\n<ul id=\"bkmrk-when-loading-up-the--1\">\n<li>When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.</li>\n</ul>\n<p id=\"bkmrk-when-am-i-the-%27maste-1\">When am I the \'master\' or the \'slave\'?</p>\n<ul id=\"bkmrk-during-normal-operat-1\">\n<li>During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.</li>\n</ul>\n<p id=\"bkmrk-how-do-i-use-cdm%3F-1\">How do I use CDM?</p>\n<ul id=\"bkmrk-when-an-aircraft-cal-1\">\n<li>When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.</li>\n</ul>\n<p id=\"bkmrk-what-do-i-do-when-ha-1\">What do I do when handing over from CLD to GMC?</p>\n<ul id=\"bkmrk-whilst-operating-cld-1\">\n<li>Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.</li>\n</ul>\n<p id=\"bkmrk-what-happens-when-an-1\">What happens when an aircraft misses their TSAT slot?</p>\n<ul id=\"bkmrk-if-an-aircraft-misse\">\n<li>If an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.</li>\n</ul>\n<p id=\"bkmrk-useful-commands%3A-1\">Useful commands:</p>\n<ul id=\"bkmrk-.cdm-panel---hides-t-1\">\n<li>.cdm panel - Hides the CDM panel</li>\n<li>.cdm master/slave ICAO - Master, or slave an airport</li>\n<li>.cdm atfcm - Shows the ATFCM list</li>\n<li>.cdm refresh - Refresh the CDM plugin</li>\n</ul>\n<p id=\"bkmrk-a-video%2C-from-vatsim\">A video, from VATSIM Spain demonstrating the use of the plugin can be found <a href=\"https://www.youtube.com/watch?v=fHYT0_SH7qs\">HERE</a></p>\n','CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.\nHow to Start CDM?\n\nWhen loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\n\nWhen am I the \'master\' or the \'slave\'?\n\nDuring normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\n\nHow do I use CDM?\n\nWhen an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\n\nWhat do I do when handing over from CLD to GMC?\n\nWhilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.\n\nWhat happens when an aircraft misses their TSAT slot?\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\nUseful commands:\n\n.cdm panel - Hides the CDM panel\n.cdm master/slave ICAO - Master, or slave an airport\n.cdm atfcm - Shows the ATFCM list\n.cdm refresh - Refresh the CDM plugin\n\nHow to Start CDM?\n\nWhen loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\n\nWhen am I the \'master\' or the \'slave\'?\n\nDuring normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\n\nHow do I use CDM?\n\nWhen an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\n\nWhat do I do when handing over from CLD to GMC?\n\nWhilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.\n\nWhat happens when an aircraft misses their TSAT slot?\n\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\n\nUseful commands:\n\n.cdm panel - Hides the CDM panel\n.cdm master/slave ICAO - Master, or slave an airport\n.cdm atfcm - Shows the ATFCM list\n.cdm refresh - Refresh the CDM plugin\n\nA video, from VATSIM Spain demonstrating the use of the plugin can be found HERE\n','CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.\r\n\r\nHow to Start CDM?\r\n\r\n- When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\r\n\r\nWhen am I the \'master\' or the \'slave\'?\r\n- During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\r\n\r\nHow do I use CDM?\r\n- When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\r\n\r\nWhat do I do when handing over from CLD to GMC?\r\n- Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status. \r\n\r\nWhat happens when an aircraft misses their TSAT slot?\r\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\r\n\r\n\r\nUseful commands:\r\n- .cdm panel - Hides the CDM panel\r\n- .cdm master/slave ICAO - Master, or slave an airport\r\n- .cdm atfcm - Shows the ATFCM list\r\n- .cdm refresh - Refresh the CDM plugin\r\n\r\nHow to Start CDM?\r\n- When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\r\n\r\nWhen am I the \'master\' or the \'slave\'?\r\n- During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\r\n\r\nHow do I use CDM?\r\n- When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\r\n\r\nWhat do I do when handing over from CLD to GMC?\r\n- Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status. \r\n\r\nWhat happens when an aircraft misses their TSAT slot?\r\n- If an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\r\n\r\n\r\nUseful commands:\r\n\r\n- .cdm panel - Hides the CDM panel\r\n- .cdm master/slave ICAO - Master, or slave an airport\r\n- .cdm atfcm - Shows the ATFCM list\r\n- .cdm refresh - Refresh the CDM plugin\r\n\r\nA video, from VATSIM Spain demonstrating the use of the plugin can be found [HERE](https://www.youtube.com/watch?v=fHYT0_SH7qs)'),
(52,0,0,1,'markdown','<p id=\"bkmrk-the-vatsim-atc-commu\">The VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.#</p>\n<p id=\"bkmrk-vacs-is-a-recommende\">vacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.</p>\n<p id=\"bkmrk-when-logging-onto-va\">When logging onto vacs, you will every single sector available to be called. So, who do I call?\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.</p>\n<p id=\"bkmrk-abbreviations%3A\">Abbreviations:</p>\n<ul id=\"bkmrk-cld---clearance-deli\">\n<li>\n<p>CLD - Clearance Delivery (DEL)</p>\n</li>\n<li>\n<p>GMC - Ground Movement Control (GND)</p>\n</li>\n<li>\n<p>TWR - Tower (TWR)</p>\n</li>\n<li>\n<p>APP - Approach (APP)</p>\n</li>\n<li>\n<p>RDR - Radar (APP)</p>\n</li>\n<li>\n<p>ACC - Area Control Centre (CTR)</p>\n<br>\n</li>\n<li>\n<p><em>AFIS/INFO - Aerodrome Flight Information Service (I_xxx)</em></p>\n</li>\n</ul>\n<p id=\"bkmrk-install-vacs-here\">Install vacs <a href=\"https://vacs.network/\">HERE</a></p>\n<p id=\"bkmrk-more-in-depth-docume\">More in-depth documentation can be found <a href=\"https://docs.vacs.network/\">HERE</a></p>\n','The VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.#\nvacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.\nWhen logging onto vacs, you will every single sector available to be called. So, who do I call?\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.\nAbbreviations:\n\n\nCLD - Clearance Delivery (DEL)\n\n\nGMC - Ground Movement Control (GND)\n\n\nTWR - Tower (TWR)\n\n\nAPP - Approach (APP)\n\n\nRDR - Radar (APP)\n\n\nACC - Area Control Centre (CTR)\n\n\n\nAFIS/INFO - Aerodrome Flight Information Service (I_xxx)\n\n\nInstall vacs HERE\nMore in-depth documentation can be found HERE\n','The VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.# \r\n\r\nvacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.\r\n\r\nWhen logging onto vacs, you will every single sector available to be called. So, who do I call?\r\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.\r\n\r\nAbbreviations:\r\n- CLD - Clearance Delivery (DEL)\r\n- GMC - Ground Movement Control (GND)\r\n- TWR - Tower (TWR)\r\n- APP - Approach (APP)\r\n- RDR - Radar (APP)\r\n- ACC - Area Control Centre (CTR)\r\n  \r\n  <br />\r\n\r\n- *AFIS/INFO - Aerodrome Flight Information Service (I_xxx)*\r\n\r\nInstall vacs [HERE](https://vacs.network/)\r\n\r\nMore in-depth documentation can be found [HERE](https://docs.vacs.network/)'),
(53,0,0,1,'markdown','<p id=\"bkmrk-cdm-%28camu%29-is-a-tool\">CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.</p>\n<p id=\"bkmrk-how-to-start-cdm%3F\">How to Start CDM?</p>\n<ul id=\"bkmrk-when-loading-up-the-\">\n<li>When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.</li>\n</ul>\n<p id=\"bkmrk-when-am-i-the-%27maste\">When am I the \'master\' or the \'slave\'?</p>\n<ul id=\"bkmrk-during-normal-operat\">\n<li>During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.</li>\n</ul>\n<p id=\"bkmrk-how-do-i-use-cdm%3F\">How do I use CDM?</p>\n<ul id=\"bkmrk-when-an-aircraft-cal\">\n<li>When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.</li>\n</ul>\n<p id=\"bkmrk-what-do-i-do-when-ha\">What do I do when handing over from CLD to GMC?</p>\n<ul id=\"bkmrk-whilst-operating-cld\">\n<li>Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.</li>\n</ul>\n<p id=\"bkmrk-what-happens-when-an\">What happens when an aircraft misses their TSAT slot?\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.</p>\n<p id=\"bkmrk-useful-commands%3A\">Useful commands:</p>\n<ul id=\"bkmrk-.cdm-panel---hides-t\">\n<li>.cdm panel - Hides the CDM panel</li>\n<li>.cdm master/slave ICAO - Master, or slave an airport</li>\n<li>.cdm atfcm - Shows the ATFCM list</li>\n<li>.cdm refresh - Refresh the CDM plugin</li>\n</ul>\n<p id=\"bkmrk-how-to-start-cdm%3F-1\">How to Start CDM?</p>\n<ul id=\"bkmrk-when-loading-up-the--1\">\n<li>When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.</li>\n</ul>\n<p id=\"bkmrk-when-am-i-the-%27maste-1\">When am I the \'master\' or the \'slave\'?</p>\n<ul id=\"bkmrk-during-normal-operat-1\">\n<li>During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.</li>\n</ul>\n<p id=\"bkmrk-how-do-i-use-cdm%3F-1\">How do I use CDM?</p>\n<ul id=\"bkmrk-when-an-aircraft-cal-1\">\n<li>When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.</li>\n</ul>\n<p id=\"bkmrk-what-do-i-do-when-ha-1\">What do I do when handing over from CLD to GMC?</p>\n<ul id=\"bkmrk-whilst-operating-cld-1\">\n<li>Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.</li>\n</ul>\n<p id=\"bkmrk-what-happens-when-an-1\">What happens when an aircraft misses their TSAT slot?</p>\n<ul id=\"bkmrk-if-an-aircraft-misse\">\n<li>If an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.</li>\n</ul>\n<p id=\"bkmrk-useful-commands%3A-1\">Useful commands:</p>\n<ul id=\"bkmrk-.cdm-panel---hides-t-1\">\n<li>.cdm panel - Hides the CDM panel</li>\n<li>.cdm master/slave ICAO - Master, or slave an airport</li>\n<li>.cdm atfcm - Shows the ATFCM list</li>\n<li>.cdm refresh - Refresh the CDM plugin</li>\n</ul>\n<p id=\"bkmrk-a-video%2C-from-vatsim\">A video, from VATSIM Spain demonstrating the use of the plugin can be found <a href=\"https://www.youtube.com/watch?v=fHYT0_SH7qs\">HERE</a></p>\n','CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.\nHow to Start CDM?\n\nWhen loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\n\nWhen am I the \'master\' or the \'slave\'?\n\nDuring normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\n\nHow do I use CDM?\n\nWhen an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\n\nWhat do I do when handing over from CLD to GMC?\n\nWhilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.\n\nWhat happens when an aircraft misses their TSAT slot?\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\nUseful commands:\n\n.cdm panel - Hides the CDM panel\n.cdm master/slave ICAO - Master, or slave an airport\n.cdm atfcm - Shows the ATFCM list\n.cdm refresh - Refresh the CDM plugin\n\nHow to Start CDM?\n\nWhen loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\n\nWhen am I the \'master\' or the \'slave\'?\n\nDuring normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\n\nHow do I use CDM?\n\nWhen an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\n\nWhat do I do when handing over from CLD to GMC?\n\nWhilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.\n\nWhat happens when an aircraft misses their TSAT slot?\n\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\n\nUseful commands:\n\n.cdm panel - Hides the CDM panel\n.cdm master/slave ICAO - Master, or slave an airport\n.cdm atfcm - Shows the ATFCM list\n.cdm refresh - Refresh the CDM plugin\n\nA video, from VATSIM Spain demonstrating the use of the plugin can be found HERE\n','CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.\r\n\r\nHow to Start CDM?\r\n\r\n- When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\r\n\r\nWhen am I the \'master\' or the \'slave\'?\r\n- During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\r\n\r\nHow do I use CDM?\r\n- When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\r\n\r\nWhat do I do when handing over from CLD to GMC?\r\n- Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status. \r\n\r\nWhat happens when an aircraft misses their TSAT slot?\r\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\r\n\r\n\r\nUseful commands:\r\n- .cdm panel - Hides the CDM panel\r\n- .cdm master/slave ICAO - Master, or slave an airport\r\n- .cdm atfcm - Shows the ATFCM list\r\n- .cdm refresh - Refresh the CDM plugin\r\n\r\nHow to Start CDM?\r\n- When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\r\n\r\nWhen am I the \'master\' or the \'slave\'?\r\n- During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\r\n\r\nHow do I use CDM?\r\n- When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\r\n\r\nWhat do I do when handing over from CLD to GMC?\r\n- Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status. \r\n\r\nWhat happens when an aircraft misses their TSAT slot?\r\n- If an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\r\n\r\n\r\nUseful commands:\r\n\r\n- .cdm panel - Hides the CDM panel\r\n- .cdm master/slave ICAO - Master, or slave an airport\r\n- .cdm atfcm - Shows the ATFCM list\r\n- .cdm refresh - Refresh the CDM plugin\r\n\r\nA video, from VATSIM Spain demonstrating the use of the plugin can be found [HERE](https://www.youtube.com/watch?v=fHYT0_SH7qs)'),
(54,0,0,1,'markdown','<h2 id=\"bkmrk-what-is-audio-for-va\">What is Audio for VATSIM?</h2>\n<p id=\"bkmrk-audio-for-vatsim-%28af\">Audio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters.</p>\n<p id=\"bkmrk-our-resources-page%2C-\">Our resources page, where you can find the Audio for VATSIM download link can be found <a href=\"https://eaip2.vatssa.com/General/Resources/Links/\">here</a></p>\n<p id=\"bkmrk-%21%21%21-warning-audio-fo\">!!! warning\nAudio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found <a href=\"https://eaip2.vatssa.com/General/Resources/Software/TrackAudio%20Guide%20-%20Controller/\">here</a></p>\n<h2 id=\"bkmrk-setting-up-audio-for\">Setting up Audio for VATSIM</h2>\n<ul id=\"bkmrk-input-your-vatsim-de\">\n<li>Input your VATSIM Details\n<ul>\n<li>Your VATSIM CID</li>\n<li>Your VATSIM Password</li>\n</ul>\n</li>\n<li>Configure audio devices\n<ul>\n<li>Select a Headset, Speaker and Input device</li>\n</ul>\n</li>\n<li>Set a Push-To-Talk (PTT) bind</li>\n<li>Save your changes by pressing \'Apply all\' on the bottom right</li>\n</ul>\n<p id=\"bkmrk-\"><img src=\"img/AFVSettings.png\" alt=\"Audio for VATSIM settings\"></p>\n<h2 id=\"bkmrk-connecting-and-liste\">Connecting and Listening to ATC</h2>\n<ul id=\"bkmrk-open-audio-for-vatsi\">\n<li>Open Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.</li>\n<li>Click \'RX\' (receive) to listen in the frequency.</li>\n<li>Click \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.</li>\n</ul>\n<p id=\"bkmrk-still-having-issues-\">Still having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the <a href=\"https://community.vatsim.net/\">VATSIM Community Server\'s</a></p>\n','What is Audio for VATSIM?\nAudio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters.\nOur resources page, where you can find the Audio for VATSIM download link can be found here\n!!! warning\nAudio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found here\nSetting up Audio for VATSIM\n\nInput your VATSIM Details\n\nYour VATSIM CID\nYour VATSIM Password\n\n\nConfigure audio devices\n\nSelect a Headset, Speaker and Input device\n\n\nSet a Push-To-Talk (PTT) bind\nSave your changes by pressing \'Apply all\' on the bottom right\n\n\nConnecting and Listening to ATC\n\nOpen Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.\nClick \'RX\' (receive) to listen in the frequency.\nClick \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.\n\nStill having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the VATSIM Community Server\'s\n','## What is Audio for VATSIM?\r\nAudio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters. \r\n\r\nOur resources page, where you can find the Audio for VATSIM download link can be found [here](https://eaip2.vatssa.com/General/Resources/Links/)\r\n\r\n!!! warning \r\n    Audio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found [here](https://eaip2.vatssa.com/General/Resources/Software/TrackAudio%20Guide%20-%20Controller/)\r\n\r\n## Setting up Audio for VATSIM\r\n\r\n- Input your VATSIM Details\r\n  * Your VATSIM CID\r\n  * Your VATSIM Password\r\n- Configure audio devices\r\n  * Select a Headset, Speaker and Input device\r\n- Set a Push-To-Talk (PTT) bind\r\n- Save your changes by pressing \'Apply all\' on the bottom right\r\n\r\n![Audio for VATSIM settings](img/AFVSettings.png)\r\n\r\n## Connecting and Listening to ATC\r\n\r\n- Open Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.\r\n- Click \'RX\' (receive) to listen in the frequency.\r\n- Click \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.\r\n\r\nStill having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the [VATSIM Community Server\'s](https://community.vatsim.net/)'),
(55,0,0,3,'markdown','<h2 id=\"bkmrk-what-is-trackaudio%3F\">What is TrackAudio?</h2>\n<p id=\"bkmrk-trackaudio-is-a-next\">TrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.</p>\n<p id=\"bkmrk-congratulations%21-you\">Congratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In Maghreb\nwe use TrackAudio as our recommended audio client.</p>\n<h2 id=\"bkmrk-setting-up-trackaudi\">Setting up TrackAudio</h2>\n<ul id=\"bkmrk-input-your-vatsim-de\">\n<li>Input your VATSIM Details\n<ul>\n<li>Your VATSIM CID</li>\n<li>Your VATSIM Password</li>\n</ul>\n</li>\n<li>Configure audio devices\n<ul>\n<li>Select a Headset, Speaker and Input device</li>\n</ul>\n</li>\n<li>Set a Push-To-Talk (PTT) bind</li>\n<li>Save your changes by pressing \'Close\' on the bottom right</li>\n</ul>\n<h2 id=\"bkmrk-connecting-and-trans\">Connecting and Transmitting on Frequency</h2>\n<ul id=\"bkmrk-open-trackaudio%2C-if-\">\n<li>Open TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.</li>\n<li>Once connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.</li>\n<li>Click \'TX\' (transmit) to both recieve and transmit on the selected frequency.</li>\n<li>Use your selected PTT button to transmit on the frequency.</li>\n</ul>\n','What is TrackAudio?\nTrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.\nCongratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In Maghreb\nwe use TrackAudio as our recommended audio client.\nSetting up TrackAudio\n\nInput your VATSIM Details\n\nYour VATSIM CID\nYour VATSIM Password\n\n\nConfigure audio devices\n\nSelect a Headset, Speaker and Input device\n\n\nSet a Push-To-Talk (PTT) bind\nSave your changes by pressing \'Close\' on the bottom right\n\nConnecting and Transmitting on Frequency\n\nOpen TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.\nOnce connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.\nClick \'TX\' (transmit) to both recieve and transmit on the selected frequency.\nUse your selected PTT button to transmit on the frequency.\n\n','## What is TrackAudio?\r\n\r\nTrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.\r\n\r\nCongratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In Maghreb\r\nwe use TrackAudio as our recommended audio client.\r\n\r\n## Setting up TrackAudio\r\n\r\n- Input your VATSIM Details\r\n  * Your VATSIM CID\r\n  * Your VATSIM Password\r\n- Configure audio devices\r\n  * Select a Headset, Speaker and Input device\r\n- Set a Push-To-Talk (PTT) bind\r\n- Save your changes by pressing \'Close\' on the bottom right\r\n\r\n\r\n## Connecting and Transmitting on Frequency\r\n\r\n- Open TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.\r\n- Once connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.\r\n- Click \'TX\' (transmit) to both recieve and transmit on the selected frequency.\r\n- Use your selected PTT button to transmit on the frequency.'),
(57,0,0,17,'markdown','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<pre id=\"bkmrk-gmmn-atis-info-a-113\"><code>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. \nRWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \nRISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \nAFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \nON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \nHEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. \n01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A \n</code></pre>\n<hr id=\"bkmrk-\">\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<pre id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\"><code>GMMM &gt; Plugins &gt; vATIS &gt; The profile\n</code></pre>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<p align=\"center\" id=\"bkmrk--1\">\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\">\n</p>\nThen click \"Save\"\n<hr id=\"bkmrk--2\">\n<h2 id=\"bkmrk-how-to-connect-and-a\">How to connect and ATIS</h2>\n<p id=\"bkmrk-now-you-have-done-th\">Now you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"</p>\n<hr id=\"bkmrk--3\">\n<h2 id=\"bkmrk-optional-extras%3A\">Optional Extras:</h2>\n<h3 id=\"bkmrk-airport-conditions%3A\">Airport Conditions:</h3>\n<p id=\"bkmrk-after-you-load-the-r\">After you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:</p>\n<pre id=\"bkmrk-expect-ils%2Fz-rwy-35-\"><code>EXPECT ILS/Z RWY 35 LEFT. TRL FL50 \nRWY35L FOR LDG. /RWY35R FOR TAKEOFF. \nRISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \nRISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \nAFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \nON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \nHEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\n</code></pre>\n<p align=\"center\" id=\"bkmrk--4\">\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to-\">If you ever need to change them just type in the box and it should automatically save.</p>\n<hr id=\"bkmrk--5\">\n<h3 id=\"bkmrk-notams%3A\">NOTAMs:</h3>\n<p id=\"bkmrk-after-you-load-the-r-1\">After you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:</p>\n<p align=\"center\" id=\"bkmrk--6\">\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to--1\">If you ever need to change them just type in the box and it should automatically save</p>\n','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. \nRWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \nRISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \nAFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \nON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \nHEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. \n01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A \n\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\n\n\n\nThen click \"Save\"\n\nHow to connect and ATIS\nNow you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"\n\nOptional Extras:\nAirport Conditions:\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\nEXPECT ILS/Z RWY 35 LEFT. TRL FL50 \nRWY35L FOR LDG. /RWY35R FOR TAKEOFF. \nRISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \nRISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \nAFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \nON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \nHEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\n\n\n\n\nIf you ever need to change them just type in the box and it should automatically save.\n\nNOTAMs:\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\n\n\n\nIf you ever need to change them just type in the box and it should automatically save\n','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n``` \r\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. \r\nRWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \r\nRISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \r\nAFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \r\nON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \r\nHEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. \r\n01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A \r\n```\r\n\r\n---\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n```\r\nGMMM > Plugins > vATIS > The profile\r\n```\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n<p align=\"center\">\r\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\"/>\r\n</p>\r\nThen click \"Save\"\r\n\r\n---\r\n\r\n## How to connect and ATIS\r\n\r\nNow you have done that the hard part is over\r\nIn order to conect and ATIS you must choose the airport which you are controlling\r\nThen in the dropdown bar along the bottom, select the runway configuration you are using\r\nThen Click \"Connect\"\r\n\r\n---\r\n\r\n## Optional Extras:\r\n### Airport Conditions:\r\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\r\n\r\n```\r\nEXPECT ILS/Z RWY 35 LEFT. TRL FL50 \r\nRWY35L FOR LDG. /RWY35R FOR TAKEOFF. \r\nRISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \r\nRISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \r\nAFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \r\nON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \r\nHEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\r\n```\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save.\r\n\r\n---\r\n\r\n### NOTAMs:\r\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save'),
(60,0,0,1,'markdown','','',''),
(61,0,0,1,'markdown','','',''),
(62,0,0,1,'markdown','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<blockquote id=\"bkmrk-gmmn-atis-info-a-113\">\n<p>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A</p>\n</blockquote>\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<blockquote id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\">\n<p>GMMM &gt; Plugins &gt; vATIS &gt; The profile</p>\n</blockquote>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<p align=\"center\" id=\"bkmrk-\">\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\">\n</p>\nThen click \"Save\"\n<h2 id=\"bkmrk-how-to-connect-and-a\">How to connect and ATIS</h2>\n<p id=\"bkmrk-now-you-have-done-th\">Now you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"</p>\n<h2 id=\"bkmrk-optional-extras%3A\">Optional Extras:</h2>\n<h3 id=\"bkmrk-airport-conditions%3A\">Airport Conditions:</h3>\n<p id=\"bkmrk-after-you-load-the-r\">After you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:</p>\n<blockquote id=\"bkmrk-expect-ils%2Fz-rwy-35-\">\n<p>EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.</p>\n</blockquote>\n<p align=\"center\" id=\"bkmrk--1\">\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to-\">If you ever need to change them just type in the box and it should automatically save.</p>\n<h3 id=\"bkmrk-notams%3A\">NOTAMs:</h3>\n<p id=\"bkmrk-after-you-load-the-r-1\">After you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:</p>\n<p align=\"center\" id=\"bkmrk--2\">\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to--1\">If you ever need to change them just type in the box and it should automatically save</p>\n','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\n\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\n\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\n\n\n\nThen click \"Save\"\nHow to connect and ATIS\nNow you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"\nOptional Extras:\nAirport Conditions:\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\n\nEXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\n\n\n\n\nIf you ever need to change them just type in the box and it should automatically save.\nNOTAMs:\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\n\n\n\nIf you ever need to change them just type in the box and it should automatically save\n','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n> GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n> GMMM > Plugins > vATIS > The profile\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n<p align=\"center\">\r\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\"/>\r\n</p>\r\nThen click \"Save\"\r\n\r\n## How to connect and ATIS\r\n\r\nNow you have done that the hard part is over\r\nIn order to conect and ATIS you must choose the airport which you are controlling\r\nThen in the dropdown bar along the bottom, select the runway configuration you are using\r\nThen Click \"Connect\"\r\n\r\n## Optional Extras:\r\n### Airport Conditions:\r\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\r\n\r\n>EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save.\r\n\r\n### NOTAMs:\r\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save'),
(63,0,0,1,'markdown','','',''),
(64,0,0,1,'markdown','','',''),
(67,0,1,2,'markdown','<h2 id=\"bkmrk-how-to-use-%7Bblank%7D\">How to use {BLANK}</h2>\n<p id=\"bkmrk-explain\">EXPLAIN</p>\n<h2 id=\"bkmrk-what-does-%7Bblank%7D-do\">What does {BLANK} do?</h2>\n<ul id=\"bkmrk-explain-1\">\n<li>Explain</li>\n</ul>\n<h2 id=\"bkmrk-how-do-i-set-up-%7Bbla\">How do i set up {BLANK}</h2>\n<p id=\"bkmrk-explain-2\">Explain</p>\n<h1 id=\"bkmrk-change-to-fix-your-p\">change to fix your page, but if this works, use it</h1>\n','How to use {BLANK}\nEXPLAIN\nWhat does {BLANK} do?\n\nExplain\n\nHow do i set up {BLANK}\nExplain\nchange to fix your page, but if this works, use it\n','## How to use {BLANK}\r\n\r\nEXPLAIN\r\n\r\n## What does {BLANK} do?\r\n\r\n- Explain\r\n\r\n## How do i set up {BLANK}\r\n\r\nExplain\r\n\r\n# change to fix your page, but if this works, use it'),
(69,0,0,2,'markdown','<h2 id=\"bkmrk-step-1\">Step 1</h2>\n<p id=\"bkmrk-find-the-shelf-you-a\">Find the shelf you are adding to</p>\n<h2 id=\"bkmrk-step-2\">Step 2</h2>\n<p id=\"bkmrk-find-the-book-you-ar\">Find the book you are adding to, if there is no book then you make one</p>\n<p align=\"center\" id=\"bkmrk-\">\n<img src=\"/attachments/4\" alt=\"drawing\" width=\"200\">\n</p>\n<h2 id=\"bkmrk-step-3\">Step 3</h2>\n<p id=\"bkmrk-then-add-a-new-%22page\">Then Add a new \"Page\" into that chapter following the guide:\n<a href=\"/books/how-to-use/page/how-to-use-md-the-file-type\">HERE</a></p>\n<h2 id=\"bkmrk-step-4\">Step 4</h2>\n<p id=\"bkmrk-once-you-are-done-cl\">Once you are done clck the \"Save Page\" Button in the top right</p>\n','Step 1\nFind the shelf you are adding to\nStep 2\nFind the book you are adding to, if there is no book then you make one\n\n\n\nStep 3\nThen Add a new \"Page\" into that chapter following the guide:\nHERE\nStep 4\nOnce you are done clck the \"Save Page\" Button in the top right\n','## Step 1\r\nFind the shelf you are adding to\r\n\r\n## Step 2\r\nFind the book you are adding to, if there is no book then you make one\r\n<p align=\"center\">\r\n<img src=\"/attachments/4\", alt=\"drawing\", width= 200>\r\n</p>\r\n\r\n## Step 3\r\nThen Add a new \"Page\" into that chapter following the guide:\r\n[HERE](/books/how-to-use/page/how-to-use-md-the-file-type)\r\n\r\n## Step 4\r\nOnce you are done clck the \"Save Page\" Button in the top right'),
(70,0,0,3,'markdown','<h1 id=\"bkmrk-markdown-guide-%28with\">Markdown Guide (with Examples)</h1>\n<p id=\"bkmrk-markdown-is-a-simple\">Markdown is a simple way to format text using plain characters. It’s widely used for notes, documentation, GitHub READMEs, blogs, and more.</p>\n<hr id=\"bkmrk-\">\n<h2 id=\"bkmrk-1.-headings\">1. Headings</h2>\n<p id=\"bkmrk-use-%23-to-create-head\">Use <code>#</code> to create headings.</p>\n<pre id=\"bkmrk-%23-heading-1-%23%23-headi\"><code class=\"language-md\"># Heading 1\n## Heading 2\n### Heading 3\n#### Heading 4\n</code></pre>\n<h3 id=\"bkmrk-example-output%3A\">Example output:</h3>\n<h1 id=\"bkmrk-heading-1\">Heading 1</h1>\n<h2 id=\"bkmrk-heading-2\">Heading 2</h2>\n<h3 id=\"bkmrk-heading-3\">Heading 3</h3>\n<hr id=\"bkmrk--1\">\n<h2 id=\"bkmrk-2.-bold-and-italic-t\">2. Bold and Italic Text</h2>\n<h3 id=\"bkmrk-bold\">Bold</h3>\n<p id=\"bkmrk-use-%2A%2Adouble-asteris\">Use <code>**double asterisks**</code> or <code>__double underscores__</code>.</p>\n<pre id=\"bkmrk-%2A%2Athis-is-bold-text%2A\"><code class=\"language-md\">**This is bold text**\n__This is also bold__\n</code></pre>\n<h3 id=\"bkmrk-italic\">Italic</h3>\n<p id=\"bkmrk-use-%2Asingle-asterisk\">Use <code>*single asterisks*</code> or <code>_underscores_</code>.</p>\n<pre id=\"bkmrk-%2Athis-is-italic-text\"><code class=\"language-md\">*This is italic text*\n_This is also italic_\n</code></pre>\n<h3 id=\"bkmrk-bold-%2B-italic\">Bold + Italic</h3>\n<pre id=\"bkmrk-%2A%2A%2Athis-is-bold-and-\"><code class=\"language-md\">***This is bold and italic***\n</code></pre>\n<hr id=\"bkmrk--2\">\n<h2 id=\"bkmrk-3.-lists\">3. Lists</h2>\n<h3 id=\"bkmrk-unordered-lists\">Unordered Lists</h3>\n<p id=\"bkmrk-use--%2C-%2A%2C-or-%2B.\">Use <code>-</code>, <code>*</code>, or <code>+</code>.</p>\n<pre id=\"bkmrk---apples---bananas--\"><code class=\"language-md\">- Apples\n- Bananas\n- Oranges\n</code></pre>\n<h3 id=\"bkmrk-ordered-lists\">Ordered Lists</h3>\n<p id=\"bkmrk-use-numbers.\">Use numbers.</p>\n<pre id=\"bkmrk-1.-first-item-2.-sec\"><code class=\"language-md\">1. First item\n2. Second item\n3. Third item\n</code></pre>\n<hr id=\"bkmrk--3\">\n<h2 id=\"bkmrk-4.-links\">4. Links</h2>\n<pre id=\"bkmrk-%5Bopenai%5D%28https%3A%2F%2Fwww\"><code class=\"language-md\">[OpenAI](https://www.openai.com)\n</code></pre>\n<hr id=\"bkmrk--4\">\n<h2 id=\"bkmrk-5.-images\">5. Images</h2>\n<pre id=\"bkmrk-%21%5Balt-text%5D%28https%3A%2F%2F\"><code class=\"language-md\">![Alt text](https://example.com/image.jpg)\n</code></pre>\n<hr id=\"bkmrk--5\">\n<h2 id=\"bkmrk-6.-code\">6. Code</h2>\n<h3 id=\"bkmrk-inline-code\">Inline code</h3>\n<p id=\"bkmrk-use-backticks-%60%3A\">Use backticks <code>`</code>:</p>\n<pre id=\"bkmrk-use-the-%60print%28%29%60-fu\"><code class=\"language-md\">Use the `print()` function in Python.\n</code></pre>\n<h3 id=\"bkmrk-code-blocks\">Code blocks</h3>\n<p id=\"bkmrk-use-triple-backticks\">Use triple backticks:</p>\n<pre id=\"bkmrk-%60%60%60python-def-hello%28\"><code class=\"language-md\">```python\ndef hello():\n    print(\"Hello, world!\")\n</code></pre>\n<pre id=\"bkmrk-----%23%23-7.-blockquote\"><code>\n---\n\n## 7. Blockquotes\n\nUse `&gt;`:\n\n```md\n&gt; This is a quote.\n</code></pre>\n<hr id=\"bkmrk--6\">\n<h2 id=\"bkmrk-8.-horizontal-line\">8. Horizontal Line</h2>\n<p id=\"bkmrk-use-three-dashes%3A\">Use three dashes:</p>\n<pre id=\"bkmrk----\"><code class=\"language-md\">---\n</code></pre>\n<hr id=\"bkmrk--7\">\n<h2 id=\"bkmrk-9.-tables\">9. Tables</h2>\n<pre id=\"bkmrk-%7C-name-%7C-age-%7C-city-\"><code class=\"language-md\">| Name   | Age | City    |\n|--------|-----|---------|\n| Alice  | 14  | London  |\n| Bob    | 15  | Paris   |\n</code></pre>\n<hr id=\"bkmrk--8\">\n<h2 id=\"bkmrk-10.-checkboxes-%28task\">10. Checkboxes (Task Lists)</h2>\n<pre id=\"bkmrk---%5Bx%5D-learn-markdown\"><code class=\"language-md\">- [x] Learn Markdown\n- [ ] Build a project\n- [ ] Master formatting\n</code></pre>\n<hr id=\"bkmrk--9\">\n<h2 id=\"bkmrk-11.-escaping-charact\">11. Escaping Characters</h2>\n<p id=\"bkmrk-if-you-want-to-show-\">If you want to show special characters, use a backslash <code>\\</code>.</p>\n<pre id=\"bkmrk-%5C%2Athis-is-not-italic\"><code class=\"language-md\">\\*This is not italic\\*\n</code></pre>\n<hr id=\"bkmrk--10\">\n<h2 id=\"bkmrk-12.-combining-everyt\">12. Combining Everything</h2>\n<pre id=\"bkmrk-%23-my-notes-%23%23-today%E2%80%99\"><code class=\"language-md\"># My Notes\n\n## Today’s Tasks\n\n- [x] Study Markdown\n- [ ] Practice coding\n\n### Reminder\n\n&gt; “Practice makes progress.”\n\nCheck [this site](https://maghrebvacc.com) for more info.\n\n```\n</code></pre>\n<pre id=\"bkmrk-----%23%23-quick-cheat-s\"><code>\n---\n\n## Quick Cheat Sheet\n\n| Feature | Syntax |\n|--------|--------|\n| Heading | `#` |\n| Bold | `**text**` |\n| Italic | `*text*` |\n| Link | `[text](url)` |\n| List | `- item` |\n| Code | `` `code` `` |\n| Blockquote | `&gt;` |\n\n---\n</code></pre>\n','Markdown Guide (with Examples)\nMarkdown is a simple way to format text using plain characters. It’s widely used for notes, documentation, GitHub READMEs, blogs, and more.\n\n1. Headings\nUse # to create headings.\n# Heading 1\n## Heading 2\n### Heading 3\n#### Heading 4\n\nExample output:\nHeading 1\nHeading 2\nHeading 3\n\n2. Bold and Italic Text\nBold\nUse **double asterisks** or __double underscores__.\n**This is bold text**\n__This is also bold__\n\nItalic\nUse *single asterisks* or _underscores_.\n*This is italic text*\n_This is also italic_\n\nBold + Italic\n***This is bold and italic***\n\n\n3. Lists\nUnordered Lists\nUse -, *, or +.\n- Apples\n- Bananas\n- Oranges\n\nOrdered Lists\nUse numbers.\n1. First item\n2. Second item\n3. Third item\n\n\n4. Links\n[OpenAI](https://www.openai.com)\n\n\n5. Images\n![Alt text](https://example.com/image.jpg)\n\n\n6. Code\nInline code\nUse backticks `:\nUse the `print()` function in Python.\n\nCode blocks\nUse triple backticks:\n```python\ndef hello():\n    print(\"Hello, world!\")\n\n\n---\n\n## 7. Blockquotes\n\nUse `>`:\n\n```md\n> This is a quote.\n\n\n8. Horizontal Line\nUse three dashes:\n---\n\n\n9. Tables\n| Name   | Age | City    |\n|--------|-----|---------|\n| Alice  | 14  | London  |\n| Bob    | 15  | Paris   |\n\n\n10. Checkboxes (Task Lists)\n- [x] Learn Markdown\n- [ ] Build a project\n- [ ] Master formatting\n\n\n11. Escaping Characters\nIf you want to show special characters, use a backslash \\.\n\\*This is not italic\\*\n\n\n12. Combining Everything\n# My Notes\n\n## Today’s Tasks\n\n- [x] Study Markdown\n- [ ] Practice coding\n\n### Reminder\n\n> “Practice makes progress.”\n\nCheck [this site](https://maghrebvacc.com) for more info.\n\n```\n\n\n---\n\n## Quick Cheat Sheet\n\n| Feature | Syntax |\n|--------|--------|\n| Heading | `#` |\n| Bold | `**text**` |\n| Italic | `*text*` |\n| Link | `[text](url)` |\n| List | `- item` |\n| Code | `` `code` `` |\n| Blockquote | `>` |\n\n---\n\n','# Markdown Guide (with Examples)\r\n\r\nMarkdown is a simple way to format text using plain characters. It’s widely used for notes, documentation, GitHub READMEs, blogs, and more.\r\n\r\n---\r\n\r\n## 1. Headings\r\n\r\nUse `#` to create headings.\r\n\r\n```md\r\n# Heading 1\r\n## Heading 2\r\n### Heading 3\r\n#### Heading 4\r\n```\r\n\r\n### Example output:\r\n\r\n# Heading 1\r\n\r\n## Heading 2\r\n\r\n### Heading 3\r\n\r\n---\r\n\r\n## 2. Bold and Italic Text\r\n\r\n### Bold\r\n\r\nUse `**double asterisks**` or `__double underscores__`.\r\n\r\n```md\r\n**This is bold text**\r\n__This is also bold__\r\n```\r\n\r\n### Italic\r\n\r\nUse `*single asterisks*` or `_underscores_`.\r\n\r\n```md\r\n*This is italic text*\r\n_This is also italic_\r\n```\r\n\r\n### Bold + Italic\r\n\r\n```md\r\n***This is bold and italic***\r\n```\r\n\r\n---\r\n\r\n## 3. Lists\r\n\r\n### Unordered Lists\r\n\r\nUse `-`, `*`, or `+`.\r\n\r\n```md\r\n- Apples\r\n- Bananas\r\n- Oranges\r\n```\r\n\r\n### Ordered Lists\r\n\r\nUse numbers.\r\n\r\n```md\r\n1. First item\r\n2. Second item\r\n3. Third item\r\n```\r\n\r\n---\r\n\r\n## 4. Links\r\n\r\n```md\r\n[OpenAI](https://www.openai.com)\r\n```\r\n\r\n---\r\n\r\n## 5. Images\r\n\r\n```md\r\n![Alt text](https://example.com/image.jpg)\r\n```\r\n\r\n---\r\n\r\n## 6. Code\r\n\r\n### Inline code\r\n\r\nUse backticks `` ` ``:\r\n\r\n```md\r\nUse the `print()` function in Python.\r\n```\r\n\r\n### Code blocks\r\n\r\nUse triple backticks:\r\n\r\n````md\r\n```python\r\ndef hello():\r\n    print(\"Hello, world!\")\r\n````\r\n\r\n````\r\n\r\n---\r\n\r\n## 7. Blockquotes\r\n\r\nUse `>`:\r\n\r\n```md\r\n> This is a quote.\r\n````\r\n\r\n---\r\n\r\n## 8. Horizontal Line\r\n\r\nUse three dashes:\r\n\r\n```md\r\n---\r\n```\r\n\r\n---\r\n\r\n## 9. Tables\r\n\r\n```md\r\n| Name   | Age | City    |\r\n|--------|-----|---------|\r\n| Alice  | 14  | London  |\r\n| Bob    | 15  | Paris   |\r\n```\r\n\r\n---\r\n\r\n## 10. Checkboxes (Task Lists)\r\n\r\n```md\r\n- [x] Learn Markdown\r\n- [ ] Build a project\r\n- [ ] Master formatting\r\n```\r\n\r\n---\r\n\r\n## 11. Escaping Characters\r\n\r\nIf you want to show special characters, use a backslash `\\`.\r\n\r\n```md\r\n\\*This is not italic\\*\r\n```\r\n\r\n---\r\n\r\n## 12. Combining Everything\r\n\r\n````md\r\n# My Notes\r\n\r\n## Today’s Tasks\r\n\r\n- [x] Study Markdown\r\n- [ ] Practice coding\r\n\r\n### Reminder\r\n\r\n> “Practice makes progress.”\r\n\r\nCheck [this site](https://maghrebvacc.com) for more info.\r\n\r\n```\r\n````\r\n\r\n```\r\n\r\n---\r\n\r\n## Quick Cheat Sheet\r\n\r\n| Feature | Syntax |\r\n|--------|--------|\r\n| Heading | `#` |\r\n| Bold | `**text**` |\r\n| Italic | `*text*` |\r\n| Link | `[text](url)` |\r\n| List | `- item` |\r\n| Code | `` `code` `` |\r\n| Blockquote | `>` |\r\n\r\n---\r\n```'),
(71,0,0,1,'markdown','','',''),
(73,0,0,1,'markdown','','',''),
(75,0,0,1,'markdown','<h2 id=\"bkmrk-what-is-audio-for-va\">What is Audio for VATSIM?</h2>\n<p id=\"bkmrk-audio-for-vatsim-%28af\">Audio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters.</p>\n<p id=\"bkmrk-our-resources-page%2C-\">Our resources page, where you can find the Audio for VATSIM download link can be found <a href=\"https://eaip2.vatssa.com/General/Resources/Links/\">here</a></p>\n<p id=\"bkmrk-%21%21%21-warning-audio-fo\">!!! warning\nAudio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found <a href=\"https://eaip2.vatssa.com/General/Resources/Software/TrackAudio%20Guide%20-%20Controller/\">here</a></p>\n<h2 id=\"bkmrk-setting-up-audio-for\">Setting up Audio for VATSIM</h2>\n<ul id=\"bkmrk-input-your-vatsim-de\">\n<li>Input your VATSIM Details\n<ul>\n<li>Your VATSIM CID</li>\n<li>Your VATSIM Password</li>\n</ul>\n</li>\n<li>Configure audio devices\n<ul>\n<li>Select a Headset, Speaker and Input device</li>\n</ul>\n</li>\n<li>Set a Push-To-Talk (PTT) bind</li>\n<li>Save your changes by pressing \'Apply all\' on the bottom right</li>\n</ul>\n<p id=\"bkmrk-\"><img src=\"img/AFVSettings.png\" alt=\"Audio for VATSIM settings\"></p>\n<h2 id=\"bkmrk-connecting-and-liste\">Connecting and Listening to ATC</h2>\n<ul id=\"bkmrk-open-audio-for-vatsi\">\n<li>Open Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.</li>\n<li>Click \'RX\' (receive) to listen in the frequency.</li>\n<li>Click \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.</li>\n</ul>\n<p id=\"bkmrk-still-having-issues-\">Still having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the <a href=\"https://community.vatsim.net/\">VATSIM Community Server\'s</a></p>\n','What is Audio for VATSIM?\nAudio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters.\nOur resources page, where you can find the Audio for VATSIM download link can be found here\n!!! warning\nAudio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found here\nSetting up Audio for VATSIM\n\nInput your VATSIM Details\n\nYour VATSIM CID\nYour VATSIM Password\n\n\nConfigure audio devices\n\nSelect a Headset, Speaker and Input device\n\n\nSet a Push-To-Talk (PTT) bind\nSave your changes by pressing \'Apply all\' on the bottom right\n\n\nConnecting and Listening to ATC\n\nOpen Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.\nClick \'RX\' (receive) to listen in the frequency.\nClick \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.\n\nStill having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the VATSIM Community Server\'s\n','## What is Audio for VATSIM?\r\nAudio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters. \r\n\r\nOur resources page, where you can find the Audio for VATSIM download link can be found [here](https://eaip2.vatssa.com/General/Resources/Links/)\r\n\r\n!!! warning \r\n    Audio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found [here](https://eaip2.vatssa.com/General/Resources/Software/TrackAudio%20Guide%20-%20Controller/)\r\n\r\n## Setting up Audio for VATSIM\r\n\r\n- Input your VATSIM Details\r\n  * Your VATSIM CID\r\n  * Your VATSIM Password\r\n- Configure audio devices\r\n  * Select a Headset, Speaker and Input device\r\n- Set a Push-To-Talk (PTT) bind\r\n- Save your changes by pressing \'Apply all\' on the bottom right\r\n\r\n![Audio for VATSIM settings](img/AFVSettings.png)\r\n\r\n## Connecting and Listening to ATC\r\n\r\n- Open Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.\r\n- Click \'RX\' (receive) to listen in the frequency.\r\n- Click \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.\r\n\r\nStill having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the [VATSIM Community Server\'s](https://community.vatsim.net/)'),
(76,0,0,1,'markdown','<h2 id=\"bkmrk-what-is-trackaudio%3F\">What is TrackAudio?</h2>\n<p id=\"bkmrk-trackaudio-is-a-next\">TrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.</p>\n<p id=\"bkmrk-congratulations%21-you\">Congratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In Maghreb\nwe use TrackAudio as our recommended audio client.</p>\n<h2 id=\"bkmrk-setting-up-trackaudi\">Setting up TrackAudio</h2>\n<ul id=\"bkmrk-input-your-vatsim-de\">\n<li>Input your VATSIM Details\n<ul>\n<li>Your VATSIM CID</li>\n<li>Your VATSIM Password</li>\n</ul>\n</li>\n<li>Configure audio devices\n<ul>\n<li>Select a Headset, Speaker and Input device</li>\n</ul>\n</li>\n<li>Set a Push-To-Talk (PTT) bind</li>\n<li>Save your changes by pressing \'Close\' on the bottom right</li>\n</ul>\n<h2 id=\"bkmrk-connecting-and-trans\">Connecting and Transmitting on Frequency</h2>\n<ul id=\"bkmrk-open-trackaudio%2C-if-\">\n<li>Open TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.</li>\n<li>Once connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.</li>\n<li>Click \'TX\' (transmit) to both recieve and transmit on the selected frequency.</li>\n<li>Use your selected PTT button to transmit on the frequency.</li>\n</ul>\n','What is TrackAudio?\nTrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.\nCongratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In Maghreb\nwe use TrackAudio as our recommended audio client.\nSetting up TrackAudio\n\nInput your VATSIM Details\n\nYour VATSIM CID\nYour VATSIM Password\n\n\nConfigure audio devices\n\nSelect a Headset, Speaker and Input device\n\n\nSet a Push-To-Talk (PTT) bind\nSave your changes by pressing \'Close\' on the bottom right\n\nConnecting and Transmitting on Frequency\n\nOpen TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.\nOnce connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.\nClick \'TX\' (transmit) to both recieve and transmit on the selected frequency.\nUse your selected PTT button to transmit on the frequency.\n\n','## What is TrackAudio?\r\n\r\nTrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.\r\n\r\nCongratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In Maghreb\r\nwe use TrackAudio as our recommended audio client.\r\n\r\n## Setting up TrackAudio\r\n\r\n- Input your VATSIM Details\r\n  * Your VATSIM CID\r\n  * Your VATSIM Password\r\n- Configure audio devices\r\n  * Select a Headset, Speaker and Input device\r\n- Set a Push-To-Talk (PTT) bind\r\n- Save your changes by pressing \'Close\' on the bottom right\r\n\r\n\r\n## Connecting and Transmitting on Frequency\r\n\r\n- Open TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.\r\n- Once connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.\r\n- Click \'TX\' (transmit) to both recieve and transmit on the selected frequency.\r\n- Use your selected PTT button to transmit on the frequency.');
/*!40000 ALTER TABLE `entity_page_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_permissions`
--

DROP TABLE IF EXISTS `entity_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` bigint(20) unsigned NOT NULL,
  `entity_type` varchar(25) NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT 0,
  `create` tinyint(1) NOT NULL DEFAULT 0,
  `update` tinyint(1) NOT NULL DEFAULT 0,
  `delete` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `new_entity_permissions_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `new_entity_permissions_role_id_index` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_permissions`
--

LOCK TABLES `entity_permissions` WRITE;
/*!40000 ALTER TABLE `entity_permissions` DISABLE KEYS */;
INSERT INTO `entity_permissions` VALUES
(1,63,'page',2,1,0,1,1),
(2,63,'page',0,0,0,0,0),
(3,65,'bookshelf',5,1,1,1,1),
(4,65,'bookshelf',2,1,1,1,1),
(5,65,'bookshelf',0,0,0,0,0);
/*!40000 ALTER TABLE `entity_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `favouritable_id` bigint(20) unsigned NOT NULL,
  `favouritable_type` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favouritable_index` (`favouritable_id`,`favouritable_type`),
  KEY `favourites_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `path` varchar(400) NOT NULL,
  `type` varchar(191) NOT NULL,
  `uploaded_to` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_type_index` (`type`),
  KEY `images_uploaded_to_index` (`uploaded_to`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES
(21,'Maghreb_vACC_Full_white_trans_1.png','http://localhost:6875/uploads/images/system/2026-05/Lqamaghreb-vacc-full-white-trans-1.png','2026-05-05 09:57:37','2026-05-05 09:57:37',NULL,NULL,'/uploads/images/system/2026-05/Lqamaghreb-vacc-full-white-trans-1.png','system',0),
(22,'Maghreb_vACC_Full_black_trans.png','http://localhost:6875/uploads/images/system/2026-05/maghreb-vacc-full-black-trans.png','2026-05-05 09:57:37','2026-05-05 09:57:37',NULL,NULL,'/uploads/images/system/2026-05/maghreb-vacc-full-black-trans.png','system',0),
(23,'Maghreb_vACC_Full_black_trans.png','http://localhost:6875/uploads/images/system/2026-05/V6Cmaghreb-vacc-full-black-trans.png','2026-05-05 09:57:37','2026-05-05 09:57:37',NULL,NULL,'/uploads/images/system/2026-05/V6Cmaghreb-vacc-full-black-trans.png','system',0),
(24,'Maghreb_vACC_Full_black_trans.png','http://localhost:6875/uploads/images/system/2026-05/rdemaghreb-vacc-full-black-trans.png','2026-05-05 09:57:37','2026-05-05 09:57:37',NULL,NULL,'/uploads/images/system/2026-05/rdemaghreb-vacc-full-black-trans.png','system',0),
(25,'Maghreb_vACC_Full_black_trans.png','http://localhost:6875/uploads/images/system/2026-05/laumaghreb-vacc-full-black-trans.png','2026-05-05 09:57:37','2026-05-05 09:57:37',NULL,NULL,'/uploads/images/system/2026-05/laumaghreb-vacc-full-black-trans.png','system',0),
(26,'Maghreb_vACC_Full_black_trans.png','http://localhost:6875/uploads/images/system/2026-05/66Gmaghreb-vacc-full-black-trans.png','2026-05-05 09:57:37','2026-05-05 09:57:37',NULL,NULL,'/uploads/images/system/2026-05/66Gmaghreb-vacc-full-black-trans.png','system',0),
(29,'uVoKpIPwca-avatar.png','http://localhost:6875/uploads/images/user/2026-05/uvokpipwca-avatar.png','2026-05-05 10:15:31','2026-05-05 10:15:31',7,7,'/uploads/images/user/2026-05/uvokpipwca-avatar.png','user',7),
(30,'aIefLMlPEH-avatar.png','http://localhost:6875/uploads/images/user/2026-05/aieflmlpeh-avatar.png','2026-05-05 10:16:35','2026-05-05 10:16:35',8,8,'/uploads/images/user/2026-05/aieflmlpeh-avatar.png','user',8),
(31,'download.jpeg','http://localhost:6875/uploads/images/cover_bookshelf/2026-05/download.jpeg','2026-05-05 10:21:05','2026-05-05 10:21:05',8,8,'/uploads/images/cover_bookshelf/2026-05/download.jpeg','cover_bookshelf',9),
(32,'images.jpeg','http://localhost:6875/uploads/images/cover_bookshelf/2026-05/images.jpeg','2026-05-05 10:31:51','2026-05-05 10:31:51',8,8,'/uploads/images/cover_bookshelf/2026-05/images.jpeg','cover_bookshelf',11),
(33,'1583345053333.jpeg','http://localhost:6875/uploads/images/cover_bookshelf/2026-05/1583345053333.jpeg','2026-05-05 10:33:10','2026-05-05 10:33:10',8,8,'/uploads/images/cover_bookshelf/2026-05/1583345053333.jpeg','cover_bookshelf',13),
(34,'1822905_shutterstockScottLiddellAir-Traffic-Control-Tower-at-Edinburgh-Airport.jpg','http://localhost:6875/uploads/images/cover_bookshelf/2026-05/1822905-shutterstockscottliddellair-traffic-control-tower-at-edinburgh-airport.jpg','2026-05-05 10:38:54','2026-05-05 10:38:54',8,8,'/uploads/images/cover_bookshelf/2026-05/1822905-shutterstockscottliddellair-traffic-control-tower-at-edinburgh-airport.jpg','cover_bookshelf',37),
(35,'MX7A9572.jpg','http://localhost:6875/uploads/images/cover_bookshelf/2026-05/mx7a9572.jpg','2026-05-05 10:40:07','2026-05-05 10:40:07',8,8,'/uploads/images/cover_bookshelf/2026-05/mx7a9572.jpg','cover_bookshelf',38),
(36,'images (1).jpeg','http://localhost:6875/uploads/images/cover_bookshelf/2026-05/images-1.jpeg','2026-05-05 10:42:44','2026-05-05 10:42:44',8,8,'/uploads/images/cover_bookshelf/2026-05/images-1.jpeg','cover_bookshelf',44),
(37,'DAV_2799-colossal_Budapest_ATC_tower.jpg','http://localhost:6875/uploads/images/cover_book/2026-05/dav-2799-colossal-budapest-atc-tower.jpg','2026-05-05 10:47:51','2026-05-05 10:47:51',8,8,'/uploads/images/cover_book/2026-05/dav-2799-colossal-budapest-atc-tower.jpg','cover_book',39),
(38,'HMCWShKerkfeNQmYYhE3p7.jpg','http://localhost:6875/uploads/images/cover_book/2026-05/hmcwshkerkfenqmyyhe3p7.jpg','2026-05-05 10:48:51','2026-05-05 10:48:51',8,8,'/uploads/images/cover_book/2026-05/hmcwshkerkfenqmyyhe3p7.jpg','cover_book',40),
(39,'unnamed.jpg','http://localhost:6875/uploads/images/cover_book/2026-05/unnamed.jpg','2026-05-05 11:07:04','2026-05-05 11:07:04',8,8,'/uploads/images/cover_book/2026-05/unnamed.jpg','cover_book',56),
(40,'unnamed.jpg','http://localhost:6875/uploads/images/cover_bookshelf/2026-05/unnamed.jpg','2026-05-05 11:42:36','2026-05-05 11:42:36',8,8,'/uploads/images/cover_bookshelf/2026-05/unnamed.jpg','cover_bookshelf',59),
(42,'how-to-become-an-editor-guide-51fa3a.webp','http://localhost:6875/uploads/images/cover_bookshelf/2026-05/how-to-become-an-editor-guide-51fa3a.webp','2026-05-05 12:19:28','2026-05-05 12:19:28',8,8,'/uploads/images/cover_bookshelf/2026-05/how-to-become-an-editor-guide-51fa3a.webp','cover_bookshelf',65),
(43,'hmcwshkerkfenqmyyhe3p7.jpg','http://localhost:6875/uploads/images/cover_book/2026-05/1dMhmcwshkerkfenqmyyhe3p7.jpg','2026-05-05 12:21:20','2026-05-05 12:21:20',8,8,'/uploads/images/cover_book/2026-05/1dMhmcwshkerkfenqmyyhe3p7.jpg','cover_book',74);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imports`
--

DROP TABLE IF EXISTS `imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `imports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `path` varchar(191) NOT NULL,
  `size` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `metadata` longtext NOT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imports_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imports`
--

LOCK TABLES `imports` WRITE;
/*!40000 ALTER TABLE `imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joint_permissions`
--

DROP TABLE IF EXISTS `joint_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `joint_permissions` (
  `role_id` int(11) NOT NULL,
  `entity_type` varchar(191) NOT NULL,
  `entity_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `owner_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`role_id`,`entity_type`,`entity_id`),
  KEY `joint_permissions_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `joint_permissions_role_id_index` (`role_id`),
  KEY `joint_permissions_status_index` (`status`),
  KEY `joint_permissions_owner_id_index` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joint_permissions`
--

LOCK TABLES `joint_permissions` WRITE;
/*!40000 ALTER TABLE `joint_permissions` DISABLE KEYS */;
INSERT INTO `joint_permissions` VALUES
(1,'book',4,3,8),
(1,'book',7,3,8),
(1,'book',10,3,8),
(1,'book',12,3,8),
(1,'book',14,3,8),
(1,'book',25,3,8),
(1,'book',32,3,8),
(1,'book',34,3,8),
(1,'book',35,3,8),
(1,'book',36,3,8),
(1,'book',39,3,8),
(1,'book',40,3,8),
(1,'book',41,3,8),
(1,'book',56,3,8),
(1,'book',58,3,8),
(1,'book',66,3,8),
(1,'book',68,3,8),
(1,'book',74,3,8),
(1,'bookshelf',6,3,8),
(1,'bookshelf',9,3,8),
(1,'bookshelf',11,3,8),
(1,'bookshelf',13,3,8),
(1,'bookshelf',37,3,8),
(1,'bookshelf',38,3,8),
(1,'bookshelf',44,3,8),
(1,'bookshelf',59,3,8),
(1,'bookshelf',65,3,8),
(1,'chapter',5,3,8),
(1,'chapter',8,3,8),
(1,'chapter',18,3,8),
(1,'chapter',21,3,8),
(1,'chapter',27,3,8),
(1,'chapter',28,3,8),
(1,'chapter',30,3,8),
(1,'chapter',31,3,8),
(1,'chapter',33,3,8),
(1,'chapter',42,3,8),
(1,'chapter',43,3,8),
(1,'chapter',45,3,8),
(1,'chapter',46,3,8),
(1,'chapter',47,3,8),
(1,'chapter',48,3,8),
(1,'chapter',49,3,8),
(1,'chapter',72,3,8),
(1,'page',15,3,8),
(1,'page',16,3,8),
(1,'page',17,3,8),
(1,'page',19,3,8),
(1,'page',20,3,8),
(1,'page',22,3,8),
(1,'page',23,3,8),
(1,'page',24,3,8),
(1,'page',26,3,8),
(1,'page',29,3,8),
(1,'page',50,3,8),
(1,'page',51,3,8),
(1,'page',52,3,8),
(1,'page',53,3,8),
(1,'page',54,3,8),
(1,'page',55,3,8),
(1,'page',57,3,8),
(1,'page',60,3,8),
(1,'page',61,3,8),
(1,'page',62,3,8),
(1,'page',63,3,8),
(1,'page',64,3,8),
(1,'page',67,3,8),
(1,'page',69,3,8),
(1,'page',70,3,8),
(1,'page',71,3,8),
(1,'page',73,3,8),
(1,'page',75,3,8),
(1,'page',76,3,8),
(2,'book',4,1,8),
(2,'book',7,1,8),
(2,'book',10,1,8),
(2,'book',12,1,8),
(2,'book',14,1,8),
(2,'book',25,1,8),
(2,'book',32,1,8),
(2,'book',34,1,8),
(2,'book',35,1,8),
(2,'book',36,1,8),
(2,'book',39,1,8),
(2,'book',40,1,8),
(2,'book',41,1,8),
(2,'book',56,1,8),
(2,'book',58,1,8),
(2,'book',66,1,8),
(2,'book',68,1,8),
(2,'book',74,1,8),
(2,'bookshelf',6,1,8),
(2,'bookshelf',9,1,8),
(2,'bookshelf',11,1,8),
(2,'bookshelf',13,1,8),
(2,'bookshelf',37,1,8),
(2,'bookshelf',38,1,8),
(2,'bookshelf',44,1,8),
(2,'bookshelf',59,1,8),
(2,'bookshelf',65,3,NULL),
(2,'chapter',5,1,8),
(2,'chapter',8,1,8),
(2,'chapter',18,1,8),
(2,'chapter',21,1,8),
(2,'chapter',27,1,8),
(2,'chapter',28,1,8),
(2,'chapter',30,1,8),
(2,'chapter',31,1,8),
(2,'chapter',33,1,8),
(2,'chapter',42,1,8),
(2,'chapter',43,1,8),
(2,'chapter',45,1,8),
(2,'chapter',46,1,8),
(2,'chapter',47,1,8),
(2,'chapter',48,1,8),
(2,'chapter',49,1,8),
(2,'chapter',72,1,8),
(2,'page',15,1,8),
(2,'page',16,1,8),
(2,'page',17,1,8),
(2,'page',19,1,8),
(2,'page',20,1,8),
(2,'page',22,1,8),
(2,'page',23,1,8),
(2,'page',24,1,8),
(2,'page',26,1,8),
(2,'page',29,1,8),
(2,'page',50,1,8),
(2,'page',51,1,8),
(2,'page',52,1,8),
(2,'page',53,1,8),
(2,'page',54,1,8),
(2,'page',55,1,8),
(2,'page',57,1,8),
(2,'page',60,1,8),
(2,'page',61,1,8),
(2,'page',62,1,8),
(2,'page',63,3,NULL),
(2,'page',64,1,8),
(2,'page',67,1,8),
(2,'page',69,1,8),
(2,'page',70,1,8),
(2,'page',71,1,8),
(2,'page',73,1,8),
(2,'page',75,1,8),
(2,'page',76,1,8),
(3,'book',4,1,NULL),
(3,'book',7,1,NULL),
(3,'book',10,1,NULL),
(3,'book',12,1,NULL),
(3,'book',14,1,NULL),
(3,'book',25,1,NULL),
(3,'book',32,1,NULL),
(3,'book',34,1,NULL),
(3,'book',35,1,NULL),
(3,'book',36,1,NULL),
(3,'book',39,1,NULL),
(3,'book',40,1,NULL),
(3,'book',41,1,NULL),
(3,'book',56,1,NULL),
(3,'book',58,1,NULL),
(3,'book',66,1,NULL),
(3,'book',68,1,NULL),
(3,'book',74,1,NULL),
(3,'bookshelf',9,1,NULL),
(3,'bookshelf',11,1,NULL),
(3,'bookshelf',13,1,NULL),
(3,'bookshelf',37,1,NULL),
(3,'bookshelf',38,1,NULL),
(3,'bookshelf',44,1,NULL),
(3,'bookshelf',59,1,NULL),
(3,'bookshelf',65,0,NULL),
(3,'chapter',5,1,NULL),
(3,'chapter',8,1,NULL),
(3,'chapter',18,1,NULL),
(3,'chapter',21,1,NULL),
(3,'chapter',27,1,NULL),
(3,'chapter',28,1,NULL),
(3,'chapter',30,1,NULL),
(3,'chapter',31,1,NULL),
(3,'chapter',33,1,NULL),
(3,'chapter',42,1,NULL),
(3,'chapter',43,1,NULL),
(3,'chapter',45,1,NULL),
(3,'chapter',46,1,NULL),
(3,'chapter',47,1,NULL),
(3,'chapter',48,1,NULL),
(3,'chapter',49,1,NULL),
(3,'chapter',72,1,NULL),
(3,'page',15,1,NULL),
(3,'page',16,1,NULL),
(3,'page',17,1,NULL),
(3,'page',19,1,NULL),
(3,'page',20,1,NULL),
(3,'page',22,1,NULL),
(3,'page',23,1,NULL),
(3,'page',24,1,NULL),
(3,'page',26,1,NULL),
(3,'page',29,1,NULL),
(3,'page',50,1,NULL),
(3,'page',51,1,NULL),
(3,'page',52,1,NULL),
(3,'page',53,1,NULL),
(3,'page',54,1,NULL),
(3,'page',55,1,NULL),
(3,'page',57,1,NULL),
(3,'page',60,1,NULL),
(3,'page',61,1,NULL),
(3,'page',62,1,NULL),
(3,'page',63,0,NULL),
(3,'page',64,1,NULL),
(3,'page',67,1,NULL),
(3,'page',69,1,NULL),
(3,'page',70,1,NULL),
(3,'page',71,1,NULL),
(3,'page',73,1,NULL),
(3,'page',75,1,NULL),
(3,'page',76,1,NULL),
(4,'book',4,1,8),
(4,'book',7,1,8),
(4,'book',10,1,8),
(4,'book',12,1,8),
(4,'book',14,1,8),
(4,'book',25,1,8),
(4,'book',32,1,8),
(4,'book',34,1,8),
(4,'book',35,1,8),
(4,'book',36,1,8),
(4,'book',39,1,8),
(4,'book',40,1,8),
(4,'book',41,1,8),
(4,'book',56,1,8),
(4,'book',58,1,8),
(4,'book',66,1,8),
(4,'book',68,1,8),
(4,'book',74,1,8),
(4,'bookshelf',9,1,8),
(4,'bookshelf',11,1,8),
(4,'bookshelf',13,1,8),
(4,'bookshelf',37,1,8),
(4,'bookshelf',38,1,8),
(4,'bookshelf',44,1,8),
(4,'bookshelf',65,0,NULL),
(4,'chapter',5,1,8),
(4,'chapter',8,1,8),
(4,'chapter',18,1,8),
(4,'chapter',21,1,8),
(4,'chapter',27,1,8),
(4,'chapter',28,1,8),
(4,'chapter',30,1,8),
(4,'chapter',31,1,8),
(4,'chapter',33,1,8),
(4,'chapter',42,1,8),
(4,'chapter',43,1,8),
(4,'chapter',45,1,8),
(4,'chapter',46,1,8),
(4,'chapter',47,1,8),
(4,'chapter',48,1,8),
(4,'chapter',49,1,8),
(4,'chapter',72,1,8),
(4,'page',15,1,8),
(4,'page',16,1,8),
(4,'page',17,1,8),
(4,'page',19,1,8),
(4,'page',20,1,8),
(4,'page',22,1,8),
(4,'page',23,1,8),
(4,'page',24,1,8),
(4,'page',26,1,8),
(4,'page',29,1,8),
(4,'page',50,1,8),
(4,'page',51,1,8),
(4,'page',52,1,8),
(4,'page',53,1,8),
(4,'page',54,1,8),
(4,'page',55,1,8),
(4,'page',57,1,8),
(4,'page',60,1,8),
(4,'page',61,1,8),
(4,'page',62,1,8),
(4,'page',63,0,NULL),
(4,'page',64,1,8),
(4,'page',67,1,8),
(4,'page',69,1,8),
(4,'page',70,1,8),
(4,'page',71,1,8),
(4,'page',73,1,8),
(4,'page',75,1,8),
(4,'page',76,1,8),
(5,'book',4,1,NULL),
(5,'book',7,1,NULL),
(5,'book',10,1,NULL),
(5,'book',12,1,NULL),
(5,'book',14,1,NULL),
(5,'book',25,1,NULL),
(5,'book',32,1,NULL),
(5,'book',34,1,NULL),
(5,'book',35,1,NULL),
(5,'book',36,1,NULL),
(5,'book',39,1,NULL),
(5,'book',40,1,NULL),
(5,'book',41,1,NULL),
(5,'book',56,1,NULL),
(5,'book',58,1,NULL),
(5,'book',66,1,NULL),
(5,'book',68,1,NULL),
(5,'book',74,1,NULL),
(5,'bookshelf',6,1,NULL),
(5,'bookshelf',9,1,NULL),
(5,'bookshelf',11,1,NULL),
(5,'bookshelf',13,1,NULL),
(5,'bookshelf',37,1,NULL),
(5,'bookshelf',38,1,NULL),
(5,'bookshelf',44,1,NULL),
(5,'bookshelf',59,1,NULL),
(5,'bookshelf',65,3,NULL),
(5,'chapter',5,1,NULL),
(5,'chapter',8,1,NULL),
(5,'chapter',18,1,NULL),
(5,'chapter',21,1,NULL),
(5,'chapter',27,1,NULL),
(5,'chapter',28,1,NULL),
(5,'chapter',30,1,NULL),
(5,'chapter',31,1,NULL),
(5,'chapter',33,1,NULL),
(5,'chapter',42,1,NULL),
(5,'chapter',43,1,NULL),
(5,'chapter',45,1,NULL),
(5,'chapter',46,1,NULL),
(5,'chapter',47,1,NULL),
(5,'chapter',48,1,NULL),
(5,'chapter',49,1,NULL),
(5,'chapter',72,1,NULL),
(5,'page',15,1,NULL),
(5,'page',16,1,NULL),
(5,'page',17,1,NULL),
(5,'page',19,1,NULL),
(5,'page',20,1,NULL),
(5,'page',22,1,NULL),
(5,'page',23,1,NULL),
(5,'page',24,1,NULL),
(5,'page',26,1,NULL),
(5,'page',29,1,NULL),
(5,'page',50,1,NULL),
(5,'page',51,1,NULL),
(5,'page',52,1,NULL),
(5,'page',53,1,NULL),
(5,'page',54,1,NULL),
(5,'page',55,1,NULL),
(5,'page',57,1,NULL),
(5,'page',60,1,NULL),
(5,'page',61,1,NULL),
(5,'page',62,1,NULL),
(5,'page',63,0,NULL),
(5,'page',64,1,NULL),
(5,'page',67,1,NULL),
(5,'page',69,1,NULL),
(5,'page',70,1,NULL),
(5,'page',71,1,NULL),
(5,'page',73,1,NULL),
(5,'page',75,1,NULL),
(5,'page',76,1,NULL);
/*!40000 ALTER TABLE `joint_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mention_history`
--

DROP TABLE IF EXISTS `mention_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mention_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mentionable_type` varchar(50) NOT NULL,
  `mentionable_id` bigint(20) unsigned NOT NULL,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mention_history_mentionable_type_index` (`mentionable_type`),
  KEY `mention_history_mentionable_id_index` (`mentionable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mention_history`
--

LOCK TABLES `mention_history` WRITE;
/*!40000 ALTER TABLE `mention_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mention_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mfa_values`
--

DROP TABLE IF EXISTS `mfa_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mfa_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `method` varchar(20) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mfa_values_user_id_index` (`user_id`),
  KEY `mfa_values_method_index` (`method`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mfa_values`
--

LOCK TABLES `mfa_values` WRITE;
/*!40000 ALTER TABLE `mfa_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `mfa_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2015_07_12_114933_create_books_table',1),
(4,'2015_07_12_190027_create_pages_table',1),
(5,'2015_07_13_172121_create_images_table',1),
(6,'2015_07_27_172342_create_chapters_table',1),
(7,'2015_08_08_200447_add_users_to_entities',1),
(8,'2015_08_09_093534_create_page_revisions_table',1),
(9,'2015_08_16_142133_create_activities_table',1),
(10,'2015_08_29_105422_add_roles_and_permissions',1),
(11,'2015_08_30_125859_create_settings_table',1),
(12,'2015_08_31_175240_add_search_indexes',1),
(13,'2015_09_04_165821_create_social_accounts_table',1),
(14,'2015_09_05_164707_add_email_confirmation_table',1),
(15,'2015_11_21_145609_create_views_table',1),
(16,'2015_11_26_221857_add_entity_indexes',1),
(17,'2015_12_05_145049_fulltext_weighting',1),
(18,'2015_12_07_195238_add_image_upload_types',1),
(19,'2015_12_09_195748_add_user_avatars',1),
(20,'2016_01_11_210908_add_external_auth_to_users',1),
(21,'2016_02_25_184030_add_slug_to_revisions',1),
(22,'2016_02_27_120329_update_permissions_and_roles',1),
(23,'2016_02_28_084200_add_entity_access_controls',1),
(24,'2016_03_09_203143_add_page_revision_types',1),
(25,'2016_03_13_082138_add_page_drafts',1),
(26,'2016_03_25_123157_add_markdown_support',1),
(27,'2016_04_09_100730_add_view_permissions_to_roles',1),
(28,'2016_04_20_192649_create_joint_permissions_table',1),
(29,'2016_05_06_185215_create_tags_table',1),
(30,'2016_07_07_181521_add_summary_to_page_revisions',1),
(31,'2016_09_29_101449_remove_hidden_roles',1),
(32,'2016_10_09_142037_create_attachments_table',1),
(33,'2017_01_21_163556_create_cache_table',1),
(34,'2017_01_21_163602_create_sessions_table',1),
(35,'2017_03_19_091553_create_search_index_table',1),
(36,'2017_04_20_185112_add_revision_counts',1),
(37,'2017_07_02_152834_update_db_encoding_to_ut8mb4',1),
(38,'2017_08_01_130541_create_comments_table',1),
(39,'2017_08_29_102650_add_cover_image_display',1),
(40,'2018_07_15_173514_add_role_external_auth_id',1),
(41,'2018_08_04_115700_create_bookshelves_table',1),
(42,'2019_07_07_112515_add_template_support',1),
(43,'2019_08_17_140214_add_user_invites_table',1),
(44,'2019_12_29_120917_add_api_auth',1),
(45,'2020_08_04_111754_drop_joint_permissions_id',1),
(46,'2020_08_04_131052_remove_role_name_field',1),
(47,'2020_09_19_094251_add_activity_indexes',1),
(48,'2020_09_27_210059_add_entity_soft_deletes',1),
(49,'2020_09_27_210528_create_deletions_table',1),
(50,'2020_11_07_232321_simplify_activities_table',1),
(51,'2020_12_30_173528_add_owned_by_field_to_entities',1),
(52,'2021_01_30_225441_add_settings_type_column',1),
(53,'2021_03_08_215138_add_user_slug',1),
(54,'2021_05_15_173110_create_favourites_table',1),
(55,'2021_06_30_173111_create_mfa_values_table',1),
(56,'2021_07_03_085038_add_mfa_enforced_to_roles_table',1),
(57,'2021_08_28_161743_add_export_role_permission',1),
(58,'2021_09_26_044614_add_activities_ip_column',1),
(59,'2021_11_26_070438_add_index_for_user_ip',1),
(60,'2021_12_07_111343_create_webhooks_table',1),
(61,'2021_12_13_152024_create_jobs_table',1),
(62,'2021_12_13_152120_create_failed_jobs_table',1),
(63,'2022_01_03_154041_add_webhooks_timeout_error_columns',1),
(64,'2022_04_17_101741_add_editor_change_field_and_permission',1),
(65,'2022_04_25_140741_update_polymorphic_types',1),
(66,'2022_07_16_170051_drop_joint_permission_type',1),
(67,'2022_08_17_092941_create_references_table',1),
(68,'2022_09_02_082910_fix_shelf_cover_image_types',1),
(69,'2022_10_07_091406_flatten_entity_permissions_table',1),
(70,'2022_10_08_104202_drop_entity_restricted_field',1),
(71,'2023_01_24_104625_refactor_joint_permissions_storage',1),
(72,'2023_01_28_141230_copy_color_settings_for_dark_mode',1),
(73,'2023_02_20_093655_increase_attachments_path_length',1),
(74,'2023_02_23_200227_add_updated_at_index_to_pages',1),
(75,'2023_06_10_071823_remove_guest_user_secondary_roles',1),
(76,'2023_06_25_181952_remove_bookshelf_create_entity_permissions',1),
(77,'2023_07_25_124945_add_receive_notifications_role_permissions',1),
(78,'2023_07_31_104430_create_watches_table',1),
(79,'2023_08_21_174248_increase_cache_size',1),
(80,'2023_12_02_104541_add_default_template_to_books',1),
(81,'2023_12_17_140913_add_description_html_to_entities',1),
(82,'2024_01_01_104542_add_default_template_to_chapters',1),
(83,'2024_02_04_141358_add_views_updated_index',1),
(84,'2024_05_04_154409_rename_activity_relation_columns',1),
(85,'2024_09_29_140340_ensure_editor_value_set',1),
(86,'2024_10_29_114420_add_import_role_permission',1),
(87,'2024_11_02_160700_create_imports_table',1),
(88,'2024_11_27_171039_add_instance_id_setting',1),
(89,'2025_01_29_180933_create_sort_rules_table',1),
(90,'2025_02_05_150842_add_sort_rule_id_to_books',1),
(91,'2025_04_18_215145_add_content_refs_and_archived_to_comments',1),
(92,'2025_09_02_111542_remove_unused_columns',1),
(93,'2025_09_15_132850_create_entities_table',1),
(94,'2025_09_15_134701_migrate_entity_data',1),
(95,'2025_09_15_134751_update_entity_relation_columns',1),
(96,'2025_09_15_134813_drop_old_entity_tables',1),
(97,'2025_10_18_163331_clean_user_id_references',1),
(98,'2025_10_22_134507_update_comments_relation_field_names',1),
(99,'2025_11_23_161812_create_slug_history_table',1),
(100,'2025_12_15_140219_create_mention_history_table',1),
(101,'2025_12_19_103417_add_views_viewable_type_index',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_revisions`
--

DROP TABLE IF EXISTS `page_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) NOT NULL,
  `html` longtext NOT NULL,
  `text` longtext NOT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `book_slug` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'version',
  `markdown` longtext NOT NULL DEFAULT '',
  `summary` varchar(191) DEFAULT NULL,
  `revision_number` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_revisions_page_id_index` (`page_id`),
  KEY `page_revisions_slug_index` (`slug`),
  KEY `page_revisions_book_slug_index` (`book_slug`),
  KEY `page_revisions_type_index` (`type`),
  KEY `page_revisions_revision_number_index` (`revision_number`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_revisions`
--

LOCK TABLES `page_revisions` WRITE;
/*!40000 ALTER TABLE `page_revisions` DISABLE KEYS */;
INSERT INTO `page_revisions` VALUES
(1,15,'DAAG','','',8,'2026-05-05 10:33:31','2026-05-05 10:33:31','daag','algeria','version','','Initial publish',1),
(2,16,'DABC','','',8,'2026-05-05 10:33:38','2026-05-05 10:33:38','dabc','algeria','version','','Initial publish',1),
(3,17,'asas','','',8,'2026-05-05 10:34:18','2026-05-05 10:34:18','asas','algeria','version','','Initial publish',1),
(4,19,'APC','','',8,'2026-05-05 10:34:27','2026-05-05 10:34:27','apc','algeria','version','','Initial publish',1),
(5,20,'AIR/GMC','','',8,'2026-05-05 10:34:37','2026-05-05 10:34:37','airgmc','algeria','version','','Initial publish',1),
(6,22,'a','','',8,'2026-05-05 10:34:54','2026-05-05 10:34:54','a','algeria','version','','Initial publish',1),
(7,23,'APC','','',8,'2026-05-05 10:35:09','2026-05-05 10:35:09','apc-lwK','algeria','version','','Initial publish',1),
(8,24,'APC/ADC','','',8,'2026-05-05 10:35:24','2026-05-05 10:35:24','apcadc','algeria','version','','Initial publish',1),
(9,26,'New Page','','',8,'2026-05-05 10:35:42','2026-05-05 10:35:42','new-page','morocco','version','','Initial publish',1),
(10,50,'VACS','<h1 id=\"bkmrk-vacs\">VACS</h1>\n<p id=\"bkmrk-the-vatsim-atc-commu\">The VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.#</p>\n<p id=\"bkmrk-vacs-is-a-recommende\">vacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.</p>\n<p id=\"bkmrk-when-logging-onto-va\">When logging onto vacs, you will every single sector available to be called. So, who do I call?\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.</p>\n<p id=\"bkmrk-abbreviations%3A\">Abbreviations:</p>\n<ul id=\"bkmrk-cld---clearance-deli\">\n<li>\n<p>CLD - Clearance Delivery (DEL)</p>\n</li>\n<li>\n<p>GMC - Ground Movement Control (GND)</p>\n</li>\n<li>\n<p>TWR - Tower (TWR)</p>\n</li>\n<li>\n<p>APP - Approach (APP)</p>\n</li>\n<li>\n<p>RDR - Radar (APP)</p>\n</li>\n<li>\n<p>ACC - Area Control Centre (CTR)</p>\n<br>\n</li>\n<li>\n<p><em>AFIS/INFO - Aerodrome Flight Information Service (I_xxx)</em></p>\n</li>\n</ul>\n<p id=\"bkmrk-install-vacs-here\">Install vacs <a href=\"https://vacs.network/\">HERE</a></p>\n<p id=\"bkmrk-more-in-depth-docume\">More in-depth documentation can be found <a href=\"https://docs.vacs.network/\">HERE</a> https://docs.vacs.network/</p>\n','VACS\nThe VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.#\nvacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.\nWhen logging onto vacs, you will every single sector available to be called. So, who do I call?\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.\nAbbreviations:\n\n\nCLD - Clearance Delivery (DEL)\n\n\nGMC - Ground Movement Control (GND)\n\n\nTWR - Tower (TWR)\n\n\nAPP - Approach (APP)\n\n\nRDR - Radar (APP)\n\n\nACC - Area Control Centre (CTR)\n\n\n\nAFIS/INFO - Aerodrome Flight Information Service (I_xxx)\n\n\nInstall vacs HERE\nMore in-depth documentation can be found HERE https://docs.vacs.network/\n',8,'2026-05-05 10:54:32','2026-05-05 10:54:32','vacs','optional','version','# VACS \r\n\r\nThe VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.# \r\n\r\nvacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.\r\n\r\nWhen logging onto vacs, you will every single sector available to be called. So, who do I call?\r\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.\r\n\r\nAbbreviations:\r\n- CLD - Clearance Delivery (DEL)\r\n- GMC - Ground Movement Control (GND)\r\n- TWR - Tower (TWR)\r\n- APP - Approach (APP)\r\n- RDR - Radar (APP)\r\n- ACC - Area Control Centre (CTR)\r\n  \r\n  <br />\r\n\r\n- *AFIS/INFO - Aerodrome Flight Information Service (I_xxx)*\r\n\r\nInstall vacs [HERE](https://vacs.network/)\r\n\r\nMore in-depth documentation can be found [HERE](https://docs.vacs.network/) https://docs.vacs.network/','Initial publish',1),
(12,50,'VACS','<p id=\"bkmrk-the-vatsim-atc-commu\">The VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.#</p>\n<p id=\"bkmrk-vacs-is-a-recommende\">vacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.</p>\n<p id=\"bkmrk-when-logging-onto-va\">When logging onto vacs, you will every single sector available to be called. So, who do I call?\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.</p>\n<p id=\"bkmrk-abbreviations%3A\">Abbreviations:</p>\n<ul id=\"bkmrk-cld---clearance-deli\">\n<li>\n<p>CLD - Clearance Delivery (DEL)</p>\n</li>\n<li>\n<p>GMC - Ground Movement Control (GND)</p>\n</li>\n<li>\n<p>TWR - Tower (TWR)</p>\n</li>\n<li>\n<p>APP - Approach (APP)</p>\n</li>\n<li>\n<p>RDR - Radar (APP)</p>\n</li>\n<li>\n<p>ACC - Area Control Centre (CTR)</p>\n<br>\n</li>\n<li>\n<p><em>AFIS/INFO - Aerodrome Flight Information Service (I_xxx)</em></p>\n</li>\n</ul>\n<p id=\"bkmrk-install-vacs-here\">Install vacs <a href=\"https://vacs.network/\">HERE</a></p>\n<p id=\"bkmrk-more-in-depth-docume\">More in-depth documentation can be found <a href=\"https://docs.vacs.network/\">HERE</a></p>\n','The VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.#\nvacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.\nWhen logging onto vacs, you will every single sector available to be called. So, who do I call?\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.\nAbbreviations:\n\n\nCLD - Clearance Delivery (DEL)\n\n\nGMC - Ground Movement Control (GND)\n\n\nTWR - Tower (TWR)\n\n\nAPP - Approach (APP)\n\n\nRDR - Radar (APP)\n\n\nACC - Area Control Centre (CTR)\n\n\n\nAFIS/INFO - Aerodrome Flight Information Service (I_xxx)\n\n\nInstall vacs HERE\nMore in-depth documentation can be found HERE\n',8,'2026-05-05 10:56:03','2026-05-05 10:56:03','vacs','optional','version','The VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.# \r\n\r\nvacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.\r\n\r\nWhen logging onto vacs, you will every single sector available to be called. So, who do I call?\r\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.\r\n\r\nAbbreviations:\r\n- CLD - Clearance Delivery (DEL)\r\n- GMC - Ground Movement Control (GND)\r\n- TWR - Tower (TWR)\r\n- APP - Approach (APP)\r\n- RDR - Radar (APP)\r\n- ACC - Area Control Centre (CTR)\r\n  \r\n  <br />\r\n\r\n- *AFIS/INFO - Aerodrome Flight Information Service (I_xxx)*\r\n\r\nInstall vacs [HERE](https://vacs.network/)\r\n\r\nMore in-depth documentation can be found [HERE](https://docs.vacs.network/)','',2),
(13,51,'CDM','<p id=\"bkmrk-cdm-%28camu%29-is-a-tool\">CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.</p>\n<p id=\"bkmrk-how-to-start-cdm%3F\">How to Start CDM?</p>\n<ul id=\"bkmrk-when-loading-up-the-\">\n<li>When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.</li>\n</ul>\n<p id=\"bkmrk-when-am-i-the-%27maste\">When am I the \'master\' or the \'slave\'?</p>\n<ul id=\"bkmrk-during-normal-operat\">\n<li>During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.</li>\n</ul>\n<p id=\"bkmrk-how-do-i-use-cdm%3F\">How do I use CDM?</p>\n<ul id=\"bkmrk-when-an-aircraft-cal\">\n<li>When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.</li>\n</ul>\n<p id=\"bkmrk-what-do-i-do-when-ha\">What do I do when handing over from CLD to GMC?</p>\n<ul id=\"bkmrk-whilst-operating-cld\">\n<li>Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.</li>\n</ul>\n<p id=\"bkmrk-what-happens-when-an\">What happens when an aircraft misses their TSAT slot?\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.</p>\n<p id=\"bkmrk-useful-commands%3A\">Useful commands:</p>\n<ul id=\"bkmrk-.cdm-panel---hides-t\">\n<li>.cdm panel - Hides the CDM panel</li>\n<li>.cdm master/slave ICAO - Master, or slave an airport</li>\n<li>.cdm atfcm - Shows the ATFCM list</li>\n<li>.cdm refresh - Refresh the CDM plugin</li>\n</ul>\n<p id=\"bkmrk-how-to-start-cdm%3F-1\">How to Start CDM?</p>\n<ul id=\"bkmrk-when-loading-up-the--1\">\n<li>When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.</li>\n</ul>\n<p id=\"bkmrk-when-am-i-the-%27maste-1\">When am I the \'master\' or the \'slave\'?</p>\n<ul id=\"bkmrk-during-normal-operat-1\">\n<li>During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.</li>\n</ul>\n<p id=\"bkmrk-how-do-i-use-cdm%3F-1\">How do I use CDM?</p>\n<ul id=\"bkmrk-when-an-aircraft-cal-1\">\n<li>When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.</li>\n</ul>\n<p id=\"bkmrk-what-do-i-do-when-ha-1\">What do I do when handing over from CLD to GMC?</p>\n<ul id=\"bkmrk-whilst-operating-cld-1\">\n<li>Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.</li>\n</ul>\n<p id=\"bkmrk-what-happens-when-an-1\">What happens when an aircraft misses their TSAT slot?</p>\n<ul id=\"bkmrk-if-an-aircraft-misse\">\n<li>If an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.</li>\n</ul>\n<p id=\"bkmrk-useful-commands%3A-.cd\">Useful commands:\n.cdm panel - Hides the CDM panel\n.cdm master/slave ICAO - Master, or slave an airport\n.cdm atfcm - Shows the ATFCM list\n.cdm refresh - Refresh the CDM plugin</p>\n<p id=\"bkmrk-a-video%2C-from-vatsim\">A video, from VATSIM Spain demonstrating the use of the plugin can be found <a href=\"https://www.youtube.com/watch?v=fHYT0_SH7qs\">HERE</a></p>\n','CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.\nHow to Start CDM?\n\nWhen loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\n\nWhen am I the \'master\' or the \'slave\'?\n\nDuring normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\n\nHow do I use CDM?\n\nWhen an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\n\nWhat do I do when handing over from CLD to GMC?\n\nWhilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.\n\nWhat happens when an aircraft misses their TSAT slot?\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\nUseful commands:\n\n.cdm panel - Hides the CDM panel\n.cdm master/slave ICAO - Master, or slave an airport\n.cdm atfcm - Shows the ATFCM list\n.cdm refresh - Refresh the CDM plugin\n\nHow to Start CDM?\n\nWhen loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\n\nWhen am I the \'master\' or the \'slave\'?\n\nDuring normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\n\nHow do I use CDM?\n\nWhen an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\n\nWhat do I do when handing over from CLD to GMC?\n\nWhilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.\n\nWhat happens when an aircraft misses their TSAT slot?\n\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\n\nUseful commands:\n.cdm panel - Hides the CDM panel\n.cdm master/slave ICAO - Master, or slave an airport\n.cdm atfcm - Shows the ATFCM list\n.cdm refresh - Refresh the CDM plugin\nA video, from VATSIM Spain demonstrating the use of the plugin can be found HERE\n',8,'2026-05-05 11:00:31','2026-05-05 11:00:31','cdm','optional','version','CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.\r\n\r\nHow to Start CDM?\r\n\r\n- When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\r\n\r\nWhen am I the \'master\' or the \'slave\'?\r\n- During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\r\n\r\nHow do I use CDM?\r\n- When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\r\n\r\nWhat do I do when handing over from CLD to GMC?\r\n- Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status. \r\n\r\nWhat happens when an aircraft misses their TSAT slot?\r\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\r\n\r\n\r\nUseful commands:\r\n- .cdm panel - Hides the CDM panel\r\n- .cdm master/slave ICAO - Master, or slave an airport\r\n- .cdm atfcm - Shows the ATFCM list\r\n- .cdm refresh - Refresh the CDM plugin\r\n\r\nHow to Start CDM?\r\n- When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\r\n\r\nWhen am I the \'master\' or the \'slave\'?\r\n- During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\r\n\r\nHow do I use CDM?\r\n- When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\r\n\r\nWhat do I do when handing over from CLD to GMC?\r\n- Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status. \r\n\r\nWhat happens when an aircraft misses their TSAT slot?\r\n- If an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\r\n\r\n\r\nUseful commands:\r\n.cdm panel - Hides the CDM panel\r\n.cdm master/slave ICAO - Master, or slave an airport\r\n.cdm atfcm - Shows the ATFCM list\r\n.cdm refresh - Refresh the CDM plugin\r\n\r\nA video, from VATSIM Spain demonstrating the use of the plugin can be found [HERE](https://www.youtube.com/watch?v=fHYT0_SH7qs)','Initial publish',1),
(14,51,'CDM','<p id=\"bkmrk-cdm-%28camu%29-is-a-tool\">CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.</p>\n<p id=\"bkmrk-how-to-start-cdm%3F\">How to Start CDM?</p>\n<ul id=\"bkmrk-when-loading-up-the-\">\n<li>When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.</li>\n</ul>\n<p id=\"bkmrk-when-am-i-the-%27maste\">When am I the \'master\' or the \'slave\'?</p>\n<ul id=\"bkmrk-during-normal-operat\">\n<li>During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.</li>\n</ul>\n<p id=\"bkmrk-how-do-i-use-cdm%3F\">How do I use CDM?</p>\n<ul id=\"bkmrk-when-an-aircraft-cal\">\n<li>When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.</li>\n</ul>\n<p id=\"bkmrk-what-do-i-do-when-ha\">What do I do when handing over from CLD to GMC?</p>\n<ul id=\"bkmrk-whilst-operating-cld\">\n<li>Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.</li>\n</ul>\n<p id=\"bkmrk-what-happens-when-an\">What happens when an aircraft misses their TSAT slot?\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.</p>\n<p id=\"bkmrk-useful-commands%3A\">Useful commands:</p>\n<ul id=\"bkmrk-.cdm-panel---hides-t\">\n<li>.cdm panel - Hides the CDM panel</li>\n<li>.cdm master/slave ICAO - Master, or slave an airport</li>\n<li>.cdm atfcm - Shows the ATFCM list</li>\n<li>.cdm refresh - Refresh the CDM plugin</li>\n</ul>\n<p id=\"bkmrk-how-to-start-cdm%3F-1\">How to Start CDM?</p>\n<ul id=\"bkmrk-when-loading-up-the--1\">\n<li>When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.</li>\n</ul>\n<p id=\"bkmrk-when-am-i-the-%27maste-1\">When am I the \'master\' or the \'slave\'?</p>\n<ul id=\"bkmrk-during-normal-operat-1\">\n<li>During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.</li>\n</ul>\n<p id=\"bkmrk-how-do-i-use-cdm%3F-1\">How do I use CDM?</p>\n<ul id=\"bkmrk-when-an-aircraft-cal-1\">\n<li>When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.</li>\n</ul>\n<p id=\"bkmrk-what-do-i-do-when-ha-1\">What do I do when handing over from CLD to GMC?</p>\n<ul id=\"bkmrk-whilst-operating-cld-1\">\n<li>Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.</li>\n</ul>\n<p id=\"bkmrk-what-happens-when-an-1\">What happens when an aircraft misses their TSAT slot?</p>\n<ul id=\"bkmrk-if-an-aircraft-misse\">\n<li>If an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.</li>\n</ul>\n<p id=\"bkmrk-useful-commands%3A-1\">Useful commands:</p>\n<p id=\"bkmrk-.cdm-panel---hides-t-1\">.cdm panel - Hides the CDM panel\n.cdm master/slave ICAO - Master, or slave an airport\n.cdm atfcm - Shows the ATFCM list\n.cdm refresh - Refresh the CDM plugin</p>\n<p id=\"bkmrk-a-video%2C-from-vatsim\">A video, from VATSIM Spain demonstrating the use of the plugin can be found <a href=\"https://www.youtube.com/watch?v=fHYT0_SH7qs\">HERE</a></p>\n','CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.\nHow to Start CDM?\n\nWhen loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\n\nWhen am I the \'master\' or the \'slave\'?\n\nDuring normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\n\nHow do I use CDM?\n\nWhen an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\n\nWhat do I do when handing over from CLD to GMC?\n\nWhilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.\n\nWhat happens when an aircraft misses their TSAT slot?\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\nUseful commands:\n\n.cdm panel - Hides the CDM panel\n.cdm master/slave ICAO - Master, or slave an airport\n.cdm atfcm - Shows the ATFCM list\n.cdm refresh - Refresh the CDM plugin\n\nHow to Start CDM?\n\nWhen loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\n\nWhen am I the \'master\' or the \'slave\'?\n\nDuring normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\n\nHow do I use CDM?\n\nWhen an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\n\nWhat do I do when handing over from CLD to GMC?\n\nWhilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.\n\nWhat happens when an aircraft misses their TSAT slot?\n\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\n\nUseful commands:\n.cdm panel - Hides the CDM panel\n.cdm master/slave ICAO - Master, or slave an airport\n.cdm atfcm - Shows the ATFCM list\n.cdm refresh - Refresh the CDM plugin\nA video, from VATSIM Spain demonstrating the use of the plugin can be found HERE\n',8,'2026-05-05 11:00:42','2026-05-05 11:00:42','cdm','optional','version','CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.\r\n\r\nHow to Start CDM?\r\n\r\n- When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\r\n\r\nWhen am I the \'master\' or the \'slave\'?\r\n- During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\r\n\r\nHow do I use CDM?\r\n- When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\r\n\r\nWhat do I do when handing over from CLD to GMC?\r\n- Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status. \r\n\r\nWhat happens when an aircraft misses their TSAT slot?\r\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\r\n\r\n\r\nUseful commands:\r\n- .cdm panel - Hides the CDM panel\r\n- .cdm master/slave ICAO - Master, or slave an airport\r\n- .cdm atfcm - Shows the ATFCM list\r\n- .cdm refresh - Refresh the CDM plugin\r\n\r\nHow to Start CDM?\r\n- When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\r\n\r\nWhen am I the \'master\' or the \'slave\'?\r\n- During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\r\n\r\nHow do I use CDM?\r\n- When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\r\n\r\nWhat do I do when handing over from CLD to GMC?\r\n- Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status. \r\n\r\nWhat happens when an aircraft misses their TSAT slot?\r\n- If an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\r\n\r\n\r\nUseful commands:\r\n\r\n.cdm panel - Hides the CDM panel\r\n.cdm master/slave ICAO - Master, or slave an airport\r\n.cdm atfcm - Shows the ATFCM list\r\n.cdm refresh - Refresh the CDM plugin\r\n\r\nA video, from VATSIM Spain demonstrating the use of the plugin can be found [HERE](https://www.youtube.com/watch?v=fHYT0_SH7qs)','',2),
(15,51,'CDM','<p id=\"bkmrk-cdm-%28camu%29-is-a-tool\">CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.</p>\n<p id=\"bkmrk-how-to-start-cdm%3F\">How to Start CDM?</p>\n<ul id=\"bkmrk-when-loading-up-the-\">\n<li>When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.</li>\n</ul>\n<p id=\"bkmrk-when-am-i-the-%27maste\">When am I the \'master\' or the \'slave\'?</p>\n<ul id=\"bkmrk-during-normal-operat\">\n<li>During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.</li>\n</ul>\n<p id=\"bkmrk-how-do-i-use-cdm%3F\">How do I use CDM?</p>\n<ul id=\"bkmrk-when-an-aircraft-cal\">\n<li>When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.</li>\n</ul>\n<p id=\"bkmrk-what-do-i-do-when-ha\">What do I do when handing over from CLD to GMC?</p>\n<ul id=\"bkmrk-whilst-operating-cld\">\n<li>Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.</li>\n</ul>\n<p id=\"bkmrk-what-happens-when-an\">What happens when an aircraft misses their TSAT slot?\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.</p>\n<p id=\"bkmrk-useful-commands%3A\">Useful commands:</p>\n<ul id=\"bkmrk-.cdm-panel---hides-t\">\n<li>.cdm panel - Hides the CDM panel</li>\n<li>.cdm master/slave ICAO - Master, or slave an airport</li>\n<li>.cdm atfcm - Shows the ATFCM list</li>\n<li>.cdm refresh - Refresh the CDM plugin</li>\n</ul>\n<p id=\"bkmrk-how-to-start-cdm%3F-1\">How to Start CDM?</p>\n<ul id=\"bkmrk-when-loading-up-the--1\">\n<li>When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.</li>\n</ul>\n<p id=\"bkmrk-when-am-i-the-%27maste-1\">When am I the \'master\' or the \'slave\'?</p>\n<ul id=\"bkmrk-during-normal-operat-1\">\n<li>During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.</li>\n</ul>\n<p id=\"bkmrk-how-do-i-use-cdm%3F-1\">How do I use CDM?</p>\n<ul id=\"bkmrk-when-an-aircraft-cal-1\">\n<li>When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.</li>\n</ul>\n<p id=\"bkmrk-what-do-i-do-when-ha-1\">What do I do when handing over from CLD to GMC?</p>\n<ul id=\"bkmrk-whilst-operating-cld-1\">\n<li>Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.</li>\n</ul>\n<p id=\"bkmrk-what-happens-when-an-1\">What happens when an aircraft misses their TSAT slot?</p>\n<ul id=\"bkmrk-if-an-aircraft-misse\">\n<li>If an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.</li>\n</ul>\n<p id=\"bkmrk-useful-commands%3A-1\">Useful commands:</p>\n<ul id=\"bkmrk-.cdm-panel---hides-t-1\">\n<li>.cdm panel - Hides the CDM panel</li>\n<li>.cdm master/slave ICAO - Master, or slave an airport</li>\n<li>.cdm atfcm - Shows the ATFCM list</li>\n<li>.cdm refresh - Refresh the CDM plugin</li>\n</ul>\n<p id=\"bkmrk-a-video%2C-from-vatsim\">A video, from VATSIM Spain demonstrating the use of the plugin can be found <a href=\"https://www.youtube.com/watch?v=fHYT0_SH7qs\">HERE</a></p>\n','CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.\nHow to Start CDM?\n\nWhen loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\n\nWhen am I the \'master\' or the \'slave\'?\n\nDuring normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\n\nHow do I use CDM?\n\nWhen an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\n\nWhat do I do when handing over from CLD to GMC?\n\nWhilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.\n\nWhat happens when an aircraft misses their TSAT slot?\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\nUseful commands:\n\n.cdm panel - Hides the CDM panel\n.cdm master/slave ICAO - Master, or slave an airport\n.cdm atfcm - Shows the ATFCM list\n.cdm refresh - Refresh the CDM plugin\n\nHow to Start CDM?\n\nWhen loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\n\nWhen am I the \'master\' or the \'slave\'?\n\nDuring normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\n\nHow do I use CDM?\n\nWhen an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\n\nWhat do I do when handing over from CLD to GMC?\n\nWhilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.\n\nWhat happens when an aircraft misses their TSAT slot?\n\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\n\nUseful commands:\n\n.cdm panel - Hides the CDM panel\n.cdm master/slave ICAO - Master, or slave an airport\n.cdm atfcm - Shows the ATFCM list\n.cdm refresh - Refresh the CDM plugin\n\nA video, from VATSIM Spain demonstrating the use of the plugin can be found HERE\n',8,'2026-05-05 11:01:16','2026-05-05 11:01:16','cdm','optional','version','CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.\r\n\r\nHow to Start CDM?\r\n\r\n- When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\r\n\r\nWhen am I the \'master\' or the \'slave\'?\r\n- During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\r\n\r\nHow do I use CDM?\r\n- When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\r\n\r\nWhat do I do when handing over from CLD to GMC?\r\n- Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status. \r\n\r\nWhat happens when an aircraft misses their TSAT slot?\r\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\r\n\r\n\r\nUseful commands:\r\n- .cdm panel - Hides the CDM panel\r\n- .cdm master/slave ICAO - Master, or slave an airport\r\n- .cdm atfcm - Shows the ATFCM list\r\n- .cdm refresh - Refresh the CDM plugin\r\n\r\nHow to Start CDM?\r\n- When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\r\n\r\nWhen am I the \'master\' or the \'slave\'?\r\n- During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\r\n\r\nHow do I use CDM?\r\n- When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\r\n\r\nWhat do I do when handing over from CLD to GMC?\r\n- Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status. \r\n\r\nWhat happens when an aircraft misses their TSAT slot?\r\n- If an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\r\n\r\n\r\nUseful commands:\r\n\r\n- .cdm panel - Hides the CDM panel\r\n- .cdm master/slave ICAO - Master, or slave an airport\r\n- .cdm atfcm - Shows the ATFCM list\r\n- .cdm refresh - Refresh the CDM plugin\r\n\r\nA video, from VATSIM Spain demonstrating the use of the plugin can be found [HERE](https://www.youtube.com/watch?v=fHYT0_SH7qs)','',3),
(16,52,'vacs','<p id=\"bkmrk-the-vatsim-atc-commu\">The VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.#</p>\n<p id=\"bkmrk-vacs-is-a-recommende\">vacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.</p>\n<p id=\"bkmrk-when-logging-onto-va\">When logging onto vacs, you will every single sector available to be called. So, who do I call?\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.</p>\n<p id=\"bkmrk-abbreviations%3A\">Abbreviations:</p>\n<ul id=\"bkmrk-cld---clearance-deli\">\n<li>\n<p>CLD - Clearance Delivery (DEL)</p>\n</li>\n<li>\n<p>GMC - Ground Movement Control (GND)</p>\n</li>\n<li>\n<p>TWR - Tower (TWR)</p>\n</li>\n<li>\n<p>APP - Approach (APP)</p>\n</li>\n<li>\n<p>RDR - Radar (APP)</p>\n</li>\n<li>\n<p>ACC - Area Control Centre (CTR)</p>\n<br>\n</li>\n<li>\n<p><em>AFIS/INFO - Aerodrome Flight Information Service (I_xxx)</em></p>\n</li>\n</ul>\n<p id=\"bkmrk-install-vacs-here\">Install vacs <a href=\"https://vacs.network/\">HERE</a></p>\n<p id=\"bkmrk-more-in-depth-docume\">More in-depth documentation can be found <a href=\"https://docs.vacs.network/\">HERE</a></p>\n','The VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.#\nvacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.\nWhen logging onto vacs, you will every single sector available to be called. So, who do I call?\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.\nAbbreviations:\n\n\nCLD - Clearance Delivery (DEL)\n\n\nGMC - Ground Movement Control (GND)\n\n\nTWR - Tower (TWR)\n\n\nAPP - Approach (APP)\n\n\nRDR - Radar (APP)\n\n\nACC - Area Control Centre (CTR)\n\n\n\nAFIS/INFO - Aerodrome Flight Information Service (I_xxx)\n\n\nInstall vacs HERE\nMore in-depth documentation can be found HERE\n',8,'2026-05-05 11:02:15','2026-05-05 11:02:15','vacs','optional','version','The VATSIM ATC Communication System, is a free, open-source voice communication system built specifically for VATSIM air traffic controllers. It provides a fast and easy way to communicate and coordinate with your neighbouring controllers - no extra TeamSpeak servers, no Discord, no extra accounts. Simply install the voice communication client, authenticate with your VATSIM account, and you\'re ready to go.# \r\n\r\nvacs is a recommended software by VATSSA. Used as a ground to ground coordination system, to coordinate with other controllers.\r\n\r\nWhen logging onto vacs, you will every single sector available to be called. So, who do I call?\r\nYou are to call the position in which it concerns! Say you are on ground (GMC), and want to reach tower (TWR) but only Approach (APP) is online, you should still call TWR and APP will pick up the call! It\'s that simple.\r\n\r\nAbbreviations:\r\n- CLD - Clearance Delivery (DEL)\r\n- GMC - Ground Movement Control (GND)\r\n- TWR - Tower (TWR)\r\n- APP - Approach (APP)\r\n- RDR - Radar (APP)\r\n- ACC - Area Control Centre (CTR)\r\n  \r\n  <br />\r\n\r\n- *AFIS/INFO - Aerodrome Flight Information Service (I_xxx)*\r\n\r\nInstall vacs [HERE](https://vacs.network/)\r\n\r\nMore in-depth documentation can be found [HERE](https://docs.vacs.network/)','Initial publish',1),
(17,53,'CDM / vIFF','<p id=\"bkmrk-cdm-%28camu%29-is-a-tool\">CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.</p>\n<p id=\"bkmrk-how-to-start-cdm%3F\">How to Start CDM?</p>\n<ul id=\"bkmrk-when-loading-up-the-\">\n<li>When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.</li>\n</ul>\n<p id=\"bkmrk-when-am-i-the-%27maste\">When am I the \'master\' or the \'slave\'?</p>\n<ul id=\"bkmrk-during-normal-operat\">\n<li>During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.</li>\n</ul>\n<p id=\"bkmrk-how-do-i-use-cdm%3F\">How do I use CDM?</p>\n<ul id=\"bkmrk-when-an-aircraft-cal\">\n<li>When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.</li>\n</ul>\n<p id=\"bkmrk-what-do-i-do-when-ha\">What do I do when handing over from CLD to GMC?</p>\n<ul id=\"bkmrk-whilst-operating-cld\">\n<li>Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.</li>\n</ul>\n<p id=\"bkmrk-what-happens-when-an\">What happens when an aircraft misses their TSAT slot?\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.</p>\n<p id=\"bkmrk-useful-commands%3A\">Useful commands:</p>\n<ul id=\"bkmrk-.cdm-panel---hides-t\">\n<li>.cdm panel - Hides the CDM panel</li>\n<li>.cdm master/slave ICAO - Master, or slave an airport</li>\n<li>.cdm atfcm - Shows the ATFCM list</li>\n<li>.cdm refresh - Refresh the CDM plugin</li>\n</ul>\n<p id=\"bkmrk-how-to-start-cdm%3F-1\">How to Start CDM?</p>\n<ul id=\"bkmrk-when-loading-up-the--1\">\n<li>When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.</li>\n</ul>\n<p id=\"bkmrk-when-am-i-the-%27maste-1\">When am I the \'master\' or the \'slave\'?</p>\n<ul id=\"bkmrk-during-normal-operat-1\">\n<li>During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.</li>\n</ul>\n<p id=\"bkmrk-how-do-i-use-cdm%3F-1\">How do I use CDM?</p>\n<ul id=\"bkmrk-when-an-aircraft-cal-1\">\n<li>When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.</li>\n</ul>\n<p id=\"bkmrk-what-do-i-do-when-ha-1\">What do I do when handing over from CLD to GMC?</p>\n<ul id=\"bkmrk-whilst-operating-cld-1\">\n<li>Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.</li>\n</ul>\n<p id=\"bkmrk-what-happens-when-an-1\">What happens when an aircraft misses their TSAT slot?</p>\n<ul id=\"bkmrk-if-an-aircraft-misse\">\n<li>If an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.</li>\n</ul>\n<p id=\"bkmrk-useful-commands%3A-1\">Useful commands:</p>\n<ul id=\"bkmrk-.cdm-panel---hides-t-1\">\n<li>.cdm panel - Hides the CDM panel</li>\n<li>.cdm master/slave ICAO - Master, or slave an airport</li>\n<li>.cdm atfcm - Shows the ATFCM list</li>\n<li>.cdm refresh - Refresh the CDM plugin</li>\n</ul>\n<p id=\"bkmrk-a-video%2C-from-vatsim\">A video, from VATSIM Spain demonstrating the use of the plugin can be found <a href=\"https://www.youtube.com/watch?v=fHYT0_SH7qs\">HERE</a></p>\n','CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.\nHow to Start CDM?\n\nWhen loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\n\nWhen am I the \'master\' or the \'slave\'?\n\nDuring normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\n\nHow do I use CDM?\n\nWhen an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\n\nWhat do I do when handing over from CLD to GMC?\n\nWhilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.\n\nWhat happens when an aircraft misses their TSAT slot?\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\nUseful commands:\n\n.cdm panel - Hides the CDM panel\n.cdm master/slave ICAO - Master, or slave an airport\n.cdm atfcm - Shows the ATFCM list\n.cdm refresh - Refresh the CDM plugin\n\nHow to Start CDM?\n\nWhen loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\n\nWhen am I the \'master\' or the \'slave\'?\n\nDuring normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\n\nHow do I use CDM?\n\nWhen an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\n\nWhat do I do when handing over from CLD to GMC?\n\nWhilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status.\n\nWhat happens when an aircraft misses their TSAT slot?\n\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\n\nUseful commands:\n\n.cdm panel - Hides the CDM panel\n.cdm master/slave ICAO - Master, or slave an airport\n.cdm atfcm - Shows the ATFCM list\n.cdm refresh - Refresh the CDM plugin\n\nA video, from VATSIM Spain demonstrating the use of the plugin can be found HERE\n',8,'2026-05-05 11:02:48','2026-05-05 11:02:48','cdm-viff','optional','version','CDM (CAMU) is a tool to manage demand and capacity across the division by regulating departures and adjusting traffic patterns to prevent sector overload.\r\n\r\nHow to Start CDM?\r\n\r\n- When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\r\n\r\nWhen am I the \'master\' or the \'slave\'?\r\n- During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\r\n\r\nHow do I use CDM?\r\n- When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\r\n\r\nWhat do I do when handing over from CLD to GMC?\r\n- Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status. \r\n\r\nWhat happens when an aircraft misses their TSAT slot?\r\nIf an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\r\n\r\n\r\nUseful commands:\r\n- .cdm panel - Hides the CDM panel\r\n- .cdm master/slave ICAO - Master, or slave an airport\r\n- .cdm atfcm - Shows the ATFCM list\r\n- .cdm refresh - Refresh the CDM plugin\r\n\r\nHow to Start CDM?\r\n- When loading up the sector file (2602 and later), a CDM Airport Panel will appear. By default, you are put into the \'slave\' role. Selecting the airports that you are providing top-down coverage for you will become a \'master\' of the airport.\r\n\r\nWhen am I the \'master\' or the \'slave\'?\r\n- During normal operations, the \'master\' of the airport should be the lowest position, e.g. Delivery. The master is the only user who has the functionality to edit CDM timings.\r\n\r\nHow do I use CDM?\r\n- When an aircraft calls ready for push, the \'master\' controller should left click the TOBT column in the Startup List to generate CDM times. The controller should then look at the TSAT time, and if it is within +/- 5 minutes of the current time, pushback (or handover to GMC) should be approved.\r\n\r\nWhat do I do when handing over from CLD to GMC?\r\n- Whilst operating CLD, and aircraft that is handed over from CLD to GMC should have their aircraft STS set to the \'S/UP\' status. \r\n\r\nWhat happens when an aircraft misses their TSAT slot?\r\n- If an aircraft misses their slot, then the timings should simply be re-generated by left clicking the TOBT column. A flight that has missed their slot will be indicated with a red \'SUSP\' message in the NET column.\r\n\r\n\r\nUseful commands:\r\n\r\n- .cdm panel - Hides the CDM panel\r\n- .cdm master/slave ICAO - Master, or slave an airport\r\n- .cdm atfcm - Shows the ATFCM list\r\n- .cdm refresh - Refresh the CDM plugin\r\n\r\nA video, from VATSIM Spain demonstrating the use of the plugin can be found [HERE](https://www.youtube.com/watch?v=fHYT0_SH7qs)','Initial publish',1),
(18,54,'Audio For VATSIM','<h2 id=\"bkmrk-what-is-audio-for-va\">What is Audio for VATSIM?</h2>\n<p id=\"bkmrk-audio-for-vatsim-%28af\">Audio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters.</p>\n<p id=\"bkmrk-our-resources-page%2C-\">Our resources page, where you can find the Audio for VATSIM download link can be found <a href=\"https://eaip2.vatssa.com/General/Resources/Links/\">here</a></p>\n<p id=\"bkmrk-%21%21%21-warning-audio-fo\">!!! warning\nAudio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found <a href=\"https://eaip2.vatssa.com/General/Resources/Software/TrackAudio%20Guide%20-%20Controller/\">here</a></p>\n<h2 id=\"bkmrk-setting-up-audio-for\">Setting up Audio for VATSIM</h2>\n<ul id=\"bkmrk-input-your-vatsim-de\">\n<li>Input your VATSIM Details\n<ul>\n<li>Your VATSIM CID</li>\n<li>Your VATSIM Password</li>\n</ul>\n</li>\n<li>Configure audio devices\n<ul>\n<li>Select a Headset, Speaker and Input device</li>\n</ul>\n</li>\n<li>Set a Push-To-Talk (PTT) bind</li>\n<li>Save your changes by pressing \'Apply all\' on the bottom right</li>\n</ul>\n<p id=\"bkmrk-\"><img src=\"img/AFVSettings.png\" alt=\"Audio for VATSIM settings\"></p>\n<h2 id=\"bkmrk-connecting-and-liste\">Connecting and Listening to ATC</h2>\n<ul id=\"bkmrk-open-audio-for-vatsi\">\n<li>Open Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.</li>\n<li>Click \'RX\' (receive) to listen in the frequency.\n<img src=\"img/AFVControlling-1.png\" alt=\"AFV Controlling 1 - RX a Frequency\"></li>\n<li>Click \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.\n<img src=\"img/AFVControlling-2.png\" alt=\"AFV Controlling 2 - TX a Frequency\"></li>\n</ul>\n<p id=\"bkmrk-still-having-issues-\">Still having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the <a href=\"https://community.vatsim.net/\">VATSIM Community Server\'s</a></p>\n','What is Audio for VATSIM?\nAudio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters.\nOur resources page, where you can find the Audio for VATSIM download link can be found here\n!!! warning\nAudio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found here\nSetting up Audio for VATSIM\n\nInput your VATSIM Details\n\nYour VATSIM CID\nYour VATSIM Password\n\n\nConfigure audio devices\n\nSelect a Headset, Speaker and Input device\n\n\nSet a Push-To-Talk (PTT) bind\nSave your changes by pressing \'Apply all\' on the bottom right\n\n\nConnecting and Listening to ATC\n\nOpen Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.\nClick \'RX\' (receive) to listen in the frequency.\n\nClick \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.\n\n\nStill having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the VATSIM Community Server\'s\n',8,'2026-05-05 11:04:06','2026-05-05 11:04:06','audio-for-vatsim','audio','version','## What is Audio for VATSIM?\r\nAudio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters. \r\n\r\nOur resources page, where you can find the Audio for VATSIM download link can be found [here](https://eaip2.vatssa.com/General/Resources/Links/)\r\n\r\n!!! warning \r\n    Audio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found [here](https://eaip2.vatssa.com/General/Resources/Software/TrackAudio%20Guide%20-%20Controller/)\r\n\r\n## Setting up Audio for VATSIM\r\n\r\n- Input your VATSIM Details\r\n  * Your VATSIM CID\r\n  * Your VATSIM Password\r\n- Configure audio devices\r\n  * Select a Headset, Speaker and Input device\r\n- Set a Push-To-Talk (PTT) bind\r\n- Save your changes by pressing \'Apply all\' on the bottom right\r\n\r\n![Audio for VATSIM settings](img/AFVSettings.png)\r\n\r\n## Connecting and Listening to ATC\r\n\r\n- Open Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.\r\n- Click \'RX\' (receive) to listen in the frequency.\r\n![AFV Controlling 1 - RX a Frequency](img/AFVControlling-1.png)\r\n- Click \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.\r\n![AFV Controlling 2 - TX a Frequency](img/AFVControlling-2.png)\r\n\r\nStill having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the [VATSIM Community Server\'s](https://community.vatsim.net/)','Initial publish',1),
(19,54,'Audio For VATSIM','<h2 id=\"bkmrk-what-is-audio-for-va\">What is Audio for VATSIM?</h2>\n<p id=\"bkmrk-audio-for-vatsim-%28af\">Audio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters.</p>\n<p id=\"bkmrk-our-resources-page%2C-\">Our resources page, where you can find the Audio for VATSIM download link can be found <a href=\"https://eaip2.vatssa.com/General/Resources/Links/\">here</a></p>\n<p id=\"bkmrk-%21%21%21-warning-audio-fo\">!!! warning\nAudio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found <a href=\"https://eaip2.vatssa.com/General/Resources/Software/TrackAudio%20Guide%20-%20Controller/\">here</a></p>\n<h2 id=\"bkmrk-setting-up-audio-for\">Setting up Audio for VATSIM</h2>\n<ul id=\"bkmrk-input-your-vatsim-de\">\n<li>Input your VATSIM Details\n<ul>\n<li>Your VATSIM CID</li>\n<li>Your VATSIM Password</li>\n</ul>\n</li>\n<li>Configure audio devices\n<ul>\n<li>Select a Headset, Speaker and Input device</li>\n</ul>\n</li>\n<li>Set a Push-To-Talk (PTT) bind</li>\n<li>Save your changes by pressing \'Apply all\' on the bottom right</li>\n</ul>\n<p id=\"bkmrk-\"><img src=\"img/AFVSettings.png\" alt=\"Audio for VATSIM settings\"></p>\n<h2 id=\"bkmrk-connecting-and-liste\">Connecting and Listening to ATC</h2>\n<ul id=\"bkmrk-open-audio-for-vatsi\">\n<li>Open Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.</li>\n<li>Click \'RX\' (receive) to listen in the frequency.</li>\n<li>Click \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.</li>\n</ul>\n<p id=\"bkmrk-still-having-issues-\">Still having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the <a href=\"https://community.vatsim.net/\">VATSIM Community Server\'s</a></p>\n','What is Audio for VATSIM?\nAudio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters.\nOur resources page, where you can find the Audio for VATSIM download link can be found here\n!!! warning\nAudio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found here\nSetting up Audio for VATSIM\n\nInput your VATSIM Details\n\nYour VATSIM CID\nYour VATSIM Password\n\n\nConfigure audio devices\n\nSelect a Headset, Speaker and Input device\n\n\nSet a Push-To-Talk (PTT) bind\nSave your changes by pressing \'Apply all\' on the bottom right\n\n\nConnecting and Listening to ATC\n\nOpen Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.\nClick \'RX\' (receive) to listen in the frequency.\nClick \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.\n\nStill having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the VATSIM Community Server\'s\n',8,'2026-05-05 11:05:09','2026-05-05 11:05:09','audio-for-vatsim','audio','version','## What is Audio for VATSIM?\r\nAudio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters. \r\n\r\nOur resources page, where you can find the Audio for VATSIM download link can be found [here](https://eaip2.vatssa.com/General/Resources/Links/)\r\n\r\n!!! warning \r\n    Audio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found [here](https://eaip2.vatssa.com/General/Resources/Software/TrackAudio%20Guide%20-%20Controller/)\r\n\r\n## Setting up Audio for VATSIM\r\n\r\n- Input your VATSIM Details\r\n  * Your VATSIM CID\r\n  * Your VATSIM Password\r\n- Configure audio devices\r\n  * Select a Headset, Speaker and Input device\r\n- Set a Push-To-Talk (PTT) bind\r\n- Save your changes by pressing \'Apply all\' on the bottom right\r\n\r\n![Audio for VATSIM settings](img/AFVSettings.png)\r\n\r\n## Connecting and Listening to ATC\r\n\r\n- Open Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.\r\n- Click \'RX\' (receive) to listen in the frequency.\r\n- Click \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.\r\n\r\nStill having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the [VATSIM Community Server\'s](https://community.vatsim.net/)','Initial publish',1),
(20,55,'Tack Audio','<h2 id=\"bkmrk-what-is-trackaudio%3F\">What is TrackAudio?</h2>\n<p id=\"bkmrk-trackaudio-is-a-next\">TrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.</p>\n<p id=\"bkmrk-congratulations%21-you\">Congratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In VATSSA we use TrackAudio as our recommended audio client.</p>\n<h2 id=\"bkmrk-setting-up-trackaudi\">Setting up TrackAudio</h2>\n<ul id=\"bkmrk-input-your-vatsim-de\">\n<li>Input your VATSIM Details\n<ul>\n<li>Your VATSIM CID</li>\n<li>Your VATSIM Password</li>\n</ul>\n</li>\n<li>Configure audio devices\n<ul>\n<li>Select a Headset, Speaker and Input device</li>\n</ul>\n</li>\n<li>Set a Push-To-Talk (PTT) bind</li>\n<li>Save your changes by pressing \'Close\' on the bottom right</li>\n</ul>\n<h2 id=\"bkmrk-connecting-and-trans\">Connecting and Transmitting on Frequency</h2>\n<ul id=\"bkmrk-open-trackaudio%2C-if-\">\n<li>Open TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.</li>\n<li>Once connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.</li>\n<li>Click \'TX\' (transmit) to both recieve and transmit on the selected frequency.</li>\n<li>Use your selected PTT button to transmit on the frequency.</li>\n</ul>\n','What is TrackAudio?\nTrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.\nCongratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In VATSSA we use TrackAudio as our recommended audio client.\nSetting up TrackAudio\n\nInput your VATSIM Details\n\nYour VATSIM CID\nYour VATSIM Password\n\n\nConfigure audio devices\n\nSelect a Headset, Speaker and Input device\n\n\nSet a Push-To-Talk (PTT) bind\nSave your changes by pressing \'Close\' on the bottom right\n\nConnecting and Transmitting on Frequency\n\nOpen TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.\nOnce connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.\nClick \'TX\' (transmit) to both recieve and transmit on the selected frequency.\nUse your selected PTT button to transmit on the frequency.\n\n',8,'2026-05-05 11:06:05','2026-05-05 11:06:05','tack-audio','audio','version','## What is TrackAudio?\r\n\r\nTrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.\r\n\r\nCongratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In VATSSA we use TrackAudio as our recommended audio client.\r\n\r\n## Setting up TrackAudio\r\n\r\n- Input your VATSIM Details\r\n  * Your VATSIM CID\r\n  * Your VATSIM Password\r\n- Configure audio devices\r\n  * Select a Headset, Speaker and Input device\r\n- Set a Push-To-Talk (PTT) bind\r\n- Save your changes by pressing \'Close\' on the bottom right\r\n\r\n\r\n## Connecting and Transmitting on Frequency\r\n\r\n- Open TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.\r\n- Once connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.\r\n- Click \'TX\' (transmit) to both recieve and transmit on the selected frequency.\r\n- Use your selected PTT button to transmit on the frequency.','Initial publish',1),
(21,57,'New Page','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<blockquote id=\"bkmrk-gmmn-atis-info-a-113\">\n<p>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A</p>\n</blockquote>\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<blockquote id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\">\n<p>GMMM &gt; Plugins &gt; vATIS &gt; The profile</p>\n</blockquote>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<p id=\"bkmrk-vatis.webpvatis.webp\"><a href=\"http://localhost:6875/attachments/1\">VATIS.webp</a><a href=\"http://localhost:6875/attachments/1\">VATIS.webp</a></p>\n','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\n\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\n\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\nVATIS.webpVATIS.webp\n',8,'2026-05-05 11:22:37','2026-05-05 11:22:37','new-page','vatis','version','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n> GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n> GMMM > Plugins > vATIS > The profile\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n\r\n[VATIS.webp](http://localhost:6875/attachments/1)[VATIS.webp](http://localhost:6875/attachments/1)','Initial publish',1),
(23,57,'New Page','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<blockquote id=\"bkmrk-gmmn-atis-info-a-113\">\n<p>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A</p>\n</blockquote>\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<blockquote id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\">\n<p>GMMM &gt; Plugins &gt; vATIS &gt; The profile</p>\n</blockquote>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<p id=\"bkmrk-\"><img src=\"http://localhost:6875/attachments/1\" alt=\"VATIS.webp\"></p>\n','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\n\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\n\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\n\n',8,'2026-05-05 11:23:31','2026-05-05 11:23:31','new-page','vatis','version','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n> GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n> GMMM > Plugins > vATIS > The profile\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n\r\n![VATIS.webp](http://localhost:6875/attachments/1)','',2),
(24,57,'New Page','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<blockquote id=\"bkmrk-gmmn-atis-info-a-113\">\n<p>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A</p>\n</blockquote>\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<blockquote id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\">\n<p>GMMM &gt; Plugins &gt; vATIS &gt; The profile</p>\n</blockquote>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<img src=\"http://localhost:6875/attachments/1\" alt=\"drawing\" width=\"150\" id=\"bkmrk-\">\n','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\n\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\n\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\n\n',8,'2026-05-05 11:24:27','2026-05-05 11:24:27','new-page','vatis','version','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n> GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n> GMMM > Plugins > vATIS > The profile\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n\r\n<img src=\"http://localhost:6875/attachments/1\" alt=\"drawing\" width=\"150\"/>','',3),
(25,57,'New Page','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<blockquote id=\"bkmrk-gmmn-atis-info-a-113\">\n<p>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A</p>\n</blockquote>\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<blockquote id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\">\n<p>GMMM &gt; Plugins &gt; vATIS &gt; The profile</p>\n</blockquote>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<img src=\"http://localhost:6875/attachments/1\" alt=\"drawing\" width=\"250\" id=\"bkmrk-\">\n','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\n\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\n\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\n\n',8,'2026-05-05 11:24:34','2026-05-05 11:24:34','new-page','vatis','version','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n> GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n> GMMM > Plugins > vATIS > The profile\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n\r\n<img src=\"http://localhost:6875/attachments/1\" alt=\"drawing\" width=\"250\"/>','',4),
(26,57,'New Page','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<blockquote id=\"bkmrk-gmmn-atis-info-a-113\">\n<p>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A</p>\n</blockquote>\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<blockquote id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\">\n<p>GMMM &gt; Plugins &gt; vATIS &gt; The profile</p>\n</blockquote>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<p align=\"center\" id=\"bkmrk-\">\n<img src=\"http://localhost:6875/attachments/1\" alt=\"drawing\" width=\"250\">\n</p>','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\n\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\n\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\n\n\n',8,'2026-05-05 11:25:12','2026-05-05 11:25:12','new-page','vatis','version','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n> GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n> GMMM > Plugins > vATIS > The profile\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n<p align=\"center\">\r\n<img src=\"http://localhost:6875/attachments/1\" alt=\"drawing\" width=\"250\"/>','',5),
(27,57,'vATIS','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<blockquote id=\"bkmrk-gmmn-atis-info-a-113\">\n<p>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A</p>\n</blockquote>\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<blockquote id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\">\n<p>GMMM &gt; Plugins &gt; vATIS &gt; The profile</p>\n</blockquote>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<p align=\"center\" id=\"bkmrk-\">\n<img src=\"http://localhost:6875/attachments/1\" alt=\"drawing\" width=\"250\">\n</p>\nThen click \"Save\"\n','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\n\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\n\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\n\n\n\nThen click \"Save\"\n',8,'2026-05-05 11:25:47','2026-05-05 11:25:47','vatis','vatis','version','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n> GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n> GMMM > Plugins > vATIS > The profile\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n<p align=\"center\">\r\n<img src=\"http://localhost:6875/attachments/1\" alt=\"drawing\" width=\"250\"/>\r\n</p>\r\nThen click \"Save\"','',6),
(29,57,'vATIS','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<blockquote id=\"bkmrk-gmmn-atis-info-a-113\">\n<p>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A</p>\n</blockquote>\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<blockquote id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\">\n<p>GMMM &gt; Plugins &gt; vATIS &gt; The profile</p>\n</blockquote>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<p align=\"center\" id=\"bkmrk-\">\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\">\n</p>\nThen click \"Save\"\n<h2 id=\"bkmrk-how-to-connect-and-a\">How to connect and ATIS</h2>\n<p id=\"bkmrk-now-you-have-done-th\">Now you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"</p>\n<h2 id=\"bkmrk-optional-extras%3A\">Optional Extras:</h2>\n<h3 id=\"bkmrk-airport-conditions%3A\">Airport Conditions:</h3>\n<p id=\"bkmrk-after-you-load-the-r\">After you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:</p>\n<blockquote id=\"bkmrk-expect-ils%2Fz-rwy-35-\">\n<p>EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.</p>\n</blockquote>\n<p align=\"center\" id=\"bkmrk--1\">\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"250\">\n</p>\n<h3 id=\"bkmrk-notams%3A\">NOTAMs:</h3>\n','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\n\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\n\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\n\n\n\nThen click \"Save\"\nHow to connect and ATIS\nNow you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"\nOptional Extras:\nAirport Conditions:\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\n\nEXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\n\n\n\n\nNOTAMs:\n',8,'2026-05-05 11:31:51','2026-05-05 11:31:51','vatis','vatis','version','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n> GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n> GMMM > Plugins > vATIS > The profile\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n<p align=\"center\">\r\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\"/>\r\n</p>\r\nThen click \"Save\"\r\n\r\n## How to connect and ATIS\r\n\r\nNow you have done that the hard part is over\r\nIn order to conect and ATIS you must choose the airport which you are controlling\r\nThen in the dropdown bar along the bottom, select the runway configuration you are using\r\nThen Click \"Connect\"\r\n\r\n## Optional Extras:\r\n### Airport Conditions:\r\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\r\n\r\n>EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"250\"/>\r\n</p>\r\n\r\n### NOTAMs:','',7),
(31,57,'vATIS','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<blockquote id=\"bkmrk-gmmn-atis-info-a-113\">\n<p>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A</p>\n</blockquote>\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<blockquote id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\">\n<p>GMMM &gt; Plugins &gt; vATIS &gt; The profile</p>\n</blockquote>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<p align=\"center\" id=\"bkmrk-\">\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\">\n</p>\nThen click \"Save\"\n<h2 id=\"bkmrk-how-to-connect-and-a\">How to connect and ATIS</h2>\n<p id=\"bkmrk-now-you-have-done-th\">Now you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"</p>\n<h2 id=\"bkmrk-optional-extras%3A\">Optional Extras:</h2>\n<h3 id=\"bkmrk-airport-conditions%3A\">Airport Conditions:</h3>\n<p id=\"bkmrk-after-you-load-the-r\">After you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:</p>\n<blockquote id=\"bkmrk-expect-ils%2Fz-rwy-35-\">\n<p>EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.</p>\n</blockquote>\n<p align=\"center\" id=\"bkmrk--1\">\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to-\">If you ever need to change them just type in the box and it should automatically save.</p>\n<h3 id=\"bkmrk-notams%3A\">NOTAMs:</h3>\n<p id=\"bkmrk-after-you-load-the-r-1\">After you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:</p>\n<p align=\"center\" id=\"bkmrk--2\">\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to--1\">If you ever need to change them just type in the box and it should automatically save</p>\n','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\n\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\n\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\n\n\n\nThen click \"Save\"\nHow to connect and ATIS\nNow you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"\nOptional Extras:\nAirport Conditions:\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\n\nEXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\n\n\n\n\nIf you ever need to change them just type in the box and it should automatically save.\nNOTAMs:\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\n\n\n\nIf you ever need to change them just type in the box and it should automatically save\n',8,'2026-05-05 11:35:29','2026-05-05 11:35:29','vatis','vatis','version','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n> GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n> GMMM > Plugins > vATIS > The profile\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n<p align=\"center\">\r\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\"/>\r\n</p>\r\nThen click \"Save\"\r\n\r\n## How to connect and ATIS\r\n\r\nNow you have done that the hard part is over\r\nIn order to conect and ATIS you must choose the airport which you are controlling\r\nThen in the dropdown bar along the bottom, select the runway configuration you are using\r\nThen Click \"Connect\"\r\n\r\n## Optional Extras:\r\n### Airport Conditions:\r\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\r\n\r\n>EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save.\r\n\r\n### NOTAMs:\r\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save','',8),
(32,57,'vATIS','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<blockquote id=\"bkmrk-gmmn-atis-info-a-113\">\n<p>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A</p>\n</blockquote>\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<blockquote id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\">\n<p>GMMM &gt; Plugins &gt; vATIS &gt; The profile</p>\n</blockquote>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<p align=\"center\" id=\"bkmrk-\">\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\">\n</p>\nThen click \"Save\"\n<h2 id=\"bkmrk-how-to-connect-and-a\">How to connect and ATIS</h2>\n<p id=\"bkmrk-now-you-have-done-th\">Now you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"</p>\n<h2 id=\"bkmrk-optional-extras%3A\">Optional Extras:</h2>\n<h3 id=\"bkmrk-airport-conditions%3A\">Airport Conditions:</h3>\n<p id=\"bkmrk-after-you-load-the-r\">After you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:</p>\n<blockquote id=\"bkmrk-expect-ils%2Fz-rwy-35-\">\n<p>EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.</p>\n</blockquote>\n<p align=\"center\" id=\"bkmrk--1\">\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to-\">If you ever need to change them just type in the box and it should automatically save.</p>\n<h3 id=\"bkmrk-notams%3A\">NOTAMs:</h3>\n<p id=\"bkmrk-after-you-load-the-r-1\">After you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:</p>\n<p align=\"center\" id=\"bkmrk--2\">\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to--1\">If you ever need to change them just type in the box and it should automatically save</p>\n','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\n\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\n\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\n\n\n\nThen click \"Save\"\nHow to connect and ATIS\nNow you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"\nOptional Extras:\nAirport Conditions:\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\n\nEXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\n\n\n\n\nIf you ever need to change them just type in the box and it should automatically save.\nNOTAMs:\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\n\n\n\nIf you ever need to change them just type in the box and it should automatically save\n',8,'2026-05-05 11:37:19','2026-05-05 11:37:19','vatis','vatis','version','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n> GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n> GMMM > Plugins > vATIS > The profile\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n<p align=\"center\">\r\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\"/>\r\n</p>\r\nThen click \"Save\"\r\n\r\n## How to connect and ATIS\r\n\r\nNow you have done that the hard part is over\r\nIn order to conect and ATIS you must choose the airport which you are controlling\r\nThen in the dropdown bar along the bottom, select the runway configuration you are using\r\nThen Click \"Connect\"\r\n\r\n## Optional Extras:\r\n### Airport Conditions:\r\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\r\n\r\n>EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save.\r\n\r\n### NOTAMs:\r\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save','Initail vATIS file',9),
(34,60,'x','','',8,'2026-05-05 11:45:53','2026-05-05 11:45:53','x','vatis','version','','Initial publish',1),
(36,61,'z','','',8,'2026-05-05 11:47:36','2026-05-05 11:47:36','z','euroscope','version','','Initial publish',1),
(37,62,'a','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<blockquote id=\"bkmrk-gmmn-atis-info-a-113\">\n<p>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A</p>\n</blockquote>\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<blockquote id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\">\n<p>GMMM &gt; Plugins &gt; vATIS &gt; The profile</p>\n</blockquote>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<p align=\"center\" id=\"bkmrk-\">\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\">\n</p>\nThen click \"Save\"\n<h2 id=\"bkmrk-how-to-connect-and-a\">How to connect and ATIS</h2>\n<p id=\"bkmrk-now-you-have-done-th\">Now you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"</p>\n<h2 id=\"bkmrk-optional-extras%3A\">Optional Extras:</h2>\n<h3 id=\"bkmrk-airport-conditions%3A\">Airport Conditions:</h3>\n<p id=\"bkmrk-after-you-load-the-r\">After you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:</p>\n<blockquote id=\"bkmrk-expect-ils%2Fz-rwy-35-\">\n<p>EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.</p>\n</blockquote>\n<p align=\"center\" id=\"bkmrk--1\">\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to-\">If you ever need to change them just type in the box and it should automatically save.</p>\n<h3 id=\"bkmrk-notams%3A\">NOTAMs:</h3>\n<p id=\"bkmrk-after-you-load-the-r-1\">After you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:</p>\n<p align=\"center\" id=\"bkmrk--2\">\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to--1\">If you ever need to change them just type in the box and it should automatically save</p>\n','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\n\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\n\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\n\n\n\nThen click \"Save\"\nHow to connect and ATIS\nNow you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"\nOptional Extras:\nAirport Conditions:\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\n\nEXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\n\n\n\n\nIf you ever need to change them just type in the box and it should automatically save.\nNOTAMs:\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\n\n\n\nIf you ever need to change them just type in the box and it should automatically save\n',8,'2026-05-05 11:47:51','2026-05-05 11:47:51','a','euroscope','version','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n> GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n> GMMM > Plugins > vATIS > The profile\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n<p align=\"center\">\r\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\"/>\r\n</p>\r\nThen click \"Save\"\r\n\r\n## How to connect and ATIS\r\n\r\nNow you have done that the hard part is over\r\nIn order to conect and ATIS you must choose the airport which you are controlling\r\nThen in the dropdown bar along the bottom, select the runway configuration you are using\r\nThen Click \"Connect\"\r\n\r\n## Optional Extras:\r\n### Airport Conditions:\r\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\r\n\r\n>EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save.\r\n\r\n### NOTAMs:\r\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save','Initial publish',1),
(38,63,'test','','',8,'2026-05-05 11:48:23','2026-05-05 11:48:24','test','vatis','version','','Initial publish',1),
(39,64,'aa','','',8,'2026-05-05 11:50:47','2026-05-05 11:50:47','aa','audio','version','','Initial publish',1),
(40,67,'Template','<h2 id=\"bkmrk-how-to-use-%7Bblank%7D\">How to use {BLANK}</h2>\n<p id=\"bkmrk-explain\">EXPLAIN</p>\n<h2 id=\"bkmrk-what-does-%7Bblank%7D-do\">What does {BLANK} do?</h2>\n<ul id=\"bkmrk-explain-1\">\n<li>Explain</li>\n</ul>\n<h2 id=\"bkmrk-how-do-i-set-up-%7Bbla\">How do i set up {BLANK}</h2>\n<p id=\"bkmrk-explain-2\">Explain</p>\n<h1 id=\"bkmrk-change-to-fix-your-p\">change to fix your page, but if this works, use it</h1>\n','How to use {BLANK}\nEXPLAIN\nWhat does {BLANK} do?\n\nExplain\n\nHow do i set up {BLANK}\nExplain\nchange to fix your page, but if this works, use it\n',8,'2026-05-05 11:53:02','2026-05-05 11:53:02','template','template','version','## How to use {BLANK}\r\n\r\nEXPLAIN\r\n\r\n## What does {BLANK} do?\r\n\r\n- Explain\r\n\r\n## How do i set up {BLANK}\r\n\r\nExplain\r\n\r\n# change to fix your page, but if this works, use it','Initial publish',1),
(41,69,'How to start','','',8,'2026-05-05 11:54:14','2026-05-05 11:54:14','how-to-start','how-to-use','version','','Initial publish',1),
(42,70,'How to use .md (The file type)','','',8,'2026-05-05 11:54:59','2026-05-05 11:54:59','how-to-use-md-the-file-type','how-to-use','version','','Initial publish',1),
(44,69,'How to start','<h2 id=\"bkmrk-step-1\">Step 1</h2>\n<p id=\"bkmrk-find-the-shelf-you-a\">Find the shelf you are adding to</p>\n<h2 id=\"bkmrk-step-2\">Step 2</h2>\n<p id=\"bkmrk-find-the-book-you-ar\">Find the book you are adding to, if there is no book then you make one</p>\n<p align=\"center\" id=\"bkmrk-\">\n<img src=\"/attachments/4\" alt=\"drawing\" width=\"200\">\n</p>\n<h2 id=\"bkmrk-step-3\">Step 3</h2>\n<p id=\"bkmrk-then-add-a-new-%22page\">Then Add a new \"Page\" into that chapter following the guide:\n<a href=\"/books/how-to-use/page/how-to-use-md-the-file-type\">HERE</a></p>\n<h2 id=\"bkmrk-step-4\">Step 4</h2>\n<p id=\"bkmrk-once-you-are-done-cl\">Once you are done clck the \"Save Page\" Button in the top right</p>\n','Step 1\nFind the shelf you are adding to\nStep 2\nFind the book you are adding to, if there is no book then you make one\n\n\n\nStep 3\nThen Add a new \"Page\" into that chapter following the guide:\nHERE\nStep 4\nOnce you are done clck the \"Save Page\" Button in the top right\n',8,'2026-05-05 12:01:46','2026-05-05 12:01:46','how-to-start','how-to-use','version','## Step 1\r\nFind the shelf you are adding to\r\n\r\n## Step 2\r\nFind the book you are adding to, if there is no book then you make one\r\n<p align=\"center\">\r\n<img src=\"/attachments/4\", alt=\"drawing\", width= 200>\r\n</p>\r\n\r\n## Step 3\r\nThen Add a new \"Page\" into that chapter following the guide:\r\n[HERE](/books/how-to-use/page/how-to-use-md-the-file-type)\r\n\r\n## Step 4\r\nOnce you are done clck the \"Save Page\" Button in the top right','',2),
(46,70,'How to use .md (The file type)','<h1 id=\"bkmrk-markdown-guide-%28with\">Markdown Guide (with Examples)</h1>\n<p id=\"bkmrk-markdown-is-a-simple\">Markdown is a simple way to format text using plain characters. It’s widely used for notes, documentation, GitHub READMEs, blogs, and more.</p>\n<hr id=\"bkmrk-\">\n<h2 id=\"bkmrk-1.-headings\">1. Headings</h2>\n<p id=\"bkmrk-use-%23-to-create-head\">Use <code>#</code> to create headings.</p>\n<pre id=\"bkmrk-%23-heading-1-%23%23-headi\"><code class=\"language-md\"># Heading 1\n## Heading 2\n### Heading 3\n#### Heading 4\n</code></pre>\n<h3 id=\"bkmrk-example-output%3A\">Example output:</h3>\n<h1 id=\"bkmrk-heading-1\">Heading 1</h1>\n<h2 id=\"bkmrk-heading-2\">Heading 2</h2>\n<h3 id=\"bkmrk-heading-3\">Heading 3</h3>\n<hr id=\"bkmrk--1\">\n<h2 id=\"bkmrk-2.-bold-and-italic-t\">2. Bold and Italic Text</h2>\n<h3 id=\"bkmrk-bold\">Bold</h3>\n<p id=\"bkmrk-use-%2A%2Adouble-asteris\">Use <code>**double asterisks**</code> or <code>__double underscores__</code>.</p>\n<pre id=\"bkmrk-%2A%2Athis-is-bold-text%2A\"><code class=\"language-md\">**This is bold text**\n__This is also bold__\n</code></pre>\n<h3 id=\"bkmrk-italic\">Italic</h3>\n<p id=\"bkmrk-use-%2Asingle-asterisk\">Use <code>*single asterisks*</code> or <code>_underscores_</code>.</p>\n<pre id=\"bkmrk-%2Athis-is-italic-text\"><code class=\"language-md\">*This is italic text*\n_This is also italic_\n</code></pre>\n<h3 id=\"bkmrk-bold-%2B-italic\">Bold + Italic</h3>\n<pre id=\"bkmrk-%2A%2A%2Athis-is-bold-and-\"><code class=\"language-md\">***This is bold and italic***\n</code></pre>\n<hr id=\"bkmrk--2\">\n<h2 id=\"bkmrk-3.-lists\">3. Lists</h2>\n<h3 id=\"bkmrk-unordered-lists\">Unordered Lists</h3>\n<p id=\"bkmrk-use--%2C-%2A%2C-or-%2B.\">Use <code>-</code>, <code>*</code>, or <code>+</code>.</p>\n<pre id=\"bkmrk---apples---bananas--\"><code class=\"language-md\">- Apples\n- Bananas\n- Oranges\n</code></pre>\n<h3 id=\"bkmrk-ordered-lists\">Ordered Lists</h3>\n<p id=\"bkmrk-use-numbers.\">Use numbers.</p>\n<pre id=\"bkmrk-1.-first-item-2.-sec\"><code class=\"language-md\">1. First item\n2. Second item\n3. Third item\n</code></pre>\n<hr id=\"bkmrk--3\">\n<h2 id=\"bkmrk-4.-links\">4. Links</h2>\n<pre id=\"bkmrk-%5Bopenai%5D%28https%3A%2F%2Fwww\"><code class=\"language-md\">[OpenAI](https://www.openai.com)\n</code></pre>\n<hr id=\"bkmrk--4\">\n<h2 id=\"bkmrk-5.-images\">5. Images</h2>\n<pre id=\"bkmrk-%21%5Balt-text%5D%28https%3A%2F%2F\"><code class=\"language-md\">![Alt text](https://example.com/image.jpg)\n</code></pre>\n<hr id=\"bkmrk--5\">\n<h2 id=\"bkmrk-6.-code\">6. Code</h2>\n<h3 id=\"bkmrk-inline-code\">Inline code</h3>\n<p id=\"bkmrk-use-backticks-%60%3A\">Use backticks <code>`</code>:</p>\n<pre id=\"bkmrk-use-the-%60print%28%29%60-fu\"><code class=\"language-md\">Use the `print()` function in Python.\n</code></pre>\n<h3 id=\"bkmrk-code-blocks\">Code blocks</h3>\n<p id=\"bkmrk-use-triple-backticks\">Use triple backticks:</p>\n<pre id=\"bkmrk-%60%60%60python-def-hello%28\"><code class=\"language-md\">```python\ndef hello():\n    print(\"Hello, world!\")\n</code></pre>\n<pre id=\"bkmrk-----%23%23-7.-blockquote\"><code>\n---\n\n## 7. Blockquotes\n\nUse `&gt;`:\n\n```md\n&gt; This is a quote.\n</code></pre>\n<hr id=\"bkmrk--6\">\n<h2 id=\"bkmrk-8.-horizontal-line\">8. Horizontal Line</h2>\n<p id=\"bkmrk-use-three-dashes%3A\">Use three dashes:</p>\n<pre id=\"bkmrk----\"><code class=\"language-md\">---\n</code></pre>\n<hr id=\"bkmrk--7\">\n<h2 id=\"bkmrk-9.-tables\">9. Tables</h2>\n<pre id=\"bkmrk-%7C-name-%7C-age-%7C-city-\"><code class=\"language-md\">| Name   | Age | City    |\n|--------|-----|---------|\n| Alice  | 14  | London  |\n| Bob    | 15  | Paris   |\n</code></pre>\n<hr id=\"bkmrk--8\">\n<h2 id=\"bkmrk-10.-checkboxes-%28task\">10. Checkboxes (Task Lists)</h2>\n<pre id=\"bkmrk---%5Bx%5D-learn-markdown\"><code class=\"language-md\">- [x] Learn Markdown\n- [ ] Build a project\n- [ ] Master formatting\n</code></pre>\n<hr id=\"bkmrk--9\">\n<h2 id=\"bkmrk-11.-escaping-charact\">11. Escaping Characters</h2>\n<p id=\"bkmrk-if-you-want-to-show-\">If you want to show special characters, use a backslash <code>\\</code>.</p>\n<pre id=\"bkmrk-%5C%2Athis-is-not-italic\"><code class=\"language-md\">\\*This is not italic\\*\n</code></pre>\n<hr id=\"bkmrk--10\">\n<h2 id=\"bkmrk-12.-combining-everyt\">12. Combining Everything</h2>\n<pre id=\"bkmrk-%23-my-notes-%23%23-today%E2%80%99\"><code class=\"language-md\"># My Notes\n\n## Today’s Tasks\n\n- [x] Study Markdown\n- [ ] Practice coding\n\n### Reminder\n\n&gt; “Practice makes progress.”\n\nCheck [this site](https://maghrebvacc.com) for more info.\n\n```\n</code></pre>\n<pre id=\"bkmrk-----%23%23-quick-cheat-s\"><code>\n---\n\n## Quick Cheat Sheet\n\n| Feature | Syntax |\n|--------|--------|\n| Heading | `#` |\n| Bold | `**text**` |\n| Italic | `*text*` |\n| Link | `[text](url)` |\n| List | `- item` |\n| Code | `` `code` `` |\n| Blockquote | `&gt;` |\n\n---\n</code></pre>\n','Markdown Guide (with Examples)\nMarkdown is a simple way to format text using plain characters. It’s widely used for notes, documentation, GitHub READMEs, blogs, and more.\n\n1. Headings\nUse # to create headings.\n# Heading 1\n## Heading 2\n### Heading 3\n#### Heading 4\n\nExample output:\nHeading 1\nHeading 2\nHeading 3\n\n2. Bold and Italic Text\nBold\nUse **double asterisks** or __double underscores__.\n**This is bold text**\n__This is also bold__\n\nItalic\nUse *single asterisks* or _underscores_.\n*This is italic text*\n_This is also italic_\n\nBold + Italic\n***This is bold and italic***\n\n\n3. Lists\nUnordered Lists\nUse -, *, or +.\n- Apples\n- Bananas\n- Oranges\n\nOrdered Lists\nUse numbers.\n1. First item\n2. Second item\n3. Third item\n\n\n4. Links\n[OpenAI](https://www.openai.com)\n\n\n5. Images\n![Alt text](https://example.com/image.jpg)\n\n\n6. Code\nInline code\nUse backticks `:\nUse the `print()` function in Python.\n\nCode blocks\nUse triple backticks:\n```python\ndef hello():\n    print(\"Hello, world!\")\n\n\n---\n\n## 7. Blockquotes\n\nUse `>`:\n\n```md\n> This is a quote.\n\n\n8. Horizontal Line\nUse three dashes:\n---\n\n\n9. Tables\n| Name   | Age | City    |\n|--------|-----|---------|\n| Alice  | 14  | London  |\n| Bob    | 15  | Paris   |\n\n\n10. Checkboxes (Task Lists)\n- [x] Learn Markdown\n- [ ] Build a project\n- [ ] Master formatting\n\n\n11. Escaping Characters\nIf you want to show special characters, use a backslash \\.\n\\*This is not italic\\*\n\n\n12. Combining Everything\n# My Notes\n\n## Today’s Tasks\n\n- [x] Study Markdown\n- [ ] Practice coding\n\n### Reminder\n\n> “Practice makes progress.”\n\nCheck [this site](https://maghrebvacc.com) for more info.\n\n```\n\n\n---\n\n## Quick Cheat Sheet\n\n| Feature | Syntax |\n|--------|--------|\n| Heading | `#` |\n| Bold | `**text**` |\n| Italic | `*text*` |\n| Link | `[text](url)` |\n| List | `- item` |\n| Code | `` `code` `` |\n| Blockquote | `>` |\n\n---\n\n',8,'2026-05-05 12:06:24','2026-05-05 12:06:24','how-to-use-md-the-file-type','how-to-use','version','# Markdown Guide (with Examples)\r\n\r\nMarkdown is a simple way to format text using plain characters. It’s widely used for notes, documentation, GitHub READMEs, blogs, and more.\r\n\r\n---\r\n\r\n## 1. Headings\r\n\r\nUse `#` to create headings.\r\n\r\n```md\r\n# Heading 1\r\n## Heading 2\r\n### Heading 3\r\n#### Heading 4\r\n```\r\n\r\n### Example output:\r\n\r\n# Heading 1\r\n\r\n## Heading 2\r\n\r\n### Heading 3\r\n\r\n---\r\n\r\n## 2. Bold and Italic Text\r\n\r\n### Bold\r\n\r\nUse `**double asterisks**` or `__double underscores__`.\r\n\r\n```md\r\n**This is bold text**\r\n__This is also bold__\r\n```\r\n\r\n### Italic\r\n\r\nUse `*single asterisks*` or `_underscores_`.\r\n\r\n```md\r\n*This is italic text*\r\n_This is also italic_\r\n```\r\n\r\n### Bold + Italic\r\n\r\n```md\r\n***This is bold and italic***\r\n```\r\n\r\n---\r\n\r\n## 3. Lists\r\n\r\n### Unordered Lists\r\n\r\nUse `-`, `*`, or `+`.\r\n\r\n```md\r\n- Apples\r\n- Bananas\r\n- Oranges\r\n```\r\n\r\n### Ordered Lists\r\n\r\nUse numbers.\r\n\r\n```md\r\n1. First item\r\n2. Second item\r\n3. Third item\r\n```\r\n\r\n---\r\n\r\n## 4. Links\r\n\r\n```md\r\n[OpenAI](https://www.openai.com)\r\n```\r\n\r\n---\r\n\r\n## 5. Images\r\n\r\n```md\r\n![Alt text](https://example.com/image.jpg)\r\n```\r\n\r\n---\r\n\r\n## 6. Code\r\n\r\n### Inline code\r\n\r\nUse backticks `` ` ``:\r\n\r\n```md\r\nUse the `print()` function in Python.\r\n```\r\n\r\n### Code blocks\r\n\r\nUse triple backticks:\r\n\r\n````md\r\n```python\r\ndef hello():\r\n    print(\"Hello, world!\")\r\n````\r\n\r\n````\r\n\r\n---\r\n\r\n## 7. Blockquotes\r\n\r\nUse `>`:\r\n\r\n```md\r\n> This is a quote.\r\n````\r\n\r\n---\r\n\r\n## 8. Horizontal Line\r\n\r\nUse three dashes:\r\n\r\n```md\r\n---\r\n```\r\n\r\n---\r\n\r\n## 9. Tables\r\n\r\n```md\r\n| Name   | Age | City    |\r\n|--------|-----|---------|\r\n| Alice  | 14  | London  |\r\n| Bob    | 15  | Paris   |\r\n```\r\n\r\n---\r\n\r\n## 10. Checkboxes (Task Lists)\r\n\r\n```md\r\n- [x] Learn Markdown\r\n- [ ] Build a project\r\n- [ ] Master formatting\r\n```\r\n\r\n---\r\n\r\n## 11. Escaping Characters\r\n\r\nIf you want to show special characters, use a backslash `\\`.\r\n\r\n```md\r\n\\*This is not italic\\*\r\n```\r\n\r\n---\r\n\r\n## 12. Combining Everything\r\n\r\n````md\r\n# My Notes\r\n\r\n## Today’s Tasks\r\n\r\n- [x] Study Markdown\r\n- [ ] Practice coding\r\n\r\n### Reminder\r\n\r\n> “Practice makes progress.”\r\n\r\nCheck [this site](https://maghrebvacc.com) for more info.\r\n\r\n```\r\n````\r\n\r\n```\r\n\r\n---\r\n\r\n## Quick Cheat Sheet\r\n\r\n| Feature | Syntax |\r\n|--------|--------|\r\n| Heading | `#` |\r\n| Bold | `**text**` |\r\n| Italic | `*text*` |\r\n| Link | `[text](url)` |\r\n| List | `- item` |\r\n| Code | `` `code` `` |\r\n| Blockquote | `>` |\r\n\r\n---\r\n```','',2),
(48,57,'vATIS','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<pre id=\"bkmrk-gmmn-atis-info-a-113\"><code>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A \n</code></pre>\n<hr id=\"bkmrk-\">\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<pre id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\"><code>GMMM &gt; Plugins &gt; vATIS &gt; The profile\n</code></pre>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<p align=\"center\" id=\"bkmrk--1\">\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\">\n</p>\nThen click \"Save\"\n<hr id=\"bkmrk--2\">\n<h2 id=\"bkmrk-how-to-connect-and-a\">How to connect and ATIS</h2>\n<p id=\"bkmrk-now-you-have-done-th\">Now you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"</p>\n<hr id=\"bkmrk--3\">\n<h2 id=\"bkmrk-optional-extras%3A\">Optional Extras:</h2>\n<h3 id=\"bkmrk-airport-conditions%3A\">Airport Conditions:</h3>\n<p id=\"bkmrk-after-you-load-the-r\">After you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:</p>\n<pre id=\"bkmrk-expect-ils%2Fz-rwy-35-\"><code>EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\n</code></pre>\n<p align=\"center\" id=\"bkmrk--4\">\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to-\">If you ever need to change them just type in the box and it should automatically save.</p>\n<hr id=\"bkmrk--5\">\n<h3 id=\"bkmrk-notams%3A\">NOTAMs:</h3>\n<p id=\"bkmrk-after-you-load-the-r-1\">After you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:</p>\n<p align=\"center\" id=\"bkmrk--6\">\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to--1\">If you ever need to change them just type in the box and it should automatically save</p>\n','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A \n\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\n\n\n\nThen click \"Save\"\n\nHow to connect and ATIS\nNow you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"\n\nOptional Extras:\nAirport Conditions:\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\nEXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\n\n\n\n\nIf you ever need to change them just type in the box and it should automatically save.\n\nNOTAMs:\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\n\n\n\nIf you ever need to change them just type in the box and it should automatically save\n',8,'2026-05-05 12:09:05','2026-05-05 12:09:05','vatis','vatis','version','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n``` \r\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A \r\n```\r\n\r\n---\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n```\r\nGMMM > Plugins > vATIS > The profile\r\n```\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n<p align=\"center\">\r\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\"/>\r\n</p>\r\nThen click \"Save\"\r\n\r\n---\r\n\r\n## How to connect and ATIS\r\n\r\nNow you have done that the hard part is over\r\nIn order to conect and ATIS you must choose the airport which you are controlling\r\nThen in the dropdown bar along the bottom, select the runway configuration you are using\r\nThen Click \"Connect\"\r\n\r\n---\r\n\r\n## Optional Extras:\r\n### Airport Conditions:\r\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\r\n\r\n```\r\nEXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\r\n```\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save.\r\n\r\n---\r\n\r\n### NOTAMs:\r\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save','',15),
(49,57,'vATIS','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<pre id=\"bkmrk-gmmn-atis-info-a-113\"><code>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. \n/RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \n/ RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \n/AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \n/ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \n/HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A \n</code></pre>\n<hr id=\"bkmrk-\">\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<pre id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\"><code>GMMM &gt; Plugins &gt; vATIS &gt; The profile\n</code></pre>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<p align=\"center\" id=\"bkmrk--1\">\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\">\n</p>\nThen click \"Save\"\n<hr id=\"bkmrk--2\">\n<h2 id=\"bkmrk-how-to-connect-and-a\">How to connect and ATIS</h2>\n<p id=\"bkmrk-now-you-have-done-th\">Now you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"</p>\n<hr id=\"bkmrk--3\">\n<h2 id=\"bkmrk-optional-extras%3A\">Optional Extras:</h2>\n<h3 id=\"bkmrk-airport-conditions%3A\">Airport Conditions:</h3>\n<p id=\"bkmrk-after-you-load-the-r\">After you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:</p>\n<pre id=\"bkmrk-expect-ils%2Fz-rwy-35-\"><code>EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\n</code></pre>\n<p align=\"center\" id=\"bkmrk--4\">\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to-\">If you ever need to change them just type in the box and it should automatically save.</p>\n<hr id=\"bkmrk--5\">\n<h3 id=\"bkmrk-notams%3A\">NOTAMs:</h3>\n<p id=\"bkmrk-after-you-load-the-r-1\">After you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:</p>\n<p align=\"center\" id=\"bkmrk--6\">\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to--1\">If you ever need to change them just type in the box and it should automatically save</p>\n','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. \n/RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \n/ RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \n/AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \n/ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \n/HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A \n\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\n\n\n\nThen click \"Save\"\n\nHow to connect and ATIS\nNow you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"\n\nOptional Extras:\nAirport Conditions:\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\nEXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\n\n\n\n\nIf you ever need to change them just type in the box and it should automatically save.\n\nNOTAMs:\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\n\n\n\nIf you ever need to change them just type in the box and it should automatically save\n',8,'2026-05-05 12:09:36','2026-05-05 12:09:36','vatis','vatis','version','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n``` \r\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. \r\n/RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \r\n/ RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \r\n/AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \r\n/ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \r\n/HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. 01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A \r\n```\r\n\r\n---\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n```\r\nGMMM > Plugins > vATIS > The profile\r\n```\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n<p align=\"center\">\r\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\"/>\r\n</p>\r\nThen click \"Save\"\r\n\r\n---\r\n\r\n## How to connect and ATIS\r\n\r\nNow you have done that the hard part is over\r\nIn order to conect and ATIS you must choose the airport which you are controlling\r\nThen in the dropdown bar along the bottom, select the runway configuration you are using\r\nThen Click \"Connect\"\r\n\r\n---\r\n\r\n## Optional Extras:\r\n### Airport Conditions:\r\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\r\n\r\n```\r\nEXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. /RWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. / RISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. /AFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. /ON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. /HEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\r\n```\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save.\r\n\r\n---\r\n\r\n### NOTAMs:\r\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save','',16),
(51,57,'vATIS','<h2 id=\"bkmrk-what-is-vatis\">What is vATIS</h2>\n<p id=\"bkmrk-vatis-is-the-softwar\">vATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.</p>\n<pre id=\"bkmrk-gmmn-atis-info-a-113\"><code>GMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. \nRWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \nRISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \nAFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \nON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \nHEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. \n01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A \n</code></pre>\n<hr id=\"bkmrk-\">\n<h2 id=\"bkmrk-how-to-setup-vatis\">How to Setup vATIS</h2>\n<p id=\"bkmrk-when-you-first-downl\">When you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at</p>\n<pre id=\"bkmrk-gmmm-%3E-plugins-%3E-vat\"><code>GMMM &gt; Plugins &gt; vATIS &gt; The profile\n</code></pre>\n<p id=\"bkmrk-double-click-it-to-l\">Double click it to load it into the software</p>\n<p id=\"bkmrk-next-go-to-%22user-con\">Next go to \"User configuration\" and enter your</p>\n<ul id=\"bkmrk-%22name%22---this-is-the\">\n<li>\"Name\" - this is the name which shows up as the ATIS Connection</li>\n<li>\"VATSIM ID\" - this is your CID you were given when making your VATSIM account</li>\n<li>\"Password\" - Your VATSIM password</li>\n<li>\"Controller Rating\" - Your controller rating</li>\n</ul>\n<p align=\"center\" id=\"bkmrk--1\">\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\">\n</p>\nThen click \"Save\"\n<hr id=\"bkmrk--2\">\n<h2 id=\"bkmrk-how-to-connect-and-a\">How to connect and ATIS</h2>\n<p id=\"bkmrk-now-you-have-done-th\">Now you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"</p>\n<hr id=\"bkmrk--3\">\n<h2 id=\"bkmrk-optional-extras%3A\">Optional Extras:</h2>\n<h3 id=\"bkmrk-airport-conditions%3A\">Airport Conditions:</h3>\n<p id=\"bkmrk-after-you-load-the-r\">After you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:</p>\n<pre id=\"bkmrk-expect-ils%2Fz-rwy-35-\"><code>EXPECT ILS/Z RWY 35 LEFT. TRL FL50 \nRWY35L FOR LDG. /RWY35R FOR TAKEOFF. \nRISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \nRISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \nAFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \nON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \nHEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\n</code></pre>\n<p align=\"center\" id=\"bkmrk--4\">\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to-\">If you ever need to change them just type in the box and it should automatically save.</p>\n<hr id=\"bkmrk--5\">\n<h3 id=\"bkmrk-notams%3A\">NOTAMs:</h3>\n<p id=\"bkmrk-after-you-load-the-r-1\">After you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:</p>\n<p align=\"center\" id=\"bkmrk--6\">\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\">\n</p>\n<p id=\"bkmrk-if-you-ever-need-to--1\">If you ever need to change them just type in the box and it should automatically save</p>\n','What is vATIS\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. \nRWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \nRISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \nAFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \nON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \nHEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. \n01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A \n\n\nHow to Setup vATIS\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\nGMMM > Plugins > vATIS > The profile\n\nDouble click it to load it into the software\nNext go to \"User configuration\" and enter your\n\n\"Name\" - this is the name which shows up as the ATIS Connection\n\"VATSIM ID\" - this is your CID you were given when making your VATSIM account\n\"Password\" - Your VATSIM password\n\"Controller Rating\" - Your controller rating\n\n\n\n\nThen click \"Save\"\n\nHow to connect and ATIS\nNow you have done that the hard part is over\nIn order to conect and ATIS you must choose the airport which you are controlling\nThen in the dropdown bar along the bottom, select the runway configuration you are using\nThen Click \"Connect\"\n\nOptional Extras:\nAirport Conditions:\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\nEXPECT ILS/Z RWY 35 LEFT. TRL FL50 \nRWY35L FOR LDG. /RWY35R FOR TAKEOFF. \nRISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \nRISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \nAFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \nON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \nHEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\n\n\n\n\nIf you ever need to change them just type in the box and it should automatically save.\n\nNOTAMs:\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\n\n\n\nIf you ever need to change them just type in the box and it should automatically save\n',8,'2026-05-05 12:10:24','2026-05-05 12:10:24','vatis','vatis','version','## What is vATIS\r\n\r\nvATIS is the software we use to connect and \'ATIS\' online directly to the network. You may have noticed while flying that it is not just the controller themselves that is connected. An ATIS provides information about an airports conditions and NOTAM\'s to pilots that are flying, an example of an ATIS is bellow.\r\n\r\n\r\n``` \r\nGMMN ATIS INFO A 1130Z. EXPECT ILS/Z RWY 35 LEFT. TRL FL50 /RWY35L FOR LDG. \r\nRWY35R FOR TAKEOFF. /RISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \r\nRISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \r\nAFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \r\nON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \r\nHEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER. \r\n01009KT 300V110 VIS 10KM SCT030 22/13 Q1016 NOSIG NOTAMS... BIRDS IN VICINITY OF AD. A \r\n```\r\n\r\n---\r\n\r\n## How to Setup vATIS\r\nWhen you first download the app, you must import the vATIS profile, this is found in the Downloaded sectorfile in the \"vATIS\" folder located at\r\n\r\n```\r\nGMMM > Plugins > vATIS > The profile\r\n```\r\n\r\nDouble click it to load it into the software\r\n\r\nNext go to \"User configuration\" and enter your\r\n\r\n- \"Name\" - this is the name which shows up as the ATIS Connection\r\n- \"VATSIM ID\" - this is your CID you were given when making your VATSIM account\r\n- \"Password\" - Your VATSIM password\r\n- \"Controller Rating\" - Your controller rating\r\n<p align=\"center\">\r\n<img src=\"/attachments/1\" alt=\"drawing\" width=\"250\"/>\r\n</p>\r\nThen click \"Save\"\r\n\r\n---\r\n\r\n## How to connect and ATIS\r\n\r\nNow you have done that the hard part is over\r\nIn order to conect and ATIS you must choose the airport which you are controlling\r\nThen in the dropdown bar along the bottom, select the runway configuration you are using\r\nThen Click \"Connect\"\r\n\r\n---\r\n\r\n## Optional Extras:\r\n### Airport Conditions:\r\nAfter you load the runway configuration there may be a few items that populate within the \"Airport Condition\" tab, these are there to give pilots information about the specifics of whats going on in the aiport and any information they may need to know, an example is shown bellow:\r\n\r\n```\r\nEXPECT ILS/Z RWY 35 LEFT. TRL FL50 \r\nRWY35L FOR LDG. /RWY35R FOR TAKEOFF. \r\nRISK OF CONFUSION BETWEEN RWY 35L AND RWY 35R. \r\nRISK OF CONFUSION BETWEEN RWY 35R AND TAXIWAY TANGO. \r\nAFTER VACATING RUNWAY 35L HOLD SHORT OF RUNWAY 35R. \r\nON FIRST CONTACT ADVISE TOWER ABOUT EXPECTED VACATING TAXIWAY. \r\nHEAVY TRAFFIC ENTERING OR LEAVING STANDS MUST USE MINIMUM POWER.\r\n```\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/2\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save.\r\n\r\n---\r\n\r\n### NOTAMs:\r\nAfter you load the runway configuration there may be a few items that populate within the \"NOTAMS\" tab, these are there to give pilots information about the specific NOTAM\'s that may be in place, an example is hown bellow:\r\n\r\n<p align=\"center\">\r\n<img src=\"/attachments/3\" alt=\"drawing\" width=\"350\"/>\r\n</p>\r\n\r\nIf you ever need to change them just type in the box and it should automatically save','',17),
(52,55,'Tack Audio','<h2 id=\"bkmrk-what-is-trackaudio%3F\">What is TrackAudio?</h2>\n<p id=\"bkmrk-trackaudio-is-a-next\">TrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.</p>\n<p id=\"bkmrk-congratulations%21-you\">Congratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In Maghreb\nwe use TrackAudio as our recommended audio client.</p>\n<h2 id=\"bkmrk-setting-up-trackaudi\">Setting up TrackAudio</h2>\n<ul id=\"bkmrk-input-your-vatsim-de\">\n<li>Input your VATSIM Details\n<ul>\n<li>Your VATSIM CID</li>\n<li>Your VATSIM Password</li>\n</ul>\n</li>\n<li>Configure audio devices\n<ul>\n<li>Select a Headset, Speaker and Input device</li>\n</ul>\n</li>\n<li>Set a Push-To-Talk (PTT) bind</li>\n<li>Save your changes by pressing \'Close\' on the bottom right</li>\n</ul>\n<h2 id=\"bkmrk-connecting-and-trans\">Connecting and Transmitting on Frequency</h2>\n<ul id=\"bkmrk-open-trackaudio%2C-if-\">\n<li>Open TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.</li>\n<li>Once connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.</li>\n<li>Click \'TX\' (transmit) to both recieve and transmit on the selected frequency.</li>\n<li>Use your selected PTT button to transmit on the frequency.</li>\n</ul>\n','What is TrackAudio?\nTrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.\nCongratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In Maghreb\nwe use TrackAudio as our recommended audio client.\nSetting up TrackAudio\n\nInput your VATSIM Details\n\nYour VATSIM CID\nYour VATSIM Password\n\n\nConfigure audio devices\n\nSelect a Headset, Speaker and Input device\n\n\nSet a Push-To-Talk (PTT) bind\nSave your changes by pressing \'Close\' on the bottom right\n\nConnecting and Transmitting on Frequency\n\nOpen TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.\nOnce connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.\nClick \'TX\' (transmit) to both recieve and transmit on the selected frequency.\nUse your selected PTT button to transmit on the frequency.\n\n',8,'2026-05-05 12:16:19','2026-05-05 12:16:19','tack-audio','audio','version','## What is TrackAudio?\r\n\r\nTrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.\r\n\r\nCongratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In Maghreb\r\nwe use TrackAudio as our recommended audio client.\r\n\r\n## Setting up TrackAudio\r\n\r\n- Input your VATSIM Details\r\n  * Your VATSIM CID\r\n  * Your VATSIM Password\r\n- Configure audio devices\r\n  * Select a Headset, Speaker and Input device\r\n- Set a Push-To-Talk (PTT) bind\r\n- Save your changes by pressing \'Close\' on the bottom right\r\n\r\n\r\n## Connecting and Transmitting on Frequency\r\n\r\n- Open TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.\r\n- Once connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.\r\n- Click \'TX\' (transmit) to both recieve and transmit on the selected frequency.\r\n- Use your selected PTT button to transmit on the frequency.','',2),
(53,71,'asas','','',8,'2026-05-05 12:17:19','2026-05-05 12:17:19','asas','new-controller-orientation','version','','Initial publish',1),
(54,73,'i','','',8,'2026-05-05 12:17:45','2026-05-05 12:17:45','i','new-controller-orientation','version','','Initial publish',1),
(55,75,'Audio For VATSIM','<h2 id=\"bkmrk-what-is-audio-for-va\">What is Audio for VATSIM?</h2>\n<p id=\"bkmrk-audio-for-vatsim-%28af\">Audio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters.</p>\n<p id=\"bkmrk-our-resources-page%2C-\">Our resources page, where you can find the Audio for VATSIM download link can be found <a href=\"https://eaip2.vatssa.com/General/Resources/Links/\">here</a></p>\n<p id=\"bkmrk-%21%21%21-warning-audio-fo\">!!! warning\nAudio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found <a href=\"https://eaip2.vatssa.com/General/Resources/Software/TrackAudio%20Guide%20-%20Controller/\">here</a></p>\n<h2 id=\"bkmrk-setting-up-audio-for\">Setting up Audio for VATSIM</h2>\n<ul id=\"bkmrk-input-your-vatsim-de\">\n<li>Input your VATSIM Details\n<ul>\n<li>Your VATSIM CID</li>\n<li>Your VATSIM Password</li>\n</ul>\n</li>\n<li>Configure audio devices\n<ul>\n<li>Select a Headset, Speaker and Input device</li>\n</ul>\n</li>\n<li>Set a Push-To-Talk (PTT) bind</li>\n<li>Save your changes by pressing \'Apply all\' on the bottom right</li>\n</ul>\n<p id=\"bkmrk-\"><img src=\"img/AFVSettings.png\" alt=\"Audio for VATSIM settings\"></p>\n<h2 id=\"bkmrk-connecting-and-liste\">Connecting and Listening to ATC</h2>\n<ul id=\"bkmrk-open-audio-for-vatsi\">\n<li>Open Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.</li>\n<li>Click \'RX\' (receive) to listen in the frequency.</li>\n<li>Click \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.</li>\n</ul>\n<p id=\"bkmrk-still-having-issues-\">Still having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the <a href=\"https://community.vatsim.net/\">VATSIM Community Server\'s</a></p>\n','What is Audio for VATSIM?\nAudio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters.\nOur resources page, where you can find the Audio for VATSIM download link can be found here\n!!! warning\nAudio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found here\nSetting up Audio for VATSIM\n\nInput your VATSIM Details\n\nYour VATSIM CID\nYour VATSIM Password\n\n\nConfigure audio devices\n\nSelect a Headset, Speaker and Input device\n\n\nSet a Push-To-Talk (PTT) bind\nSave your changes by pressing \'Apply all\' on the bottom right\n\n\nConnecting and Listening to ATC\n\nOpen Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.\nClick \'RX\' (receive) to listen in the frequency.\nClick \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.\n\nStill having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the VATSIM Community Server\'s\n',8,'2026-05-05 12:21:20','2026-05-05 12:21:20','audio-for-vatsim','audio-xgK','version','## What is Audio for VATSIM?\r\nAudio for VATSIM (AFV) is a modern, high-fidelity voice communication system for the VATSIM. It provides a realistic, low-latency, VoIP-based codec that simulates VHF/HF radio characteristics, including signal degradation based on aircraft altitude, position, and distance from transmitters. \r\n\r\nOur resources page, where you can find the Audio for VATSIM download link can be found [here](https://eaip2.vatssa.com/General/Resources/Links/)\r\n\r\n!!! warning \r\n    Audio for VATSIM is not VATSSA\'s recommended controller audio client. We recommend TrackAudio, a link to the TrackAudio guide can be found [here](https://eaip2.vatssa.com/General/Resources/Software/TrackAudio%20Guide%20-%20Controller/)\r\n\r\n## Setting up Audio for VATSIM\r\n\r\n- Input your VATSIM Details\r\n  * Your VATSIM CID\r\n  * Your VATSIM Password\r\n- Configure audio devices\r\n  * Select a Headset, Speaker and Input device\r\n- Set a Push-To-Talk (PTT) bind\r\n- Save your changes by pressing \'Apply all\' on the bottom right\r\n\r\n![Audio for VATSIM settings](img/AFVSettings.png)\r\n\r\n## Connecting and Listening to ATC\r\n\r\n- Open Audio for VATSIM, if setup correctly and connected to VATSIM you will be able to connect by pressing the \'Connect\' button.\r\n- Click \'RX\' (receive) to listen in the frequency.\r\n- Click \'TX\' (transmit) to transmit on the frequency. You will still need to utilise your Push-To-Talk key.\r\n\r\nStill having issues with TrackAudio? Feel free to ask for help in one of our channels in the VATSSA Discord server which can be found in the [VATSIM Community Server\'s](https://community.vatsim.net/)','Initial publish',1),
(56,76,'Tack Audio','<h2 id=\"bkmrk-what-is-trackaudio%3F\">What is TrackAudio?</h2>\n<p id=\"bkmrk-trackaudio-is-a-next\">TrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.</p>\n<p id=\"bkmrk-congratulations%21-you\">Congratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In Maghreb\nwe use TrackAudio as our recommended audio client.</p>\n<h2 id=\"bkmrk-setting-up-trackaudi\">Setting up TrackAudio</h2>\n<ul id=\"bkmrk-input-your-vatsim-de\">\n<li>Input your VATSIM Details\n<ul>\n<li>Your VATSIM CID</li>\n<li>Your VATSIM Password</li>\n</ul>\n</li>\n<li>Configure audio devices\n<ul>\n<li>Select a Headset, Speaker and Input device</li>\n</ul>\n</li>\n<li>Set a Push-To-Talk (PTT) bind</li>\n<li>Save your changes by pressing \'Close\' on the bottom right</li>\n</ul>\n<h2 id=\"bkmrk-connecting-and-trans\">Connecting and Transmitting on Frequency</h2>\n<ul id=\"bkmrk-open-trackaudio%2C-if-\">\n<li>Open TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.</li>\n<li>Once connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.</li>\n<li>Click \'TX\' (transmit) to both recieve and transmit on the selected frequency.</li>\n<li>Use your selected PTT button to transmit on the frequency.</li>\n</ul>\n','What is TrackAudio?\nTrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.\nCongratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In Maghreb\nwe use TrackAudio as our recommended audio client.\nSetting up TrackAudio\n\nInput your VATSIM Details\n\nYour VATSIM CID\nYour VATSIM Password\n\n\nConfigure audio devices\n\nSelect a Headset, Speaker and Input device\n\n\nSet a Push-To-Talk (PTT) bind\nSave your changes by pressing \'Close\' on the bottom right\n\nConnecting and Transmitting on Frequency\n\nOpen TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.\nOnce connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.\nClick \'TX\' (transmit) to both recieve and transmit on the selected frequency.\nUse your selected PTT button to transmit on the frequency.\n\n',8,'2026-05-05 12:21:20','2026-05-05 12:21:20','tack-audio','audio-xgK','version','## What is TrackAudio?\r\n\r\nTrackAudio is a next generation Audio-For-VATSIM ATC Client for macOS, Linux and Windows.\r\n\r\nCongratulations! You are now a fully fledged VATSIM controller. Now we need to talk to the aircraft we will be controlling on the network. In Maghreb\r\nwe use TrackAudio as our recommended audio client.\r\n\r\n## Setting up TrackAudio\r\n\r\n- Input your VATSIM Details\r\n  * Your VATSIM CID\r\n  * Your VATSIM Password\r\n- Configure audio devices\r\n  * Select a Headset, Speaker and Input device\r\n- Set a Push-To-Talk (PTT) bind\r\n- Save your changes by pressing \'Close\' on the bottom right\r\n\r\n\r\n## Connecting and Transmitting on Frequency\r\n\r\n- Open TrackAudio, if setup correctly and connected to VATSIM you will see a green \'CONNECT\' button.\r\n- Once connected, you will see the position you have logged on as at the top. If your callsign is correct, then the frequencies will populate automatically.\r\n- Click \'TX\' (transmit) to both recieve and transmit on the selected frequency.\r\n- Use your selected PTT button to transmit on the frequency.','Initial publish',1);
/*!40000 ALTER TABLE `page_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `role_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES
(19,1),
(20,1),
(21,1),
(22,1),
(23,1),
(24,1),
(26,1),
(27,1),
(28,1),
(29,1),
(30,1),
(31,1),
(32,1),
(33,1),
(34,1),
(35,1),
(36,1),
(37,1),
(38,1),
(39,1),
(40,1),
(41,1),
(42,1),
(44,1),
(45,1),
(46,1),
(47,1),
(48,1),
(49,1),
(50,1),
(51,1),
(52,1),
(53,1),
(54,1),
(56,1),
(57,1),
(58,1),
(59,1),
(60,1),
(62,1),
(63,1),
(64,1),
(65,1),
(66,1),
(67,1),
(68,1),
(70,1),
(71,1),
(72,1),
(73,1),
(74,1),
(75,1),
(76,1),
(77,1),
(78,1),
(79,1),
(24,2),
(25,2),
(26,2),
(27,2),
(28,2),
(29,2),
(30,2),
(31,2),
(32,2),
(33,2),
(34,2),
(35,2),
(36,2),
(37,2),
(38,2),
(39,2),
(40,2),
(41,2),
(42,2),
(43,2),
(44,2),
(45,2),
(46,2),
(47,2),
(48,2),
(49,2),
(50,2),
(51,2),
(52,2),
(53,2),
(66,2),
(67,2),
(68,2),
(69,2),
(70,2),
(71,2),
(72,2),
(73,2),
(76,2),
(48,3),
(50,3),
(52,3),
(66,3),
(48,4),
(49,4),
(50,4),
(51,4),
(52,4),
(53,4),
(66,4),
(67,4),
(19,5),
(20,5),
(21,5),
(22,5),
(23,5),
(24,5),
(26,5),
(28,5),
(30,5),
(32,5),
(34,5),
(36,5),
(38,5),
(40,5),
(42,5),
(44,5),
(46,5),
(48,5),
(50,5),
(52,5),
(54,5),
(56,5),
(58,5),
(60,5),
(62,5),
(64,5),
(66,5),
(68,5),
(70,5),
(72,5),
(74,5),
(75,5),
(76,5),
(77,5),
(78,5),
(79,5);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `references`
--

DROP TABLE IF EXISTS `references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `references` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` bigint(20) unsigned NOT NULL,
  `from_type` varchar(25) NOT NULL,
  `to_id` bigint(20) unsigned NOT NULL,
  `to_type` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `references_from_id_index` (`from_id`),
  KEY `references_from_type_index` (`from_type`),
  KEY `references_to_id_index` (`to_id`),
  KEY `references_to_type_index` (`to_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `references`
--

LOCK TABLES `references` WRITE;
/*!40000 ALTER TABLE `references` DISABLE KEYS */;
/*!40000 ALTER TABLE `references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES
(19,'settings-manage','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(20,'users-manage','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(21,'user-roles-manage','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(22,'restrictions-manage-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(23,'restrictions-manage-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(24,'book-create-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(25,'book-create-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(26,'book-update-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(27,'book-update-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(28,'book-delete-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(29,'book-delete-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(30,'page-create-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(31,'page-create-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(32,'page-update-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(33,'page-update-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(34,'page-delete-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(35,'page-delete-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(36,'chapter-create-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(37,'chapter-create-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(38,'chapter-update-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(39,'chapter-update-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(40,'chapter-delete-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(41,'chapter-delete-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(42,'image-create-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(43,'image-create-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(44,'image-update-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(45,'image-update-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(46,'image-delete-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(47,'image-delete-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(48,'book-view-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(49,'book-view-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(50,'page-view-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(51,'page-view-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(52,'chapter-view-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(53,'chapter-view-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(54,'attachment-create-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(55,'attachment-create-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(56,'attachment-update-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(57,'attachment-update-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(58,'attachment-delete-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(59,'attachment-delete-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(60,'comment-create-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(61,'comment-create-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(62,'comment-update-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(63,'comment-update-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(64,'comment-delete-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(65,'comment-delete-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(66,'bookshelf-view-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(67,'bookshelf-view-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(68,'bookshelf-create-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(69,'bookshelf-create-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(70,'bookshelf-update-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(71,'bookshelf-update-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(72,'bookshelf-delete-all','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(73,'bookshelf-delete-own','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(74,'templates-manage','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(75,'access-api','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(76,'content-export','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(77,'editor-change','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(78,'receive-notifications','2026-05-05 08:19:11','2026-05-05 08:19:11'),
(79,'content-import','2026-05-05 08:19:11','2026-05-05 08:19:11');
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES
(7,1),
(8,1),
(8,2),
(8,3),
(2,4),
(8,4),
(8,5);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `system_name` varchar(191) NOT NULL,
  `external_auth_id` varchar(180) NOT NULL DEFAULT '',
  `mfa_enforced` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_system_name_index` (`system_name`),
  KEY `roles_external_auth_id_index` (`external_auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES
(1,'Admin','Administrator of the whole application','2026-05-05 08:19:11','2026-05-05 10:12:57','admin','',0),
(2,'Editor','User can edit Books, Chapters & Pages','2026-05-05 08:19:11','2026-05-05 08:19:11','','',0),
(3,'Viewer','User can view books & their content behind authentication','2026-05-05 08:19:11','2026-05-05 08:19:11','','',0),
(4,'Public','The role given to public visitors if allowed','2026-05-05 08:19:11','2026-05-05 08:19:11','public','',0),
(5,'Tech Team','A member of the \'Tech team\'','2026-05-05 10:14:14','2026-05-05 10:14:14','','',0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_terms`
--

DROP TABLE IF EXISTS `search_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_terms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(180) NOT NULL,
  `entity_type` varchar(100) NOT NULL,
  `entity_id` bigint(20) unsigned NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_terms_term_index` (`term`),
  KEY `search_terms_entity_type_index` (`entity_type`),
  KEY `search_terms_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  KEY `search_terms_score_index` (`score`)
) ENGINE=InnoDB AUTO_INCREMENT=6020 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_terms`
--

LOCK TABLES `search_terms` WRITE;
/*!40000 ALTER TABLE `search_terms` DISABLE KEYS */;
INSERT INTO `search_terms` VALUES
(3,'test','book',4,48),
(4,'test','chapter',5,48),
(5,'test','bookshelf',6,48),
(6,'test','book',7,48),
(7,'test','chapter',8,48),
(10,'test','book',10,48),
(13,'DAAA','book',12,48),
(14,'Algiers','book',12,48),
(15,'SOP','bookshelf',11,48),
(16,'s','bookshelf',11,48),
(17,'ACC','bookshelf',11,48),
(18,'SOP','bookshelf',13,48),
(19,'s','bookshelf',13,48),
(20,'APC/ADC','bookshelf',13,48),
(21,'Algeria','book',14,48),
(22,'DAAG','page',15,40),
(23,'DABC','page',16,40),
(24,'DAAG','chapter',18,48),
(25,'asas','page',17,40),
(26,'APC','page',19,40),
(27,'AIR/GMC','page',20,40),
(28,'DAOO','chapter',21,48),
(29,'a','page',22,40),
(30,'APC','page',23,40),
(31,'APC/ADC','page',24,40),
(32,'Morocco','book',25,48),
(33,'New','page',26,40),
(34,'Page','page',26,40),
(35,'GMMN','chapter',27,48),
(36,'GMMX','chapter',28,48),
(37,'GMMX','chapter',30,48),
(38,'GMAD','chapter',31,48),
(39,'Tunisia','book',32,48),
(40,'DTTA','chapter',33,48),
(41,'DTTC','book',34,48),
(42,'Tunis','book',34,48),
(43,'GMMM','book',35,48),
(44,'Casablanca','book',35,48),
(45,'GMAC','book',36,48),
(46,'Agadir','book',36,48),
(49,'LoA','bookshelf',37,48),
(50,'s','bookshelf',37,48),
(51,'Software','bookshelf',38,48),
(54,'Optional','book',41,48),
(55,'CDM','chapter',42,48),
(56,'/','chapter',42,48),
(57,'vIFF','chapter',42,48),
(58,'vEFPS','chapter',43,48),
(59,'Pilots','bookshelf',44,48),
(60,'Sector','chapter',45,48),
(61,'splits','chapter',45,48),
(62,'Sector','chapter',46,48),
(63,'splits','chapter',46,48),
(64,'Sector','chapter',47,48),
(65,'splits','chapter',47,48),
(66,'Sector','chapter',48,48),
(67,'splits','chapter',48,48),
(69,'Audio','book',40,48),
(70,'VACS','chapter',49,48),
(207,'VACS','page',50,40),
(208,'The','page',50,1),
(209,'VATSIM','page',50,3),
(210,'ATC','page',50,1),
(211,'Communication','page',50,1),
(212,'System','page',50,1),
(213,'is','page',50,3),
(214,'a','page',50,4),
(215,'free','page',50,1),
(216,'open','page',50,1),
(217,'source','page',50,1),
(218,'open-source','page',50,1),
(219,'voice','page',50,2),
(220,'communication','page',50,2),
(221,'system','page',50,2),
(222,'built','page',50,1),
(223,'specifically','page',50,1),
(224,'for','page',50,1),
(225,'air','page',50,1),
(226,'traffic','page',50,1),
(227,'controllers','page',50,3),
(228,'It','page',50,2),
(229,'provides','page',50,1),
(230,'fast','page',50,1),
(231,'and','page',50,5),
(232,'easy','page',50,1),
(233,'way','page',50,1),
(234,'to','page',50,7),
(235,'communicate','page',50,1),
(236,'coordinate','page',50,2),
(237,'with','page',50,3),
(238,'your','page',50,2),
(239,'neighbouring','page',50,1),
(240,'no','page',50,3),
(241,'extra','page',50,2),
(242,'TeamSpeak','page',50,1),
(243,'servers','page',50,1),
(244,'Discord','page',50,1),
(245,'accounts','page',50,1),
(246,'Simply','page',50,1),
(247,'install','page',50,1),
(248,'the','page',50,3),
(249,'client','page',50,1),
(250,'authenticate','page',50,1),
(251,'account','page',50,1),
(252,'you','page',50,4),
(253,'re','page',50,1),
(254,'ready','page',50,1),
(255,'go','page',50,1),
(256,'#','page',50,1),
(257,'go.#','page',50,1),
(258,'vacs','page',50,3),
(259,'recommended','page',50,1),
(260,'software','page',50,1),
(261,'by','page',50,1),
(262,'VATSSA','page',50,1),
(263,'Used','page',50,1),
(264,'as','page',50,1),
(265,'ground','page',50,3),
(266,'coordination','page',50,1),
(267,'other','page',50,1),
(268,'When','page',50,1),
(269,'logging','page',50,1),
(270,'onto','page',50,1),
(271,'will','page',50,2),
(272,'every','page',50,1),
(273,'single','page',50,1),
(274,'sector','page',50,1),
(275,'available','page',50,1),
(276,'be','page',50,2),
(277,'called','page',50,1),
(278,'So','page',50,1),
(279,'who','page',50,1),
(280,'do','page',50,1),
(281,'I','page',50,1),
(282,'call','page',50,4),
(283,'You','page',50,1),
(284,'are','page',50,2),
(285,'position','page',50,1),
(286,'in','page',50,2),
(287,'which','page',50,1),
(288,'it','page',50,1),
(289,'concerns','page',50,1),
(290,'Say','page',50,1),
(291,'on','page',50,1),
(292,'GMC','page',50,2),
(293,'want','page',50,1),
(294,'reach','page',50,1),
(295,'tower','page',50,1),
(296,'TWR','page',50,4),
(297,'but','page',50,1),
(298,'only','page',50,1),
(299,'Approach','page',50,2),
(300,'APP','page',50,5),
(301,'online','page',50,1),
(302,'should','page',50,1),
(303,'still','page',50,1),
(304,'pick','page',50,1),
(305,'up','page',50,1),
(306,'s','page',50,1),
(307,'that','page',50,1),
(308,'simple','page',50,1),
(309,'Abbreviations','page',50,1),
(310,'CLD','page',50,1),
(311,'Clearance','page',50,1),
(312,'Delivery','page',50,1),
(313,'DEL','page',50,1),
(314,'Ground','page',50,1),
(315,'Movement','page',50,1),
(316,'Control','page',50,2),
(317,'GND','page',50,1),
(318,'Tower','page',50,1),
(319,'RDR','page',50,1),
(320,'Radar','page',50,1),
(321,'ACC','page',50,1),
(322,'Area','page',50,1),
(323,'Centre','page',50,1),
(324,'CTR','page',50,1),
(325,'AFIS/INFO','page',50,1),
(326,'Aerodrome','page',50,1),
(327,'Flight','page',50,1),
(328,'Information','page',50,1),
(329,'Service','page',50,1),
(330,'I_xxx','page',50,1),
(331,'Install','page',50,1),
(332,'HERE','page',50,2),
(333,'More','page',50,1),
(334,'depth','page',50,1),
(335,'in-depth','page',50,1),
(336,'documentation','page',50,1),
(337,'can','page',50,1),
(338,'found','page',50,1),
(671,'CDM','page',51,55),
(672,'CAMU','page',51,1),
(673,'is','page',51,7),
(674,'a','page',51,7),
(675,'tool','page',51,1),
(676,'to','page',51,16),
(677,'manage','page',51,1),
(678,'demand','page',51,1),
(679,'and','page',51,8),
(680,'capacity','page',51,1),
(681,'across','page',51,1),
(682,'the','page',51,49),
(683,'division','page',51,1),
(684,'by','page',51,3),
(685,'regulating','page',51,1),
(686,'departures','page',51,1),
(687,'adjusting','page',51,1),
(688,'traffic','page',51,1),
(689,'patterns','page',51,1),
(690,'prevent','page',51,1),
(691,'sector','page',51,3),
(692,'overload','page',51,1),
(693,'How','page',51,4),
(694,'Start','page',51,2),
(695,'When','page',51,6),
(696,'loading','page',51,2),
(697,'up','page',51,2),
(698,'file','page',51,2),
(699,'2602','page',51,2),
(700,'later','page',51,2),
(701,'Airport','page',51,2),
(702,'Panel','page',51,2),
(703,'will','page',51,6),
(704,'appear','page',51,2),
(705,'By','page',51,2),
(706,'default','page',51,2),
(707,'you','page',51,6),
(708,'are','page',51,4),
(709,'put','page',51,2),
(710,'into','page',51,2),
(711,'slave','page',51,6),
(712,'role','page',51,2),
(713,'Selecting','page',51,2),
(714,'airports','page',51,2),
(715,'that','page',51,6),
(716,'providing','page',51,2),
(717,'top','page',51,2),
(718,'down','page',51,2),
(719,'top-down','page',51,2),
(720,'coverage','page',51,2),
(721,'for','page',51,4),
(722,'become','page',51,2),
(723,'master','page',51,10),
(724,'of','page',51,7),
(725,'airport','page',51,6),
(726,'am','page',51,2),
(727,'I','page',51,6),
(728,'or','page',51,6),
(729,'During','page',51,2),
(730,'normal','page',51,2),
(731,'operations','page',51,2),
(732,'should','page',51,12),
(733,'be','page',51,9),
(734,'lowest','page',51,2),
(735,'position','page',51,2),
(736,'e','page',51,2),
(737,'g','page',51,2),
(738,'e.g','page',51,2),
(739,'Delivery','page',51,2),
(740,'The','page',51,4),
(741,'only','page',51,2),
(742,'user','page',51,2),
(743,'who','page',51,2),
(744,'has','page',51,4),
(745,'functionality','page',51,2),
(746,'edit','page',51,2),
(747,'timings','page',51,4),
(748,'do','page',51,6),
(749,'use','page',51,3),
(750,'an','page',51,8),
(751,'aircraft','page',51,10),
(752,'calls','page',51,2),
(753,'ready','page',51,2),
(754,'push','page',51,2),
(755,'controller','page',51,4),
(756,'left','page',51,4),
(757,'click','page',51,2),
(758,'TOBT','page',51,4),
(759,'column','page',51,6),
(760,'in','page',51,4),
(761,'Startup','page',51,2),
(762,'List','page',51,2),
(763,'generate','page',51,2),
(764,'times','page',51,2),
(765,'then','page',51,4),
(766,'look','page',51,2),
(767,'at','page',51,2),
(768,'TSAT','page',51,4),
(769,'time','page',51,4),
(770,'if','page',51,2),
(771,'it','page',51,2),
(772,'within','page',51,2),
(773,'+/','page',51,2),
(774,'5','page',51,2),
(775,'minutes','page',51,2),
(776,'current','page',51,2),
(777,'pushback','page',51,2),
(778,'handover','page',51,2),
(779,'GMC','page',51,6),
(780,'approved','page',51,2),
(781,'What','page',51,4),
(782,'when','page',51,4),
(783,'handing','page',51,2),
(784,'over','page',51,4),
(785,'from','page',51,5),
(786,'CLD','page',51,6),
(787,'Whilst','page',51,2),
(788,'operating','page',51,2),
(789,'handed','page',51,2),
(790,'have','page',51,2),
(791,'their','page',51,8),
(792,'STS','page',51,2),
(793,'set','page',51,2),
(794,'S/UP','page',51,2),
(795,'status','page',51,2),
(796,'happens','page',51,2),
(797,'misses','page',51,4),
(798,'slot','page',51,6),
(799,'If','page',51,2),
(800,'simply','page',51,2),
(801,'re','page',51,2),
(802,'generated','page',51,2),
(803,'re-generated','page',51,2),
(804,'clicking','page',51,2),
(805,'A','page',51,3),
(806,'flight','page',51,2),
(807,'missed','page',51,2),
(808,'indicated','page',51,2),
(809,'with','page',51,2),
(810,'red','page',51,2),
(811,'SUSP','page',51,2),
(812,'message','page',51,2),
(813,'NET','page',51,2),
(814,'Useful','page',51,2),
(815,'commands','page',51,2),
(816,'cdm','page',51,8),
(817,'.cdm','page',51,8),
(818,'panel','page',51,4),
(819,'Hides','page',51,2),
(820,'master/slave','page',51,2),
(821,'ICAO','page',51,2),
(822,'Master','page',51,2),
(823,'atfcm','page',51,2),
(824,'Shows','page',51,2),
(825,'ATFCM','page',51,2),
(826,'list','page',51,2),
(827,'refresh','page',51,2),
(828,'Refresh','page',51,2),
(829,'plugin','page',51,3),
(830,'video','page',51,1),
(831,'VATSIM','page',51,1),
(832,'Spain','page',51,1),
(833,'demonstrating','page',51,1),
(834,'can','page',51,1),
(835,'found','page',51,1),
(836,'HERE','page',51,1),
(837,'vacs','page',52,43),
(838,'The','page',52,1),
(839,'VATSIM','page',52,3),
(840,'ATC','page',52,1),
(841,'Communication','page',52,1),
(842,'System','page',52,1),
(843,'is','page',52,3),
(844,'a','page',52,4),
(845,'free','page',52,1),
(846,'open','page',52,1),
(847,'source','page',52,1),
(848,'open-source','page',52,1),
(849,'voice','page',52,2),
(850,'communication','page',52,2),
(851,'system','page',52,2),
(852,'built','page',52,1),
(853,'specifically','page',52,1),
(854,'for','page',52,1),
(855,'air','page',52,1),
(856,'traffic','page',52,1),
(857,'controllers','page',52,3),
(858,'It','page',52,2),
(859,'provides','page',52,1),
(860,'fast','page',52,1),
(861,'and','page',52,5),
(862,'easy','page',52,1),
(863,'way','page',52,1),
(864,'to','page',52,7),
(865,'communicate','page',52,1),
(866,'coordinate','page',52,2),
(867,'with','page',52,3),
(868,'your','page',52,2),
(869,'neighbouring','page',52,1),
(870,'no','page',52,3),
(871,'extra','page',52,2),
(872,'TeamSpeak','page',52,1),
(873,'servers','page',52,1),
(874,'Discord','page',52,1),
(875,'accounts','page',52,1),
(876,'Simply','page',52,1),
(877,'install','page',52,1),
(878,'the','page',52,3),
(879,'client','page',52,1),
(880,'authenticate','page',52,1),
(881,'account','page',52,1),
(882,'you','page',52,4),
(883,'re','page',52,1),
(884,'ready','page',52,1),
(885,'go','page',52,1),
(886,'#','page',52,1),
(887,'go.#','page',52,1),
(888,'recommended','page',52,1),
(889,'software','page',52,1),
(890,'by','page',52,1),
(891,'VATSSA','page',52,1),
(892,'Used','page',52,1),
(893,'as','page',52,1),
(894,'ground','page',52,3),
(895,'coordination','page',52,1),
(896,'other','page',52,1),
(897,'When','page',52,1),
(898,'logging','page',52,1),
(899,'onto','page',52,1),
(900,'will','page',52,2),
(901,'every','page',52,1),
(902,'single','page',52,1),
(903,'sector','page',52,1),
(904,'available','page',52,1),
(905,'be','page',52,2),
(906,'called','page',52,1),
(907,'So','page',52,1),
(908,'who','page',52,1),
(909,'do','page',52,1),
(910,'I','page',52,1),
(911,'call','page',52,4),
(912,'You','page',52,1),
(913,'are','page',52,2),
(914,'position','page',52,1),
(915,'in','page',52,2),
(916,'which','page',52,1),
(917,'it','page',52,1),
(918,'concerns','page',52,1),
(919,'Say','page',52,1),
(920,'on','page',52,1),
(921,'GMC','page',52,2),
(922,'want','page',52,1),
(923,'reach','page',52,1),
(924,'tower','page',52,1),
(925,'TWR','page',52,4),
(926,'but','page',52,1),
(927,'only','page',52,1),
(928,'Approach','page',52,2),
(929,'APP','page',52,5),
(930,'online','page',52,1),
(931,'should','page',52,1),
(932,'still','page',52,1),
(933,'pick','page',52,1),
(934,'up','page',52,1),
(935,'s','page',52,1),
(936,'that','page',52,1),
(937,'simple','page',52,1),
(938,'Abbreviations','page',52,1),
(939,'CLD','page',52,1),
(940,'Clearance','page',52,1),
(941,'Delivery','page',52,1),
(942,'DEL','page',52,1),
(943,'Ground','page',52,1),
(944,'Movement','page',52,1),
(945,'Control','page',52,2),
(946,'GND','page',52,1),
(947,'Tower','page',52,1),
(948,'RDR','page',52,1),
(949,'Radar','page',52,1),
(950,'ACC','page',52,1),
(951,'Area','page',52,1),
(952,'Centre','page',52,1),
(953,'CTR','page',52,1),
(954,'AFIS/INFO','page',52,1),
(955,'Aerodrome','page',52,1),
(956,'Flight','page',52,1),
(957,'Information','page',52,1),
(958,'Service','page',52,1),
(959,'I_xxx','page',52,1),
(960,'Install','page',52,1),
(961,'HERE','page',52,2),
(962,'More','page',52,1),
(963,'depth','page',52,1),
(964,'in-depth','page',52,1),
(965,'documentation','page',52,1),
(966,'can','page',52,1),
(967,'found','page',52,1),
(968,'CDM','page',53,55),
(969,'/','page',53,40),
(970,'vIFF','page',53,40),
(971,'CAMU','page',53,1),
(972,'is','page',53,7),
(973,'a','page',53,7),
(974,'tool','page',53,1),
(975,'to','page',53,16),
(976,'manage','page',53,1),
(977,'demand','page',53,1),
(978,'and','page',53,8),
(979,'capacity','page',53,1),
(980,'across','page',53,1),
(981,'the','page',53,49),
(982,'division','page',53,1),
(983,'by','page',53,3),
(984,'regulating','page',53,1),
(985,'departures','page',53,1),
(986,'adjusting','page',53,1),
(987,'traffic','page',53,1),
(988,'patterns','page',53,1),
(989,'prevent','page',53,1),
(990,'sector','page',53,3),
(991,'overload','page',53,1),
(992,'How','page',53,4),
(993,'Start','page',53,2),
(994,'When','page',53,6),
(995,'loading','page',53,2),
(996,'up','page',53,2),
(997,'file','page',53,2),
(998,'2602','page',53,2),
(999,'later','page',53,2),
(1000,'Airport','page',53,2),
(1001,'Panel','page',53,2),
(1002,'will','page',53,6),
(1003,'appear','page',53,2),
(1004,'By','page',53,2),
(1005,'default','page',53,2),
(1006,'you','page',53,6),
(1007,'are','page',53,4),
(1008,'put','page',53,2),
(1009,'into','page',53,2),
(1010,'slave','page',53,6),
(1011,'role','page',53,2),
(1012,'Selecting','page',53,2),
(1013,'airports','page',53,2),
(1014,'that','page',53,6),
(1015,'providing','page',53,2),
(1016,'top','page',53,2),
(1017,'down','page',53,2),
(1018,'top-down','page',53,2),
(1019,'coverage','page',53,2),
(1020,'for','page',53,4),
(1021,'become','page',53,2),
(1022,'master','page',53,10),
(1023,'of','page',53,7),
(1024,'airport','page',53,6),
(1025,'am','page',53,2),
(1026,'I','page',53,6),
(1027,'or','page',53,6),
(1028,'During','page',53,2),
(1029,'normal','page',53,2),
(1030,'operations','page',53,2),
(1031,'should','page',53,12),
(1032,'be','page',53,9),
(1033,'lowest','page',53,2),
(1034,'position','page',53,2),
(1035,'e','page',53,2),
(1036,'g','page',53,2),
(1037,'e.g','page',53,2),
(1038,'Delivery','page',53,2),
(1039,'The','page',53,4),
(1040,'only','page',53,2),
(1041,'user','page',53,2),
(1042,'who','page',53,2),
(1043,'has','page',53,4),
(1044,'functionality','page',53,2),
(1045,'edit','page',53,2),
(1046,'timings','page',53,4),
(1047,'do','page',53,6),
(1048,'use','page',53,3),
(1049,'an','page',53,8),
(1050,'aircraft','page',53,10),
(1051,'calls','page',53,2),
(1052,'ready','page',53,2),
(1053,'push','page',53,2),
(1054,'controller','page',53,4),
(1055,'left','page',53,4),
(1056,'click','page',53,2),
(1057,'TOBT','page',53,4),
(1058,'column','page',53,6),
(1059,'in','page',53,4),
(1060,'Startup','page',53,2),
(1061,'List','page',53,2),
(1062,'generate','page',53,2),
(1063,'times','page',53,2),
(1064,'then','page',53,4),
(1065,'look','page',53,2),
(1066,'at','page',53,2),
(1067,'TSAT','page',53,4),
(1068,'time','page',53,4),
(1069,'if','page',53,2),
(1070,'it','page',53,2),
(1071,'within','page',53,2),
(1072,'+/','page',53,2),
(1073,'5','page',53,2),
(1074,'minutes','page',53,2),
(1075,'current','page',53,2),
(1076,'pushback','page',53,2),
(1077,'handover','page',53,2),
(1078,'GMC','page',53,6),
(1079,'approved','page',53,2),
(1080,'What','page',53,4),
(1081,'when','page',53,4),
(1082,'handing','page',53,2),
(1083,'over','page',53,4),
(1084,'from','page',53,5),
(1085,'CLD','page',53,6),
(1086,'Whilst','page',53,2),
(1087,'operating','page',53,2),
(1088,'handed','page',53,2),
(1089,'have','page',53,2),
(1090,'their','page',53,8),
(1091,'STS','page',53,2),
(1092,'set','page',53,2),
(1093,'S/UP','page',53,2),
(1094,'status','page',53,2),
(1095,'happens','page',53,2),
(1096,'misses','page',53,4),
(1097,'slot','page',53,6),
(1098,'If','page',53,2),
(1099,'simply','page',53,2),
(1100,'re','page',53,2),
(1101,'generated','page',53,2),
(1102,'re-generated','page',53,2),
(1103,'clicking','page',53,2),
(1104,'A','page',53,3),
(1105,'flight','page',53,2),
(1106,'missed','page',53,2),
(1107,'indicated','page',53,2),
(1108,'with','page',53,2),
(1109,'red','page',53,2),
(1110,'SUSP','page',53,2),
(1111,'message','page',53,2),
(1112,'NET','page',53,2),
(1113,'Useful','page',53,2),
(1114,'commands','page',53,2),
(1115,'cdm','page',53,8),
(1116,'.cdm','page',53,8),
(1117,'panel','page',53,4),
(1118,'Hides','page',53,2),
(1119,'master/slave','page',53,2),
(1120,'ICAO','page',53,2),
(1121,'Master','page',53,2),
(1122,'atfcm','page',53,2),
(1123,'Shows','page',53,2),
(1124,'ATFCM','page',53,2),
(1125,'list','page',53,2),
(1126,'refresh','page',53,2),
(1127,'Refresh','page',53,2),
(1128,'plugin','page',53,3),
(1129,'video','page',53,1),
(1130,'VATSIM','page',53,1),
(1131,'Spain','page',53,1),
(1132,'demonstrating','page',53,1),
(1133,'can','page',53,1),
(1134,'found','page',53,1),
(1135,'HERE','page',53,1),
(1275,'Audio','page',54,54),
(1276,'For','page',54,40),
(1277,'VATSIM','page',54,60),
(1278,'What','page',54,5),
(1279,'is','page',54,7),
(1280,'for','page',54,16),
(1281,'AFV','page',54,1),
(1282,'a','page',54,5),
(1283,'modern','page',54,1),
(1284,'high','page',54,1),
(1285,'fidelity','page',54,1),
(1286,'high-fidelity','page',54,1),
(1287,'voice','page',54,1),
(1288,'communication','page',54,1),
(1289,'system','page',54,1),
(1290,'the','page',54,9),
(1291,'It','page',54,1),
(1292,'provides','page',54,1),
(1293,'realistic','page',54,1),
(1294,'low','page',54,1),
(1295,'latency','page',54,1),
(1296,'low-latency','page',54,1),
(1297,'VoIP','page',54,1),
(1298,'based','page',54,2),
(1299,'VoIP-based','page',54,1),
(1300,'codec','page',54,1),
(1301,'that','page',54,1),
(1302,'simulates','page',54,1),
(1303,'VHF/HF','page',54,1),
(1304,'radio','page',54,1),
(1305,'characteristics','page',54,1),
(1306,'including','page',54,1),
(1307,'signal','page',54,1),
(1308,'degradation','page',54,1),
(1309,'on','page',54,3),
(1310,'aircraft','page',54,1),
(1311,'altitude','page',54,1),
(1312,'position','page',54,1),
(1313,'and','page',54,8),
(1314,'distance','page',54,1),
(1315,'from','page',54,1),
(1316,'transmitters','page',54,1),
(1317,'Our','page',54,1),
(1318,'resources','page',54,1),
(1319,'page','page',54,1),
(1320,'where','page',54,1),
(1321,'you','page',54,2),
(1322,'can','page',54,4),
(1323,'find','page',54,1),
(1324,'download','page',54,1),
(1325,'link','page',54,2),
(1326,'be','page',54,4),
(1327,'found','page',54,3),
(1328,'here','page',54,2),
(1329,'warning','page',54,1),
(1330,'not','page',54,1),
(1331,'VATSSA','page',54,2),
(1332,'s','page',54,2),
(1333,'recommended','page',54,1),
(1334,'controller','page',54,1),
(1335,'audio','page',54,2),
(1336,'client','page',54,1),
(1337,'We','page',54,1),
(1338,'recommend','page',54,1),
(1339,'TrackAudio','page',54,3),
(1340,'to','page',54,12),
(1341,'guide','page',54,1),
(1342,'Setting','page',54,5),
(1343,'up','page',54,5),
(1344,'Input','page',54,2),
(1345,'your','page',54,3),
(1346,'Details','page',54,1),
(1347,'Your','page',54,2),
(1348,'CID','page',54,1),
(1349,'Password','page',54,1),
(1350,'Configure','page',54,1),
(1351,'devices','page',54,1),
(1352,'Select','page',54,1),
(1353,'Headset','page',54,1),
(1354,'Speaker','page',54,1),
(1355,'device','page',54,1),
(1356,'Set','page',54,1),
(1357,'Push','page',54,2),
(1358,'To','page',54,2),
(1359,'Talk','page',54,2),
(1360,'Push-To-Talk','page',54,2),
(1361,'PTT','page',54,1),
(1362,'bind','page',54,1),
(1363,'Save','page',54,1),
(1364,'changes','page',54,1),
(1365,'by','page',54,2),
(1366,'pressing','page',54,2),
(1367,'Apply','page',54,1),
(1368,'all','page',54,1),
(1369,'bottom','page',54,1),
(1370,'right','page',54,1),
(1371,'Connecting','page',54,5),
(1372,'Listening','page',54,5),
(1373,'ATC','page',54,5),
(1374,'Open','page',54,1),
(1375,'if','page',54,1),
(1376,'setup','page',54,1),
(1377,'correctly','page',54,1),
(1378,'connected','page',54,1),
(1379,'will','page',54,2),
(1380,'able','page',54,1),
(1381,'connect','page',54,1),
(1382,'Connect','page',54,1),
(1383,'button','page',54,1),
(1384,'Click','page',54,2),
(1385,'RX','page',54,1),
(1386,'receive','page',54,1),
(1387,'listen','page',54,1),
(1388,'in','page',54,4),
(1389,'frequency','page',54,2),
(1390,'TX','page',54,1),
(1391,'transmit','page',54,2),
(1392,'You','page',54,1),
(1393,'still','page',54,1),
(1394,'need','page',54,1),
(1395,'utilise','page',54,1),
(1396,'key','page',54,1),
(1397,'Still','page',54,1),
(1398,'having','page',54,1),
(1399,'issues','page',54,1),
(1400,'with','page',54,1),
(1401,'Feel','page',54,1),
(1402,'free','page',54,1),
(1403,'ask','page',54,1),
(1404,'help','page',54,1),
(1405,'one','page',54,1),
(1406,'of','page',54,1),
(1407,'our','page',54,1),
(1408,'channels','page',54,1),
(1409,'Discord','page',54,1),
(1410,'server','page',54,1),
(1411,'which','page',54,1),
(1412,'Community','page',54,1),
(1413,'Server','page',54,1),
(3320,'New','book',58,48),
(3321,'Controller','book',58,48),
(3322,'Orientation','book',58,48),
(3756,'vATIS','bookshelf',59,48),
(3758,'x','page',60,40),
(3975,'vATIS','book',56,48),
(3976,'z','page',61,40),
(3977,'Euroscope','book',39,48),
(3978,'a','page',62,42),
(3979,'What','page',62,5),
(3980,'is','page',62,15),
(3981,'vATIS','page',62,14),
(3982,'the','page',62,24),
(3983,'software','page',62,2),
(3984,'we','page',62,1),
(3985,'use','page',62,1),
(3986,'to','page',62,21),
(3987,'connect','page',62,6),
(3988,'and','page',62,12),
(3989,'ATIS','page',62,11),
(3990,'online','page',62,1),
(3991,'directly','page',62,1),
(3992,'network','page',62,1),
(3993,'You','page',62,1),
(3994,'may','page',62,5),
(3995,'have','page',62,2),
(3996,'noticed','page',62,1),
(3997,'while','page',62,1),
(3998,'flying','page',62,2),
(3999,'that','page',62,7),
(4000,'it','page',62,5),
(4001,'not','page',62,1),
(4002,'just','page',62,3),
(4003,'controller','page',62,2),
(4004,'themselves','page',62,1),
(4005,'connected','page',62,1),
(4006,'An','page',62,1),
(4007,'provides','page',62,1),
(4008,'information','page',62,4),
(4009,'about','page',62,3),
(4010,'an','page',62,5),
(4011,'airports','page',62,1),
(4012,'conditions','page',62,1),
(4013,'NOTAM','page',62,2),
(4014,'s','page',62,2),
(4015,'pilots','page',62,3),
(4016,'are','page',62,5),
(4017,'example','page',62,3),
(4018,'of','page',62,2),
(4019,'bellow','page',62,3),
(4020,'GMMN','page',62,1),
(4021,'INFO','page',62,1),
(4022,'A','page',62,2),
(4023,'1130Z','page',62,1),
(4024,'EXPECT','page',62,2),
(4025,'ILS/Z','page',62,2),
(4026,'RWY','page',62,8),
(4027,'35','page',62,2),
(4028,'LEFT','page',62,2),
(4029,'TRL','page',62,2),
(4030,'FL50','page',62,2),
(4031,'/RWY35L','page',62,2),
(4032,'FOR','page',62,4),
(4033,'LDG','page',62,2),
(4034,'/RWY35R','page',62,2),
(4035,'TAKEOFF','page',62,2),
(4036,'/RISK','page',62,2),
(4037,'OF','page',62,7),
(4038,'CONFUSION','page',62,4),
(4039,'BETWEEN','page',62,4),
(4040,'35L','page',62,4),
(4041,'AND','page',62,4),
(4042,'35R','page',62,6),
(4043,'/','page',62,2),
(4044,'RISK','page',62,2),
(4045,'TAXIWAY','page',62,4),
(4046,'TANGO','page',62,2),
(4047,'/AFTER','page',62,2),
(4048,'VACATING','page',62,4),
(4049,'RUNWAY','page',62,4),
(4050,'HOLD','page',62,2),
(4051,'SHORT','page',62,2),
(4052,'/ON','page',62,2),
(4053,'FIRST','page',62,2),
(4054,'CONTACT','page',62,2),
(4055,'ADVISE','page',62,2),
(4056,'TOWER','page',62,2),
(4057,'ABOUT','page',62,2),
(4058,'EXPECTED','page',62,2),
(4059,'/HEAVY','page',62,2),
(4060,'TRAFFIC','page',62,2),
(4061,'ENTERING','page',62,2),
(4062,'OR','page',62,2),
(4063,'LEAVING','page',62,2),
(4064,'STANDS','page',62,2),
(4065,'MUST','page',62,2),
(4066,'USE','page',62,2),
(4067,'MINIMUM','page',62,2),
(4068,'POWER','page',62,2),
(4069,'01009KT','page',62,1),
(4070,'300V110','page',62,1),
(4071,'VIS','page',62,1),
(4072,'10KM','page',62,1),
(4073,'SCT030','page',62,1),
(4074,'22/13','page',62,1),
(4075,'Q1016','page',62,1),
(4076,'NOSIG','page',62,1),
(4077,'NOTAMS','page',62,2),
(4078,'BIRDS','page',62,1),
(4079,'IN','page',62,1),
(4080,'VICINITY','page',62,1),
(4081,'AD','page',62,1),
(4082,'How','page',62,10),
(4083,'Setup','page',62,5),
(4084,'When','page',62,1),
(4085,'you','page',62,11),
(4086,'first','page',62,1),
(4087,'download','page',62,1),
(4088,'app','page',62,1),
(4089,'must','page',62,2),
(4090,'import','page',62,1),
(4091,'profile','page',62,2),
(4092,'this','page',62,3),
(4093,'found','page',62,1),
(4094,'in','page',62,7),
(4095,'Downloaded','page',62,1),
(4096,'sectorfile','page',62,1),
(4097,'folder','page',62,1),
(4098,'located','page',62,1),
(4099,'at','page',62,1),
(4100,'GMMM','page',62,1),
(4101,'Plugins','page',62,1),
(4102,'The','page',62,1),
(4103,'Double','page',62,1),
(4104,'click','page',62,2),
(4105,'load','page',62,3),
(4106,'into','page',62,1),
(4107,'Next','page',62,1),
(4108,'go','page',62,1),
(4109,'User','page',62,1),
(4110,'configuration','page',62,4),
(4111,'enter','page',62,1),
(4112,'your','page',62,3),
(4113,'Name','page',62,1),
(4114,'name','page',62,1),
(4115,'which','page',62,2),
(4116,'shows','page',62,1),
(4117,'up','page',62,1),
(4118,'as','page',62,1),
(4119,'Connection','page',62,1),
(4120,'VATSIM','page',62,3),
(4121,'ID','page',62,1),
(4122,'CID','page',62,1),
(4123,'were','page',62,1),
(4124,'given','page',62,1),
(4125,'when','page',62,1),
(4126,'making','page',62,1),
(4127,'account','page',62,1),
(4128,'Password','page',62,1),
(4129,'Your','page',62,2),
(4130,'password','page',62,1),
(4131,'Controller','page',62,1),
(4132,'Rating','page',62,1),
(4133,'rating','page',62,1),
(4134,'Then','page',62,3),
(4135,'Save','page',62,1),
(4136,'Now','page',62,1),
(4137,'done','page',62,1),
(4138,'hard','page',62,1),
(4139,'part','page',62,1),
(4140,'over','page',62,1),
(4141,'In','page',62,1),
(4142,'order','page',62,1),
(4143,'conect','page',62,1),
(4144,'choose','page',62,1),
(4145,'airport','page',62,1),
(4146,'controlling','page',62,1),
(4147,'dropdown','page',62,1),
(4148,'bar','page',62,1),
(4149,'along','page',62,1),
(4150,'bottom','page',62,1),
(4151,'select','page',62,1),
(4152,'runway','page',62,3),
(4153,'using','page',62,1),
(4154,'Click','page',62,1),
(4155,'Connect','page',62,1),
(4156,'Optional','page',62,5),
(4157,'Extras','page',62,5),
(4158,'Airport','page',62,5),
(4159,'Conditions','page',62,4),
(4160,'After','page',62,2),
(4161,'there','page',62,4),
(4162,'be','page',62,3),
(4163,'few','page',62,2),
(4164,'items','page',62,2),
(4165,'populate','page',62,2),
(4166,'within','page',62,2),
(4167,'Condition','page',62,1),
(4168,'tab','page',62,2),
(4169,'these','page',62,2),
(4170,'give','page',62,2),
(4171,'specifics','page',62,1),
(4172,'whats','page',62,1),
(4173,'going','page',62,1),
(4174,'on','page',62,1),
(4175,'aiport','page',62,1),
(4176,'any','page',62,1),
(4177,'they','page',62,1),
(4178,'need','page',62,3),
(4179,'know','page',62,1),
(4180,'shown','page',62,1),
(4181,'If','page',62,2),
(4182,'ever','page',62,2),
(4183,'change','page',62,2),
(4184,'them','page',62,2),
(4185,'type','page',62,2),
(4186,'box','page',62,2),
(4187,'should','page',62,2),
(4188,'automatically','page',62,2),
(4189,'save','page',62,2),
(4190,'NOTAMs','page',62,4),
(4191,'specific','page',62,1),
(4192,'place','page',62,1),
(4193,'hown','page',62,1),
(4410,'test','page',63,40),
(4411,'aa','page',64,40),
(4415,'Template','book',66,48),
(4438,'Template','page',67,40),
(4439,'How','page',67,10),
(4440,'to','page',67,15),
(4441,'use','page',67,15),
(4442,'BLANK','page',67,15),
(4443,'EXPLAIN','page',67,1),
(4444,'What','page',67,5),
(4445,'does','page',67,5),
(4446,'do','page',67,10),
(4447,'Explain','page',67,2),
(4448,'i','page',67,5),
(4449,'set','page',67,5),
(4450,'up','page',67,5),
(4451,'change','page',67,10),
(4452,'fix','page',67,10),
(4453,'your','page',67,10),
(4454,'page','page',67,10),
(4455,'but','page',67,10),
(4456,'if','page',67,10),
(4457,'this','page',67,10),
(4458,'works','page',67,10),
(4459,'it','page',67,10),
(4460,'How','book',68,48),
(4461,'to','book',68,48),
(4462,'use','book',68,48),
(4474,'How','page',69,40),
(4475,'to','page',69,42),
(4476,'start','page',69,40),
(4477,'Step','page',69,20),
(4478,'1','page',69,5),
(4479,'Find','page',69,2),
(4480,'the','page',69,5),
(4481,'shelf','page',69,1),
(4482,'you','page',69,4),
(4483,'are','page',69,3),
(4484,'adding','page',69,2),
(4485,'2','page',69,5),
(4486,'book','page',69,2),
(4487,'if','page',69,1),
(4488,'there','page',69,1),
(4489,'is','page',69,1),
(4490,'no','page',69,1),
(4491,'then','page',69,1),
(4492,'make','page',69,1),
(4493,'one','page',69,1),
(4494,'3','page',69,5),
(4495,'Then','page',69,1),
(4496,'Add','page',69,1),
(4497,'a','page',69,1),
(4498,'new','page',69,1),
(4499,'Page','page',69,2),
(4500,'into','page',69,1),
(4501,'that','page',69,1),
(4502,'chapter','page',69,1),
(4503,'following','page',69,1),
(4504,'guide','page',69,1),
(4505,'HERE','page',69,1),
(4506,'4','page',69,5),
(4507,'Once','page',69,1),
(4508,'done','page',69,1),
(4509,'clck','page',69,1),
(4510,'Save','page',69,1),
(4511,'Button','page',69,1),
(4512,'in','page',69,1),
(4513,'top','page',69,1),
(4514,'right','page',69,1),
(4710,'How','page',70,40),
(4711,'to','page',70,43),
(4712,'use','page',70,41),
(4713,'md','page',70,41),
(4714,'.md','page',70,40),
(4715,'The','page',70,40),
(4716,'file','page',70,40),
(4717,'type','page',70,40),
(4718,'Markdown','page',70,13),
(4719,'Guide','page',70,10),
(4720,'with','page',70,10),
(4721,'Examples','page',70,10),
(4722,'is','page',70,8),
(4723,'a','page',70,4),
(4724,'simple','page',70,1),
(4725,'way','page',70,1),
(4726,'format','page',70,1),
(4727,'text','page',70,3),
(4728,'using','page',70,1),
(4729,'plain','page',70,1),
(4730,'characters','page',70,2),
(4731,'It’s','page',70,1),
(4732,'widely','page',70,1),
(4733,'used','page',70,1),
(4734,'for','page',70,2),
(4735,'notes','page',70,1),
(4736,'documentation','page',70,1),
(4737,'GitHub','page',70,1),
(4738,'READMEs','page',70,1),
(4739,'blogs','page',70,1),
(4740,'and','page',70,7),
(4741,'more','page',70,2),
(4742,'1','page',70,17),
(4743,'Headings','page',70,5),
(4744,'Use','page',70,10),
(4745,'#','page',70,4),
(4746,'create','page',70,1),
(4747,'headings','page',70,1),
(4748,'Heading','page',70,24),
(4749,'##','page',70,4),
(4750,'2','page',70,12),
(4751,'###','page',70,2),
(4752,'3','page',70,11),
(4753,'####','page',70,1),
(4754,'4','page',70,6),
(4755,'Example','page',70,4),
(4756,'output','page',70,4),
(4757,'Bold','page',70,14),
(4758,'Italic','page',70,14),
(4759,'Text','page',70,5),
(4760,'**double','page',70,1),
(4761,'asterisks**','page',70,1),
(4762,'or','page',70,3),
(4763,'__double','page',70,1),
(4764,'underscores__','page',70,1),
(4765,'**This','page',70,1),
(4766,'bold','page',70,2),
(4767,'text**','page',70,1),
(4768,'__This','page',70,1),
(4769,'also','page',70,2),
(4770,'bold__','page',70,1),
(4771,'*single','page',70,1),
(4772,'asterisks*','page',70,1),
(4773,'_underscores_','page',70,1),
(4774,'*This','page',70,1),
(4775,'italic','page',70,1),
(4776,'text*','page',70,1),
(4777,'_This','page',70,1),
(4778,'italic_','page',70,1),
(4779,'+','page',70,5),
(4780,'***This','page',70,1),
(4781,'italic***','page',70,1),
(4782,'Lists','page',70,18),
(4783,'Unordered','page',70,4),
(4784,'*','page',70,1),
(4785,'Apples','page',70,1),
(4786,'Bananas','page',70,1),
(4787,'Oranges','page',70,1),
(4788,'Ordered','page',70,4),
(4789,'numbers','page',70,1),
(4790,'First','page',70,1),
(4791,'item','page',70,4),
(4792,'Second','page',70,1),
(4793,'Third','page',70,1),
(4794,'Links','page',70,5),
(4795,'OpenAI','page',70,1),
(4796,'https','page',70,3),
(4797,'//www','page',70,1),
(4798,'openai','page',70,1),
(4799,'com','page',70,2),
(4800,'//www.openai.com','page',70,1),
(4801,'5','page',70,5),
(4802,'Images','page',70,5),
(4803,'Alt','page',70,1),
(4804,'//example','page',70,1),
(4805,'com/image','page',70,1),
(4806,'jpg','page',70,1),
(4807,'//example.com/image.jpg','page',70,1),
(4808,'6','page',70,5),
(4809,'Code','page',70,10),
(4810,'Inline','page',70,4),
(4811,'code','page',70,5),
(4812,'backticks','page',70,2),
(4813,'the','page',70,1),
(4814,'print','page',70,2),
(4815,'function','page',70,1),
(4816,'in','page',70,1),
(4817,'Python','page',70,1),
(4818,'blocks','page',70,4),
(4819,'triple','page',70,1),
(4820,'python','page',70,1),
(4821,'def','page',70,1),
(4822,'hello','page',70,1),
(4823,'Hello','page',70,1),
(4824,'world','page',70,1),
(4825,'7','page',70,1),
(4826,'Blockquotes','page',70,1),
(4827,'This','page',70,1),
(4828,'quote','page',70,1),
(4829,'8','page',70,5),
(4830,'Horizontal','page',70,5),
(4831,'Line','page',70,5),
(4832,'three','page',70,1),
(4833,'dashes','page',70,1),
(4834,'9','page',70,5),
(4835,'Tables','page',70,5),
(4836,'|','page',70,43),
(4837,'Name','page',70,1),
(4838,'Age','page',70,1),
(4839,'City','page',70,1),
(4840,'-|','page',70,5),
(4841,'Alice','page',70,1),
(4842,'14','page',70,1),
(4843,'London','page',70,1),
(4844,'Bob','page',70,1),
(4845,'15','page',70,1),
(4846,'Paris','page',70,1),
(4847,'10','page',70,5),
(4848,'Checkboxes','page',70,5),
(4849,'Task','page',70,5),
(4850,'x','page',70,2),
(4851,'Learn','page',70,1),
(4852,'Build','page',70,1),
(4853,'project','page',70,1),
(4854,'Master','page',70,1),
(4855,'formatting','page',70,1),
(4856,'11','page',70,5),
(4857,'Escaping','page',70,5),
(4858,'Characters','page',70,5),
(4859,'If','page',70,1),
(4860,'you','page',70,1),
(4861,'want','page',70,1),
(4862,'show','page',70,1),
(4863,'special','page',70,1),
(4864,'backslash','page',70,1),
(4865,'\\','page',70,1),
(4866,'\\*This','page',70,1),
(4867,'not','page',70,1),
(4868,'italic\\*','page',70,1),
(4869,'12','page',70,5),
(4870,'Combining','page',70,5),
(4871,'Everything','page',70,5),
(4872,'My','page',70,1),
(4873,'Notes','page',70,1),
(4874,'Today’s','page',70,1),
(4875,'Tasks','page',70,1),
(4876,'Study','page',70,1),
(4877,'Practice','page',70,1),
(4878,'coding','page',70,1),
(4879,'Reminder','page',70,1),
(4880,'“Practice','page',70,1),
(4881,'makes','page',70,1),
(4882,'progress','page',70,1),
(4883,'”','page',70,1),
(4884,'progress.”','page',70,1),
(4885,'Check','page',70,1),
(4886,'this','page',70,1),
(4887,'site','page',70,1),
(4888,'//maghrebvacc','page',70,1),
(4889,'//maghrebvacc.com','page',70,1),
(4890,'info','page',70,1),
(4891,'Quick','page',70,1),
(4892,'Cheat','page',70,1),
(4893,'Sheet','page',70,1),
(4894,'Feature','page',70,1),
(4895,'Syntax','page',70,1),
(4896,'**text**','page',70,1),
(4897,'*text*','page',70,1),
(4898,'Link','page',70,1),
(4899,'url','page',70,1),
(4900,'List','page',70,1),
(4901,'Blockquote','page',70,1),
(5334,'vATIS','page',57,54),
(5335,'What','page',57,5),
(5336,'is','page',57,15),
(5337,'the','page',57,24),
(5338,'software','page',57,2),
(5339,'we','page',57,1),
(5340,'use','page',57,1),
(5341,'to','page',57,21),
(5342,'connect','page',57,6),
(5343,'and','page',57,12),
(5344,'ATIS','page',57,11),
(5345,'online','page',57,1),
(5346,'directly','page',57,1),
(5347,'network','page',57,1),
(5348,'You','page',57,1),
(5349,'may','page',57,5),
(5350,'have','page',57,2),
(5351,'noticed','page',57,1),
(5352,'while','page',57,1),
(5353,'flying','page',57,2),
(5354,'that','page',57,7),
(5355,'it','page',57,5),
(5356,'not','page',57,1),
(5357,'just','page',57,3),
(5358,'controller','page',57,2),
(5359,'themselves','page',57,1),
(5360,'connected','page',57,1),
(5361,'An','page',57,1),
(5362,'provides','page',57,1),
(5363,'information','page',57,4),
(5364,'about','page',57,3),
(5365,'an','page',57,5),
(5366,'airports','page',57,1),
(5367,'conditions','page',57,1),
(5368,'NOTAM','page',57,2),
(5369,'s','page',57,2),
(5370,'pilots','page',57,3),
(5371,'are','page',57,5),
(5372,'example','page',57,3),
(5373,'of','page',57,2),
(5374,'bellow','page',57,3),
(5375,'GMMN','page',57,1),
(5376,'INFO','page',57,1),
(5377,'A','page',57,2),
(5378,'1130Z','page',57,1),
(5379,'EXPECT','page',57,2),
(5380,'ILS/Z','page',57,2),
(5381,'RWY','page',57,8),
(5382,'35','page',57,2),
(5383,'LEFT','page',57,2),
(5384,'TRL','page',57,2),
(5385,'FL50','page',57,2),
(5386,'/RWY35L','page',57,1),
(5387,'FOR','page',57,4),
(5388,'LDG','page',57,2),
(5389,'RWY35R','page',57,1),
(5390,'TAKEOFF','page',57,2),
(5391,'/RISK','page',57,1),
(5392,'OF','page',57,7),
(5393,'CONFUSION','page',57,4),
(5394,'BETWEEN','page',57,4),
(5395,'35L','page',57,4),
(5396,'AND','page',57,4),
(5397,'35R','page',57,6),
(5398,'RISK','page',57,3),
(5399,'TAXIWAY','page',57,4),
(5400,'TANGO','page',57,2),
(5401,'AFTER','page',57,2),
(5402,'VACATING','page',57,4),
(5403,'RUNWAY','page',57,4),
(5404,'HOLD','page',57,2),
(5405,'SHORT','page',57,2),
(5406,'ON','page',57,2),
(5407,'FIRST','page',57,2),
(5408,'CONTACT','page',57,2),
(5409,'ADVISE','page',57,2),
(5410,'TOWER','page',57,2),
(5411,'ABOUT','page',57,2),
(5412,'EXPECTED','page',57,2),
(5413,'HEAVY','page',57,2),
(5414,'TRAFFIC','page',57,2),
(5415,'ENTERING','page',57,2),
(5416,'OR','page',57,2),
(5417,'LEAVING','page',57,2),
(5418,'STANDS','page',57,2),
(5419,'MUST','page',57,2),
(5420,'USE','page',57,2),
(5421,'MINIMUM','page',57,2),
(5422,'POWER','page',57,2),
(5423,'01009KT','page',57,1),
(5424,'300V110','page',57,1),
(5425,'VIS','page',57,1),
(5426,'10KM','page',57,1),
(5427,'SCT030','page',57,1),
(5428,'22/13','page',57,1),
(5429,'Q1016','page',57,1),
(5430,'NOSIG','page',57,1),
(5431,'NOTAMS','page',57,2),
(5432,'BIRDS','page',57,1),
(5433,'IN','page',57,1),
(5434,'VICINITY','page',57,1),
(5435,'AD','page',57,1),
(5436,'How','page',57,10),
(5437,'Setup','page',57,5),
(5438,'When','page',57,1),
(5439,'you','page',57,11),
(5440,'first','page',57,1),
(5441,'download','page',57,1),
(5442,'app','page',57,1),
(5443,'must','page',57,2),
(5444,'import','page',57,1),
(5445,'profile','page',57,2),
(5446,'this','page',57,3),
(5447,'found','page',57,1),
(5448,'in','page',57,7),
(5449,'Downloaded','page',57,1),
(5450,'sectorfile','page',57,1),
(5451,'folder','page',57,1),
(5452,'located','page',57,1),
(5453,'at','page',57,1),
(5454,'GMMM','page',57,1),
(5455,'Plugins','page',57,1),
(5456,'The','page',57,1),
(5457,'Double','page',57,1),
(5458,'click','page',57,2),
(5459,'load','page',57,3),
(5460,'into','page',57,1),
(5461,'Next','page',57,1),
(5462,'go','page',57,1),
(5463,'User','page',57,1),
(5464,'configuration','page',57,4),
(5465,'enter','page',57,1),
(5466,'your','page',57,3),
(5467,'Name','page',57,1),
(5468,'name','page',57,1),
(5469,'which','page',57,2),
(5470,'shows','page',57,1),
(5471,'up','page',57,1),
(5472,'as','page',57,1),
(5473,'Connection','page',57,1),
(5474,'VATSIM','page',57,3),
(5475,'ID','page',57,1),
(5476,'CID','page',57,1),
(5477,'were','page',57,1),
(5478,'given','page',57,1),
(5479,'when','page',57,1),
(5480,'making','page',57,1),
(5481,'account','page',57,1),
(5482,'Password','page',57,1),
(5483,'Your','page',57,2),
(5484,'password','page',57,1),
(5485,'Controller','page',57,1),
(5486,'Rating','page',57,1),
(5487,'rating','page',57,1),
(5488,'Then','page',57,3),
(5489,'Save','page',57,1),
(5490,'Now','page',57,1),
(5491,'done','page',57,1),
(5492,'hard','page',57,1),
(5493,'part','page',57,1),
(5494,'over','page',57,1),
(5495,'In','page',57,1),
(5496,'order','page',57,1),
(5497,'conect','page',57,1),
(5498,'choose','page',57,1),
(5499,'airport','page',57,1),
(5500,'controlling','page',57,1),
(5501,'dropdown','page',57,1),
(5502,'bar','page',57,1),
(5503,'along','page',57,1),
(5504,'bottom','page',57,1),
(5505,'select','page',57,1),
(5506,'runway','page',57,3),
(5507,'using','page',57,1),
(5508,'Click','page',57,1),
(5509,'Connect','page',57,1),
(5510,'Optional','page',57,5),
(5511,'Extras','page',57,5),
(5512,'Airport','page',57,5),
(5513,'Conditions','page',57,4),
(5514,'After','page',57,2),
(5515,'there','page',57,4),
(5516,'be','page',57,3),
(5517,'a','page',57,2),
(5518,'few','page',57,2),
(5519,'items','page',57,2),
(5520,'populate','page',57,2),
(5521,'within','page',57,2),
(5522,'Condition','page',57,1),
(5523,'tab','page',57,2),
(5524,'these','page',57,2),
(5525,'give','page',57,2),
(5526,'specifics','page',57,1),
(5527,'whats','page',57,1),
(5528,'going','page',57,1),
(5529,'on','page',57,1),
(5530,'aiport','page',57,1),
(5531,'any','page',57,1),
(5532,'they','page',57,1),
(5533,'need','page',57,3),
(5534,'know','page',57,1),
(5535,'shown','page',57,1),
(5536,'RWY35L','page',57,1),
(5537,'/RWY35R','page',57,1),
(5538,'If','page',57,2),
(5539,'ever','page',57,2),
(5540,'change','page',57,2),
(5541,'them','page',57,2),
(5542,'type','page',57,2),
(5543,'box','page',57,2),
(5544,'should','page',57,2),
(5545,'automatically','page',57,2),
(5546,'save','page',57,2),
(5547,'NOTAMs','page',57,4),
(5548,'specific','page',57,1),
(5549,'place','page',57,1),
(5550,'hown','page',57,1),
(5658,'Tack','page',55,40),
(5659,'Audio','page',55,41),
(5660,'What','page',55,5),
(5661,'is','page',55,7),
(5662,'TrackAudio','page',55,13),
(5663,'a','page',55,5),
(5664,'next','page',55,1),
(5665,'generation','page',55,1),
(5666,'For','page',55,1),
(5667,'VATSIM','page',55,6),
(5668,'Audio-For-VATSIM','page',55,1),
(5669,'ATC','page',55,1),
(5670,'Client','page',55,1),
(5671,'for','page',55,1),
(5672,'macOS','page',55,1),
(5673,'Linux','page',55,1),
(5674,'and','page',55,9),
(5675,'Windows','page',55,1),
(5676,'Congratulations','page',55,1),
(5677,'You','page',55,1),
(5678,'are','page',55,1),
(5679,'now','page',55,1),
(5680,'fully','page',55,1),
(5681,'fledged','page',55,1),
(5682,'controller','page',55,1),
(5683,'Now','page',55,1),
(5684,'we','page',55,3),
(5685,'need','page',55,1),
(5686,'to','page',55,5),
(5687,'talk','page',55,1),
(5688,'the','page',55,8),
(5689,'aircraft','page',55,1),
(5690,'will','page',55,4),
(5691,'be','page',55,1),
(5692,'controlling','page',55,1),
(5693,'on','page',55,10),
(5694,'network','page',55,1),
(5695,'In','page',55,1),
(5696,'Maghreb','page',55,1),
(5697,'use','page',55,1),
(5698,'as','page',55,2),
(5699,'our','page',55,1),
(5700,'recommended','page',55,1),
(5701,'audio','page',55,2),
(5702,'client','page',55,1),
(5703,'Setting','page',55,5),
(5704,'up','page',55,5),
(5705,'Input','page',55,2),
(5706,'your','page',55,4),
(5707,'Details','page',55,1),
(5708,'Your','page',55,2),
(5709,'CID','page',55,1),
(5710,'Password','page',55,1),
(5711,'Configure','page',55,1),
(5712,'devices','page',55,1),
(5713,'Select','page',55,1),
(5714,'Headset','page',55,1),
(5715,'Speaker','page',55,1),
(5716,'device','page',55,1),
(5717,'Set','page',55,1),
(5718,'Push','page',55,1),
(5719,'To','page',55,1),
(5720,'Talk','page',55,1),
(5721,'Push-To-Talk','page',55,1),
(5722,'PTT','page',55,2),
(5723,'bind','page',55,1),
(5724,'Save','page',55,1),
(5725,'changes','page',55,1),
(5726,'by','page',55,1),
(5727,'pressing','page',55,1),
(5728,'Close','page',55,1),
(5729,'bottom','page',55,1),
(5730,'right','page',55,1),
(5731,'Connecting','page',55,5),
(5732,'Transmitting','page',55,5),
(5733,'Frequency','page',55,5),
(5734,'Open','page',55,1),
(5735,'if','page',55,1),
(5736,'setup','page',55,1),
(5737,'correctly','page',55,1),
(5738,'connected','page',55,2),
(5739,'you','page',55,3),
(5740,'see','page',55,2),
(5741,'green','page',55,1),
(5742,'CONNECT','page',55,1),
(5743,'button','page',55,2),
(5744,'Once','page',55,1),
(5745,'position','page',55,1),
(5746,'have','page',55,1),
(5747,'logged','page',55,1),
(5748,'at','page',55,1),
(5749,'top','page',55,1),
(5750,'If','page',55,1),
(5751,'callsign','page',55,1),
(5752,'correct','page',55,1),
(5753,'then','page',55,1),
(5754,'frequencies','page',55,1),
(5755,'populate','page',55,1),
(5756,'automatically','page',55,1),
(5757,'Click','page',55,1),
(5758,'TX','page',55,1),
(5759,'transmit','page',55,3),
(5760,'both','page',55,1),
(5761,'recieve','page',55,1),
(5762,'selected','page',55,2),
(5763,'frequency','page',55,2),
(5764,'Use','page',55,1),
(5765,'asas','page',71,40),
(5766,'h','chapter',72,48),
(5767,'i','page',73,40),
(5768,'Editor','bookshelf',65,48),
(5769,'stuff','bookshelf',65,48),
(5770,'Guides','bookshelf',65,48),
(5771,'Audio','book',74,48),
(5772,'Audio','page',75,54),
(5773,'For','page',75,40),
(5774,'VATSIM','page',75,60),
(5775,'What','page',75,5),
(5776,'is','page',75,7),
(5777,'for','page',75,16),
(5778,'AFV','page',75,1),
(5779,'a','page',75,5),
(5780,'modern','page',75,1),
(5781,'high','page',75,1),
(5782,'fidelity','page',75,1),
(5783,'high-fidelity','page',75,1),
(5784,'voice','page',75,1),
(5785,'communication','page',75,1),
(5786,'system','page',75,1),
(5787,'the','page',75,9),
(5788,'It','page',75,1),
(5789,'provides','page',75,1),
(5790,'realistic','page',75,1),
(5791,'low','page',75,1),
(5792,'latency','page',75,1),
(5793,'low-latency','page',75,1),
(5794,'VoIP','page',75,1),
(5795,'based','page',75,2),
(5796,'VoIP-based','page',75,1),
(5797,'codec','page',75,1),
(5798,'that','page',75,1),
(5799,'simulates','page',75,1),
(5800,'VHF/HF','page',75,1),
(5801,'radio','page',75,1),
(5802,'characteristics','page',75,1),
(5803,'including','page',75,1),
(5804,'signal','page',75,1),
(5805,'degradation','page',75,1),
(5806,'on','page',75,3),
(5807,'aircraft','page',75,1),
(5808,'altitude','page',75,1),
(5809,'position','page',75,1),
(5810,'and','page',75,8),
(5811,'distance','page',75,1),
(5812,'from','page',75,1),
(5813,'transmitters','page',75,1),
(5814,'Our','page',75,1),
(5815,'resources','page',75,1),
(5816,'page','page',75,1),
(5817,'where','page',75,1),
(5818,'you','page',75,2),
(5819,'can','page',75,4),
(5820,'find','page',75,1),
(5821,'download','page',75,1),
(5822,'link','page',75,2),
(5823,'be','page',75,4),
(5824,'found','page',75,3),
(5825,'here','page',75,2),
(5826,'warning','page',75,1),
(5827,'not','page',75,1),
(5828,'VATSSA','page',75,2),
(5829,'s','page',75,2),
(5830,'recommended','page',75,1),
(5831,'controller','page',75,1),
(5832,'audio','page',75,2),
(5833,'client','page',75,1),
(5834,'We','page',75,1),
(5835,'recommend','page',75,1),
(5836,'TrackAudio','page',75,3),
(5837,'to','page',75,12),
(5838,'guide','page',75,1),
(5839,'Setting','page',75,5),
(5840,'up','page',75,5),
(5841,'Input','page',75,2),
(5842,'your','page',75,3),
(5843,'Details','page',75,1),
(5844,'Your','page',75,2),
(5845,'CID','page',75,1),
(5846,'Password','page',75,1),
(5847,'Configure','page',75,1),
(5848,'devices','page',75,1),
(5849,'Select','page',75,1),
(5850,'Headset','page',75,1),
(5851,'Speaker','page',75,1),
(5852,'device','page',75,1),
(5853,'Set','page',75,1),
(5854,'Push','page',75,2),
(5855,'To','page',75,2),
(5856,'Talk','page',75,2),
(5857,'Push-To-Talk','page',75,2),
(5858,'PTT','page',75,1),
(5859,'bind','page',75,1),
(5860,'Save','page',75,1),
(5861,'changes','page',75,1),
(5862,'by','page',75,2),
(5863,'pressing','page',75,2),
(5864,'Apply','page',75,1),
(5865,'all','page',75,1),
(5866,'bottom','page',75,1),
(5867,'right','page',75,1),
(5868,'Connecting','page',75,5),
(5869,'Listening','page',75,5),
(5870,'ATC','page',75,5),
(5871,'Open','page',75,1),
(5872,'if','page',75,1),
(5873,'setup','page',75,1),
(5874,'correctly','page',75,1),
(5875,'connected','page',75,1),
(5876,'will','page',75,2),
(5877,'able','page',75,1),
(5878,'connect','page',75,1),
(5879,'Connect','page',75,1),
(5880,'button','page',75,1),
(5881,'Click','page',75,2),
(5882,'RX','page',75,1),
(5883,'receive','page',75,1),
(5884,'listen','page',75,1),
(5885,'in','page',75,4),
(5886,'frequency','page',75,2),
(5887,'TX','page',75,1),
(5888,'transmit','page',75,2),
(5889,'You','page',75,1),
(5890,'still','page',75,1),
(5891,'need','page',75,1),
(5892,'utilise','page',75,1),
(5893,'key','page',75,1),
(5894,'Still','page',75,1),
(5895,'having','page',75,1),
(5896,'issues','page',75,1),
(5897,'with','page',75,1),
(5898,'Feel','page',75,1),
(5899,'free','page',75,1),
(5900,'ask','page',75,1),
(5901,'help','page',75,1),
(5902,'one','page',75,1),
(5903,'of','page',75,1),
(5904,'our','page',75,1),
(5905,'channels','page',75,1),
(5906,'Discord','page',75,1),
(5907,'server','page',75,1),
(5908,'which','page',75,1),
(5909,'Community','page',75,1),
(5910,'Server','page',75,1),
(5911,'Tack','page',76,40),
(5912,'Audio','page',76,41),
(5913,'What','page',76,5),
(5914,'is','page',76,7),
(5915,'TrackAudio','page',76,13),
(5916,'a','page',76,5),
(5917,'next','page',76,1),
(5918,'generation','page',76,1),
(5919,'For','page',76,1),
(5920,'VATSIM','page',76,6),
(5921,'Audio-For-VATSIM','page',76,1),
(5922,'ATC','page',76,1),
(5923,'Client','page',76,1),
(5924,'for','page',76,1),
(5925,'macOS','page',76,1),
(5926,'Linux','page',76,1),
(5927,'and','page',76,9),
(5928,'Windows','page',76,1),
(5929,'Congratulations','page',76,1),
(5930,'You','page',76,1),
(5931,'are','page',76,1),
(5932,'now','page',76,1),
(5933,'fully','page',76,1),
(5934,'fledged','page',76,1),
(5935,'controller','page',76,1),
(5936,'Now','page',76,1),
(5937,'we','page',76,3),
(5938,'need','page',76,1),
(5939,'to','page',76,5),
(5940,'talk','page',76,1),
(5941,'the','page',76,8),
(5942,'aircraft','page',76,1),
(5943,'will','page',76,4),
(5944,'be','page',76,1),
(5945,'controlling','page',76,1),
(5946,'on','page',76,10),
(5947,'network','page',76,1),
(5948,'In','page',76,1),
(5949,'Maghreb','page',76,1),
(5950,'use','page',76,1),
(5951,'as','page',76,2),
(5952,'our','page',76,1),
(5953,'recommended','page',76,1),
(5954,'audio','page',76,2),
(5955,'client','page',76,1),
(5956,'Setting','page',76,5),
(5957,'up','page',76,5),
(5958,'Input','page',76,2),
(5959,'your','page',76,4),
(5960,'Details','page',76,1),
(5961,'Your','page',76,2),
(5962,'CID','page',76,1),
(5963,'Password','page',76,1),
(5964,'Configure','page',76,1),
(5965,'devices','page',76,1),
(5966,'Select','page',76,1),
(5967,'Headset','page',76,1),
(5968,'Speaker','page',76,1),
(5969,'device','page',76,1),
(5970,'Set','page',76,1),
(5971,'Push','page',76,1),
(5972,'To','page',76,1),
(5973,'Talk','page',76,1),
(5974,'Push-To-Talk','page',76,1),
(5975,'PTT','page',76,2),
(5976,'bind','page',76,1),
(5977,'Save','page',76,1),
(5978,'changes','page',76,1),
(5979,'by','page',76,1),
(5980,'pressing','page',76,1),
(5981,'Close','page',76,1),
(5982,'bottom','page',76,1),
(5983,'right','page',76,1),
(5984,'Connecting','page',76,5),
(5985,'Transmitting','page',76,5),
(5986,'Frequency','page',76,5),
(5987,'Open','page',76,1),
(5988,'if','page',76,1),
(5989,'setup','page',76,1),
(5990,'correctly','page',76,1),
(5991,'connected','page',76,2),
(5992,'you','page',76,3),
(5993,'see','page',76,2),
(5994,'green','page',76,1),
(5995,'CONNECT','page',76,1),
(5996,'button','page',76,2),
(5997,'Once','page',76,1),
(5998,'position','page',76,1),
(5999,'have','page',76,1),
(6000,'logged','page',76,1),
(6001,'at','page',76,1),
(6002,'top','page',76,1),
(6003,'If','page',76,1),
(6004,'callsign','page',76,1),
(6005,'correct','page',76,1),
(6006,'then','page',76,1),
(6007,'frequencies','page',76,1),
(6008,'populate','page',76,1),
(6009,'automatically','page',76,1),
(6010,'Click','page',76,1),
(6011,'TX','page',76,1),
(6012,'transmit','page',76,3),
(6013,'both','page',76,1),
(6014,'recieve','page',76,1),
(6015,'selected','page',76,2),
(6016,'frequency','page',76,2),
(6017,'Use','page',76,1),
(6018,'ATC','bookshelf',9,48),
(6019,'Training','bookshelf',9,48);
/*!40000 ALTER TABLE `search_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `setting_key` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'string',
  PRIMARY KEY (`setting_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES
('app-color','#525252','2026-05-05 08:37:13','2026-05-05 08:37:38','string'),
('app-color-dark','#525252','2026-05-05 08:37:13','2026-05-05 08:45:48','string'),
('app-color-light','rgba(82,82,82,0.15)','2026-05-05 08:37:13','2026-05-05 08:37:38','string'),
('app-color-light-dark','rgba(82,82,82,0.15)','2026-05-05 08:37:13','2026-05-05 08:45:48','string'),
('app-custom-head','','2026-05-05 08:37:13','2026-05-05 08:48:28','string'),
('app-disable-comments','false','2026-05-05 08:34:43','2026-05-05 08:34:43','string'),
('app-editor','markdown','2026-05-05 08:37:13','2026-05-05 08:37:38','string'),
('app-footer-links','[]','2026-05-05 08:37:13','2026-05-05 08:37:13','array'),
('app-homepage','','2026-05-05 08:37:13','2026-05-05 08:37:13','string'),
('app-homepage-type','bookshelves','2026-05-05 08:37:13','2026-05-05 08:46:13','string'),
('app-icon','http://localhost:6875/uploads/images/system/2026-05/maghreb-vacc-full-black-trans.png','2026-05-05 09:56:27','2026-05-05 09:57:37','string'),
('app-icon-128','http://localhost:6875/uploads/images/system/2026-05/rdemaghreb-vacc-full-black-trans.png','2026-05-05 09:56:27','2026-05-05 09:57:37','string'),
('app-icon-180','http://localhost:6875/uploads/images/system/2026-05/V6Cmaghreb-vacc-full-black-trans.png','2026-05-05 09:56:27','2026-05-05 09:57:37','string'),
('app-icon-32','http://localhost:6875/uploads/images/system/2026-05/66Gmaghreb-vacc-full-black-trans.png','2026-05-05 09:56:27','2026-05-05 09:57:37','string'),
('app-icon-64','http://localhost:6875/uploads/images/system/2026-05/laumaghreb-vacc-full-black-trans.png','2026-05-05 09:56:27','2026-05-05 09:57:37','string'),
('app-logo','http://localhost:6875/uploads/images/system/2026-05/Lqamaghreb-vacc-full-white-trans-1.png','2026-05-05 09:56:27','2026-05-05 09:57:37','string'),
('app-name','Maghreb vACC Docs','2026-05-05 08:37:13','2026-05-05 09:56:27','string'),
('app-name-header','true','2026-05-05 08:37:13','2026-05-05 08:44:22','string'),
('app-public','true','2026-05-05 08:34:43','2026-05-05 08:53:40','string'),
('app-secure-images','false','2026-05-05 08:34:43','2026-05-05 08:34:43','string'),
('book-color','#077b70','2026-05-05 08:37:13','2026-05-05 08:37:13','string'),
('book-color-dark','#389f60','2026-05-05 08:37:13','2026-05-05 08:37:13','string'),
('bookshelf-color','#bc2929','2026-05-05 08:37:13','2026-05-05 08:38:21','string'),
('bookshelf-color-dark','#ff5454','2026-05-05 08:37:13','2026-05-05 08:37:13','string'),
('chapter-color','#af4d0d','2026-05-05 08:37:13','2026-05-05 08:37:13','string'),
('chapter-color-dark','#ee7a2d','2026-05-05 08:37:13','2026-05-05 08:37:13','string'),
('instance-id','cbbf9fd5-cd13-4855-8fe6-3406c53c0ee5','2026-05-05 08:19:11','2026-05-05 08:19:11','string'),
('link-color','#1f0075','2026-05-05 08:37:13','2026-05-05 08:39:21','string'),
('link-color-dark','#ffffff','2026-05-05 08:37:13','2026-05-05 08:45:48','string'),
('page-color','#525252','2026-05-05 08:37:13','2026-05-05 08:38:21','string'),
('page-color-dark','#429fe3','2026-05-05 08:37:13','2026-05-05 08:37:13','string'),
('page-draft-color','#7e50b1','2026-05-05 08:37:13','2026-05-05 08:37:13','string'),
('page-draft-color-dark','#a66ce8','2026-05-05 08:37:13','2026-05-05 08:37:13','string'),
('registration-confirmation','false','2026-05-05 10:07:38','2026-05-05 10:07:43','string'),
('registration-enabled','false','2026-05-05 10:07:38','2026-05-05 10:07:38','string'),
('registration-restrict','','2026-05-05 10:07:38','2026-05-05 10:07:38','string'),
('registration-role','0','2026-05-05 10:07:38','2026-05-05 10:07:38','string'),
('user:7:language','en','2026-05-05 10:15:31','2026-05-05 10:15:31','string'),
('user:8:language','en','2026-05-05 10:16:34','2026-05-05 10:16:34','string'),
('user:8:shelf_books_sort','default','2026-05-05 10:37:36','2026-05-05 10:37:36','string'),
('user:8:shelf_books_sort_order','asc','2026-05-05 10:37:36','2026-05-05 10:37:38','string');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slug_history`
--

DROP TABLE IF EXISTS `slug_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `slug_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sluggable_type` varchar(10) NOT NULL,
  `sluggable_id` bigint(20) unsigned NOT NULL,
  `slug` varchar(191) NOT NULL,
  `parent_slug` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slug_history_sluggable_type_index` (`sluggable_type`),
  KEY `slug_history_sluggable_id_index` (`sluggable_id`),
  KEY `slug_history_slug_index` (`slug`),
  KEY `slug_history_parent_slug_index` (`parent_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slug_history`
--

LOCK TABLES `slug_history` WRITE;
/*!40000 ALTER TABLE `slug_history` DISABLE KEYS */;
INSERT INTO `slug_history` VALUES
(1,'bookshelf',11,'sops',NULL,'2026-05-05 10:32:20','2026-05-05 10:32:20'),
(2,'page',57,'new-page','vatis','2026-05-05 11:25:47','2026-05-05 11:25:47'),
(3,'book',56,'vatis',NULL,'2026-05-05 11:44:03','2026-05-05 11:44:03'),
(4,'page',57,'vatis','vatis','2026-05-05 12:44:03','2026-05-05 12:44:03'),
(5,'bookshelf',65,'useless-dont-look',NULL,'2026-05-05 12:02:18','2026-05-05 12:02:18');
/*!40000 ALTER TABLE `slug_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `driver` varchar(191) NOT NULL,
  `driver_id` varchar(191) NOT NULL,
  `avatar` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_accounts_user_id_index` (`user_id`),
  KEY `social_accounts_driver_index` (`driver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_rules`
--

DROP TABLE IF EXISTS `sort_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sort_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `sequence` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_rules`
--

LOCK TABLES `sort_rules` WRITE;
/*!40000 ALTER TABLE `sort_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` bigint(20) unsigned NOT NULL,
  `entity_type` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_name_index` (`name`),
  KEY `tags_value_index` (`value`),
  KEY `tags_order_index` (`order`),
  KEY `tags_entity_id_entity_type_index` (`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_invites`
--

DROP TABLE IF EXISTS `user_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_invites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_invites_user_id_index` (`user_id`),
  KEY `user_invites_token_index` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_invites`
--

LOCK TABLES `user_invites` WRITE;
/*!40000 ALTER TABLE `user_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `image_id` int(11) NOT NULL DEFAULT 0,
  `external_auth_id` varchar(191) NOT NULL,
  `system_name` varchar(191) DEFAULT NULL,
  `slug` varchar(180) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_slug_unique` (`slug`),
  KEY `users_external_auth_id_index` (`external_auth_id`),
  KEY `users_system_name_index` (`system_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(2,'Guest','guest@example.com','',NULL,'2026-05-05 08:19:11','2026-05-05 08:19:11',1,0,'','public','guest'),
(7,'admin','admin@admin.com','$2y$12$sO638AN6Uof/8nBv1x8xXuWuAYbeJpVTXZlJIUQXTzOgkcGVFwJtS',NULL,'2026-05-05 10:15:31','2026-05-05 10:15:31',1,29,'',NULL,'admin'),
(8,'Jamie Datson','jamiedatson95@gmail.com','$2y$12$99jP1eTkgpSozxvfrEm6WeknkFfUttXWSDRMrZzQ43Y5rYb8t/jPO',NULL,'2026-05-05 10:16:34','2026-05-05 10:16:35',1,30,'',NULL,'jamie-datson');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `viewable_id` bigint(20) unsigned NOT NULL,
  `viewable_type` varchar(191) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `views_user_id_index` (`user_id`),
  KEY `views_viewable_id_index` (`viewable_id`),
  KEY `views_updated_at_index` (`updated_at`),
  KEY `views_viewable_type_index` (`viewable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views`
--

LOCK TABLES `views` WRITE;
/*!40000 ALTER TABLE `views` DISABLE KEYS */;
INSERT INTO `views` VALUES
(3,8,4,'book',4,'2026-05-05 10:17:03','2026-05-05 10:19:23'),
(4,8,5,'chapter',1,'2026-05-05 10:17:08','2026-05-05 10:17:08'),
(5,8,6,'bookshelf',2,'2026-05-05 10:17:41','2026-05-05 10:19:13'),
(6,8,7,'book',2,'2026-05-05 10:17:44','2026-05-05 10:19:19'),
(7,8,8,'chapter',1,'2026-05-05 10:17:47','2026-05-05 10:17:47'),
(8,8,9,'bookshelf',17,'2026-05-05 10:21:05','2026-05-05 12:22:11'),
(9,8,10,'book',2,'2026-05-05 10:27:11','2026-05-05 10:29:09'),
(10,8,11,'bookshelf',27,'2026-05-05 10:31:51','2026-05-05 12:20:33'),
(11,8,12,'book',6,'2026-05-05 10:32:11','2026-05-05 12:16:55'),
(12,8,13,'bookshelf',16,'2026-05-05 10:33:10','2026-05-05 12:16:49'),
(13,8,14,'book',20,'2026-05-05 10:33:22','2026-05-05 12:16:46'),
(14,8,15,'page',3,'2026-05-05 10:33:31','2026-05-05 10:34:10'),
(15,8,16,'page',3,'2026-05-05 10:33:38','2026-05-05 10:34:05'),
(16,8,18,'chapter',6,'2026-05-05 10:33:48','2026-05-05 10:35:05'),
(17,8,17,'page',1,'2026-05-05 10:34:18','2026-05-05 10:34:18'),
(18,8,19,'page',1,'2026-05-05 10:34:27','2026-05-05 10:34:27'),
(19,8,20,'page',1,'2026-05-05 10:34:37','2026-05-05 10:34:37'),
(20,8,21,'chapter',5,'2026-05-05 10:34:48','2026-05-05 10:35:25'),
(21,8,22,'page',1,'2026-05-05 10:34:54','2026-05-05 10:34:54'),
(22,8,23,'page',1,'2026-05-05 10:35:09','2026-05-05 10:35:09'),
(23,8,24,'page',1,'2026-05-05 10:35:24','2026-05-05 10:35:24'),
(24,8,25,'book',12,'2026-05-05 10:35:37','2026-05-05 12:16:48'),
(25,8,26,'page',1,'2026-05-05 10:35:42','2026-05-05 10:35:42'),
(26,8,27,'chapter',3,'2026-05-05 10:35:52','2026-05-05 10:44:18'),
(27,8,28,'chapter',2,'2026-05-05 10:36:00','2026-05-05 10:36:02'),
(28,8,30,'chapter',1,'2026-05-05 10:36:10','2026-05-05 10:36:10'),
(29,8,31,'chapter',1,'2026-05-05 10:36:15','2026-05-05 10:36:15'),
(30,8,32,'book',3,'2026-05-05 10:36:42','2026-05-05 12:16:49'),
(31,8,33,'chapter',2,'2026-05-05 10:36:47','2026-05-05 10:36:49'),
(32,8,34,'book',4,'2026-05-05 10:37:06','2026-05-05 11:41:54'),
(33,8,35,'book',4,'2026-05-05 10:37:17','2026-05-05 11:41:51'),
(34,8,36,'book',2,'2026-05-05 10:37:26','2026-05-05 10:44:08'),
(35,8,37,'bookshelf',5,'2026-05-05 10:38:41','2026-05-05 12:20:46'),
(36,8,38,'bookshelf',46,'2026-05-05 10:40:07','2026-05-05 12:31:11'),
(37,8,39,'book',8,'2026-05-05 10:40:15','2026-05-05 11:47:54'),
(38,8,40,'book',14,'2026-05-05 10:40:30','2026-05-05 12:21:15'),
(39,8,41,'book',14,'2026-05-05 10:40:40','2026-05-05 11:25:58'),
(40,8,42,'chapter',5,'2026-05-05 10:40:51','2026-05-05 11:02:26'),
(41,8,43,'chapter',2,'2026-05-05 10:41:34','2026-05-05 11:02:51'),
(42,8,44,'bookshelf',3,'2026-05-05 10:42:44','2026-05-05 12:16:58'),
(43,8,45,'chapter',3,'2026-05-05 10:43:10','2026-05-05 12:16:54'),
(44,8,46,'chapter',2,'2026-05-05 10:44:02','2026-05-05 11:41:53'),
(45,8,47,'chapter',1,'2026-05-05 10:44:05','2026-05-05 10:44:05'),
(46,8,48,'chapter',1,'2026-05-05 10:44:09','2026-05-05 10:44:09'),
(47,8,49,'chapter',5,'2026-05-05 10:49:59','2026-05-05 11:02:00'),
(48,8,50,'page',11,'2026-05-05 10:54:32','2026-05-05 11:01:53'),
(49,8,51,'page',5,'2026-05-05 11:00:31','2026-05-05 11:02:24'),
(50,8,52,'page',1,'2026-05-05 11:02:15','2026-05-05 11:02:15'),
(51,8,53,'page',1,'2026-05-05 11:02:48','2026-05-05 11:02:48'),
(52,8,54,'page',4,'2026-05-05 11:04:06','2026-05-05 11:05:09'),
(53,8,55,'page',4,'2026-05-05 11:06:05','2026-05-05 12:16:29'),
(54,8,56,'book',43,'2026-05-05 11:07:04','2026-05-05 12:31:25'),
(55,8,57,'page',37,'2026-05-05 11:22:37','2026-05-05 12:31:25'),
(56,8,58,'book',12,'2026-05-05 11:41:22','2026-05-05 12:21:25'),
(57,8,59,'bookshelf',7,'2026-05-05 11:42:36','2026-05-05 11:43:43'),
(58,8,60,'page',2,'2026-05-05 11:45:53','2026-05-05 12:31:18'),
(59,8,61,'page',1,'2026-05-05 11:47:36','2026-05-05 11:47:36'),
(60,8,62,'page',1,'2026-05-05 11:47:51','2026-05-05 11:47:51'),
(61,8,63,'page',2,'2026-05-05 11:48:24','2026-05-05 12:31:22'),
(65,8,64,'page',1,'2026-05-05 11:50:47','2026-05-05 11:50:47'),
(66,8,65,'bookshelf',17,'2026-05-05 11:50:59','2026-05-05 12:29:45'),
(67,8,66,'book',3,'2026-05-05 11:51:28','2026-05-05 11:53:37'),
(68,8,67,'page',3,'2026-05-05 11:53:02','2026-05-05 11:53:33'),
(69,8,68,'book',6,'2026-05-05 11:53:53','2026-05-05 12:15:31'),
(70,8,69,'page',4,'2026-05-05 11:54:14','2026-05-05 12:01:54'),
(71,8,70,'page',8,'2026-05-05 11:54:59','2026-05-05 12:15:32'),
(72,8,71,'page',1,'2026-05-05 12:17:19','2026-05-05 12:17:19'),
(73,8,72,'chapter',3,'2026-05-05 12:17:41','2026-05-05 12:17:52'),
(74,8,73,'page',1,'2026-05-05 12:17:45','2026-05-05 12:17:45'),
(75,8,74,'book',2,'2026-05-05 12:21:20','2026-05-05 12:21:56');
/*!40000 ALTER TABLE `views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watches`
--

DROP TABLE IF EXISTS `watches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `watches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `watchable_id` bigint(20) unsigned NOT NULL,
  `watchable_type` varchar(100) NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watchable_index` (`watchable_id`,`watchable_type`),
  KEY `watches_user_id_index` (`user_id`),
  KEY `watches_level_index` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watches`
--

LOCK TABLES `watches` WRITE;
/*!40000 ALTER TABLE `watches` DISABLE KEYS */;
INSERT INTO `watches` VALUES
(1,8,57,'page',2,'2026-05-05 11:36:26','2026-05-05 11:36:26');
/*!40000 ALTER TABLE `watches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhook_tracked_events`
--

DROP TABLE IF EXISTS `webhook_tracked_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhook_tracked_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `webhook_id` int(11) NOT NULL,
  `event` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webhook_tracked_events_event_index` (`event`),
  KEY `webhook_tracked_events_webhook_id_index` (`webhook_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhook_tracked_events`
--

LOCK TABLES `webhook_tracked_events` WRITE;
/*!40000 ALTER TABLE `webhook_tracked_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhook_tracked_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhooks`
--

DROP TABLE IF EXISTS `webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `endpoint` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT 3,
  `last_error` text NOT NULL DEFAULT '',
  `last_called_at` timestamp NULL DEFAULT NULL,
  `last_errored_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webhooks_name_index` (`name`),
  KEY `webhooks_active_index` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhooks`
--

LOCK TABLES `webhooks` WRITE;
/*!40000 ALTER TABLE `webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-05-05 14:36:21
