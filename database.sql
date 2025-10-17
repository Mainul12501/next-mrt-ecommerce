-- MySQL dump 10.13  Distrib 8.4.4, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: shopwise
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'gt9gHQzvEQvkxWkBsow7I2fmlhb4vJCn',1,'2025-09-11 01:37:57','2025-09-11 01:37:57','2025-09-11 01:37:57');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Homepage middle 1','2030-09-11 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.jpg','/product-categories/headphone',0,1,'published','2025-09-11 01:38:01','2025-09-11 01:38:01',1,NULL,NULL,NULL,NULL),(2,'Homepage middle 2','2030-09-11 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.jpg','/product-categories/camera',0,2,'published','2025-09-11 01:38:01','2025-09-11 01:38:01',1,NULL,NULL,NULL,NULL),(3,'Homepage middle 3','2030-09-11 00:00:00','not_set','ZDOZUZZIU7FT','promotion/3.jpg','/product-categories/watches',0,3,'published','2025-09-11 01:38:01','2025-09-11 01:38:01',1,NULL,NULL,NULL,NULL),(4,'Slide right 1','2030-09-11 00:00:00','not_set','WF2VEBKBGUFA','promotion/4.jpg','/products',0,4,'published','2025-09-11 01:38:01','2025-09-11 01:38:01',1,NULL,NULL,NULL,NULL),(5,'Slide right 2','2030-09-11 00:00:00','not_set','YKE9S2TUEEJB','promotion/5.jpg','/products',0,5,'published','2025-09-11 01:38:01','2025-09-11 01:38:01',1,NULL,NULL,NULL,NULL),(6,'Homepage medium 1','2030-09-11 00:00:00','not_set','DHAEBCMWGYJG','promotion/6.jpg','/products',0,6,'published','2025-09-11 01:38:01','2025-09-11 01:38:01',1,NULL,NULL,NULL,NULL),(7,'Homepage medium 1','2030-09-11 00:00:00','not_set','MDEUVQI9QPKM','promotion/7.jpg','/products',0,7,'published','2025-09-11 01:38:01','2025-09-11 01:38:01',1,NULL,NULL,NULL,NULL),(8,'Homepage medium 3','2030-09-11 00:00:00','not_set','EYMG7NGZTHJL','promotion/8.jpg','/products',0,8,'published','2025-09-11 01:38:01','2025-09-11 01:38:01',1,NULL,NULL,NULL,NULL),(9,'Homepage medium 4','2030-09-11 00:00:00','not_set','NKWBGV6NAC3M','promotion/9.jpg','/products',0,9,'published','2025-09-11 01:38:01','2025-09-11 01:38:01',1,NULL,NULL,NULL,NULL),(10,'Homepage medium 5','2030-09-11 00:00:00','not_set','7W3YFO7XE422','promotion/10.jpg','/products',0,10,'published','2025-09-11 01:38:01','2025-09-11 01:38:01',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
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
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Aut et dolores itaque. Et magnam explicabo ea harum odit possimus minus quibusdam. Tempore quae necessitatibus nemo cumque molestiae dolore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2025-09-11 01:37:56','2025-09-11 01:37:56'),(2,'Fashion',0,'Blanditiis sequi dolore modi. Quam pariatur qui magnam ducimus. Consequatur quae fugit eos consequuntur labore et voluptas. Sequi placeat sit dolor accusantium consequatur.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-11 01:37:56','2025-09-11 01:37:56'),(3,'Electronic',0,'In asperiores ducimus id. Odio deserunt natus voluptatum accusamus ut quia libero debitis. In odit magnam et rerum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-11 01:37:56','2025-09-11 01:37:56'),(4,'Commercial',0,'Ea nihil consequatur perspiciatis mollitia tempora explicabo. Voluptas fuga porro quam unde eaque harum. Quis dignissimos odio ea.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-11 01:37:56','2025-09-11 01:37:56');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`),
  KEY `idx_cities_name` (`name`),
  KEY `idx_cities_state_status` (`state_id`,`status`),
  KEY `idx_cities_status` (`status`),
  KEY `idx_cities_state_id` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`),
  KEY `idx_cities_trans_city_lang` (`cities_id`,`lang_code`),
  KEY `idx_cities_trans_name` (`name`),
  KEY `idx_cities_trans_cities_id` (`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_countries_name` (`name`),
  KEY `idx_countries_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`),
  KEY `idx_countries_trans_country_lang` (`countries_id`,`lang_code`),
  KEY `idx_countries_trans_name` (`name`),
  KEY `idx_countries_trans_countries_id` (`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_token_unique` (`token`),
  KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  KEY `device_tokens_is_active_index` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_abandoned_carts`
--

DROP TABLE IF EXISTS `ec_abandoned_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_abandoned_carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_data` json NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `items_count` int NOT NULL DEFAULT '0',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abandoned_at` timestamp NULL DEFAULT NULL,
  `reminder_sent_at` timestamp NULL DEFAULT NULL,
  `reminders_sent` int NOT NULL DEFAULT '0',
  `is_recovered` tinyint(1) NOT NULL DEFAULT '0',
  `recovered_at` timestamp NULL DEFAULT NULL,
  `recovered_order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_abandoned_carts_abandoned_at_is_recovered_index` (`abandoned_at`,`is_recovered`),
  KEY `ec_abandoned_carts_created_at_is_recovered_index` (`created_at`,`is_recovered`),
  KEY `ec_abandoned_carts_customer_id_index` (`customer_id`),
  KEY `ec_abandoned_carts_session_id_index` (`session_id`),
  KEY `ec_abandoned_carts_email_index` (`email`),
  KEY `ec_abandoned_carts_recovered_order_id_index` (`recovered_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_abandoned_carts`
--

LOCK TABLES `ec_abandoned_carts` WRITE;
/*!40000 ALTER TABLE `ec_abandoned_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_abandoned_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.png','published',0,1,'2025-09-11 01:37:40','2025-09-11 01:37:40'),(2,'Hand crafted',NULL,NULL,'brands/2.png','published',1,1,'2025-09-11 01:37:40','2025-09-11 01:37:40'),(3,'Mestonix',NULL,NULL,'brands/3.png','published',2,1,'2025-09-11 01:37:40','2025-09-11 01:37:40'),(4,'Sunshine',NULL,NULL,'brands/4.png','published',3,1,'2025-09-11 01:37:40','2025-09-11 01:37:40'),(5,'Pure',NULL,NULL,'brands/5.png','published',4,1,'2025-09-11 01:37:40','2025-09-11 01:37:40'),(6,'Anfold',NULL,NULL,'brands/6.png','published',5,1,'2025-09-11 01:37:40','2025-09-11 01:37:40'),(7,'Automotive',NULL,NULL,'brands/7.png','published',6,1,'2025-09-11 01:37:40','2025-09-11 01:37:40');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2025-09-11 01:37:40','2025-09-11 01:37:40'),(2,'EUR','€',0,2,1,0,0.84,'2025-09-11 01:37:40','2025-09-11 01:37:40'),(3,'VND','₫',0,0,2,0,23203,'2025-09-11 01:37:40','2025-09-11 01:37:40'),(4,'NGN','₦',1,2,2,0,895.52,'2025-09-11 01:37:40','2025-09-11 01:37:40');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Ursula Stracke','customer@botble.com','+12524729795','BI','Indiana','Port Graysonview','1567 Kris Oval',1,1,'2025-09-11 01:37:43','2025-09-11 01:37:43','39911'),(2,'Ursula Stracke','customer@botble.com','+16808923274','AT','Ohio','West Vida','2348 Herzog Ferry Apt. 225',1,0,'2025-09-11 01:37:43','2025-09-11 01:37:43','37767'),(3,'Thurman Schuppe','john.smith@botble.com','+12028410960','CU','Nebraska','Botsfordhaven','45197 Candice Pike Apt. 036',2,1,'2025-09-11 01:37:43','2025-09-11 01:37:43','34737-7460'),(4,'Thurman Schuppe','john.smith@botble.com','+15153214957','MA','Kentucky','Patchester','673 Ernser Inlet Suite 093',2,0,'2025-09-11 01:37:43','2025-09-11 01:37:43','43945-1388'),(5,'Ardella Will PhD','ara12@example.net','+19418226431','NE','Arizona','Murazikfurt','50113 Nelle Harbor Suite 092',3,1,'2025-09-11 01:37:43','2025-09-11 01:37:43','52066-1193'),(6,'Cortney Bernhard','thiel.ferne@example.net','+15625905793','LY','Alaska','Swaniawskishire','7166 Hand Canyon Suite 198',4,1,'2025-09-11 01:37:44','2025-09-11 01:37:44','52909-2218'),(7,'Prof. Clara Waelchi','aklein@example.org','+18315982233','BO','New Mexico','Briaville','287 Jazlyn Dam Suite 355',5,1,'2025-09-11 01:37:44','2025-09-11 01:37:44','96316-2465'),(8,'Sim Hahn','sid.stokes@example.com','+17372081593','VE','Connecticut','Dooleybury','5293 Fabiola Points Apt. 191',6,1,'2025-09-11 01:37:44','2025-09-11 01:37:44','03722-8918'),(9,'Tracy Hagenes Sr.','spinka.elinor@example.net','+19303573476','VI','Ohio','Port Christelleside','736 Heller Village Suite 103',7,1,'2025-09-11 01:37:44','2025-09-11 01:37:44','24372-0447'),(10,'Lambert Nitzsche','brown.connor@example.net','+14059697839','BE','Connecticut','West Orion','676 Carmel Mills Apt. 797',8,1,'2025-09-11 01:37:45','2025-09-11 01:37:45','70890'),(11,'Prof. Aaron Parker','hill.toby@example.com','+19163010461','ME','Massachusetts','Ernsermouth','11110 McClure Green Apt. 085',9,1,'2025-09-11 01:37:45','2025-09-11 01:37:45','29779'),(12,'Rosalia Feeney V','elmo92@example.net','+16308456973','SY','Alabama','Timothyview','244 West Heights Suite 574',10,1,'2025-09-11 01:37:45','2025-09-11 01:37:45','80220-0793');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Ursula Stracke','customer@botble.com','$2y$12$3yvG4GDWPjNfWJsKQXrFA.m0BUzyq7xq0hH5llbFusaTRa3Y18cYu','customers/7.jpg','1988-08-17','+19409123651',NULL,'2025-09-11 01:37:43','2025-09-11 01:37:43','2025-09-11 08:37:43',NULL,'activated',NULL),(2,'Thurman Schuppe','john.smith@botble.com','$2y$12$MzEwMbWb2VmfD3GTwxYwxuNRL5jtNuQYrxBzziOeY/h5irghyW/CG','customers/2.jpg','1979-08-29','+18183883339',NULL,'2025-09-11 01:37:43','2025-09-11 01:37:43','2025-09-11 08:37:43',NULL,'activated',NULL),(3,'Ardella Will PhD','ara12@example.net','$2y$12$zmddFyM33wIBBuTTJBVt1.BQGo6lsjYBd68PLYm.PEn4mFDnoPs.S','customers/1.jpg','1996-08-14','+16465795653',NULL,'2025-09-11 01:37:43','2025-09-11 01:37:43','2025-09-11 08:37:43',NULL,'activated',NULL),(4,'Cortney Bernhard','thiel.ferne@example.net','$2y$12$XRZSKlm3rT2/lb/UzLd.J.EtW.p2mJuxPr6Md00Jwm8UApCAlnUnS','customers/2.jpg','1982-08-15','+15105175012',NULL,'2025-09-11 01:37:44','2025-09-11 01:37:44','2025-09-11 08:37:44',NULL,'activated',NULL),(5,'Prof. Clara Waelchi','aklein@example.org','$2y$12$XBUGSG2oX611L9iP69VrCuEumLcj4qv9M8Z9HEgK/cRFUzzVsRmxa','customers/3.jpg','1986-09-02','+15204781630',NULL,'2025-09-11 01:37:44','2025-09-11 01:37:44','2025-09-11 08:37:44',NULL,'activated',NULL),(6,'Sim Hahn','sid.stokes@example.com','$2y$12$cd6BztsrNm2ySLmu3sygneYibfJ2R0j8fAuxb0YdZVXNblJDpBb7W','customers/4.jpg','1985-08-24','+13479436303',NULL,'2025-09-11 01:37:44','2025-09-11 01:37:44','2025-09-11 08:37:44',NULL,'activated',NULL),(7,'Tracy Hagenes Sr.','spinka.elinor@example.net','$2y$12$QgHDjhN6jqnIiDPUZzsap.B69A2I7r30OTDSMHzW8CKX/jCrJZzL2','customers/5.jpg','1991-09-05','+12523698232',NULL,'2025-09-11 01:37:44','2025-09-11 01:37:44','2025-09-11 08:37:44',NULL,'activated',NULL),(8,'Lambert Nitzsche','brown.connor@example.net','$2y$12$VeqIcuNgSb95JyAH2FccBu.yP694k/DKPRrrHX4nPxIZzWbWy7qyK','customers/6.jpg','2002-08-15','+18707829150',NULL,'2025-09-11 01:37:45','2025-09-11 01:37:45','2025-09-11 08:37:45',NULL,'activated',NULL),(9,'Prof. Aaron Parker','hill.toby@example.com','$2y$12$GfHirOEGSQF2zdZj1Yw7mOfLGwOoJIAtHbBC2aiS7gqRBgts5ykia','customers/7.jpg','2002-08-27','+13396456296',NULL,'2025-09-11 01:37:45','2025-09-11 01:37:45','2025-09-11 08:37:45',NULL,'activated',NULL),(10,'Rosalia Feeney V','elmo92@example.net','$2y$12$2SzNBfUa.CLGn8nAAwbuOuhBDRuD4n8yLuzSbN7sSZuvRoNLmGNh6','customers/8.jpg','1993-08-30','+15636499851',NULL,'2025-09-11 01:37:45','2025-09-11 01:37:45','2025-09-11 08:37:45',NULL,'activated',NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','0S77TO55NRJF','2025-09-10 08:37:55',NULL,NULL,0,419,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-09-11 01:37:55','2025-09-11 01:37:55',NULL),(2,'Discount 2','QNLZEMHRT1JY','2025-09-10 08:37:55','2025-10-07 08:37:55',NULL,0,353,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-09-11 01:37:55','2025-09-11 01:37:55',NULL),(3,'Discount 3','ZLLFN27SX4WO','2025-09-10 08:37:55',NULL,NULL,0,759,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-09-11 01:37:55','2025-09-11 01:37:55',NULL),(4,'Discount 4','PSSCU81XTVLM','2025-09-10 08:37:55',NULL,NULL,0,289,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-09-11 01:37:55','2025-09-11 01:37:55',NULL),(5,'Discount 5','PHWD9WXMUHDS','2025-09-10 08:37:55','2025-09-14 08:37:55',NULL,0,557,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-09-11 01:37:55','2025-09-11 01:37:55',NULL),(6,'Discount 6','TG1SIY0QD3HA','2025-09-10 08:37:55',NULL,NULL,0,351,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-09-11 01:37:55','2025-09-11 01:37:55',NULL),(7,'Discount 7','CNZP5LI17VPV','2025-09-10 08:37:55',NULL,NULL,0,706,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-09-11 01:37:55','2025-09-11 01:37:55',NULL),(8,'Discount 8','YYZ1NBIX8HFH','2025-09-10 08:37:55','2025-09-28 08:37:55',NULL,0,351,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-09-11 01:37:55','2025-09-11 01:37:55',NULL),(9,'Discount 9','BOKJDIXMX9TI','2025-09-10 08:37:55',NULL,NULL,0,903,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-09-11 01:37:55','2025-09-11 01:37:55',NULL),(10,'Discount 10','OPX7CXXRLJ0H','2025-09-10 08:37:55','2025-09-28 08:37:55',NULL,0,59,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-09-11 01:37:55','2025-09-11 01:37:55',NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,9,463.05,18,4),(2,21,850.2,11,1);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day.','2025-10-18 00:00:00','published','2025-09-11 01:37:55','2025-09-11 01:37:55'),(2,'Gadgets &amp; Accessories','2025-10-08 00:00:00','published','2025-09-11 01:37:55','2025-09-11 01:37:55');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(2,1,'2 Year',10,9999,0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(3,1,'3 Year',20,9999,0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(4,2,'4GB',0,9999,0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(5,2,'8GB',10,9999,0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(6,2,'16GB',20,9999,0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(7,3,'Core i5',0,9999,0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(8,3,'Core i7',10,9999,0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(9,3,'Core i9',20,9999,0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(10,4,'128GB',0,9999,0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(11,4,'256GB',10,9999,0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(12,4,'512GB',20,9999,0,'2025-09-11 01:38:00','2025-09-11 01:38:00');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2025-09-11 01:38:00','2025-09-11 01:38:00');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address_line` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double DEFAULT '0',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` text COLLATE utf8mb4_unicode_ci,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2025-09-11 01:37:41','2025-09-11 01:37:41',1),(2,'Size','size','text',1,1,1,'published',1,'2025-09-11 01:37:41','2025-09-11 01:37:41',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`),
  KEY `idx_attribute_set_id` (`attribute_set_id`),
  KEY `idx_attribute_set_order_id` (`attribute_set_id`,`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2025-09-11 01:37:41','2025-09-11 01:37:41'),(2,1,'Blue','blue','#333333',NULL,0,2,'2025-09-11 01:37:41','2025-09-11 01:37:41'),(3,1,'Red','red','#DA323F',NULL,0,3,'2025-09-11 01:37:41','2025-09-11 01:37:41'),(4,1,'Black','black','#2F366C',NULL,0,4,'2025-09-11 01:37:41','2025-09-11 01:37:41'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2025-09-11 01:37:41','2025-09-11 01:37:41'),(6,2,'S','s',NULL,NULL,1,1,'2025-09-11 01:37:41','2025-09-11 01:37:41'),(7,2,'M','m',NULL,NULL,0,2,'2025-09-11 01:37:41','2025-09-11 01:37:41'),(8,2,'L','l',NULL,NULL,0,3,'2025-09-11 01:37:41','2025-09-11 01:37:41'),(9,2,'XL','xl',NULL,NULL,0,4,'2025-09-11 01:37:41','2025-09-11 01:37:41'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2025-09-11 01:37:41','2025-09-11 01:37:41');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`),
  KEY `idx_categories_status_order` (`status`,`order`),
  KEY `idx_categories_order` (`order`),
  KEY `ec_product_categories_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Television',NULL,0,NULL,'published',0,'product-categories/p-1.png',1,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-tv',NULL),(2,'Home Audio & Theaters',NULL,1,NULL,'published',0,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(3,'TV & Videos',NULL,1,NULL,'published',1,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(4,'Camera, Photos & Videos',NULL,1,NULL,'published',2,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(5,'Cellphones & Accessories',NULL,1,NULL,'published',3,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(6,'Headphones',NULL,1,NULL,'published',4,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(7,'Videos games',NULL,1,NULL,'published',5,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(8,'Wireless Speakers',NULL,1,NULL,'published',6,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(9,'Office Electronic',NULL,1,NULL,'published',7,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(10,'Mobile',NULL,0,NULL,'published',1,'product-categories/p-2.png',1,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-responsive',NULL),(11,'Digital Cables',NULL,10,NULL,'published',0,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(12,'Audio & Video Cables',NULL,10,NULL,'published',1,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(13,'Batteries',NULL,10,NULL,'published',2,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(14,'Headphone',NULL,0,NULL,'published',2,'product-categories/p-3.png',1,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-headphones',NULL),(15,'Computer & Tablets',NULL,14,NULL,'published',0,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(16,'Laptop',NULL,14,NULL,'published',1,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(17,'Monitors',NULL,14,NULL,'published',2,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(18,'Computer Components',NULL,14,NULL,'published',3,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(19,'Watches',NULL,0,NULL,'published',3,'product-categories/p-4.png',1,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-watch',NULL),(20,'Drive & Storages',NULL,19,NULL,'published',0,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(21,'Gaming Laptop',NULL,19,NULL,'published',1,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(22,'Security & Protection',NULL,19,NULL,'published',2,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(23,'Accessories',NULL,19,NULL,'published',3,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,NULL),(24,'Game',NULL,0,NULL,'published',4,'product-categories/p-5.png',1,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-console',NULL),(25,'Camera',NULL,0,NULL,'published',5,'product-categories/p-6.png',1,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-camera',NULL),(26,'Audio',NULL,0,NULL,'published',6,'product-categories/p-7.png',1,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-music-system',NULL),(27,'Mobile & Tablet',NULL,0,NULL,'published',7,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-responsive',NULL),(28,'Accessories',NULL,0,NULL,'published',8,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-plugins',NULL),(29,'Home Audio & Theater',NULL,0,NULL,'published',9,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-music-system',NULL),(30,'Tv & Smart Box',NULL,0,NULL,'published',10,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-monitor',NULL),(31,'Printer',NULL,0,NULL,'published',11,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-printer',NULL),(32,'Computer',NULL,0,NULL,'published',12,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-tv',NULL),(33,'Fax Machine',NULL,0,NULL,'published',13,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-fax',NULL),(34,'Mouse',NULL,0,NULL,'published',14,NULL,0,'2025-09-11 01:37:41','2025-09-11 01:37:41','flaticon-mouse',NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`),
  KEY `idx_product_category` (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,1),(1,12),(1,14),(1,29),(2,1),(2,9),(2,23),(2,24),(2,26),(3,14),(3,17),(3,19),(3,26),(3,30),(4,2),(4,4),(4,11),(4,13),(4,24),(4,29),(5,8),(5,16),(5,23),(5,24),(6,18),(7,3),(7,6),(7,16),(7,17),(7,19),(7,21),(7,28),(8,6),(8,7),(8,8),(8,19),(8,28),(9,3),(9,5),(9,14),(9,26),(10,2),(10,3),(10,15),(10,18),(10,21),(10,26),(10,28),(11,1),(11,4),(11,13),(11,21),(11,31),(12,4),(12,9),(12,11),(12,16),(12,27),(13,9),(13,25),(13,30),(14,10),(14,12),(15,7),(15,24),(16,20),(16,25),(16,27),(16,30),(17,3),(17,5),(17,11),(17,18),(17,22),(17,25),(18,4),(18,8),(18,15),(18,28),(19,8),(20,2),(20,25),(21,21),(22,6),(22,14),(22,15),(23,11),(23,30),(24,6),(24,7),(24,16),(24,17),(25,13),(25,22),(25,31),(26,10),(27,5),(27,9),(27,19),(27,29),(28,22),(29,2),(29,13),(29,15),(29,20),(29,23),(29,27),(30,1),(30,5),(30,10),(30,12),(30,27),(31,10),(31,20),(31,22),(31,31),(32,17),(32,31),(33,18),(34,7),(34,12),(34,20),(34,23),(34,29);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,1),(1,6),(1,8),(1,9),(1,12),(1,13),(1,25),(1,28),(2,2),(2,3),(2,4),(2,5),(2,7),(2,11),(2,14),(2,15),(2,16),(2,17),(2,22),(2,23),(2,29),(2,31),(3,10),(3,18),(3,19),(3,20),(3,21),(3,24),(3,26),(3,27),(3,30);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2025-09-11 01:37:41','2025-09-11 01:37:41',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2025-09-11 01:37:41','2025-09-11 01:37:41',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2025-09-11 01:37:41','2025-09-11 01:37:41',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`),
  KEY `idx_product_cross_sale` (`from_product_id`,`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,4,0,0.00,'fixed',1),(1,6,0,0.00,'fixed',1),(1,8,0,0.00,'fixed',1),(1,16,0,0.00,'fixed',1),(1,19,0,0.00,'fixed',1),(1,27,0,0.00,'fixed',1),(1,30,0,0.00,'fixed',1),(2,5,0,0.00,'fixed',1),(2,6,0,0.00,'fixed',1),(2,7,0,0.00,'fixed',1),(2,9,0,0.00,'fixed',1),(2,27,0,0.00,'fixed',1),(2,28,0,0.00,'fixed',1),(3,5,0,0.00,'fixed',1),(3,11,0,0.00,'fixed',1),(3,13,0,0.00,'fixed',1),(3,18,0,0.00,'fixed',1),(3,20,0,0.00,'fixed',1),(3,21,0,0.00,'fixed',1),(3,25,0,0.00,'fixed',1),(4,1,0,0.00,'fixed',1),(4,3,0,0.00,'fixed',1),(4,9,0,0.00,'fixed',1),(4,16,0,0.00,'fixed',1),(4,20,0,0.00,'fixed',1),(4,27,0,0.00,'fixed',1),(4,30,0,0.00,'fixed',1),(5,1,0,0.00,'fixed',1),(5,9,0,0.00,'fixed',1),(5,10,0,0.00,'fixed',1),(5,13,0,0.00,'fixed',1),(5,15,0,0.00,'fixed',1),(5,23,0,0.00,'fixed',1),(5,30,0,0.00,'fixed',1),(6,1,0,0.00,'fixed',1),(6,4,0,0.00,'fixed',1),(6,17,0,0.00,'fixed',1),(6,19,0,0.00,'fixed',1),(6,26,0,0.00,'fixed',1),(6,28,0,0.00,'fixed',1),(6,29,0,0.00,'fixed',1),(7,4,0,0.00,'fixed',1),(7,5,0,0.00,'fixed',1),(7,6,0,0.00,'fixed',1),(7,9,0,0.00,'fixed',1),(7,20,0,0.00,'fixed',1),(7,24,0,0.00,'fixed',1),(8,2,0,0.00,'fixed',1),(8,18,0,0.00,'fixed',1),(8,19,0,0.00,'fixed',1),(8,23,0,0.00,'fixed',1),(8,24,0,0.00,'fixed',1),(8,27,0,0.00,'fixed',1),(8,30,0,0.00,'fixed',1),(9,3,0,0.00,'fixed',1),(9,17,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(9,19,0,0.00,'fixed',1),(9,22,0,0.00,'fixed',1),(9,24,0,0.00,'fixed',1),(10,1,0,0.00,'fixed',1),(10,12,0,0.00,'fixed',1),(10,13,0,0.00,'fixed',1),(10,17,0,0.00,'fixed',1),(10,22,0,0.00,'fixed',1),(10,29,0,0.00,'fixed',1),(11,6,0,0.00,'fixed',1),(11,9,0,0.00,'fixed',1),(11,12,0,0.00,'fixed',1),(11,21,0,0.00,'fixed',1),(11,25,0,0.00,'fixed',1),(11,31,0,0.00,'fixed',1),(12,8,0,0.00,'fixed',1),(12,13,0,0.00,'fixed',1),(12,16,0,0.00,'fixed',1),(12,19,0,0.00,'fixed',1),(12,24,0,0.00,'fixed',1),(12,28,0,0.00,'fixed',1),(12,31,0,0.00,'fixed',1),(13,8,0,0.00,'fixed',1),(13,10,0,0.00,'fixed',1),(13,17,0,0.00,'fixed',1),(13,18,0,0.00,'fixed',1),(13,21,0,0.00,'fixed',1),(13,22,0,0.00,'fixed',1),(13,29,0,0.00,'fixed',1),(14,8,0,0.00,'fixed',1),(14,9,0,0.00,'fixed',1),(14,10,0,0.00,'fixed',1),(14,11,0,0.00,'fixed',1),(14,17,0,0.00,'fixed',1),(14,18,0,0.00,'fixed',1),(15,1,0,0.00,'fixed',1),(15,2,0,0.00,'fixed',1),(15,7,0,0.00,'fixed',1),(15,11,0,0.00,'fixed',1),(15,12,0,0.00,'fixed',1),(15,17,0,0.00,'fixed',1),(15,31,0,0.00,'fixed',1),(16,7,0,0.00,'fixed',1),(16,13,0,0.00,'fixed',1),(16,18,0,0.00,'fixed',1),(16,23,0,0.00,'fixed',1),(16,24,0,0.00,'fixed',1),(16,27,0,0.00,'fixed',1),(17,4,0,0.00,'fixed',1),(17,5,0,0.00,'fixed',1),(17,8,0,0.00,'fixed',1),(17,20,0,0.00,'fixed',1),(17,22,0,0.00,'fixed',1),(17,26,0,0.00,'fixed',1),(18,11,0,0.00,'fixed',1),(18,15,0,0.00,'fixed',1),(18,26,0,0.00,'fixed',1),(18,29,0,0.00,'fixed',1),(18,30,0,0.00,'fixed',1),(18,31,0,0.00,'fixed',1),(19,12,0,0.00,'fixed',1),(19,15,0,0.00,'fixed',1),(19,21,0,0.00,'fixed',1),(19,24,0,0.00,'fixed',1),(19,25,0,0.00,'fixed',1),(19,28,0,0.00,'fixed',1),(19,31,0,0.00,'fixed',1),(20,2,0,0.00,'fixed',1),(20,4,0,0.00,'fixed',1),(20,23,0,0.00,'fixed',1),(20,25,0,0.00,'fixed',1),(20,27,0,0.00,'fixed',1),(20,29,0,0.00,'fixed',1),(21,2,0,0.00,'fixed',1),(21,8,0,0.00,'fixed',1),(21,10,0,0.00,'fixed',1),(21,29,0,0.00,'fixed',1),(21,30,0,0.00,'fixed',1),(22,4,0,0.00,'fixed',1),(22,11,0,0.00,'fixed',1),(22,14,0,0.00,'fixed',1),(22,21,0,0.00,'fixed',1),(22,23,0,0.00,'fixed',1),(22,26,0,0.00,'fixed',1),(22,27,0,0.00,'fixed',1),(23,7,0,0.00,'fixed',1),(23,10,0,0.00,'fixed',1),(23,19,0,0.00,'fixed',1),(23,25,0,0.00,'fixed',1),(23,26,0,0.00,'fixed',1),(23,28,0,0.00,'fixed',1),(24,2,0,0.00,'fixed',1),(24,6,0,0.00,'fixed',1),(24,13,0,0.00,'fixed',1),(24,17,0,0.00,'fixed',1),(24,22,0,0.00,'fixed',1),(24,26,0,0.00,'fixed',1),(25,11,0,0.00,'fixed',1),(25,17,0,0.00,'fixed',1),(25,20,0,0.00,'fixed',1),(25,27,0,0.00,'fixed',1),(25,28,0,0.00,'fixed',1),(25,29,0,0.00,'fixed',1),(25,30,0,0.00,'fixed',1),(26,2,0,0.00,'fixed',1),(26,3,0,0.00,'fixed',1),(26,9,0,0.00,'fixed',1),(26,10,0,0.00,'fixed',1),(26,13,0,0.00,'fixed',1),(26,19,0,0.00,'fixed',1),(26,24,0,0.00,'fixed',1),(27,5,0,0.00,'fixed',1),(27,13,0,0.00,'fixed',1),(27,15,0,0.00,'fixed',1),(27,16,0,0.00,'fixed',1),(27,18,0,0.00,'fixed',1),(27,20,0,0.00,'fixed',1),(27,29,0,0.00,'fixed',1),(28,16,0,0.00,'fixed',1),(28,17,0,0.00,'fixed',1),(28,18,0,0.00,'fixed',1),(28,22,0,0.00,'fixed',1),(28,23,0,0.00,'fixed',1),(28,25,0,0.00,'fixed',1),(28,31,0,0.00,'fixed',1),(29,1,0,0.00,'fixed',1),(29,4,0,0.00,'fixed',1),(29,5,0,0.00,'fixed',1),(29,9,0,0.00,'fixed',1),(29,12,0,0.00,'fixed',1),(29,15,0,0.00,'fixed',1),(29,28,0,0.00,'fixed',1),(30,7,0,0.00,'fixed',1),(30,13,0,0.00,'fixed',1),(30,14,0,0.00,'fixed',1),(30,16,0,0.00,'fixed',1),(30,21,0,0.00,'fixed',1),(30,22,0,0.00,'fixed',1),(30,26,0,0.00,'fixed',1),(31,17,0,0.00,'fixed',1),(31,18,0,0.00,'fixed',1),(31,20,0,0.00,'fixed',1),(31,21,0,0.00,'fixed',1),(31,23,0,0.00,'fixed',1),(31,27,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:37:55\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2025-09-11 01:37:55','2025-09-11 01:37:55'),(2,4,'ecommerce/digital-product-files/4-2.jpg','{\"filename\":\"4-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:37:55\",\"name\":\"4-2\",\"extension\":\"jpg\"}','2025-09-11 01:37:55','2025-09-11 01:37:55'),(3,8,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:37:55\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2025-09-11 01:37:55','2025-09-11 01:37:55'),(4,12,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:37:55\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2025-09-11 01:37:55','2025-09-11 01:37:55'),(5,20,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:37:55\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2025-09-11 01:37:55','2025-09-11 01:37:55'),(6,24,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:37:55\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2025-09-11 01:37:55','2025-09-11 01:37:55'),(7,28,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:37:55\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2025-09-11 01:37:55','2025-09-11 01:37:55'),(8,39,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:37:55\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2025-09-11 01:37:55','2025-09-11 01:37:55'),(9,40,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:37:55\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2025-09-11 01:37:55','2025-09-11 01:37:55'),(10,52,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:37:55\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2025-09-11 01:37:55','2025-09-11 01:37:55'),(11,53,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:37:55\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2025-09-11 01:37:55','2025-09-11 01:37:55'),(12,54,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:37:55\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2025-09-11 01:37:55','2025-09-11 01:37:55'),(13,58,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:37:55\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2025-09-11 01:37:55','2025-09-11 01:37:55');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,15),(1,24),(1,30),(2,9),(2,12),(2,18),(2,21),(2,27),(3,6);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2025-09-11 01:37:41','2025-09-11 01:37:41',NULL),(2,'New','#02856e','published','2025-09-11 01:37:41','2025-09-11 01:37:41',NULL),(3,'Sale','#fe9931','published','2025-09-11 01:37:41','2025-09-11 01:37:41',NULL);
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_license_codes`
--

DROP TABLE IF EXISTS `ec_product_license_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_license_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `license_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `assigned_order_product_id` bigint unsigned DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_license_codes_product_id_status_index` (`product_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_license_codes`
--

LOCK TABLES `ec_product_license_codes` WRITE;
/*!40000 ALTER TABLE `ec_product_license_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_license_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,6,'84.52 cm',0,0),(1,7,'17.71 cm',0,0),(1,8,'1920x1080',0,0),(2,1,'24.38 cm',0,0),(2,2,'23.17 cm',0,0),(2,3,'5.6 cm',0,0),(2,4,'57.68 cm',0,0),(2,5,'69.5 cm',0,0),(3,1,'43.58 cm',0,0),(3,2,'27.53 cm',0,0),(3,3,'36.28 cm',0,0),(3,4,'54.78 cm',0,0),(3,5,'58.01 cm',0,0),(4,6,'31.36 cm',0,0),(4,7,'93.83 cm',0,0),(4,8,'3840x2160',0,0),(5,6,'84.85 cm',0,0),(5,7,'24.53 cm',0,0),(5,8,'1920x1080',0,0),(6,1,'96.52 cm',0,0),(6,2,'99.89 cm',0,0),(6,3,'49.76 cm',0,0),(6,4,'90.46 cm',0,0),(6,5,'34.27 cm',0,0),(7,1,'50.17 cm',0,0),(7,2,'3.51 cm',0,0),(7,3,'91.38 cm',0,0),(7,4,'4.18 cm',0,0),(7,5,'44.25 cm',0,0),(8,1,'59.35 cm',0,0),(8,2,'11.99 cm',0,0),(8,3,'18.74 cm',0,0),(8,4,'59.84 cm',0,0),(8,5,'88.5 cm',0,0),(9,6,'12.37 cm',0,0),(9,7,'71.02 cm',0,0),(9,8,'2560x1440',0,0),(10,6,'42.25 cm',0,0),(10,7,'8.96 cm',0,0),(10,8,'3840x2160',0,0),(11,6,'17.99 cm',0,0),(11,7,'2.08 cm',0,0),(11,8,'1920x1080',0,0),(12,6,'43.02 cm',0,0),(12,7,'43.3 cm',0,0),(12,8,'1920x1080',0,0),(13,6,'25.26 cm',0,0),(13,7,'19.75 cm',0,0),(13,8,'1920x1080',0,0),(14,1,'55.79 cm',0,0),(14,2,'65.76 cm',0,0),(14,3,'6.43 cm',0,0),(14,4,'61.67 cm',0,0),(14,5,'23.83 cm',0,0),(15,6,'78.97 cm',0,0),(15,7,'27.01 cm',0,0),(15,8,'2560x1440',0,0),(16,1,'28.73 cm',0,0),(16,2,'49.82 cm',0,0),(16,3,'72.47 cm',0,0),(16,4,'41.25 cm',0,0),(16,5,'80.52 cm',0,0),(17,1,'37.2 cm',0,0),(17,2,'96.57 cm',0,0),(17,3,'80.37 cm',0,0),(17,4,'5.33 cm',0,0),(17,5,'28.89 cm',0,0),(18,6,'11.81 cm',0,0),(18,7,'18.92 cm',0,0),(18,8,'1920x1080',0,0),(19,6,'79.05 cm',0,0),(19,7,'4.64 cm',0,0),(19,8,'3840x2160',0,0),(20,6,'45.62 cm',0,0),(20,7,'51.58 cm',0,0),(20,8,'3840x2160',0,0),(21,6,'38.56 cm',0,0),(21,7,'37.54 cm',0,0),(21,8,'1920x1080',0,0),(22,1,'36.75 cm',0,0),(22,2,'12.93 cm',0,0),(22,3,'67.5 cm',0,0),(22,4,'37.96 cm',0,0),(22,5,'65.87 cm',0,0),(23,6,'34.63 cm',0,0),(23,7,'97.9 cm',0,0),(23,8,'3840x2160',0,0),(24,1,'38.42 cm',0,0),(24,2,'87.95 cm',0,0),(24,3,'26.68 cm',0,0),(24,4,'25.07 cm',0,0),(24,5,'10.92 cm',0,0),(25,1,'97.22 cm',0,0),(25,2,'37.38 cm',0,0),(25,3,'75.79 cm',0,0),(25,4,'99.69 cm',0,0),(25,5,'31.7 cm',0,0),(26,1,'41.73 cm',0,0),(26,2,'52.81 cm',0,0),(26,3,'25.48 cm',0,0),(26,4,'52.64 cm',0,0),(26,5,'49.51 cm',0,0),(27,1,'11.51 cm',0,0),(27,2,'2.94 cm',0,0),(27,3,'86.47 cm',0,0),(27,4,'2.05 cm',0,0),(27,5,'54.23 cm',0,0),(28,6,'91.58 cm',0,0),(28,7,'14.94 cm',0,0),(28,8,'1920x1080',0,0),(29,1,'48.35 cm',0,0),(29,2,'84.49 cm',0,0),(29,3,'73.26 cm',0,0),(29,4,'98.55 cm',0,0),(29,5,'52.5 cm',0,0),(30,1,'25.56 cm',0,0),(30,2,'70.29 cm',0,0),(30,3,'62.84 cm',0,0),(30,4,'63.12 cm',0,0),(30,5,'17.35 cm',0,0),(31,6,'47.7 cm',0,0),(31,7,'78.1 cm',0,0),(31,8,'3840x2160',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute_translations`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `psat_unique` (`product_id`,`attribute_id`,`lang_code`),
  KEY `psat_product_attribute_index` (`product_id`,`attribute_id`),
  KEY `psat_product_id_index` (`product_id`),
  KEY `psat_attribute_id_index` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute_translations`
--

LOCK TABLES `ec_product_specification_attribute_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2025-09-11 01:37:55','2025-09-11 01:37:55'),(2,'Mobile',NULL,'published','2025-09-11 01:37:55','2025-09-11 01:37:55'),(3,'Iphone',NULL,'published','2025-09-11 01:37:55','2025-09-11 01:37:55'),(4,'Printer',NULL,'published','2025-09-11 01:37:55','2025-09-11 01:37:55'),(5,'Office',NULL,'published','2025-09-11 01:37:55','2025-09-11 01:37:55'),(6,'IT',NULL,'published','2025-09-11 01:37:55','2025-09-11 01:37:55');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`),
  KEY `idx_variation_id` (`variation_id`),
  KEY `idx_variation_attribute_covering` (`variation_id`,`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (23,1,12),(27,1,14),(39,1,20),(55,1,28),(57,1,29),(3,2,2),(37,2,19),(59,2,30),(1,3,1),(5,3,3),(13,3,7),(31,3,16),(45,3,23),(51,3,26),(11,4,6),(15,4,8),(17,4,9),(21,4,11),(25,4,13),(29,4,15),(33,4,17),(41,4,21),(43,4,22),(53,4,27),(61,4,31),(7,5,4),(9,5,5),(19,5,10),(35,5,18),(47,5,24),(49,5,25),(6,6,3),(22,6,11),(34,6,17),(52,6,26),(60,6,30),(62,6,31),(4,7,2),(8,7,4),(18,7,9),(20,7,10),(24,7,12),(38,7,19),(42,7,21),(50,7,25),(26,8,13),(30,8,15),(2,9,1),(10,9,5),(12,9,6),(14,9,7),(28,9,14),(36,9,18),(40,9,20),(46,9,23),(48,9,24),(54,9,27),(56,9,28),(58,9,29),(16,10,8),(32,10,16),(44,10,22);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`),
  KEY `idx_configurable_product_id` (`configurable_product_id`),
  KEY `idx_product_variations_config` (`configurable_product_id`,`is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,32,3,1),(2,33,5,1),(3,34,5,0),(4,35,5,0),(5,36,5,0),(6,37,7,1),(7,38,7,0),(8,39,8,1),(9,40,8,0),(10,41,9,1),(11,42,9,0),(12,43,9,0),(13,44,11,1),(14,45,11,0),(15,46,15,1),(16,47,18,1),(17,48,18,0),(18,49,19,1),(19,50,19,0),(20,51,19,0),(21,52,20,1),(22,53,20,0),(23,54,20,0),(24,55,21,1),(25,56,21,0),(26,57,21,0),(27,58,28,1),(28,59,31,1),(29,60,31,0),(30,61,31,0),(31,62,31,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2025-09-11',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,3,0),(2,3,0),(1,5,0),(2,5,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,11,0),(2,11,0),(1,15,0),(2,15,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,28,0),(2,28,0),(1,31,0),(2,31,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `variations_count` int unsigned NOT NULL DEFAULT '0',
  `reviews_count` int unsigned NOT NULL DEFAULT '0',
  `reviews_avg` decimal(3,2) NOT NULL DEFAULT '0.00',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `license_code_type` enum('auto_generate','pick_from_list') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto_generate',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`),
  KEY `idx_products_export` (`id`,`is_variation`),
  KEY `idx_variation_name_id` (`is_variation`,`name`,`id`),
  KEY `ec_products_variations_count_index` (`variations_count`),
  KEY `ec_products_reviews_count_index` (`reviews_count`),
  KEY `ec_products_reviews_avg_index` (`reviews_avg`),
  KEY `ec_products_slug_index` (`slug`),
  KEY `idx_products_status_variation` (`status`,`is_variation`,`id`),
  KEY `idx_products_price_sale` (`sale_type`,`sale_price`,`price`),
  KEY `idx_products_order_created` (`order`,`created_at`),
  KEY `idx_products_stock` (`with_storehouse_management`,`stock_status`,`quantity`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker','smart-home-speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]',NULL,'VA-119',0,17,0,1,'in_stock',1,2,0,0,10,2.90,0,1912,1142,NULL,NULL,14,20,17,768,1,131567,'2025-09-11 01:37:52','2025-09-11 01:37:58',0,'Botble\\ACL\\Models\\User',NULL,'physical','3677338147911',NULL,0,'auto_generate',0,0,0,2),(2,'Headphone Ultra Bass','headphone-ultra-bass','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]',NULL,'MM-175',0,17,0,1,'in_stock',1,1,0,0,10,2.80,0,932,698,NULL,NULL,11,12,20,894,1,71379,'2025-09-11 01:37:52','2025-09-11 01:37:58',0,'Botble\\ACL\\Models\\User',NULL,'physical','7510371374417',NULL,0,'auto_generate',0,0,0,1),(3,'Boxed - Bluetooth Headphone','boxed-bluetooth-headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]',NULL,'YA-150-A1',0,10,0,1,'in_stock',1,6,0,1,9,2.67,0,833,NULL,NULL,NULL,13,12,14,895,1,21820,'2025-09-11 01:37:52','2025-09-11 01:37:58',0,'Botble\\ACL\\Models\\User',NULL,'physical','8664584480454',NULL,0,'auto_generate',0,0,0,1),(4,'Chikie - Bluetooth Speaker (Digital)','chikie-bluetooth-speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]',NULL,'X7-105',0,12,0,1,'in_stock',1,7,0,0,9,2.67,0,1611,29,NULL,NULL,17,11,11,654,1,105951,'2025-09-11 01:37:52','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'digital','4022811509011',NULL,0,'auto_generate',0,0,0,2),(5,'Camera Hikvision HK-35VS8','camera-hikvision-hk-35vs8','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]',NULL,'U9-146-A1',0,18,0,1,'in_stock',1,3,0,4,7,3.43,0,1846,NULL,NULL,NULL,13,14,16,741,1,24692,'2025-09-11 01:37:52','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','3772207650339',NULL,0,'auto_generate',0,0,0,2),(6,'Camera Samsung SS-24','camera-samsung-ss-24','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6-1.jpg\"]',NULL,'J9-134',0,20,0,1,'in_stock',1,7,0,0,7,2.86,0,568,238,NULL,NULL,14,19,15,687,1,5014,'2025-09-11 01:37:52','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','3806219859647',NULL,0,'auto_generate',0,0,0,1),(7,'Leather Watch Band','leather-watch-band','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7-1.jpg\"]',NULL,'SR-168-A1',0,13,0,1,'in_stock',1,6,0,2,9,2.89,0,734,NULL,NULL,NULL,20,19,17,663,1,54493,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','4212435820849',NULL,0,'auto_generate',0,0,0,1),(8,'Apple iPhone 13 Plus (Digital)','apple-iphone-13-plus','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8-1.jpg\"]',NULL,'NG-131-A1',0,13,0,1,'in_stock',1,3,0,2,10,2.40,0,1391,1182.35,NULL,NULL,18,13,12,768,1,178631,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'digital','7692135292363',NULL,0,'auto_generate',0,0,0,1),(9,'Macbook Pro 2015','macbook-pro-2015','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9-1.jpg\"]',NULL,'V1-143-A1',0,17,0,1,'in_stock',1,3,0,3,10,2.60,0,945,NULL,NULL,NULL,17,14,10,575,1,134690,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','0136684101112',NULL,0,'auto_generate',0,0,0,2),(10,'Macbook Air 12 inch','macbook-air-12-inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10-1.jpg\"]',NULL,'WB-135',0,14,0,1,'in_stock',1,4,0,0,10,3.60,0,1999,120,NULL,NULL,20,10,19,877,1,192586,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','6518467276769',NULL,0,'auto_generate',0,0,0,2),(11,'Apple Watch Serial 7','apple-watch-serial-7','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11-1.jpg\"]',NULL,'6V-110-A1',0,19,0,1,'in_stock',1,2,0,2,10,2.90,0,1597,NULL,NULL,NULL,11,14,10,607,1,177636,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','4254363984347',NULL,0,'auto_generate',0,0,0,2),(12,'Macbook Pro 13 inch (Digital)','macbook-pro-13-inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12-1.jpg\"]',NULL,'IM-108',0,19,0,1,'in_stock',1,3,0,0,9,3.44,0,727,147,NULL,NULL,11,10,18,585,1,47576,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'digital','7676717243691',NULL,0,'auto_generate',0,0,0,2),(13,'Apple Keyboard','apple-keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13-1.jpg\"]',NULL,'XU-154',0,20,0,1,'in_stock',1,2,0,0,10,2.90,0,879,863,NULL,NULL,16,11,10,896,1,140847,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','3911193885664',NULL,0,'auto_generate',0,0,0,2),(14,'MacSafe 80W','macsafe-80w','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14-1.jpg\"]',NULL,'GL-112',0,15,0,1,'in_stock',1,2,0,0,8,2.88,0,951,465,NULL,NULL,14,19,16,830,1,148912,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','8935164073947',NULL,0,'auto_generate',0,0,0,1),(15,'Hand playstation','hand-playstation','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15-1.jpg\"]',NULL,'SB-100-A1',0,12,0,1,'in_stock',1,5,0,1,10,2.60,0,2001,NULL,NULL,NULL,20,16,13,802,1,8389,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','1305635190546',NULL,0,'auto_generate',0,0,0,2),(16,'Apple Airpods Serial 3 (Digital)','apple-airpods-serial-3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[]',NULL,'91-192',0,20,0,1,'in_stock',1,1,0,0,10,3.20,0,776,562,NULL,NULL,12,11,11,691,1,152509,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'digital','1358264451878',NULL,0,'auto_generate',0,0,0,1),(17,'Cool Smart Watches','cool-smart-watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[]',NULL,'41-185',0,20,0,1,'in_stock',1,6,0,0,9,3.33,0,1600,226,NULL,NULL,13,15,11,555,1,82538,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','6950259930105',NULL,0,'auto_generate',0,0,0,1),(18,'Black Smart Watches','black-smart-watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]',NULL,'UK-148-A1',0,15,0,1,'in_stock',1,2,0,2,10,2.40,0,1736,NULL,NULL,NULL,11,17,17,676,1,173522,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','9969658367396',NULL,0,'auto_generate',0,0,0,2),(19,'Leather Watch Band Serial 3','leather-watch-band-serial-3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19-1.jpg\"]',NULL,'X2-113-A1',0,15,0,1,'in_stock',1,7,0,3,10,2.70,0,434,NULL,NULL,NULL,12,14,16,607,1,3023,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','0854350619494',NULL,0,'auto_generate',0,0,0,2),(20,'Macbook Pro 2015 13 inch (Digital)','macbook-pro-2015-13-inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20-1.jpg\"]',NULL,'UE-200-A1',0,17,0,1,'in_stock',1,5,0,3,10,2.50,0,2309,1847.2,NULL,NULL,20,17,12,646,1,69539,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'digital','7232258524615',NULL,0,'auto_generate',0,0,0,2),(21,'Historic Alarm Clock','historic-alarm-clock','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21-1.jpg\"]',NULL,'A5-163-A1',0,20,0,1,'in_stock',1,4,0,3,10,3.00,0,1417,NULL,NULL,NULL,10,13,19,876,1,30597,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','5085574954077',NULL,0,'auto_generate',0,0,0,2),(22,'Black Glasses','black-glasses','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22-1.jpg\"]',NULL,'IB-150',0,17,0,1,'in_stock',1,2,0,0,10,2.70,0,1191,77,NULL,NULL,16,11,13,583,1,127630,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','6516963529365',NULL,0,'auto_generate',0,0,0,1),(23,'Phillips Mouse','phillips-mouse','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23-1.jpg\"]',NULL,'G2-197',0,16,0,1,'in_stock',1,7,0,0,9,3.11,0,743,365,NULL,NULL,15,13,15,741,1,71412,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','8755420908093',NULL,0,'auto_generate',0,0,0,2),(24,'Gaming Keyboard (Digital)','gaming-keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24-1.jpg\"]',NULL,'PE-142',0,11,0,1,'in_stock',1,1,0,0,10,2.80,0,1647,1010,NULL,NULL,13,11,19,872,1,1855,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'digital','9123516759482',NULL,0,'auto_generate',0,0,0,1),(25,'Dual Camera 20MP','dual-camera-20mp','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/25-1.jpg\"]',NULL,'ON-148',0,14,0,1,'in_stock',0,2,0,0,9,3.56,0,647,563,NULL,NULL,15,14,10,891,1,19146,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','9023615404361',NULL,0,'auto_generate',0,0,0,1),(26,'Smart Watches','smart-watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/26-1.jpg\",\"products\\/26-2.jpg\"]',NULL,'CH-161',0,13,0,1,'in_stock',1,7,0,0,9,2.33,0,1740,899,NULL,NULL,10,13,16,688,1,140959,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','7065324384574',NULL,0,'auto_generate',0,0,0,1),(27,'Beat Headphone','beat-headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/27-1.jpg\"]',NULL,'HF-146',0,13,0,1,'in_stock',0,2,0,0,10,3.40,0,596,407,NULL,NULL,20,19,10,569,1,30652,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','3982866659950',NULL,0,'auto_generate',0,0,0,1),(28,'Red &amp; Black Headphone (Digital)','red-black-headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/28-1.jpg\"]',NULL,'5Z-188-A1',0,20,0,1,'in_stock',0,3,0,1,10,3.00,0,2434,1995.88,NULL,NULL,12,19,16,799,1,74899,'2025-09-11 01:37:53','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'digital','3034706813418',NULL,0,'auto_generate',0,0,0,2),(29,'Audio Equipment','audio-equipment','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/29-1.jpg\"]',NULL,'WQ-116',0,13,0,1,'in_stock',1,6,0,0,9,2.89,0,2475,2442,NULL,NULL,12,17,20,854,1,30418,'2025-09-11 01:37:53','2025-09-11 01:38:00',0,'Botble\\ACL\\Models\\User',NULL,'physical','9874112977007',NULL,0,'auto_generate',0,0,0,1),(30,'Smart Televisions','smart-televisions','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/30-1.jpg\"]',NULL,'UG-137',0,17,0,1,'in_stock',1,3,0,0,10,3.20,0,1079,963,NULL,NULL,11,17,12,817,1,8728,'2025-09-11 01:37:54','2025-09-11 01:38:00',0,'Botble\\ACL\\Models\\User',NULL,'physical','3870512569510',NULL,0,'auto_generate',0,0,0,1),(31,'Samsung Smart TV','samsung-smart-tv','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/31-1.jpg\"]',NULL,'FV-171-A1',0,10,0,1,'in_stock',0,5,0,4,10,2.30,0,2012,NULL,NULL,NULL,15,14,10,625,1,121443,'2025-09-11 01:37:54','2025-09-11 01:38:00',0,'Botble\\ACL\\Models\\User',NULL,'physical','6954752251224',NULL,0,'auto_generate',0,0,0,2),(32,'Boxed - Bluetooth Headphone',NULL,NULL,NULL,'published','[\"products\\/3-2.jpg\"]',NULL,'YA-150-A1',0,10,0,1,'in_stock',0,6,1,0,0,0.00,0,833,NULL,NULL,NULL,13,12,14,895,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:58',0,'Botble\\ACL\\Models\\User',NULL,'physical','5069883229804',NULL,0,'auto_generate',0,0,0,NULL),(33,'Camera Hikvision HK-35VS8',NULL,NULL,NULL,'published','[\"products\\/5-2.jpg\"]',NULL,'U9-146-A1',0,18,0,1,'in_stock',0,3,1,0,0,0.00,0,1846,NULL,NULL,NULL,13,14,16,741,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','7719211928968',NULL,0,'auto_generate',0,0,0,NULL),(34,'Camera Hikvision HK-35VS8',NULL,NULL,NULL,'published','[\"products\\/5-3.jpg\"]',NULL,'U9-146-A1-A2',0,18,0,1,'in_stock',0,3,1,0,0,0.00,0,1846,NULL,NULL,NULL,13,14,16,741,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','0669529849455',NULL,0,'auto_generate',0,0,0,NULL),(35,'Camera Hikvision HK-35VS8',NULL,NULL,NULL,'published','[\"products\\/5-1.jpg\"]',NULL,'U9-146-A1-A3',0,18,0,1,'in_stock',0,3,1,0,0,0.00,0,1846,NULL,NULL,NULL,13,14,16,741,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','8214250607496',NULL,0,'auto_generate',0,0,0,NULL),(36,'Camera Hikvision HK-35VS8',NULL,NULL,NULL,'published','[\"products\\/5-1.jpg\"]',NULL,'U9-146-A1-A4',0,18,0,1,'in_stock',0,3,1,0,0,0.00,0,1846,NULL,NULL,NULL,13,14,16,741,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','1401884863344',NULL,0,'auto_generate',0,0,0,NULL),(37,'Leather Watch Band',NULL,NULL,NULL,'published','[\"products\\/7-1.jpg\"]',NULL,'SR-168-A1',0,13,0,1,'in_stock',0,6,1,0,0,0.00,0,734,NULL,NULL,NULL,20,19,17,663,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','7235541748460',NULL,0,'auto_generate',0,0,0,NULL),(38,'Leather Watch Band',NULL,NULL,NULL,'published','[\"products\\/7-1.jpg\"]',NULL,'SR-168-A1-A2',0,13,0,1,'in_stock',0,6,1,0,0,0.00,0,734,NULL,NULL,NULL,20,19,17,663,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','6224616160024',NULL,0,'auto_generate',0,0,0,NULL),(39,'Apple iPhone 13 Plus (Digital)',NULL,NULL,NULL,'published','[\"products\\/8-1.jpg\"]',NULL,'NG-131-A1',0,13,0,1,'in_stock',0,3,1,0,0,0.00,0,1391,1182.35,NULL,NULL,18,13,12,768,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'digital','1221053668675',NULL,0,'auto_generate',0,0,0,NULL),(40,'Apple iPhone 13 Plus (Digital)',NULL,NULL,NULL,'published','[\"products\\/8-1.jpg\"]',NULL,'NG-131-A1-A2',0,13,0,1,'in_stock',0,3,1,0,0,0.00,0,1391,1126.71,NULL,NULL,18,13,12,768,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'digital','4752056300660',NULL,0,'auto_generate',0,0,0,NULL),(41,'Macbook Pro 2015',NULL,NULL,NULL,'published','[\"products\\/9-1.jpg\"]',NULL,'V1-143-A1',0,17,0,1,'in_stock',0,3,1,0,0,0.00,0,945,NULL,NULL,NULL,17,14,10,575,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','2742786173254',NULL,0,'auto_generate',0,0,0,NULL),(42,'Macbook Pro 2015',NULL,NULL,NULL,'published','[\"products\\/9-1.jpg\"]',NULL,'V1-143-A1-A2',0,17,0,1,'in_stock',0,3,1,0,0,0.00,0,945,NULL,NULL,NULL,17,14,10,575,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','3032089885183',NULL,0,'auto_generate',0,0,0,NULL),(43,'Macbook Pro 2015',NULL,NULL,NULL,'published','[\"products\\/9-1.jpg\"]',NULL,'V1-143-A1-A3',0,17,0,1,'in_stock',0,3,1,0,0,0.00,0,945,NULL,NULL,NULL,17,14,10,575,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','6870889426758',NULL,0,'auto_generate',0,0,0,NULL),(44,'Apple Watch Serial 7',NULL,NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'6V-110-A1',0,19,0,1,'in_stock',0,2,1,0,0,0.00,0,1597,NULL,NULL,NULL,11,14,10,607,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','3276336937175',NULL,0,'auto_generate',0,0,0,NULL),(45,'Apple Watch Serial 7',NULL,NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'6V-110-A1-A2',0,19,0,1,'in_stock',0,2,1,0,0,0.00,0,1597,NULL,NULL,NULL,11,14,10,607,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','5606407600796',NULL,0,'auto_generate',0,0,0,NULL),(46,'Hand playstation',NULL,NULL,NULL,'published','[\"products\\/15-1.jpg\"]',NULL,'SB-100-A1',0,12,0,1,'in_stock',0,5,1,0,0,0.00,0,2001,NULL,NULL,NULL,20,16,13,802,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','7994031360888',NULL,0,'auto_generate',0,0,0,NULL),(47,'Black Smart Watches',NULL,NULL,NULL,'published','[\"products\\/18-2.jpg\"]',NULL,'UK-148-A1',0,15,0,1,'in_stock',0,2,1,0,0,0.00,0,1736,NULL,NULL,NULL,11,17,17,676,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','3735343494687',NULL,0,'auto_generate',0,0,0,NULL),(48,'Black Smart Watches',NULL,NULL,NULL,'published','[\"products\\/18-1.jpg\"]',NULL,'UK-148-A1-A2',0,15,0,1,'in_stock',0,2,1,0,0,0.00,0,1736,NULL,NULL,NULL,11,17,17,676,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','8338448710284',NULL,0,'auto_generate',0,0,0,NULL),(49,'Leather Watch Band Serial 3',NULL,NULL,NULL,'published','[\"products\\/19-1.jpg\"]',NULL,'X2-113-A1',0,15,0,1,'in_stock',0,7,1,0,0,0.00,0,434,NULL,NULL,NULL,12,14,16,607,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','1713656895614',NULL,0,'auto_generate',0,0,0,NULL),(50,'Leather Watch Band Serial 3',NULL,NULL,NULL,'published','[\"products\\/19-1.jpg\"]',NULL,'X2-113-A1-A2',0,15,0,1,'in_stock',0,7,1,0,0,0.00,0,434,NULL,NULL,NULL,12,14,16,607,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','9182063625237',NULL,0,'auto_generate',0,0,0,NULL),(51,'Leather Watch Band Serial 3',NULL,NULL,NULL,'published','[\"products\\/19-1.jpg\"]',NULL,'X2-113-A1-A3',0,15,0,1,'in_stock',0,7,1,0,0,0.00,0,434,NULL,NULL,NULL,12,14,16,607,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','1635775750110',NULL,0,'auto_generate',0,0,0,NULL),(52,'Macbook Pro 2015 13 inch (Digital)',NULL,NULL,NULL,'published','[\"products\\/20-1.jpg\"]',NULL,'UE-200-A1',0,17,0,1,'in_stock',0,5,1,0,0,0.00,0,2309,1847.2,NULL,NULL,20,17,12,646,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'digital','5100700031122',NULL,0,'auto_generate',0,0,0,NULL),(53,'Macbook Pro 2015 13 inch (Digital)',NULL,NULL,NULL,'published','[\"products\\/20-1.jpg\"]',NULL,'UE-200-A1-A2',0,17,0,1,'in_stock',0,5,1,0,0,0.00,0,2309,1939.56,NULL,NULL,20,17,12,646,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'digital','5479033334782',NULL,0,'auto_generate',0,0,0,NULL),(54,'Macbook Pro 2015 13 inch (Digital)',NULL,NULL,NULL,'published','[\"products\\/20-1.jpg\"]',NULL,'UE-200-A1-A3',0,17,0,1,'in_stock',0,5,1,0,0,0.00,0,2309,1754.84,NULL,NULL,20,17,12,646,NULL,0,'2025-09-11 01:37:54','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'digital','3873494009043',NULL,0,'auto_generate',0,0,0,NULL),(55,'Historic Alarm Clock',NULL,NULL,NULL,'published','[\"products\\/21-1.jpg\"]',NULL,'A5-163-A1',0,20,0,1,'in_stock',0,4,1,0,0,0.00,0,1417,NULL,NULL,NULL,10,13,19,876,NULL,0,'2025-09-11 01:37:55','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','4793046086553',NULL,0,'auto_generate',0,0,0,NULL),(56,'Historic Alarm Clock',NULL,NULL,NULL,'published','[\"products\\/21-1.jpg\"]',NULL,'A5-163-A1-A2',0,20,0,1,'in_stock',0,4,1,0,0,0.00,0,1417,NULL,NULL,NULL,10,13,19,876,NULL,0,'2025-09-11 01:37:55','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','0728814697147',NULL,0,'auto_generate',0,0,0,NULL),(57,'Historic Alarm Clock',NULL,NULL,NULL,'published','[\"products\\/21-1.jpg\"]',NULL,'A5-163-A1-A3',0,20,0,1,'in_stock',0,4,1,0,0,0.00,0,1417,NULL,NULL,NULL,10,13,19,876,NULL,0,'2025-09-11 01:37:55','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'physical','1744201404371',NULL,0,'auto_generate',0,0,0,NULL),(58,'Red & Black Headphone (Digital)',NULL,NULL,NULL,'published','[\"products\\/28-1.jpg\"]',NULL,'5Z-188-A1',0,20,0,1,'in_stock',0,3,1,0,0,0.00,0,2434,1995.88,NULL,NULL,12,19,16,799,NULL,0,'2025-09-11 01:37:55','2025-09-11 01:37:59',0,'Botble\\ACL\\Models\\User',NULL,'digital','5857302807951',NULL,0,'auto_generate',0,0,0,NULL),(59,'Samsung Smart TV',NULL,NULL,NULL,'published','[\"products\\/31-1.jpg\"]',NULL,'FV-171-A1',0,10,0,1,'in_stock',0,5,1,0,0,0.00,0,2012,NULL,NULL,NULL,15,14,10,625,NULL,0,'2025-09-11 01:37:55','2025-09-11 01:38:00',0,'Botble\\ACL\\Models\\User',NULL,'physical','1866831503023',NULL,0,'auto_generate',0,0,0,NULL),(60,'Samsung Smart TV',NULL,NULL,NULL,'published','[\"products\\/31-1.jpg\"]',NULL,'FV-171-A1-A2',0,10,0,1,'in_stock',0,5,1,0,0,0.00,0,2012,NULL,NULL,NULL,15,14,10,625,NULL,0,'2025-09-11 01:37:55','2025-09-11 01:38:00',0,'Botble\\ACL\\Models\\User',NULL,'physical','6402442177830',NULL,0,'auto_generate',0,0,0,NULL),(61,'Samsung Smart TV',NULL,NULL,NULL,'published','[\"products\\/31-1.jpg\"]',NULL,'FV-171-A1-A3',0,10,0,1,'in_stock',0,5,1,0,0,0.00,0,2012,NULL,NULL,NULL,15,14,10,625,NULL,0,'2025-09-11 01:37:55','2025-09-11 01:38:00',0,'Botble\\ACL\\Models\\User',NULL,'physical','4886511988916',NULL,0,'auto_generate',0,0,0,NULL),(62,'Samsung Smart TV',NULL,NULL,NULL,'published','[\"products\\/31-1.jpg\"]',NULL,'FV-171-A1-A4',0,10,0,1,'in_stock',0,5,1,0,0,0.00,0,2012,NULL,NULL,NULL,15,14,10,625,NULL,0,'2025-09-11 01:37:55','2025-09-11 01:38:00',0,'Botble\\ACL\\Models\\User',NULL,'physical','1735830963261',NULL,0,'auto_generate',0,0,0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,3,NULL,NULL,8,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/13-1.jpg\",\"products\\/17.jpg\"]'),(2,4,NULL,NULL,13,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/18-2.jpg\"]'),(3,8,NULL,NULL,2,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-2.jpg\",\"products\\/4.jpg\",\"products\\/7-1.jpg\",\"products\\/26-1.jpg\"]'),(4,9,NULL,NULL,17,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3.jpg\",\"products\\/11.jpg\"]'),(5,10,NULL,NULL,2,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/10-1.jpg\",\"products\\/24.jpg\",\"products\\/28.jpg\"]'),(6,9,NULL,NULL,7,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-2.jpg\",\"products\\/18.jpg\"]'),(7,3,NULL,NULL,17,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-1.jpg\"]'),(8,6,NULL,NULL,7,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/19-1.jpg\",\"products\\/30-1.jpg\"]'),(9,4,NULL,NULL,29,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-3.jpg\",\"products\\/23.jpg\"]'),(10,6,NULL,NULL,16,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-3.jpg\",\"products\\/22-1.jpg\",\"products\\/27.jpg\"]'),(11,2,NULL,NULL,25,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/12-1.jpg\"]'),(12,10,NULL,NULL,7,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/8.jpg\"]'),(13,9,NULL,NULL,10,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/12-1.jpg\",\"products\\/30-1.jpg\"]'),(14,7,NULL,NULL,1,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3.jpg\"]'),(15,5,NULL,NULL,20,3,'Best ecommerce CMS online store!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2.jpg\",\"products\\/3-3.jpg\",\"products\\/9.jpg\"]'),(16,8,NULL,NULL,25,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-3.jpg\",\"products\\/27-1.jpg\"]'),(17,1,NULL,NULL,16,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-2.jpg\"]'),(18,2,NULL,NULL,31,5,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-2.jpg\",\"products\\/6-1.jpg\",\"products\\/14.jpg\",\"products\\/27-1.jpg\"]'),(19,5,NULL,NULL,16,1,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/22.jpg\"]'),(20,6,NULL,NULL,11,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/10-1.jpg\",\"products\\/26.jpg\"]'),(21,1,NULL,NULL,3,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/14-1.jpg\"]'),(22,8,NULL,NULL,29,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-1.jpg\",\"products\\/2-3.jpg\",\"products\\/12-1.jpg\",\"products\\/20.jpg\"]'),(23,7,NULL,NULL,22,1,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-3.jpg\",\"products\\/16.jpg\",\"products\\/27.jpg\"]'),(24,9,NULL,NULL,29,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1.jpg\",\"products\\/14-1.jpg\"]'),(25,5,NULL,NULL,6,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/18-1.jpg\"]'),(26,9,NULL,NULL,11,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/6-1.jpg\"]'),(27,8,NULL,NULL,4,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-3.jpg\",\"products\\/5-3.jpg\",\"products\\/20.jpg\"]'),(28,6,NULL,NULL,25,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/20.jpg\"]'),(29,5,NULL,NULL,13,5,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-3.jpg\",\"products\\/9-1.jpg\"]'),(30,10,NULL,NULL,11,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/16.jpg\",\"products\\/20-1.jpg\"]'),(31,5,NULL,NULL,22,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-2.jpg\",\"products\\/12.jpg\"]'),(32,4,NULL,NULL,19,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-3.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\",\"products\\/19-1.jpg\"]'),(33,3,NULL,NULL,9,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-1.jpg\",\"products\\/3-3.jpg\",\"products\\/7-1.jpg\",\"products\\/23.jpg\"]'),(34,4,NULL,NULL,7,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-2.jpg\",\"products\\/15-1.jpg\",\"products\\/25-1.jpg\",\"products\\/28-1.jpg\"]'),(35,7,NULL,NULL,10,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/4-3.jpg\",\"products\\/23-1.jpg\"]'),(36,2,NULL,NULL,26,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-2.jpg\"]'),(37,7,NULL,NULL,29,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-3.jpg\"]'),(38,1,NULL,NULL,31,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-1.jpg\",\"products\\/27-1.jpg\"]'),(39,2,NULL,NULL,30,5,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7.jpg\"]'),(40,9,NULL,NULL,9,2,'Best ecommerce CMS online store!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2.jpg\",\"products\\/11.jpg\",\"products\\/30-1.jpg\"]'),(41,9,NULL,NULL,15,2,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/10.jpg\",\"products\\/12-1.jpg\",\"products\\/19.jpg\",\"products\\/30-1.jpg\"]'),(42,8,NULL,NULL,11,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-3.jpg\",\"products\\/4.jpg\",\"products\\/13.jpg\",\"products\\/18.jpg\"]'),(43,7,NULL,NULL,24,2,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3.jpg\",\"products\\/11.jpg\",\"products\\/18-2.jpg\",\"products\\/24-1.jpg\"]'),(44,3,NULL,NULL,4,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-3.jpg\",\"products\\/19-1.jpg\",\"products\\/22.jpg\",\"products\\/29-1.jpg\"]'),(45,9,NULL,NULL,19,1,'Best ecommerce CMS online store!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1.jpg\",\"products\\/5-1.jpg\"]'),(46,7,NULL,NULL,20,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/11-1.jpg\",\"products\\/26-2.jpg\",\"products\\/29-1.jpg\"]'),(47,4,NULL,NULL,23,1,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-1.jpg\",\"products\\/11-1.jpg\",\"products\\/20.jpg\"]'),(48,2,NULL,NULL,24,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/25-1.jpg\"]'),(49,4,NULL,NULL,16,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-1.jpg\"]'),(50,4,NULL,NULL,3,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-3.jpg\",\"products\\/5-2.jpg\",\"products\\/15-1.jpg\",\"products\\/17.jpg\"]'),(51,9,NULL,NULL,26,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1.jpg\",\"products\\/2-3.jpg\",\"products\\/4-3.jpg\",\"products\\/25-1.jpg\"]'),(52,3,NULL,NULL,1,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-3.jpg\"]'),(55,6,NULL,NULL,17,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/10-1.jpg\",\"products\\/11-1.jpg\"]'),(56,8,NULL,NULL,20,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1.jpg\",\"products\\/5-2.jpg\",\"products\\/11-1.jpg\",\"products\\/13-1.jpg\"]'),(57,10,NULL,NULL,25,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-3.jpg\"]'),(58,5,NULL,NULL,28,5,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/17.jpg\",\"products\\/22-1.jpg\",\"products\\/29-1.jpg\"]'),(59,4,NULL,NULL,8,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-3.jpg\",\"products\\/7.jpg\",\"products\\/14.jpg\",\"products\\/31-1.jpg\"]'),(60,9,NULL,NULL,27,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/8-1.jpg\",\"products\\/13-1.jpg\"]'),(61,8,NULL,NULL,21,4,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/6-1.jpg\"]'),(62,10,NULL,NULL,21,4,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-1.jpg\",\"products\\/11-1.jpg\",\"products\\/11.jpg\",\"products\\/20-1.jpg\"]'),(63,4,NULL,NULL,18,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/20.jpg\",\"products\\/29.jpg\"]'),(65,5,NULL,NULL,26,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/12-1.jpg\",\"products\\/28-1.jpg\",\"products\\/30-1.jpg\"]'),(66,4,NULL,NULL,5,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-3.jpg\",\"products\\/15.jpg\",\"products\\/17.jpg\",\"products\\/21.jpg\"]'),(67,5,NULL,NULL,10,1,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1.jpg\",\"products\\/20-1.jpg\",\"products\\/23.jpg\"]'),(68,5,NULL,NULL,27,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/31-1.jpg\"]'),(69,1,NULL,NULL,18,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/24-1.jpg\",\"products\\/25.jpg\"]'),(73,10,NULL,NULL,8,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-3.jpg\",\"products\\/19.jpg\"]'),(75,6,NULL,NULL,12,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/28-1.jpg\",\"products\\/31-1.jpg\"]'),(76,7,NULL,NULL,3,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/15.jpg\",\"products\\/29-1.jpg\"]'),(77,7,NULL,NULL,15,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-2.jpg\",\"products\\/24-1.jpg\",\"products\\/26-2.jpg\",\"products\\/28-1.jpg\"]'),(82,8,NULL,NULL,12,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/29-1.jpg\"]'),(83,5,NULL,NULL,2,4,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-1.jpg\",\"products\\/15.jpg\"]'),(84,4,NULL,NULL,1,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/10.jpg\",\"products\\/12-1.jpg\"]'),(85,6,NULL,NULL,18,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-3.jpg\",\"products\\/4.jpg\",\"products\\/12-1.jpg\",\"products\\/20-1.jpg\"]'),(86,3,NULL,NULL,20,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/22-1.jpg\"]'),(88,6,NULL,NULL,29,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-1.jpg\",\"products\\/10.jpg\",\"products\\/12-1.jpg\",\"products\\/12.jpg\"]'),(89,8,NULL,NULL,22,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-2.jpg\",\"products\\/23.jpg\"]'),(90,3,NULL,NULL,15,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-2.jpg\",\"products\\/7-1.jpg\",\"products\\/7.jpg\",\"products\\/31.jpg\"]'),(92,7,NULL,NULL,14,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/11-1.jpg\",\"products\\/26-2.jpg\"]'),(93,4,NULL,NULL,27,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-3.jpg\",\"products\\/7-1.jpg\"]'),(94,7,NULL,NULL,9,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/13.jpg\",\"products\\/24-1.jpg\",\"products\\/26.jpg\",\"products\\/30-1.jpg\"]'),(96,3,NULL,NULL,21,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-3.jpg\",\"products\\/26-1.jpg\",\"products\\/29.jpg\"]'),(97,9,NULL,NULL,18,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/21-1.jpg\"]'),(98,7,NULL,NULL,4,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-1.jpg\"]'),(101,1,NULL,NULL,7,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/13-1.jpg\"]'),(102,6,NULL,NULL,8,2,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/9-1.jpg\"]'),(103,8,NULL,NULL,8,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-1.jpg\",\"products\\/6.jpg\",\"products\\/18-2.jpg\"]'),(107,1,NULL,NULL,6,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-1.jpg\",\"products\\/30.jpg\"]'),(108,8,NULL,NULL,24,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/18-2.jpg\"]'),(111,9,NULL,NULL,23,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/13.jpg\",\"products\\/27.jpg\",\"products\\/28.jpg\"]'),(112,10,NULL,NULL,30,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/12.jpg\"]'),(113,1,NULL,NULL,13,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7.jpg\",\"products\\/9-1.jpg\",\"products\\/10-1.jpg\",\"products\\/19-1.jpg\"]'),(115,7,NULL,NULL,5,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-1.jpg\",\"products\\/7-1.jpg\",\"products\\/29-1.jpg\"]'),(116,6,NULL,NULL,31,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/23-1.jpg\"]'),(118,1,NULL,NULL,30,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-1.jpg\",\"products\\/30-1.jpg\"]'),(120,10,NULL,NULL,14,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/11-1.jpg\"]'),(122,7,NULL,NULL,16,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-1.jpg\",\"products\\/4-1.jpg\",\"products\\/30.jpg\"]'),(123,7,NULL,NULL,12,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/16.jpg\"]'),(124,6,NULL,NULL,3,4,'Best ecommerce CMS online store!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-3.jpg\"]'),(125,4,NULL,NULL,2,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/10-1.jpg\",\"products\\/13.jpg\",\"products\\/15.jpg\",\"products\\/29.jpg\"]'),(126,6,NULL,NULL,15,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/15-1.jpg\"]'),(127,3,NULL,NULL,12,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-2.jpg\",\"products\\/9-1.jpg\",\"products\\/13-1.jpg\",\"products\\/23.jpg\"]'),(130,1,NULL,NULL,10,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-3.jpg\",\"products\\/8-1.jpg\",\"products\\/9.jpg\",\"products\\/28-1.jpg\"]'),(131,6,NULL,NULL,20,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1.jpg\",\"products\\/18-2.jpg\"]'),(132,4,NULL,NULL,17,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/19-1.jpg\"]'),(134,5,NULL,NULL,15,3,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5.jpg\",\"products\\/15-1.jpg\",\"products\\/20.jpg\",\"products\\/25-1.jpg\"]'),(135,6,NULL,NULL,19,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-2.jpg\",\"products\\/4.jpg\",\"products\\/5-1.jpg\",\"products\\/21-1.jpg\"]'),(136,3,NULL,NULL,10,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7.jpg\",\"products\\/17.jpg\",\"products\\/24-1.jpg\"]'),(137,8,NULL,NULL,28,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/8-1.jpg\"]'),(139,4,NULL,NULL,30,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-3.jpg\",\"products\\/28-1.jpg\"]'),(142,8,NULL,NULL,1,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/9.jpg\",\"products\\/14-1.jpg\"]'),(143,2,NULL,NULL,16,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/12.jpg\"]'),(144,6,NULL,NULL,1,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-1.jpg\",\"products\\/10-1.jpg\",\"products\\/10.jpg\"]'),(149,8,NULL,NULL,9,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-2.jpg\",\"products\\/22.jpg\"]'),(151,1,NULL,NULL,8,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/4-3.jpg\",\"products\\/20.jpg\",\"products\\/30-1.jpg\"]'),(152,7,NULL,NULL,11,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/28-1.jpg\"]'),(153,2,NULL,NULL,29,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/12-1.jpg\"]'),(154,1,NULL,NULL,28,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-3.jpg\",\"products\\/12-1.jpg\",\"products\\/26-1.jpg\"]'),(155,9,NULL,NULL,12,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-3.jpg\",\"products\\/1.jpg\",\"products\\/13.jpg\"]'),(156,4,NULL,NULL,20,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-3.jpg\",\"products\\/4-3.jpg\",\"products\\/25.jpg\",\"products\\/28-1.jpg\"]'),(157,8,NULL,NULL,5,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-3.jpg\",\"products\\/18.jpg\"]'),(158,2,NULL,NULL,19,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/14.jpg\"]'),(159,2,NULL,NULL,17,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-2.jpg\",\"products\\/6-1.jpg\",\"products\\/27-1.jpg\",\"products\\/29-1.jpg\"]'),(160,3,NULL,NULL,18,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-1.jpg\",\"products\\/9-1.jpg\",\"products\\/20.jpg\",\"products\\/25-1.jpg\"]'),(161,6,NULL,NULL,6,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/10.jpg\",\"products\\/24-1.jpg\",\"products\\/30.jpg\",\"products\\/31.jpg\"]'),(163,7,NULL,NULL,23,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4.jpg\",\"products\\/5-3.jpg\",\"products\\/23.jpg\",\"products\\/24-1.jpg\"]'),(164,3,NULL,NULL,11,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-3.jpg\",\"products\\/2-2.jpg\",\"products\\/4-2.jpg\",\"products\\/25.jpg\"]'),(165,8,NULL,NULL,17,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/10.jpg\"]'),(168,2,NULL,NULL,22,3,'Best ecommerce CMS online store!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/5-2.jpg\",\"products\\/12.jpg\"]'),(169,5,NULL,NULL,12,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/18.jpg\",\"products\\/19.jpg\",\"products\\/28-1.jpg\"]'),(170,6,NULL,NULL,9,2,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/16.jpg\",\"products\\/17.jpg\",\"products\\/29.jpg\"]'),(171,3,NULL,NULL,22,4,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-2.jpg\"]'),(172,7,NULL,NULL,19,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-1.jpg\",\"products\\/2-3.jpg\",\"products\\/15-1.jpg\"]'),(173,2,NULL,NULL,27,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/9-1.jpg\"]'),(174,5,NULL,NULL,24,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/10-1.jpg\"]'),(175,3,NULL,NULL,13,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-3.jpg\",\"products\\/5-1.jpg\",\"products\\/22-1.jpg\",\"products\\/22.jpg\"]'),(176,3,NULL,NULL,30,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/20-1.jpg\",\"products\\/26-1.jpg\",\"products\\/28.jpg\"]'),(178,9,NULL,NULL,30,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/15-1.jpg\",\"products\\/19.jpg\"]'),(179,1,NULL,NULL,21,4,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/9-1.jpg\",\"products\\/18-2.jpg\",\"products\\/21.jpg\",\"products\\/26-2.jpg\"]'),(180,1,NULL,NULL,1,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-3.jpg\",\"products\\/11-1.jpg\",\"products\\/25.jpg\",\"products\\/30.jpg\"]'),(181,3,NULL,NULL,5,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/8.jpg\",\"products\\/16.jpg\"]'),(182,2,NULL,NULL,11,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-2.jpg\",\"products\\/9.jpg\",\"products\\/20.jpg\"]'),(183,10,NULL,NULL,13,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-3.jpg\"]'),(184,2,NULL,NULL,15,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/9-1.jpg\",\"products\\/20-1.jpg\"]'),(186,7,NULL,NULL,6,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-1.jpg\",\"products\\/24-1.jpg\",\"products\\/26-1.jpg\"]'),(190,8,NULL,NULL,27,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/10-1.jpg\",\"products\\/25.jpg\",\"products\\/28.jpg\",\"products\\/29-1.jpg\"]'),(194,3,NULL,NULL,23,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/15.jpg\"]'),(197,5,NULL,NULL,11,4,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-2.jpg\",\"products\\/9-1.jpg\",\"products\\/20.jpg\",\"products\\/23.jpg\"]'),(201,2,NULL,NULL,12,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/26.jpg\"]'),(203,3,NULL,NULL,31,2,'Best ecommerce CMS online store!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/18-1.jpg\",\"products\\/20-1.jpg\",\"products\\/24-1.jpg\"]'),(204,9,NULL,NULL,13,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1.jpg\",\"products\\/2-1.jpg\",\"products\\/4-1.jpg\",\"products\\/19-1.jpg\"]'),(207,6,NULL,NULL,30,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/14.jpg\",\"products\\/22-1.jpg\",\"products\\/28.jpg\"]'),(208,2,NULL,NULL,13,2,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/25.jpg\"]'),(210,6,NULL,NULL,27,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-2.jpg\",\"products\\/12.jpg\",\"products\\/29.jpg\"]'),(211,2,NULL,NULL,9,1,'Best ecommerce CMS online store!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1.jpg\",\"products\\/9-1.jpg\",\"products\\/10-1.jpg\"]'),(212,4,NULL,NULL,12,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-3.jpg\",\"products\\/23-1.jpg\"]'),(214,6,NULL,NULL,24,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7.jpg\",\"products\\/15-1.jpg\",\"products\\/21.jpg\"]'),(217,4,NULL,NULL,9,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-2.jpg\",\"products\\/3-3.jpg\",\"products\\/19-1.jpg\",\"products\\/31-1.jpg\"]'),(218,2,NULL,NULL,23,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/25-1.jpg\",\"products\\/28-1.jpg\"]'),(219,2,NULL,NULL,6,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/11.jpg\",\"products\\/17.jpg\",\"products\\/26-2.jpg\"]'),(222,4,NULL,NULL,10,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/13.jpg\",\"products\\/19-1.jpg\"]'),(223,9,NULL,NULL,25,2,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4.jpg\",\"products\\/18-1.jpg\"]'),(224,7,NULL,NULL,2,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-3.jpg\",\"products\\/22.jpg\",\"products\\/30.jpg\"]'),(225,8,NULL,NULL,30,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/27.jpg\"]'),(227,1,NULL,NULL,2,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/12.jpg\"]'),(228,9,NULL,NULL,1,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-3.jpg\",\"products\\/27.jpg\",\"products\\/28.jpg\"]'),(230,1,NULL,NULL,29,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-1.jpg\",\"products\\/16.jpg\",\"products\\/23-1.jpg\"]'),(235,1,NULL,NULL,14,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/24-1.jpg\"]'),(236,3,NULL,NULL,2,1,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7.jpg\",\"products\\/11.jpg\",\"products\\/23.jpg\",\"products\\/26.jpg\"]'),(238,7,NULL,NULL,30,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-3.jpg\",\"products\\/9-1.jpg\",\"products\\/21.jpg\",\"products\\/22-1.jpg\"]'),(240,7,NULL,NULL,26,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/16.jpg\",\"products\\/29-1.jpg\",\"products\\/29.jpg\"]'),(243,4,NULL,NULL,14,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/14-1.jpg\",\"products\\/15-1.jpg\"]'),(248,2,NULL,NULL,20,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/13-1.jpg\",\"products\\/25.jpg\"]'),(252,8,NULL,NULL,16,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/9.jpg\",\"products\\/15.jpg\",\"products\\/21-1.jpg\",\"products\\/26.jpg\"]'),(256,3,NULL,NULL,24,2,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-2.jpg\",\"products\\/21-1.jpg\",\"products\\/28-1.jpg\"]'),(257,9,NULL,NULL,21,2,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1.jpg\",\"products\\/3-1.jpg\",\"products\\/26.jpg\"]'),(259,6,NULL,NULL,23,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7-1.jpg\",\"products\\/27-1.jpg\",\"products\\/29-1.jpg\"]'),(260,10,NULL,NULL,26,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-2.jpg\",\"products\\/30-1.jpg\"]'),(261,8,NULL,NULL,31,2,'Best ecommerce CMS online store!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7-1.jpg\",\"products\\/8.jpg\",\"products\\/20.jpg\"]'),(263,9,NULL,NULL,3,5,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1.jpg\",\"products\\/4-3.jpg\",\"products\\/19-1.jpg\"]'),(265,3,NULL,NULL,14,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/6.jpg\",\"products\\/11.jpg\",\"products\\/14-1.jpg\",\"products\\/20-1.jpg\"]'),(266,6,NULL,NULL,26,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/30-1.jpg\"]'),(272,10,NULL,NULL,27,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-3.jpg\"]'),(274,5,NULL,NULL,3,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/28.jpg\"]'),(275,5,NULL,NULL,31,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-1.jpg\"]'),(277,1,NULL,NULL,23,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/8-1.jpg\",\"products\\/23-1.jpg\"]'),(278,10,NULL,NULL,3,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/19-1.jpg\",\"products\\/19.jpg\"]'),(284,9,NULL,NULL,22,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-3.jpg\",\"products\\/4-3.jpg\",\"products\\/21.jpg\",\"products\\/25.jpg\"]'),(285,6,NULL,NULL,14,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7-1.jpg\"]'),(286,10,NULL,NULL,20,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-1.jpg\",\"products\\/5-2.jpg\",\"products\\/26-2.jpg\",\"products\\/29.jpg\"]'),(289,1,NULL,NULL,12,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/18-1.jpg\",\"products\\/19.jpg\",\"products\\/20.jpg\"]'),(290,10,NULL,NULL,4,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-1.jpg\",\"products\\/2-3.jpg\",\"products\\/27.jpg\"]'),(291,9,NULL,NULL,2,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3.jpg\",\"products\\/8-1.jpg\",\"products\\/10.jpg\",\"products\\/11.jpg\"]'),(296,10,NULL,NULL,23,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4.jpg\",\"products\\/27-1.jpg\"]'),(297,10,NULL,NULL,6,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-1.jpg\",\"products\\/13-1.jpg\",\"products\\/14.jpg\",\"products\\/19-1.jpg\"]'),(298,10,NULL,NULL,29,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/29.jpg\"]'),(299,5,NULL,NULL,9,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/21-1.jpg\"]'),(302,7,NULL,NULL,13,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/18-1.jpg\"]'),(303,6,NULL,NULL,13,1,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1.jpg\",\"products\\/2-1.jpg\",\"products\\/5-2.jpg\",\"products\\/12.jpg\"]'),(309,4,NULL,NULL,24,3,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/15.jpg\"]'),(312,8,NULL,NULL,15,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/19-1.jpg\",\"products\\/26-2.jpg\",\"products\\/31-1.jpg\"]'),(315,3,NULL,NULL,25,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-1.jpg\",\"products\\/30-1.jpg\"]'),(316,5,NULL,NULL,18,2,'Best ecommerce CMS online store!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/9.jpg\",\"products\\/28.jpg\"]'),(317,5,NULL,NULL,17,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3.jpg\",\"products\\/9-1.jpg\"]'),(320,9,NULL,NULL,24,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-3.jpg\",\"products\\/7.jpg\"]'),(322,6,NULL,NULL,5,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]'),(324,2,NULL,NULL,21,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3.jpg\",\"products\\/14-1.jpg\"]'),(325,1,NULL,NULL,11,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-1.jpg\",\"products\\/11-1.jpg\",\"products\\/26-1.jpg\",\"products\\/27.jpg\"]'),(327,10,NULL,NULL,19,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-3.jpg\",\"products\\/4-2.jpg\",\"products\\/15.jpg\",\"products\\/18-1.jpg\"]'),(331,3,NULL,NULL,6,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-1.jpg\",\"products\\/5-2.jpg\",\"products\\/19.jpg\"]'),(332,10,NULL,NULL,5,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/23-1.jpg\",\"products\\/30.jpg\"]'),(335,5,NULL,NULL,30,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/17.jpg\",\"products\\/18-1.jpg\",\"products\\/27-1.jpg\"]'),(343,1,NULL,NULL,26,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7.jpg\",\"products\\/18.jpg\",\"products\\/21-1.jpg\"]'),(353,4,NULL,NULL,26,1,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/9.jpg\",\"products\\/13.jpg\",\"products\\/25.jpg\",\"products\\/31.jpg\"]'),(358,10,NULL,NULL,24,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4.jpg\",\"products\\/14-1.jpg\",\"products\\/20-1.jpg\"]'),(362,6,NULL,NULL,21,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-1.jpg\",\"products\\/30.jpg\"]'),(367,1,NULL,NULL,9,3,'Best ecommerce CMS online store!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/27.jpg\"]'),(372,6,NULL,NULL,22,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/28.jpg\"]'),(375,5,NULL,NULL,23,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/21-1.jpg\",\"products\\/22.jpg\",\"products\\/25.jpg\"]'),(376,7,NULL,NULL,8,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7.jpg\",\"products\\/19-1.jpg\"]'),(387,9,NULL,NULL,28,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/10.jpg\",\"products\\/18.jpg\",\"products\\/28-1.jpg\",\"products\\/29-1.jpg\"]'),(395,2,NULL,NULL,1,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2.jpg\",\"products\\/18-1.jpg\",\"products\\/19-1.jpg\",\"products\\/22.jpg\"]'),(397,4,NULL,NULL,4,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-1.jpg\",\"products\\/5-1.jpg\",\"products\\/15.jpg\"]'),(404,8,NULL,NULL,26,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/9.jpg\",\"products\\/12.jpg\",\"products\\/17.jpg\"]'),(408,10,NULL,NULL,31,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7-1.jpg\"]'),(411,2,NULL,NULL,10,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/26.jpg\",\"products\\/31-1.jpg\",\"products\\/31.jpg\"]'),(412,6,NULL,NULL,2,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/18-2.jpg\",\"products\\/19-1.jpg\",\"products\\/29-1.jpg\"]'),(413,8,NULL,NULL,14,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-2.jpg\",\"products\\/7.jpg\",\"products\\/22-1.jpg\"]'),(416,8,NULL,NULL,19,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-3.jpg\",\"products\\/7-1.jpg\",\"products\\/24-1.jpg\",\"products\\/28.jpg\"]'),(425,3,NULL,NULL,19,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-2.jpg\",\"products\\/17.jpg\"]'),(432,2,NULL,NULL,2,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1.jpg\",\"products\\/3-3.jpg\",\"products\\/4-1.jpg\",\"products\\/23-1.jpg\"]'),(442,4,NULL,NULL,28,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-3.jpg\"]'),(448,1,NULL,NULL,4,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-2.jpg\",\"products\\/4-1.jpg\",\"products\\/4.jpg\",\"products\\/29.jpg\"]'),(449,7,NULL,NULL,21,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-2.jpg\",\"products\\/3-3.jpg\",\"products\\/27-1.jpg\",\"products\\/29-1.jpg\"]'),(455,1,NULL,NULL,22,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5.jpg\"]'),(460,4,NULL,NULL,22,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/6.jpg\",\"products\\/29-1.jpg\"]'),(462,8,NULL,NULL,18,2,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/9.jpg\"]'),(463,2,NULL,NULL,18,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/24.jpg\",\"products\\/29-1.jpg\",\"products\\/29.jpg\"]'),(464,9,NULL,NULL,20,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-2.jpg\",\"products\\/9.jpg\",\"products\\/19-1.jpg\",\"products\\/22-1.jpg\"]'),(478,8,NULL,NULL,13,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/20.jpg\"]'),(483,7,NULL,NULL,25,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/16.jpg\",\"products\\/18.jpg\",\"products\\/22-1.jpg\",\"products\\/29.jpg\"]'),(485,9,NULL,NULL,4,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/13-1.jpg\",\"products\\/14-1.jpg\"]'),(487,7,NULL,NULL,27,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/22.jpg\"]'),(491,3,NULL,NULL,27,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/31.jpg\"]'),(498,9,NULL,NULL,31,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-3.jpg\",\"products\\/5-3.jpg\",\"products\\/30-1.jpg\"]'),(504,10,NULL,NULL,10,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5.jpg\",\"products\\/7.jpg\",\"products\\/21-1.jpg\"]'),(510,5,NULL,NULL,1,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/15.jpg\",\"products\\/24-1.jpg\"]'),(515,10,NULL,NULL,22,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-1.jpg\",\"products\\/6-1.jpg\",\"products\\/23.jpg\",\"products\\/31-1.jpg\"]'),(516,8,NULL,NULL,3,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-2.jpg\",\"products\\/4-2.jpg\",\"products\\/10.jpg\",\"products\\/29-1.jpg\"]'),(524,6,NULL,NULL,4,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2.jpg\",\"products\\/7-1.jpg\"]'),(525,10,NULL,NULL,17,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/23.jpg\",\"products\\/27.jpg\"]'),(527,3,NULL,NULL,16,4,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/11.jpg\",\"products\\/21-1.jpg\",\"products\\/26-1.jpg\",\"products\\/28-1.jpg\"]'),(532,5,NULL,NULL,8,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/28.jpg\"]'),(537,4,NULL,NULL,15,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-1.jpg\",\"products\\/13-1.jpg\",\"products\\/26-1.jpg\"]'),(542,1,NULL,NULL,15,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-2.jpg\",\"products\\/17.jpg\",\"products\\/23-1.jpg\"]'),(562,2,NULL,NULL,8,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/19.jpg\"]'),(565,10,NULL,NULL,15,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-1.jpg\",\"products\\/14-1.jpg\"]'),(566,2,NULL,NULL,7,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/12.jpg\",\"products\\/20-1.jpg\"]'),(567,8,NULL,NULL,10,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2.jpg\",\"products\\/25.jpg\"]'),(572,1,NULL,NULL,20,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/10-1.jpg\",\"products\\/12.jpg\",\"products\\/19.jpg\",\"products\\/24-1.jpg\"]'),(580,5,NULL,NULL,25,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-1.jpg\",\"products\\/1.jpg\",\"products\\/23.jpg\"]'),(581,9,NULL,NULL,8,2,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/26.jpg\"]'),(584,10,NULL,NULL,28,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7-1.jpg\",\"products\\/20.jpg\"]'),(590,4,NULL,NULL,25,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/8-1.jpg\",\"products\\/16.jpg\"]'),(591,10,NULL,NULL,9,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/4-1.jpg\",\"products\\/24-1.jpg\",\"products\\/25-1.jpg\"]'),(605,7,NULL,NULL,28,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/15-1.jpg\",\"products\\/16.jpg\",\"products\\/19.jpg\",\"products\\/31.jpg\"]'),(617,3,NULL,NULL,29,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/30-1.jpg\"]'),(623,7,NULL,NULL,7,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3.jpg\",\"products\\/24.jpg\",\"products\\/30-1.jpg\"]'),(624,7,NULL,NULL,31,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/16.jpg\",\"products\\/26-1.jpg\",\"products\\/26.jpg\"]'),(625,1,NULL,NULL,24,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-2.jpg\",\"products\\/25-1.jpg\"]'),(629,5,NULL,NULL,7,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-2.jpg\",\"products\\/12-1.jpg\"]'),(633,9,NULL,NULL,16,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/19.jpg\",\"products\\/24.jpg\"]'),(650,3,NULL,NULL,3,3,'Best ecommerce CMS online store!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/12.jpg\",\"products\\/23-1.jpg\",\"products\\/30.jpg\"]'),(675,6,NULL,NULL,28,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7.jpg\",\"products\\/22-1.jpg\"]'),(682,2,NULL,NULL,4,1,'Best ecommerce CMS online store!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7-1.jpg\",\"products\\/13.jpg\"]'),(687,1,NULL,NULL,17,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/9.jpg\",\"products\\/29.jpg\",\"products\\/30.jpg\"]'),(691,9,NULL,NULL,5,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/8.jpg\",\"products\\/10-1.jpg\",\"products\\/18-2.jpg\",\"products\\/19.jpg\"]'),(692,10,NULL,NULL,1,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/19-1.jpg\"]'),(715,4,NULL,NULL,31,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1-3.jpg\",\"products\\/1.jpg\",\"products\\/3-1.jpg\",\"products\\/4.jpg\"]'),(724,7,NULL,NULL,18,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/5-1.jpg\",\"products\\/8-1.jpg\",\"products\\/26-2.jpg\"]'),(725,4,NULL,NULL,11,3,'Clean & perfect source code','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-2.jpg\",\"products\\/14-1.jpg\"]'),(730,5,NULL,NULL,19,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/17.jpg\",\"products\\/26-2.jpg\"]'),(764,6,NULL,NULL,10,5,'Best ecommerce CMS online store!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/20-1.jpg\"]'),(765,4,NULL,NULL,21,2,'Best ecommerce CMS online store!','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/9-1.jpg\",\"products\\/14-1.jpg\",\"products\\/22-1.jpg\",\"products\\/27.jpg\"]'),(770,10,NULL,NULL,18,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/23.jpg\"]'),(773,3,NULL,NULL,28,2,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/3-1.jpg\"]'),(790,9,NULL,NULL,14,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(793,5,NULL,NULL,21,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2.jpg\",\"products\\/28.jpg\"]'),(809,1,NULL,NULL,27,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/6-1.jpg\",\"products\\/9-1.jpg\"]'),(823,10,NULL,NULL,16,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/10.jpg\",\"products\\/31-1.jpg\",\"products\\/31.jpg\"]'),(827,1,NULL,NULL,19,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/2-3.jpg\",\"products\\/4-2.jpg\",\"products\\/22-1.jpg\",\"products\\/29.jpg\"]'),(937,3,NULL,NULL,7,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/27.jpg\"]'),(971,2,NULL,NULL,28,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:37:55','2025-09-11 01:37:55','[\"products\\/1.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double DEFAULT '0',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2025-09-11 01:37:55','2025-09-11 01:37:55');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2025-09-11 01:37:55','2025-09-11 01:37:55'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2025-09-11 01:37:55','2025-09-11 01:37:55'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2025-09-11 01:37:55','2025-09-11 01:37:55');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,NULL),(2,'Performance',NULL,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,NULL),(3,'Battery',NULL,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,NULL),(4,'Display',NULL,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups_translations`
--

DROP TABLE IF EXISTS `ec_specification_groups_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_groups_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_groups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups_translations`
--

LOCK TABLES `ec_specification_groups_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_groups_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,NULL),(2,'Technical Specification',NULL,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables_translations`
--

DROP TABLE IF EXISTS `ec_specification_tables_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_tables_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_tables_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables_translations`
--

LOCK TABLES `ec_specification_tables_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_tables_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shopwise','sales@botble.com','123-456-7890','123 Street, Old Trafford','US','New York','New York',1,1,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10,1,'published','2025-09-11 01:37:55','2025-09-11 01:37:55'),(2,'None',0,2,'published','2025-09-11 01:37:55','2025-09-11 01:37:55'),(3,'Import Tax',15,3,'published','2025-09-11 01:37:55','2025-09-11 01:37:55');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes_translations`
--

DROP TABLE IF EXISTS `ec_taxes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_taxes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_taxes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes_translations`
--

LOCK TABLES `ec_taxes_translations` WRITE;
/*!40000 ALTER TABLE `ec_taxes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_taxes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2025-09-11 01:37:39','2025-09-11 01:37:39',NULL),(2,'Payment',1,'published','2025-09-11 01:37:39','2025-09-11 01:37:39',NULL),(3,'Order &amp; Returns',2,'published','2025-09-11 01:37:39','2025-09-11 01:37:39',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2025-09-11 01:37:39','2025-09-11 01:37:39'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2025-09-11 01:37:39','2025-09-11 01:37:39'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2025-09-11 01:37:39','2025-09-11 01:37:39'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2025-09-11 01:37:39','2025-09-11 01:37:39'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2025-09-11 01:37:39','2025-09-11 01:37:39'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2025-09-11 01:37:39','2025-09-11 01:37:39'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2025-09-11 01:37:39','2025-09-11 01:37:39'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2025-09-11 01:37:39','2025-09-11 01:37:39'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2025-09-11 01:37:39','2025-09-11 01:37:39'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2025-09-11 01:37:39','2025-09-11 01:37:39');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
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
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','95c84002f50e2cedde311869cfdd35e1',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','83cbc9e389509477c40b57e1ba36558c',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','211b1a277389e2bda8485f5b7e910f88',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','7a4820b9904f3dd49de2311efabdba95',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','e71a26d04f6a2170273a478113fcd8d4',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','94b7ccd83976f0e1e441931307149b9d',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/png',9803,'brands/1.png','[]','2025-09-11 01:37:40','2025-09-11 01:37:40',NULL,'public'),(2,0,'2','2',1,'image/png',9803,'brands/2.png','[]','2025-09-11 01:37:40','2025-09-11 01:37:40',NULL,'public'),(3,0,'3','3',1,'image/png',9803,'brands/3.png','[]','2025-09-11 01:37:40','2025-09-11 01:37:40',NULL,'public'),(4,0,'4','4',1,'image/png',9803,'brands/4.png','[]','2025-09-11 01:37:40','2025-09-11 01:37:40',NULL,'public'),(5,0,'5','5',1,'image/png',9803,'brands/5.png','[]','2025-09-11 01:37:40','2025-09-11 01:37:40',NULL,'public'),(6,0,'6','6',1,'image/png',9803,'brands/6.png','[]','2025-09-11 01:37:40','2025-09-11 01:37:40',NULL,'public'),(7,0,'7','7',1,'image/png',9803,'brands/7.png','[]','2025-09-11 01:37:40','2025-09-11 01:37:40',NULL,'public'),(8,0,'p-1','p-1',2,'image/png',9803,'product-categories/p-1.png','[]','2025-09-11 01:37:40','2025-09-11 01:37:40',NULL,'public'),(9,0,'p-2','p-2',2,'image/png',9803,'product-categories/p-2.png','[]','2025-09-11 01:37:40','2025-09-11 01:37:40',NULL,'public'),(10,0,'p-3','p-3',2,'image/png',9803,'product-categories/p-3.png','[]','2025-09-11 01:37:40','2025-09-11 01:37:40',NULL,'public'),(11,0,'p-4','p-4',2,'image/png',9803,'product-categories/p-4.png','[]','2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,'public'),(12,0,'p-5','p-5',2,'image/png',9803,'product-categories/p-5.png','[]','2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,'public'),(13,0,'p-6','p-6',2,'image/png',9803,'product-categories/p-6.png','[]','2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,'public'),(14,0,'p-7','p-7',2,'image/png',9803,'product-categories/p-7.png','[]','2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,'public'),(15,0,'1','1',3,'image/jpeg',9803,'customers/1.jpg','[]','2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,'public'),(16,0,'10','10',3,'image/jpeg',9803,'customers/10.jpg','[]','2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,'public'),(17,0,'2','2',3,'image/jpeg',9803,'customers/2.jpg','[]','2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,'public'),(18,0,'3','3',3,'image/jpeg',9803,'customers/3.jpg','[]','2025-09-11 01:37:41','2025-09-11 01:37:41',NULL,'public'),(19,0,'4','4',3,'image/jpeg',9803,'customers/4.jpg','[]','2025-09-11 01:37:42','2025-09-11 01:37:42',NULL,'public'),(20,0,'5','5',3,'image/jpeg',9803,'customers/5.jpg','[]','2025-09-11 01:37:42','2025-09-11 01:37:42',NULL,'public'),(21,0,'6','6',3,'image/jpeg',9803,'customers/6.jpg','[]','2025-09-11 01:37:42','2025-09-11 01:37:42',NULL,'public'),(22,0,'7','7',3,'image/jpeg',9803,'customers/7.jpg','[]','2025-09-11 01:37:42','2025-09-11 01:37:42',NULL,'public'),(23,0,'8','8',3,'image/jpeg',9803,'customers/8.jpg','[]','2025-09-11 01:37:42','2025-09-11 01:37:42',NULL,'public'),(24,0,'9','9',3,'image/jpeg',9803,'customers/9.jpg','[]','2025-09-11 01:37:42','2025-09-11 01:37:42',NULL,'public'),(25,0,'1-1','1-1',4,'image/jpeg',9803,'products/1-1.jpg','[]','2025-09-11 01:37:45','2025-09-11 01:37:45',NULL,'public'),(26,0,'1-2','1-2',4,'image/jpeg',9803,'products/1-2.jpg','[]','2025-09-11 01:37:46','2025-09-11 01:37:46',NULL,'public'),(27,0,'1-3','1-3',4,'image/jpeg',9803,'products/1-3.jpg','[]','2025-09-11 01:37:46','2025-09-11 01:37:46',NULL,'public'),(28,0,'1','1',4,'image/jpeg',9803,'products/1.jpg','[]','2025-09-11 01:37:46','2025-09-11 01:37:46',NULL,'public'),(29,0,'10-1','10-1',4,'image/jpeg',9803,'products/10-1.jpg','[]','2025-09-11 01:37:46','2025-09-11 01:37:46',NULL,'public'),(30,0,'10','10',4,'image/jpeg',9803,'products/10.jpg','[]','2025-09-11 01:37:46','2025-09-11 01:37:46',NULL,'public'),(31,0,'11-1','11-1',4,'image/jpeg',9803,'products/11-1.jpg','[]','2025-09-11 01:37:46','2025-09-11 01:37:46',NULL,'public'),(32,0,'11','11',4,'image/jpeg',9803,'products/11.jpg','[]','2025-09-11 01:37:46','2025-09-11 01:37:46',NULL,'public'),(33,0,'12-1','12-1',4,'image/jpeg',9803,'products/12-1.jpg','[]','2025-09-11 01:37:46','2025-09-11 01:37:46',NULL,'public'),(34,0,'12','12',4,'image/jpeg',9803,'products/12.jpg','[]','2025-09-11 01:37:46','2025-09-11 01:37:46',NULL,'public'),(35,0,'13-1','13-1',4,'image/jpeg',9803,'products/13-1.jpg','[]','2025-09-11 01:37:46','2025-09-11 01:37:46',NULL,'public'),(36,0,'13','13',4,'image/jpeg',9803,'products/13.jpg','[]','2025-09-11 01:37:47','2025-09-11 01:37:47',NULL,'public'),(37,0,'14-1','14-1',4,'image/jpeg',9803,'products/14-1.jpg','[]','2025-09-11 01:37:47','2025-09-11 01:37:47',NULL,'public'),(38,0,'14','14',4,'image/jpeg',9803,'products/14.jpg','[]','2025-09-11 01:37:47','2025-09-11 01:37:47',NULL,'public'),(39,0,'15-1','15-1',4,'image/jpeg',9803,'products/15-1.jpg','[]','2025-09-11 01:37:47','2025-09-11 01:37:47',NULL,'public'),(40,0,'15','15',4,'image/jpeg',9803,'products/15.jpg','[]','2025-09-11 01:37:47','2025-09-11 01:37:47',NULL,'public'),(41,0,'16','16',4,'image/jpeg',9803,'products/16.jpg','[]','2025-09-11 01:37:47','2025-09-11 01:37:47',NULL,'public'),(42,0,'17','17',4,'image/jpeg',9803,'products/17.jpg','[]','2025-09-11 01:37:47','2025-09-11 01:37:47',NULL,'public'),(43,0,'18-1','18-1',4,'image/jpeg',9803,'products/18-1.jpg','[]','2025-09-11 01:37:47','2025-09-11 01:37:47',NULL,'public'),(44,0,'18-2','18-2',4,'image/jpeg',9803,'products/18-2.jpg','[]','2025-09-11 01:37:47','2025-09-11 01:37:47',NULL,'public'),(45,0,'18','18',4,'image/jpeg',9803,'products/18.jpg','[]','2025-09-11 01:37:48','2025-09-11 01:37:48',NULL,'public'),(46,0,'19-1','19-1',4,'image/jpeg',9803,'products/19-1.jpg','[]','2025-09-11 01:37:48','2025-09-11 01:37:48',NULL,'public'),(47,0,'19','19',4,'image/jpeg',9803,'products/19.jpg','[]','2025-09-11 01:37:48','2025-09-11 01:37:48',NULL,'public'),(48,0,'2-1','2-1',4,'image/jpeg',9803,'products/2-1.jpg','[]','2025-09-11 01:37:48','2025-09-11 01:37:48',NULL,'public'),(49,0,'2-2','2-2',4,'image/jpeg',9803,'products/2-2.jpg','[]','2025-09-11 01:37:48','2025-09-11 01:37:48',NULL,'public'),(50,0,'2-3','2-3',4,'image/jpeg',9803,'products/2-3.jpg','[]','2025-09-11 01:37:48','2025-09-11 01:37:48',NULL,'public'),(51,0,'2','2',4,'image/jpeg',9803,'products/2.jpg','[]','2025-09-11 01:37:48','2025-09-11 01:37:48',NULL,'public'),(52,0,'20-1','20-1',4,'image/jpeg',9803,'products/20-1.jpg','[]','2025-09-11 01:37:48','2025-09-11 01:37:48',NULL,'public'),(53,0,'20','20',4,'image/jpeg',9803,'products/20.jpg','[]','2025-09-11 01:37:48','2025-09-11 01:37:48',NULL,'public'),(54,0,'21-1','21-1',4,'image/jpeg',9803,'products/21-1.jpg','[]','2025-09-11 01:37:48','2025-09-11 01:37:48',NULL,'public'),(55,0,'21','21',4,'image/jpeg',9803,'products/21.jpg','[]','2025-09-11 01:37:48','2025-09-11 01:37:48',NULL,'public'),(56,0,'22-1','22-1',4,'image/jpeg',9803,'products/22-1.jpg','[]','2025-09-11 01:37:49','2025-09-11 01:37:49',NULL,'public'),(57,0,'22','22',4,'image/jpeg',9803,'products/22.jpg','[]','2025-09-11 01:37:49','2025-09-11 01:37:49',NULL,'public'),(58,0,'23-1','23-1',4,'image/jpeg',9803,'products/23-1.jpg','[]','2025-09-11 01:37:49','2025-09-11 01:37:49',NULL,'public'),(59,0,'23','23',4,'image/jpeg',9803,'products/23.jpg','[]','2025-09-11 01:37:49','2025-09-11 01:37:49',NULL,'public'),(60,0,'24-1','24-1',4,'image/jpeg',9803,'products/24-1.jpg','[]','2025-09-11 01:37:49','2025-09-11 01:37:49',NULL,'public'),(61,0,'24','24',4,'image/jpeg',9803,'products/24.jpg','[]','2025-09-11 01:37:49','2025-09-11 01:37:49',NULL,'public'),(62,0,'25-1','25-1',4,'image/jpeg',9803,'products/25-1.jpg','[]','2025-09-11 01:37:49','2025-09-11 01:37:49',NULL,'public'),(63,0,'25','25',4,'image/jpeg',9803,'products/25.jpg','[]','2025-09-11 01:37:49','2025-09-11 01:37:49',NULL,'public'),(64,0,'26-1','26-1',4,'image/jpeg',9803,'products/26-1.jpg','[]','2025-09-11 01:37:49','2025-09-11 01:37:49',NULL,'public'),(65,0,'26-2','26-2',4,'image/jpeg',9803,'products/26-2.jpg','[]','2025-09-11 01:37:49','2025-09-11 01:37:49',NULL,'public'),(66,0,'26','26',4,'image/jpeg',9803,'products/26.jpg','[]','2025-09-11 01:37:49','2025-09-11 01:37:49',NULL,'public'),(67,0,'27-1','27-1',4,'image/jpeg',9803,'products/27-1.jpg','[]','2025-09-11 01:37:49','2025-09-11 01:37:49',NULL,'public'),(68,0,'27','27',4,'image/jpeg',9803,'products/27.jpg','[]','2025-09-11 01:37:50','2025-09-11 01:37:50',NULL,'public'),(69,0,'28-1','28-1',4,'image/jpeg',9803,'products/28-1.jpg','[]','2025-09-11 01:37:50','2025-09-11 01:37:50',NULL,'public'),(70,0,'28','28',4,'image/jpeg',9803,'products/28.jpg','[]','2025-09-11 01:37:50','2025-09-11 01:37:50',NULL,'public'),(71,0,'29-1','29-1',4,'image/jpeg',9803,'products/29-1.jpg','[]','2025-09-11 01:37:50','2025-09-11 01:37:50',NULL,'public'),(72,0,'29','29',4,'image/jpeg',9803,'products/29.jpg','[]','2025-09-11 01:37:50','2025-09-11 01:37:50',NULL,'public'),(73,0,'3-1','3-1',4,'image/jpeg',9803,'products/3-1.jpg','[]','2025-09-11 01:37:50','2025-09-11 01:37:50',NULL,'public'),(74,0,'3-2','3-2',4,'image/jpeg',9803,'products/3-2.jpg','[]','2025-09-11 01:37:50','2025-09-11 01:37:50',NULL,'public'),(75,0,'3-3','3-3',4,'image/jpeg',9803,'products/3-3.jpg','[]','2025-09-11 01:37:50','2025-09-11 01:37:50',NULL,'public'),(76,0,'3','3',4,'image/jpeg',9803,'products/3.jpg','[]','2025-09-11 01:37:50','2025-09-11 01:37:50',NULL,'public'),(77,0,'30-1','30-1',4,'image/jpeg',9803,'products/30-1.jpg','[]','2025-09-11 01:37:50','2025-09-11 01:37:50',NULL,'public'),(78,0,'30','30',4,'image/jpeg',9803,'products/30.jpg','[]','2025-09-11 01:37:50','2025-09-11 01:37:50',NULL,'public'),(79,0,'31-1','31-1',4,'image/jpeg',9803,'products/31-1.jpg','[]','2025-09-11 01:37:50','2025-09-11 01:37:50',NULL,'public'),(80,0,'31','31',4,'image/jpeg',9803,'products/31.jpg','[]','2025-09-11 01:37:51','2025-09-11 01:37:51',NULL,'public'),(81,0,'4-1','4-1',4,'image/jpeg',9803,'products/4-1.jpg','[]','2025-09-11 01:37:51','2025-09-11 01:37:51',NULL,'public'),(82,0,'4-2','4-2',4,'image/jpeg',9803,'products/4-2.jpg','[]','2025-09-11 01:37:51','2025-09-11 01:37:51',NULL,'public'),(83,0,'4-3','4-3',4,'image/jpeg',9803,'products/4-3.jpg','[]','2025-09-11 01:37:51','2025-09-11 01:37:51',NULL,'public'),(84,0,'4','4',4,'image/jpeg',9803,'products/4.jpg','[]','2025-09-11 01:37:51','2025-09-11 01:37:51',NULL,'public'),(85,0,'5-1','5-1',4,'image/jpeg',9803,'products/5-1.jpg','[]','2025-09-11 01:37:51','2025-09-11 01:37:51',NULL,'public'),(86,0,'5-2','5-2',4,'image/jpeg',9803,'products/5-2.jpg','[]','2025-09-11 01:37:51','2025-09-11 01:37:51',NULL,'public'),(87,0,'5-3','5-3',4,'image/jpeg',9803,'products/5-3.jpg','[]','2025-09-11 01:37:51','2025-09-11 01:37:51',NULL,'public'),(88,0,'5','5',4,'image/jpeg',9803,'products/5.jpg','[]','2025-09-11 01:37:51','2025-09-11 01:37:51',NULL,'public'),(89,0,'6-1','6-1',4,'image/jpeg',9803,'products/6-1.jpg','[]','2025-09-11 01:37:51','2025-09-11 01:37:51',NULL,'public'),(90,0,'6','6',4,'image/jpeg',9803,'products/6.jpg','[]','2025-09-11 01:37:51','2025-09-11 01:37:51',NULL,'public'),(91,0,'7-1','7-1',4,'image/jpeg',9803,'products/7-1.jpg','[]','2025-09-11 01:37:52','2025-09-11 01:37:52',NULL,'public'),(92,0,'7','7',4,'image/jpeg',9803,'products/7.jpg','[]','2025-09-11 01:37:52','2025-09-11 01:37:52',NULL,'public'),(93,0,'8-1','8-1',4,'image/jpeg',9803,'products/8-1.jpg','[]','2025-09-11 01:37:52','2025-09-11 01:37:52',NULL,'public'),(94,0,'8','8',4,'image/jpeg',9803,'products/8.jpg','[]','2025-09-11 01:37:52','2025-09-11 01:37:52',NULL,'public'),(95,0,'9-1','9-1',4,'image/jpeg',9803,'products/9-1.jpg','[]','2025-09-11 01:37:52','2025-09-11 01:37:52',NULL,'public'),(96,0,'9','9',4,'image/jpeg',9803,'products/9.jpg','[]','2025-09-11 01:37:52','2025-09-11 01:37:52',NULL,'public'),(97,0,'1','1',5,'image/jpeg',9803,'news/1.jpg','[]','2025-09-11 01:37:55','2025-09-11 01:37:55',NULL,'public'),(98,0,'10','10',5,'image/jpeg',9803,'news/10.jpg','[]','2025-09-11 01:37:55','2025-09-11 01:37:55',NULL,'public'),(99,0,'11','11',5,'image/jpeg',9803,'news/11.jpg','[]','2025-09-11 01:37:55','2025-09-11 01:37:55',NULL,'public'),(100,0,'2','2',5,'image/jpeg',9803,'news/2.jpg','[]','2025-09-11 01:37:55','2025-09-11 01:37:55',NULL,'public'),(101,0,'3','3',5,'image/jpeg',9803,'news/3.jpg','[]','2025-09-11 01:37:55','2025-09-11 01:37:55',NULL,'public'),(102,0,'4','4',5,'image/jpeg',9803,'news/4.jpg','[]','2025-09-11 01:37:56','2025-09-11 01:37:56',NULL,'public'),(103,0,'5','5',5,'image/jpeg',9803,'news/5.jpg','[]','2025-09-11 01:37:56','2025-09-11 01:37:56',NULL,'public'),(104,0,'6','6',5,'image/jpeg',9803,'news/6.jpg','[]','2025-09-11 01:37:56','2025-09-11 01:37:56',NULL,'public'),(105,0,'7','7',5,'image/jpeg',9803,'news/7.jpg','[]','2025-09-11 01:37:56','2025-09-11 01:37:56',NULL,'public'),(106,0,'8','8',5,'image/jpeg',9803,'news/8.jpg','[]','2025-09-11 01:37:56','2025-09-11 01:37:56',NULL,'public'),(107,0,'9','9',5,'image/jpeg',9803,'news/9.jpg','[]','2025-09-11 01:37:56','2025-09-11 01:37:56',NULL,'public'),(108,0,'1','1',6,'image/jpeg',9803,'testimonials/1.jpg','[]','2025-09-11 01:37:56','2025-09-11 01:37:56',NULL,'public'),(109,0,'2','2',6,'image/jpeg',9803,'testimonials/2.jpg','[]','2025-09-11 01:37:56','2025-09-11 01:37:56',NULL,'public'),(110,0,'3','3',6,'image/jpeg',9803,'testimonials/3.jpg','[]','2025-09-11 01:37:56','2025-09-11 01:37:56',NULL,'public'),(111,0,'4','4',6,'image/jpeg',9803,'testimonials/4.jpg','[]','2025-09-11 01:37:56','2025-09-11 01:37:56',NULL,'public'),(112,0,'1','1',7,'image/jpeg',11475,'sliders/1.jpg','[]','2025-09-11 01:37:57','2025-09-11 01:37:57',NULL,'public'),(113,0,'2','2',7,'image/jpeg',11475,'sliders/2.jpg','[]','2025-09-11 01:37:57','2025-09-11 01:37:57',NULL,'public'),(114,0,'3','3',7,'image/jpeg',11475,'sliders/3.jpg','[]','2025-09-11 01:37:57','2025-09-11 01:37:57',NULL,'public'),(115,0,'cod','cod',8,'image/png',12121,'payments/cod.png','[]','2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,'public'),(116,0,'bank-transfer','bank-transfer',8,'image/png',29089,'payments/bank-transfer.png','[]','2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,'public'),(117,0,'stripe','stripe',8,'image/webp',7516,'payments/stripe.webp','[]','2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,'public'),(118,0,'paypal','paypal',8,'image/png',3001,'payments/paypal.png','[]','2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,'public'),(119,0,'mollie','mollie',8,'image/png',8968,'payments/mollie.png','[]','2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,'public'),(120,0,'paystack','paystack',8,'image/png',31015,'payments/paystack.png','[]','2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,'public'),(121,0,'razorpay','razorpay',8,'image/png',8489,'payments/razorpay.png','[]','2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,'public'),(122,0,'sslcommerz','sslcommerz',8,'image/png',3482,'payments/sslcommerz.png','[]','2025-09-11 01:37:58','2025-09-11 01:37:58',NULL,'public'),(123,0,'american-express','american-express',9,'image/png',2377,'general/american-express.png','[]','2025-09-11 01:38:00','2025-09-11 01:38:00',NULL,'public'),(124,0,'b-1','b-1',9,'image/jpeg',6042,'general/b-1.jpg','[]','2025-09-11 01:38:00','2025-09-11 01:38:00',NULL,'public'),(125,0,'b-2','b-2',9,'image/jpeg',6042,'general/b-2.jpg','[]','2025-09-11 01:38:00','2025-09-11 01:38:00',NULL,'public'),(126,0,'b-3','b-3',9,'image/jpeg',6042,'general/b-3.jpg','[]','2025-09-11 01:38:00','2025-09-11 01:38:00',NULL,'public'),(127,0,'discover','discover',9,'image/png',1709,'general/discover.png','[]','2025-09-11 01:38:00','2025-09-11 01:38:00',NULL,'public'),(128,0,'favicon','favicon',9,'image/png',1034,'general/favicon.png','[]','2025-09-11 01:38:00','2025-09-11 01:38:00',NULL,'public'),(129,0,'furniture-banner3','furniture-banner3',9,'image/jpeg',26362,'general/furniture-banner3.jpg','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(130,0,'insta-1','insta-1',9,'image/jpeg',1556,'general/insta-1.jpg','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(131,0,'logo-light','logo-light',9,'image/png',3047,'general/logo-light.png','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(132,0,'logo','logo',9,'image/png',3370,'general/logo.png','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(133,0,'master-card','master-card',9,'image/png',2539,'general/master-card.png','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(134,0,'newsletter','newsletter',9,'image/jpeg',5748,'general/newsletter.jpg','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(135,0,'paypal','paypal',9,'image/png',1925,'general/paypal.png','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(136,0,'visa','visa',9,'image/png',2033,'general/visa.png','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(137,0,'1','1',10,'image/jpeg',13645,'promotion/1.jpg','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(138,0,'10','10',10,'image/jpeg',19195,'promotion/10.jpg','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(139,0,'2','2',10,'image/jpeg',13930,'promotion/2.jpg','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(140,0,'3','3',10,'image/jpeg',16561,'promotion/3.jpg','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(141,0,'4','4',10,'image/jpeg',17689,'promotion/4.jpg','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(142,0,'5','5',10,'image/jpeg',17665,'promotion/5.jpg','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(143,0,'6','6',10,'image/jpeg',8445,'promotion/6.jpg','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(144,0,'7','7',10,'image/jpeg',8675,'promotion/7.jpg','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(145,0,'8','8',10,'image/jpeg',9228,'promotion/8.jpg','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public'),(146,0,'9','9',10,'image/jpeg',11178,'promotion/9.jpg','[]','2025-09-11 01:38:01','2025-09-11 01:38:01',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2025-09-11 01:37:39','2025-09-11 01:37:39',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2025-09-11 01:37:40','2025-09-11 01:37:40',NULL),(3,0,'customers',NULL,'customers',0,'2025-09-11 01:37:41','2025-09-11 01:37:41',NULL),(4,0,'products',NULL,'products',0,'2025-09-11 01:37:45','2025-09-11 01:37:45',NULL),(5,0,'news',NULL,'news',0,'2025-09-11 01:37:55','2025-09-11 01:37:55',NULL),(6,0,'testimonials',NULL,'testimonials',0,'2025-09-11 01:37:56','2025-09-11 01:37:56',NULL),(7,0,'sliders',NULL,'sliders',0,'2025-09-11 01:37:57','2025-09-11 01:37:57',NULL),(8,0,'payments',NULL,'payments',0,'2025-09-11 01:37:58','2025-09-11 01:37:58',NULL),(9,0,'general',NULL,'general',0,'2025-09-11 01:38:00','2025-09-11 01:38:00',NULL),(10,0,'promotion',NULL,'promotion',0,'2025-09-11 01:38:01','2025-09-11 01:38:01',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-09-11 01:38:00','2025-09-11 01:38:00');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(2,1,1,NULL,NULL,'/',NULL,0,'Homepage',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(3,1,1,10,'Botble\\Page\\Models\\Page','/homepage-2',NULL,1,'Homepage 2',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(4,1,1,11,'Botble\\Page\\Models\\Page','/homepage-3',NULL,2,'Homepage 3',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(5,1,1,12,'Botble\\Page\\Models\\Page','/homepage-4',NULL,3,'Homepage 4',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(6,1,1,13,'Botble\\Page\\Models\\Page','/homepage-5',NULL,4,'Homepage 5',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(7,1,1,14,'Botble\\Page\\Models\\Page','/homepage-6',NULL,5,'Homepage 6',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(8,1,0,NULL,NULL,'/products',NULL,1,'Products',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(9,1,0,NULL,NULL,'#',NULL,2,'Shop',NULL,'_self',1,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(10,1,9,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Product Category',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(11,1,9,1,'Botble\\Ecommerce\\Models\\Brand',NULL,NULL,1,'Brand',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(12,1,9,1,'Botble\\Ecommerce\\Models\\ProductTag',NULL,NULL,2,'Product Tag',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(13,1,9,NULL,NULL,'products/beat-headphone',NULL,3,'Product Single',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(14,1,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Blog',NULL,'_self',1,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(15,1,14,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(16,1,14,1,'Botble\\Blog\\Models\\Category',NULL,NULL,1,'Blog Category',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(17,1,14,1,'Botble\\Blog\\Models\\Tag',NULL,NULL,2,'Blog Tag',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(18,1,14,NULL,NULL,'blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,3,'Blog Single',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(19,1,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,4,'FAQ',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(20,1,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,5,'Contact',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(21,2,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About Us',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(22,2,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,1,'FAQ',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(23,2,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Location',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(24,2,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Affiliates',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(25,2,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Contact',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(26,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Television',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(27,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Mobile',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(28,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,2,'Headphone',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(29,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,3,'Watches',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(30,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,4,'Game',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(31,4,0,NULL,NULL,'/customer/overview',NULL,0,'My profile',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(32,4,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(33,4,0,NULL,NULL,'customer/orders',NULL,2,'Orders',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00'),(34,4,0,NULL,NULL,'/orders/tracking',NULL,3,'Order tracking',NULL,'_self',0,'2025-09-11 01:38:00','2025-09-11 01:38:00');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-09-11 01:38:00','2025-09-11 01:38:00'),(2,'Useful Links','useful-links','published','2025-09-11 01:38:00','2025-09-11 01:38:00'),(3,'Categories','categories','published','2025-09-11 01:38:00','2025-09-11 01:38:00'),(4,'My Account','my-account','published','2025-09-11 01:38:00','2025-09-11 01:38:00');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'faq_ids','[[1,3,5,8,9]]',1,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:52','2025-09-11 01:37:52'),(2,'faq_ids','[[1,5,7,9,10]]',2,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:52','2025-09-11 01:37:52'),(3,'faq_ids','[[1,3,4,6,8]]',3,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:52','2025-09-11 01:37:52'),(4,'faq_ids','[[1,4,6,9,10]]',4,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:52','2025-09-11 01:37:52'),(5,'faq_ids','[[1,3,4,8,9]]',5,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:52','2025-09-11 01:37:52'),(6,'faq_ids','[[1,3,5,7,8]]',6,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(7,'faq_ids','[[1,5,7,8,10]]',7,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(8,'faq_ids','[[1,3,7,9,10]]',8,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(9,'faq_ids','[[1,4,5,8,10]]',9,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(10,'faq_ids','[[5,6,8,9,10]]',10,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(11,'faq_ids','[[1,2,7,8,9]]',11,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(12,'faq_ids','[[1,5,6,7,8]]',12,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(13,'faq_ids','[[3,4,6,7,8]]',13,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(14,'faq_ids','[[1,4,5,6,9]]',14,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(15,'faq_ids','[[3,4,7,8,9]]',15,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(16,'faq_ids','[[1,3,4,6,10]]',16,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(17,'faq_ids','[[2,3,6,8,9]]',17,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(18,'faq_ids','[[1,2,6,8,9]]',18,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(19,'faq_ids','[[1,5,6,8,10]]',19,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(20,'faq_ids','[[4,5,6,8,9]]',20,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(21,'faq_ids','[[1,2,3,5,6]]',21,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(22,'faq_ids','[[1,3,4,5,10]]',22,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(23,'faq_ids','[[1,4,8,9,10]]',23,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(24,'faq_ids','[[1,2,3,8,10]]',24,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(25,'faq_ids','[[3,4,5,6,7]]',25,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(26,'faq_ids','[[5,6,7,8,9]]',26,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(27,'faq_ids','[[2,3,4,8,9]]',27,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(28,'faq_ids','[[1,5,7,8,10]]',28,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:53','2025-09-11 01:37:53'),(29,'faq_ids','[[1,2,3,4,6]]',29,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:54','2025-09-11 01:37:54'),(30,'faq_ids','[[1,3,4,7,8]]',30,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:54','2025-09-11 01:37:54'),(31,'faq_ids','[[2,4,6,8,9]]',31,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:37:54','2025-09-11 01:37:54'),(32,'button_text','[\"Shop now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-09-11 01:37:57','2025-09-11 01:37:57'),(33,'sub_title','[\"New Tranding\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-09-11 01:37:57','2025-09-11 01:37:57'),(34,'button_text','[\"Discover now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-09-11 01:37:57','2025-09-11 01:37:57'),(35,'button_text','[\"Shop now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-09-11 01:37:57','2025-09-11 01:37:57');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_09_14_021936_update_index_for_slugs_table',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(34,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(35,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(36,'2024_07_12_100000_change_random_hash_for_media',1),(37,'2024_09_30_024515_create_sessions_table',1),(38,'2024_12_19_000001_create_device_tokens_table',1),(39,'2024_12_19_000002_create_push_notifications_table',1),(40,'2024_12_19_000003_create_push_notification_recipients_table',1),(41,'2024_12_30_000001_create_user_settings_table',1),(42,'2025_07_06_030754_add_phone_to_users_table',1),(43,'2025_07_31_add_performance_indexes_to_slugs_table',1),(44,'2020_11_18_150916_ads_create_ads_table',2),(45,'2021_12_02_035301_add_ads_translations_table',2),(46,'2023_04_17_062645_add_open_in_new_tab',2),(47,'2023_11_07_023805_add_tablet_mobile_image',2),(48,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(49,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',2),(50,'2024_04_27_100730_improve_analytics_setting',3),(51,'2015_06_29_025744_create_audit_history',4),(52,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(53,'2025_05_05_000001_add_user_type_to_audit_histories_table',4),(54,'2015_06_18_033822_create_blog_table',5),(55,'2021_02_16_092633_remove_default_value_for_author_type',5),(56,'2021_12_03_030600_create_blog_translations',5),(57,'2022_04_19_113923_add_index_to_table_posts',5),(58,'2023_08_29_074620_make_column_author_id_nullable',5),(59,'2024_07_30_091615_fix_order_column_in_categories_table',5),(60,'2025_01_06_033807_add_default_value_for_categories_author_type',5),(61,'2016_06_17_091537_create_contacts_table',6),(62,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(63,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(64,'2024_03_25_000001_update_captcha_settings_for_contact',6),(65,'2024_04_19_063914_create_custom_fields_table',6),(66,'2020_03_05_041139_create_ecommerce_tables',7),(67,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(68,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(69,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(70,'2021_02_18_073505_update_table_ec_reviews',7),(71,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(72,'2021_03_10_025153_change_column_tax_amount',7),(73,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(74,'2021_04_28_074008_ecommerce_create_product_label_table',7),(75,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(76,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(77,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(78,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(79,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(80,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(81,'2021_11_23_071403_correct_languages_for_product_variations',7),(82,'2021_11_28_031808_add_product_tags_translations',7),(83,'2021_12_01_031123_add_featured_image_to_ec_products',7),(84,'2022_01_01_033107_update_table_ec_shipments',7),(85,'2022_02_16_042457_improve_product_attribute_sets',7),(86,'2022_03_22_075758_correct_product_name',7),(87,'2022_04_19_113334_add_index_to_ec_products',7),(88,'2022_04_28_144405_remove_unused_table',7),(89,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(90,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(91,'2022_06_16_095633_add_index_to_some_tables',7),(92,'2022_06_30_035148_create_order_referrals_table',7),(93,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(94,'2022_08_14_032836_create_ec_order_returns_table',7),(95,'2022_08_14_033554_create_ec_order_return_items_table',7),(96,'2022_08_15_040324_add_billing_address',7),(97,'2022_08_30_091114_support_digital_products_table',7),(98,'2022_09_13_095744_create_options_table',7),(99,'2022_09_13_104347_create_option_value_table',7),(100,'2022_10_05_163518_alter_table_ec_order_product',7),(101,'2022_10_12_041517_create_invoices_table',7),(102,'2022_10_12_142226_update_orders_table',7),(103,'2022_10_13_024916_update_table_order_returns',7),(104,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(105,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(106,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(107,'2022_11_19_041643_add_ec_tax_product_table',7),(108,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(109,'2022_12_17_041532_fix_address_in_order_invoice',7),(110,'2022_12_26_070329_create_ec_product_views_table',7),(111,'2023_01_04_033051_fix_product_categories',7),(112,'2023_01_09_050400_add_ec_global_options_translations_table',7),(113,'2023_01_10_093754_add_missing_option_value_id',7),(114,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(115,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(116,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(117,'2023_02_27_095752_remove_duplicate_reviews',7),(118,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(119,'2023_04_21_082427_create_ec_product_categorizables_table',7),(120,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(121,'2023_05_17_025812_fix_invoice_issue',7),(122,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(123,'2023_05_27_144611_fix_exchange_rate_setting',7),(124,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(125,'2023_06_30_042512_create_ec_order_tax_information_table',7),(126,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(127,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(128,'2023_08_15_064505_create_ec_tax_rules_table',7),(129,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(130,'2023_08_22_094114_drop_unique_for_barcode',7),(131,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(132,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(133,'2023_09_19_024955_create_discount_product_categories_table',7),(134,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(135,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(136,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(137,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(138,'2023_12_25_040604_ec_create_review_replies_table',7),(139,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(140,'2024_01_16_070706_fix_translation_tables',7),(141,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(142,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(143,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(144,'2024_03_29_042242_migrate_old_captcha_settings',7),(145,'2024_03_29_093946_create_ec_order_return_histories_table',7),(146,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(147,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(148,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(149,'2024_05_07_073153_improve_table_wishlist',7),(150,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(151,'2024_05_15_021503_fix_invoice_path',7),(152,'2024_06_20_160724_create_ec_shared_wishlists_table',7),(153,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',7),(154,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',7),(155,'2024_07_14_071826_make_customer_email_nullable',7),(156,'2024_07_15_104916_add_video_media_column_to_ec_products_table',7),(157,'2024_07_26_052530_add_percentage_to_tax_rules_table',7),(158,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',7),(159,'2024_08_19_132849_create_specification_tables',7),(160,'2024_09_07_060744_add_author_column_to_specification_tables',7),(161,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',7),(162,'2024_09_25_073928_remove_wrong_product_slugs',7),(163,'2025_01_10_000000_fix_order_invoice_rounding_issues',7),(164,'2025_01_15_050230_migrate_old_theme_options',7),(165,'2025_01_15_optimize_products_export_index',7),(166,'2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table',7),(167,'2025_01_24_044641_migrate_old_country_data',7),(168,'2025_01_28_233602_add_private_notes_into_ec_orders_table',7),(169,'2025_02_13_021247_add_tax_translations',7),(170,'2025_02_24_152621_add_text_color_to_product_labels_table',7),(171,'2025_04_12_000001_add_payment_fee_to_ec_orders_table',7),(172,'2025_04_12_000002_add_payment_fee_to_ec_invoices_table',7),(173,'2025_05_05_092036_make_user_id_and_tax_amount_nullable',7),(174,'2025_05_15_082342_drop_email_unique_index_in_ec_customers_table',7),(175,'2025_06_07_081731_add_translations_for_specification_groups_and_tables',7),(176,'2025_06_17_091813_increase_note_in_shipments_table',7),(177,'2025_06_24_000001_create_ec_product_license_codes_table',7),(178,'2025_06_24_080427_add_license_code_type_to_products_table',7),(179,'2025_07_06_062402_create_ec_customer_deletion_requests_table',7),(180,'2025_07_07_161729_change_license_code_to_text_in_ec_product_license_codes_table',7),(181,'2025_07_08_162756_increase_license_code_column_size_in_ec_order_product_table',7),(182,'2025_07_09_000001_add_customer_address_fields_to_ec_invoices_table',7),(183,'2025_07_15_090809_create_ec_abandoned_carts_table',7),(184,'2025_07_24_120510_increase_barcode_column_length_in_ec_products_table',7),(185,'2025_07_31_133600_add_performance_indexes_to_ec_product_categories_table',7),(186,'2025_08_01_161205_optimize_product_variation_query_indexes',7),(187,'2025_08_08_145059_correct_tax_amount_in_order_and_invoice_tables',7),(188,'2025_09_05_025247_create_ec_product_specification_attribute_translations_table',7),(189,'2025_09_08_025516_add_variations_count_to_ec_products_table',7),(190,'2025_09_08_030755_add_reviews_cache_to_ec_products_table',7),(191,'2025_09_08_080248_add_slug_column_to_ec_product_categories_table',7),(192,'2025_09_08_080330_add_slug_column_to_ec_product_categories_translations_table',7),(193,'2025_09_08_080443_populate_slug_column_for_product_categories',7),(194,'2025_09_08_081216_add_slug_column_to_ec_products_table',7),(195,'2025_09_08_081237_add_slug_column_to_ec_products_translations_table',7),(196,'2025_09_08_081321_populate_slug_column_for_products',7),(197,'2025_09_10_073321_add_performance_indexes_to_ecommerce_tables',7),(198,'2018_07_09_221238_create_faq_table',8),(199,'2021_12_03_082134_create_faq_translations',8),(200,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(201,'2016_10_03_032336_create_languages_table',9),(202,'2023_09_14_022423_add_index_for_language_table',9),(203,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(204,'2021_12_03_075608_create_page_translations',10),(205,'2023_07_06_011444_create_slug_translations_table',10),(206,'2019_11_18_061011_create_country_table',11),(207,'2021_12_03_084118_create_location_translations',11),(208,'2021_12_03_094518_migrate_old_location_data',11),(209,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(210,'2022_01_16_085908_improve_plugin_location',11),(211,'2022_08_04_052122_delete_location_backup_tables',11),(212,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(213,'2023_07_26_041451_add_more_columns_to_location_table',11),(214,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(215,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(216,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(217,'2024_08_17_094600_add_image_into_countries',11),(218,'2025_01_08_093652_add_zip_code_to_cities',11),(219,'2025_07_31_083459_add_indexes_for_location_search_performance',11),(220,'2017_10_24_154832_create_newsletter_table',12),(221,'2024_03_25_000001_update_captcha_settings_for_newsletter',12),(222,'2017_05_18_080441_create_payment_tables',13),(223,'2021_03_27_144913_add_customer_type_into_table_payments',13),(224,'2021_05_24_034720_make_column_currency_nullable',13),(225,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(226,'2021_10_19_020859_update_metadata_field',13),(227,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(228,'2022_07_07_153354_update_charge_id_in_table_payments',13),(229,'2024_07_04_083133_create_payment_logs_table',13),(230,'2025_04_12_000003_add_payment_fee_to_payments_table',13),(231,'2025_05_22_000001_add_payment_fee_type_to_settings_table',13),(232,'2017_07_11_140018_create_simple_slider_table',14),(233,'2025_04_08_040931_create_social_logins_table',15),(234,'2018_07_09_214610_create_testimonial_table',16),(235,'2021_12_03_083642_create_testimonials_translations',16),(236,'2016_10_07_193005_create_translations_table',17),(237,'2023_12_12_105220_drop_translations_table',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" title=\"Top Categories\" subtitle=\"Browse our most popular product categories, handpicked for your convenience.\"][/featured-product-categories]</div><div>[flash-sale enable_lazy_loading=\"yes\" title=\"Best deals for you\"][/flash-sale]</div><div>[product-collections enable_lazy_loading=\"yes\" title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" title=\"Trending Products\"][/trending-products]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Our Brands\"][/featured-brands]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[testimonials enable_lazy_loading=\"yes\" title=\"Our Client Say!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Free shipping on all US order or order above $200\" icon2=\"flaticon-money-back\" title2=\"30 Day Returns Guarantee\" subtitle2=\"Simply return it within 30 days for an exchange\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Contact us 24 hours a day, 7 days a week\"][/our-features]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(2,'Contact us','<div>[contact-form][/contact-form]</div><div>[google-map]959 Homestead Street Eastlake, NYC[/google-map]</div>',1,NULL,'default',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(3,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(4,'About us','<p>After a while she was now about a thousand times as large as himself, and this time the Queen left off, quite out of this ointment--one shilling the box-- Allow me to introduce it.\' \'I don\'t see how he did it,) he did it,) he did it,) he did with the bread-knife.\' The March Hare interrupted, yawning. \'I\'m getting tired of swimming about here, O Mouse!\' (Alice thought this must ever be A secret, kept from all the time they had to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a.</p>',1,NULL,'default',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(5,'FAQ','<div>[faqs enable_lazy_loading=\"yes\"][/faqs]</div>',1,NULL,'default',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(6,'Location','<p>Alice in a great many teeth, so she turned away. \'Come back!\' the Caterpillar sternly. \'Explain yourself!\' \'I can\'t help it,\' said Five, \'and I\'ll tell you my history, and you\'ll understand why it is you hate--C and D,\' she added in an offended tone, \'so I can\'t remember,\' said the Gryphon, with a yelp of delight, which changed into alarm in another moment, when she had never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it.</p>',1,NULL,'default',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(7,'Affiliates','<p>Gryphon, lying fast asleep in the world! Oh, my dear paws! Oh my dear paws! Oh my dear Dinah! I wonder if I must, I must,\' the King replied. Here the Dormouse into the garden, called out to sea as you are; secondly, because she was up to her usual height. It was as much as she spoke. \'I must be a footman because he taught us,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you want to go with the Dormouse. \'Write that down,\' the King in a trembling voice:-- \'I passed by his.</p>',1,NULL,'default',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(8,'Brands','<p>[all-brands enable_lazy_loading=\"yes\"][/all-brands]</p>',1,NULL,'default',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(10,'Homepage 2','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-2\" key=\"home-slider\"][/simple-slider]</div><div>[product-collections enable_lazy_loading=\"yes\" title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"DHAEBCMWGYJG\" key_2=\"MDEUVQI9QPKM\" style=\"style-2\"][/theme-ads]</div><div>[flash-sale enable_lazy_loading=\"yes\" style=\"style-2\" title=\"Deal Of The Days\" flash_sale_id=\"1\"][/flash-sale]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Featured Products\" style=\"style-2\"][/product-blocks]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Our Brands\"][/featured-brands]</div><div>[newsletter-form style=\"style-2\" title=\"Subscribe Our Newsletter\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(11,'Homepage 3','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-3\" key=\"home-slider\"][/simple-slider]</div><div>[our-features style=\"style-3\" icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Worldwide\" icon2=\"flaticon-money-back\" title2=\"Money Returns\" subtitle2=\"30 Days money return\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Customer Support\" icon4=\"flaticon-lock\" title4=\"Payment Security\" subtitle4=\"Safe Payment\"][/our-features]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Exclusive Products\" style=\"style-3\" number_of_displays=\"8\"][/product-blocks]</div><div>[theme-ads style=\"style-3\" key_1=\"EYMG7NGZTHJL\" key_2=\"NKWBGV6NAC3M\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" style=\"style-3\" title=\"Trending Items\"][/trending-products]</div><div>[instagram enable_lazy_loading=\"yes\" title=\"instagram\" username=\"@shoppingzone\" images=\"general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg\"][/instagram]</div><div>[featured-brands enable_lazy_loading=\"yes\" style=\"style-3\" title=\"Our Brands\"][/featured-brands]</div>',1,NULL,'homepage',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(12,'Homepage 4','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-4\" key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" style=\"style-4\" link=\"products\" title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[trending-products enable_lazy_loading=\"yes\" style=\"style-4\" number_of_displays=\"8\" title=\"Our Top Products\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/trending-products]</div><div>[flash-sale enable_lazy_loading=\"yes\" style=\"style-4\" flash_sale_id=\"1\" background_image=\"general/furniture-banner3.jpg\" show_newsletter=\"yes\" title=\"Big Sale Deal\" description=\"Sale 40% Off\" button_url=\"/products\"][/flash-sale]</div><div>[product-blocks enable_lazy_loading=\"yes\" style=\"style-4\" on_sale_product_title=\"Special Offers\" on_sale_product_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/product-blocks]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Latest News\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.\"][/featured-news]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(13,'Homepage 5','<div>[simple-slider collapsing_product_categories=\"no\" style=\"style-5\" key=\"home-slider\" ads_1=\"WF2VEBKBGUFA\" ads_2=\"YKE9S2TUEEJB\"][/simple-slider]</div><div>[product-collections enable_lazy_loading=\"yes\" style=\"style-5\" ads_key=\"WF2VEBKBGUFA\" title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[flash-sale enable_lazy_loading=\"yes\" title=\"Best deals for you\"][/flash-sale]</div><div>[trending-products enable_lazy_loading=\"yes\" ads_key=\"YKE9S2TUEEJB\" title=\"Trending Products\"][/trending-products]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Our Brands\"][/featured-brands]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(14,'Homepage 6','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-6\" key=\"home-slider\"][/simple-slider]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[product-collections enable_lazy_loading=\"yes\" style=\"style-6\" title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"7W3YFO7XE422\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" title=\"Trending Products\"][/trending-products]</div><div>[testimonials enable_lazy_loading=\"yes\" title=\"Our Client Say!\"][/testimonials]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[featured-brands title=\"Our Brands\" style=\"style-3\"][/featured-brands]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(4,1),(2,2),(3,2),(2,3),(3,3),(2,4),(3,4),(1,5),(3,5),(1,6),(4,6),(2,7),(4,7),(2,8),(3,8),(1,9),(3,9),(1,10),(4,10),(1,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',378,NULL,'2025-09-11 01:37:56','2025-09-11 01:37:56'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',676,NULL,'2025-09-11 01:37:56','2025-09-11 01:37:56'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1903,NULL,'2025-09-11 01:37:56','2025-09-11 01:37:56'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2198,NULL,'2025-09-11 01:37:56','2025-09-11 01:37:56'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',2184,NULL,'2025-09-11 01:37:56','2025-09-11 01:37:56'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2391,NULL,'2025-09-11 01:37:56','2025-09-11 01:37:56'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1329,NULL,'2025-09-11 01:37:56','2025-09-11 01:37:56'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',425,NULL,'2025-09-11 01:37:56','2025-09-11 01:37:56'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1442,NULL,'2025-09-11 01:37:56','2025-09-11 01:37:56'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1547,NULL,'2025-09-11 01:37:56','2025-09-11 01:37:56'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',243,NULL,'2025-09-11 01:37:56','2025-09-11 01:37:56');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notification_recipients`
--

DROP TABLE IF EXISTS `push_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notification_recipients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `push_notification_id` bigint unsigned NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` json DEFAULT NULL,
  `error_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  KEY `pnr_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notification_recipients`
--

LOCK TABLES `push_notification_recipients` WRITE;
/*!40000 ALTER TABLE `push_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notifications`
--

DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_count` int NOT NULL DEFAULT '0',
  `failed_count` int NOT NULL DEFAULT '0',
  `delivered_count` int NOT NULL DEFAULT '0',
  `read_count` int NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  KEY `push_notifications_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notifications`
--

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-09-11 01:37:57','2025-09-11 01:37:57');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','d7f34bf27fe308a4ba49909b478a43e8',NULL,'2025-09-11 01:37:58'),(2,'api_enabled','0',NULL,'2025-09-11 01:37:58'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2025-09-11 01:37:58'),(4,'analytics_dashboard_widgets','0','2025-09-11 01:37:35','2025-09-11 01:37:35'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-09-11 01:37:36','2025-09-11 01:37:36'),(6,'api_layer_api_key','',NULL,'2025-09-11 01:37:58'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-09-11 01:37:39','2025-09-11 01:37:39'),(10,'payment_cod_fee_type','fixed',NULL,'2025-09-11 01:37:58'),(11,'payment_bank_transfer_fee_type','fixed',NULL,'2025-09-11 01:37:58'),(12,'theme','shopwise',NULL,'2025-09-11 01:37:58'),(13,'show_admin_bar','1',NULL,'2025-09-11 01:37:58'),(14,'language_hide_default','1',NULL,'2025-09-11 01:37:58'),(16,'language_display','all',NULL,'2025-09-11 01:37:58'),(17,'language_hide_languages','[]',NULL,'2025-09-11 01:37:58'),(18,'language_switcher_display','dropdown',NULL,'2025-09-11 01:37:58'),(19,'admin_favicon','general/favicon.png',NULL,'2025-09-11 01:37:58'),(20,'admin_logo','general/logo-light.png',NULL,'2025-09-11 01:37:58'),(21,'simple_slider_using_assets','0',NULL,'2025-09-11 01:37:58'),(22,'payment_cod_status','1',NULL,'2025-09-11 01:37:58'),(23,'payment_bank_transfer_status','1',NULL,'2025-09-11 01:37:58'),(24,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-09-11 01:37:58'),(25,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-09-11 01:37:58'),(26,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-09-11 01:37:58'),(27,'plugins_ecommerce_customer_new_order_status','0',NULL,'2025-09-11 01:37:58'),(28,'plugins_ecommerce_admin_new_order_status','0',NULL,'2025-09-11 01:37:58'),(29,'ecommerce_is_enabled_support_digital_products','1',NULL,'2025-09-11 01:37:58'),(30,'ecommerce_enable_license_codes_for_digital_products','1',NULL,'2025-09-11 01:37:58'),(31,'ecommerce_auto_complete_digital_orders_after_payment','1',NULL,'2025-09-11 01:37:58'),(32,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2025-09-11 01:37:58'),(33,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2025-09-11 01:37:58'),(34,'ecommerce_store_order_prefix','SF',NULL,'2025-09-11 01:37:58'),(35,'ecommerce_enable_product_specification','1',NULL,'2025-09-11 01:37:58'),(36,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2025-09-11 01:37:58'),(37,'payment_cod_logo','payments/cod.png',NULL,'2025-09-11 01:37:58'),(38,'payment_bank_transfer_logo','payments/bank-transfer.png',NULL,'2025-09-11 01:37:58'),(39,'payment_stripe_logo','payments/stripe.webp',NULL,'2025-09-11 01:37:58'),(40,'payment_paypal_logo','payments/paypal.png',NULL,'2025-09-11 01:37:58'),(41,'payment_mollie_logo','payments/mollie.png',NULL,'2025-09-11 01:37:58'),(42,'payment_paystack_logo','payments/paystack.png',NULL,'2025-09-11 01:37:58'),(43,'payment_razorpay_logo','payments/razorpay.png',NULL,'2025-09-11 01:37:58'),(44,'payment_sslcommerz_logo','payments/sslcommerz.png',NULL,'2025-09-11 01:37:58'),(45,'permalink-botble-blog-models-post','blog',NULL,'2025-09-11 01:37:58'),(46,'permalink-botble-blog-models-category','blog',NULL,'2025-09-11 01:37:58'),(47,'ecommerce_store_name','Shopwise',NULL,NULL),(48,'ecommerce_store_phone','123-456-7890',NULL,NULL),(49,'ecommerce_store_address','123 Street, Old Trafford',NULL,NULL),(50,'ecommerce_store_state','New York',NULL,NULL),(51,'ecommerce_store_city','New York',NULL,NULL),(52,'ecommerce_store_country','US',NULL,NULL),(53,'theme-shopwise-site_title','Shopwise - Laravel Ecommerce system',NULL,NULL),(54,'theme-shopwise-seo_description','Shopwise is designed for the eCommerce site. His design is suitable for small and big projects. It was built for your Shopping store, fashion store, clothing store, digital store, watch store, men store, women store, kids store, accessories store, Shoe store and etc.',NULL,NULL),(55,'theme-shopwise-copyright','© 2025 Botble Technologies. All Rights Reserved.',NULL,NULL),(56,'theme-shopwise-favicon','general/favicon.png',NULL,NULL),(57,'theme-shopwise-logo','general/logo.png',NULL,NULL),(58,'theme-shopwise-logo_footer','general/logo-light.png',NULL,NULL),(59,'theme-shopwise-address','959 Homestead Street Eastlake, NYC',NULL,NULL),(60,'theme-shopwise-hotline','123-456-7890',NULL,NULL),(61,'theme-shopwise-email','info@sitename.com',NULL,NULL),(62,'theme-shopwise-payment_methods','[\"general\\/visa.png\",\"general\\/paypal.png\",\"general\\/master-card.png\",\"general\\/discover.png\",\"general\\/american-express.png\"]',NULL,NULL),(63,'theme-shopwise-newsletter_image','general/newsletter.jpg',NULL,NULL),(64,'theme-shopwise-homepage_id','1',NULL,NULL),(65,'theme-shopwise-blog_page_id','3',NULL,NULL),(66,'theme-shopwise-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(67,'theme-shopwise-cookie_consent_learn_more_url','https://shopwise.test/cookie-policy',NULL,NULL),(68,'theme-shopwise-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(69,'theme-shopwise-about-us','If you are going to use of Lorem Ipsum need to be sure there isn\'t hidden of text',NULL,NULL),(73,'theme-shopwise-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"ion-social-facebook\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#3b5998\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"ion-social-twitter\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#00acee\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"ion-social-youtube\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#c4302b\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"ion-social-instagram\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#3f729b\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Woman Fashion','sliders/1.jpg','products','Get up to 50% off Today Only!',1,'2025-09-11 01:37:57','2025-09-11 01:37:57'),(2,1,'Man Fashion','sliders/2.jpg','products','50% off in all products',2,'2025-09-11 01:37:57','2025-09-11 01:37:57'),(3,1,'Summer Sale','sliders/3.jpg','products','Taking your Viewing Experience to Next Level',3,'2025-09-11 01:37:57','2025-09-11 01:37:57');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider',NULL,'published','2025-09-11 01:37:57','2025-09-11 01:37:57');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`),
  KEY `idx_slugs_reference` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-11 01:37:40','2025-09-11 01:37:40'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-11 01:37:40','2025-09-11 01:37:40'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-11 01:37:40','2025-09-11 01:37:40'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-11 01:37:40','2025-09-11 01:37:40'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-11 01:37:40','2025-09-11 01:37:40'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-11 01:37:40','2025-09-11 01:37:40'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-11 01:37:40','2025-09-11 01:37:40'),(8,'television',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(9,'home-audio-theaters',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(10,'tv-videos',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(11,'camera-photos-videos',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(12,'cellphones-accessories',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(13,'headphones',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(14,'videos-games',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(15,'wireless-speakers',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(16,'office-electronic',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(17,'mobile',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(18,'digital-cables',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(19,'audio-video-cables',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(20,'batteries',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(21,'headphone',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(22,'computer-tablets',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(23,'laptop',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(24,'monitors',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(25,'computer-components',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(26,'watches',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(27,'drive-storages',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(28,'gaming-laptop',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(29,'security-protection',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(30,'accessories',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(31,'game',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(32,'camera',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(33,'audio',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(34,'mobile-tablet',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(35,'accessories',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(36,'home-audio-theater',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(37,'tv-smart-box',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(38,'printer',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(39,'computer',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(40,'fax-machine',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(41,'mouse',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:37:41','2025-09-11 01:37:41'),(42,'smart-home-speaker',1,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:52','2025-09-11 01:37:52'),(43,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:52','2025-09-11 01:37:52'),(44,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:52','2025-09-11 01:37:52'),(45,'chikie-bluetooth-speaker-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:52','2025-09-11 01:38:02'),(46,'camera-hikvision-hk-35vs8',5,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:52','2025-09-11 01:37:52'),(47,'camera-samsung-ss-24',6,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:52','2025-09-11 01:37:52'),(48,'leather-watch-band',7,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(49,'apple-iphone-13-plus-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:38:02'),(50,'macbook-pro-2015',9,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(51,'macbook-air-12-inch',10,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(52,'apple-watch-serial-7',11,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(53,'macbook-pro-13-inch-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:38:02'),(54,'apple-keyboard',13,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(55,'macsafe-80w',14,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(56,'hand-playstation',15,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(57,'apple-airpods-serial-3-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:38:02'),(58,'cool-smart-watches',17,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(59,'black-smart-watches',18,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(60,'leather-watch-band-serial-3',19,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(61,'macbook-pro-2015-13-inch-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:38:02'),(62,'historic-alarm-clock',21,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(63,'black-glasses',22,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(64,'phillips-mouse',23,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(65,'gaming-keyboard-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:38:02'),(66,'dual-camera-20mp',25,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(67,'smart-watches',26,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(68,'beat-headphone',27,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(69,'red-black-headphone-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:38:02'),(70,'audio-equipment',29,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:53','2025-09-11 01:37:53'),(71,'smart-televisions',30,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:54','2025-09-11 01:37:54'),(72,'samsung-smart-tv',31,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:37:54','2025-09-11 01:37:54'),(73,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-11 01:37:55','2025-09-11 01:37:55'),(74,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-11 01:37:55','2025-09-11 01:37:55'),(75,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-11 01:37:55','2025-09-11 01:37:55'),(76,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-11 01:37:55','2025-09-11 01:37:55'),(77,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-11 01:37:55','2025-09-11 01:37:55'),(78,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-11 01:37:55','2025-09-11 01:37:55'),(79,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(80,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(81,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(82,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(83,'general',1,'Botble\\Blog\\Models\\Tag','tag','2025-09-11 01:37:56','2025-09-11 01:37:56'),(84,'design',2,'Botble\\Blog\\Models\\Tag','tag','2025-09-11 01:37:56','2025-09-11 01:37:56'),(85,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2025-09-11 01:37:56','2025-09-11 01:37:56'),(86,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2025-09-11 01:37:56','2025-09-11 01:37:56'),(87,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2025-09-11 01:37:56','2025-09-11 01:37:56'),(88,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(89,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(90,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(91,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(92,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(93,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(94,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(95,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(96,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(97,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(98,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:37:56','2025-09-11 01:37:58'),(99,'homepage',1,'Botble\\Page\\Models\\Page','','2025-09-11 01:37:57','2025-09-11 01:37:57'),(100,'contact-us',2,'Botble\\Page\\Models\\Page','','2025-09-11 01:37:57','2025-09-11 01:37:57'),(101,'blog',3,'Botble\\Page\\Models\\Page','','2025-09-11 01:37:57','2025-09-11 01:37:57'),(102,'about-us',4,'Botble\\Page\\Models\\Page','','2025-09-11 01:37:57','2025-09-11 01:37:57'),(103,'faq',5,'Botble\\Page\\Models\\Page','','2025-09-11 01:37:57','2025-09-11 01:37:57'),(104,'location',6,'Botble\\Page\\Models\\Page','','2025-09-11 01:37:57','2025-09-11 01:37:57'),(105,'affiliates',7,'Botble\\Page\\Models\\Page','','2025-09-11 01:37:57','2025-09-11 01:37:57'),(106,'brands',8,'Botble\\Page\\Models\\Page','','2025-09-11 01:37:57','2025-09-11 01:37:57'),(107,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2025-09-11 01:37:57','2025-09-11 01:37:57'),(108,'homepage-2',10,'Botble\\Page\\Models\\Page','','2025-09-11 01:37:57','2025-09-11 01:37:57'),(109,'homepage-3',11,'Botble\\Page\\Models\\Page','','2025-09-11 01:37:57','2025-09-11 01:37:57'),(110,'homepage-4',12,'Botble\\Page\\Models\\Page','','2025-09-11 01:37:57','2025-09-11 01:37:57'),(111,'homepage-5',13,'Botble\\Page\\Models\\Page','','2025-09-11 01:37:57','2025-09-11 01:37:57'),(112,'homepage-6',14,'Botble\\Page\\Models\\Page','','2025-09-11 01:37:57','2025-09-11 01:37:57'),(113,'boxed-bluetooth-headphone',32,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(114,'camera-hikvision-hk-35vs8',33,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(115,'camera-hikvision-hk-35vs8',34,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(116,'camera-hikvision-hk-35vs8',35,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(117,'camera-hikvision-hk-35vs8',36,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(118,'leather-watch-band',37,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(119,'leather-watch-band',38,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(120,'apple-iphone-13-plus-digital',39,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(121,'apple-iphone-13-plus-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(122,'macbook-pro-2015',41,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(123,'macbook-pro-2015',42,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(124,'macbook-pro-2015',43,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(125,'apple-watch-serial-7',44,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(126,'apple-watch-serial-7',45,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(127,'hand-playstation',46,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(128,'black-smart-watches',47,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(129,'black-smart-watches',48,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(130,'leather-watch-band-serial-3',49,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(131,'leather-watch-band-serial-3',50,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(132,'leather-watch-band-serial-3',51,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(133,'macbook-pro-2015-13-inch-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(134,'macbook-pro-2015-13-inch-digital',53,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(135,'macbook-pro-2015-13-inch-digital',54,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(136,'historic-alarm-clock',55,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(137,'historic-alarm-clock',56,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(138,'historic-alarm-clock',57,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(139,'red-black-headphone-digital',58,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(140,'samsung-smart-tv',59,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(141,'samsung-smart-tv',60,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(142,'samsung-smart-tv',61,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02'),(143,'samsung-smart-tv',62,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:38:02','2025-09-11 01:38:02');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`),
  KEY `idx_states_name` (`name`),
  KEY `idx_states_status` (`status`),
  KEY `idx_states_country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`),
  KEY `idx_states_trans_state_lang` (`states_id`,`lang_code`),
  KEY `idx_states_trans_name` (`name`),
  KEY `idx_states_trans_states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-11 01:37:56','2025-09-11 01:37:56'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-11 01:37:56','2025-09-11 01:37:56'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-11 01:37:56','2025-09-11 01:37:56'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-11 01:37:56','2025-09-11 01:37:56'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-11 01:37:56','2025-09-11 01:37:56');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Adam Williams','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/1.jpg','CEO Of Microsoft','published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(2,'Retha Deowalim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/2.jpg','CEO Of Apple','published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(3,'Sam J. Wasim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/3.jpg','Pio Founder','published','2025-09-11 01:37:57','2025-09-11 01:37:57'),(4,'Usan Gulwarm','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/4.jpg','CEO Of Facewarm','published','2025-09-11 01:37:57','2025-09-11 01:37:57');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `user_settings_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kassandra.oberbrunner@hamill.net',NULL,NULL,'$2y$12$MOCL/w6fiLtNmw9EYxLigeR3Myrktdv5ZUgyhhxTfuHarsxjcaEYa',NULL,'2025-09-11 01:37:57','2025-09-11 01:37:57','Whitney','Koepp','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','shopwise',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}','2025-09-11 01:38:00','2025-09-11 01:38:00'),(2,'CustomMenuWidget','footer_sidebar','shopwise',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"categories\"}','2025-09-11 01:38:00','2025-09-11 01:38:00'),(3,'CustomMenuWidget','footer_sidebar','shopwise',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2025-09-11 01:38:00','2025-09-11 01:38:00'),(4,'BlogSearchWidget','primary_sidebar','shopwise',0,'{\"id\":\"BlogSearchWidget\"}','2025-09-11 01:38:00','2025-09-11 01:38:00'),(5,'BlogCategoriesWidget','primary_sidebar','shopwise',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":10}','2025-09-11 01:38:00','2025-09-11 01:38:00'),(6,'RecentPostsWidget','primary_sidebar','shopwise',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2025-09-11 01:38:00','2025-09-11 01:38:00'),(7,'TagsWidget','primary_sidebar','shopwise',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2025-09-11 01:38:00','2025-09-11 01:38:00');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-11 15:38:03
