# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.22)
# Database: urvfepvzma
# Generation Time: 2020-11-23 10:49:28 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table addons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `addons`;

CREATE TABLE `addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `unique_identifier` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `activated` int(1) NOT NULL DEFAULT '1',
  `image` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;



# Dump of table addresses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `addresses`;

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_default` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;

INSERT INTO `addresses` (`id`, `user_id`, `address`, `country`, `city`, `postal_code`, `phone`, `set_default`, `created_at`, `updated_at`)
VALUES
	(8,92,'Lot zine essalam Lot 15, etg 2, Tit Mellil Casablanca','Morocco','Casablanca','20640','+212638278023',0,'2020-11-03 10:48:08','2020-11-03 10:48:08'),
	(9,92,'Lot zine essalam Lot 15, etg 2, Tit Mellil Casablanca','Morocco','Rabat','20640','+212638278023',0,'2020-11-03 11:26:12','2020-11-03 11:26:12'),
	(10,12,'Lot zine essalam Lot 15, etg 2, Tit Mellil Casablanca','Morocco','Casablanca','20640','+212638278023',0,'2020-11-03 15:50:43','2020-11-03 15:50:43'),
	(11,101,'Bouskoura','Morocco','Bouskoura','10000','0602901690',0,'2020-11-08 08:26:18','2020-11-08 08:26:18'),
	(12,101,'Bouskoura','Morocco','oujda','10000','0602901690',0,'2020-11-09 11:41:49','2020-11-09 11:41:49');

/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table app_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `app_settings`;

CREATE TABLE `app_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_format` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `app_settings` WRITE;
/*!40000 ALTER TABLE `app_settings` DISABLE KEYS */;

INSERT INTO `app_settings` (`id`, `name`, `logo`, `currency_id`, `currency_format`, `facebook`, `twitter`, `instagram`, `youtube`, `google_plus`, `created_at`, `updated_at`)
VALUES
	(1,'Active eCommerce','uploads/logo/matggar.png',1,'symbol','https://facebook.com','https://twitter.com','https://instagram.com','https://youtube.com','https://google.com','2019-08-04 18:39:15','2019-08-04 18:39:18');

/*!40000 ALTER TABLE `app_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table attributes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attributes`;

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Size','2020-02-24 06:55:07','2020-02-24 06:55:07'),
	(2,'Fabric','2020-02-24 06:55:13','2020-02-24 06:55:13');

/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table banners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `banners`;

CREATE TABLE `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `published` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;

INSERT INTO `banners` (`id`, `photo`, `url`, `position`, `published`, `created_at`, `updated_at`)
VALUES
	(4,'uploads/banners/banner.jpg','#',1,1,'2019-03-12 06:58:23','2019-06-11 06:56:50'),
	(5,'uploads/banners/banner.jpg','#',1,1,'2019-03-12 06:58:41','2019-03-12 06:58:57'),
	(6,'uploads/banners/banner.jpg','#',2,1,'2019-03-12 06:58:52','2019-03-12 06:58:57'),
	(7,'uploads/banners/banner.jpg','#',2,1,'2019-05-26 07:16:38','2019-05-26 07:17:34'),
	(8,'uploads/banners/banner.jpg','#',2,1,'2019-06-11 07:00:06','2019-06-11 07:00:27'),
	(9,'uploads/banners/banner.jpg','#',1,1,'2019-06-11 07:00:15','2019-06-11 07:00:29'),
	(10,'uploads/banners/banner.jpg','#',1,0,'2019-06-11 07:00:24','2019-06-11 07:01:56');

/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table brands
# ------------------------------------------------------------

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top` int(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;

INSERT INTO `brands` (`id`, `name`, `logo`, `top`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`)
VALUES
	(1,'Demo brand','uploads/brands/brand.jpg',1,'Demo-brand-12','Demo brand',NULL,'2019-03-12 07:05:56','2019-08-06 08:52:40'),
	(2,'Demo brand1','uploads/brands/brand.jpg',1,'Demo-brand1','Demo brand1',NULL,'2019-03-12 07:06:13','2019-08-06 08:07:26'),
	(5,'Test',NULL,0,'Test-Q8n6o',NULL,NULL,'2020-07-18 21:41:34','2020-07-18 21:41:34');

/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table business_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `business_settings`;

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `business_settings` WRITE;
/*!40000 ALTER TABLE `business_settings` DISABLE KEYS */;

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`)
VALUES
	(1,'home_default_currency','1','2018-10-16 03:35:52','2019-01-28 02:26:53'),
	(2,'system_default_currency','29','2018-10-16 03:36:58','2020-07-19 10:04:54'),
	(3,'currency_format','1','2018-10-17 05:01:59','2018-10-17 05:01:59'),
	(4,'symbol_format','2','2018-10-17 05:01:59','2020-07-24 11:55:30'),
	(5,'no_of_decimals','2','2018-10-17 05:01:59','2020-07-29 19:56:57'),
	(6,'product_activation','1','2018-10-28 02:38:37','2019-02-04 02:11:41'),
	(7,'vendor_system_activation','1','2018-10-28 08:44:16','2019-02-04 02:11:38'),
	(8,'show_vendors','1','2018-10-28 08:44:47','2019-02-04 02:11:13'),
	(9,'paypal_payment','1','2018-10-28 08:45:16','2020-07-22 07:12:28'),
	(10,'stripe_payment','1','2018-10-28 08:45:47','2020-07-22 07:17:01'),
	(11,'cash_payment','1','2018-10-28 08:46:05','2019-01-24 04:40:18'),
	(12,'payumoney_payment','0','2018-10-28 08:46:27','2019-03-05 06:41:36'),
	(13,'best_selling','1','2018-12-24 09:13:44','2019-02-14 06:29:13'),
	(14,'paypal_sandbox','1','2019-01-16 13:44:18','2020-07-22 07:16:36'),
	(15,'sslcommerz_sandbox','1','2019-01-16 13:44:18','2019-03-14 01:07:26'),
	(16,'sslcommerz_payment','0','2019-01-24 10:39:07','2019-01-29 07:13:46'),
	(17,'vendor_commission','20','2019-01-31 07:18:04','2019-04-13 08:49:26'),
	(18,'verification_form','[{\"type\":\"text\",\"label\":\"Your name\"},{\"type\":\"text\",\"label\":\"Shop name\"},{\"type\":\"text\",\"label\":\"Email\"},{\"type\":\"text\",\"label\":\"License No\"},{\"type\":\"text\",\"label\":\"Full Address\"},{\"type\":\"text\",\"label\":\"Phone Number\"},{\"type\":\"file\",\"label\":\"Tax Papers\"}]','2019-02-03 12:36:58','2019-02-16 07:14:42'),
	(19,'google_analytics','0','2019-02-06 13:22:35','2019-02-06 13:22:35'),
	(20,'facebook_login','0','2019-02-07 13:51:59','2019-02-08 20:41:15'),
	(21,'google_login','0','2019-02-07 13:52:10','2019-02-08 20:41:14'),
	(22,'twitter_login','0','2019-02-07 13:52:20','2019-02-08 03:32:56'),
	(23,'payumoney_payment','1','2019-03-05 12:38:17','2019-03-05 12:38:17'),
	(24,'payumoney_sandbox','1','2019-03-05 12:38:17','2019-03-05 06:39:18'),
	(36,'facebook_chat','0','2019-04-15 13:45:04','2019-04-15 13:45:04'),
	(37,'email_verification','1','2019-04-30 09:30:07','2019-04-30 09:30:07'),
	(38,'wallet_system','0','2019-05-19 10:05:44','2019-05-19 04:11:57'),
	(39,'coupon_system','0','2019-06-11 11:46:18','2019-06-11 11:46:18'),
	(40,'current_version','3.0','2019-06-11 11:46:18','2019-06-11 11:46:18'),
	(41,'instamojo_payment','0','2019-07-06 11:58:03','2019-07-06 11:58:03'),
	(42,'instamojo_sandbox','1','2019-07-06 11:58:43','2019-07-06 11:58:43'),
	(43,'razorpay','0','2019-07-06 11:58:43','2019-07-06 11:58:43'),
	(44,'paystack','0','2019-07-21 15:00:38','2019-07-21 15:00:38'),
	(45,'pickup_point','0','2019-10-17 13:50:39','2019-10-17 13:50:39'),
	(46,'maintenance_mode','0','2019-10-17 13:51:04','2019-10-17 13:51:04'),
	(47,'voguepay','0','2019-10-17 13:51:24','2019-10-17 13:51:24'),
	(48,'voguepay_sandbox','0','2019-10-17 13:51:38','2019-10-17 13:51:38'),
	(50,'category_wise_commission','0','2020-01-21 08:22:47','2020-01-21 08:22:47'),
	(51,'conversation_system','1','2020-01-21 08:23:21','2020-01-21 08:23:21'),
	(52,'guest_checkout_active','1','2020-01-22 08:36:38','2020-01-22 08:36:38'),
	(53,'facebook_pixel','0','2020-01-22 12:43:58','2020-01-22 12:43:58'),
	(55,'classified_product','0','2020-05-13 15:01:05','2020-05-13 15:01:05'),
	(56,'pos_activation_for_seller','1','2020-06-11 11:45:02','2020-06-11 11:45:02'),
	(57,'shipping_type','product_wise_shipping','2020-07-01 15:49:56','2020-07-01 15:49:56'),
	(58,'flat_rate_shipping_cost','0','2020-07-01 15:49:56','2020-07-01 15:49:56'),
	(59,'shipping_cost_admin','0','2020-07-01 15:49:56','2020-07-01 15:49:56');

/*!40000 ALTER TABLE `business_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table carts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variation` text COLLATE utf8_unicode_ci,
  `price` double(8,2) DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `commision_rate` double(8,2) NOT NULL DEFAULT '0.00',
  `banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT '0',
  `top` int(1) NOT NULL DEFAULT '0',
  `digital` int(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `commision_rate`, `banner`, `icon`, `featured`, `top`, `digital`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`)
VALUES
	(1,'ACCESSOIRE ET QUINCAILLERIE',0.00,'uploads/categories/banner/category-banner.jpg','uploads/categories/icon/KjJP9wuEZNL184XVUk3S7EiZ8NnBN99kiU4wdvp3.png',1,1,0,'accessoire-et-quincaillerie','ACCESSOIRE ET QUINCAILLERIE',NULL,'2019-08-06 14:06:58','2019-08-06 08:06:58'),
	(2,'OUTILLAGE',0.00,'uploads/categories/banner/category-banner.jpg','uploads/categories/icon/h9XhWwI401u6sRoLITEk9SUMRAlWN8moGrpPfS6I.png',1,0,0,'porduit-outillage','OUTILLAGE',NULL,'2019-08-06 14:06:58','2019-08-06 08:06:58'),
	(3,'CADENAS',0.00,'uploads/categories/banner/category-banner.jpg','uploads/categories/icon/rKAPw5rNlS84JtD9ZQqn366jwE11qyJqbzAe5yaA.png',1,1,0,'produit-cadenas','CADENAS',NULL,'2019-08-06 14:06:58','2019-08-06 08:06:58'),
	(4,'SANITAIRE PLOMBERIE',0.00,NULL,NULL,0,0,0,'sanitaire-plomberie','SANITAIRE PLOMBERIE',NULL,'2020-07-19 14:01:30','2020-07-19 14:01:30'),
	(5,'PEINTURE ET NETTOYAGE',0.00,NULL,NULL,0,0,0,'peinture-et-nettoyage','PEINTURE ET NETTOYAGE','','2020-07-19 14:02:06','2020-07-19 14:02:06'),
	(6,'ELECTRICITE',0.00,NULL,NULL,0,0,0,'produit-electricite','ELECTRICITE',NULL,'2020-07-19 14:02:34','2020-07-19 14:02:34'),
	(7,'SUP TV',0.00,NULL,NULL,0,0,0,'sup-tv','SUP TV',NULL,'2020-07-19 14:03:01','2020-07-19 14:03:01'),
	(8,'SUP REF',0.00,NULL,NULL,0,0,0,'sup-ref','SUP REF',NULL,'2020-07-19 14:03:28','2020-07-19 14:03:28'),
	(9,'TUYAUX',0.00,NULL,NULL,0,0,0,'TUYAUX','TUYAUX',NULL,'2020-07-19 14:03:46','2020-07-19 14:03:46'),
	(10,'ECLAIRAGE',0.00,NULL,NULL,0,0,0,'ECLAIRAGE','ECLAIRAGE',NULL,'2020-07-19 14:04:07','2020-07-19 14:04:07');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table colors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `colors`;

CREATE TABLE `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`)
VALUES
	(1,'IndianRed','#CD5C5C','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(2,'LightCoral','#F08080','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(3,'Salmon','#FA8072','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(4,'DarkSalmon','#E9967A','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(5,'LightSalmon','#FFA07A','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(6,'Crimson','#DC143C','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(7,'Red','#FF0000','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(8,'FireBrick','#B22222','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(9,'DarkRed','#8B0000','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(10,'Pink','#FFC0CB','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(11,'LightPink','#FFB6C1','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(12,'HotPink','#FF69B4','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(13,'DeepPink','#FF1493','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(14,'MediumVioletRed','#C71585','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(15,'PaleVioletRed','#DB7093','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(16,'LightSalmon','#FFA07A','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(17,'Coral','#FF7F50','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(18,'Tomato','#FF6347','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(19,'OrangeRed','#FF4500','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(20,'DarkOrange','#FF8C00','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(21,'Orange','#FFA500','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(22,'Gold','#FFD700','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(23,'Yellow','#FFFF00','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(24,'LightYellow','#FFFFE0','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(25,'LemonChiffon','#FFFACD','2018-11-05 03:12:26','2018-11-05 03:12:26'),
	(26,'LightGoldenrodYellow','#FAFAD2','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(27,'PapayaWhip','#FFEFD5','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(28,'Moccasin','#FFE4B5','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(29,'PeachPuff','#FFDAB9','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(30,'PaleGoldenrod','#EEE8AA','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(31,'Khaki','#F0E68C','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(32,'DarkKhaki','#BDB76B','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(33,'Lavender','#E6E6FA','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(34,'Thistle','#D8BFD8','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(35,'Plum','#DDA0DD','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(36,'Violet','#EE82EE','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(37,'Orchid','#DA70D6','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(38,'Fuchsia','#FF00FF','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(39,'Magenta','#FF00FF','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(40,'MediumOrchid','#BA55D3','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(41,'MediumPurple','#9370DB','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(42,'Amethyst','#9966CC','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(43,'BlueViolet','#8A2BE2','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(44,'DarkViolet','#9400D3','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(45,'DarkOrchid','#9932CC','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(46,'DarkMagenta','#8B008B','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(47,'Purple','#800080','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(48,'Indigo','#4B0082','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(49,'SlateBlue','#6A5ACD','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(50,'DarkSlateBlue','#483D8B','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(51,'MediumSlateBlue','#7B68EE','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(52,'GreenYellow','#ADFF2F','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(53,'Chartreuse','#7FFF00','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(54,'LawnGreen','#7CFC00','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(55,'Lime','#00FF00','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(56,'LimeGreen','#32CD32','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(57,'PaleGreen','#98FB98','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(58,'LightGreen','#90EE90','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(59,'MediumSpringGreen','#00FA9A','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(60,'SpringGreen','#00FF7F','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(61,'MediumSeaGreen','#3CB371','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(62,'SeaGreen','#2E8B57','2018-11-05 03:12:27','2018-11-05 03:12:27'),
	(63,'ForestGreen','#228B22','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(64,'Green','#008000','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(65,'DarkGreen','#006400','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(66,'YellowGreen','#9ACD32','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(67,'OliveDrab','#6B8E23','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(68,'Olive','#808000','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(69,'DarkOliveGreen','#556B2F','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(70,'MediumAquamarine','#66CDAA','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(71,'DarkSeaGreen','#8FBC8F','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(72,'LightSeaGreen','#20B2AA','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(73,'DarkCyan','#008B8B','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(74,'Teal','#008080','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(75,'Aqua','#00FFFF','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(76,'Cyan','#00FFFF','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(77,'LightCyan','#E0FFFF','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(78,'PaleTurquoise','#AFEEEE','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(79,'Aquamarine','#7FFFD4','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(80,'Turquoise','#40E0D0','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(81,'MediumTurquoise','#48D1CC','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(82,'DarkTurquoise','#00CED1','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(83,'CadetBlue','#5F9EA0','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(84,'SteelBlue','#4682B4','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(85,'LightSteelBlue','#B0C4DE','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(86,'PowderBlue','#B0E0E6','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(87,'LightBlue','#ADD8E6','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(88,'SkyBlue','#87CEEB','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(89,'LightSkyBlue','#87CEFA','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(90,'DeepSkyBlue','#00BFFF','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(91,'DodgerBlue','#1E90FF','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(92,'CornflowerBlue','#6495ED','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(93,'MediumSlateBlue','#7B68EE','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(94,'RoyalBlue','#4169E1','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(95,'Blue','#0000FF','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(96,'MediumBlue','#0000CD','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(97,'DarkBlue','#00008B','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(98,'Navy','#000080','2018-11-05 03:12:28','2018-11-05 03:12:28'),
	(99,'MidnightBlue','#191970','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(100,'Cornsilk','#FFF8DC','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(101,'BlanchedAlmond','#FFEBCD','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(102,'Bisque','#FFE4C4','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(103,'NavajoWhite','#FFDEAD','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(104,'Wheat','#F5DEB3','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(105,'BurlyWood','#DEB887','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(106,'Tan','#D2B48C','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(107,'RosyBrown','#BC8F8F','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(108,'SandyBrown','#F4A460','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(109,'Goldenrod','#DAA520','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(110,'DarkGoldenrod','#B8860B','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(111,'Peru','#CD853F','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(112,'Chocolate','#D2691E','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(113,'SaddleBrown','#8B4513','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(114,'Sienna','#A0522D','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(115,'Brown','#A52A2A','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(116,'Maroon','#800000','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(117,'White','#FFFFFF','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(118,'Snow','#FFFAFA','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(119,'Honeydew','#F0FFF0','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(120,'MintCream','#F5FFFA','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(121,'Azure','#F0FFFF','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(122,'AliceBlue','#F0F8FF','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(123,'GhostWhite','#F8F8FF','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(124,'WhiteSmoke','#F5F5F5','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(125,'Seashell','#FFF5EE','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(126,'Beige','#F5F5DC','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(127,'OldLace','#FDF5E6','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(128,'FloralWhite','#FFFAF0','2018-11-05 03:12:29','2018-11-05 03:12:29'),
	(129,'Ivory','#FFFFF0','2018-11-05 03:12:30','2018-11-05 03:12:30'),
	(130,'AntiqueWhite','#FAEBD7','2018-11-05 03:12:30','2018-11-05 03:12:30'),
	(131,'Linen','#FAF0E6','2018-11-05 03:12:30','2018-11-05 03:12:30'),
	(132,'LavenderBlush','#FFF0F5','2018-11-05 03:12:30','2018-11-05 03:12:30'),
	(133,'MistyRose','#FFE4E1','2018-11-05 03:12:30','2018-11-05 03:12:30'),
	(134,'Gainsboro','#DCDCDC','2018-11-05 03:12:30','2018-11-05 03:12:30'),
	(135,'LightGrey','#D3D3D3','2018-11-05 03:12:30','2018-11-05 03:12:30'),
	(136,'Silver','#C0C0C0','2018-11-05 03:12:30','2018-11-05 03:12:30'),
	(137,'DarkGray','#A9A9A9','2018-11-05 03:12:30','2018-11-05 03:12:30'),
	(138,'Gray','#808080','2018-11-05 03:12:30','2018-11-05 03:12:30'),
	(139,'DimGray','#696969','2018-11-05 03:12:30','2018-11-05 03:12:30'),
	(140,'LightSlateGray','#778899','2018-11-05 03:12:30','2018-11-05 03:12:30'),
	(141,'SlateGray','#708090','2018-11-05 03:12:30','2018-11-05 03:12:30'),
	(142,'DarkSlateGray','#2F4F4F','2018-11-05 03:12:30','2018-11-05 03:12:30'),
	(143,'Black','#000000','2018-11-05 03:12:30','2018-11-05 03:12:30');

/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table conversations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `conversations`;

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `sender_viewed` int(1) NOT NULL DEFAULT '1',
  `receiver_viewed` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;



# Dump of table countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;

INSERT INTO `countries` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'AF','Afghanistan',1,NULL,'2020-07-23 10:02:04'),
	(2,'AL','Albania',1,NULL,NULL),
	(3,'DZ','Algeria',1,NULL,NULL),
	(4,'DS','American Samoa',1,NULL,NULL),
	(5,'AD','Andorra',1,NULL,NULL),
	(6,'AO','Angola',1,NULL,NULL),
	(7,'AI','Anguilla',1,NULL,NULL),
	(8,'AQ','Antarctica',1,NULL,NULL),
	(9,'AG','Antigua and Barbuda',1,NULL,NULL),
	(10,'AR','Argentina',1,NULL,NULL),
	(11,'AM','Armenia',1,NULL,NULL),
	(12,'AW','Aruba',1,NULL,NULL),
	(13,'AU','Australia',1,NULL,NULL),
	(14,'AT','Austria',1,NULL,NULL),
	(15,'AZ','Azerbaijan',1,NULL,NULL),
	(16,'BS','Bahamas',1,NULL,NULL),
	(17,'BH','Bahrain',1,NULL,NULL),
	(18,'BD','Bangladesh',1,NULL,NULL),
	(19,'BB','Barbados',1,NULL,NULL),
	(20,'BY','Belarus',1,NULL,NULL),
	(21,'BE','Belgium',1,NULL,NULL),
	(22,'BZ','Belize',1,NULL,NULL),
	(23,'BJ','Benin',1,NULL,NULL),
	(24,'BM','Bermuda',1,NULL,NULL),
	(25,'BT','Bhutan',1,NULL,NULL),
	(26,'BO','Bolivia',1,NULL,NULL),
	(27,'BA','Bosnia and Herzegovina',1,NULL,NULL),
	(28,'BW','Botswana',1,NULL,NULL),
	(29,'BV','Bouvet Island',1,NULL,NULL),
	(30,'BR','Brazil',1,NULL,NULL),
	(31,'IO','British Indian Ocean Territory',1,NULL,NULL),
	(32,'BN','Brunei Darussalam',1,NULL,NULL),
	(33,'BG','Bulgaria',1,NULL,NULL),
	(34,'BF','Burkina Faso',1,NULL,NULL),
	(35,'BI','Burundi',1,NULL,NULL),
	(36,'KH','Cambodia',1,NULL,NULL),
	(37,'CM','Cameroon',1,NULL,NULL),
	(38,'CA','Canada',1,NULL,NULL),
	(39,'CV','Cape Verde',1,NULL,NULL),
	(40,'KY','Cayman Islands',1,NULL,NULL),
	(41,'CF','Central African Republic',1,NULL,NULL),
	(42,'TD','Chad',1,NULL,NULL),
	(43,'CL','Chile',1,NULL,NULL),
	(44,'CN','China',1,NULL,NULL),
	(45,'CX','Christmas Island',1,NULL,NULL),
	(46,'CC','Cocos (Keeling) Islands',1,NULL,NULL),
	(47,'CO','Colombia',1,NULL,NULL),
	(48,'KM','Comoros',1,NULL,NULL),
	(49,'CG','Congo',1,NULL,NULL),
	(50,'CK','Cook Islands',1,NULL,NULL),
	(51,'CR','Costa Rica',1,NULL,NULL),
	(52,'HR','Croatia (Hrvatska)',1,NULL,NULL),
	(53,'CU','Cuba',1,NULL,NULL),
	(54,'CY','Cyprus',1,NULL,NULL),
	(55,'CZ','Czech Republic',1,NULL,NULL),
	(56,'DK','Denmark',1,NULL,NULL),
	(57,'DJ','Djibouti',1,NULL,NULL),
	(58,'DM','Dominica',1,NULL,NULL),
	(59,'DO','Dominican Republic',1,NULL,NULL),
	(60,'TP','East Timor',1,NULL,NULL),
	(61,'EC','Ecuador',1,NULL,NULL),
	(62,'EG','Egypt',1,NULL,NULL),
	(63,'SV','El Salvador',1,NULL,NULL),
	(64,'GQ','Equatorial Guinea',1,NULL,NULL),
	(65,'ER','Eritrea',1,NULL,NULL),
	(66,'EE','Estonia',1,NULL,NULL),
	(67,'ET','Ethiopia',1,NULL,NULL),
	(68,'FK','Falkland Islands (Malvinas)',1,NULL,NULL),
	(69,'FO','Faroe Islands',1,NULL,NULL),
	(70,'FJ','Fiji',1,NULL,NULL),
	(71,'FI','Finland',1,NULL,NULL),
	(72,'FR','France',1,NULL,NULL),
	(73,'FX','France, Metropolitan',1,NULL,NULL),
	(74,'GF','French Guiana',1,NULL,NULL),
	(75,'PF','French Polynesia',1,NULL,NULL),
	(76,'TF','French Southern Territories',1,NULL,NULL),
	(77,'GA','Gabon',1,NULL,NULL),
	(78,'GM','Gambia',1,NULL,NULL),
	(79,'GE','Georgia',1,NULL,NULL),
	(80,'DE','Germany',1,NULL,NULL),
	(81,'GH','Ghana',1,NULL,NULL),
	(82,'GI','Gibraltar',1,NULL,NULL),
	(83,'GK','Guernsey',1,NULL,NULL),
	(84,'GR','Greece',1,NULL,NULL),
	(85,'GL','Greenland',1,NULL,NULL),
	(86,'GD','Grenada',1,NULL,NULL),
	(87,'GP','Guadeloupe',1,NULL,NULL),
	(88,'GU','Guam',1,NULL,NULL),
	(89,'GT','Guatemala',1,NULL,NULL),
	(90,'GN','Guinea',1,NULL,NULL),
	(91,'GW','Guinea-Bissau',1,NULL,NULL),
	(92,'GY','Guyana',1,NULL,NULL),
	(93,'HT','Haiti',1,NULL,NULL),
	(94,'HM','Heard and Mc Donald Islands',1,NULL,NULL),
	(95,'HN','Honduras',1,NULL,NULL),
	(96,'HK','Hong Kong',1,NULL,NULL),
	(97,'HU','Hungary',1,NULL,NULL),
	(98,'IS','Iceland',1,NULL,NULL),
	(99,'IN','India',1,NULL,NULL),
	(100,'IM','Isle of Man',1,NULL,NULL),
	(101,'ID','Indonesia',1,NULL,NULL),
	(102,'IR','Iran (Islamic Republic of)',1,NULL,NULL),
	(103,'IQ','Iraq',1,NULL,NULL),
	(104,'IE','Ireland',1,NULL,NULL),
	(105,'IL','Israel',1,NULL,NULL),
	(106,'IT','Italy',1,NULL,NULL),
	(107,'CI','Ivory Coast',1,NULL,NULL),
	(108,'JE','Jersey',1,NULL,NULL),
	(109,'JM','Jamaica',1,NULL,NULL),
	(110,'JP','Japan',1,NULL,NULL),
	(111,'JO','Jordan',1,NULL,NULL),
	(112,'KZ','Kazakhstan',1,NULL,NULL),
	(113,'KE','Kenya',1,NULL,NULL),
	(114,'KI','Kiribati',1,NULL,NULL),
	(115,'KP','Korea, Democratic People\'s Republic of',1,NULL,NULL),
	(116,'KR','Korea, Republic of',1,NULL,NULL),
	(117,'XK','Kosovo',1,NULL,NULL),
	(118,'KW','Kuwait',1,NULL,NULL),
	(119,'KG','Kyrgyzstan',1,NULL,NULL),
	(120,'LA','Lao People\'s Democratic Republic',1,NULL,NULL),
	(121,'LV','Latvia',1,NULL,NULL),
	(122,'LB','Lebanon',1,NULL,NULL),
	(123,'LS','Lesotho',1,NULL,NULL),
	(124,'LR','Liberia',1,NULL,NULL),
	(125,'LY','Libyan Arab Jamahiriya',1,NULL,NULL),
	(126,'LI','Liechtenstein',1,NULL,NULL),
	(127,'LT','Lithuania',1,NULL,NULL),
	(128,'LU','Luxembourg',1,NULL,NULL),
	(129,'MO','Macau',1,NULL,NULL),
	(130,'MK','Macedonia',1,NULL,NULL),
	(131,'MG','Madagascar',1,NULL,NULL),
	(132,'MW','Malawi',1,NULL,NULL),
	(133,'MY','Malaysia',1,NULL,NULL),
	(134,'MV','Maldives',1,NULL,NULL),
	(135,'ML','Mali',1,NULL,NULL),
	(136,'MT','Malta',1,NULL,NULL),
	(137,'MH','Marshall Islands',1,NULL,NULL),
	(138,'MQ','Martinique',1,NULL,NULL),
	(139,'MR','Mauritania',1,NULL,NULL),
	(140,'MU','Mauritius',1,NULL,NULL),
	(141,'TY','Mayotte',1,NULL,NULL),
	(142,'MX','Mexico',1,NULL,NULL),
	(143,'FM','Micronesia, Federated States of',1,NULL,NULL),
	(144,'MD','Moldova, Republic of',1,NULL,NULL),
	(145,'MC','Monaco',1,NULL,NULL),
	(146,'MN','Mongolia',1,NULL,NULL),
	(147,'ME','Montenegro',1,NULL,NULL),
	(148,'MS','Montserrat',1,NULL,NULL),
	(149,'MA','Morocco',1,NULL,NULL),
	(150,'MZ','Mozambique',1,NULL,NULL),
	(151,'MM','Myanmar',1,NULL,NULL),
	(152,'NA','Namibia',1,NULL,NULL),
	(153,'NR','Nauru',1,NULL,NULL),
	(154,'NP','Nepal',1,NULL,NULL),
	(155,'NL','Netherlands',1,NULL,NULL),
	(156,'AN','Netherlands Antilles',1,NULL,NULL),
	(157,'NC','New Caledonia',1,NULL,NULL),
	(158,'NZ','New Zealand',1,NULL,NULL),
	(159,'NI','Nicaragua',1,NULL,NULL),
	(160,'NE','Niger',1,NULL,NULL),
	(161,'NG','Nigeria',1,NULL,NULL),
	(162,'NU','Niue',1,NULL,NULL),
	(163,'NF','Norfolk Island',1,NULL,NULL),
	(164,'MP','Northern Mariana Islands',1,NULL,NULL),
	(165,'NO','Norway',1,NULL,NULL),
	(166,'OM','Oman',1,NULL,NULL),
	(167,'PK','Pakistan',1,NULL,NULL),
	(168,'PW','Palau',1,NULL,NULL),
	(169,'PS','Palestine',1,NULL,NULL),
	(170,'PA','Panama',1,NULL,NULL),
	(171,'PG','Papua New Guinea',1,NULL,NULL),
	(172,'PY','Paraguay',1,NULL,NULL),
	(173,'PE','Peru',1,NULL,NULL),
	(174,'PH','Philippines',1,NULL,NULL),
	(175,'PN','Pitcairn',1,NULL,NULL),
	(176,'PL','Poland',1,NULL,NULL),
	(177,'PT','Portugal',1,NULL,NULL),
	(178,'PR','Puerto Rico',1,NULL,NULL),
	(179,'QA','Qatar',1,NULL,NULL),
	(180,'RE','Reunion',1,NULL,NULL),
	(181,'RO','Romania',1,NULL,NULL),
	(182,'RU','Russian Federation',1,NULL,NULL),
	(183,'RW','Rwanda',1,NULL,NULL),
	(184,'KN','Saint Kitts and Nevis',1,NULL,NULL),
	(185,'LC','Saint Lucia',1,NULL,NULL),
	(186,'VC','Saint Vincent and the Grenadines',1,NULL,NULL),
	(187,'WS','Samoa',1,NULL,NULL),
	(188,'SM','San Marino',1,NULL,NULL),
	(189,'ST','Sao Tome and Principe',1,NULL,NULL),
	(190,'SA','Saudi Arabia',1,NULL,NULL),
	(191,'SN','Senegal',1,NULL,NULL),
	(192,'RS','Serbia',1,NULL,NULL),
	(193,'SC','Seychelles',1,NULL,NULL),
	(194,'SL','Sierra Leone',1,NULL,NULL),
	(195,'SG','Singapore',1,NULL,NULL),
	(196,'SK','Slovakia',1,NULL,NULL),
	(197,'SI','Slovenia',1,NULL,NULL),
	(198,'SB','Solomon Islands',1,NULL,NULL),
	(199,'SO','Somalia',1,NULL,NULL),
	(200,'ZA','South Africa',1,NULL,NULL),
	(201,'GS','South Georgia South Sandwich Islands',1,NULL,NULL),
	(202,'SS','South Sudan',1,NULL,NULL),
	(203,'ES','Spain',1,NULL,NULL),
	(204,'LK','Sri Lanka',1,NULL,NULL),
	(205,'SH','St. Helena',1,NULL,NULL),
	(206,'PM','St. Pierre and Miquelon',1,NULL,NULL),
	(207,'SD','Sudan',1,NULL,NULL),
	(208,'SR','Suriname',1,NULL,NULL),
	(209,'SJ','Svalbard and Jan Mayen Islands',1,NULL,NULL),
	(210,'SZ','Swaziland',1,NULL,NULL),
	(211,'SE','Sweden',1,NULL,NULL),
	(212,'CH','Switzerland',1,NULL,NULL),
	(213,'SY','Syrian Arab Republic',1,NULL,NULL),
	(214,'TW','Taiwan',1,NULL,NULL),
	(215,'TJ','Tajikistan',1,NULL,NULL),
	(216,'TZ','Tanzania, United Republic of',1,NULL,NULL),
	(217,'TH','Thailand',1,NULL,NULL),
	(218,'TG','Togo',1,NULL,NULL),
	(219,'TK','Tokelau',1,NULL,NULL),
	(220,'TO','Tonga',1,NULL,NULL),
	(221,'TT','Trinidad and Tobago',1,NULL,NULL),
	(222,'TN','Tunisia',1,NULL,NULL),
	(223,'TR','Turkey',1,NULL,NULL),
	(224,'TM','Turkmenistan',1,NULL,NULL),
	(225,'TC','Turks and Caicos Islands',1,NULL,NULL),
	(226,'TV','Tuvalu',1,NULL,NULL),
	(227,'UG','Uganda',1,NULL,NULL),
	(228,'UA','Ukraine',1,NULL,NULL),
	(229,'AE','United Arab Emirates',1,NULL,NULL),
	(230,'GB','United Kingdom',1,NULL,NULL),
	(231,'US','United States',1,NULL,NULL),
	(232,'UM','United States minor outlying islands',1,NULL,NULL),
	(233,'UY','Uruguay',1,NULL,NULL),
	(234,'UZ','Uzbekistan',1,NULL,NULL),
	(235,'VU','Vanuatu',1,NULL,NULL),
	(236,'VA','Vatican City State',1,NULL,NULL),
	(237,'VE','Venezuela',1,NULL,NULL),
	(238,'VN','Vietnam',1,NULL,NULL),
	(239,'VG','Virgin Islands (British)',1,NULL,NULL),
	(240,'VI','Virgin Islands (U.S.)',1,NULL,NULL),
	(241,'WF','Wallis and Futuna Islands',1,NULL,NULL),
	(242,'EH','Western Sahara',1,NULL,NULL),
	(243,'YE','Yemen',1,NULL,NULL),
	(244,'ZR','Zaire',1,NULL,NULL),
	(245,'ZM','Zambia',1,NULL,NULL),
	(246,'ZW','Zimbabwe',1,NULL,NULL),
	(247,'AF','Afghanistan',1,NULL,NULL),
	(248,'AL','Albania',1,NULL,NULL),
	(249,'DZ','Algeria',1,NULL,NULL),
	(250,'DS','American Samoa',1,NULL,NULL),
	(251,'AD','Andorra',1,NULL,NULL),
	(252,'AO','Angola',1,NULL,NULL),
	(253,'AI','Anguilla',1,NULL,NULL),
	(254,'AQ','Antarctica',1,NULL,NULL),
	(255,'AG','Antigua and Barbuda',1,NULL,NULL),
	(256,'AR','Argentina',1,NULL,NULL),
	(257,'AM','Armenia',1,NULL,NULL),
	(258,'AW','Aruba',1,NULL,NULL),
	(259,'AU','Australia',1,NULL,NULL),
	(260,'AT','Austria',1,NULL,NULL),
	(261,'AZ','Azerbaijan',1,NULL,NULL),
	(262,'BS','Bahamas',1,NULL,NULL),
	(263,'BH','Bahrain',1,NULL,NULL),
	(264,'BD','Bangladesh',1,NULL,NULL),
	(265,'BB','Barbados',1,NULL,NULL),
	(266,'BY','Belarus',1,NULL,NULL),
	(267,'BE','Belgium',1,NULL,NULL),
	(268,'BZ','Belize',1,NULL,NULL),
	(269,'BJ','Benin',1,NULL,NULL),
	(270,'BM','Bermuda',1,NULL,NULL),
	(271,'BT','Bhutan',1,NULL,NULL),
	(272,'BO','Bolivia',1,NULL,NULL),
	(273,'BA','Bosnia and Herzegovina',1,NULL,NULL),
	(274,'BW','Botswana',1,NULL,NULL),
	(275,'BV','Bouvet Island',1,NULL,NULL),
	(276,'BR','Brazil',1,NULL,NULL),
	(277,'IO','British Indian Ocean Territory',1,NULL,NULL),
	(278,'BN','Brunei Darussalam',1,NULL,NULL),
	(279,'BG','Bulgaria',1,NULL,NULL),
	(280,'BF','Burkina Faso',1,NULL,NULL),
	(281,'BI','Burundi',1,NULL,NULL),
	(282,'KH','Cambodia',1,NULL,NULL),
	(283,'CM','Cameroon',1,NULL,NULL),
	(284,'CA','Canada',1,NULL,NULL),
	(285,'CV','Cape Verde',1,NULL,NULL),
	(286,'KY','Cayman Islands',1,NULL,NULL),
	(287,'CF','Central African Republic',1,NULL,NULL),
	(288,'TD','Chad',1,NULL,NULL),
	(289,'CL','Chile',1,NULL,NULL),
	(290,'CN','China',1,NULL,NULL),
	(291,'CX','Christmas Island',1,NULL,NULL),
	(292,'CC','Cocos (Keeling) Islands',1,NULL,NULL),
	(293,'CO','Colombia',1,NULL,NULL),
	(294,'KM','Comoros',1,NULL,NULL),
	(295,'CG','Congo',1,NULL,NULL),
	(296,'CK','Cook Islands',1,NULL,NULL);

/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table coupon_usages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `coupon_usages`;

CREATE TABLE `coupon_usages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table coupons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `coupons`;

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` int(15) NOT NULL,
  `end_date` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table currencies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0',
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`)
VALUES
	(1,'U.S. Dollar','$',1.00000,1,'USD','2018-10-09 13:35:08','2018-10-17 07:50:52'),
	(2,'Australian Dollar','$',1.28000,1,'AUD','2018-10-09 13:35:08','2019-02-04 06:51:55'),
	(5,'Brazilian Real','R$',3.25000,1,'BRL','2018-10-09 13:35:08','2018-10-17 07:51:00'),
	(6,'Canadian Dollar','$',1.27000,1,'CAD','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(7,'Czech Koruna','Kč',20.65000,1,'CZK','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(8,'Danish Krone','kr',6.05000,1,'DKK','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(9,'Euro','€',0.85000,1,'EUR','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(10,'Hong Kong Dollar','$',7.83000,1,'HKD','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(11,'Hungarian Forint','Ft',255.24000,1,'HUF','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(12,'Israeli New Sheqel','₪',3.48000,1,'ILS','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(13,'Japanese Yen','¥',107.12000,1,'JPY','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(14,'Malaysian Ringgit','RM',3.91000,1,'MYR','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(15,'Mexican Peso','$',18.72000,1,'MXN','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(16,'Norwegian Krone','kr',7.83000,1,'NOK','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(17,'New Zealand Dollar','$',1.38000,1,'NZD','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(18,'Philippine Peso','₱',52.26000,1,'PHP','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(19,'Polish Zloty','zł',3.39000,1,'PLN','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(20,'Pound Sterling','£',0.72000,1,'GBP','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(21,'Russian Ruble','руб',55.93000,1,'RUB','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(22,'Singapore Dollar','$',1.32000,1,'SGD','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(23,'Swedish Krona','kr',8.19000,1,'SEK','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(24,'Swiss Franc','CHF',0.94000,1,'CHF','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(26,'Thai Baht','฿',31.39000,1,'THB','2018-10-09 13:35:08','2018-10-09 13:35:08'),
	(27,'Taka','৳',84.00000,1,'BDT','2018-10-09 13:35:08','2018-12-02 06:16:13'),
	(28,'Indian Rupee','Rs',68.45000,1,'Rupee','2019-07-07 12:33:46','2019-07-07 12:33:46'),
	(29,'MAD','MAD',0.10000,1,'MAD','2020-07-19 10:04:18','2020-07-19 10:04:38');

/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customer_packages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_packages`;

CREATE TABLE `customer_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(28,2) DEFAULT NULL,
  `product_upload` int(11) DEFAULT NULL,
  `logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table customer_products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_products`;

CREATE TABLE `customer_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `added_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conditon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci,
  `video_provider` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `unit_price` double(28,2) DEFAULT '0.00',
  `meta_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table customers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;

INSERT INTO `customers` (`id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(4,8,'2019-08-01 12:35:09','2019-08-01 12:35:09'),
	(5,13,'2020-07-23 07:13:36','2020-07-23 07:13:36'),
	(6,14,'2020-07-23 09:11:18','2020-07-23 09:11:18'),
	(7,16,'2020-07-28 04:44:56','2020-07-28 04:44:56'),
	(8,34,'2020-09-01 14:58:32','2020-09-01 14:58:32');

/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table flash_deal_products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `flash_deal_products`;

CREATE TABLE `flash_deal_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flash_deal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` double(8,2) DEFAULT '0.00',
  `discount_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `flash_deal_products` WRITE;
/*!40000 ALTER TABLE `flash_deal_products` DISABLE KEYS */;

INSERT INTO `flash_deal_products` (`id`, `flash_deal_id`, `product_id`, `discount`, `discount_type`, `created_at`, `updated_at`)
VALUES
	(14,64,329,100.00,'precent','2020-11-23 10:40:30','2020-11-23 10:40:30'),
	(15,65,329,100.00,'precent','2020-11-23 10:40:30','2020-11-23 10:40:30'),
	(16,66,373,100.00,'precent','2020-11-23 10:40:30','2020-11-23 10:40:30'),
	(17,67,374,100.00,'precent','2020-11-23 10:40:30','2020-11-23 10:40:30'),
	(18,68,92,100.00,'precent','2020-11-23 10:40:30','2020-11-23 10:40:30'),
	(19,69,324,100.00,'precent','2020-11-23 10:40:30','2020-11-23 10:40:30'),
	(20,70,373,100.00,'precent','2020-11-23 10:40:30','2020-11-23 10:40:30'),
	(21,71,373,100.00,'precent','2020-11-23 10:40:30','2020-11-23 10:40:30'),
	(22,72,573,100.00,'precent','2020-11-23 10:40:30','2020-11-23 10:40:30'),
	(23,73,573,100.00,'precent','2020-11-23 10:40:30','2020-11-23 10:40:30'),
	(24,74,573,100.00,'precent','2020-11-23 10:40:30','2020-11-23 10:40:30'),
	(25,75,604,100.00,'precent','2020-11-23 10:40:30','2020-11-23 10:40:30');

/*!40000 ALTER TABLE `flash_deal_products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table flash_deals
# ------------------------------------------------------------

DROP TABLE IF EXISTS `flash_deals`;

CREATE TABLE `flash_deals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` int(20) DEFAULT NULL,
  `end_date` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `featured` int(1) NOT NULL DEFAULT '0',
  `background_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `conditions` json NOT NULL,
  `data` json NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `flash_deals` WRITE;
/*!40000 ALTER TABLE `flash_deals` DISABLE KEYS */;

INSERT INTO `flash_deals` (`id`, `title`, `start_date`, `end_date`, `status`, `featured`, `background_color`, `text_color`, `banner`, `slug`, `created_at`, `updated_at`, `conditions`, `data`, `product_id`)
VALUES
	(64,'ENSEMBLE DE CLEF PLAT CRENEAU 7 PIECES',NULL,NULL,1,1,NULL,NULL,NULL,NULL,'2020-11-23 10:40:30','2020-11-23 10:40:30',CONVERT(X'7B2274797065223A202270726F647563745F626F75676874222C20227175616E74697479223A20317D' using utf8mb4),CONVERT(X'7B227175616E74697479223A20312C202270726F647563745F6964223A203332397D' using utf8mb4),452),
	(65,'ENSEMBLE DE CLEF A PIPE POWER',NULL,NULL,1,1,NULL,NULL,NULL,NULL,'2020-11-23 10:40:30','2020-11-23 10:40:30',CONVERT(X'7B2274797065223A202270726F647563745F626F75676874222C20227175616E74697479223A20317D' using utf8mb4),CONVERT(X'7B227175616E74697479223A20312C202270726F647563745F6964223A203332397D' using utf8mb4),467),
	(66,'ENSEMBLE S.D.B NS123781',NULL,NULL,1,1,NULL,NULL,NULL,NULL,'2020-11-23 10:40:30','2020-11-23 10:40:30',CONVERT(X'7B2274797065223A202270726F647563745F626F75676874222C20227175616E74697479223A20317D' using utf8mb4),CONVERT(X'7B227175616E74697479223A20312C202270726F647563745F6964223A203337337D' using utf8mb4),155),
	(67,'ENSEMBLE 123052- 5PIECE DI BANYO',NULL,NULL,1,1,NULL,NULL,NULL,NULL,'2020-11-23 10:40:30','2020-11-23 10:40:30',CONVERT(X'7B2274797065223A202270726F647563745F626F75676874222C20227175616E74697479223A20317D' using utf8mb4),CONVERT(X'7B227175616E74697479223A20312C202270726F647563745F6964223A203337347D' using utf8mb4),545),
	(68,'FLEXIBLE 1.5M BLISTER IFOULKI',NULL,NULL,1,1,NULL,NULL,NULL,NULL,'2020-11-23 10:40:30','2020-11-23 10:40:30',CONVERT(X'7B2274797065223A202270726F647563745F626F75676874222C20227175616E74697479223A20327D' using utf8mb4),CONVERT(X'7B227175616E74697479223A20312C202270726F647563745F6964223A2039327D' using utf8mb4),544),
	(69,'ENSEMBLE DE LIMES',NULL,NULL,1,1,NULL,NULL,NULL,NULL,'2020-11-23 10:40:30','2020-11-23 10:40:30',CONVERT(X'7B2274797065223A202270726F647563745F626F75676874222C20227175616E74697479223A20317D' using utf8mb4),CONVERT(X'7B227175616E74697479223A20312C202270726F647563745F6964223A203332347D' using utf8mb4),359),
	(70,'DOUCHETTE+FLEXIBLE BIDALUX BCM-04',NULL,NULL,1,1,NULL,NULL,NULL,NULL,'2020-11-23 10:40:30','2020-11-23 10:40:30',CONVERT(X'7B2274797065223A202270726F647563745F626F75676874222C20227175616E74697479223A20317D' using utf8mb4),CONVERT(X'7B227175616E74697479223A20312C202270726F647563745F6964223A203337337D' using utf8mb4),482),
	(71,'ENSEMBLE 121072 7PIECES+MIROIR',NULL,NULL,1,1,NULL,NULL,NULL,NULL,'2020-11-23 10:40:30','2020-11-23 10:40:30',CONVERT(X'7B2274797065223A202270726F647563745F626F75676874222C20227175616E74697479223A20317D' using utf8mb4),CONVERT(X'7B227175616E74697479223A20312C202270726F647563745F6964223A203337337D' using utf8mb4),228),
	(72,'APPLIQUE SOLAIRE2X2',NULL,NULL,1,1,NULL,NULL,NULL,NULL,'2020-11-23 10:40:30','2020-11-23 10:40:30',CONVERT(X'7B2274797065223A202270726F647563745F626F75676874222C20227175616E74697479223A20317D' using utf8mb4),CONVERT(X'7B227175616E74697479223A20322C202270726F647563745F6964223A203537337D' using utf8mb4),578),
	(73,'PROJECTEUR RVA COULEUR',NULL,NULL,1,1,NULL,NULL,NULL,NULL,'2020-11-23 10:40:30','2020-11-23 10:40:30',CONVERT(X'7B2274797065223A202270726F647563745F626F75676874222C20227175616E74697479223A20317D' using utf8mb4),CONVERT(X'7B227175616E74697479223A20322C202270726F647563745F6964223A203537337D' using utf8mb4),579),
	(74,'BLOC SECOURS LAMPE 7681',NULL,NULL,1,1,NULL,NULL,NULL,NULL,'2020-11-23 10:40:30','2020-11-23 10:40:30',CONVERT(X'7B2274797065223A202270726F647563745F626F75676874222C20227175616E74697479223A20317D' using utf8mb4),CONVERT(X'7B227175616E74697479223A20322C202270726F647563745F6964223A203537337D' using utf8mb4),580),
	(75,'CHINIEUL',NULL,NULL,1,1,NULL,NULL,NULL,NULL,'2020-11-23 10:40:30','2020-11-23 10:40:30',CONVERT(X'7B2274797065223A202270726F647563745F626F75676874222C20227175616E74697479223A20317D' using utf8mb4),CONVERT(X'7B227175616E74697479223A2031302C202270726F647563745F6964223A203630347D' using utf8mb4),606);

/*!40000 ALTER TABLE `flash_deals` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table general_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_settings`;

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frontend_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_background` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_sidebar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `general_settings` WRITE;
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;

INSERT INTO `general_settings` (`id`, `frontend_color`, `logo`, `admin_logo`, `admin_login_background`, `admin_login_sidebar`, `favicon`, `site_name`, `address`, `description`, `phone`, `email`, `facebook`, `instagram`, `twitter`, `youtube`, `google_plus`, `created_at`, `updated_at`)
VALUES
	(1,'default','uploads/logo/samiBjRfviDsjTu5wZTzfK5WxkHuzIdfhgGfP8Uy.png','uploads/admin_logo/HjusliLdSAlsg2TX8ciFfoJvodj7EE6ejoNtxL0F.png',NULL,NULL,'uploads/favicon/KwyEiGvJBigfz64RGrfG0TyhYtkRKn5JeGNg08Nk.png','Bricolya','High dist 99-100 rue Metz Casablanca - Maroc','Qui dit bon bricoleur dit toujours bon outil ! Retrouvez chez nous toute la gamme des outils essentiels au bricoleur qu\'il soit débutant ou expert.','+212 522 450 854','contact@bricolya.com','https://www.facebook.com','https://www.instagram.com','https://www.twitter.com','https://www.youtube.com','https://www.googleplus.com','2020-07-22 10:42:48','2020-07-22 10:42:48');

/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table home_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `home_categories`;

CREATE TABLE `home_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `subsubcategories` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `home_categories` WRITE;
/*!40000 ALTER TABLE `home_categories` DISABLE KEYS */;

INSERT INTO `home_categories` (`id`, `category_id`, `subsubcategories`, `status`, `created_at`, `updated_at`)
VALUES
	(1,1,'[\"1\"]',1,'2019-03-12 07:38:23','2019-03-12 07:38:23'),
	(2,2,'[\"10\"]',1,'2019-03-12 07:44:54','2019-03-12 07:44:54');

/*!40000 ALTER TABLE `home_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtl` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;

INSERT INTO `languages` (`id`, `name`, `code`, `rtl`, `created_at`, `updated_at`)
VALUES
	(1,'English','en',0,'2019-01-20 13:13:20','2019-01-20 13:13:20'),
	(3,'Bangla','bd',0,'2019-02-17 07:35:37','2019-02-18 07:49:51'),
	(4,'Arabic','sa',1,'2019-04-28 20:34:12','2019-04-28 20:34:12');

/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `links`;

CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf32_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2020_11_20_084208_add_condition_column_to_flashdeal',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`)
VALUES
	('125ce8289850f80d9fea100325bf892fbd0deba1f87dbfc2ab81fb43d57377ec24ed65f7dc560e46',1,1,'Personal Access Token','[]',0,'2019-07-30 06:51:13','2019-07-30 06:51:13','2020-07-30 10:51:13'),
	('293d2bb534220c070c4e90d25b5509965d23d3ddbc05b1e29fb4899ae09420ff112dbccab1c6f504',1,1,'Personal Access Token','[]',1,'2019-08-04 08:00:04','2019-08-04 08:00:04','2020-08-04 12:00:04'),
	('5363e91c7892acdd6417aa9c7d4987d83568e229befbd75be64282dbe8a88147c6c705e06c1fb2bf',1,1,'Personal Access Token','[]',0,'2019-07-13 08:44:28','2019-07-13 08:44:28','2020-07-13 12:44:28'),
	('681b4a4099fac5e12517307b4027b54df94cbaf0cbf6b4bf496534c94f0ccd8a79dd6af9742d076b',1,1,'Personal Access Token','[]',1,'2019-08-04 09:23:06','2019-08-04 09:23:06','2020-08-04 13:23:06'),
	('6d229e3559e568df086c706a1056f760abc1370abe74033c773490581a042442154afa1260c4b6f0',1,1,'Personal Access Token','[]',1,'2019-08-04 09:32:12','2019-08-04 09:32:12','2020-08-04 13:32:12'),
	('6efc0f1fc3843027ea1ea7cd35acf9c74282f0271c31d45a164e7b27025a315d31022efe7bb94aaa',1,1,'Personal Access Token','[]',0,'2019-08-08 04:35:26','2019-08-08 04:35:26','2020-08-08 08:35:26'),
	('7745b763da15a06eaded371330072361b0524c41651cf48bf76fc1b521a475ece78703646e06d3b0',1,1,'Personal Access Token','[]',1,'2019-08-04 09:29:44','2019-08-04 09:29:44','2020-08-04 13:29:44'),
	('815b625e239934be293cd34479b0f766bbc1da7cc10d464a2944ddce3a0142e943ae48be018ccbd0',1,1,'Personal Access Token','[]',1,'2019-07-22 04:07:47','2019-07-22 04:07:47','2020-07-22 08:07:47'),
	('8921a4c96a6d674ac002e216f98855c69de2568003f9b4136f6e66f4cb9545442fb3e37e91a27cad',1,1,'Personal Access Token','[]',1,'2019-08-04 08:05:05','2019-08-04 08:05:05','2020-08-04 12:05:05'),
	('8d8b85720304e2f161a66564cec0ecd50d70e611cc0efbf04e409330086e6009f72a39ce2191f33a',1,1,'Personal Access Token','[]',1,'2019-08-04 08:44:35','2019-08-04 08:44:35','2020-08-04 12:44:35'),
	('bcaaebdead4c0ef15f3ea6d196fd80749d309e6db8603b235e818cb626a5cea034ff2a55b66e3e1a',1,1,'Personal Access Token','[]',1,'2019-08-04 09:14:32','2019-08-04 09:14:32','2020-08-04 13:14:32'),
	('c25417a5c728073ca8ba57058ded43d496a9d2619b434d2a004dd490a64478c08bc3e06ffc1be65d',1,1,'Personal Access Token','[]',1,'2019-07-30 03:45:31','2019-07-30 03:45:31','2020-07-30 07:45:31'),
	('c7423d85b2b5bdc5027cb283be57fa22f5943cae43f60b0ed27e6dd198e46f25e3501b3081ed0777',1,1,'Personal Access Token','[]',1,'2019-08-05 07:02:59','2019-08-05 07:02:59','2020-08-05 11:02:59'),
	('e76f19dbd5c2c4060719fb1006ac56116fd86f7838b4bf74e2c0a0ac9696e724df1e517dbdb357f4',1,1,'Personal Access Token','[]',1,'2019-07-15 04:53:40','2019-07-15 04:53:40','2020-07-15 08:53:40'),
	('ed7c269dd6f9a97750a982f62e0de54749be6950e323cdfef892a1ec93f8ddbacf9fe26e6a42180e',1,1,'Personal Access Token','[]',1,'2019-07-13 08:36:45','2019-07-13 08:36:45','2020-07-13 12:36:45'),
	('f6d1475bc17a27e389000d3df4da5c5004ce7610158b0dd414226700c0f6db48914637b4c76e1948',1,1,'Personal Access Token','[]',1,'2019-08-04 09:22:01','2019-08-04 09:22:01','2020-08-04 13:22:01'),
	('f85e4e444fc954430170c41779a4238f84cd6fed905f682795cd4d7b6a291ec5204a10ac0480eb30',1,1,'Personal Access Token','[]',1,'2019-07-30 08:38:49','2019-07-30 08:38:49','2020-07-30 12:38:49'),
	('f8bf983a42c543b99128296e4bc7c2d17a52b5b9ef69670c629b93a653c6a4af27be452e0c331f79',1,1,'Personal Access Token','[]',1,'2019-08-04 09:28:55','2019-08-04 09:28:55','2020-08-04 13:28:55');

/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_auth_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'Laravel Personal Access Client','eR2y7WUuem28ugHKppFpmss7jPyOHZsMkQwBo1Jj','http://localhost',1,0,0,'2019-07-13 08:17:34','2019-07-13 08:17:34'),
	(2,NULL,'Laravel Password Grant Client','WLW2Ol0GozbaXEnx1NtXoweYPuKEbjWdviaUgw77','http://localhost',0,1,0,'2019-07-13 08:17:34','2019-07-13 08:17:34');

/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_personal_access_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`)
VALUES
	(1,1,'2019-07-13 08:17:34','2019-07-13 08:17:34');

/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_refresh_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table order_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `variation` longtext COLLATE utf8_unicode_ci,
  `price` double(8,2) DEFAULT NULL,
  `tax` double(8,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) DEFAULT NULL,
  `payment_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `shipping_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `product_referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8_unicode_ci,
  `payment_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'unpaid',
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `grand_total` double(8,2) DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `coupon_discount` double(8,2) NOT NULL DEFAULT '0.00',
  `code` mediumtext COLLATE utf8_unicode_ci,
  `date` int(20) NOT NULL,
  `viewed` int(1) NOT NULL DEFAULT '0',
  `delivery_viewed` int(1) NOT NULL DEFAULT '1',
  `payment_status_viewed` int(1) DEFAULT '1',
  `commission_calculated` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table payments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table pickup_points
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pickup_points`;

CREATE TABLE `pickup_points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pick_up_status` int(1) DEFAULT NULL,
  `cash_on_pickup_status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table policies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `policies`;

CREATE TABLE `policies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `policies` WRITE;
/*!40000 ALTER TABLE `policies` DISABLE KEYS */;

INSERT INTO `policies` (`id`, `name`, `content`, `created_at`, `updated_at`)
VALUES
	(1,'support_policy',NULL,'2019-10-29 13:54:45','2019-01-22 06:13:15'),
	(2,'return_policy',NULL,'2019-10-29 13:54:47','2019-01-24 06:40:11'),
	(4,'seller_policy',NULL,'2019-10-29 13:54:49','2019-02-04 18:50:15'),
	(5,'terms',NULL,'2019-10-29 13:54:51','2019-10-28 19:00:00'),
	(6,'privacy_policy',NULL,'2019-10-29 13:54:54','2019-10-28 19:00:00');

/*!40000 ALTER TABLE `policies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product_stocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_stocks`;

CREATE TABLE `product_stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `qty` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flash_deal_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `unit_price` double(8,2) NOT NULL,
  `purchase_price` double(8,2) NOT NULL,
  `variant_product` int(1) NOT NULL DEFAULT '0',
  `attributes` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `choice_options` mediumtext COLLATE utf8_unicode_ci,
  `colors` mediumtext COLLATE utf8_unicode_ci,
  `variations` text COLLATE utf8_unicode_ci,
  `todays_deal` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '1',
  `featured` int(11) NOT NULL DEFAULT '0',
  `current_stock` int(10) NOT NULL DEFAULT '0',
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `discount_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `tax_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_type` varchar(20) CHARACTER SET latin1 DEFAULT 'flat_rate',
  `shipping_cost` double(8,2) DEFAULT '0.00',
  `num_of_sale` int(11) NOT NULL DEFAULT '0',
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `meta_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL DEFAULT '0.00',
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `digital` int(1) NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `current_stock`, `unit`, `ref`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`)
VALUES
	(16,'EMBRASSE DE RIDEAUX 702','admin',12,1,1,1,1,'[\"uploads\\/products\\/photos\\/sZkQaNTEmoR6OwgRkyi9gjS4iDiK4EgbuQNgvSZg.jpeg\"]','uploads/products/featured/dZpvxYLcjBo15DFIJ0u4zQsouvkoMcMei8jJ1j50.jpeg','uploads/products/featured/dZpvxYLcjBo15DFIJ0u4zQsouvkoMcMei8jJ1j50.jpeg','uploads/products/flash_deal/CTXcWElzyhAFdf5AwktDcbjO6i9VUG6Ek4h7nK8i.jpeg','youtube',NULL,'','l\'embrasse ou l’attache rideaux en metal est l\'accessoire qui enserre joliment vos rideau',15.00,6.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','702-AB/GP',0.00,'amount',20.00,'percent','flat_rate',0.00,183,NULL,NULL,NULL,NULL,'EMBRASSE-DE-RIDEAUX-702-nGM79',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(17,'EQUERRE MONTABLE N 8','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/DYCcZlZHhYdfVchsDUJBBR5KruF3EF5JT5Z2kRnL.jpeg\"]','uploads/products/featured/7kvshoHbmixSnRhOOS09e3TfrIA5DYdZ0uSpMw3B.jpeg','uploads/products/featured/7kvshoHbmixSnRhOOS09e3TfrIA5DYdZ0uSpMw3B.jpeg','uploads/products/flash_deal/GXThtFuLiwpckQSpWCauGgOmY9HsPAEfiOtvEl6f.jpeg','youtube',NULL,'','Support en acier  ajustable pour votre etagere',65.00,26.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','EQ MOT 8',0.00,'amount',20.00,'percent','flat_rate',0.00,14,NULL,NULL,NULL,NULL,'EQUERRE-MONTABLE-N-8-IrgPZ',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(18,'PIED DE FAUTEUIL 5.5 CM/4.3 CM','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/SgHyhV1mBrB3Imgqn22LiOmEcekltssVUjFCpERf.jpeg\"]','uploads/products/featured/LgFsZ8I4J6TUVyG9UVCqxWy1XwYMG3QP9wr73bJ0.jpeg','uploads/products/featured/LgFsZ8I4J6TUVyG9UVCqxWy1XwYMG3QP9wr73bJ0.jpeg','uploads/products/flash_deal/LB1K66ZzMkKYVpJZ5PvriGMGJvufms1orQVTiqBS.jpeg','youtube',NULL,'','en acier inoxydable, installation facile',10.00,4.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1791',0.00,'amount',20.00,'percent','flat_rate',0.00,30,NULL,NULL,NULL,NULL,'PIED-DE-FAUTEUIL-55-CM43-CM-ShG0V',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(19,'POIGNEE BOULE POUR PORTES PRINCIPALES','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/oSpkEWJkzhC3zM9IMq5PBvMEzHIjgRA706Jlleh6.jpeg\"]','uploads/products/featured/vvd9LG0Au2YzLOKwamJ3TBRJkxH6cv91jauF3WA6.jpeg','uploads/products/featured/vvd9LG0Au2YzLOKwamJ3TBRJkxH6cv91jauF3WA6.jpeg','uploads/products/flash_deal/lXkBubBRNOCjeHGOXGr9rycSgo0H4Q3B1S9FeGb9.jpeg','youtube',NULL,'','En forme de bouton, à poignées avec ou sans serrure, en  Acier inoxydable, poignées de porte d’entrée se déclinent dans de nombreux matériaux et autant de finitions. Nous avons plusieurs modèles de poignée boule pour porte principale',37.50,15.00,0,'[]','[]','[]','[]',0,1,1,10,'pc','MC 1634-1',0.00,'amount',20.00,'percent','flat_rate',0.00,1,NULL,NULL,NULL,NULL,'POIGNEE-BOULE-POUR-PORTES-PRINCIPALES-DOGm2',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(20,'EQUERRE EN FER FORGE 15','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/thgY6JhqFF8ko9Z7B8dKU0w0V6KZFaAm3oflpvKQ.jpeg\"]','uploads/products/featured/xmHNp3p6Y1fsjDAQr3aqMDHkEhfUVmPX2CdOiJlq.jpeg','uploads/products/featured/xmHNp3p6Y1fsjDAQr3aqMDHkEhfUVmPX2CdOiJlq.jpeg','uploads/products/flash_deal/KnPTbnrw0nGl02oMkE3DkaXFRBNUg1Ch6nKQ7dIC.jpeg','youtube',NULL,'','Supports d\'étagères en forme de L et  en métal 15CM de largeur . En noir et blanc',11.25,4.50,0,'[]','[]','[]','[]',0,1,0,10,'pc','ISOO3/15',0.00,'amount',20.00,'percent','flat_rate',0.00,31,NULL,NULL,NULL,NULL,'EQUERRE-EN-FER-FORGE-15-XLE6D',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(21,'BOUTON A POINTS','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/Yu7tAcZGgeDN8QwkRzdEWLK2tNXZDhT7XtAdDOi4.jpeg\"]','uploads/products/featured/bbpoABhXyZC9tJHhIeWoVCQ6B5g8QW2xGcZoGo9c.jpeg','uploads/products/featured/bbpoABhXyZC9tJHhIeWoVCQ6B5g8QW2xGcZoGo9c.jpeg','uploads/products/flash_deal/TXdu4mtnMR9A4jVSVZHby90n5kQYpeJkqY1HjiH5.jpeg','youtube',NULL,'','Fabriquées à partir de Laiton Cuivre de qualité supérieure pour toutes les armoires, portes de meubles, tiroirs, penderie, commode, meubles de chambre, meuble et placard de cuisine',7.50,3.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1630',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BOUTON-A-POINTS-SEBaH',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(22,'PALIERES/2 29-201 BRONZE','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/8cHjZjd0eYOmMeBoehEhcmekcg8xN6MP9aJmO2lK.jpeg\"]','uploads/products/featured/HVwdHVBkFmdhOAUMe8cIDt2G0osVy63NVtFYQXic.jpeg','uploads/products/featured/HVwdHVBkFmdhOAUMe8cIDt2G0osVy63NVtFYQXic.jpeg','uploads/products/flash_deal/jjteBH2GRC3RINnR8gGyQkLR1hJKIA73xpw6bm1n.jpeg','youtube',NULL,'','Poignée de porte palière en laiton .   Couleur en  finition bronze',120.00,48.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','PA 29-201',0.00,'amount',20.00,'percent','flat_rate',0.00,20,NULL,NULL,NULL,NULL,'PALIERES2-29-201-BRONZE-byeKF',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(23,'POIGNEE INAN CLE AS-250 MALAK ANTIQUE AB','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/H72u4Om11a2BVVrvr7wPrqdpwxpmL0Oh4kOiZq9C.jpeg\"]','uploads/products/featured/eDmm3aESdm4YugF31Ljc8Os2NjMGSnc7I1e2qV4n.jpeg','uploads/products/featured/eDmm3aESdm4YugF31Ljc8Os2NjMGSnc7I1e2qV4n.jpeg','uploads/products/flash_deal/UKg5AkrR6Nz4SzJPqzB3MSYFAG9K7I4ZOyhqC9pT.jpeg','youtube',NULL,'','poignées de portes  fabriquées en métal solide de qualité supérieure pour une résistance, notre accessoire est idéal pour les portes de chambres à coucher, de bureau, rangement… ouverture par clef normale',145.00,58.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','INP250AMC',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-INAN-CLE-AS-250-MALAK-ANTIQUE-AB-nG9KC',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(24,'POIGNEE INAN CANNO AS-250 MALAK ANTIQUE AB','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/6WxEc5vAdkC7Y6ZbK005xDf0TvDdhrb0aw4GIA3O.jpeg\"]','uploads/products/featured/MEx2jaPe7fbncBKe153DoHe2bY6OW6t8O3m4V17b.jpeg','uploads/products/featured/MEx2jaPe7fbncBKe153DoHe2bY6OW6t8O3m4V17b.jpeg','uploads/products/flash_deal/3ZN5tu0GB79krh0q6ey8XU68kvJ3cz5wABl5Z701.jpeg','youtube',NULL,'','poignées de portes  fabriquées en métal solide de qualité supérieure pour une résistance, notre accessoire est idéal pour les portes de chambres à coucher, de bureau, rangement…ouverture par clef de canons',145.00,58.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','INP250AMCA',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-INAN-CANNO-AS-250-MALAK-ANTIQUE-AB-InQFE',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(25,'POIGNEE LISSE EVERGOLD TOILETTE','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/iq5xG57rIGM6eMYaIJzKGWtUXBFqJkhnKbV8N9Hm.jpeg\"]','uploads/products/featured/Sxoi4a3i4njrsEKozEzzq5DDtOkpL4Yd6XCA7v31.jpeg','uploads/products/featured/Sxoi4a3i4njrsEKozEzzq5DDtOkpL4Yd6XCA7v31.jpeg','uploads/products/flash_deal/OO2PTtPvXgUYN40cJW1N79BOCkSIXWaWjvDlcewB.jpeg','youtube',NULL,'','poignées de portes  fabriquées en métal solide de qualité supérieure pour une résistance, notre accessoire est idéal pour les portes des toilettes',125.00,50.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','P 2086 WC',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-LISSE-EVERGOLD-TOILETTE-zY0zu',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(26,'PORTE MONTEAU 3 PIECES','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/utQ306WkBgORDUpVm057Yf1dCH3lA7hsWNp0g9W9.jpeg\"]','uploads/products/featured/myLgrTByamjTiUobz3MN8SpK08szwLLWuwaUgwj6.jpeg','uploads/products/featured/myLgrTByamjTiUobz3MN8SpK08szwLLWuwaUgwj6.jpeg','uploads/products/flash_deal/w3TEFXPtItQEbfjWA78c3FjlsNi2ETelpxM7fuz0.jpeg','youtube',NULL,'','support en Inox pour, cuisine et salle de bain avec  crochets',50.00,20.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1611-3',0.00,'amount',20.00,'percent','flat_rate',0.00,2,NULL,NULL,NULL,NULL,'PORTE-MONTEAU-3-PIECES-BYODj',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(27,'PORTE MONTEAU 5 PIECES','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/DaiTgmxSOrjaHHxYfRmGA9sBqtNdJ3MncUOoI9xk.jpeg\"]','uploads/products/featured/JGWbSIMYFRPvJtOD0kBPQxeOZBSEPYJPyoDYnVR2.jpeg','uploads/products/featured/JGWbSIMYFRPvJtOD0kBPQxeOZBSEPYJPyoDYnVR2.jpeg','uploads/products/flash_deal/LqeSrHvRWxLCAIHC9MhglIgbEFlIY8yZNz7lXyFa.jpeg','youtube',NULL,'','support en acier inoxydable, conçu pour tenir une grande variété d\'articles, très convenable pour l\'utilisation intérieur. Idéal pour les chambres, salles de bain et placards.',16.25,6.50,0,'[]','[]','[]','[]',0,1,0,10,'pc','RY001',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MONTEAU-5-PIECES-l8mhu',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(28,'PORTE MONTEAU MONO','admin',12,1,1,NULL,1,'[]','uploads/products/thumbnail/nrZqzzQmJiYF4R8AMsJObi6Mhg9WDLJuSHHOY4yQ.jpeg','uploads/products/thumbnail/nrZqzzQmJiYF4R8AMsJObi6Mhg9WDLJuSHHOY4yQ.jpeg',NULL,'youtube',NULL,'',NULL,15.00,6.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1798',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MONTEAU-MONO-eiDaD',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:57'),
	(29,'PROTEGE PORTE EN BALAIS','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/t0ltlNlcA1M4eE2NKynUuAjmUjEHjwtKovT7Apa2.jpeg\"]','uploads/products/featured/hTJsXd4v0xAi5qp835LSrYDYaw9aYWVX9Q0yPNAr.jpeg','uploads/products/featured/hTJsXd4v0xAi5qp835LSrYDYaw9aYWVX9Q0yPNAr.jpeg','uploads/products/flash_deal/LXAOtu7x4ugb7WzJ9e6lHQgSmBVjiYHdU1ww05Hn.jpeg','youtube',NULL,'','Facile à poser sur la porte, permet de limiter les courants d’air, et de bloquer l\'intrusion des poussières et nuisibles sous les portes',35.00,14.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','PR P BAL',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PROTEGE-PORTE-EN-BALAIS-fRWyl',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(30,'RESSORT DE PORTES','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/d8ExcOpyKwCADdpTJ8WgKZpEw8Vwu8oYau4IKaro.jpeg\"]','uploads/products/featured/HfuMgHlQq309WAzjkzouvh74LaS3H4UYFRzsCwXd.jpeg','uploads/products/featured/HfuMgHlQq309WAzjkzouvh74LaS3H4UYFRzsCwXd.jpeg','uploads/products/flash_deal/TCCTiB6Vdalb7hrO3JoH6E75wTWEe0ZpspZ3aVIC.jpeg','youtube',NULL,'','Polyvalent et réglable, ce mécanisme fonctionne avec une large gamme de poids de porte et peut être utilisé avec des portes s’ouvrant vers la gauche ou la droite, en métal ou en bois, en environnement résidentiel ou commercial.',225.00,90.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','RES PO',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'RESSORT-DE-PORTES-9ev3M',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(31,'LOUPE JUDA','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/py29U4EyX7HamaqRBekHPX1VcIma488wliLYEWr0.jpeg\"]','uploads/products/featured/3cIEaK7fp6hACbgnAbTegAiVroJvXx5MEsdOyvvJ.jpeg','uploads/products/featured/3cIEaK7fp6hACbgnAbTegAiVroJvXx5MEsdOyvvJ.jpeg','uploads/products/flash_deal/kT0s6UR1dd02bzwpALIgmDmjru36o9RQLcBbJQoo.jpeg','youtube',NULL,'','Cette visionneuse de porte est construite en laiton . il comporte des lentilles en verre et en plastique répertoriées. il s\'adapte facilement aux portes en bois ou en métal',15.00,6.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','LOUP JUD',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'LOUPE-JUDA-2nlr1',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(32,'ROULETTE 40MM ROUGE BLEUE PLAQUE','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/hXuy8B1Eg5cOXIXHxF1vnVrfRB1O7p4daHzq6wys.jpeg\"]','uploads/products/featured/PScU5ApNJqLslcJAMg1G5uIvyShsZntp5cloPmv2.jpeg','uploads/products/featured/PScU5ApNJqLslcJAMg1G5uIvyShsZntp5cloPmv2.jpeg','uploads/products/flash_deal/GRghfad22TnWbCy3FP5J6uB7hSl4MX4WKlehr5vG.jpeg','youtube',NULL,'','en acier/Plastique Roulettes montées sur la plaque mesurer 40 mm pivotante  pour un roulement lisse et silencieux , tout en protégeant vos sols. Fixation avec 4 vis',8.25,3.30,0,'[]','[]','[]','[]',0,1,0,10,'pc','ROUL 40 PL',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROULETTE-40MM-ROUGE-BLEUE-PLAQUE-X6xIJ',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(33,'ROULETTE 40 MM BLEUE/ROUGE AVEC TIGE','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/Wtw5KTeMJJdCln7wxRKGjcwHSgDt030nz5e5CcyN.jpeg\"]','uploads/products/featured/niBxjan7tmS9rFrBYHls2Dp1Mvz5P1133RD8LdSA.jpeg','uploads/products/featured/niBxjan7tmS9rFrBYHls2Dp1Mvz5P1133RD8LdSA.jpeg','uploads/products/flash_deal/i35EYGnFa9B4ga11iHjjMf3UWmNLwgofKRY3uKDe.jpeg','youtube',NULL,'','en acier/Plastique Roulettes montées sur la plaque mesurer 40 mm pivotante  pour un roulement lisse et silencieux , tout en protégeant vos sols.Fixation avec tige',8.25,3.30,0,'[]','[]','[]','[]',0,1,0,10,'pc','ROUL 40TG',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROULETTE-40-MM-BLEUEROUGE-AVEC-TIGE-LPVFX',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(34,'ROULETTE ORANGE 50 MM','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/QwQIvBQ8dPnI15FLIf42tldO6F2GLUdKHIMKtKBx.jpeg\"]','uploads/products/featured/olWEWqGmLlabn7GUHW8SWNQ8pmUZ0hDVjr665y53.jpeg','uploads/products/featured/olWEWqGmLlabn7GUHW8SWNQ8pmUZ0hDVjr665y53.jpeg','uploads/products/flash_deal/RdGjiuG9JhSCWAReguYuFFgEekvU1fQNXrwcF8WI.jpeg','youtube',NULL,'','Roulette en acier/Plastique Roulettes montées sur la plaque mesurer 50 mm pivotante  pour un roulement lisse et silencieux , tout en protégeant vos sols.Fixation avec vis',20.00,8.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','ROUL OR 50 MM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROULETTE-ORANGE-50-MM-f16dh',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(35,'TARJETTE 29-35','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/Zg8AcOtUULnQtXT8iz1x1KoyvVJwoirIV38BIIU7.jpeg\"]','uploads/products/featured/ORNRG6kb9mIKCMWIzE5Aco8ASqvBfdvJpsYIQSSh.jpeg','uploads/products/featured/ORNRG6kb9mIKCMWIzE5Aco8ASqvBfdvJpsYIQSSh.jpeg','uploads/products/flash_deal/2nrDUBbCcpuKzV43Nj8Lvr1OvRpbvdUvHQPi5WHQ.jpeg','youtube',NULL,'','Tarjette en métal antirouille de qualité supérieure, avec longue durée de vie, même dans un environnement humide. Loquet idéal pour porte de maison,  de bureau, de placard, de tiroir, de meuble, etc.',22.50,9.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1853 M',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TARJETTE-29-35-rRK6X',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(36,'SUPPORT BATEAU COULEUR AB','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/cpQRi1rl8z7ZNURyxMuPdKJ7VrGYJhmVta1MBO2B.jpeg\"]','uploads/products/featured/4y3IqFN2bGxyXKS4ye0Csquxhqvmghq2UdaU9pBT.jpeg','uploads/products/featured/4y3IqFN2bGxyXKS4ye0Csquxhqvmghq2UdaU9pBT.jpeg','uploads/products/flash_deal/T0tJnYb78IqWrOzx7Ky8Qk50MqFQG9iNZ1A8vpP1.jpeg','youtube',NULL,'','Le support  en acier inoxydable est résistant à la rouille, à l\'eau et à la chaleur. Couleur bronze',45.00,18.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1626 AB',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SUPPORT-BATEAU-COULEUR-AB-qvvaF',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(37,'PATIN METAL 19MM','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/K7xcPxAVtBFr4BEwgnocMCHvAH63PCtD7mKEoJLc.jpeg\"]','uploads/products/featured/tnKXiUappl52ErmDnAbbREsPgU2jrO6iGoJi8qQW.jpeg','uploads/products/featured/tnKXiUappl52ErmDnAbbREsPgU2jrO6iGoJi8qQW.jpeg','uploads/products/flash_deal/efGonouujItBFCN83nJUdlFTSOSMQ1YMwcFIdQVB.jpeg','youtube',NULL,'','Patins en métal haut de gamme pour la protection efficace des meubles et des sols, disponible tailles 19mm de diametre',3.00,1.20,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1850-1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PATIN-METAL-19MM-PlGZS',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(38,'TIRETTE CHROME CIGARRE 12MM/64','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/4t13zYhD8IKkGALRNoO7toJIohjP1FBF0M7W70px.jpeg\"]','uploads/products/featured/DyQbzvaAC3qvzmX25PUJoDmjihXZeWBibsyzQuHo.jpeg','uploads/products/featured/DyQbzvaAC3qvzmX25PUJoDmjihXZeWBibsyzQuHo.jpeg','uploads/products/flash_deal/CkHYgIDOOcFrm9O3bIyONtZTFQAj0YIxIdjXTyG3.jpeg','youtube',NULL,'','poignee en acier Solide et finition Chrome, parfait pour tiroir, armoire, placard, commode, porte et autres meubles,  taille  64mm',8.25,3.30,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1632-64',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TIRETTE-CHROME-CIGARRE-12MM64-HjEQG',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(39,'TRINGLE RAYE','admin',12,1,1,NULL,1,'[\"uploads\\/products\\/photos\\/DR4hUYPlsp2wsbtza0q37zvQtDimw7Ykc0IRBMNl.jpeg\"]','uploads/products/featured/tLpd4CoPwd5TgbfcSbDQHG27STCU5QXejHvN3GMP.jpeg','uploads/products/featured/tLpd4CoPwd5TgbfcSbDQHG27STCU5QXejHvN3GMP.jpeg','uploads/products/flash_deal/8NKOZRzyARR73staqRXHTwRv3iS1OTSM7VDA1scP.jpeg','youtube',NULL,'','Tringle en acier pour rideaux',42.50,17.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','TR RY',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TRINGLE-RAYE-KNPRZ',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(40,'AGRAFFEUSE INDUTRIELLE \"POWER\"','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/liI827Q3by0RgDCuADA3mCjrOt3Epohy67rDFKNv.jpeg\"]','uploads/products/featured/fKifBpInXUIgqQ0SsWDpuISEWfbQ6Q0c3p92rwez.jpeg','uploads/products/featured/fKifBpInXUIgqQ0SsWDpuISEWfbQ6Q0c3p92rwez.jpeg','uploads/products/flash_deal/cc0RdXR59QTx785wLxDxuUO8vMg8AxumaVdwoojA.jpeg','youtube',NULL,'','Agraffeuse en Acier inoxydable, parfait pour recouvrir le mobilier, décorer, réparer les volets des fenêtres, réparer les chaises, appliquer du tissu sur les murs, créer des images, fixer le contreplaqué, etc.',100.00,40.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC  1709',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'AGRAFFEUSE-INDUTRIELLE-POWER-FmjGf',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(41,'ENSEMBLE DE BURINS TAILLES 10\"12\"14\"','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/317B7jlKViR0XSiAoZTN9NBO2DxQ9TCiel8OBzrD.jpeg\"]','uploads/products/featured/lvEhEvKOSsLAp51ZLtrKDypNksACd8fRMRHWn8sM.jpeg','uploads/products/featured/lvEhEvKOSsLAp51ZLtrKDypNksACd8fRMRHWn8sM.jpeg','uploads/products/flash_deal/48htAGZR7mlybDtHz7oDojGcuaGkALt9Ty1yGW7k.jpeg','youtube',NULL,'','Fabriqué en acier d’alliage les burins sont antirouilles et anti-corrosions, plus résistants et durables',22.50,9.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','BUR 10 12 14',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-BURINS-TAILLES-101214-sQVz0',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(42,'ENSEMBLE DE CLE A MOLETTE TAILLE 8-10-12','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/kmGAbSSrsvqf7n8Tj9pcpgUrBFRbS81Zii6rQCw5.jpeg\"]','uploads/products/featured/SB6rrwuYAWp7izRtaM0UbhkKsVEnd3euXlmKsVBU.jpeg','uploads/products/featured/SB6rrwuYAWp7izRtaM0UbhkKsVEnd3euXlmKsVBU.jpeg','uploads/products/flash_deal/nGdCoWRgHbEf09kit8Hx6pUC4Hhh8Bi819a3Z5ZE.jpeg','youtube',NULL,'','Ensemble de Clé à molette  idéale pour les travaux sur cuivre, laiton en plomberie, climatisation, réfrigération, maintenance, chauffage de 3 tailles 8-10-12',52.50,21.00,0,'[]','[]','[]','[]',0,1,1,10,'pc','MC 1310 1-2-3',0.00,'amount',20.00,'percent','flat_rate',0.00,2,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-CLE-A-MOLETTE-TAILLE-8-10-12-gvW3P',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(43,'ENSEMBLE DE CLE SUPO 10 PCS','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/gm5FZov7Hu0epyyGCgCsJ8iGT8ymxRXXN6a1LB2q.jpeg\"]','uploads/products/featured/q8a3tk93ctdb5zjiBJwp9hTaDvLYsfIz16i87I83.jpeg','uploads/products/featured/q8a3tk93ctdb5zjiBJwp9hTaDvLYsfIz16i87I83.jpeg','uploads/products/flash_deal/FU6LA5mOeQ0OuNptjGDrcCOcdBLtVEd7xpUvc1ZE.jpeg','youtube',NULL,'','Clé multifonction 10 en 1 en acier inoxydable de type croix multifonction, électricien d\'extérieur, plombier, interrupteur à croix, porte-clés, tournevis',8.25,3.30,0,'[]','[]','[]','[]',0,1,1,10,'pc','MC 1316',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-CLE-SUPO-10-PCS-mHyoj',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(44,'ENSEMBLE DE CLEFS A GRENAGE','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/rh0Mn6VPHEpxR9z8yHhpbgEDGrvYwxYJbTFChVPL.jpeg\"]','uploads/products/featured/zyn50zDmwquSRJhKMnK5N3CSo6zJaIdSZEZL7t6O.jpeg','uploads/products/featured/zyn50zDmwquSRJhKMnK5N3CSo6zJaIdSZEZL7t6O.jpeg','uploads/products/flash_deal/cdbVWhpkuhy6lcr1XACuDgcsRST0gRCaLSkzc4Fq.jpeg','youtube',NULL,'','en acier  de qualité supérieure pour une utilisation longue durée, notre jeu de clés  est doté d\'une tête sphérique permettant de travailler jusqu\'à 30° d\'inclinaison et d\'exécuter des tâches difficiles en mécanique',22.50,9.00,0,'[]','[]','[]','[]',0,1,1,10,'pc','MC 1319/A6',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-CLEFS-A-GRENAGE-UDZ5L',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(45,'CLEF A PIPE NUM 8','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/pAkZ7iAMkCtJjvbxbw43xcE9feBuhzzwFxwdm5O8.jpeg\"]','uploads/products/featured/CGKV5bqhZavetGiwpN5tUZpxLgdCF6OBBk0uRAiH.jpeg','uploads/products/featured/CGKV5bqhZavetGiwpN5tUZpxLgdCF6OBBk0uRAiH.jpeg','uploads/products/flash_deal/vSqwGYVsjtHc4VhZ7jOrw2AyLjmKcQ5RSJOL9tkQ.jpeg','youtube',NULL,'','clés à pipe :taille 8 INCH, destinées aux serrages puissants, en chromée satinée.',12.50,5.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1732-8',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-A-PIPE-NUM-8-gq3PU',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(46,'CUTTEUR GRIS SIMPLE','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/Pg9RhKgAyVFcpMsHZynQlG9eGfzY0IAc47elVNjZ.jpeg\"]','uploads/products/featured/Qe4Vjj8wP3BBWi4DtLhzWIRN2D0nHls5BDk6qwkJ.jpeg','uploads/products/featured/Qe4Vjj8wP3BBWi4DtLhzWIRN2D0nHls5BDk6qwkJ.jpeg','uploads/products/flash_deal/U9yLUfovTlTkDOefUZwIMHRGwMgW8iMqiyTmhbiq.jpeg','youtube',NULL,'','Poignée en élastomère souple avec Système de blocage de la lame par molette pour une plus grande sécurité pendant la coupe,  le Chariot porte-lame et guide-lame sont en acier inoxydable.',8.75,3.50,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC1511',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CUTTEUR-GRIS-SIMPLE-OOpzE',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(47,'ENSEMBLE DE TOURNEVIS 6 PIECES','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/sxjtbSa3uZDE2Z7SFqNqBHz4hpjRKV5s3U1idPmb.jpeg\"]','uploads/products/featured/WlFJnQqGfu2kZ94FN6F4AxxOF7DL3qB7FY6TWAds.jpeg','uploads/products/featured/WlFJnQqGfu2kZ94FN6F4AxxOF7DL3qB7FY6TWAds.jpeg','uploads/products/flash_deal/GaWGRZIsZ9IZEJLMSA4IkXIIUXxjcWIsITG5S8Ds.jpeg','youtube',NULL,'','Tournevis en acier avec poignée antidérapante confortable,  convient pour différents types de maintenance des équipements électroniques',87.50,35.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC1530',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-TOURNEVIS-6-PIECES-qyD99',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(48,'GRATOIRES   TAILLES   160MM-180MM-200MM-220 MM','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/QF06gbd6JlMziiyWx6MP5WsoXmoY8kT5YT6K8V2Q.jpeg\"]','uploads/products/featured/8NdWk6l0TvPgvzcFKz7hQ2txqBtMc1mun5bAI1UL.jpeg','uploads/products/featured/8NdWk6l0TvPgvzcFKz7hQ2txqBtMc1mun5bAI1UL.jpeg','uploads/products/flash_deal/BSYq02CCj0wPIXHiMcHSOlM87lKg8InSSvRtPN1g.jpeg','youtube',NULL,'','ensemble de Lames en acier souple mais très résistant, différentes largeurs (160-180-220-220), Pour sols, peinture et papiers-peints',25.00,10.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC1639',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'GRATOIRES---TAILLES---160MM-180MM-200MM-220-MM-68fuF',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(49,'LIME POUR BOIS 12 INCH','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/7Noh72GObahZeJATHjDKaeh4sS4niwKkgCjb7B2h.jpeg\"]','uploads/products/featured/q1pIeZB33ozGnqzI28ZiPzwOhjRdQLleLP5Unufm.jpeg','uploads/products/featured/q1pIeZB33ozGnqzI28ZiPzwOhjRdQLleLP5Unufm.jpeg','uploads/products/flash_deal/bwiTKc18QAXahMJ2oa8q7lO8QNC5OYxn2431rRpX.jpeg','youtube',NULL,'','Fabriqué en acier  de haute qualité pour la transformation du bois et  affûtage permanent, poignée bi matière antidérapante - réduisant les vibrations',28.75,11.50,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC1726-12',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'LIME-POUR-BOIS-12-INCH-OhHS5',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(50,'MELANGEUR DE CIMENT','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/jiEL6glfUsus1O3OpYbozD6eUTt5JdGFTKnkIupG.jpeg\"]','uploads/products/featured/wMWWBbNY08pJvP10lEBZJQoiWufo4jJfDMVZ2JRt.jpeg','uploads/products/featured/wMWWBbNY08pJvP10lEBZJQoiWufo4jJfDMVZ2JRt.jpeg','uploads/products/flash_deal/4M9EM1Ku9mgr3FaOwHoBjUEixyPPN5dezGrmOxx0.jpeg','youtube',NULL,'','Graniteuse en acier de qualite industrielle,  plus Rapide et moins effort que le Mélange Traditionnel, Améliorant L\'Efficacité du Travail.',107.50,43.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC1312',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MELANGEUR-DE-CIMENT-QxF52',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(51,'PINCE A RIVET','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/kDQnOaeHK3JR3j5K44j7TXDYM8Du880tYoTNtHUn.png\"]','uploads/products/featured/EYvArEXN7AVVaNN6aw0kJw2wXKa9BZMdfjFukvDI.png','uploads/products/featured/EYvArEXN7AVVaNN6aw0kJw2wXKa9BZMdfjFukvDI.png','uploads/products/flash_deal/R9t3RzuWLOSKzWNRMY6kmPN8tibSkDJmZ0npJBzF.png','youtube',NULL,'','Pince en acier Outil de rivetage professionnel de haute qualité avec clef d\'installation incluse et ressort de rappel pour l\'utilisation à une main.',41.25,16.50,0,'[]','[]','[]','[]',0,1,0,10,'pc','PI RV',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PINCE-A-RIVET-rZUn5',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(52,'SCIE A MAIN \"POWER\"','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/nAUYlcDVDNhAGSThzoe8PnXN7Afd1y5IUCNU2PQg.jpeg\"]','uploads/products/featured/FEgjmPF4Zwe4HnAe6LKLHI6XJc0NguLabyYAulby.jpeg','uploads/products/featured/FEgjmPF4Zwe4HnAe6LKLHI6XJc0NguLabyYAulby.jpeg','uploads/products/flash_deal/WMWNHTeqvi9YkiTg7Y0MGNMtyofGotc1XvxPTqJi.jpeg','youtube',NULL,'','scie a main avec dents acier, se remplace facilement, munie d\'un protecteur de lame.',35.00,14.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC1322',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SCIE-A-MAIN-POWER-J03Sn',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(53,'SCIE POUR BRANCHE','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/Mo6ytpzdlYBloH7mLXuTArAw7ctXGN09JYpUthX4.jpeg\"]','uploads/products/featured/zdwGDYrwD8CLgnkC4hBNFC63bSLalrHepq3LRwTa.jpeg','uploads/products/featured/zdwGDYrwD8CLgnkC4hBNFC63bSLalrHepq3LRwTa.jpeg','uploads/products/flash_deal/NuX02WTeHzRNkoktwwOabdfamqVVD07DOhUofYIz.jpeg','youtube',NULL,'','La scie est flexible et possède une lame droite de 610mm, solide et stable avec protège lame, efficace pour le sciage de bois frais et pour les branches épaisses.',46.25,18.50,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC1401',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SCIE-POUR-BRANCHE-30ezG',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(54,'TALOCHE A MOTIF AVEC MANCHE EN BOIS','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/oPE4yLXIt8oeiknlaifyZpf2dM6GwEeQ7uoDkUDk.jpeg\"]','uploads/products/featured/l5twqfX2wzjypAyVQAaN4ncrfcjWbpGQBvFgQzNi.jpeg','uploads/products/featured/l5twqfX2wzjypAyVQAaN4ncrfcjWbpGQBvFgQzNi.jpeg','uploads/products/flash_deal/exvr4pYW63DXLdrbxvQBm1WIj2jo1Xn3ojCmEhm3.jpeg','youtube',NULL,'','Taloche pour colle et pour tracage de motifs avec lame en acier et manche en bois',37.50,15.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC1721-1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TALOCHE-A-MOTIF-AVEC-MANCHE-EN-BOIS-9S3eP',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(55,'TOURNEVIS','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/KBTE7DatYr68nbvdScCJcm3cPLqHFD08LI5BDGri.jpeg\"]','uploads/products/featured/TwehYUPm03t0AVDuDJiRnAukxi51NVlHLqJ5Bd56.jpeg','uploads/products/featured/TwehYUPm03t0AVDuDJiRnAukxi51NVlHLqJ5Bd56.jpeg','uploads/products/flash_deal/X7WwBGSoBMVFHgXltPwcujSizzTVRxc5bBzRqknp.jpeg','youtube',NULL,'','outil de poing utilisé entre autres pour l\'insertion et le retrait des vis dans les matériaux    avec  tete reglable et aimant',17.50,7.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC1729',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TOURNEVIS-qpjac',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(56,'TOURNEVIS DE POCHE','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/1GFo8vLGVj094eUPHmLCRks5MM7ssW67jHwihV1U.jpeg\"]','uploads/products/featured/UwfCDdydTEtiAdmYd7EuZK9H6JTe9ybZzVfZeiQe.jpeg','uploads/products/featured/UwfCDdydTEtiAdmYd7EuZK9H6JTe9ybZzVfZeiQe.jpeg','uploads/products/flash_deal/hUZPoUtQFgvGBFDz9L0v5BNeg69IcJpaubb10Z9O.jpeg','youtube',NULL,'','Fabriqué en acier inoxydable de haute qualité pour la durabilité, tournevis  multifonction de poche',20.00,8.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC12-6',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TOURNEVIS-DE-POCHE-P8GT5',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(57,'TOURNEVIS REGLABLE','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/o7NPE4G72ZpAgGtBBYpXc2YdzvcwBz7YL0UKBe6T.jpeg\"]','uploads/products/featured/bOXfEMJuF9GEYW7j1Hj0c2yBkibjZrjGaqF2mVyy.jpeg','uploads/products/featured/bOXfEMJuF9GEYW7j1Hj0c2yBkibjZrjGaqF2mVyy.jpeg','uploads/products/flash_deal/0hB6QYDihWFbD4nlJS5IFU1h4VRc5smttqe8WyDC.jpeg','youtube',NULL,'','Applicable pour le verrouillage à vis d\'un instrument de précision,en tete reversible (système plat et americain)',13.75,5.50,0,'[]','[]','[]','[]',0,1,0,10,'pc','SCD01',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TOURNEVIS-REGLABLE-l1vo5',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(58,'TOURNEVIS TESTEUR','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/2UOp1RC0MGNsF617e5slwG3KmiBdvG5XKeRCntMq.jpeg\"]','uploads/products/featured/mDya9x1OJ5GZ358gaISo91mqvucbRUgdC9qJIpVl.jpeg','uploads/products/featured/mDya9x1OJ5GZ358gaISo91mqvucbRUgdC9qJIpVl.jpeg','uploads/products/flash_deal/WZwx8uY3TJSLqnMlvLbssjvexu1OZtbNYTVTED0S.jpeg','youtube',NULL,'','Tournevis Ergonomique d\'une excellente qualité avec une isolation à  500V et testé à plus de 1000V.',3.38,1.35,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC1731',0.00,'amount',20.00,'percent','flat_rate',0.00,2,NULL,NULL,NULL,NULL,'TOURNEVIS-TESTEUR-wyow4',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(59,'TRUELLE POWER','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/sYbjaYbwd7fL2O6SZd6ZnOOJIxj35d4yLySp7MuT.jpeg\"]','uploads/products/featured/J2ciTSUFlg0gEZJfOVQwdUnseyQjfqySxvIazPKk.jpeg','uploads/products/featured/J2ciTSUFlg0gEZJfOVQwdUnseyQjfqySxvIazPKk.jpeg','uploads/products/flash_deal/QgOgceLEoRmWHJl0eGudYi2ZEqwggScK9ajg6jn8.jpeg','youtube',NULL,'','Truelle de maçon pour travaux de ciment, platres, elle est composée d\'une lame mince, en forme de triangle ou carrée, d\'acier plus ou moins flexible, et d\'un manche de fer recourbé se terminant par une poignée en bois ou en plastique. Le manche est inséré dans la poignée et y est fixé à l\'aide d\'une virole.',30.00,12.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC12-10 20-22',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TRUELLE-POWER-P7scB',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(60,'CLEF DE SERRAGE FORME T N 21','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/wr006obGwU2mA5yzbYhavG8OMPSf9eDMo8LBPKGz.jpeg\"]','uploads/products/featured/Exp4iLI1gV26me1BV3qpPpYPRWJXSMXw0o2oGc7l.jpeg','uploads/products/featured/Exp4iLI1gV26me1BV3qpPpYPRWJXSMXw0o2oGc7l.jpeg','uploads/products/flash_deal/a1KbKF6fhXtYui3PcT89RwNjSgfqOSFlCcEtvsoT.jpeg','youtube',NULL,'','Généralement en métal, une clé sert à assembler, serrer et desserrer les vis, les boulons, et les écrous.',16.25,6.50,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1816-1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-DE-SERRAGE-FORME-T-N-21-Z5hW6',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(61,'CISAILLE NUM 18','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/iCiJoawooi1i5CX19IhlwCxvIAMeUbXeHHgbiPOm.jpeg\"]','uploads/products/featured/YXpV5yHRsFR88NBW8qInNNo26b3XJtNlr6h3eYOn.jpeg','uploads/products/featured/YXpV5yHRsFR88NBW8qInNNo26b3XJtNlr6h3eYOn.jpeg','uploads/products/flash_deal/is5S9mktPwJr2avBPFiVG8ko03ed0bWocTTeQSIY.jpeg','youtube',NULL,'','Matériau Durable Les pinces sont fabriquées en acier au chrome vanadium, conviennent aux surfaces dentées',150.00,60.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1829-1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CISAILLE-NUM-18-84Ta5',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(62,'CLEF PLAT TAILLE  8\"','admin',12,2,4,NULL,1,'[\"uploads\\/products\\/photos\\/bSeqXyrR5QrKIdo3StZgyWAe0NBfWQs3TagufADO.jpeg\"]','uploads/products/featured/Afqa6ZgSUpjYNPCcMxI8WAPPvX89PHiOtC01JtQo.jpeg','uploads/products/featured/Afqa6ZgSUpjYNPCcMxI8WAPPvX89PHiOtC01JtQo.jpeg','uploads/products/flash_deal/QqlLG5ylE28oXYy4Yv84jZVkWADvHTS5cs9Jn52M.jpeg','youtube',NULL,'','Clef en acier chrome vanadium avec surface brillante de différentes tailles:  13\"-',20.00,8.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1825-3',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-PLAT-TAILLE--8-FMWGg',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(63,'CADENAS 263 CLEF CROISSANT','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/m5htKJpwnFLhFixYZS9KA4CUhYohSlQM5WYW11q8.jpeg\"]','uploads/products/featured/EZ9bZRPhrmHOLIdmSDcm6sLC6xen48z3oYuj9GZm.jpeg','uploads/products/featured/EZ9bZRPhrmHOLIdmSDcm6sLC6xen48z3oYuj9GZm.jpeg','uploads/products/flash_deal/HfjZArerRVg12dTDPNrkS6pltZyywDIObmYM08oi.jpeg','youtube',NULL,'','cadenas en metal   avec clés identiques, 32&nbsp;mm de large, Code 263  clefs croissantes.',13.75,5.50,0,'[]','[]','[]','[]',0,1,0,10,'pc','CAD 263 CR',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CADENAS-263-CLEF-CROISSANT-U3G5W',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(64,'CADENAS 263 TOURNEVIS','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/0fk6RpguRAN5GIet9KBe1JagzSp9dTHeHHmshbGc.png\"]','uploads/products/featured/bo4JTwq0AgoSG6W2UMgr2I8OLS3pMOCj4lLHS6xB.png','uploads/products/featured/bo4JTwq0AgoSG6W2UMgr2I8OLS3pMOCj4lLHS6xB.png','uploads/products/flash_deal/ZnybvGk3XGezAmYaoH46jPrI2l6c42aXXpjGMPk5.png','youtube',NULL,'','cadenas en metal   avec clés identiques, 32&nbsp;mm de large, Code 263  clefs a tete tournevis',12.50,5.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','CAD TOUR 263',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CADENAS-263-TOURNEVIS-qeYtU',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(65,'CADENAS GUSAN NUM 264','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/lsXNvTXokvCnJHTqLAsy2CA2UBWnZEWxkPemlIBP.jpeg\"]','uploads/products/featured/WHk0pHjaNbBmmDPtLHbtFo5dYgmrM9GJQ1NoPmWb.jpeg','uploads/products/featured/WHk0pHjaNbBmmDPtLHbtFo5dYgmrM9GJQ1NoPmWb.jpeg','uploads/products/flash_deal/U5Le9MJAt5zPin9vXAJjN4ZtrSKgdIdWHy5fAl0m.jpeg','youtube',NULL,'','Fabriqué en laiton  résistant à l\'usage avec 3 clés . dimensions: 38 mm.',14.50,5.80,0,'[]','[]','[]','[]',0,1,0,10,'pc','CAD GUS 264',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CADENAS-GUSAN-NUM-264-KvKsQ',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(66,'CADENAS 20 MM','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/R91ZleAfKuEGvnpNSl8ehCdRxNIiOFlAJqrEWsK4.png\"]','uploads/products/featured/iYTfwDnudJaW3peOkiDyy3opV0XQ53kZM1mzkbtg.png','uploads/products/featured/iYTfwDnudJaW3peOkiDyy3opV0XQ53kZM1mzkbtg.png','uploads/products/flash_deal/9JPEKWekst7lCbO8JA8fRNMxOdh3vHkCHXwagZvb.png','youtube',NULL,'','serrure solide en metal, dimensions: 20 mm, parfaite pour verrouiller en toute sécurité des valises et armoires',105.00,42.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','CAD20MM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CADENAS-20-MM-GZ7Ra',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(67,'CADENAS CARRE CHROMEE 70MM','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/8UdihxA9qTls46IsEAK47Boxft6YBoqeDh7UUD94.jpeg\"]','uploads/products/featured/QGXUq0qXuOQjgwHUDZ5BN3SV9y5tpcQ3HN8em2x6.jpeg','uploads/products/featured/QGXUq0qXuOQjgwHUDZ5BN3SV9y5tpcQ3HN8em2x6.jpeg','uploads/products/flash_deal/uIt1vsG99Y4yHEqlbbuUasISopnn7Sms32NTQUjR.jpeg','youtube',NULL,'','Corps en acier massif  résistant à la corrosion, chaque cadenas est livré avec  3 Cléfs   dimensions: 70 mm',62.50,25.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1832-70 MM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CADENAS-CARRE-CHROMEE-70MM-DRIl3',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(68,'CANON 60MM \"DOUBLE SEKA\" COULEUR AB','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/LNyHHsf6WIWCR9gV2zdKox4pIxpF70BNfku1VW8P.jpeg\"]','uploads/products/featured/qpozmVRuSp96ZopMTTkfnyyqxlqnPMRY152dHawf.jpeg','uploads/products/featured/qpozmVRuSp96ZopMTTkfnyyqxlqnPMRY152dHawf.jpeg','uploads/products/flash_deal/Gy7JMTpwkHcIoolufCMdskGCDghW9NarHV94wMGO.jpeg','youtube',NULL,'','Cylindre de serrure  en cuivre de haute qualité, avec 5 clés à noyau de cuivre, en laiton,  couleur bronze',107.50,43.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1715-AB',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CANON-60MM-DOUBLE-SEKA-COULEUR-AB-w4L11',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(69,'CADENAS 40MM MAXI POWER','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/mw6IibHSoZrf1rRkrjw1CNGs7RC2Gm13UA1uzHk2.jpeg\"]','uploads/products/featured/AEep5SfWphQGHz38sMg1HedCH4c7GvYMaCY3D3rC.jpeg','uploads/products/featured/AEep5SfWphQGHz38sMg1HedCH4c7GvYMaCY3D3rC.jpeg','uploads/products/flash_deal/85DrxCLvHY8HEfyoUYemXp4vSIXC3bD2c9s9CeNS.jpeg','youtube',NULL,'','Cadenas En Laiton',27.50,11.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1813-40',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CADENAS-40MM-MAXI-POWER-tCCE8',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(70,'CANON DU MAITRE D\'OUVRAGE','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/9U9hQgxxLWnEbWFvxVYHriFXPMcsHG8P7eeSTtov.jpeg\"]','uploads/products/featured/jiM5nlLIncRtunhpgF67HD2L4zj6Tw2TC8jVttBQ.jpeg','uploads/products/featured/jiM5nlLIncRtunhpgF67HD2L4zj6Tw2TC8jVttBQ.jpeg','uploads/products/flash_deal/ZWL5QVb5rkBNdmf3NaS0DvC3Tyy6q6ksPmttRs1v.jpeg','youtube',NULL,'','Ce cylindre est l’élément central de toute porte et joue un rôle primordial dans la protection contre les effractions. Il assure la fermeture de la porte grâce à l’interaction de goupilles',212.50,85.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1717',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CANON-DU-MAITRE-DOUVRAGE-iOosR',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(71,'CANON WC BRICOL ART','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/XzXapk7oANRDJ2NHuprh8l4ObOhz6wI50AVR6RAO.jpeg\"]','uploads/products/featured/YA1oGufYp3ucZ8bQNEUBig0D7O4sPd0Fn6MmfZok.jpeg','uploads/products/featured/YA1oGufYp3ucZ8bQNEUBig0D7O4sPd0Fn6MmfZok.jpeg','uploads/products/flash_deal/IqMmkoAvN99Sa488Z1oghnX8OVPFcWIKEkJNzCxs.jpeg','youtube',NULL,'','Finition en laiton avec condamnation, convient à tous les types de portes et surtout pour les toilettes',37.50,15.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','IMZCLWB',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CANON-WC-BRICOL-ART-qykhO',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(72,'SERRURE FF 140MM','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/ycDKlPLui8qc0naKBSeeeX6d3oo1iNfOckUew2q1.jpeg\"]','uploads/products/featured/vR4vUxCq0r4t2Ptv92o6RsSGchOQBH5ob7BvVf3A.jpeg','uploads/products/featured/vR4vUxCq0r4t2Ptv92o6RsSGchOQBH5ob7BvVf3A.jpeg','uploads/products/flash_deal/GL4vdTv81nNz3Z3vcQRKfXR9eDuaJjNky7oFfqCk.jpeg','youtube',NULL,'','serrure  en acier taille 140MM avec 3 clefs  pour portes metaliques',162.50,65.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1712',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SERRURE-FF-140MM-gmZ3s',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(73,'SERRURE CASTRE \"PACIDO\"','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/V9UqYtHqxBlFFhTXx9s9U5TNtabgwX1NlhGFnb3P.jpeg\"]','uploads/products/featured/TkD5huPjRSnyPp63xov0EKbaN1FQipi5FbGpZA0w.jpeg','uploads/products/featured/TkD5huPjRSnyPp63xov0EKbaN1FQipi5FbGpZA0w.jpeg','uploads/products/flash_deal/wQEA5CfF3K5QCrsI9K0rrhEyTBRclDjbiLgdIGts.jpeg','youtube',NULL,'','En metal elle s\'installe sur plusieurs types de portes (en bois, en métal ou en PVC).',62.50,25.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','ABSEP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SERRURE-CASTRE-PACIDO-6rw02',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(74,'SERRURE CASTRE BRICARD','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/4t7rXjIydtUm89c5yyrRCPm6Nr0wMM21PqEbtzYe.jpeg\"]','uploads/products/featured/vTby7e1W4fg3EYrBCQsUWtjTC6XmtTzApbXs2FCj.jpeg','uploads/products/featured/vTby7e1W4fg3EYrBCQsUWtjTC6XmtTzApbXs2FCj.jpeg','uploads/products/flash_deal/YO4sAglKgdblOelQkvbWXPTSD7pfynvdeJ5Lbzn9.jpeg','youtube',NULL,'','En metal, la serrure à encastrer est la plus utilisée, En effet, elle est difficile à crocheter à cause de ses multiples points de fermeture pouvant être de 1, 3 ou 5',145.00,58.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','ABSER',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SERRURE-CASTRE-BRICARD-zbKKM',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(75,'VERROU MICCO','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/QIw3dxBXtNgyhStLYXvknwx310snS63VS5UVlQxB.jpeg\"]','uploads/products/featured/zptMLwefcurepEGkWNKZJB11tHlpAnehzzJ5y3I8.jpeg','uploads/products/featured/zptMLwefcurepEGkWNKZJB11tHlpAnehzzJ5y3I8.jpeg','uploads/products/flash_deal/8BeeK2tuR9ymcj0ttrVqIwOf2Mj0wGA8coDMbAmi.jpeg','youtube',NULL,'','Fabriqué en alliage de zinc de qualité, anti-corrosion, durable, peuvent les utiliser pour un temps de longue durée.',55.00,22.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','ABVM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VERROU-MICCO-5qzda',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(76,'CADENAS MOTO','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/BhUnrbz53MqVxNVvcyy6geVBfmbjWitFX11OHML2.jpeg\"]','uploads/products/featured/wvjhBOt5I3iiqJ0nUCsx7vT4kiGuyI1jU1qUOP4i.jpeg','uploads/products/featured/wvjhBOt5I3iiqJ0nUCsx7vT4kiGuyI1jU1qUOP4i.jpeg','uploads/products/flash_deal/VfUrUY3NVOLMQiBvRZYOkD6Z9mazcak3ckPQrBmL.jpeg','youtube',NULL,'','Verrou de câble de sécurité composé de câbles métalliques torsadés solides et durables à l\'intérieur et d\'un revêtement transparent en caoutchouc coloré à l\'extérieur.',50.00,20.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','B3',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CADENAS-MOTO-yQzFv',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(77,'CADENAS MOTO','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/xds3PQJA7ilD2lNRmpM4qGxAAW8xbEgHyIfXuY9F.jpeg\"]','uploads/products/featured/7UK6bKtAet9fKBOtX583hCPkVKxxGdBDXa6hPj5B.jpeg','uploads/products/featured/7UK6bKtAet9fKBOtX583hCPkVKxxGdBDXa6hPj5B.jpeg','uploads/products/flash_deal/vYoPiqY00bpVJRkJXXVEE4o14EQPaj1ekkn86Xtd.jpeg','youtube',NULL,'','Un câble en acier ,Sécurité assurée. Extrêmement difficile à ouvrir sans les clefs grâce à son double mécanisme de fermeture , recommandé pour les vélos, les scooters et les motos.',95.00,38.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 12-13',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CADENAS-MOTO-UQJ09',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(78,'CADENAS POUR BICYCLETTE','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/vXumKyYZwMuQAInmRjvNWrv8eynW72Zo7OGbZQFP.jpeg\"]','uploads/products/featured/vgbmNQTJgyJUaE0klUC1G5UDK03eo7hIATPLPDZ5.jpeg','uploads/products/featured/vgbmNQTJgyJUaE0klUC1G5UDK03eo7hIATPLPDZ5.jpeg','uploads/products/flash_deal/ewstav5k8pNFgc16egboXWdFT6FSpBMUbn0J0s5u.jpeg','youtube',NULL,'','Accessoire idéal pour protéger les roues et selles de vôtres bicyclettes',55.00,22.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1839',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CADENAS-POUR-BICYCLETTE-B0R00',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(79,'CADENAS POUR BICYCLETTE','admin',12,3,7,NULL,1,'[\"uploads\\/products\\/photos\\/Md2byaNYhQ3jc0vNMPVD9hxZyLL2Ifb18imkCpCi.jpeg\"]','uploads/products/featured/lnTQrP36HTTebavC0TNSPmrUEO6mBGi2XYtCB0RF.jpeg','uploads/products/featured/lnTQrP36HTTebavC0TNSPmrUEO6mBGi2XYtCB0RF.jpeg','uploads/products/flash_deal/ebQyGoBarqR7NH0Ielv4XM09vJRnEpxMzZZvwIOD.jpeg','youtube',NULL,'','Accessoire idéal pour protéger les roues et selles de vôtres bicyclettes',42.50,17.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1706',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CADENAS-POUR-BICYCLETTE-D65Fk',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(80,'CLAPE A CUIVRE 1\' 1/3','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/jFQiwtu80hyxbKQV55RrNy1ga38WrbCUUol0Ao3J.jpeg\"]','uploads/products/featured/vnNGv0eoTbcnFwDTN0lGumFY7VC6qfriNfmE5czt.jpeg','uploads/products/featured/vnNGv0eoTbcnFwDTN0lGumFY7VC6qfriNfmE5czt.jpeg','uploads/products/flash_deal/l5oFE0sG1BkLFQjH336jkFGyLgUSeyyfa20kXxBL.jpeg','youtube',NULL,'','Clapet anti-retour à battant en laiton valable pour les utilisations suivantes : Industrie, pneumatique, hydraulique, installations de plomberie',100.00,40.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','PLOMC 11 / 2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLAPE-A-CUIVRE-1-13-2KPOd',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(81,'TERFON BIDET IZ FIX','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/Vh1dqESt3GydRllvdhRJKZRLNOoFeLJLbOiPLcf6.jpeg\"]','uploads/products/featured/YXBOMeaKYdJSAQF4VpJD3s9yABgQGQoVHa3lQFXE.jpeg','uploads/products/featured/YXBOMeaKYdJSAQF4VpJD3s9yABgQGQoVHa3lQFXE.jpeg','uploads/products/flash_deal/rZooL7NoxqY9QNmG0foQTFmDLcw9CtT074okOYhG.jpeg','youtube',NULL,'','en inox résistent bien à la corrosion, Outil de fixation incontournable, le tirefond qui a pour mission de supporter une charge, pour fixation des bidets',7.50,3.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','ARTTB',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TERFON-BIDET-IZ-FIX-687If',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(82,'TERFON CHAUFF EAU IZ','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/vB9H69P0oPCxpYQEHKBR7RNGitVoeqnt4PI2y8rN.jpeg\"]','uploads/products/featured/RTLVbOp4hqeMzJMP7Wv7luihk4wXe6cMoKtLyHit.jpeg','uploads/products/featured/RTLVbOp4hqeMzJMP7Wv7luihk4wXe6cMoKtLyHit.jpeg','uploads/products/flash_deal/j4o5nc30c8ojuESfkxs6fiWaAdCAVWUcoS3LQrAs.jpeg','youtube',NULL,'','en inox résistent bien à la corrosion, Outil de fixation incontournable, le tirefond qui a pour mission de supporter une charge, pour fixation des chauffe eau',10.00,4.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','ARTTC',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TERFON-CHAUFF-EAU-IZ-YEj7A',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(83,'REDUCTION 1 \' 1/4 1\' CUIVRE GOLD','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/BogTDQ1KJXZpoSoQP7CkNDuq8sTM689NylFc9fiG.jpeg\"]','uploads/products/featured/vYrolZTnKmJsVJsoYL7ZwUUUmkDu3VwllqSiPQaj.jpeg','uploads/products/featured/vYrolZTnKmJsVJsoYL7ZwUUUmkDu3VwllqSiPQaj.jpeg','uploads/products/flash_deal/RvDIXYHLSfpmev9MOgrfXavLdDMufrNYBoqdXPRm.jpeg','youtube',NULL,'','Fabriqué en laiton, plus dur que d\'autres matériaux, il est principalement utilisé pour compteur d\'eau, adoucisseur d\'eau, purificateur d\'eau, préfiltre, chauffage au sol, chaudière à eau, etc.',20.00,8.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','SNDR 1141',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'REDUCTION-1--14-1-CUIVRE-GOLD-XFmNX',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(84,'BOUCHON 3/4 FEMELLE IR','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/oVSeySFtDpfoGmr48yLPyXeFTfT4QKulYLX9kY0k.jpeg\"]','uploads/products/featured/eSg0890zu7IkXUeCPVcuQGIFnOnj3ajJgnXhLu6n.jpeg','uploads/products/featured/eSg0890zu7IkXUeCPVcuQGIFnOnj3ajJgnXhLu6n.jpeg','uploads/products/flash_deal/7dB0qzh8uvG3QS1vtAYmCcsABu1KKw0i4faWlFqG.jpeg','youtube',NULL,'','Bouchon Plomberie Femelle [20/27 = 3/4] Pour Robinet exterieur, Radiateur, Lave vaisselle, Raccord en Laiton de qualité professionnel fourni avec 2 joints épais renforcer.',4.00,1.60,0,'[]','[]','[]','[]',0,1,0,10,'pc','ARTB3/4F',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BOUCHON-34-FEMELLE-IR-lM3rz',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(85,'REDUCTION 1/2*3/8 IRON','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/6wtsWiDvks00u6V212QKWXRV0faSul0t7EEn4UsX.jpeg\"]','uploads/products/featured/GLSShq0coEse8EJVwKx7AqYDVxxbZoMzy00d1UBV.jpeg','uploads/products/featured/GLSShq0coEse8EJVwKx7AqYDVxxbZoMzy00d1UBV.jpeg','uploads/products/flash_deal/LUTKpd2s7PqyARi7p4TrQoMqbcGASDI03OfF7H92.jpeg','youtube',NULL,'','Raccord reduction 1/2\'\' SAE Flare mâle x 3/8\" SAE femelle pour tubes cuivre liaisons frigorifiques climatisation et froid outillage frigoriste',2.75,1.10,0,'[]','[]','[]','[]',0,1,0,10,'pc','PLOM711030',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'REDUCTION-1238-IRON-YsgL9',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(86,'BANDE LAVABO POUSSOIR','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/0NdIpZ1P7STP28P6sXOZZUSWZ1nwfTFRp51BkIXG.jpeg\"]','uploads/products/featured/nQbctNYVfSRRD4OsdnjVNN90Zx5MUbOI8s5AZocd.jpeg','uploads/products/featured/nQbctNYVfSRRD4OsdnjVNN90Zx5MUbOI8s5AZocd.jpeg','uploads/products/flash_deal/70HyETIDta5eYtavoffzGCEwDAlSIsCQXidJ55uB.jpeg','youtube',NULL,'','en laiton solide plaqué, les noyaux de rebond en laiton massif ont une bonne résistance au rebond et au rebond, scellent et drainent rapidement l\'eau avec une seule presse.',63.75,25.50,0,'[]','[]','[]','[]',0,1,0,10,'pc','ARTBDP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BANDE-LAVABO-POUSSOIR-O9ip5',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(87,'VANNE A VOLANT 25 DIZAYN 14802','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/L5oKPouhf6uiFPfjF6e6BFFRUasNFJISr7hGqxiv.jpeg\"]','uploads/products/featured/gNSXIUCt0UpNgSuTgwri9SobeKiBL7ltR2bSUKEW.jpeg','uploads/products/featured/gNSXIUCt0UpNgSuTgwri9SobeKiBL7ltR2bSUKEW.jpeg','uploads/products/flash_deal/52uoRegTOjQbOFgZ0lszMMA2zSBKy1YPuOiQeRh9.jpeg','youtube',NULL,'','en matière plastique, résistant aux acides et alcalins, Largement utilisé dans l\'approvisionnement en eau municipale, l\'irrigation agricole, l\'eau industrielle, le traitement de l\'eau, aquarium, aquaculture, etc.',75.00,30.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','DZVV25',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VANNE-A-VOLANT-25-DIZAYN-14802-oDlix',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(88,'TUBE PPR 20 VERT 10302 DIZAYN','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/OPvJky9lkDg3tEdlGCbCL8O5hogu034w916rynmv.jpeg\"]','uploads/products/featured/1EmRRGXFZh477e6O7rd5Wrfwpb9ypMLGMcGtxGHJ.jpeg','uploads/products/featured/1EmRRGXFZh477e6O7rd5Wrfwpb9ypMLGMcGtxGHJ.jpeg','uploads/products/flash_deal/Dj6SoFLIsLk7eCQFanK52XeOdaM8ADbHFbI9J3eb.jpeg','youtube',NULL,'','en plastique utilisable pour tous types de transferts de fluides.',11.88,4.75,0,'[]','[]','[]','[]',0,1,0,10,'pc','DZVT20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TUBE-PPR-20-VERT-10302-DIZAYN-lXhf9',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(89,'TE FEMELE25*3/4 VERT 14708 DIZAYN','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/7JSG7lbBMvi7FNEL8fVH6v1AGjoiCLkoUFdWmuTn.jpeg\"]','uploads/products/featured/rZq1qnbvKYglG8G4PIe7aqkdiRyexRrunEugKrWb.jpeg','uploads/products/featured/rZq1qnbvKYglG8G4PIe7aqkdiRyexRrunEugKrWb.jpeg','uploads/products/flash_deal/rNyOWx7P7e511qxxRWATlgl0TNcuhCcBMw8voQnI.jpeg','youtube',NULL,'','en plastique tuyau vert ppr coude à 90 degrés (fil de cuivre)',27.50,11.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','DZVTF25',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TE-FEMELE2534-VERT-14708-DIZAYN-x3DCN',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(90,'COUDE FEMELLE 20*1 /2 VERT 14602','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/jzmTOtvJoqA1fAJF73EmtYJznILpjre6iLmBqRP4.jpeg\"]','uploads/products/featured/o1YSYGpIUFMmNSPYrUDZl86ckyi8F68kQoGPkMiz.jpeg','uploads/products/featured/o1YSYGpIUFMmNSPYrUDZl86ckyi8F68kQoGPkMiz.jpeg','uploads/products/flash_deal/HxpD2xf2mAb4h1SaDNfrLrtmu6uzY5CZ9LxvnMSJ.jpeg','youtube',NULL,'','En plastique Coude connecteur femelle',15.50,6.20,0,'[]','[]','[]','[]',0,1,0,10,'pc','DZVCF20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COUDE-FEMELLE-201-2-VERT-14602-OatPH',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(91,'RACCORD FEMELLE 25*1/2 DIZAYN VERT 14208','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/m1zOXDgJkGnduJyKzQxmaarGcENGdnGRB4vekOk7.jpeg\"]','uploads/products/featured/DvjFIswN7um3F4NcdsJGZtOcqQNDMnOYjCPM1B25.jpeg','uploads/products/featured/DvjFIswN7um3F4NcdsJGZtOcqQNDMnOYjCPM1B25.jpeg','uploads/products/flash_deal/pH2XS02B4Jt1v4D7UmZzZkdSqHWWWjcTNUUDPzTa.jpeg','youtube',NULL,'','raccord avec filetage femelle 25 mm x 1/2 \"',22.00,8.80,0,'[]','[]','[]','[]',0,1,0,10,'pc','DZVRF25*1 /2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'RACCORD-FEMELLE-2512-DIZAYN-VERT-14208-Sh1DA',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(92,'KIT WC SANPLAST GRIS','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/Vfr5o7ZubXUOQ5opiMuVWEKKBYIktkMXwEg5R57u.jpeg\"]','uploads/products/featured/1Z3ezXrkSFi9dq2HbNtS7q3GLNoIFOJ8yHEjEtPo.jpeg','uploads/products/featured/1Z3ezXrkSFi9dq2HbNtS7q3GLNoIFOJ8yHEjEtPo.jpeg','uploads/products/flash_deal/6rcfBtVY2TujhlY3J48g6NXfQHFxpZyzm2BBzGHa.jpeg','youtube',NULL,'','Simplifie l\'entretien du WC   Pression réglable avec sa gâchette, ce qui convient pour tous les usages.',42.00,16.80,0,'[]','[]','[]','[]',0,1,0,10,'pc','ARTKSP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'KIT-WC-SANPLAST-GRIS-2d69g',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(93,'ABATTANT WC SANPLAST','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/i9CvlWrREtfKo3tCdhn7tjsRApzxUOdiSIyA7VlU.jpeg\"]','uploads/products/featured/XOvWrhGrZCci3bdaOamkN0jV502QvasK6Z364XqR.jpeg','uploads/products/featured/XOvWrhGrZCci3bdaOamkN0jV502QvasK6Z364XqR.jpeg','uploads/products/flash_deal/76EkNCJwNA2nQSVBc0f5PHzVzsTUS9s3gm9u77Tm.jpeg','youtube',NULL,'','Design O en plastique , convient presque à toutes les toilettes, durable, résistant aux rayures, au vieillissement et à la décoloration,  facile à Installer et à démonter  avec accessoires de bonne qualité:',144.38,57.75,0,'[]','[]','[]','[]',1,1,0,10,'pc','ARTAS',0.00,'amount',20.00,'percent','flat_rate',0.00,1,NULL,NULL,NULL,NULL,'ABATTANT-WC-SANPLAST-XnOad',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(94,'SIPHON 40 FLEXIBLE 1\'1/4 BARA MATIC','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/QmVUmCMS8KbCYRWrOTsVBJLIMffyN6ZjPpbdGbOV.jpeg\"]','uploads/products/featured/8g6nQpkrRNYBq7KvYS0QPzGkUFXBEWPQtPhHq5G2.jpeg','uploads/products/featured/8g6nQpkrRNYBq7KvYS0QPzGkUFXBEWPQtPhHq5G2.jpeg','uploads/products/flash_deal/biPeyZ9TB3bvF6tKM1KOJWZAu7WoiPuZAcM4p29W.jpeg','youtube',NULL,'','Siphon d\'évacuation universel, complet avec joint en caoutchouc, flexible pour s\'adapter à de nombreuses situations il est généralement utilisé pour un évier de salle de bain.',26.25,10.50,0,'[]','[]','[]','[]',1,1,0,10,'pc','PLOMSF4080',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SIPHON-40-FLEXIBLE-114-BARA-MATIC-7edJt',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(95,'CISEAUX PPR GM NS144848','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/DjvKiMOTnqvXlWyJO9cmoqrIvmjrz0Z8im5sqvvk.jpeg\"]','uploads/products/featured/ljBTCeGTlp5HaYF6OsvhGbFhGo5g9ZyQXyWxtJa6.jpeg','uploads/products/featured/ljBTCeGTlp5HaYF6OsvhGbFhGo5g9ZyQXyWxtJa6.jpeg','uploads/products/flash_deal/ut64Wj5vqH6JEKjCtB9dqJlRRSMHeoXaKKYASueL.jpeg','youtube',NULL,'','Pour couper les tuyaux en PVC PPR PE, Verrouiller en position fermée pour plus de sécurité avec une Capacité de coupe&nbsp;: 42mm (1-5 / 8 pouce) et longueur totale&nbsp;: 18 cm',105.00,42.00,0,'[]','[]','[]','[]',1,1,0,10,'pc','ARTCGM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CISEAUX-PPR-GM-NS144848-169tB',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(96,'EVIER 43.5*76 ASIL','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/8sdhZityklo1LgS6V0rzvQi6SKujzvvEQDORzmL3.jpeg\"]','uploads/products/featured/IOim9HOQSgg3oG2UEkizMYr8Ho0eNPCaf8aEQk5f.jpeg','uploads/products/featured/IOim9HOQSgg3oG2UEkizMYr8Ho0eNPCaf8aEQk5f.jpeg','uploads/products/flash_deal/QcQu5bM2WeIrvVuKHFKIOtbWutsNB0Di6kMh0iZ8.jpeg','youtube',NULL,'','Évier de Cuisine en Acier Inoxydable',435.00,174.00,0,'[]','[]','[]','[]',1,1,0,10,'pc','ASO7 2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EVIER-43576-ASIL-QyjEF',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(97,'MITIGEUR DE SALLE DE BAIN','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/61Ou8DmwBByLlHw88fJsbKSCx60KnuN4yslRXnuX.jpeg\"]','uploads/products/featured/HtfcJ6Oxb2oncQEkHNQKRgoGsfFei3tPrzmg4U3F.jpeg','uploads/products/featured/HtfcJ6Oxb2oncQEkHNQKRgoGsfFei3tPrzmg4U3F.jpeg','uploads/products/flash_deal/PgrwThPFlLXRb7tkeI3sLUYIx3lsfMS19zqLs3JB.jpeg','youtube',NULL,'','Mitigeur bain avec bec de remplissage, en laiton massif chromé,  accessoires et fixations inclus',612.50,245.00,0,'[]','[]','[]','[]',1,1,0,10,'pc','INM8171001',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MITIGEUR-DE-SALLE-DE-BAIN-B7BiI',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(98,'SIPHON10*10 CHROME ROBERO','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/GWrCxBmbBhHVfNx6o1ozztkhr55Yjf3Z2U2XRa9c.jpeg\"]','uploads/products/featured/ootNeIKu3NXNJQYg5HAMt9whd4dUy1ceeLDGr0BG.jpeg','uploads/products/featured/ootNeIKu3NXNJQYg5HAMt9whd4dUy1ceeLDGr0BG.jpeg','uploads/products/flash_deal/pnMHZR30vAHlAjXFdsRnLYIf0AyXozICUpnyxjRF.jpeg','youtube',NULL,'','Le siphon de sol 10*10 est en cuivre durable, non toxique, il est résistant à la rouille et à la corrosion, assurant solidité et longévité,',47.50,19.00,0,'[]','[]','[]','[]',1,1,0,10,'pc','DRXS10*10',0.00,'amount',20.00,'percent','flat_rate',0.00,1,NULL,NULL,NULL,NULL,'SIPHON1010-CHROME-ROBERO-duiDc',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(99,'CANIVEAU 17*17 COUDE 1 MM','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/G5APTXhz6WTRlXDknWuWkL65FG3MVSVpsYxupKlr.jpeg\"]','uploads/products/featured/HLa1Gry6wcbltIrvpco3Qh19nhZtbpkdum8HdTB2.jpeg','uploads/products/featured/HLa1Gry6wcbltIrvpco3Qh19nhZtbpkdum8HdTB2.jpeg','uploads/products/flash_deal/vmtQ2cTuHeDK76imtoG0J4fVV52GYV7mxJpn19UB.jpeg','youtube',NULL,'','Ce caniveaux de drainage est fabriqués en plastique de haute qualité avec des grilles en acier galvanisé, ce qui le rend résistant à la corrosion, au gel et à la chaleur et donc très durable.',197.50,79.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','SAYC17*17C1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CANIVEAU-1717-COUDE-1-MM-FQiYz',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(100,'SIPHON 10*10 FANSKI CP008','admin',12,4,10,NULL,1,'[\"uploads\\/products\\/photos\\/id2xAqVqKcFvyLCio2iEh3vGmNKabwnK5i1wmoWR.jpeg\"]','uploads/products/featured/OsOe7KZT2x8vPMuDgxNoPhqqR4YEbPvshNguEGqM.jpeg','uploads/products/featured/OsOe7KZT2x8vPMuDgxNoPhqqR4YEbPvshNguEGqM.jpeg','uploads/products/flash_deal/lL57XjVPqghhSmTbUBywzyFXCdDrWuuL9jhlSP24.jpeg','youtube',NULL,'','Fabriqué en acier inoxydable robuste, de haute qualité,  empêche efficacement les cheveux, les restes de papier, les résidus alimentaires, etc. d\'entrer dans le drain, facile à installer et facile à enlever pour laver, convient à la cuisine, à la salle de bains, au garage',86.75,34.70,0,'[]','[]','[]','[]',0,1,0,10,'pc','ICP008',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SIPHON-1010-FANSKI-CP008-GXtnQ',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(101,'CHAMOISETTE EN PVA 43 CM','admin',12,5,11,NULL,1,'[\"uploads\\/products\\/photos\\/33GWRFuu5Q8bqI5fgrBbIjLHrPMUW4IPlwEnSncu.jpeg\"]','uploads/products/featured/x9sfqP030HGBbXrORrFfjRgMM8Hki7xwfoF9jJR2.jpeg','uploads/products/featured/x9sfqP030HGBbXrORrFfjRgMM8Hki7xwfoF9jJR2.jpeg','uploads/products/flash_deal/eQtybrhajosOAFvmywVNmjC5RGwtiOldC4ySjJTQ.jpeg','youtube',NULL,'','La chamoisette pour le nettoyage à la maison, au bureau, voitures, motos ou des vitres du jardin d’hiver ; nettement mieux que les chiffons de nettoyage en coton avec application facile : il suffit de bien essorer, sans produits chimiques, convient aux personnes allergiques.',16.25,6.50,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1344',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CHAMOISETTE-EN-PVA-43-CM-ZI77o',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(102,'RECHARGES POUR ROULEAU DE PEINTURE','admin',12,5,11,NULL,1,'[\"uploads\\/products\\/photos\\/EHn1n4r8IIMnqykj5ZAhcGSMYvTUkSybpSf51867.jpeg\"]','uploads/products/featured/ycyXsb4rAqT2avjjmh0HyHA8xv3JijCYYo5DX44o.jpeg','uploads/products/featured/ycyXsb4rAqT2avjjmh0HyHA8xv3JijCYYo5DX44o.jpeg','uploads/products/flash_deal/RDJPHjq9OF7u5HtSgtzEG6yMpnpEGlDBK1OSCm6B.jpeg','youtube',NULL,'','Convient à la plupart des rouleaux idéal pour peiture',90.00,36.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 1792',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'RECHARGES-POUR-ROULEAU-DE-PEINTURE-L6RC9',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(103,'ROULEAU PEINTURE HIGH QUALITY','admin',12,5,11,NULL,1,'[\"uploads\\/products\\/photos\\/zQIOehzfn9YnbHD5z2sCGoWJtHCw6x68PtaIokfk.jpeg\"]','uploads/products/featured/AByjkxFMRfLgmeKaiUicXSRiTEOpYaLIM3GrfCPK.jpeg','uploads/products/featured/AByjkxFMRfLgmeKaiUicXSRiTEOpYaLIM3GrfCPK.jpeg','uploads/products/flash_deal/2eMXUNbSNb8dxDsTcutDFC1k42V3OXKtMSUBRL3t.jpeg','youtube',NULL,'','Super absorbant, sans bulles, idéal pour peindre les murs.',37.50,15.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','RPHQ',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROULEAU-PEINTURE-HIGH-QUALITY-XZfYq',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(104,'ECHELLE CHROME 4','admin',12,5,11,NULL,1,'[\"uploads\\/products\\/photos\\/jCZzRp0cyHW8Lb6iT47GgtNLDYXWgjEfNpnsxlJB.jpeg\"]','uploads/products/featured/Bh3gKADzEnOG39tvWe5xQZfy7ahApByj50hDoUva.jpeg','uploads/products/featured/Bh3gKADzEnOG39tvWe5xQZfy7ahApByj50hDoUva.jpeg','uploads/products/flash_deal/lAnHWmzZ6RGqQwzO0sN50X1yluDmfmsXDVYzpbdb.jpeg','youtube',NULL,'','Dispositif composé de deux montants reliés entre eux par des pièces transversales (barreaux) fixées à intervalles réguliers et servant de degrés pour monter ou descendre.',400.00,160.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','AYE3+1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ECHELLE-CHROME-4-FVC0W',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(105,'ADHESIF POWER 13MMX18MMX5Y','admin',12,6,12,NULL,1,'[\"uploads\\/products\\/photos\\/ldIwqwc0cyj3lhLzxFmgGFGiwImIdHCtD750tAxh.jpeg\"]','uploads/products/featured/Yj61oyDF3WUAOxq5HpqIlno32DfOSRHsEHktfbdk.jpeg','uploads/products/featured/Yj61oyDF3WUAOxq5HpqIlno32DfOSRHsEHktfbdk.jpeg','uploads/products/flash_deal/bfNl6OjhE460lpuDR4CIvUZ8iPqzpnnbrP4zV2Wj.jpeg','youtube',NULL,'','Adhesif resistant  a la  chaleur pour tout files  qui doivent être solidement fixés',2.50,1.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','AD13MM18MM5Y',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ADHESIF-POWER-13MMX18MMX5Y-fKHsA',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(106,'CABLE TV COAXIAL RG6','admin',12,6,12,NULL,1,'[\"uploads\\/products\\/photos\\/mSBB9F1PAftaTsdIMFuNyvt5CcOHXlgzeRZU8Wr8.jpeg\"]','uploads/products/featured/V4K6MN1Mx7tarxI6dhF8ZQ4NGKWRqoKnvxkWbnGq.jpeg','uploads/products/featured/V4K6MN1Mx7tarxI6dhF8ZQ4NGKWRqoKnvxkWbnGq.jpeg','uploads/products/flash_deal/r8xVxVCLlzmXgGCUUbbvTS8Wi6bDR0eV0i6EbZRZ.jpeg','youtube',NULL,'','Câble antenne permet de raccorder entre eux, pour une liaison Antenne',170.00,68.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','CB224',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CABLE-TV-COAXIAL-RG6-uCH9s',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(107,'FM-VHF-UHF ANTENNA','admin',12,6,12,NULL,1,'[\"uploads\\/products\\/photos\\/8nyySFKOTCp5zIxh4e49ASGhK3AskWFfnMbFOEhs.jpeg\"]','uploads/products/featured/DHRNiVFN1NeXC1GS2nTLvaf3hvmPvG66epjEvdBA.jpeg','uploads/products/featured/DHRNiVFN1NeXC1GS2nTLvaf3hvmPvG66epjEvdBA.jpeg','uploads/products/flash_deal/zBR963xkbiMlwnx5dvZSgpolPOaKtEPAgtGX1U2y.jpeg','youtube',NULL,'','Antenne HDTV d\'intérieur ultra-fine : est spécialement conçue pour la réception d\'émissions de télévision numériques en direct de toutes vos chaînes de télévision locales.  Excellente réception sur tous les canaux FM / VHF / UHF.',45.00,18.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','MC 12-29',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'FM-VHF-UHF-ANTENNA-PBWfD',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(108,'SUPPORT TV BM 42','admin',12,7,13,NULL,1,'[\"uploads\\/products\\/photos\\/XFAjlpQJOhRsObCTB8t5eJFks109HeLECF5QbAEJ.jpeg\"]','uploads/products/featured/N0R8PI7m0q1apm6uKcxLCpQZKS5oCjM2GtufABwu.jpeg','uploads/products/featured/N0R8PI7m0q1apm6uKcxLCpQZKS5oCjM2GtufABwu.jpeg','uploads/products/flash_deal/8l12wvgGROABGBYiPLFDwPlPMYPyuEYDH37lK8uU.jpeg','youtube',NULL,'','support tv &nbsp;vous permettra de fixer au mur des écrans plats  , son bras amovible offre une grande flexibilité d\'utilisation et permet un déplacement panoramique de l\'écran. La taille maximale a supporter est de 42 pousses',165.00,66.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','DISS42',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SUPPORT-TV-BM-42-Hoc4N',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(109,'SUPPORT TV FIXE 32X020','admin',12,7,13,NULL,1,'[\"uploads\\/products\\/photos\\/icpeeeP2RWgx8K8pyb7mCjDk0hjg7Ih10wn0MLgs.jpeg\"]','uploads/products/featured/IjMvvVbVlKLsNbo8GQPWMReYJ2W9BV0nTOc8oSna.jpeg','uploads/products/featured/IjMvvVbVlKLsNbo8GQPWMReYJ2W9BV0nTOc8oSna.jpeg','uploads/products/flash_deal/01QMUXad8wv8xAjLfIORFCK8MjZW1KbHKYQaos3w.jpeg','youtube',NULL,'','Support Murale TV Orientable et Inclinable pour la Plupart des Téléviseurs à LED, LCD, OLED, avec Chevilles Fischer  taille max a supporter 32 pousses',50.00,20.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','DISS32X020',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SUPPORT-TV-FIXE-32X020-hbefO',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(110,'SUPPORT REFRIGERATEUR 64/82','admin',12,8,14,NULL,1,'[\"uploads\\/products\\/photos\\/Mi9zOIxugzVRxPKe0Dc0r3nuc5aB7mmivK5V8aE7.jpeg\"]','uploads/products/featured/o9CwJ3D4WSF3LfSTTmxTMyyR9f1SJuPvKKQHxBzJ.jpeg','uploads/products/featured/o9CwJ3D4WSF3LfSTTmxTMyyR9f1SJuPvKKQHxBzJ.jpeg','uploads/products/flash_deal/ZbXZDOk51joeNXSdQbdGmZl5PD0mhaD1neHMe8De.jpeg','youtube',NULL,'','Support en aluminium, roue avec système de verrouillage, fixation du support à la position souhaitée, taille réglable, Support pour réfrigérateur, machine à laver',240.00,96.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','SUP REF 64/82',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SUPPORT-REFRIGERATEUR-6482-weGus',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(111,'TUYAUX D\'ARROSAGE PRESTIGE TRANSPARENT','admin',12,9,15,NULL,1,'[\"uploads\\/products\\/photos\\/blpzbsnm1JjadLFFBDdiOgBKlPE04P4WEOgKAPyX.jpeg\"]','uploads/products/featured/14f1cNgaoUFpO6YOUFsypLQmy3nuJXOJ6CyKvSOm.jpeg','uploads/products/featured/14f1cNgaoUFpO6YOUFsypLQmy3nuJXOJ6CyKvSOm.jpeg','uploads/products/flash_deal/0nprQKF9fnGOVidDUx3M1g9jyzkIRlX4agn1pNHU.jpeg','youtube',NULL,'','Le tuyau d\'arrosage  Prestige est un tuyau de qualité supérieure,  il est fabriqué à partir de polyester très résistant, renforcé avec un filet en fibre 24 tresses pour plus de solidité, ce qui le rend à la fois solide et flexible.',30.00,12.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','ENDTT25',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TUYAUX-DARROSAGE-PRESTIGE-TRANSPARENT-Wlmyt',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(112,'TUYAUX D\'ARROSAGE GARDEN VERT CLAIRE','admin',12,9,15,NULL,1,'[\"uploads\\/products\\/photos\\/boJMC6H9kxnTY8VWsmRbwoEQtqzlp1euwX17Wz39.jpeg\"]','uploads/products/featured/7pVxUHU7dmMSgICfGgeown27u5ctDEoDHaqz7rdW.jpeg','uploads/products/featured/7pVxUHU7dmMSgICfGgeown27u5ctDEoDHaqz7rdW.jpeg','uploads/products/flash_deal/fIeATSybSSFVUTRnW6rSgYEdCnp18G3BQFEfy5rZ.jpeg','youtube',NULL,'','Tuyau d\'eau en plastique, anti-abrasion, rétractable',20.00,8.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','ENDTVC20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TUYAUX-DARROSAGE-GARDEN-VERT-CLAIRE-NiZub',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(113,'TUYAUX POLO D 18','admin',12,9,15,NULL,1,'[\"uploads\\/products\\/photos\\/ID2lVBs0zrJM2XOtcogWTDovCCt32cZMte0qtDJS.jpeg\"]','uploads/products/featured/AMit17X1ZQi5BeuHik97E42JyI9p4YffKXs90LzR.jpeg','uploads/products/featured/AMit17X1ZQi5BeuHik97E42JyI9p4YffKXs90LzR.jpeg','uploads/products/flash_deal/vM9GLGS5jxIOnMDUBhCdSRPLldVyeLACiKTkR1J8.jpeg','youtube',NULL,'','tuyaux flexibles en plastique',7.50,3.00,0,'[]','[]','[]','[]',0,1,0,10,'pc','AGRTSL',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TUYAUX-POLO-D-18-CKuwj',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(114,'HUBLOT 1206/C ROND','admin',12,10,16,NULL,1,'[\"uploads\\/products\\/photos\\/II7AO8xWE0D7ayoWmNwDjtb2Vr033Iidz6ms1vP4.jpeg\"]','uploads/products/featured/ZQTes1arP5k9kIbRySKQoSCxLtwlDNQaxNIu6RIP.jpeg','uploads/products/featured/ZQTes1arP5k9kIbRySKQoSCxLtwlDNQaxNIu6RIP.jpeg','uploads/products/flash_deal/ocLkIHfsJ7HPcQRTjYT7R00V39dvBo8HMaLpYMCQ.jpeg','youtube',NULL,'','Hublot rond en plastique pour fixation murale ou plafonnière.Il est destiné à l\'éclairage des locaux à atmosphère humideou poussièreuse: couloirs, terrasses, cours, il permettent une bonne diffusion de la lumière.',80.00,32.00,0,'[]','[]','[]','[]',0,1,1,10,'pc','SAFH1206/C',0.00,'amount',20.00,'percent','flat_rate',0.00,3,NULL,NULL,NULL,NULL,'HUBLOT-1206C-ROND-TOwp0',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(115,'BLOC SECOURS','admin',12,10,16,NULL,1,'[\"uploads\\/products\\/photos\\/5sFM1Yl9A5t5QM7MgAWftnEBmPVj8NTfjq03qayG.jpeg\"]','uploads/products/featured/YwlyZCyGpARKFQZVi4gDm6hvnjNJoeBz48gqGEh8.jpeg','uploads/products/featured/YwlyZCyGpARKFQZVi4gDm6hvnjNJoeBz48gqGEh8.jpeg','uploads/products/flash_deal/cIhjlCwUQFqnwhKwCROoxsKTllqk57iaCwVoPrZq.jpeg','youtube',NULL,'','Bloc  d’éclairage : est un dispositif qui garantit l’éclairage de signalisation des issues de secours pour éviter les effets de panique lors des coupures d’électricité.',300.00,120.00,0,'[]','[]','[]','[]',0,1,1,10,'pc','BLOC DC',0.00,'amount',20.00,'percent','flat_rate',0.00,5,NULL,NULL,NULL,NULL,'BLOC-SECOURS-OGXwt',0.00,NULL,0,NULL,NULL,'2020-07-19 17:23:07','2020-11-17 15:46:58'),
	(116,'Product 1','admin',12,1,1,1,1,'[]','uploads/products/thumbnail/zc4HoCksT0fOJIeMghPlEIXzFujNZWq9h5jYsVoj.png','uploads/products/thumbnail/zc4HoCksT0fOJIeMghPlEIXzFujNZWq9h5jYsVoj.png',NULL,'youtube',NULL,'',NULL,0.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'KG','702-AB/GP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Product-1-OxR2H',0.00,NULL,0,NULL,NULL,'2020-09-01 08:35:18','2020-11-17 15:46:57'),
	(135,'Pistolet pour Silicone num 1','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/4d97iYA1jdcJXfzGTgXaiSY2XRcPfso8HVM2jJIT.png','uploads/products/thumbnail/4d97iYA1jdcJXfzGTgXaiSY2XRcPfso8HVM2jJIT.png',NULL,'youtube',NULL,'',NULL,37.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','164134',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Pistolet-pour-Silicone-num-1-FtkjD',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(136,'Pistolet pour Silicone num 2','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/OUK4AiD6YeO4ju08G3oZUKtZtldU2YgzazkpySns.png','uploads/products/thumbnail/OUK4AiD6YeO4ju08G3oZUKtZtldU2YgzazkpySns.png',NULL,'youtube',NULL,'',NULL,32.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','164134 B',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Pistolet-pour-Silicone-num-2-7RDUb',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(137,'Embrasse de rideaux 1901','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/Nl8G2Kyhj3ZerTcWihYOD8eZYxBQ1kzIjyELwrty.jpeg','uploads/products/thumbnail/Nl8G2Kyhj3ZerTcWihYOD8eZYxBQ1kzIjyELwrty.jpeg',NULL,'youtube',NULL,'',NULL,13.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','1901 - AB/GP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Embrasse-de-rideaux-1901-wfiWo',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(138,'Embrasse de rideaux 1903','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/7ThONgDkEOvsgkWC9xzn00eLg8o98BsujE358oq8.jpeg','uploads/products/thumbnail/7ThONgDkEOvsgkWC9xzn00eLg8o98BsujE358oq8.jpeg',NULL,'youtube',NULL,'',NULL,13.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','1903 - AB/GP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Embrasse-de-rideaux-1903-eFdCz',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(139,'Embrasse de rideaux 1904','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/eVHWWrvBjYM1yPnmjhmcru9pgTTZVrrpT81CtTXa.jpeg','uploads/products/thumbnail/eVHWWrvBjYM1yPnmjhmcru9pgTTZVrrpT81CtTXa.jpeg',NULL,'youtube',NULL,'',NULL,13.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','1904 - AB/GP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Embrasse-de-rideaux-1904-dzqNw',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(140,'Tournevis Testeur 63394','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/KKw3IAEQhOdN0IK7bjcFZTiOgNrkRxty87N6PxWB.jpeg','uploads/products/thumbnail/KKw3IAEQhOdN0IK7bjcFZTiOgNrkRxty87N6PxWB.jpeg',NULL,'youtube',NULL,'',NULL,8.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','63394',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Tournevis-Testeur-63394-7y1cP',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(141,'Embrasse de rideaux 701','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/z2OnZzTdPH8F2XBeQon68l79kkmRoF8WRhG13sFQ.png','uploads/products/thumbnail/z2OnZzTdPH8F2XBeQon68l79kkmRoF8WRhG13sFQ.png',NULL,'youtube',NULL,'',NULL,15.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','701- AB/GP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Embrasse-de-rideaux-701-cT6mY',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(142,'Embrasse de rideaux 703','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/QzirdGX9O5Kgd8PwfN6jScIbsgANjG73wHLynZET.png','uploads/products/thumbnail/QzirdGX9O5Kgd8PwfN6jScIbsgANjG73wHLynZET.png',NULL,'youtube',NULL,'',NULL,12.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2','703 -AB/GP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Embrasse-de-rideaux-703-kfKat',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(143,'Embrasse de rideaux A52','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/c58JGJa74S9RFTJ2FmjpYxqJs6u7q36f3uOa57VB.png','uploads/products/thumbnail/c58JGJa74S9RFTJ2FmjpYxqJs6u7q36f3uOa57VB.png',NULL,'youtube',NULL,'',NULL,13.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','A52-AB/GP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Embrasse-de-rideaux-A52-4QzkE',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(145,'SERRURE APPARENT EZGURRA','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/40T1wPjW0NoRjcfX3Rkigk9rMxWXgVrhs945qSAB.png\"]','uploads/products/thumbnail/lHUqFnymw20qDhL71PdwEVPXQ9XmlAxr9oBTc8WP.png','uploads/products/thumbnail/lHUqFnymw20qDhL71PdwEVPXQ9XmlAxr9oBTc8WP.png',NULL,'youtube',NULL,'',NULL,182.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ABSAE',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SERRURE-APPARENT-EZGURRA-mUujU',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(146,'SERRURE APPARENT LINE CLE SPECIAL','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/cNypsrxxd4DWhSAFI4Qh9SeDuMGJTxzxiwv2qO11.png','uploads/products/thumbnail/cNypsrxxd4DWhSAFI4Qh9SeDuMGJTxzxiwv2qO11.png',NULL,'youtube',NULL,'',NULL,175.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ABSAL',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SERRURE-APPARENT-LINE-CLE-SPECIAL-iX2nx',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(148,'Adh?sif Power 13mmx18mmx14y','admin',0,6,12,NULL,NULL,'[\"uploads\\/products\\/photos\\/rrtTj3XIEnYugPXJaJc7d01nBwiLusmj2wJ6xOxH.png\"]','uploads/products/thumbnail/pYDbCmp9qr3REtYRqdXZa2A074fz9kzr9eFBSuqR.png','uploads/products/thumbnail/pYDbCmp9qr3REtYRqdXZa2A074fz9kzr9eFBSuqR.png',NULL,'youtube',NULL,'',NULL,5.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','AD13MM18MM14Y',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Adhsif-Power-13mmx18mmx14y-E9n5q',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(149,'Adh?sif Power 13mmx18mmx20y','admin',0,6,12,NULL,NULL,'[\"uploads\\/products\\/photos\\/e4omTHvN8SbKpNfJzQ2dHjoB79AyTWzhuUokp2l5.png\"]','uploads/products/thumbnail/yGplG3kDbV1JpKS4GKklewA8uZBCqqLpnOhHDEyR.png','uploads/products/thumbnail/yGplG3kDbV1JpKS4GKklewA8uZBCqqLpnOhHDEyR.png',NULL,'youtube',NULL,'',NULL,7.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','AD13MM18MM20Y',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Adhsif-Power-13mmx18mmx20y-PVLTe',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(150,'PRESSOSTAT PMS NOIR NS103732','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/6Fp6akXIojwA8Otg3uDpZn8Nf3KmeCz9mV9brZCF.jpeg','uploads/products/thumbnail/6Fp6akXIojwA8Otg3uDpZn8Nf3KmeCz9mV9brZCF.jpeg',NULL,'youtube',NULL,'',NULL,94.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','AGRPRC',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PRESSOSTAT-PMS-NOIR-NS103732-4caWv',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(151,'BOUCHON 3/4 MAL CUIVRE IR','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/4swMHKIztqPT05RXq5wW9VQReTDLYBDrjSoubG3P.png','uploads/products/thumbnail/4swMHKIztqPT05RXq5wW9VQReTDLYBDrjSoubG3P.png',NULL,'youtube',NULL,'',NULL,4.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2112121','ARTBM3/4',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BOUCHON-34-MAL-CUIVRE-IR-nHiPm',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(152,'CLAPE A CUIVRE 1\'1/4','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/qUelG446RqYsU2ddjVcy4HBKSJYdPcYJfiX6Rj7d.jpeg','uploads/products/thumbnail/qUelG446RqYsU2ddjVcy4HBKSJYdPcYJfiX6Rj7d.jpeg',NULL,'youtube',NULL,'',NULL,86.40,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','ARTCC11/4',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLAPE-A-CUIVRE-114-DzXFw',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(153,'DOUCHETTE+FLEXIBLE SPA NS123771','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/rzJpkCcmeJnGwbPr57JxLLyHt9bD2uFRXa3sUUaJ.png\"]','uploads/products/thumbnail/AwAu9AIkjeVzrkWJWiramSF1dYcM7oN7cFgizyJk.png','uploads/products/thumbnail/AwAu9AIkjeVzrkWJWiramSF1dYcM7oN7cFgizyJk.png',NULL,'youtube',NULL,'',NULL,132.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTDFM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'DOUCHETTEFLEXIBLE-SPA-NS123771-U2MD6',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(154,'EVIER INOX 96*43 TOP EVIER','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/GO78jccHUWsJgaMhqP9DUJQdrwrzNGkm6xIM92W9.png','uploads/products/thumbnail/GO78jccHUWsJgaMhqP9DUJQdrwrzNGkm6xIM92W9.png',NULL,'youtube',NULL,'',NULL,325.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','ARTE96*43',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EVIER-INOX-9643-TOP-EVIER-noDOj',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(155,'ENSEMBLE S.D.B NS123781','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/B82mXRdorrtid4v0xiniT2lBlYLVKvtWLG2WX79X.png\"]','uploads/products/thumbnail/KaZuJflcwqZxwcudQH0lQSJ1MzFxotYgHoDClbQI.png','uploads/products/thumbnail/KaZuJflcwqZxwcudQH0lQSJ1MzFxotYgHoDClbQI.png',NULL,'youtube',NULL,'',NULL,225.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTESDB',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-SDB-NS123781-MpXuM',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(156,'FLEXIBLE SANPLAST 1.5 BLANC','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/cvyaPIKvrBDAJoqHNFeyypWCvoSzqNkFe5mWyKGQ.png\"]','uploads/products/thumbnail/bgwrJ0EZMmxA2c9qEVCgNVnxUYb0sSYPqvPA4uTg.png','uploads/products/thumbnail/bgwrJ0EZMmxA2c9qEVCgNVnxUYb0sSYPqvPA4uTg.png',NULL,'youtube',NULL,'',NULL,47.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTF1.5',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'FLEXIBLE-SANPLAST-15-BLANC-eAFdv',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(157,'Siphon ?vier 1 1/4 40 inox Sanplast','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/lt9akA36p96yPgqX2t7Rrpj230aUKEKs7evI4aNO.png\"]','uploads/products/thumbnail/kXWK3jcXzqQ7UtHPPE1WXXqmVaWBWGyyGhM98Y96.png','uploads/products/thumbnail/kXWK3jcXzqQ7UtHPPE1WXXqmVaWBWGyyGhM98Y96.png',NULL,'youtube',NULL,'',NULL,26.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTF40MEB',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Siphon-vier-1-14-40-inox-Sanplast-MucFF',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(158,'FLOTTEUR EN PLASTIQUE 7023','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/icmdColxKZO2HVVeDIeteVMVRaDD08nJLLv7ljYA.png\"]','uploads/products/thumbnail/E1p0uxQXmztAzdU8Tqqq6m4cd9fjOS39V17VOts4.png','uploads/products/thumbnail/E1p0uxQXmztAzdU8Tqqq6m4cd9fjOS39V17VOts4.png',NULL,'youtube',NULL,'',NULL,84.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTF7023',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'FLOTTEUR-EN-PLASTIQUE-7023-nma77',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(159,'FLEXIBLE SANPLAST 1.2 BLANC','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/sO5oDH8GX5JkQC7LD0VMqwVvidoyIWMYHnMcos9K.png\"]','uploads/products/thumbnail/KR6VCMufV772wsz54U7oWwka3vpRa8OFUtNE21qd.png','uploads/products/thumbnail/KR6VCMufV772wsz54U7oWwka3vpRa8OFUtNE21qd.png',NULL,'youtube',NULL,'',NULL,42.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTFS1.2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'FLEXIBLE-SANPLAST-12-BLANC-ZQdlw',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(160,'KIT WC SANPLAST+FLEXIBLE STAINLESS','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/62KYNP5F0QhoHcf0O3MOLaBRmw0jwTX7QyaeEEGz.png\"]','uploads/products/thumbnail/pftq2Qs202MZLq0ffrSUWpQROfy0bYIIU83Afqpu.png','uploads/products/thumbnail/pftq2Qs202MZLq0ffrSUWpQROfy0bYIIU83Afqpu.png',NULL,'youtube',NULL,'',NULL,137.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTK+FSK',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'KIT-WC-SANPLASTFLEXIBLE-STAINLESS-lQuTG',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(162,'Kit wc Sanplast avec flexible gris long','admin',0,4,NULL,NULL,NULL,NULL,'uploads/products/featured/ARTKL.jpg','uploads/products/featured/ARTKL.jpg',NULL,NULL,NULL,NULL,NULL,102.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'ARTKL',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Kit-wc-Sanplast-avec-flexible-gris-long-riLIw',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(163,'PASSOIR MITIGEUR EN CUIVRE FEMELLE','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/J9QVfIyI2weCf12ufezDikKrGe5gTM9DJgQTynWX.jpeg','uploads/products/thumbnail/J9QVfIyI2weCf12ufezDikKrGe5gTM9DJgQTynWX.jpeg',NULL,'youtube',NULL,'',NULL,12.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTPCF',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PASSOIR-MITIGEUR-EN-CUIVRE-FEMELLE-sJunl',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(164,'PASSOIR MITIGEUR EN CUIVRE MAL','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/Z1HKbLyRGVhiy52Cfi5IRPO1dQUnXoN9UJq6xxmi.jpeg','uploads/products/thumbnail/Z1HKbLyRGVhiy52Cfi5IRPO1dQUnXoN9UJq6xxmi.jpeg',NULL,'youtube',NULL,'',NULL,12.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'122','ARTPCM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PASSOIR-MITIGEUR-EN-CUIVRE-MAL-6FL78',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(165,'REDUCTION1\'1/4*3/4 IRON','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/01iRbbdrSLTuM0pe0HHqwY6oIjhFveXeiO7nf01V.png','uploads/products/thumbnail/01iRbbdrSLTuM0pe0HHqwY6oIjhFveXeiO7nf01V.png',NULL,'youtube',NULL,'',NULL,20.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','ARTR11/4*3/4',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'REDUCTION11434-IRON-tFOHT',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(166,'REDUCTION 1/2*3/4 GOLD','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/wEccIamfWKk8DI5dMyZNoXT9HjAohujD30EDnPiW.png','uploads/products/thumbnail/wEccIamfWKk8DI5dMyZNoXT9HjAohujD30EDnPiW.png',NULL,'youtube',NULL,'',NULL,4.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','ARTR1/2*3/4',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'REDUCTION-1234-GOLD-sGTOf',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(167,'RALLONGE WC 40 SANPLAST','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/bRC1jFxZKfgHAxg6nEUQsZvQrVa6AlWZnnsJKSV2.png\"]','uploads/products/thumbnail/BClo6Za75mpIbsgFucbrymW0684snkA4s9uXW7NZ.png','uploads/products/thumbnail/BClo6Za75mpIbsgFucbrymW0684snkA4s9uXW7NZ.png',NULL,'youtube',NULL,'',NULL,86.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTR40S',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'RALLONGE-WC-40-SANPLAST-Emkhv',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(168,'RALLONGE WC 50 SANPLAST','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/0OTWzWUi6POJtsOv0BAJhBfrAVAFUBO7p0aOawtZ.png\"]','uploads/products/thumbnail/JPcm5ItRax8E0FR875fpyorLizwaNyHaGXEaZ5xy.png','uploads/products/thumbnail/JPcm5ItRax8E0FR875fpyorLizwaNyHaGXEaZ5xy.png',NULL,'youtube',NULL,'',NULL,100.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTR50S',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'RALLONGE-WC-50-SANPLAST-doQq2',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(169,'RALLONGE WC SPARKS TURKEY','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/GgLSgaBSkeJmg7jK6TMMLI3NiaL7ttW0eHFrkhCS.png\"]','uploads/products/thumbnail/r9qEfTmVUNsAZFkEFMKN9gCWW11aoY3PxK6XSFS3.png','uploads/products/thumbnail/r9qEfTmVUNsAZFkEFMKN9gCWW11aoY3PxK6XSFS3.png',NULL,'youtube',NULL,'',NULL,50.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTRBS',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'RALLONGE-WC-SPARKS-TURKEY-FvJu6',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(170,'RALLONGE WC SANPLAST + CLAPE','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/iNHsc1VDlLCrMUwG0x0avEtJUWFGEBwydNE75xrz.png\"]','uploads/products/thumbnail/zliW2SSlrKKsMsDEqqpM8omu7Nv9tgFV7GvMAKna.png','uploads/products/thumbnail/zliW2SSlrKKsMsDEqqpM8omu7Nv9tgFV7GvMAKna.png',NULL,'youtube',NULL,'',NULL,75.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTRC',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'RALLONGE-WC-SANPLAST--CLAPE-WfZ9O',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(171,'SIPHON FLEXIBLE 40 INOX SANPLAST','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/iN1ZadgtkgWCHlvYb1FHIyEX20a9pEblvn5nNf3J.png\"]','uploads/products/thumbnail/HVOj6Er3g1c827zAYnn2tSDiga6fb4Z7rqIToNPG.png','uploads/products/thumbnail/HVOj6Er3g1c827zAYnn2tSDiga6fb4Z7rqIToNPG.png',NULL,'youtube',NULL,'',NULL,19.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTS40',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SIPHON-FLEXIBLE-40-INOX-SANPLAST-122mM',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(172,'Siphon ? ?vier Inox + bande ? panier +p','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/sLQjeuObg8FL71Gvb6jd56ItVwviEEOlGo7mO9Py.png\"]','uploads/products/thumbnail/Xk2tVHIFoVbtozQ6bH285Xa9PXdcyBtPiZ2IbDUT.png','uploads/products/thumbnail/Xk2tVHIFoVbtozQ6bH285Xa9PXdcyBtPiZ2IbDUT.png',NULL,'youtube',NULL,'',NULL,143.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTS 40 + TP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Siphon--vier-Inox--bande--panier-p-au0is',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(173,'Siphon ?vier double bac inox + bande A','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/mxsM6t6Qf8OS5qAyUcDXdxSn6ah5AkwUQlAC5WqG.png\"]','uploads/products/thumbnail/lRZprLTFdQwjbrjyihjc0vyntlwG0Srqq3yAjIIM.png','uploads/products/thumbnail/lRZprLTFdQwjbrjyihjc0vyntlwG0Srqq3yAjIIM.png',NULL,'youtube',NULL,'',NULL,257.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTSD+TP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Siphon-vier-double-bac-inox--bande-A-uTblx',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(174,'SIPHON FLEXIBLE INOX 32 SANPLAST','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/eCMnIcnDiWo8hb4SvURsd4Kvg9CysRX4NVUBbhsn.png\"]','uploads/products/thumbnail/BJUchW0rc96E1JclXD5ZMaXoUARzimYNOb4nNUev.png','uploads/products/thumbnail/BJUchW0rc96E1JclXD5ZMaXoUARzimYNOb4nNUev.png',NULL,'youtube',NULL,'',NULL,18.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTSF32',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SIPHON-FLEXIBLE-INOX-32-SANPLAST-qbvjw',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(175,'TERFON LAVABO IZ FIX','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/w2zfRYYnM7TudKYMdjup3ddJLu2QsEZZmcYYIRMR.png\"]','uploads/products/thumbnail/UHGtbveJ4uuL8KbC8oebqsuciAHpb7tFSjZR6txR.png','uploads/products/thumbnail/UHGtbveJ4uuL8KbC8oebqsuciAHpb7tFSjZR6txR.png',NULL,'youtube',NULL,'',NULL,10.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ARTTL',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TERFON-LAVABO-IZ-FIX-rBj0W',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(176,'EVIER 40*50 304/2 ASIL ECO','admin',0,4,NULL,NULL,NULL,NULL,'uploads/products/featured/AS21.jpeg','uploads/products/featured/AS21.jpeg',NULL,NULL,NULL,NULL,NULL,275.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'AS21',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EVIER-4050-3042-ASIL-ECO-8NFIj',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(177,'EVIER 90*50','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/x3PIHqCbwQYvkKOoPVhqne6thuzNfDTd7HCLj52M.png','uploads/products/thumbnail/x3PIHqCbwQYvkKOoPVhqne6thuzNfDTd7HCLj52M.png',NULL,'youtube',NULL,'',NULL,178.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ASE29',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EVIER-9050-rlYub',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(178,'EVIER 50*116 DOUBLE ASIL ENCASTRE','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/LyP52G9OLeLjFjpVvexjhw7xtBrtLgVR1OVdYyXS.png','uploads/products/thumbnail/LyP52G9OLeLjFjpVvexjhw7xtBrtLgVR1OVdYyXS.png',NULL,'youtube',NULL,'',NULL,862.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','ASE50*116D',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EVIER-50116-DOUBLE-ASIL-ENCASTRE-mfwmI',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(179,'EVIER 50*80 DOUBLE ASIL LAYON AS40.','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/KxLrrHemGC94xmMswl4jXczdtbCUguw1RIwjmFKj.png','uploads/products/thumbnail/KxLrrHemGC94xmMswl4jXczdtbCUguw1RIwjmFKj.png',NULL,'youtube',NULL,'',NULL,645.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ASE50*80D',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EVIER-5080-DOUBLE-ASIL-LAYON-AS40-zRCDV',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(180,'EVIER 50*80 ASIL DOUBLE ENCASTRE AS13','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/eucWBLskC8z3b5LdQjx81InOZE3uKRXJCz3r5U7Y.png','uploads/products/thumbnail/eucWBLskC8z3b5LdQjx81InOZE3uKRXJCz3r5U7Y.png',NULL,'youtube',NULL,'',NULL,750.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','ASE50*80DE',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EVIER-5080-ASIL-DOUBLE-ENCASTRE-AS13-041o1',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(181,'?chelle jaune 4','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/JvA92wghdq6AEn2jF5IGiydfuN6YoBTIPY2sleLG.png','uploads/products/thumbnail/JvA92wghdq6AEn2jF5IGiydfuN6YoBTIPY2sleLG.png',NULL,'youtube',NULL,'',NULL,400.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','AYE3+1J',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'chelle-jaune-4-T7pM8',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(182,'?chelle chrome 5','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/EpiUzMFZbt16ZlYfrZea0yGanFdL5rGaVXlR7QjA.png','uploads/products/thumbnail/EpiUzMFZbt16ZlYfrZea0yGanFdL5rGaVXlR7QjA.png',NULL,'youtube',NULL,'',NULL,500.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12112','AYE4+1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'chelle-chrome-5-WqVBg',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(183,'?chelle jaune 5','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/UFCjBS0cqSZJoxw0aQivh96nqjucVgSR7M1iuIxK.png','uploads/products/thumbnail/UFCjBS0cqSZJoxw0aQivh96nqjucVgSR7M1iuIxK.png',NULL,'youtube',NULL,'',NULL,500.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','AYE4+1J',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'chelle-jaune-5-BCk0J',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(184,'?chelle chrome 6','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/xmTFbMM8jX8AtKWvDPE3SWlHEr3Ke2lFblLMIQ9i.png','uploads/products/thumbnail/xmTFbMM8jX8AtKWvDPE3SWlHEr3Ke2lFblLMIQ9i.png',NULL,'youtube',NULL,'',NULL,600.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','AYE5+1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'chelle-chrome-6-lyqh4',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(185,'?chelle jaune 6','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/x3XWXTzkc1m2hZSnHsiPiCwZgYCSFzGnIuROgNts.png','uploads/products/thumbnail/x3XWXTzkc1m2hZSnHsiPiCwZgYCSFzGnIuROgNts.png',NULL,'youtube',NULL,'',NULL,600.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','AYE5+1J',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'chelle-jaune-6-uOS8c',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(186,'Echelle chrome 7','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/MdYg3F7LPmkFXCyLTYRnskW1k55LkL7qNWLVeMXZ.png','uploads/products/thumbnail/MdYg3F7LPmkFXCyLTYRnskW1k55LkL7qNWLVeMXZ.png',NULL,'youtube',NULL,'',NULL,700.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','AYE6+1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Echelle-chrome-7-FAOHy',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(188,'?chelle chrome 8','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/vBbOLFH2ahGlOl8OoBTzN8YP607GEcUjCAkoKf0n.png','uploads/products/thumbnail/vBbOLFH2ahGlOl8OoBTzN8YP607GEcUjCAkoKf0n.png',NULL,'youtube',NULL,'',NULL,800.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','AYE7+1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'chelle-chrome-8-vkXBW',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(189,'Echelle jaune 8','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/10UPmxH4TVvhw9V4Xa1MuLHNBoIynpkGGDsCHu8T.png','uploads/products/thumbnail/10UPmxH4TVvhw9V4Xa1MuLHNBoIynpkGGDsCHu8T.png',NULL,'youtube',NULL,'',NULL,800.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2','AYE7+1J',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Echelle-jaune-8-7ayNZ',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(190,'?chelle chrome 9','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/hLbPHUGJgQwtLg3zTmIPkdZNJM6woml4yRdFyFlB.png','uploads/products/thumbnail/hLbPHUGJgQwtLg3zTmIPkdZNJM6woml4yRdFyFlB.png',NULL,'youtube',NULL,'',NULL,900.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','AYE8+1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'chelle-chrome-9-nGdxR',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(191,'Echelle jaune 9','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/BHRXcky3Plw4A4r4aT3ysBK03rHjGGAcrELPpbg8.png','uploads/products/thumbnail/BHRXcky3Plw4A4r4aT3ysBK03rHjGGAcrELPpbg8.png',NULL,'youtube',NULL,'',NULL,900.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','AYE8+1J',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Echelle-jaune-9-3Em1w',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(192,'Echelle chrome 10','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/Tmd23zbUPfeaHFPmGnDR9VJtVxjYQUxg3O1ioYVg.png','uploads/products/thumbnail/Tmd23zbUPfeaHFPmGnDR9VJtVxjYQUxg3O1ioYVg.png',NULL,'youtube',NULL,'',NULL,1000.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','AYE9+1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Echelle-chrome-10-BXwao',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(193,'Echelle jaune 10','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/d0IPcdFiSgCbx4G1xA0hrUVtebnHtLUnc4xsRm0p.png','uploads/products/thumbnail/d0IPcdFiSgCbx4G1xA0hrUVtebnHtLUnc4xsRm0p.png',NULL,'youtube',NULL,'',NULL,1000.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','AYE9+1J',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Echelle-jaune-10-0CxTe',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(194,'Brosse de nettoyage num4','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/AYE 6+1J.png','uploads/products/featured/AYE 6+1J.png',NULL,NULL,NULL,NULL,NULL,55.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'BNT 04',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Brosse-de-nettoyage-num4-XhbmZ',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(195,'Brosse de nettoyage num 6','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/BNT 04.jpg','uploads/products/featured/BNT 04.jpg',NULL,NULL,NULL,NULL,NULL,77.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'BNT 06',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Brosse-de-nettoyage-num-6-Tpwco',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(196,'ROBINET EQUERRE ANG.VAL 1/2*1/2 LGR','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/YFISCMM8ugMI07RaEr3iXga9x3WWU41PbP0uYjqy.png','uploads/products/thumbnail/YFISCMM8ugMI07RaEr3iXga9x3WWU41PbP0uYjqy.png',NULL,'youtube',NULL,'',NULL,26.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','BTLRA1/2*1/2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROBINET-EQUERRE-ANGVAL-1212-LGR-QqaBZ',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(197,'SIPHON DE COUR 15*15 LGR','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/xmO9DaXuH3KIiupNCd2QzZQD7RYn4r7WnHInbdKh.png\"]','uploads/products/thumbnail/qd5G6vvHmxslCwqyVN1leHsz2nlb63M8orQdl5fp.png','uploads/products/thumbnail/qd5G6vvHmxslCwqyVN1leHsz2nlb63M8orQdl5fp.png',NULL,'youtube',NULL,'',NULL,85.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','BTLSI1515',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SIPHON-DE-COUR-1515-LGR-ZaHtN',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(198,'BUTOIR 4002','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/dhDko1t02xVkiuBAqyFn7v0EfjM6A1GnFLCI5pMb.png\"]','uploads/products/thumbnail/PMQqDPoKzft3kW3bGE4JNX66OG0y6S7Aap7O0uVu.png','uploads/products/thumbnail/PMQqDPoKzft3kW3bGE4JNX66OG0y6S7Aap7O0uVu.png',NULL,'youtube',NULL,'',NULL,13.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'11','BUT 4002',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BUTOIR-4002-4WOCI',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(199,'BUTOIR 588','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/PCP8LDmAgbLgeXaeadse2Vxn9gL8EUgpSzRomPs3.png\"]','uploads/products/thumbnail/FWtTQ5GN0MZm8zi2ZdFwWIASx01vdqskt2Mqk01B.png','uploads/products/thumbnail/FWtTQ5GN0MZm8zi2ZdFwWIASx01vdqskt2Mqk01B.png',NULL,'youtube',NULL,'',NULL,15.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','BUT 588',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BUTOIR-588-XDNzg',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(200,'BUTTOIR ROND','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/34TUlu1a4GHEuNQZNMLV6oa3c57gTyvvV9GL3o5j.png\"]','uploads/products/thumbnail/aW7iVrHze2S8EbldeYijunOvKYKvOZVKB5um5zZc.png','uploads/products/thumbnail/aW7iVrHze2S8EbldeYijunOvKYKvOZVKB5um5zZc.png',NULL,'youtube',NULL,'',NULL,12.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','BUT RND',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BUTTOIR-ROND-xFWkq',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(201,'3 264 Clef croissant','admin',0,3,7,NULL,NULL,'[\"uploads\\/products\\/photos\\/0msK4jjVIIbPAhW2PkWFmhltQKg5xWAC6FwvGnr7.png\"]','uploads/products/thumbnail/WuMlXW6OtC2SUNpr51tESYi47zQKYtVI0nIy7Dch.png','uploads/products/thumbnail/WuMlXW6OtC2SUNpr51tESYi47zQKYtVI0nIy7Dch.png',NULL,'youtube',NULL,'',NULL,16.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','CAD 264 CR',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-264-Clef-croissant-9JwNn',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(202,'3 265 Clef croissant','admin',0,3,7,NULL,NULL,'[\"uploads\\/products\\/photos\\/9sfQ65jhPv6IZ1urngwDiWNPcEt242Q86JYZiG64.png\"]','uploads/products/thumbnail/tHNdpa8E0XNIyaQQ7USIWEkqAelq418hWavkvDq6.png','uploads/products/thumbnail/tHNdpa8E0XNIyaQQ7USIWEkqAelq418hWavkvDq6.png',NULL,'youtube',NULL,'',NULL,23.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','CAD 265 CR',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-265-Clef-croissant-64bsh',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(203,'3 266 Clef croissant','admin',0,3,NULL,NULL,NULL,NULL,'uploads/products/featured/BNT 06.jpg','uploads/products/featured/BNT 06.jpg',NULL,NULL,NULL,NULL,NULL,33.75,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'CAD 266 CR',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-266-Clef-croissant-vcHgh',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(204,'3 40mm','admin',0,3,NULL,NULL,NULL,NULL,'uploads/products/featured/CAD TOUR 265.jpg','uploads/products/featured/CAD TOUR 265.jpg',NULL,NULL,NULL,NULL,NULL,132.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'CAD40MM',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-40mm-49wHr',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(205,'3 COULEUR 30 MM TABLEAU CARRE','admin',0,3,7,NULL,NULL,'[\"uploads\\/products\\/photos\\/SzVsqg6go52ayt8IqoDI2UuVfzLQCQWtHK7G1kYb.png\"]','uploads/products/thumbnail/3bX8XZGNqzYonlltZ7eWk9AzbnB1IHtboYD4D3ze.png','uploads/products/thumbnail/3bX8XZGNqzYonlltZ7eWk9AzbnB1IHtboYD4D3ze.png',NULL,'youtube',NULL,'',NULL,210.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','cad col car 30',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-COULEUR-30-MM-TABLEAU-CARRE-MY5Ew',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(206,'3 COULEUR 30 MM TABLEAU ROND','admin',0,3,NULL,NULL,NULL,NULL,'uploads/products/featured/CAD 264 GUS.jpg','uploads/products/featured/CAD 264 GUS.jpg',NULL,NULL,NULL,NULL,NULL,210.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'CAD COL RND 30',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-COULEUR-30-MM-TABLEAU-ROND-11Hip',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(207,'3 GUSAN num 1 263','admin',0,3,7,NULL,NULL,'[\"uploads\\/products\\/photos\\/1rwVsS8Grh6pmqzAjv5PsgLTjuvsxDjMKtfWD6pZ.png\"]','uploads/products/thumbnail/EJzHyu9Um0T78GTavjnsPYZbrNsPkD6Gfr4Woh5D.png','uploads/products/thumbnail/EJzHyu9Um0T78GTavjnsPYZbrNsPkD6Gfr4Woh5D.png',NULL,'youtube',NULL,'',NULL,12.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','CAD GUS 263',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-GUSAN-num-1-263-CFJFk',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(209,'3 GUSAN num 1 265','admin',0,3,NULL,NULL,NULL,NULL,'uploads/products/featured/CAD 266 CR.jpg','uploads/products/featured/CAD 266 CR.jpg',NULL,NULL,NULL,NULL,NULL,21.25,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'CAD GUS 265',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-GUSAN-num-1-265-tHGc0',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(211,'3 264 tournevis','admin',0,3,NULL,NULL,NULL,NULL,'uploads/products/featured/CAD COL RND 30.jpg','uploads/products/featured/CAD COL RND 30.jpg',NULL,NULL,NULL,NULL,NULL,15.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'CAD TOUR 264',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-264-tournevis-utc5L',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(212,'3 265 tournevis','admin',0,3,NULL,NULL,NULL,NULL,'uploads/products/featured/CAD GUS 265.jpg','uploads/products/featured/CAD GUS 265.jpg',NULL,NULL,NULL,NULL,NULL,22.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'CAD TOUR 265',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-265-tournevis-mEBNq',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(213,'3 266 tournevis','admin',0,3,NULL,NULL,NULL,NULL,'uploads/products/featured/CAD TOUR 264.jpg','uploads/products/featured/CAD TOUR 264.jpg',NULL,NULL,NULL,NULL,NULL,32.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'CAD TOUR 266',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-266-tournevis-eR0ze',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(214,'3 CASTRE 4 TIGES AVEC 5 CLEFS SP EZGURA','admin',0,3,7,NULL,NULL,'[\"uploads\\/products\\/photos\\/D0ZeHkpKiUhrlEwfPm5uHhBvsyMX85Q7CqD3pEhE.png\"]','uploads/products/thumbnail/pgo7RENBjfhbz5eOqHoXTM2nxSMltgA3ICxSzPg4.png','uploads/products/thumbnail/pgo7RENBjfhbz5eOqHoXTM2nxSMltgA3ICxSzPg4.png',NULL,'youtube',NULL,'',NULL,225.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','CA EZG 4TG',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-CASTRE-4-TIGES-AVEC-5-CLEFS-SP-EZGURA-VsdNf',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(217,'Charni?re hydrolique \'\'EVERLEO\'\' GM','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/6WtMVNjowV1S11nK8SDlL6y4VYVqM44sWPLdDXNk.png\"]','uploads/products/thumbnail/XVNhBmFIK4ZavOtsJZrbklidobzejg5GRACLzAEo.png','uploads/products/thumbnail/XVNhBmFIK4ZavOtsJZrbklidobzejg5GRACLzAEo.png',NULL,'youtube',NULL,'',NULL,13.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','CH HYD EVER',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Charnire-hydrolique-EVERLEO-GM-Ga8kt',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(218,'CISCEAUX TAILLEUR 240 MM','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/vFSyaHZIqiICbeUwx4jrF0krpTNIOHmgHYAoX8dg.png\"]','uploads/products/thumbnail/IB5w3l6K6FZzl9m7XZrUIgitMLXGSqkuPTzGgqzZ.png','uploads/products/thumbnail/IB5w3l6K6FZzl9m7XZrUIgitMLXGSqkuPTzGgqzZ.png',NULL,'youtube',NULL,'',NULL,82.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','CIS T 240',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CISCEAUX-TAILLEUR-240-MM-1zlaq',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(219,'CISCEAUX TAILLEUR 270MM','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/HJGhV4VHC5MgCetEVGw7GZGRSKnhr2A9DjOfoIHo.png\"]','uploads/products/thumbnail/BnEqbxTs8KYLpvaChJyIPHWZPFP7TkmndEIJFBFE.png','uploads/products/thumbnail/BnEqbxTs8KYLpvaChJyIPHWZPFP7TkmndEIJFBFE.png',NULL,'youtube',NULL,'',NULL,87.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','CIS T 270',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CISCEAUX-TAILLEUR-270MM-SY8ge',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(222,'Clef a molettes \'\'MAC\'\' NUM 12','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/Rk3O2QwfDsVmBJA7M6bTJo8rpwZJXpufJsjeRJZM.png\"]','uploads/products/thumbnail/QlkuVnjHTKlijaEJy36kB5W8EPj8ZNYMHXigCUyv.png','uploads/products/thumbnail/QlkuVnjHTKlijaEJy36kB5W8EPj8ZNYMHXigCUyv.png',NULL,'youtube',NULL,'',NULL,82.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','CM MAC 12\'\'',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Clef-a-molettes-MAC-NUM-12-DvvC2',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(223,'Cutteur normal','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/CkabV9AYZeOutaVWw9b61KZDxyjVUFJI98EEEDXL.png\"]','uploads/products/thumbnail/7OtBuIj5GgwNmYnrzleSC5a7IFl1msszx5Hu8XFn.png','uploads/products/thumbnail/7OtBuIj5GgwNmYnrzleSC5a7IFl1msszx5Hu8XFn.png',NULL,'youtube',NULL,'',NULL,3.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','CUT NO',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Cutteur-normal-y6Wo6',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(224,'Cutteur+recharge','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/oPBgsNo3pRTNOWYTZzZQsyRBkz7POsg8VqxiwbMc.png\"]','uploads/products/thumbnail/eGph9mSm6wWNSOE3dWzBZXIaGXzzHikAgJL62QtC.png','uploads/products/thumbnail/eGph9mSm6wWNSOE3dWzBZXIaGXzzHikAgJL62QtC.png',NULL,'youtube',NULL,'',NULL,20.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','CUT RCG',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Cutteurrecharge-HP0bN',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(225,'Cutteur num 1 simple','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/HanUE5OzDjGiYkljOBPfTTQ1x3gzf0I6FGslANGM.png\"]','uploads/products/thumbnail/kkFPL8UJGGFF96rhLo6qw2EpxUs06KC2dM8EF2P8.png','uploads/products/thumbnail/kkFPL8UJGGFF96rhLo6qw2EpxUs06KC2dM8EF2P8.png',NULL,'youtube',NULL,'',NULL,13.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','cutt 1s',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Cutteur-num-1-simple-tUxpU',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(226,'ENSEMBLE 121064- 7PIECES + MIROIR','admin',0,4,NULL,NULL,NULL,NULL,'uploads/products/featured/CAD TOUR 266.jpg','uploads/products/featured/CAD TOUR 266.jpg',NULL,NULL,NULL,NULL,NULL,382.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'DIS8042B',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-121064--7PIECES--MIROIR-Sk1GW',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(227,'ENSEMBLE 121272 7PIECES + MIROIR','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/hH5UM7xNflELQvOZbGNpmK5gbbZdQp3ack0jyUSh.png\"]','uploads/products/thumbnail/63vgD5pM9q1SiTlkX7rWgIcU5c2oGsWCpqd0bKva.png','uploads/products/thumbnail/63vgD5pM9q1SiTlkX7rWgIcU5c2oGsWCpqd0bKva.png',NULL,'youtube',NULL,'',NULL,600.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DIS8081B',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-121272-7PIECES--MIROIR-WuBky',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(228,'ENSEMBLE 121072 7PIECES+MIROIR','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/3XZ8lMovwt2sTI72yMqu0uyr96pK17GqG42KD6QO.png\"]','uploads/products/thumbnail/QCQjImbZuugr27JGFkR3z12q31SjVL956GSxMN1M.png','uploads/products/thumbnail/QCQjImbZuugr27JGFkR3z12q31SjVL956GSxMN1M.png',NULL,'youtube',NULL,'',NULL,600.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DIS8081BH',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-121072-7PIECESMIROIR-UCAqR',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(229,'ENSEMBLE 121264 7PIECES+MIROIR','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/SUM7qoAL53PVbfx0b2dM7wqt5rAFkyNEnyDvWfZH.jpeg\"]','uploads/products/thumbnail/S7IU49C1bVVQkPs7iD34n1R3uinj9GaCnUQmRY25.jpeg','uploads/products/thumbnail/S7IU49C1bVVQkPs7iD34n1R3uinj9GaCnUQmRY25.jpeg',NULL,'youtube',NULL,'',NULL,600.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MSTBWM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-121264-7PIECESMIROIR-7f8Kb',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(230,'7 MOBILE 24','admin',0,7,13,NULL,NULL,'[\"uploads\\/products\\/photos\\/9n2aUzUdPyByh19vMSOdZQUhARO19j4NVaIzkQuk.png\"]','uploads/products/thumbnail/SjC3mY7VPoIBevdHVY2gChF3FXfsrHUDdvSQ2xrc.png','uploads/products/thumbnail/SjC3mY7VPoIBevdHVY2gChF3FXfsrHUDdvSQ2xrc.png',NULL,'youtube',NULL,'',NULL,112.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DISS24',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'7-MOBILE-24-q0Gfa',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(231,'Ensemble 121064 6pieces+miroire','admin',0,4,NULL,NULL,NULL,NULL,'uploads/products/featured/CAD40MM.jpg','uploads/products/featured/CAD40MM.jpg',NULL,NULL,NULL,NULL,NULL,380.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'DISSACOEN10',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Ensemble-121064-6piecesmiroire-9Mtld',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(232,'CISEAUX PPR ORIGINAL NS 144850','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/ckLDqAyHWED1qPnvrkDGhkwAjYTMXzFeHgHmgp7U.png\"]','uploads/products/thumbnail/TWWgrkdzuptjgSI0wg2Wg1PuN1wNUooyVVYlDtve.png','uploads/products/thumbnail/TWWgrkdzuptjgSI0wg2Wg1PuN1wNUooyVVYlDtve.png',NULL,'youtube',NULL,'',NULL,145.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DROCO',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CISEAUX-PPR-ORIGINAL-NS-144850-IThAe',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(233,'ROULEAU DE PEINTURE BRAVO JAUNE 2-2','admin',0,5,11,NULL,NULL,'[\"uploads\\/products\\/photos\\/y0rDNpGNIv764ZcKMuVttvTZvCt3jmoiX3lLIh6R.png\"]','uploads/products/thumbnail/ZHn76A2iZbwdoET4iDEcoQ6uHnKnOrpCDfUVc30Y.png','uploads/products/thumbnail/ZHn76A2iZbwdoET4iDEcoQ6uHnKnOrpCDfUVc30Y.png',NULL,'youtube',NULL,'',NULL,31.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DRORL6',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROULEAU-DE-PEINTURE-BRAVO-JAUNE-2-2-8dN38',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(234,'SIPHON 15*15 CHROME REBERO','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/t1MJJKYfxJecITeBTjNnKqn1TTwS0kyMDaPotzQf.png','uploads/products/thumbnail/t1MJJKYfxJecITeBTjNnKqn1TTwS0kyMDaPotzQf.png',NULL,'youtube',NULL,'',NULL,87.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','DRX15*15',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SIPHON-1515-CHROME-REBERO-F6efO',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(235,'BOUCHON FEMELLE 20 DIZAYN VERT 13802','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/ztvnwDs7Dj4S4wCjkR23yX6aHyhXFSQfG7Fra2AP.png\"]','uploads/products/thumbnail/nKJvVlxq7xqcKpVDdB35a1im58nLh6GXFoUCxZrA.png','uploads/products/thumbnail/nKJvVlxq7xqcKpVDdB35a1im58nLh6GXFoUCxZrA.png',NULL,'youtube',NULL,'',NULL,2.62,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVBF20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BOUCHON-FEMELLE-20-DIZAYN-VERT-13802-DE9WL',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(236,'BOUCHON MALE 20 VERT 12100 DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/9CYsSvmrFzkckp6AEBN73nchOOnPcrWH4u9VQggR.png\"]','uploads/products/thumbnail/7HRvdBMPoAQnCZjnIv7titkZKVqxgGiyOhpBjO9N.png','uploads/products/thumbnail/7HRvdBMPoAQnCZjnIv7titkZKVqxgGiyOhpBjO9N.png',NULL,'youtube',NULL,'',NULL,1.45,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVBM20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BOUCHON-MALE-20-VERT-12100-DIZAYN-hpWO1',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(237,'BOUCHON MALE25 VERT 12102 DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/QQIZkZwMwr60sxxIlkPAkE4P1W8FtP5g1mbZm60R.png\"]','uploads/products/thumbnail/XuKaBwfiNeOqFY9IIF1FpwvE5cxxBwsa2E5RUS8P.png','uploads/products/thumbnail/XuKaBwfiNeOqFY9IIF1FpwvE5cxxBwsa2E5RUS8P.png',NULL,'youtube',NULL,'',NULL,2.62,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVBM25',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BOUCHON-MALE25-VERT-12102-DIZAYN-cj8im',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(238,'COUDE 20*20 VERT 13602 DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/HH9wssjdvYyzY25codGbe3MkY7mr2BayLKv7C33Z.png\"]','uploads/products/thumbnail/gCtR4Zw6OtRRtlAuNh1PrrCte5kWkIoHTAIrz5Fs.png','uploads/products/thumbnail/gCtR4Zw6OtRRtlAuNh1PrrCte5kWkIoHTAIrz5Fs.png',NULL,'youtube',NULL,'',NULL,2.12,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVC20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COUDE-2020-VERT-13602-DIZAYN-j9SU4',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(239,'COUDE 20 45? DIZAYN VERT 13624','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/JhCH9hPxPSjE3bgBpOu2wCivEjvTaikQGhwA3s1D.png','uploads/products/thumbnail/JhCH9hPxPSjE3bgBpOu2wCivEjvTaikQGhwA3s1D.png',NULL,'youtube',NULL,'',NULL,2.12,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','DZVC20*45?',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COUDE-20-45-DIZAYN-VERT-13624-roklf',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(240,'COUDE 25*25 VERT 13604 DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/OqMs8308rkI881yYthYK5DH8RNVFuP2daGfl27YO.png\"]','uploads/products/thumbnail/KKLpfba9EaHUl1z8XMGWDJc7dZkU1pjv37fY0ZwM.png','uploads/products/thumbnail/KKLpfba9EaHUl1z8XMGWDJc7dZkU1pjv37fY0ZwM.png',NULL,'youtube',NULL,'',NULL,3.12,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVC25',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COUDE-2525-VERT-13604-DIZAYN-8DmH9',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(241,'COUDE APPLIQUE MIT 20 VERT 11114','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/OFagyyeBXvtG7SQCghsAPaMKcYN7LiivlQYlW8cv.png\"]','uploads/products/thumbnail/seZLzEJnlN1hxjHjoaUFviRj2cLIQHpLys2RpSpP.png','uploads/products/thumbnail/seZLzEJnlN1hxjHjoaUFviRj2cLIQHpLys2RpSpP.png',NULL,'youtube',NULL,'',NULL,44.38,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVCA20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COUDE-APPLIQUE-MIT-20-VERT-11114-cNeBe',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(242,'COUDE APPLIQUE 20 VERT 14102 DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/PCL5AOBGN63SvzbFKLi1U9KGU2Vgvu4M4k9R6Fk3.png\"]','uploads/products/thumbnail/4pxwaMpYNA3QEA4Ba5c4n5A0TzJF3lBa3PjH79Qo.png','uploads/products/thumbnail/4pxwaMpYNA3QEA4Ba5c4n5A0TzJF3lBa3PjH79Qo.png',NULL,'youtube',NULL,'',NULL,18.12,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVCAA20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COUDE-APPLIQUE-20-VERT-14102-DIZAYN-ZNowx',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(243,'COLLIER DOUBLE VERT12228 DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/AmXvWCyPaOUv0T4O5roapjyydNNLCHYTGlmZsOdT.png\"]','uploads/products/thumbnail/yeAHbAdsE2w67a1OuMbEaWhuGE2GdwcKGtpMKLQd.png','uploads/products/thumbnail/yeAHbAdsE2w67a1OuMbEaWhuGE2GdwcKGtpMKLQd.png',NULL,'youtube',NULL,'',NULL,2.62,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVCD20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COLLIER-DOUBLE-VERT12228-DIZAYN-9zyJZ',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(244,'COUDE DOS D\'ANE 20 14110 DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/iAvRZWlzPZu9j8u44dJPWfd6zxBVCrtPlIAFg6od.png\"]','uploads/products/thumbnail/3LHkeNealGh2YeAFvmKwJMUiC4eW12HoHPk2KNDe.png','uploads/products/thumbnail/3LHkeNealGh2YeAFvmKwJMUiC4eW12HoHPk2KNDe.png',NULL,'youtube',NULL,'',NULL,11.88,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVCDA20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COUDE-DOS-DANE-20-14110-DIZAYN-PHLt7',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(245,'COUDE F90 20*1/2 VERT 11602 DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/Z44EpBX8NIgdP8oYFkqMBMv2nrHnf6Q7MFKxUhVA.png\"]','uploads/products/thumbnail/ut5feWMzG2iN688f1BNIytHfeoByYse0AnF5z1nc.png','uploads/products/thumbnail/ut5feWMzG2iN688f1BNIytHfeoByYse0AnF5z1nc.png',NULL,'youtube',NULL,'',NULL,23.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVCF20GM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COUDE-F90-2012-VERT-11602-DIZAYN-7vLea',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(246,'COUDE FEMELLE 25*3/4 VERT 14608 DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/L5ingJFB5BJ9Y77vuUPvPZTdxR1XtKaPLWS3yKU7.png\"]','uploads/products/thumbnail/VAOwycsvFF1upLp0tzns5Wpbddhpy8lcH2jtmg9B.png','uploads/products/thumbnail/VAOwycsvFF1upLp0tzns5Wpbddhpy8lcH2jtmg9B.png',NULL,'youtube',NULL,'',NULL,26.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVCF25',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COUDE-FEMELLE-2534-VERT-14608-DIZAYN-7IGQP',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(247,'COUDE FEMELLE 25*1/2 DIZAYN VERT 14606','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/WNm78w7iPah3Zw0vJRpfw76GRWuHR6hA57OGTl0T.png\"]','uploads/products/thumbnail/YgGe2pA7Ej20W9lnYVO63VW80Tb9IgFxdFQCUU11.png','uploads/products/thumbnail/YgGe2pA7Ej20W9lnYVO63VW80Tb9IgFxdFQCUU11.png',NULL,'youtube',NULL,'',NULL,26.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVCF25*1/2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COUDE-FEMELLE-2512-DIZAYN-VERT-14606-jmyiU',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(248,'COLLIER 20 VERT 12212 DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/cC5yHIb4qGx9HAPm0ESR4STA5are5zStw6sTLCrt.png\"]','uploads/products/thumbnail/tyilgOeOLrv4lskY26FwOVvDgMm2hkN0N3IQQhBp.png','uploads/products/thumbnail/tyilgOeOLrv4lskY26FwOVvDgMm2hkN0N3IQQhBp.png',NULL,'youtube',NULL,'',NULL,2.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVCO20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COLLIER-20-VERT-12212-DIZAYN-6nmPY',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(249,'MONCHON 20 VERT 13402 DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/8bQaFFSnYXCY9Q0Q5FM9gepZ8gReFqv2AuiFOi9X.png\"]','uploads/products/thumbnail/DNM8Y0Uz5PjGcSpEM1pD84h9FSRn7cwh7AbUiUNy.png','uploads/products/thumbnail/DNM8Y0Uz5PjGcSpEM1pD84h9FSRn7cwh7AbUiUNy.png',NULL,'youtube',NULL,'',NULL,1.62,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVM20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MONCHON-20-VERT-13402-DIZAYN-HgE5Z',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(250,'MONCHON 25 VERT 13404 DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/PcMuiJxYshJmGYYruqu6RPtE5FzIYEQWFvuveUKo.png\"]','uploads/products/thumbnail/1HsReZZtKC8fMLiPHw1STiMnSIGLP5JwvXBGTbLn.png','uploads/products/thumbnail/1HsReZZtKC8fMLiPHw1STiMnSIGLP5JwvXBGTbLn.png',NULL,'youtube',NULL,'',NULL,2.12,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVM25',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MONCHON-25-VERT-13404-DIZAYN-ZMZHk',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(251,'REDUCTION 20*25 13504 VERT DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/eLKJamLyOHz5nptCJB0f6x3RkDnOxdQDI99mtlIf.png\"]','uploads/products/thumbnail/fymEiJO0oNujNHUoThdGdtxDLmpRtL4ufmqAT4HT.png','uploads/products/thumbnail/fymEiJO0oNujNHUoThdGdtxDLmpRtL4ufmqAT4HT.png',NULL,'youtube',NULL,'',NULL,2.62,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'11','DZVR20*25',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'REDUCTION-2025-13504-VERT-DIZAYN-0v5ZO',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(252,'RACCORD FEMELLE 20*1/2 VERT 14202 DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/K75uxaTkCOz58840tpKhYxqnZnAQhAV6N2H4XNyS.png\"]','uploads/products/thumbnail/JSOQcPKXxx2VA2zwofIILo8wIAZtD0BZtjew28V6.png','uploads/products/thumbnail/JSOQcPKXxx2VA2zwofIILo8wIAZtD0BZtjew28V6.png',NULL,'youtube',NULL,'',NULL,15.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVRF20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'RACCORD-FEMELLE-2012-VERT-14202-DIZAYN-HBxf0',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(253,'RACCORD FEMELLE 25*3/4 VERT 14206','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/FqTvs9vDlu60tb8LNrJ2z5dHuEj5Ym6GbKNyTe7J.png\"]','uploads/products/thumbnail/NuNQmmnxcOchYrHiUvteD1s0PYkmPPBrlCvnzshZ.png','uploads/products/thumbnail/NuNQmmnxcOchYrHiUvteD1s0PYkmPPBrlCvnzshZ.png',NULL,'youtube',NULL,'',NULL,23.38,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVRF25',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'RACCORD-FEMELLE-2534-VERT-14206-rhZ5W',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(254,'RACCORD MAL 20*1/2 VERT 14402 DIZAYN','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/stxmtOeMqEP1s2jzX8nZhcOO2wjaIK1uQ1I4wrF7.png\"]','uploads/products/thumbnail/ams4SrqTEupOYKaX9s7IPKITGFgNp1cy7HTTQ49g.png','uploads/products/thumbnail/ams4SrqTEupOYKaX9s7IPKITGFgNp1cy7HTTQ49g.png',NULL,'youtube',NULL,'',NULL,19.12,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVRM20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'RACCORD-MAL-2012-VERT-14402-DIZAYN-XvemP',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(255,'RACCORD MAL25*3/4 VERT 14406','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/0d5bAyBetYGUUXthdamtWIfuzqwUZADR6GQrN8AG.png\"]','uploads/products/thumbnail/vKoxWRes2y7f5TacVgIwMh5gwHTofzLqyizTLVHJ.png','uploads/products/thumbnail/vKoxWRes2y7f5TacVgIwMh5gwHTofzLqyizTLVHJ.png',NULL,'youtube',NULL,'',NULL,27.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','DZVRM25',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'RACCORD-MAL2534-VERT-14406-gJQ18',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(256,'RACCORD MAL25*1/2 VERT 14408','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/trEDmuC8a9p7a6fygCHEDB0DjgcWR5aAAiI0JJo7.png','uploads/products/thumbnail/trEDmuC8a9p7a6fygCHEDB0DjgcWR5aAAiI0JJo7.png',NULL,'youtube',NULL,'',NULL,27.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2321','DZVRM25*1/2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'RACCORD-MAL2512-VERT-14408-VWjRs',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(257,'TUBE PPR 25*3/4 VERT 10304 DIZAYN','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/7l4GZkxC0cJQlndVL6nqf01RAXP0EoUc58bq2Xwc.png','uploads/products/thumbnail/7l4GZkxC0cJQlndVL6nqf01RAXP0EoUc58bq2Xwc.png',NULL,'youtube',NULL,'',NULL,20.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','DZVT25',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TUBE-PPR-2534-VERT-10304-DIZAYN-OB3Ey',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(258,'TE 20*20 VERT 13702 DIZAYN','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/FijR6PAOKGDvYGY4fGyN3S71X40w31lVVucXMSsu.png','uploads/products/thumbnail/FijR6PAOKGDvYGY4fGyN3S71X40w31lVVucXMSsu.png',NULL,'youtube',NULL,'',NULL,2.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1231','DZVTE20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TE-2020-VERT-13702-DIZAYN-sLX6a',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(259,'TE 25*25 VERT 13704 DIZAYN','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/FnzaAUsa4zjnBdeGM0Dk83m2TMYdB0GnCP1JRZ2d.png','uploads/products/thumbnail/FnzaAUsa4zjnBdeGM0Dk83m2TMYdB0GnCP1JRZ2d.png',NULL,'youtube',NULL,'',NULL,3.38,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2321','DZVTE25',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TE-2525-VERT-13704-DIZAYN-LdthX',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(260,'TE FEMELLE 20*1/2 VERT 14702 DIZAYN','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/BS4paPTbvuUyZcA91kt60nNhjrAJCU9i5SDlIs1k.png','uploads/products/thumbnail/BS4paPTbvuUyZcA91kt60nNhjrAJCU9i5SDlIs1k.png',NULL,'youtube',NULL,'',NULL,17.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'231','DZVTF20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TE-FEMELLE-2012-VERT-14702-DIZAYN-YKN8J',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(261,'TE FEMELLE 25*1/2*25 VERT 14706 DIZAYN','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/bP9zhmw0mKgdcC1O6Oz4cRESteSwdIn9fiBKz4hL.png','uploads/products/thumbnail/bP9zhmw0mKgdcC1O6Oz4cRESteSwdIn9fiBKz4hL.png',NULL,'youtube',NULL,'',NULL,27.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'23231','DZVTF25*1/2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TE-FEMELLE-251225-VERT-14706-DIZAYN-qXJst',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(262,'VANNE PPR 25 TETE ROND VERT 14806','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/Wybd05ZELCmfKipIbos1CHAh23lKVLetgeQ1azHQ.png','uploads/products/thumbnail/Wybd05ZELCmfKipIbos1CHAh23lKVLetgeQ1azHQ.png',NULL,'youtube',NULL,'',NULL,146.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2123','DZVV20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VANNE-PPR-25-TETE-ROND-VERT-14806-xq7mD',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(263,'VANNE PPR 20 TETE ROND VERT 14804','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/Ue9OXIghqRTCSJstmK7Ptv6ojfCaJ1EA6eJzhh0p.png','uploads/products/thumbnail/Ue9OXIghqRTCSJstmK7Ptv6ojfCaJ1EA6eJzhh0p.png',NULL,'youtube',NULL,'',NULL,130.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','DZVV20TR',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VANNE-PPR-20-TETE-ROND-VERT-14804-tsPYS',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(264,'VANNE A VOLANT 20 DIZAYN 14800','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/tEylc7NVP5egJYSr2sKtrtALFu6wZG6wl5mNcPxX.png','uploads/products/thumbnail/tEylc7NVP5egJYSr2sKtrtALFu6wZG6wl5mNcPxX.png',NULL,'youtube',NULL,'',NULL,66.88,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','DZVVTR20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VANNE-A-VOLANT-20-DIZAYN-14800-bvWeu',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(265,'9 ORANGE 5 STAR BAREME FLEX','admin',0,9,NULL,NULL,NULL,NULL,'uploads/products/featured/DIS8042B-.jpg','uploads/products/featured/DIS8042B-.jpg',NULL,NULL,NULL,NULL,NULL,765.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'ENDT060',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'9-ORANGE-5-STAR-BAREME-FLEX-zMzdb',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(266,'9 NOIR AVEC LIGNE BLEU 8MM 50M','admin',0,9,NULL,NULL,NULL,NULL,'uploads/products/featured/DIS8042B.jpg','uploads/products/featured/DIS8042B.jpg',NULL,NULL,NULL,NULL,NULL,12.38,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'ENDTCN50',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'9-NOIR-AVEC-LIGNE-BLEU-8MM-50M-iz8U2',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(267,'9 D\'ARROSAGE PRESTIGE TRANSPARENT 3/4 50 metres','admin',0,9,15,NULL,NULL,'[]','uploads/products/thumbnail/jYHjIPiEo5cunoNDeJCAAMxkzdaHtx0XkroZVrOF.png','uploads/products/thumbnail/jYHjIPiEo5cunoNDeJCAAMxkzdaHtx0XkroZVrOF.png',NULL,'youtube',NULL,'',NULL,30.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2313','ENDTT50',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'9-DARROSAGE-PRESTIGE-TRANSPARENT-34-50-metres-do4uq',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(269,'EQUERRE MONTABLE NUM 10','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/dAqn0zEitM8DNTyBZaUGCXTeP10pmXsdnj8n9lFm.png','uploads/products/thumbnail/dAqn0zEitM8DNTyBZaUGCXTeP10pmXsdnj8n9lFm.png',NULL,'youtube',NULL,'',NULL,75.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'23123','EQ MOT 10',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EQUERRE-MONTABLE-NUM-10-Oz9Hy',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(270,'EQUERRE MONTABLE NUM 12','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/gyCv9vd4rMB35Xv8NhtUJsjAvYIIgmdu2fVfWjGl.png','uploads/products/thumbnail/gyCv9vd4rMB35Xv8NhtUJsjAvYIIgmdu2fVfWjGl.png',NULL,'youtube',NULL,'',NULL,85.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'213','EQ MOT 12',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EQUERRE-MONTABLE-NUM-12-zK9Ti',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(272,'GLISSIERE COULISSE DE TIROIR NUM 12','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/DISSACOEN10-.jpg','uploads/products/featured/DISSACOEN10-.jpg',NULL,NULL,NULL,NULL,NULL,17.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'GL TIR 12',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'GLISSIERE-COULISSE-DE-TIROIR-NUM-12-WJwxI',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(273,'GLISSIERE COULISSE DE TIROIR NUM 14','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/DISSACOEN10.jpg','uploads/products/featured/DISSACOEN10.jpg',NULL,NULL,NULL,NULL,NULL,20.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'GL TIR 14',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'GLISSIERE-COULISSE-DE-TIROIR-NUM-14-frqWg',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(274,'GLISSIERE COULISSE DE TIROIR NUM 16','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/ENDT060.jpg','uploads/products/featured/ENDT060.jpg',NULL,NULL,NULL,NULL,NULL,22.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'GL TIR 16',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'GLISSIERE-COULISSE-DE-TIROIR-NUM-16-2Isdd',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(276,'GLISSIERE COULISSE DE TIROIR NUM 20','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/TYRVmjhXK8xEm5bX1sQZm98dFPIcrCceDWpedMVn.png','uploads/products/thumbnail/TYRVmjhXK8xEm5bX1sQZm98dFPIcrCceDWpedMVn.png',NULL,'youtube',NULL,'',NULL,30.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','GL TIR 20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'GLISSIERE-COULISSE-DE-TIROIR-NUM-20-vtNxY',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(277,'SIPHON EVIER PM 40 14162','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/m38fFSkjHkb4kTYF4KarcdBJMjrSS4LRwdTfdj4e.png','uploads/products/thumbnail/m38fFSkjHkb4kTYF4KarcdBJMjrSS4LRwdTfdj4e.png',NULL,'youtube',NULL,'',NULL,30.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'213','GP14162',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SIPHON-EVIER-PM-40-14162-FgUVW',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(278,'SIPHON EVIER INOX DOUBLE','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/MgBrRzEKrrYYJ0BJyWiNTwq7xsxfRC1alPLNSHop.png','uploads/products/thumbnail/MgBrRzEKrrYYJ0BJyWiNTwq7xsxfRC1alPLNSHop.png',NULL,'youtube',NULL,'',NULL,105.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2312','GP24212',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SIPHON-EVIER-INOX-DOUBLE-c117i',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(279,'Gratoires bilota 7-8-9','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/HEWgb374544i4U1Ue56aKpdeZxq0Mdua9Wu3QTMx.png','uploads/products/thumbnail/HEWgb374544i4U1Ue56aKpdeZxq0Mdua9Wu3QTMx.png',NULL,'youtube',NULL,'',NULL,12.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','GR BIL7-8-9',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Gratoires-bilota-7-8-9-phjL0',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(280,'Boite a outil 3 lock h 180','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/WepzhWSiT6sSrFYRCKsDlNsPICUYascXfs86JMY4.png','uploads/products/thumbnail/WepzhWSiT6sSrFYRCKsDlNsPICUYascXfs86JMY4.png',NULL,'youtube',NULL,'',NULL,150.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2213','h 180',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Boite-a-outil-3-lock-h-180-lfG3x',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(281,'COIN SDB TRANSPARENT PS','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/IIhPoWxUj6M5OC7JW0U1XjT5MUqPvhun8CRw2ZDY.png','uploads/products/thumbnail/IIhPoWxUj6M5OC7JW0U1XjT5MUqPvhun8CRw2ZDY.png',NULL,'youtube',NULL,'',NULL,237.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2321','HKPS',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COIN-SDB-TRANSPARENT-PS-WIgCI',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(282,'COF ASDB BL NOVEL7 PC CACH/C','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/aQ59UJ5z0sFzQu8Jvv8ubSyYhm1GylUoaVn0iwlP.png','uploads/products/thumbnail/aQ59UJ5z0sFzQu8Jvv8ubSyYhm1GylUoaVn0iwlP.png',NULL,'youtube',NULL,'',NULL,425.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2313','I070633',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COF-ASDB-BL-NOVEL7-PC-CACHC-mSY7D',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(283,'MITIGEUR LAVABO LAVIST 8171002','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/PRlCZyIe7fzRL7evuY0HNShPM74eEjPUVZI6EO3S.png','uploads/products/thumbnail/PRlCZyIe7fzRL7evuY0HNShPM74eEjPUVZI6EO3S.png',NULL,'youtube',NULL,'',NULL,425.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2w312','INM8171002',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MITIGEUR-LAVABO-LAVIST-8171002-rDU8I',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(284,'MITIGEUR CUISINE LAVIST 8171004','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/VOyGRLXw04d3WQQEUXDx0fdeRQwLm5d3Rd6uCCE0.png','uploads/products/thumbnail/VOyGRLXw04d3WQQEUXDx0fdeRQwLm5d3Rd6uCCE0.png',NULL,'youtube',NULL,'',NULL,425.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','INM8171004',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MITIGEUR-CUISINE-LAVIST-8171004-zdDMq',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(285,'MITIGEURS DOUCHE LAVIST 8171005','admin',0,4,NULL,NULL,NULL,NULL,'uploads/products/featured/ENDTCN50.jpg','uploads/products/featured/ENDTCN50.jpg',NULL,NULL,NULL,NULL,NULL,525.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'INM8171005',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MITIGEURS-DOUCHE-LAVIST-8171005-qqDuN',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(286,'MITIGEUR CUISINE LAVIST 8171007','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/TJiEEswoK5o0GkU2UbePVwwetcGdHH5odtQ1ZYFP.png','uploads/products/thumbnail/TJiEEswoK5o0GkU2UbePVwwetcGdHH5odtQ1ZYFP.png',NULL,'youtube',NULL,'',NULL,525.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','INM8171007',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MITIGEUR-CUISINE-LAVIST-8171007-0EgZ4',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(287,'POIGNEE CLE INAN AS-207 NICKEL SATIN','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/n1GllLTffQwHgaIoLYCAN6ojAnQkwn5NYPrjR95K.png','uploads/products/featured/INM8171005.jpg',NULL,'youtube',NULL,'',NULL,107.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','INP207C',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-CLE-INAN-AS-207-NICKEL-SATIN-s6iYP',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:58'),
	(288,'POIGNEE CANNO INAN AS-207 NICKEL','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/6ThWWastuz0jrVwjVL1bhd0PyRp8zJsvs9ja1hLv.png','uploads/products/featured/INNO LED 30WB22.jpg',NULL,'youtube',NULL,'',NULL,107.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','INP207CA',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-CANNO-INAN-AS-207-NICKEL-kodNw',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:58'),
	(289,'POIGNEE CANNO INAN AS-207 ANTIQUE AB','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/drEVyysC9CWhFB8XSsiZFLWaW6uWUYt8vlppZw89.png','uploads/products/thumbnail/drEVyysC9CWhFB8XSsiZFLWaW6uWUYt8vlppZw89.png',NULL,'youtube',NULL,'',NULL,107.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','INP207CAAM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-CANNO-INAN-AS-207-ANTIQUE-AB-34SA0',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(290,'POIGNEE CLE INAN AS-207 ANTIQUE AB','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/APuQpiFZlTMA23yrVSzJCPFcxXjmgHNGBCmMck7q.png','uploads/products/featured/INNO LED 30WE27.jpg',NULL,'youtube',NULL,'',NULL,107.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','INP207CAM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-CLE-INAN-AS-207-ANTIQUE-AB-VrTvj',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:58'),
	(291,'Poign?e wc INAN AS-207 nickel satin','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/xOMUq15Hd4TzS6QeMozmZZmDQsxu0gTSoJd2gVGM.png','uploads/products/featured/INNO LED 40WB22.jpg',NULL,'youtube',NULL,'',NULL,120.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'212','INP207W',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Poigne-wc-INAN-AS-207-nickel-satin-zXtrp',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:58'),
	(292,'POIGNEE WC INAN AS-207 ANTIQUE AB','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/INNO LED 40WE27.jpg','uploads/products/featured/INNO LED 40WE27.jpg',NULL,NULL,NULL,NULL,NULL,120.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'INP207WAM',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-WC-INAN-AS-207-ANTIQUE-AB-Uazfd',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(293,'POIGNEE INAN WC AS-250 MALAK ANTIQUE AB','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/mzpBxZognU4pm42s4WYYxKJEiQf2tI2GaymMUcBy.png','uploads/products/thumbnail/mzpBxZognU4pm42s4WYYxKJEiQf2tI2GaymMUcBy.png',NULL,'youtube',NULL,'',NULL,157.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','INP250AMW',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-INAN-WC-AS-250-MALAK-ANTIQUE-AB-w4hvH',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(294,'POIGNEE INAN CLE AS-250 MALAK NICKEL','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/0YLsM4rnfqQ74c7c4jpYI9g0d7TzobFkW3lRhr5x.png','uploads/products/featured/INNP AP SOL 2.jpg',NULL,'youtube',NULL,'',NULL,145.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','INP250NSMC',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-INAN-CLE-AS-250-MALAK-NICKEL-M9Uli',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:58'),
	(295,'POIGNEE INAN CANNO AS-250 MALAK NICKEL','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/INOO LED 9WE27.jpg','uploads/products/featured/INOO LED 9WE27.jpg',NULL,NULL,NULL,NULL,NULL,145.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'INP250NSMCA',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-INAN-CANNO-AS-250-MALAK-NICKEL-jDbXy',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(296,'POIGNEE INAN WC AS-250 MALAK NICKEL','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/WugZPyIuMJcjQZJ94RH2YxO41JvAgJJYmpmTKdZB.png','uploads/products/thumbnail/WugZPyIuMJcjQZJ94RH2YxO41JvAgJJYmpmTKdZB.png',NULL,'youtube',NULL,'',NULL,157.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'212','INP250NSMW',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-INAN-WC-AS-250-MALAK-NICKEL-LSIxp',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(297,'POIGNEE ANON INAN AS221','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/INOO PR CLR.jpg','uploads/products/featured/INOO PR CLR.jpg',NULL,NULL,NULL,NULL,NULL,120.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'INPC221',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-ANON-INAN-AS221-1H8DO',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:22'),
	(298,'POIGNEE CLE INAN AS-222','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/pSL1s6xRnxwjK4d8hZFh7W1mG6k0DAzv6uWK2Zjy.png','uploads/products/thumbnail/pSL1s6xRnxwjK4d8hZFh7W1mG6k0DAzv6uWK2Zjy.png',NULL,'youtube',NULL,'',NULL,127.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2121','INPC222',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-CLE-INAN-AS-222-HzajD',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(299,'POIGNEE CLE AS 221','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/INP207CA.jpg','uploads/products/featured/INP207CA.jpg',NULL,NULL,NULL,NULL,NULL,120.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'INPCL221',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-CLE-AS-221-OsX5S',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(300,'POIGNEE CANNO INAN AS-222','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/8tYLN3oaeGKm073cHlpxTEnR57QTT5efNuyiEWUq.png','uploads/products/thumbnail/8tYLN3oaeGKm073cHlpxTEnR57QTT5efNuyiEWUq.png',NULL,'youtube',NULL,'',NULL,127.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','INPCN222',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-CANNO-INAN-AS-222-4FumY',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(302,'POIGNEE PALIERE 250 MALAK INAN','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/TvFGc0wssJDchq6QzPqtkzqrYeWkuaTgHefdXiY1.png','uploads/products/thumbnail/TvFGc0wssJDchq6QzPqtkzqrYeWkuaTgHefdXiY1.png',NULL,'youtube',NULL,'',NULL,180.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','INPP250NS',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-PALIERE-250-MALAK-INAN-bJb63',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(303,'POIGNEE INAN CANNO PALIERE ANTIQUE','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/YRwjUeAYLxpW55FaoOVw0vdt9VXoFqalmoeRbzSZ.png','uploads/products/thumbnail/YRwjUeAYLxpW55FaoOVw0vdt9VXoFqalmoeRbzSZ.png',NULL,'youtube',NULL,'',NULL,127.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'212','INPPCA',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-INAN-CANNO-PALIERE-ANTIQUE-4Clya',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(304,'POIGNEE PALIERE NICKEL SATIN INAN','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/MMszoXw9caTgZL0cUfk9ehFrjCijrbfs9V4aqcXv.png','uploads/products/thumbnail/MMszoXw9caTgZL0cUfk9ehFrjCijrbfs9V4aqcXv.png',NULL,'youtube',NULL,'',NULL,127.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'212','INPPCNS',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-PALIERE-NICKEL-SATIN-INAN-3gqY4',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(305,'POIGNE WC INAN 221','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/INP207CAM.jpg','uploads/products/featured/INP207CAM.jpg',NULL,NULL,NULL,NULL,NULL,132.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'INPW221',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNE-WC-INAN-221-Y9UrE',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(306,'POIGNEE WC INAN AS-222','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/tF0kSldjKj7WjhcPgZgRSTjXyQHXtB1SeTAzpsA1.png','uploads/products/thumbnail/tF0kSldjKj7WjhcPgZgRSTjXyQHXtB1SeTAzpsA1.png',NULL,'youtube',NULL,'',NULL,140.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1212212','INPW222',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-WC-INAN-AS-222-z1ZUU',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(308,'SUPPORT DE REFRIGERATEUR 64/64','admin',0,8,14,NULL,NULL,'[]','uploads/products/thumbnail/7lRWlYJ4YmjPwpxeWhYn9wi193l0Y5I7F5ih5kyF.png','uploads/products/thumbnail/7lRWlYJ4YmjPwpxeWhYn9wi193l0Y5I7F5ih5kyF.png',NULL,'youtube',NULL,'',NULL,215.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'212','Isoo10/64',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SUPPORT-DE-REFRIGERATEUR-6464-1HG3W',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(309,'7 LSA19-226. 14-42 Mobile','admin',0,7,13,NULL,NULL,'[]','uploads/products/thumbnail/zFByoEYuj0RQAIaWtcqH75afsK5a4OdwWR5Ngs3y.png','uploads/products/thumbnail/zFByoEYuj0RQAIaWtcqH75afsK5a4OdwWR5Ngs3y.png',NULL,'youtube',NULL,'',NULL,200.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','ISOO15',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'7-LSA19-226-14-42-Mobile-Ka1Aw',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(310,'Equerre en fer forg? 20','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/Emla6sO8qmuVBGSgal7sLQFaJEmO6J8YbmXEVLzA.png','uploads/products/thumbnail/Emla6sO8qmuVBGSgal7sLQFaJEmO6J8YbmXEVLzA.png',NULL,'youtube',NULL,'',NULL,13.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','ISOO3/20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Equerre-en-fer-forg-20-ET7rX',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(311,'Equerre en fer forg? 25','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/Te2XfIrYJQVOyKZP7oXe5V9zl9NVw7XN0mH2zNf8.png','uploads/products/thumbnail/Te2XfIrYJQVOyKZP7oXe5V9zl9NVw7XN0mH2zNf8.png',NULL,'youtube',NULL,'',NULL,16.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2121','ISOO3/25',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Equerre-en-fer-forg-25-Eockh',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(312,'Equerre en fer forg? 30','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/jGFnNF9vqCgIxyN7olijiYXvEMokreHBhDdnSEBV.png','uploads/products/thumbnail/jGFnNF9vqCgIxyN7olijiYXvEMokreHBhDdnSEBV.png',NULL,'youtube',NULL,'',NULL,18.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'212','ISOO3/30',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Equerre-en-fer-forg-30-T5xtC',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(313,'Equerre en fer forg? 35','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/PzWODfvmDLANnHtNf4WKKrtRFUXSq7M57EJd9K2j.png','uploads/products/thumbnail/PzWODfvmDLANnHtNf4WKKrtRFUXSq7M57EJd9K2j.png',NULL,'youtube',NULL,'',NULL,21.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','ISOO3/35',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Equerre-en-fer-forg-35-G2j2Y',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(314,'Equerre en fer forg? 40','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/AnwUDi0oJwWbYMpB5NJnrdE59Vy0SbMMr2NHxik0.png','uploads/products/thumbnail/AnwUDi0oJwWbYMpB5NJnrdE59Vy0SbMMr2NHxik0.png',NULL,'youtube',NULL,'',NULL,23.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','ISOO3/40',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Equerre-en-fer-forg-40-86fSC',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(315,'MIROIR 70*90 REF GUITAR SF','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/Jxrc5mQ4AcvFsGOesRRH1ULG3z8IZiFSKXKIeqxE.png','uploads/products/thumbnail/Jxrc5mQ4AcvFsGOesRRH1ULG3z8IZiFSKXKIeqxE.png',NULL,'youtube',NULL,'',NULL,262.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','IYH- 1152D',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MIROIR-7090-REF-GUITAR-SF-qWHyt',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(316,'TASSO EQUERRE PLASTIC MARRON','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/Ou2vVjFU01DPQUXWLQEopvuY03znvr5biQPpMdfw.png','uploads/products/thumbnail/Ou2vVjFU01DPQUXWLQEopvuY03znvr5biQPpMdfw.png',NULL,'youtube',NULL,'',NULL,0.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','KL 0046',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TASSO-EQUERRE-PLASTIC-MARRON-Gt1b3',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(317,'7 M22 MOBILE 19-42 POUSSES','admin',0,7,NULL,NULL,NULL,NULL,'uploads/products/featured/INP207WAM.jpg','uploads/products/featured/INP207WAM.jpg',NULL,NULL,NULL,NULL,NULL,225.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'M22',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'7-M22-MOBILE-19-42-POUSSES-PMmMi',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(318,'Truelle Power Rectangulaire','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/BJCSu17O9Jb4x2Q6X90lYPAd9wTq5WL4O2FkNLxD.png','uploads/products/thumbnail/BJCSu17O9Jb4x2Q6X90lYPAd9wTq5WL4O2FkNLxD.png',NULL,'youtube',NULL,'',NULL,35.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'212','MC12-11-20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Truelle-Power-Rectangulaire-iCtH6',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(319,'3 bicyclette MC12-14','admin',0,3,7,NULL,NULL,'[]','uploads/products/thumbnail/kZZLcdYfFhiYhKJbT1JSJNAtSMntn7v7X3abzUQV.png','uploads/products/thumbnail/kZZLcdYfFhiYhKJbT1JSJNAtSMntn7v7X3abzUQV.png',NULL,'youtube',NULL,'',NULL,40.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','MC12-14',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-bicyclette-MC12-14-xx2jy',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(320,'3 moto MC12-15','admin',0,3,7,NULL,NULL,'[]','uploads/products/thumbnail/jaf06gYCfGh3evy0o5O9YHM340xa50i0D0BhoTXQ.png','uploads/products/thumbnail/jaf06gYCfGh3evy0o5O9YHM340xa50i0D0BhoTXQ.png',NULL,'youtube',NULL,'',NULL,47.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','MC12-15',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-moto-MC12-15-XKwNJ',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(321,'3 moto MC12-16','admin',0,3,7,NULL,NULL,'[]','uploads/products/thumbnail/4gf2Y3niQ8pr2dXz1q1Bps4LYR0fhA6M6cOGyX1T.jpeg','uploads/products/thumbnail/4gf2Y3niQ8pr2dXz1q1Bps4LYR0fhA6M6cOGyX1T.jpeg',NULL,'youtube',NULL,'',NULL,75.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','MC12-16',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-moto-MC12-16-wZ2ll',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(324,'Cl? de serrage MC 12-19','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/aPrVQsXetNQz97eNuEbF9T8D3sUjpzboI5hCFSdP.png','uploads/products/thumbnail/aPrVQsXetNQz97eNuEbF9T8D3sUjpzboI5hCFSdP.png',NULL,'youtube',NULL,'',NULL,25.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','MC12-19',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Cl-de-serrage-MC-12-19-OKdzx',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(325,'TOURNEVIS DE POCHE EN GRENAGE','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/ll9jQvY5hDJsT5oV4nd6t5VGJYyyfqC3kAajw42E.png','uploads/products/thumbnail/ll9jQvY5hDJsT5oV4nd6t5VGJYyyfqC3kAajw42E.png',NULL,'youtube',NULL,'',NULL,21.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1212','MC12-6***',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TOURNEVIS-DE-POCHE-EN-GRENAGE-yUOzM',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(327,'S?cateur num 8','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/IepM6MwAZvlZX7wSPWlFEpy2mOHNRC3s02zhH5qk.png','uploads/products/thumbnail/IepM6MwAZvlZX7wSPWlFEpy2mOHNRC3s02zhH5qk.png',NULL,'youtube',NULL,'',NULL,28.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'212','mc1302-1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Scateur-num-8-l0jRj',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(328,'S?cateur num 10','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/BwiH1wNhOiXcpUDAirNPbpDkoP5peV5r69vO72jD.png','uploads/products/thumbnail/BwiH1wNhOiXcpUDAirNPbpDkoP5peV5r69vO72jD.png',NULL,'youtube',NULL,'',NULL,35.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','mc1302-2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Scateur-num-10-1De9q',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(329,'Tournevis pour gsm','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/lvuBJOnBOIHP8WXIChY8RuMe0ii5W1fAv6OYg2ND.png','uploads/products/thumbnail/lvuBJOnBOIHP8WXIChY8RuMe0ii5W1fAv6OYg2ND.png',NULL,'youtube',NULL,'',NULL,32.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','mc1303',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Tournevis-pour-gsm-1qEha',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(330,'Marteau pour carelage 375g','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/WKZzLK2ecD78nTZzy4lh0xllBq261ahIGlZPv6ja.png','uploads/products/thumbnail/WKZzLK2ecD78nTZzy4lh0xllBq261ahIGlZPv6ja.png',NULL,'youtube',NULL,'',NULL,26.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','mc1311-1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Marteau-pour-carelage-375g-71zDd',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(331,'Marteau pour carelage 475g','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/tLlJgMSlXC5Mgj7KkUagHYGCk9FHe0NjUPfwnU09.png','uploads/products/thumbnail/tLlJgMSlXC5Mgj7KkUagHYGCk9FHe0NjUPfwnU09.png',NULL,'youtube',NULL,'',NULL,26.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','mc1311-2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Marteau-pour-carelage-475g-gyCS4',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(332,'Cl? sypo 9 pcs en grenage long','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/R9gokZWOUUOlPeQlnXzAZuABeWcV3FMCmBrB7JoT.png','uploads/products/thumbnail/R9gokZWOUUOlPeQlnXzAZuABeWcV3FMCmBrB7JoT.png',NULL,'youtube',NULL,'',NULL,35.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'212','MC 1317',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Cl-sypo-9-pcs-en-grenage-long-0ZOVc',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(333,'Cl? sypo 9pcs en grenage medium','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/YteqztGCnMrK8u36TNv17cgi5lUfWN2QFvrVZQiq.png','uploads/products/thumbnail/YteqztGCnMrK8u36TNv17cgi5lUfWN2QFvrVZQiq.png',NULL,'youtube',NULL,'',NULL,30.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1212','MC 1318 / A3',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Cl-sypo-9pcs-en-grenage-medium-68xXk',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(334,'Clef croise noir','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/KeKmdPFAKopcS1lUYeDynvCx2exrP6Hu27bTl3Wn.png','uploads/products/thumbnail/KeKmdPFAKopcS1lUYeDynvCx2exrP6Hu27bTl3Wn.png',NULL,'youtube',NULL,'',NULL,75.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12122','MC 1320',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Clef-croise-noir-a1Eja',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(335,'Scie a main \"power\"','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/AFnvALBefiIAeq9gH8B11blquS6pvEOWJP3WFtY5.png','uploads/products/thumbnail/AFnvALBefiIAeq9gH8B11blquS6pvEOWJP3WFtY5.png',NULL,'youtube',NULL,'',NULL,25.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','mc1321',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Scie-a-main-power-NuPbg',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(342,'Chamoisette en pva 66cm','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/SumxI8jM6XZLek7pufMyth1VFfpBHqux9mJw3nTA.png','uploads/products/thumbnail/SumxI8jM6XZLek7pufMyth1VFfpBHqux9mJw3nTA.png',NULL,'youtube',NULL,'',NULL,31.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','mc1345',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Chamoisette-en-pva-66cm-VddYO',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(345,'ROULETTE 50MM METALIQUE PLAQUE','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/EJBd1IwdxHFsNGmhHC1WEAvpdCW7IZfUT3rjU56k.png','uploads/products/thumbnail/EJBd1IwdxHFsNGmhHC1WEAvpdCW7IZfUT3rjU56k.png',NULL,'youtube',NULL,'',NULL,8.12,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','MC 1502-1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROULETTE-50MM-METALIQUE-PLAQUE-FTOnM',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(346,'ROULETTE GRISE 50MM PLAQUE','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/INP250NSMCA.jpg','uploads/products/featured/INP250NSMCA.jpg',NULL,NULL,NULL,NULL,NULL,11.25,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1505-1',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROULETTE-GRISE-50MM-PLAQUE-Hfflc',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(347,'ROULETTE GRISE 50MM AVEC TIGE','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/INPC221.jpg','uploads/products/featured/INPC221.jpg',NULL,NULL,NULL,NULL,NULL,11.25,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1505-2',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROULETTE-GRISE-50MM-AVEC-TIGE-t0ccl',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(348,'CUTTEUR GRIS POUR CUIR ET TISSUS 1516','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/INPCL221.jpg','uploads/products/featured/INPCL221.jpg',NULL,NULL,NULL,NULL,NULL,13.75,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1516',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CUTTEUR-GRIS-POUR-CUIR-ET-TISSUS-1516-RhecP',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(349,'ENSEMBLE DE TOURNEVIS 7PIECES 1517','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/INPP 250 AM.jpg','uploads/products/featured/INPP 250 AM.jpg',NULL,NULL,NULL,NULL,NULL,140.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1517',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-TOURNEVIS-7PIECES-1517-QtVKy',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(351,'TOURNEVIS TESTEUR 2/1 PETIT','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/INPW221.jpg','uploads/products/featured/INPW221.jpg',NULL,NULL,NULL,NULL,NULL,3.75,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1519-1',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TOURNEVIS-TESTEUR-21-PETIT-TbmUy',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(352,'TOURNEVIS TESTEUR 2/1 MOYEN','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/M22.jpg','uploads/products/featured/M22.jpg',NULL,NULL,NULL,NULL,NULL,5.62,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1519-2',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TOURNEVIS-TESTEUR-21-MOYEN-5ltvt',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(354,'CLEF GRIFFE 10\"','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 12-17.jpg','uploads/products/featured/MC 12-17.jpg',NULL,NULL,NULL,NULL,NULL,47.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1521-1',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-GRIFFE-10-D08oW',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(355,'CLEF GRIFFE 12\'\'','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 12-18.jpg','uploads/products/featured/MC 12-18.jpg',NULL,NULL,NULL,NULL,NULL,55.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1521-2',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-GRIFFE-12-7Tjrd',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(356,'CLEF GRIFFE 14\"','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/vNbkviURdhL4gcrzUbepIOj8EJ3r5XWbjXcJSLtM.png','uploads/products/thumbnail/vNbkviURdhL4gcrzUbepIOj8EJ3r5XWbjXcJSLtM.png',NULL,'youtube',NULL,'',NULL,62.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','mc 1521-3',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-GRIFFE-14-BThTP',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(359,'ENSEMBLE DE LIMES','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1304  1-2-3.jpg','uploads/products/featured/MC 1304  1-2-3.jpg',NULL,NULL,NULL,NULL,NULL,130.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1526',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-LIMES-hpdPu',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(360,'3 MOTO 1528','admin',0,3,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1305 1-2.jpg','uploads/products/featured/MC 1305 1-2.jpg',NULL,NULL,NULL,NULL,NULL,137.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1528',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-MOTO-1528-Q2Vtn',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(361,'3 POUR MOTO','admin',0,3,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1323-.jpg','uploads/products/featured/MC 1323-.jpg',NULL,NULL,NULL,NULL,NULL,137.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1602',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-POUR-MOTO-KqOWc',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(362,'EMBRASSE POUR RIDEAUX AB/GP','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1323.jpg','uploads/products/featured/MC 1323.jpg',NULL,NULL,NULL,NULL,NULL,12.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1605',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EMBRASSE-POUR-RIDEAUX-ABGP-RFLSs',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(363,'EMBRASSE POUR RIDEAUX AB/GP','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1324.jpg','uploads/products/featured/MC 1324.jpg',NULL,NULL,NULL,NULL,NULL,12.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1606',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EMBRASSE-POUR-RIDEAUX-ABGP-Td1Rp',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(364,'EMBRASSES RIDEAUX 1607','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1336.png','uploads/products/featured/MC 1336.png',NULL,NULL,NULL,NULL,NULL,12.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1607',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EMBRASSES-RIDEAUX-1607-ZJKHr',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(365,'EMBRASSE POUR RIDEAUX AB/GP','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1337.jpeg','uploads/products/featured/MC 1337.jpeg',NULL,NULL,NULL,NULL,NULL,13.75,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1608',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EMBRASSE-POUR-RIDEAUX-ABGP-gO6B0',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(366,'SUPPORTS EN INNOX POUR VITRES','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1338.jpg','uploads/products/featured/MC 1338.jpg',NULL,NULL,NULL,NULL,NULL,16.25,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1610',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SUPPORTS-EN-INNOX-POUR-VITRES-jLahB',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(367,'PORTE MENTEAU 4 PIECES','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/sCfAYotZMr8UzsER9873qDPinhZlvqIQw8MdQpdi.jpeg','uploads/products/thumbnail/sCfAYotZMr8UzsER9873qDPinhZlvqIQw8MdQpdi.jpeg',NULL,'youtube',NULL,'',NULL,62.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','MC1611-4',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-4-PIECES-lUIY9',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(368,'PORTE MENTEAU 5 PIECES','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/MSSmt8EjODMbq7Jj8Z4Etx0cZnQTk0XJDEiHMpnl.jpeg','uploads/products/thumbnail/MSSmt8EjODMbq7Jj8Z4Etx0cZnQTk0XJDEiHMpnl.jpeg',NULL,'youtube',NULL,'',NULL,75.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC1611-5',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-5-PIECES-CS9Tm',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(369,'PORTE MENTEAU 6 PIECES','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/amUtLjdmsVN2L91HBkIodsd7j9Qekh3r191BA8fD.jpeg','uploads/products/thumbnail/amUtLjdmsVN2L91HBkIodsd7j9Qekh3r191BA8fD.jpeg',NULL,'youtube',NULL,'',NULL,87.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC 1611-6',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-6-PIECES-WsBVw',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(370,'PORTE MENTEAU 3 PIECES','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/xuhoutccM8KjqfdFPszIzlPrVkVbfxkZYA38IRpx.jpeg','uploads/products/thumbnail/xuhoutccM8KjqfdFPszIzlPrVkVbfxkZYA38IRpx.jpeg',NULL,'youtube',NULL,'',NULL,40.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC 1612-3',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-3-PIECES-eLvGb',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(371,'PORTE MENTEAU 4 PIECES','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/tq7rWDNjAnwsP567Sr22i963R5usu5rl6U1YomdV.jpeg','uploads/products/thumbnail/tq7rWDNjAnwsP567Sr22i963R5usu5rl6U1YomdV.jpeg',NULL,'youtube',NULL,'',NULL,52.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'211','MC1612-4',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-4-PIECES-Tx8nd',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(372,'PORTE MENTEAU 5 PIECES','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/K0tGKnKce8g4DuEEKgTju0k1O0zVxId9Xb57PQOy.jpeg','uploads/products/thumbnail/K0tGKnKce8g4DuEEKgTju0k1O0zVxId9Xb57PQOy.jpeg',NULL,'youtube',NULL,'',NULL,65.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12121','MC1612-5',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-5-PIECES-OHf2G',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(373,'PORTE MENTEAU 3 PIECES','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/dl16QglFnblqLmyv1wSofGZB6GTrpPs0ZWBepdLL.jpeg','uploads/products/thumbnail/dl16QglFnblqLmyv1wSofGZB6GTrpPs0ZWBepdLL.jpeg',NULL,'youtube',NULL,'',NULL,75.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','MC1613-3',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-3-PIECES-HARCU',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(374,'PORTE MENTEAU 4 PIECES','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/t3SssQ72y4wwIpC82oYNcBkNKR2n61pYaifwaY25.jpeg','uploads/products/thumbnail/t3SssQ72y4wwIpC82oYNcBkNKR2n61pYaifwaY25.jpeg',NULL,'youtube',NULL,'',NULL,90.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','MC1613-4',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-4-PIECES-QR4En',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(375,'PORTE MENTEAU 5 PIECES','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/uX1qcZlG44w5cBpSYnBy1SXfM7QfJy0BJp2gCCsa.jpeg','uploads/products/thumbnail/uX1qcZlG44w5cBpSYnBy1SXfM7QfJy0BJp2gCCsa.jpeg',NULL,'youtube',NULL,'',NULL,105.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1212','MC 1613-5',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-5-PIECES-3XAu0',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(376,'POIGNEE CIGARE CYLINDRE','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/e0GXmnJJoYyFEKwCuYK3piDnDjeIeQuTb6vlzQCL.jpeg','uploads/products/thumbnail/e0GXmnJJoYyFEKwCuYK3piDnDjeIeQuTb6vlzQCL.jpeg',NULL,'youtube',NULL,'',NULL,100.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2','MC 1614 C',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-CIGARE-CYLINDRE-BcEtN',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(377,'POIGNEE CIGARE PETIT TROU','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/pyGS2efRw47VQEUizxpfGj9Iftqj3yr64Quf26pm.jpeg','uploads/products/thumbnail/pyGS2efRw47VQEUizxpfGj9Iftqj3yr64Quf26pm.jpeg',NULL,'youtube',NULL,'',NULL,100.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','MC 1614 K',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-CIGARE-PETIT-TROU-Ds853',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(379,'ROULETTE COULEUR 40MM A PLAQUE AVEC FREIN','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/X4QwdBaa56rdKpRxctyC6zCs2KPKUau0eqhzvPL8.jpeg','uploads/products/thumbnail/X4QwdBaa56rdKpRxctyC6zCs2KPKUau0eqhzvPL8.jpeg',NULL,'youtube',NULL,'',NULL,9.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC 1615-40',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROULETTE-COULEUR-40MM-A-PLAQUE-AVEC-FREIN-3BTj7',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(380,'ROULETTE COULEUR 50MM A PLAQUE AVEC FREIN','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/2OMkvnZ1JOLlkUEA5JBmd5N62CYucSzuGlABJffc.jpeg','uploads/products/thumbnail/2OMkvnZ1JOLlkUEA5JBmd5N62CYucSzuGlABJffc.jpeg',NULL,'youtube',NULL,'',NULL,12.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC 1615-50',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROULETTE-COULEUR-50MM-A-PLAQUE-AVEC-FREIN-AFWBm',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(381,'3 PLACARD Everbright couleur AB','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/dQn7JQZw8AGmu3GhdRvxDJPT6D6zbGXUNexZwi6X.jpeg','uploads/products/thumbnail/dQn7JQZw8AGmu3GhdRvxDJPT6D6zbGXUNexZwi6X.jpeg',NULL,'youtube',NULL,'',NULL,37.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2','Mc 1616 AB',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-PLACARD-Everbright-couleur-AB-cMTI6',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(383,'3 PLACARD Everbright couleur CP','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/PrzMxNo8sT0gVN9bl3nIHFxu2k6aF6MtXBz5tCf6.jpeg','uploads/products/thumbnail/PrzMxNo8sT0gVN9bl3nIHFxu2k6aF6MtXBz5tCf6.jpeg',NULL,'youtube',NULL,'',NULL,37.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC 1616 CP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-PLACARD-Everbright-couleur-CP-6TVxR',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(385,'TOURNEVIS DOUBLE TETE REVERSIBLE 2/1','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/hZidOdFq5sC6O0lPeQF5pP6rdqAUfOVnWVSt4dxI.png','uploads/products/thumbnail/hZidOdFq5sC6O0lPeQF5pP6rdqAUfOVnWVSt4dxI.png',NULL,'youtube',NULL,'',NULL,15.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','MC 1625',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TOURNEVIS-DOUBLE-TETE-REVERSIBLE-21-H0u4R',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(386,'TOURNEVIS DOUBLE TETE AVEC REGLAGE','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/VsSB48VyarUenMTaiW560oOp7GW5V56gwmOemoT8.jpeg','uploads/products/thumbnail/VsSB48VyarUenMTaiW560oOp7GW5V56gwmOemoT8.jpeg',NULL,'youtube',NULL,'',NULL,13.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','MC 1625-1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TOURNEVIS-DOUBLE-TETE-AVEC-REGLAGE-qKlSW',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(387,'Support bateau couleur BLACK','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/qiz81pKoZhnzYFq18KhAeEIIrNa70iC1PyG56GSY.jpeg','uploads/products/thumbnail/qiz81pKoZhnzYFq18KhAeEIIrNa70iC1PyG56GSY.jpeg',NULL,'youtube',NULL,'',NULL,45.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC 1626 BL',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Support-bateau-couleur-BLACK-WwtTm',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(388,'Support bateau couleur CP','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/wLCF6GifG88HppiwhgBvzj1AV2lwhDgRN0qeSm4z.jpeg','uploads/products/thumbnail/wLCF6GifG88HppiwhgBvzj1AV2lwhDgRN0qeSm4z.jpeg',NULL,'youtube',NULL,'',NULL,45.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','MC 1626 CP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Support-bateau-couleur-CP-X332h',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(389,'Support bateau couleur SS','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/iTKx3dGsLH3OHXGu2QPwODbO6lkz7A2D3lX6oCls.jpeg','uploads/products/thumbnail/iTKx3dGsLH3OHXGu2QPwODbO6lkz7A2D3lX6oCls.jpeg',NULL,'youtube',NULL,'',NULL,45.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','Mc 1626 SS',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Support-bateau-couleur-SS-eTCu1',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(390,'ENSEMBLE D\'EMBRASSES AVEC CHRISTALIN','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1505-1.jpg','uploads/products/featured/MC 1505-1.jpg',NULL,NULL,NULL,NULL,NULL,80.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1627',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DEMBRASSES-AVEC-CHRISTALIN-E80Nt',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(391,'TIRETTE CHROME CIGARRE 12MM/128','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/33AZNjO1OZOuyrnwAZrY3jYCUviwMoGhD0EGvibH.png','uploads/products/thumbnail/33AZNjO1OZOuyrnwAZrY3jYCUviwMoGhD0EGvibH.png',NULL,'youtube',NULL,'',NULL,10.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2','MC 1632-128',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TIRETTE-CHROME-CIGARRE-12MM128-wzxJ5',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(392,'TIRETTE CHROME CIGARRE 12MM/160','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/rioh7knXaPvhkiNXcGRjab88IersovRA9JG5i2lS.jpeg','uploads/products/thumbnail/rioh7knXaPvhkiNXcGRjab88IersovRA9JG5i2lS.jpeg',NULL,'youtube',NULL,'',NULL,12.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1221','MC1632-160',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TIRETTE-CHROME-CIGARRE-12MM160-qrVMP',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(393,'TIRETTE CHROME CIGARRE 12MM/192','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/vjK0tYNBUw7JfZXJoKouHJVK2wyXg37du6TEngyO.jpeg','uploads/products/thumbnail/vjK0tYNBUw7JfZXJoKouHJVK2wyXg37du6TEngyO.jpeg',NULL,'youtube',NULL,'',NULL,20.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2','MC 1632-192',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TIRETTE-CHROME-CIGARRE-12MM192-DTT55',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(395,'POIGNEE BOULE POUR PORTES PRICIPALES','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/s9pQ8MgkguDIc5aXfJ10za9nkU63NrEAUlqKovAK.jpeg','uploads/products/thumbnail/s9pQ8MgkguDIc5aXfJ10za9nkU63NrEAUlqKovAK.jpeg',NULL,'youtube',NULL,'',NULL,37.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC 1634-2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-BOULE-POUR-PORTES-PRICIPALES-ClvLs',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(396,'POIGNEE BOULE POUR PORTES PRICIPALES','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/W1IULIOI1zW3voiajJM2slszT9zADaLiZ4Bb4jeN.jpeg','uploads/products/thumbnail/W1IULIOI1zW3voiajJM2slszT9zADaLiZ4Bb4jeN.jpeg',NULL,'youtube',NULL,'',NULL,37.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC 1634-3',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-BOULE-POUR-PORTES-PRICIPALES-QoL7V',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(397,'POIGNEE BOULE POUR PORTES PRICIPALES','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/KHpeeqzgBnhIUeOdO5Cg0wBcbEsSZzv7dWdz4JqR.jpeg','uploads/products/thumbnail/KHpeeqzgBnhIUeOdO5Cg0wBcbEsSZzv7dWdz4JqR.jpeg',NULL,'youtube',NULL,'',NULL,37.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC 1634-4',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'POIGNEE-BOULE-POUR-PORTES-PRICIPALES-lpoQn',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(398,'GRATOIRES 160mm/180mm/200mm','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1505-2.jpg','uploads/products/featured/MC 1505-2.jpg',NULL,NULL,NULL,NULL,NULL,22.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1635',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'GRATOIRES-160mm180mm200mm-6PxLl',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(399,'TRACEUR DE MACON','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/rjRJfsrAZz8o3s6IZiiiNcDGYddPUIvfIdWqlaBn.jpeg','uploads/products/thumbnail/rjRJfsrAZz8o3s6IZiiiNcDGYddPUIvfIdWqlaBn.jpeg',NULL,'youtube',NULL,'',NULL,11.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC 1701',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TRACEUR-DE-MACON-zZu1u',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(400,'ENSEMBLE DE TOURNEVIS 6PIECES','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/DOsShk3nWdh1rnddhEUjb2lDaBqEqhzFXyuT3eaQ.jpeg','uploads/products/thumbnail/DOsShk3nWdh1rnddhEUjb2lDaBqEqhzFXyuT3eaQ.jpeg',NULL,'youtube',NULL,'',NULL,90.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','MC 1702',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-TOURNEVIS-6PIECES-G6ERk',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(401,'Tournevis multi-t?tes','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/XAvMrk9zbxpLhdFMuFGS4Dm5S9O0Vfp4J5YzdHQe.png','uploads/products/featured/MC 1516.jpg',NULL,'youtube',NULL,'',NULL,20.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 171',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Tournevis-multi-ttes-xZk5g',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:58'),
	(402,'Cl? ? molette intertool num10','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1517.jpg','uploads/products/featured/MC 1517.jpg',NULL,NULL,NULL,NULL,NULL,67.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1710-10',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Cl--molette-intertool-num10-xLC4S',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(405,'PORTE MENTEAU - SS-','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1518.jpg','uploads/products/featured/MC 1518.jpg',NULL,NULL,NULL,NULL,NULL,15.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1711',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU---SS--fIfRZ',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(406,'SERRURE FF 120MM','admin',0,3,7,NULL,NULL,'[\"uploads\\/products\\/photos\\/jr0UA8irZyIp3VZtAqPu7FaofgDgfp6ePee8wpe7.jpeg\"]','uploads/products/thumbnail/Bu9meHTSvF93M0QEzXgoRGiLGUCrMbYz6qnhLBRK.jpeg','uploads/products/thumbnail/Bu9meHTSvF93M0QEzXgoRGiLGUCrMbYz6qnhLBRK.jpeg',NULL,'youtube',NULL,'',NULL,150.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1713',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SERRURE-FF-120MM-ZgWtZ',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(407,'CANON 60MM \"DOUBLE SEKA\" COULEUR SN','admin',0,3,7,NULL,NULL,'[\"uploads\\/products\\/photos\\/B8iF1LUZkIhDGzrVmMuEhDomZPZBROGtcGFoyRd4.jpeg\"]','uploads/products/thumbnail/r33kQh4qow7xpCq2W8NHRjHoIA5PDqX7WS920sDx.jpeg','uploads/products/thumbnail/r33kQh4qow7xpCq2W8NHRjHoIA5PDqX7WS920sDx.jpeg',NULL,'youtube',NULL,'',NULL,107.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1715-SN',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CANON-60MM-DOUBLE-SEKA-COULEUR-SN-jdEO9',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(408,'CANON 60MM A CLEF TOURNEVIS CUIVRE','admin',0,3,7,NULL,NULL,'[\"uploads\\/products\\/photos\\/W0eGEsDvPFBE10ShSTfl9MGuVPfUmUaNbU3dlSmM.jpeg\"]','uploads/products/thumbnail/fIMOwuYV4FlJJABW4DHNSDMyln6HMXBCZ6Pwsuf7.jpeg','uploads/products/thumbnail/fIMOwuYV4FlJJABW4DHNSDMyln6HMXBCZ6Pwsuf7.jpeg',NULL,'youtube',NULL,'',NULL,180.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1716',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CANON-60MM-A-CLEF-TOURNEVIS-CUIVRE-2s1Pk',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(409,'TALOCHE SIMPLE AVEC MANCHE EN PLASTIC','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/Ee0Ef1QxYci3MQbDd0bBYJ0r9cC7uDAoEU80wyIg.jpeg\"]','uploads/products/thumbnail/2YRyu72VlgNzVNntvjOSKxEZBPK3Hr8HR3qknukn.jpeg','uploads/products/thumbnail/2YRyu72VlgNzVNntvjOSKxEZBPK3Hr8HR3qknukn.jpeg',NULL,'youtube',NULL,'',NULL,32.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2','MC 1718-1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TALOCHE-SIMPLE-AVEC-MANCHE-EN-PLASTIC-zUrVD',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(410,'TALOCHE A MOTIF AVEC MANCHE EN PLASTIC','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/NDpbqEKWkC5j3sztrpUZXXduWYqrhfnEnHIvw53a.jpeg\"]','uploads/products/thumbnail/UoTMit5kaLAkB6ndvlNkHaJgr53zEis3u9zK1Yi7.jpeg','uploads/products/thumbnail/UoTMit5kaLAkB6ndvlNkHaJgr53zEis3u9zK1Yi7.jpeg',NULL,'youtube',NULL,'',NULL,32.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1718-2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TALOCHE-A-MOTIF-AVEC-MANCHE-EN-PLASTIC-OHbAp',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(411,'TALOCHE A MOTIF AVEC MANCHE EN BOIS','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/T8qy11KymX6YdSejMKIRgTUAXHZF3Vjva8FKvc3a.jpeg\"]','uploads/products/thumbnail/FU4POIOK8EZdLMxxY6XIIyVBTJsavjrm95sDdINt.jpeg','uploads/products/thumbnail/FU4POIOK8EZdLMxxY6XIIyVBTJsavjrm95sDdINt.jpeg',NULL,'youtube',NULL,'',NULL,37.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1721-2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TALOCHE-A-MOTIF-AVEC-MANCHE-EN-BOIS-AUPa3',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(412,'TOURNEVIS','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1519-1.jpg','uploads/products/featured/MC 1519-1.jpg',NULL,NULL,NULL,NULL,NULL,8.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1723',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TOURNEVIS-JLAhM',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(413,'BROSSE METALIQUE AVEC MANCHE EN PLASTIQUE','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/AAkZR2A1rm9ezanl8ams1QdbGc8FVfKQLXzeX2tY.jpeg','uploads/products/thumbnail/AAkZR2A1rm9ezanl8ams1QdbGc8FVfKQLXzeX2tY.jpeg',NULL,'youtube',NULL,'',NULL,20.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC1724',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BROSSE-METALIQUE-AVEC-MANCHE-EN-PLASTIQUE-SqL8q',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(414,'LIME POUR BOIS 14 INCH','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/AQWPOCvmgmtWbQ7A8D0pFVexYc3T7fYKxJcUv0qu.jpeg','uploads/products/thumbnail/AQWPOCvmgmtWbQ7A8D0pFVexYc3T7fYKxJcUv0qu.jpeg',NULL,'youtube',NULL,'',NULL,31.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC1726-14',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'LIME-POUR-BOIS-14-INCH-SbzTV',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(415,'TOURNEVIS','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/T73gIYGP7M8h940NlyYv1nfUsYuyKCwHXrLLu1ts.jpeg\"]','uploads/products/thumbnail/Bdq9ms7HHGkPqm9N4Gh0wVdk1UwucF2RUqnDcAig.jpeg','uploads/products/thumbnail/Bdq9ms7HHGkPqm9N4Gh0wVdk1UwucF2RUqnDcAig.jpeg',NULL,'youtube',NULL,'',NULL,12.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1730',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TOURNEVIS-GZBnS',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(416,'CLEF A PIPE NUM10','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/4BAX6bePZr839d9cQwnDS14HF023gCIsG6tSk80x.jpeg\"]','uploads/products/thumbnail/FfF504d3XO4Tj75bKkxdZoHeKMAPEikk8SYowwuP.jpeg','uploads/products/thumbnail/FfF504d3XO4Tj75bKkxdZoHeKMAPEikk8SYowwuP.jpeg',NULL,'youtube',NULL,'',NULL,17.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1732-10',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-A-PIPE-NUM10-bRIEc',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(417,'CLEF A PIPE NUM13','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/ydtXI0Ea64j9EbZzivM7pjRIdOlpQnRLH0DYFGLN.jpeg\"]','uploads/products/thumbnail/ONs3g2yyDeY7o5cL3VEYJhsFa83uqipwX1NJeHIn.jpeg','uploads/products/thumbnail/ONs3g2yyDeY7o5cL3VEYJhsFa83uqipwX1NJeHIn.jpeg',NULL,'youtube',NULL,'',NULL,23.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1732-13',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-A-PIPE-NUM13-86ys8',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(418,'CLEF A PIPE NUM 17','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/iRRuR5wasdPnssiEVet5eGtzJTuY9SEQSr0pOWiW.jpeg\"]','uploads/products/thumbnail/yzLkymcqYe382z02RXmFzh1vmfezfcc7B5TbPyIU.jpeg','uploads/products/thumbnail/yzLkymcqYe382z02RXmFzh1vmfezfcc7B5TbPyIU.jpeg',NULL,'youtube',NULL,'',NULL,41.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1732-17',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-A-PIPE-NUM-17-o4QVQ',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(419,'CLEF A PIPE NUM 19','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/EqNRrqrSw8DirXQtClGMWGp5jyBgzvznpw9D1eEk.jpeg\"]','uploads/products/thumbnail/fjS2bOM8RWFJkiWi5NXP4pqjjipdLLIWG2TVxRBq.jpeg','uploads/products/thumbnail/fjS2bOM8RWFJkiWi5NXP4pqjjipdLLIWG2TVxRBq.jpeg',NULL,'youtube',NULL,'',NULL,48.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1732-19',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-A-PIPE-NUM-19-qFTtN',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(420,'CIE A MAIN','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/CVRQVNNLisVLtNObKxhDhK8eTbztQwOa3fuD7CN1.jpeg\"]','uploads/products/thumbnail/eCkKJTto7A2R3scNvYCqQm7ozqWOVwVmLOUIJW7E.jpeg','uploads/products/thumbnail/eCkKJTto7A2R3scNvYCqQm7ozqWOVwVmLOUIJW7E.jpeg',NULL,'youtube',NULL,'',NULL,30.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1735',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CIE-A-MAIN-uP6Vm',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(421,'3 MOTO TOYNYON 1METRE','admin',0,3,7,NULL,NULL,'[]','uploads/products/thumbnail/vZMKARdTrVJ5j92R4Y6eBmyCSqh2MO8o9wVkBIj5.jpeg','uploads/products/thumbnail/vZMKARdTrVJ5j92R4Y6eBmyCSqh2MO8o9wVkBIj5.jpeg',NULL,'youtube',NULL,'',NULL,137.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC1739',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-MOTO-TOYNYON-1METRE-LPw8U',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(422,'3 MOTO TOYNYON 1.2METRE','admin',0,3,7,NULL,NULL,'[\"uploads\\/products\\/photos\\/3zg2iYeYRaX3zptZSLfSKBSGIQmy1WPVOANyllaC.jpeg\"]','uploads/products/thumbnail/8OoPhmaQ7OeMFbIVVqiW74cmuPrcObhTTQCWVa2O.jpeg','uploads/products/thumbnail/8OoPhmaQ7OeMFbIVVqiW74cmuPrcObhTTQCWVa2O.jpeg',NULL,'youtube',NULL,'',NULL,150.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1740',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-MOTO-TOYNYON-12METRE-LGdfo',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(423,'PINCEAU A PEINDRE -MANCHE EN PLASTIQUE','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/ErZbexGNn6cNJ5YdOiZnCRPexZxd73AcDNW0ABJo.jpeg','uploads/products/thumbnail/ErZbexGNn6cNJ5YdOiZnCRPexZxd73AcDNW0ABJo.jpeg',NULL,'youtube',NULL,'',NULL,7.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC1742 10-15-20-25',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PINCEAU-A-PEINDRE--MANCHE-EN-PLASTIQUE-JEIaa',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(424,'CIE POUR BRANCHES 24\'\'','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/irJn5ro6V2gsQvNnz6bvxOkkeQsDWNrT9yv0xCNS.jpeg\"]','uploads/products/thumbnail/ERfvEU0f8NLezFAQeRa7471BQLmWgZgo0LqphlgD.jpeg','uploads/products/thumbnail/ERfvEU0f8NLezFAQeRa7471BQLmWgZgo0LqphlgD.jpeg',NULL,'youtube',NULL,'',NULL,41.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1745',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CIE-POUR-BRANCHES-24-NkTKV',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(425,'PIED DE FAUTEUIL 5.5CM/4.3CM','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/IfRFOXmd3wSG3uPQyckC7yosC4LcZMhyuamqGMBl.jpeg\"]','uploads/products/thumbnail/FOT7muro8DdSDjYeqA7Qgr9qX7LZUZVhAxvQmS1z.jpeg','uploads/products/thumbnail/FOT7muro8DdSDjYeqA7Qgr9qX7LZUZVhAxvQmS1z.jpeg',NULL,'youtube',NULL,'',NULL,12.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1790',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PIED-DE-FAUTEUIL-55CM43CM-A3qZD',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(427,'LAME FLEX ULIRA','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/YkljcdtkWDL2QknJJ6bLDLfVQY4JPH4X7FFjBKY5.jpeg\"]','uploads/products/thumbnail/jZnM7t4LdkpLrOvWZuUcFYbfYUqyNs6fwa7EL0MH.jpeg','uploads/products/thumbnail/jZnM7t4LdkpLrOvWZuUcFYbfYUqyNs6fwa7EL0MH.jpeg',NULL,'youtube',NULL,'',NULL,2.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1795',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'LAME-FLEX-ULIRA-1gHCR',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(428,'PORTE MENTEAU MONO','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/8okrpCtoKE73nLhM7hYGlmGSF2HljZJBtrMw4N0Y.jpeg\"]','uploads/products/thumbnail/D3Xfbb5vIOSfHRwIuNtEjDucCiCjkylIuNpqGeby.jpeg','uploads/products/thumbnail/D3Xfbb5vIOSfHRwIuNtEjDucCiCjkylIuNpqGeby.jpeg',NULL,'youtube',NULL,'',NULL,15.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1796',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-MONO-QjWCt',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(429,'PORTE MENTEAU MONO','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/OXHnErDN8cU4QOtw8fvBvN3QUPS4uF2LuaxZqh11.jpeg\"]','uploads/products/thumbnail/ehjZyqVPIWlN4S4GFNgzv6bsZdbmThFtWIODygJZ.jpeg','uploads/products/thumbnail/ehjZyqVPIWlN4S4GFNgzv6bsZdbmThFtWIODygJZ.jpeg',NULL,'youtube',NULL,'',NULL,15.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1797',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-MONO-GtlPr',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(430,'Tournevis r?glable jaune double t?te','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1519-2.jpg','uploads/products/featured/MC 1519-2.jpg',NULL,NULL,NULL,NULL,NULL,15.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1801',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Tournevis-rglable-jaune-double-tte-Jkeq7',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(431,'TOURNEVIS CHROME 6inch t?te Americane','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/JVMiZ07NMK0yRfPSr1gBz4gKgZg7SsJLX2J5M6xc.jpeg\"]','uploads/products/thumbnail/QPjTiy7G1VlsaaUSVlq94HeWavXyQZvq4PEtYY3L.jpeg','uploads/products/thumbnail/QPjTiy7G1VlsaaUSVlq94HeWavXyQZvq4PEtYY3L.jpeg',NULL,'youtube',NULL,'',NULL,17.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1802',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TOURNEVIS-CHROME-6inch-tte-Americane-LSxp1',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(432,'TOURNEVIS CHROME 4inch T?te Americane','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/aQeBpgJDj0WrC529jx38Z0IA3n9ydejarPOUzz7L.jpeg\"]','uploads/products/thumbnail/dGVYqsBBkX5HYmWqxARoVCtlOMLMxJGrkocHGx3w.jpeg','uploads/products/thumbnail/dGVYqsBBkX5HYmWqxARoVCtlOMLMxJGrkocHGx3w.jpeg',NULL,'youtube',NULL,'',NULL,15.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1803',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TOURNEVIS-CHROME-4inch-Tte-Americane-jZDeP',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(433,'CIE AMAIN \"POWER\"','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/V5Yb6Ps5cGkypx2Ti8phf3bAp43LIXO1hrHYf1rE.jpeg','uploads/products/thumbnail/V5Yb6Ps5cGkypx2Ti8phf3bAp43LIXO1hrHYf1rE.jpeg',NULL,'youtube',NULL,'',NULL,75.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','mc1808',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CIE-AMAIN-POWER-FTslk',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(434,'CIE AMAIN \"POWER\"','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/wax3ca6JhfgkhgBXReONaHXdjpfc9KrybHopbH5W.jpeg','uploads/products/thumbnail/wax3ca6JhfgkhgBXReONaHXdjpfc9KrybHopbH5W.jpeg',NULL,'youtube',NULL,'',NULL,90.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'11','mc1809',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CIE-AMAIN-POWER-rJjk8',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(435,'CIE AMAIN \"POWER\"','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/7LRdTNp8odkIdJhyPyjMTO8AWuI720aBrXhGboJd.jpeg','uploads/products/thumbnail/7LRdTNp8odkIdJhyPyjMTO8AWuI720aBrXhGboJd.jpeg',NULL,'youtube',NULL,'',NULL,60.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','mc1810',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CIE-AMAIN-POWER-XKxsg',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(436,'3 50MM MAXI POWER','admin',0,3,7,NULL,NULL,'[\"uploads\\/products\\/photos\\/L9TspmFA6MpKYq2TbhUmzhzGgOShBrMRRV2vTcjy.jpeg\"]','uploads/products/thumbnail/q9h6BnOg3yTrdQzddAKOxPwlmCUDGHs4GkK9q8Mz.jpeg','uploads/products/thumbnail/q9h6BnOg3yTrdQzddAKOxPwlmCUDGHs4GkK9q8Mz.jpeg',NULL,'youtube',NULL,'',NULL,35.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1813-50',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-50MM-MAXI-POWER-yZCQ7',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(437,'3 60MM MAXI POWER','admin',0,3,7,NULL,NULL,'[\"uploads\\/products\\/photos\\/SAkkd0aBcknpD6Wn48v6Q44LQNtjeWl3RV4p1ukq.jpeg\"]','uploads/products/thumbnail/PsGg5zwPNlzqJqrojv9db9Pt3GGKAuLqH3mLUrgk.jpeg','uploads/products/thumbnail/PsGg5zwPNlzqJqrojv9db9Pt3GGKAuLqH3mLUrgk.jpeg',NULL,'youtube',NULL,'',NULL,42.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1813-60',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-60MM-MAXI-POWER-f9t5w',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(438,'3 70MM MAXI POWER','admin',0,3,7,NULL,NULL,'[\"uploads\\/products\\/photos\\/m9ifMpn9iqREUeu1ECuWvbaxaMw6ZWzGWiEQWjoF.jpeg\"]','uploads/products/thumbnail/q0h3lPkf9G2bj3luWSfLQPTb372rvpOuHLODxAw9.jpeg','uploads/products/thumbnail/q0h3lPkf9G2bj3luWSfLQPTb372rvpOuHLODxAw9.jpeg',NULL,'youtube',NULL,'',NULL,50.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1813-70',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-70MM-MAXI-POWER-lQPu0',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(439,'CLEF DE SERRAGE FORME T NUM 25','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/mZzOoZkIuWNXfBqTCylfQZondtapbgqnB2VruI1W.jpeg\"]','uploads/products/thumbnail/bMEdXTLHPUwbZoYlH0qau1I46WZ54bpb8DCQDLHw.jpeg','uploads/products/thumbnail/bMEdXTLHPUwbZoYlH0qau1I46WZ54bpb8DCQDLHw.jpeg',NULL,'youtube',NULL,'',NULL,20.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1816-2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-DE-SERRAGE-FORME-T-NUM-25-UBEib',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(440,'CLEF DE SERRAGE FORME T NUM 27','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/6DWfeUH38OzVU8LU8YfI9AqCYpkonGFJyH7oARII.jpeg\"]','uploads/products/thumbnail/f8rcxROSEDBHX9uGRpf3TcDqvjaqDuxzzhpKWQhe.jpeg','uploads/products/thumbnail/f8rcxROSEDBHX9uGRpf3TcDqvjaqDuxzzhpKWQhe.jpeg',NULL,'youtube',NULL,'',NULL,23.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1816-3',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-DE-SERRAGE-FORME-T-NUM-27-8L1MK',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(441,'CLEF DE SERRAGE FORME T NUM 30','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/qoYv3DTxy0wmpJuiuFJ0D2ASYnsQ8DGDbrSWH7na.jpeg\"]','uploads/products/thumbnail/Px9pl4NxrYu3MgxXagiCBF2Gm22teG98UJMgbVHP.jpeg','uploads/products/thumbnail/Px9pl4NxrYu3MgxXagiCBF2Gm22teG98UJMgbVHP.jpeg',NULL,'youtube',NULL,'',NULL,27.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1816-4',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-DE-SERRAGE-FORME-T-NUM-30-EeWR2',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(442,'CLEF DE SERRAGE FORME T NUM 45','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/7tCFGQbbUmbmU0LxOaW6oFvHAM65W5bQLA6Bvafb.jpeg\"]','uploads/products/thumbnail/SNmTlRdFrEJfne8EzEPGKLfw37i59cdgfdfl1lMP.jpeg','uploads/products/thumbnail/SNmTlRdFrEJfne8EzEPGKLfw37i59cdgfdfl1lMP.jpeg',NULL,'youtube',NULL,'',NULL,31.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1816-5',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-DE-SERRAGE-FORME-T-NUM-45-gMI8Y',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(443,'CLEF DE SERRAGE FORME T NUM 50','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/rzpbP1Fxm0NWchPlkfAKRXUSR9wjGtkN8njFwiS0.jpeg\"]','uploads/products/thumbnail/VAJO10YzlXHlOqIDR39xPtnWsAE415HNqGc1hpvk.jpeg','uploads/products/thumbnail/VAJO10YzlXHlOqIDR39xPtnWsAE415HNqGc1hpvk.jpeg',NULL,'youtube',NULL,'',NULL,35.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1816-6',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-DE-SERRAGE-FORME-T-NUM-50-zZX95',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(444,'CLEF DE SERRAGE FORME T NUM 55','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/S4M2Lg34RINg96SjsHWQjBB6kkGJ8oEMZS1Xh6ND.jpeg\"]','uploads/products/thumbnail/MLXuqRPDYaTJk3ztLzM22LaeAPusMNdqDtyyGbX9.jpeg','uploads/products/thumbnail/MLXuqRPDYaTJk3ztLzM22LaeAPusMNdqDtyyGbX9.jpeg',NULL,'youtube',NULL,'',NULL,38.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1816-7',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-DE-SERRAGE-FORME-T-NUM-55-worC0',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(445,'CLEF PLAT CRENO 8\"','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/d7Ha3zU7Q1YduJYJRsRE9U0xNmVpggtSpcRAbvcn.jpeg\"]','uploads/products/thumbnail/OWUcSUf5MwNCZcZAbC37O0VODzJ7foURSWXGm0qc.jpeg','uploads/products/thumbnail/OWUcSUf5MwNCZcZAbC37O0VODzJ7foURSWXGm0qc.jpeg',NULL,'youtube',NULL,'',NULL,12.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1821-1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-PLAT-CRENO-8-AXqai',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(446,'CLEF PLAT CRENO 10\"','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/ImcXv2zsrNOV8DiDmqXfti9EgEsKCZfJkBpqrYdI.jpeg','uploads/products/thumbnail/ImcXv2zsrNOV8DiDmqXfti9EgEsKCZfJkBpqrYdI.jpeg',NULL,'youtube',NULL,'',NULL,15.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC1821-2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-PLAT-CRENO-10-luRXs',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(447,'CLEF PLAT CRENO 13\"','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/lgTcrPJzexAuHWX5ZTDwkLgu1ey9vXWLrT2RHuYW.jpeg\"]','uploads/products/thumbnail/Hwfj4r3f1lOp3Ql9bDOeAob1ki3v3VjGdTDfv1Ij.jpeg','uploads/products/thumbnail/Hwfj4r3f1lOp3Ql9bDOeAob1ki3v3VjGdTDfv1Ij.jpeg',NULL,'youtube',NULL,'',NULL,18.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1821-3',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-PLAT-CRENO-13-tsnV1',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(448,'CLEF PLAT CRENO 14\"','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/mb5euk0WIXE6uYcsdP4rCquDNaeFNXTPiSqcWWIK.jpeg\"]','uploads/products/thumbnail/emOJLM9tEcY1HbPVvmwdzKcvQsq6EHQdBKPtV55H.jpeg','uploads/products/thumbnail/emOJLM9tEcY1HbPVvmwdzKcvQsq6EHQdBKPtV55H.jpeg',NULL,'youtube',NULL,'',NULL,20.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1821-4',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-PLAT-CRENO-14-hgtb9',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(449,'CLEF PLAT CRENO 17\"','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/kyJSSNVgLUgK5De5oRTT6ivWzFach1mEOuFANHtQ.jpeg\"]','uploads/products/thumbnail/Y4rxMGWpSWyi4FVNjk9tR2o8bwBHb4ZMJPUTHwaY.jpeg','uploads/products/thumbnail/Y4rxMGWpSWyi4FVNjk9tR2o8bwBHb4ZMJPUTHwaY.jpeg',NULL,'youtube',NULL,'',NULL,25.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1821-5',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-PLAT-CRENO-17-mPoBP',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(450,'CLEF PLAT CRENO 19\"','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/mGVvKnIlwOH7eTWaqYYjuACQS0ApbBMIvkM48D9k.jpeg\"]','uploads/products/thumbnail/MukOGOG0PhLoJ9PGOWtrPfOmM7sOUV6iwDqEEp4w.jpeg','uploads/products/thumbnail/MukOGOG0PhLoJ9PGOWtrPfOmM7sOUV6iwDqEEp4w.jpeg',NULL,'youtube',NULL,'',NULL,32.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1821-6',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-PLAT-CRENO-19-SARhJ',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(451,'CLEF 24/27 POWER','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1520.jpg','uploads/products/featured/MC 1520.jpg',NULL,NULL,NULL,NULL,NULL,20.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1822',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-2427-POWER-4hjJ8',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(452,'ENSEMBLE DE CLEF PLAT CRENEAU 7 PIECES','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/o07OQvO2Di6igXSzjSk2jG8vQuJW1AJ3H4Zq4qXS.jpeg\"]','uploads/products/thumbnail/n5d9kjpxATOvXrCjqZmnbVdva01j1OYXlZYR8kuS.jpeg','uploads/products/thumbnail/n5d9kjpxATOvXrCjqZmnbVdva01j1OYXlZYR8kuS.jpeg',NULL,'youtube',NULL,'',NULL,375.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1824',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-CLEF-PLAT-CRENEAU-7-PIECES-tnAUx',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(453,'CLEF PLAT NUM 8\"-10\'\'','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/IGuilE9unnX0R12UjFjEz87WOBZ52dJYivdacmq6.jpeg\"]','uploads/products/thumbnail/VUZ6zB5YpdnbT9simoORtX7i122FxmGpz3xHgwJC.jpeg','uploads/products/thumbnail/VUZ6zB5YpdnbT9simoORtX7i122FxmGpz3xHgwJC.jpeg',NULL,'youtube',NULL,'',NULL,13.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1825-1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-PLAT-NUM-8-10-AG0aq',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(454,'CLEF PLAT 10\"/13\"','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/a2FzqjbISnXOFMXGLtobl4OoYOCpruBEntHxMiDG.jpeg\"]','uploads/products/thumbnail/fTtwXRJIbiRkEkkz1rZNk6BHaHf4EqwpHB5lEsf8.jpeg','uploads/products/thumbnail/fTtwXRJIbiRkEkkz1rZNk6BHaHf4EqwpHB5lEsf8.jpeg',NULL,'youtube',NULL,'',NULL,16.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1825-2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-PLAT-1013-jNLyS',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(455,'CLEF PLAT 14\"/17\"','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/OUJgKp39SkeMzcwbkEOp3B4lIU4Yhu6FCSACPRmJ.jpeg\"]','uploads/products/thumbnail/KETXVeIuxnOjud9abrFVX710LvS1aWin124qKLY0.jpeg','uploads/products/thumbnail/KETXVeIuxnOjud9abrFVX710LvS1aWin124qKLY0.jpeg',NULL,'youtube',NULL,'',NULL,22.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1825-4',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-PLAT-1417-YbUM7',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(456,'CLEF PLAT 17\"/19\"','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/nmY5jjKsIv71wHGLVNownCTn37JVg0GvzDyZJdYA.jpeg\"]','uploads/products/thumbnail/L7L5A3OSNhwK0eykxHmToiyZvFl2WD8wWCFzVx1i.jpeg','uploads/products/thumbnail/L7L5A3OSNhwK0eykxHmToiyZvFl2WD8wWCFzVx1i.jpeg',NULL,'youtube',NULL,'',NULL,25.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1825-5',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-PLAT-1719-kuHXq',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(457,'Cisaille num 24','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/f1ItDt5i3Bih3nzbJoTqlIupLlpzESKuSO0MRdYJ.jpeg\"]','uploads/products/thumbnail/xXzqG2nL5dvADe6qycqfPTTogRX8HDStr4aT2gI3.jpeg','uploads/products/thumbnail/xXzqG2nL5dvADe6qycqfPTTogRX8HDStr4aT2gI3.jpeg',NULL,'youtube',NULL,'',NULL,225.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1829-2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Cisaille-num-24-i1zNc',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(458,'3 40mm L','admin',0,3,7,NULL,NULL,'[]','uploads/products/thumbnail/uCrZzpRCivSDwPFcLqPMIlS1cJbIVKdYkpRI6jXl.jpeg','uploads/products/thumbnail/uCrZzpRCivSDwPFcLqPMIlS1cJbIVKdYkpRI6jXl.jpeg',NULL,'youtube',NULL,'',NULL,27.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','MC 1831-L40',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-40mm-L-8e44c',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(460,'3 60mm L','admin',0,3,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1521-2.jpg','uploads/products/featured/MC 1521-2.jpg',NULL,NULL,NULL,NULL,NULL,42.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1831-L60',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-60mm-L-GzFGU',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(461,'3 40mm E2','admin',0,3,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1521-1.jpg','uploads/products/featured/MC 1521-1.jpg',NULL,NULL,NULL,NULL,NULL,22.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'MC 1831 S40',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-40mm-E2-NPmg0',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(466,'3 carr? chrom? 90mm','admin',0,3,7,NULL,NULL,'[]','uploads/products/thumbnail/jDEAemjSWMAt6Ot0QXDspsAY0PmFXRkU2QW6iwq1.jpeg','uploads/products/thumbnail/jDEAemjSWMAt6Ot0QXDspsAY0PmFXRkU2QW6iwq1.jpeg',NULL,'youtube',NULL,'',NULL,87.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC1832 90mm',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'3-carr-chrom-90mm-LjN8e',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(467,'ENSEMBLE DE CLEF A PIPE POWER','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/sESsIMuimHtAUSQBHA6tVtm1nfXqiq5JNg9IsAev.jpeg\"]','uploads/products/thumbnail/c6KERPEPc48MJej9iDQFiXcBBBKdu4xLuYNgQkiH.jpeg','uploads/products/thumbnail/c6KERPEPc48MJej9iDQFiXcBBBKdu4xLuYNgQkiH.jpeg',NULL,'youtube',NULL,'',NULL,212.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1844',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-CLEF-A-PIPE-POWER-vZ2Qa',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(468,'PORTE MENTEAU MONO 2','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/puuW4VVZesOQfe1rl5u1O5gLGFSBT84YdRQ2Zt21.jpeg\"]','uploads/products/thumbnail/4y0bB07lNWnXH5R0T3HHVfczYliaxnEkBwiksAHK.jpeg','uploads/products/thumbnail/4y0bB07lNWnXH5R0T3HHVfczYliaxnEkBwiksAHK.jpeg',NULL,'youtube',NULL,'',NULL,12.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1849',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-MONO-2-p4ETe',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(469,'PATIN METAL 22MM','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/qMXT4pY8woz08LQabyDpfH5FwGrTCDFU11M6tZv3.jpeg\"]','uploads/products/thumbnail/7eaCBS3XnWrnXKjtCwtKWFwTQAn128icUDq8LRMz.jpeg','uploads/products/thumbnail/7eaCBS3XnWrnXKjtCwtKWFwTQAn128icUDq8LRMz.jpeg',NULL,'youtube',NULL,'',NULL,3.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1850-2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PATIN-METAL-22MM-fnEmZ',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(470,'PATIN METAL 27MM','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/7UtfFk0ypuL85lfZK4w89iH50aeP3YsVF2j3yIwn.jpeg\"]','uploads/products/thumbnail/9p4908OGA1OBR1b045nsKE0T7ZpSeoLSpmYsyZrd.jpeg','uploads/products/thumbnail/9p4908OGA1OBR1b045nsKE0T7ZpSeoLSpmYsyZrd.jpeg',NULL,'youtube',NULL,'',NULL,4.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1850-3',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PATIN-METAL-27MM-fAoMk',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(471,'SUPPORT DE TRINGLE OVALE FACE A FACE','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/pVmGxQdkHiGnIF9F5mjvPOE4ghknTk18Z5wlE6kN.jpeg\"]','uploads/products/thumbnail/HvHONoP5bp2zQUcgC9oKReKe824WbjGFhHwoXaoJ.jpeg','uploads/products/thumbnail/HvHONoP5bp2zQUcgC9oKReKe824WbjGFhHwoXaoJ.jpeg',NULL,'youtube',NULL,'',NULL,3.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1851',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SUPPORT-DE-TRINGLE-OVALE-FACE-A-FACE-miiQ1',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(472,'TARJETTE 29-33','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/A7jncErj7Jj2hsgQwHIcwSjnRPxDPc6EjsBNtNf2.jpeg\"]','uploads/products/thumbnail/uco6SN6zj0YD9YzZGf7knT3MKh8hQYQRfMG9wqyU.jpeg','uploads/products/thumbnail/uco6SN6zj0YD9YzZGf7knT3MKh8hQYQRfMG9wqyU.jpeg',NULL,'youtube',NULL,'',NULL,27.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1853-L',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TARJETTE-29-33-FcVOY',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(474,'Poign?e boule','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/Cvi8k6b2n0xqHAIWM1Mf5zgKwuzGTGzVGAOJiNhq.jpeg\"]','uploads/products/thumbnail/sjOL7zuzVjeCcyQ7furw5sYlgNC7z6bIG1F1TaE3.jpeg','uploads/products/thumbnail/sjOL7zuzVjeCcyQ7furw5sYlgNC7z6bIG1F1TaE3.jpeg',NULL,'youtube',NULL,'',NULL,40.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1856',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Poigne-boule-mQbFE',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(475,'ENSEMBLE DE CLEFS SYPO TAILLE L','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/RCMGMyMPwMayiPmPGl8HlgXUugim3JTnq1B8X2XY.jpeg\"]','uploads/products/thumbnail/UkpI2szAHPEJPLKS3ZCDDEUhQdpj9apyuM2N1zyt.jpeg','uploads/products/thumbnail/UkpI2szAHPEJPLKS3ZCDDEUhQdpj9apyuM2N1zyt.jpeg',NULL,'youtube',NULL,'',NULL,45.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1857 L',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-CLEFS-SYPO-TAILLE-L-DC890',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(476,'ENSEMBLE DE CLEFS SYPO TAILLE M','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/TjCVDQjAS5PMfHRYYRQVkUHNWNfTeYfTBZCdymfK.jpeg\"]','uploads/products/thumbnail/qLyVWSjzCLtKOXouVbdsdJya4fOmyP2QLfnbbkoT.jpeg','uploads/products/thumbnail/qLyVWSjzCLtKOXouVbdsdJya4fOmyP2QLfnbbkoT.jpeg',NULL,'youtube',NULL,'',NULL,37.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1857 M',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-CLEFS-SYPO-TAILLE-M-NP4lB',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(477,'ENSEMBLE DE CLEFS SYPO TAILLE S','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/pNQFZRWBJHy6rfvdYdbFpSdfKFmaroSF5aeMGlmU.jpeg\"]','uploads/products/thumbnail/2OMIz8AnG61QimdjJAP3JypF3dTfsrPLienGEp7E.jpeg','uploads/products/thumbnail/2OMIz8AnG61QimdjJAP3JypF3dTfsrPLienGEp7E.jpeg',NULL,'youtube',NULL,'',NULL,30.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1857 S',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-CLEFS-SYPO-TAILLE-S-RzREh',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(478,'ENSEMBLE DE CLEFS GRENAGE TAILLE L','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/jikATLbIgYlmtcdVOGE9aeKXXITkgVyfyytFApyB.jpeg\"]','uploads/products/thumbnail/tGFKvXGKiaG1Pc1Cpj1yKxJsQ52EHGqKQJzQkRq0.jpeg','uploads/products/thumbnail/tGFKvXGKiaG1Pc1Cpj1yKxJsQ52EHGqKQJzQkRq0.jpeg',NULL,'youtube',NULL,'',NULL,47.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1858 L',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-CLEFS-GRENAGE-TAILLE-L-Fmb8C',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(479,'ENSEMBLE DE CLEFS GRENAGE TAILLE M','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/bXIPAdP9TeZ0YC3DlUFdrnOeFELrH3VnvZPibNtj.jpeg\"]','uploads/products/thumbnail/KkLLn5YjyXjYdDfDj7PGVPQt7gn584LGDKGcRvD3.jpeg','uploads/products/thumbnail/KkLLn5YjyXjYdDfDj7PGVPQt7gn584LGDKGcRvD3.jpeg',NULL,'youtube',NULL,'',NULL,40.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1858 M',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-CLEFS-GRENAGE-TAILLE-M-DWZad',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(480,'ENSEMBLE DE CLEFS GRENAGE TAILLE S','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/q2d0eWiIQ1oHHuFAR8sowqDUO8KN9yFGLTERRGuQ.jpeg\"]','uploads/products/thumbnail/XKVcnxUkWiZG9ILHkbqd9VuOUOd6KZ5Fo05I86zW.jpeg','uploads/products/thumbnail/XKVcnxUkWiZG9ILHkbqd9VuOUOd6KZ5Fo05I86zW.jpeg',NULL,'youtube',NULL,'',NULL,32.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MC 1858 S',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-DE-CLEFS-GRENAGE-TAILLE-S-Y4RQs',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(482,'DOUCHETTE+FLEXIBLE BIDALUX BCM-04','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/bTq1t35Bj0tkrWZS3YrSRLtCvPPFlk9DdNuJzI9F.jpeg\"]','uploads/products/thumbnail/FyVpLIYouKR8zR7AdihBDXbeNf7uItBAaRi9WUkR.jpeg','uploads/products/thumbnail/FyVpLIYouKR8zR7AdihBDXbeNf7uItBAaRi9WUkR.jpeg',NULL,'youtube',NULL,'',NULL,225.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MSTBCM-04',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'DOUCHETTEFLEXIBLE-BIDALUX-BCM-04-NvhHZ',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(483,'COMBINE DE DOUCHE BIDALUX BCS-04','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/qHGtvCG0Zi4l2lal9OwCdnFP4F90H17R6twQ2I4p.jpeg\"]','uploads/products/thumbnail/alJn3GoJlhILmgQTreHdt6VawcwKVUV1WZzHtbwj.jpeg','uploads/products/thumbnail/alJn3GoJlhILmgQTreHdt6VawcwKVUV1WZzHtbwj.jpeg',NULL,'youtube',NULL,'',NULL,337.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MSTBCS-04',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COMBINE-DE-DOUCHE-BIDALUX-BCS-04-8kfkk',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(484,'DOUCHETTE+FLEXIBLE BIDALUX BWM','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/GK6JzNRrvpQrAI1UaFEkGCdT7jD2iD8feR3F7WM3.jpeg\"]','uploads/products/thumbnail/nbRhU4S1ysogaNnR4gSmIOgVmMmkhI2XvQ242iXh.jpeg','uploads/products/thumbnail/nbRhU4S1ysogaNnR4gSmIOgVmMmkhI2XvQ242iXh.jpeg',NULL,'youtube',NULL,'',NULL,225.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','MSTBWM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'DOUCHETTEFLEXIBLE-BIDALUX-BWM-jEYvo',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(485,'Poign?e lisse evergold cl?','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1521-4.jpg','uploads/products/featured/MC 1521-4.jpg',NULL,NULL,NULL,NULL,NULL,112.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'P 2086 CL',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Poigne-lisse-evergold-cl-KdbE4',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(486,'Poign?e lisse evergold canon','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/Z6Vimksb4cFdhLOOsgpOdpVC1KnpOzEgfOGq7Bxi.jpeg\"]','uploads/products/thumbnail/P4pxCqFrfITXdJWhZ5Li5MGIBdIlqH7LHoyvqPSU.jpeg','uploads/products/thumbnail/P4pxCqFrfITXdJWhZ5Li5MGIBdIlqH7LHoyvqPSU.jpeg',NULL,'youtube',NULL,'',NULL,112.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','P 2086 CY',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Poigne-lisse-evergold-canon-XmQVB',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(487,'PALIERES/2 29-202 CHROME','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/xjjHmBSQ9h2bxVzuVIIdk7ToVkj6VubhG7H5hH1l.jpeg\"]','uploads/products/thumbnail/FccB5qgc27AthQYSf4A731XmbjSgpK04rvQLRXxb.jpeg','uploads/products/thumbnail/FccB5qgc27AthQYSf4A731XmbjSgpK04rvQLRXxb.jpeg',NULL,'youtube',NULL,'',NULL,120.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','PA 29-202',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PALIERES2-29-202-CHROME-ti61L',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(490,'MONCHON MF 1/2 GOLD','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/rHNguC1JMeb6Vo671bhvrfSoWDJlBMgNS7YHsbJG.jpeg\"]','uploads/products/thumbnail/PNZqOMe1WbASocfvz6mcWVADTzFEb5cBmc6rVf1Y.jpeg','uploads/products/thumbnail/PNZqOMe1WbASocfvz6mcWVADTzFEb5cBmc6rVf1Y.jpeg',NULL,'youtube',NULL,'',NULL,4.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','PLOM711012',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MONCHON-MF-12-GOLD-zmOF2',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(491,'MECANISME POUSSOIR SANPLAT','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/Nabx9TCNZ4T4IA2P7OQUIyKkn96VQTdorWNwRAK7.jpeg\"]','uploads/products/thumbnail/ZT1JC9Py6YMWOW4Vvy3K7TAF1wz3M8QuS4II6Q4H.jpeg','uploads/products/thumbnail/ZT1JC9Py6YMWOW4Vvy3K7TAF1wz3M8QuS4II6Q4H.jpeg',NULL,'youtube',NULL,'',NULL,153.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','PLOM724106',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MECANISME-POUSSOIR-SANPLAT-6G7KV',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(492,'ABATTANT WC SANPLAST 2','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/pmtADa3PkhGd1wRGi3Qi3DpxddlUxKe0IQemVyRU.jpeg\"]','uploads/products/thumbnail/7gRPdWnY1GHPf0H9Kl9ttrlOByKjqEy7Rqig1A7K.jpeg','uploads/products/thumbnail/7gRPdWnY1GHPf0H9Kl9ttrlOByKjqEy7Rqig1A7K.jpeg',NULL,'youtube',NULL,'',NULL,76.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','PLOM724150',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ABATTANT-WC-SANPLAST-2-xfMAR',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(493,'COUDE WC ADAPTABLE SANPLAST','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/H2fsJdAVyHX47XQr9z1ikD0N4Mx7VtxvSIRbOpXR.jpeg\"]','uploads/products/thumbnail/9Y8R0mznzsES2KHd7hJCmascLRQ6wY44Wsitlm50.jpeg','uploads/products/thumbnail/9Y8R0mznzsES2KHd7hJCmascLRQ6wY44Wsitlm50.jpeg',NULL,'youtube',NULL,'',NULL,100.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','PLOM724503',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COUDE-WC-ADAPTABLE-SANPLAST-u1LUX',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(494,'KIT WC SANPLAST + FLEXIBLE GRIS','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/ZKs5crZYucm52qElFpghKGcfbTFfHMYsr8gMok0X.jpeg\"]','uploads/products/thumbnail/drN3SftIu4OwY7PXvIGg9uhhsv2ul29L4AN4hLO6.jpeg','uploads/products/thumbnail/drN3SftIu4OwY7PXvIGg9uhhsv2ul29L4AN4hLO6.jpeg',NULL,'youtube',NULL,'',NULL,94.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','PLOM728020',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'KIT-WC-SANPLAST--FLEXIBLE-GRIS-FSxS3',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(495,'BANDE RECEVEUR JUNY POUSSOIR','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/mV15h7A1RALleKJ2oaBRpuTWNVyAeyilIRswCewc.jpeg\"]','uploads/products/thumbnail/xrWw0IhpDAohOKYLJgyN06aYglHNoYy90tXsDoOD.jpeg','uploads/products/thumbnail/xrWw0IhpDAohOKYLJgyN06aYglHNoYy90tXsDoOD.jpeg',NULL,'youtube',NULL,'',NULL,68.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','PLOMBN',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BANDE-RECEVEUR-JUNY-POUSSOIR-PwpbB',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(496,'EVIER INOX 80*50 TOP EVIER','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/EoWpoQM0iepHfC9oPsYAkIpCzT65FjO2jR5fmOxG.jpeg\"]','uploads/products/thumbnail/SWAq36SLgEqo3anoti54JSXwOyAOKTdq0U2O6EQk.jpeg','uploads/products/thumbnail/SWAq36SLgEqo3anoti54JSXwOyAOKTdq0U2O6EQk.jpeg',NULL,'youtube',NULL,'',NULL,325.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','PLOMEVPFL',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EVIER-INOX-8050-TOP-EVIER-FNRDE',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(497,'MONCHON F+F1/2 IRON','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/HcJp7eYbIXRWJRYKZ1jQWWXj52wyo9EGGYv7RMMz.jpeg','uploads/products/thumbnail/HcJp7eYbIXRWJRYKZ1jQWWXj52wyo9EGGYv7RMMz.jpeg',NULL,'youtube',NULL,'',NULL,4.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','PLOMMMF1/2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MONCHON-FF12-IRON-TQct2',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(498,'PAIRE RACCORD IR NS 123713','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/S2PIH8Y4GB8cNUFCW22L1FPYkR2oKeKHtzfoNB5Q.jpeg\"]','uploads/products/thumbnail/0Ahx6AsGAgOVIhZFqzfIHipdqad9k8FI3UdBTPLj.jpeg','uploads/products/thumbnail/0Ahx6AsGAgOVIhZFqzfIHipdqad9k8FI3UdBTPLj.jpeg',NULL,'youtube',NULL,'',NULL,30.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','PLOMPR',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PAIRE-RACCORD-IR-NS-123713-7vn01',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(499,'SIPHON 10*10 FANSKI CP001 NS103752','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/mDM2HcbOG4Fos769wznjGpfz9M4dWVgF3XWEHnE1.jpeg\"]','uploads/products/thumbnail/GGDvAcJwFw0SypwBDZGgncmvf4v6zyypaaecGc2Y.jpeg','uploads/products/thumbnail/GGDvAcJwFw0SypwBDZGgncmvf4v6zyypaaecGc2Y.jpeg',NULL,'youtube',NULL,'',NULL,86.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','PLOMS1010F',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SIPHON-1010-FANSKI-CP001-NS103752-QooRp',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(500,'TEFLON 20M B.T','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/02GedmVsi2gXilDX6KbKsjhmapvIs6f2nQTvlYlo.jpeg\"]','uploads/products/thumbnail/rmFQnAgY4XPglpEgMwUPvoGYZyARlUhvs8lRW4CJ.jpeg','uploads/products/thumbnail/rmFQnAgY4XPglpEgMwUPvoGYZyARlUhvs8lRW4CJ.jpeg',NULL,'youtube',NULL,'',NULL,17.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','PLOMT20BT',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TEFLON-20M-BT-Yz5Gq',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(502,'PORTE MENTEAU ROSE METAL','admin',0,1,1,NULL,NULL,'[\"uploads\\/products\\/photos\\/3rZiM9t31MzghPT5gCmC8tSbBqUH731Xu5LXQQLl.jpeg\"]','uploads/products/thumbnail/65OjuHuJA28AhmF8YPap59XFaFmG05rAipok92kB.jpeg','uploads/products/thumbnail/65OjuHuJA28AhmF8YPap59XFaFmG05rAipok92kB.jpeg',NULL,'youtube',NULL,'',NULL,11.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','PMR MTL',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-ROSE-METAL-AGnp5',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(505,'PORTE SERVIETTE 1','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/Y0Wt83O4RirFXX1Gb0iX2nufOxfYc11wFsUCynnV.jpeg\"]','uploads/products/thumbnail/m3pmXPw3Rr8tZy66wl576H7EyUoSlJtuPdFQwmeK.jpeg','uploads/products/thumbnail/m3pmXPw3Rr8tZy66wl576H7EyUoSlJtuPdFQwmeK.jpeg',NULL,'youtube',NULL,'',NULL,85.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','POR SER 1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-SERVIETTE-1-4Qqg1',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(506,'PORTE MENTEAU PLASTIQUE CARRE 4*','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/0zXbfllWSrhj2SHjzp0yQD4giHZ5lM2uivyVXOfy.jpeg','uploads/products/thumbnail/0zXbfllWSrhj2SHjzp0yQD4giHZ5lM2uivyVXOfy.jpeg',NULL,'youtube',NULL,'',NULL,20.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','PORT/MT/PL/CAR',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-PLASTIQUE-CARRE-4-ORG7D',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(507,'PORTE MENTEAU PLASTIQUE 4* ROND','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/VeSBw6skHuzlnr7QlEixTXucn20DlIbgAgvzNsNm.jpeg','uploads/products/thumbnail/VeSBw6skHuzlnr7QlEixTXucn20DlIbgAgvzNsNm.jpeg',NULL,'youtube',NULL,'',NULL,22.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'11','PORT/MT/PL/RND',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-PLASTIQUE-4-ROND-CUKhH',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(509,'PROTEGE PORTE EN CAOUTCHOUC','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/1pDinHjF7LfVdDpl0jAXsDUQ8reamyZle5QWw2ud.jpeg','uploads/products/thumbnail/1pDinHjF7LfVdDpl0jAXsDUQ8reamyZle5QWw2ud.jpeg',NULL,'youtube',NULL,'',NULL,35.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','PR P CA',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PROTEGE-PORTE-EN-CAOUTCHOUC-X97xJ',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(510,'MECANISME ECONO-POOL 3/6','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/lCac0L3Fvmstf2dpkruIWa1qUADlteHcoYIas6Bu.jpeg\"]','uploads/products/thumbnail/RRvmvMEgAeEqUVC7ButHG0z7JPjZPqUlRtjyZ8lN.jpeg','uploads/products/thumbnail/RRvmvMEgAeEqUVC7ButHG0z7JPjZPqUlRtjyZ8lN.jpeg',NULL,'youtube',NULL,'',NULL,225.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','QOPMT2P',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MECANISME-ECONO-POOL-36-DSv72',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(511,'TEFLON FILLER 50M','admin',0,4,10,NULL,NULL,'[\"uploads\\/products\\/photos\\/TuYmcthURBDFG6kXA5HXv7aQ3bY4fFyuBAC2P47a.jpeg\"]','uploads/products/thumbnail/HSvqVSbTwNjtWzLSvbSHQJH1D2JiJRAwGZTO7T3i.jpeg','uploads/products/thumbnail/HSvqVSbTwNjtWzLSvbSHQJH1D2JiJRAwGZTO7T3i.jpeg',NULL,'youtube',NULL,'',NULL,18.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','QTF',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TEFLON-FILLER-50M-NQutD',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(512,'RECHARGES POUR CUTTEUR','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/X0qwgslEeQd4qv3crrE93zas1jLrvgFdyheQT2tV.jpeg','uploads/products/thumbnail/X0qwgslEeQd4qv3crrE93zas1jLrvgFdyheQT2tV.jpeg',NULL,'youtube',NULL,'',NULL,8.12,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','RCG CUTT',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'RECHARGES-POUR-CUTTEUR-A17tW',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(513,'R?gulateur maron','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1521-5.jpg','uploads/products/featured/MC 1521-5.jpg',NULL,NULL,NULL,NULL,NULL,4.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'REG MAR',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Rgulateur-maron-3f4xo',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:50:23'),
	(514,'SIPHON 10*10 ITALY','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/1q2cd36ry0ElqYZWai1PZzgyLIDPQoBp0CMbNVzN.jpeg','uploads/products/thumbnail/1q2cd36ry0ElqYZWai1PZzgyLIDPQoBp0CMbNVzN.jpeg',NULL,'youtube',NULL,'',NULL,87.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'231','RES10*10I',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SIPHON-1010-ITALY-Gywfs',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(515,'SIPHON 15*15 ITALY','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/Uiqu5lYK4wAgyLZFQvEWGobtTkH9EYPhlqSdj2PF.jpeg','uploads/products/thumbnail/Uiqu5lYK4wAgyLZFQvEWGobtTkH9EYPhlqSdj2PF.jpeg',NULL,'youtube',NULL,'',NULL,127.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2312','RES15*15I',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SIPHON-1515-ITALY-HNrfG',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(516,'ROBINET LAVABO LONG','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/SW1TZ1bxSqTFTCSmyjuIfr3hfists3xOA2aY0Dvr.jpeg','uploads/products/thumbnail/SW1TZ1bxSqTFTCSmyjuIfr3hfists3xOA2aY0Dvr.jpeg',NULL,'youtube',NULL,'',NULL,75.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'213','ROB LAV L',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROBINET-LAVABO-LONG-dXXBd',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(517,'Roulette 50mm a Plaque','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/s0vLfrJOa0I9eEhA10ylIJt3Xp3iiGETbumhAmW5.jpeg','uploads/products/thumbnail/s0vLfrJOa0I9eEhA10ylIJt3Xp3iiGETbumhAmW5.jpeg',NULL,'youtube',NULL,'',NULL,10.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','ROUL 50 PL',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Roulette-50mm-a-Plaque-pg6hY',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(518,'Roulette 50mm a tige','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/Lvgee5wG6rTS4T4YkoMGC8nOteYXSKnPX450UEYG.jpeg','uploads/products/thumbnail/Lvgee5wG6rTS4T4YkoMGC8nOteYXSKnPX450UEYG.jpeg',NULL,'youtube',NULL,'',NULL,10.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'23123','ROUL 50 Tg',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Roulette-50mm-a-tige-0QfaY',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(519,'Roulette orange 40mm','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/0XE9ZfLjmKJnHcznLUN08tPU2JUH3qo6Z5Vk8ABu.jpeg','uploads/products/thumbnail/0XE9ZfLjmKJnHcznLUN08tPU2JUH3qo6Z5Vk8ABu.jpeg',NULL,'youtube',NULL,'',NULL,16.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'231','ROUL OR 40',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Roulette-orange-40mm-dsj9i',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(520,'Roulette orange 40mm Avec frein','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/HvlHx4x0dAaK0x61ByjR77cj6CwG128Xgm1yim87.jpeg','uploads/products/thumbnail/HvlHx4x0dAaK0x61ByjR77cj6CwG128Xgm1yim87.jpeg',NULL,'youtube',NULL,'',NULL,21.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','ROUL OR 40 W/STOP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Roulette-orange-40mm-Avec-frein-r040k',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(521,'Roulettes orange 50mm avec frein','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/o6xWFFA665f4sxu6T8bcfo2OEm4xyUQG1okhwQrf.jpeg','uploads/products/thumbnail/o6xWFFA665f4sxu6T8bcfo2OEm4xyUQG1okhwQrf.jpeg',NULL,'youtube',NULL,'',NULL,25.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2313','ROUL OR 50 W/STOP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Roulettes-orange-50mm-avec-frein-2UJLL',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(523,'ROULETTE ORANGE 75MM AVEC FREIN','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/rfNvQoyIU3gOsXIaM8Sj7sBLapu51JlsGbWHJOpL.jpeg','uploads/products/thumbnail/rfNvQoyIU3gOsXIaM8Sj7sBLapu51JlsGbWHJOpL.jpeg',NULL,'youtube',NULL,'',NULL,56.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'231','ROUL OR 75MM W/STOP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROULETTE-ORANGE-75MM-AVEC-FREIN-9wzod',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(524,'Rouleau Peinture normal quality','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/44pzSEyBvahfmqao20M1niW7TYKzW06XLEkqhGvC.jpeg','uploads/products/thumbnail/44pzSEyBvahfmqao20M1niW7TYKzW06XLEkqhGvC.jpeg',NULL,'youtube',NULL,'',NULL,30.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'123123','RPNQ',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Rouleau-Peinture-normal-quality-UZH1P',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(525,'porte menteau 6 pieces','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/38w8ZzHQPelViODRFnKN8sDayjUvApFxl5fzHi4R.jpeg','uploads/products/thumbnail/38w8ZzHQPelViODRFnKN8sDayjUvApFxl5fzHi4R.jpeg',NULL,'youtube',NULL,'',NULL,18.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2312','ry002',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'porte-menteau-6-pieces-nttek',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(526,'PORTE MENTEAU SANS VIS AVEC BRAS','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/O7k1pkjOZuvEVWlsPwdaj1cRIiVuZjGJctcuzoPd.jpeg','uploads/products/thumbnail/O7k1pkjOZuvEVWlsPwdaj1cRIiVuZjGJctcuzoPd.jpeg',NULL,'youtube',NULL,'',NULL,23.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'211','ry003',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PORTE-MENTEAU-SANS-VIS-AVEC-BRAS-JOHaO',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(527,'EVIER BAREM 90*50* 304','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/YmcHfiuEBc1Er2RwewB41Llk1N1VqYGDuJVFkVHP.jpeg','uploads/products/thumbnail/YmcHfiuEBc1Er2RwewB41Llk1N1VqYGDuJVFkVHP.jpeg',NULL,'youtube',NULL,'',NULL,425.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2321','SAFE304',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'EVIER-BAREM-9050-304-7lwHA',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(528,'HUBLOT 1101/C OVAL','admin',0,10,16,NULL,NULL,'[]','uploads/products/thumbnail/qks5xO2JBphM5P8xma8uiWbswH3EO5jzjRb3IBoo.jpeg','uploads/products/thumbnail/qks5xO2JBphM5P8xma8uiWbswH3EO5jzjRb3IBoo.jpeg',NULL,'youtube',NULL,'',NULL,60.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'23123','SAFH1101/C',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'HUBLOT-1101C-OVAL-sXGcV',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(529,'HUBLOT 1207/M ROND','admin',0,10,16,NULL,NULL,'[]','uploads/products/thumbnail/9mmlJ42O7j5NNBfidvMzUgbuX51oZRsPmGCGcRWl.jpeg','uploads/products/thumbnail/9mmlJ42O7j5NNBfidvMzUgbuX51oZRsPmGCGcRWl.jpeg',NULL,'youtube',NULL,'',NULL,80.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21313','SAFH1207/M',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'HUBLOT-1207M-ROND-32TJs',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(530,'HUBLOT 1208/C CARRE','admin',0,10,16,NULL,NULL,'[]','uploads/products/thumbnail/yatJkd22Q2fj3bgSDhQKcD8kSzAa6cB8dEPkQouI.jpeg','uploads/products/thumbnail/yatJkd22Q2fj3bgSDhQKcD8kSzAa6cB8dEPkQouI.jpeg',NULL,'youtube',NULL,'',NULL,103.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'211','SAFH 1208/C',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'HUBLOT-1208C-CARRE-2ZBOj',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(531,'HUBLOT 1208/M CARRE','admin',0,10,16,NULL,NULL,'[]','uploads/products/thumbnail/Enhqo6Mp9EPfBW4sZeSVZVpi9f8RT5OWED2veMIM.jpeg','uploads/products/thumbnail/Enhqo6Mp9EPfBW4sZeSVZVpi9f8RT5OWED2veMIM.jpeg',NULL,'youtube',NULL,'',NULL,103.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'211','SAFH1208/M',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'HUBLOT-1208M-CARRE-NsaIt',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(532,'HUBLOT 1209/C RETANGULAIRE','admin',0,10,16,NULL,NULL,'[]','uploads/products/thumbnail/DADlfLEFGZFVeKLdxkqThkgi7Pv4Y81iMxbKMFRo.jpeg','uploads/products/thumbnail/DADlfLEFGZFVeKLdxkqThkgi7Pv4Y81iMxbKMFRo.jpeg',NULL,'youtube',NULL,'',NULL,118.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'23123','SAFH1209/C',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'HUBLOT-1209C-RETANGULAIRE-TwBYx',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(533,'HUBLOT 1209/M RETANGULAURE','admin',0,10,16,NULL,NULL,'[]','uploads/products/thumbnail/VlSoJ1PYxn5q2RBQTXuoVjdmDZESyFBqlczeg9eN.jpeg','uploads/products/thumbnail/VlSoJ1PYxn5q2RBQTXuoVjdmDZESyFBqlczeg9eN.jpeg',NULL,'youtube',NULL,'',NULL,118.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','SAFH1209/M',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'HUBLOT-1209M-RETANGULAURE-VFolU',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(534,'CANIVEAU 50CM 1MM PLASTIQUE','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/ZYt5mGukkJrVleTQZMTVRE6VMnD7zeRqxxQnL7aB.jpeg','uploads/products/thumbnail/ZYt5mGukkJrVleTQZMTVRE6VMnD7zeRqxxQnL7aB.jpeg',NULL,'youtube',NULL,'',NULL,250.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2321','SAYC50D1MM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CANIVEAU-50CM-1MM-PLASTIQUE-P6omk',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(535,'CANIVEAU STAINLESS STEEL 50CM 1MM','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/Kaw3bwVy98hVngnVhOPrVsh3SaUKEeYaPur1pmac.jpeg','uploads/products/thumbnail/Kaw3bwVy98hVngnVhOPrVsh3SaUKEeYaPur1pmac.jpeg',NULL,'youtube',NULL,'',NULL,812.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12121','SAYC50S',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CANIVEAU-STAINLESS-STEEL-50CM-1MM-JBrmg',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(536,'CANIVEAU STAINLESS STEEL 60S 1MM','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/VoKBBifnXSQCt4dC10xUrPieYHGYAgTSySvROLji.jpeg','uploads/products/thumbnail/VoKBBifnXSQCt4dC10xUrPieYHGYAgTSySvROLji.jpeg',NULL,'youtube',NULL,'',NULL,892.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'212','SAYC60S',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CANIVEAU-STAINLESS-STEEL-60S-1MM-prlwT',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(537,'CANIVEAU 40CM 1MM COUDE PLASTIQUE','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/rJX9QlsONDnFZU0rUoUlX1jfkxjm9qgcrLikBXOK.jpeg','uploads/products/thumbnail/rJX9QlsONDnFZU0rUoUlX1jfkxjm9qgcrLikBXOK.jpeg',NULL,'youtube',NULL,'',NULL,250.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2w321','SAYCC401MM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CANIVEAU-40CM-1MM-COUDE-PLASTIQUE-Ww12G',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(538,'SIPHON 10*10 COUDE 32','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/KC4Rn7tClvXWYdkcgS0pBLCBSfrD6577ZiBv7py3.jpeg','uploads/products/thumbnail/KC4Rn7tClvXWYdkcgS0pBLCBSfrD6577ZiBv7py3.jpeg',NULL,'youtube',NULL,'',NULL,52.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','SAYS10*10C32',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SIPHON-1010-COUDE-32-bWlBf',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(539,'siphon10*10 coude 50','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/Xy4HT1kCtynDNvjTZCREpZ76hBzmwzT6SLTThxp0.jpeg','uploads/products/thumbnail/Xy4HT1kCtynDNvjTZCREpZ76hBzmwzT6SLTThxp0.jpeg',NULL,'youtube',NULL,'',NULL,52.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21212','SAYS10*10C50',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'siphon1010-coude-50-BC592',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(540,'CANIVEAU STAINLESS STEEL 20CM 1MM','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/u2MuGvbc4kWwzl7M1HlKKh736YL9NjasOHgLzD74.jpeg','uploads/products/thumbnail/u2MuGvbc4kWwzl7M1HlKKh736YL9NjasOHgLzD74.jpeg',NULL,'youtube',NULL,'',NULL,512.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','SAYSC20S',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CANIVEAU-STAINLESS-STEEL-20CM-1MM-ejph4',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(541,'Tournevis Double T?te','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/CkkNgZ2Wk8HMrsWmz9deHc0YZ2i6PhZ3yVsnhqeF.jpeg','uploads/products/thumbnail/CkkNgZ2Wk8HMrsWmz9deHc0YZ2i6PhZ3yVsnhqeF.jpeg',NULL,'youtube',NULL,'',NULL,11.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','SCD 02',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Tournevis-Double-Tte-FsKLy',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:32','2020-11-17 15:46:57'),
	(542,'Tournevis Double T?te Long','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/5umxCKJb3AFkIF4bNb0pKddsGJignQbQlanm673q.jpeg','uploads/products/thumbnail/5umxCKJb3AFkIF4bNb0pKddsGJignQbQlanm673q.jpeg',NULL,'youtube',NULL,'',NULL,15.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1','SCD 03',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Tournevis-Double-Tte-Long-YcCZU',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(543,'Scie a main 40cm/45cm/50cm','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/AjCquSpqyEUplYBxp33M3EoN0pAbbFEDBdffFdPu.jpeg','uploads/products/thumbnail/AjCquSpqyEUplYBxp33M3EoN0pAbbFEDBdffFdPu.jpeg',NULL,'youtube',NULL,'',NULL,36.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','SC MC 12-1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Scie-a-main-40cm45cm50cm-2VMAu',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(544,'FLEXIBLE 1.5M BLISTER IFOULKI','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/0xGryPZr7ESbYLm84iXdFLdOvKkGu5eEjZw95fOl.jpeg','uploads/products/thumbnail/0xGryPZr7ESbYLm84iXdFLdOvKkGu5eEjZw95fOl.jpeg',NULL,'youtube',NULL,'',NULL,76.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','SNRF2SL',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'FLEXIBLE-15M-BLISTER-IFOULKI-iXoGu',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(545,'ENSEMBLE 123052- 5PIECE DI BANYO','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/v0A4mS3s0VY3RtoK9FcVTr59USqTKETmsT25mrMw.jpeg','uploads/products/thumbnail/v0A4mS3s0VY3RtoK9FcVTr59USqTKETmsT25mrMw.jpeg',NULL,'youtube',NULL,'',NULL,287.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','STME27P',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-123052--5PIECE-DI-BANYO-ALTlp',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(546,'SUPPORT DVD','admin',0,7,13,NULL,NULL,'[]','uploads/products/thumbnail/OkaV6Kq54BBcCPzNoJWPHfeBPpK6nDaICKEZdpOM.jpeg','uploads/products/thumbnail/OkaV6Kq54BBcCPzNoJWPHfeBPpK6nDaICKEZdpOM.jpeg',NULL,'youtube',NULL,'',NULL,62.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','SUP DVD',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SUPPORT-DVD-CLNh5',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(547,'SUPPORT DE ROULEAU DE PEINTURE','admin',0,5,11,NULL,NULL,'[]','uploads/products/thumbnail/nyqOniItr0uZSBVHrY0hNsLf0BWamVJgoTIEW6em.jpeg','uploads/products/thumbnail/nyqOniItr0uZSBVHrY0hNsLf0BWamVJgoTIEW6em.jpeg',NULL,'youtube',NULL,'',NULL,9.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','SUP ROUL 1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SUPPORT-DE-ROULEAU-DE-PEINTURE-b3mKU',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(549,'SUPPOR TV MOBILE 35KG','admin',0,7,13,NULL,NULL,'[]','uploads/products/thumbnail/n659MHgSsAz3n8d5805bXmCjGl2nwp395hX1rj2t.jpeg','uploads/products/thumbnail/n659MHgSsAz3n8d5805bXmCjGl2nwp395hX1rj2t.jpeg',NULL,'youtube',NULL,'',NULL,220.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','SUP TV 35',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SUPPOR-TV-MOBILE-35KG-V7uox',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(550,'7 A 500 FIXE 23 POUSSES A 55 POUSSES','admin',0,7,13,NULL,NULL,'[]','uploads/products/thumbnail/UHupbkySNGurJEgf3H7VaMXGyVNZKqyWOwZEzalK.jpeg','uploads/products/thumbnail/UHupbkySNGurJEgf3H7VaMXGyVNZKqyWOwZEzalK.jpeg',NULL,'youtube',NULL,'',NULL,120.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','SUP TV A 500',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'7-A-500-FIXE-23-POUSSES-A-55-POUSSES-k0Nnr',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(551,'7 BM22 2EME','admin',0,7,13,NULL,NULL,'[]','uploads/products/thumbnail/AsGp0uuS6sgjUWuDIZIy2Ig2gwXgCElF5O6PKwvt.jpeg','uploads/products/thumbnail/AsGp0uuS6sgjUWuDIZIy2Ig2gwXgCElF5O6PKwvt.jpeg',NULL,'youtube',NULL,'',NULL,170.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','SUP TV BM 22',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'7-BM22-2EME-cnHZL',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(552,'SUPPORT BM24M MOBILE 26POUSSES A 55 POUSSES','admin',0,7,13,NULL,NULL,'[]','uploads/products/thumbnail/iunVNFrYGC5s7KYrmbmWNWDaQTmmchVvysZYwOZk.jpeg','uploads/products/thumbnail/iunVNFrYGC5s7KYrmbmWNWDaQTmmchVvysZYwOZk.jpeg',NULL,'youtube',NULL,'',NULL,325.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','SUP TV BM24M',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SUPPORT-BM24M-MOBILE-26POUSSES-A-55-POUSSES-MCKal',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(555,'SYPHON EVIST 10*10*','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/7N7UwVWlM4IpZEg5aWbOzd9FqOVwZY2TAzlATpS2.jpeg','uploads/products/thumbnail/7N7UwVWlM4IpZEg5aWbOzd9FqOVwZY2TAzlATpS2.jpeg',NULL,'youtube',NULL,'',NULL,57.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','SYP EV 10',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SYPHON-EVIST-1010-6PVqU',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(556,'Cl? SYPO A2','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/y1Q304bwYrtwgChPO3aGidJFXfXvipqQaJXtw6w6.jpeg','uploads/products/thumbnail/y1Q304bwYrtwgChPO3aGidJFXfXvipqQaJXtw6w6.jpeg',NULL,'youtube',NULL,'',NULL,20.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','SYPO A2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Cl-SYPO-A2-WWcLR',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(557,'Cl? SYPO A4','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/TqdPSQJt2eWEkPgOmjVRmU4cSd9A8LfrmoI7sKr3.jpeg','uploads/products/thumbnail/TqdPSQJt2eWEkPgOmjVRmU4cSd9A8LfrmoI7sKr3.jpeg',NULL,'youtube',NULL,'',NULL,22.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'14','SYPO A4',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Cl-SYPO-A4-koN3p',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(558,'Cl? SYPO A5','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/CI7guUHdcAoA7vzpLzhPcHLBVRm7WTZR5TeXe6Ua.jpeg','uploads/products/thumbnail/CI7guUHdcAoA7vzpLzhPcHLBVRm7WTZR5TeXe6Ua.jpeg',NULL,'youtube',NULL,'',NULL,27.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'123','SYPO A5',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Cl-SYPO-A5-hc6Z4',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(559,'Tenaille POWER 8\'\'','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/UcJuYxY1SI72Unwa7meoXG0yxXZIscvtdK7cG3ZR.jpeg','uploads/products/thumbnail/UcJuYxY1SI72Unwa7meoXG0yxXZIscvtdK7cG3ZR.jpeg',NULL,'youtube',NULL,'',NULL,25.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1234','TA',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Tenaille-POWER-8-rvFS7',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(560,'Tenaille POWER 10\'\'','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/3n8EjYorl5EHZ9FjUpUsgtoj0aJWYkRUYLavBi6P.jpeg','uploads/products/featured/MC 1526.jpg',NULL,'youtube',NULL,'',NULL,35.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','TK',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Tenaille-POWER-10-LAAy8',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58');

INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `current_stock`, `unit`, `ref`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`)
VALUES
	(561,'Tenaille Normal','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/ORFjX8teSnsN8HaJEUYiO2aXXcGtswRsdphNliKv.jpeg','uploads/products/thumbnail/ORFjX8teSnsN8HaJEUYiO2aXXcGtswRsdphNliKv.jpeg',NULL,'youtube',NULL,'',NULL,18.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','TN',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Tenaille-Normal-5EcNq',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(562,'Tringle avec tete ananas','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/kVoQtNLZCVvzQJ5clK6WYHgjspS3aK7D6h8KGaqL.jpeg','uploads/products/thumbnail/kVoQtNLZCVvzQJ5clK6WYHgjspS3aK7D6h8KGaqL.jpeg',NULL,'youtube',NULL,'',NULL,90.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','TR ANAN',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Tringle-avec-tete-ananas-XI1sG',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(563,'Tringle doree normale','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/474WC2BSowWXLyl2vNnWQ9VitRKa2kitFueM0NWk.jpeg','uploads/products/thumbnail/474WC2BSowWXLyl2vNnWQ9VitRKa2kitFueM0NWk.jpeg',NULL,'youtube',NULL,'',NULL,33.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','TR DOR NR',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Tringle-doree-normale-DI6Ob',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(564,'TRINGLE POUR DOUCHE EN PLASTIC','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/FHmy9pdXLNIMZGgBxI6OXvjxAenlMpYBLZa1cyvg.jpeg','uploads/products/thumbnail/FHmy9pdXLNIMZGgBxI6OXvjxAenlMpYBLZa1cyvg.jpeg',NULL,'youtube',NULL,'',NULL,100.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','TR DOUCHE',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TRINGLE-POUR-DOUCHE-EN-PLASTIC-GEmGb',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(565,'Tringle de placard ovale 4metres','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/eo1rvASPIuoCTmiIem5QFwOIjUBM6TTKb3wD409j.jpeg','uploads/products/thumbnail/eo1rvASPIuoCTmiIem5QFwOIjUBM6TTKb3wD409j.jpeg',NULL,'youtube',NULL,'',NULL,25.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','TR PL 4M',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'Tringle-de-placard-ovale-4metres-oi0h7',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(566,'TRINGLE RAYEE 1.6 METRE','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/I7Wzwvsc3JdhDwMB2p7lq9I6P88ZJezm9IAZm0HV.jpeg','uploads/products/thumbnail/I7Wzwvsc3JdhDwMB2p7lq9I6P88ZJezm9IAZm0HV.jpeg',NULL,'youtube',NULL,'',NULL,42.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','TR RY 1.6',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TRINGLE-RAYEE-16-METRE-MNfWH',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(567,'TRINGLE RAYEE 2 METRE','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/uk1CluvIkhL6e9SseiLUl6ttvjx2u8YLVZRC5tTk.jpeg','uploads/products/thumbnail/uk1CluvIkhL6e9SseiLUl6ttvjx2u8YLVZRC5tTk.jpeg',NULL,'youtube',NULL,'',NULL,42.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','TR RY 2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TRINGLE-RAYEE-2-METRE-Syycy',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(568,'TRINGLE RAYEE 2.20 METRE','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/iDlc3iONbV2nA9rbZleQ8VBBHXNJsfdTruhIPsAp.jpeg','uploads/products/thumbnail/iDlc3iONbV2nA9rbZleQ8VBBHXNJsfdTruhIPsAp.jpeg',NULL,'youtube',NULL,'',NULL,42.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','TR RY 2.2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TRINGLE-RAYEE-220-METRE-2om8O',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(569,'TRINGLE RAYEE 2.5 METRE','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/nhWuQLEmcpNr7nC0RXWiNLSZHwLE9M43pn7O1c8l.jpeg','uploads/products/thumbnail/nhWuQLEmcpNr7nC0RXWiNLSZHwLE9M43pn7O1c8l.jpeg',NULL,'youtube',NULL,'',NULL,42.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','TR RY 2.5',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TRINGLE-RAYEE-25-METRE-y0vca',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(570,'TRINGLE RAYEE 3 METRE','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/a9LYTeE42JidoFg9Rp2OtWsvqL3YCLGvYBH3R4ic.jpeg','uploads/products/thumbnail/a9LYTeE42JidoFg9Rp2OtWsvqL3YCLGvYBH3R4ic.jpeg',NULL,'youtube',NULL,'',NULL,42.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','TR RY 3',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TRINGLE-RAYEE-3-METRE-eKlyL',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(571,'TRINGLE RAYEE 3.5 METRE','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/2YHRUvukQwE01SJp3dTkk4FZQez0VxWG5JVmSeR3.jpeg','uploads/products/thumbnail/2YHRUvukQwE01SJp3dTkk4FZQez0VxWG5JVmSeR3.jpeg',NULL,'youtube',NULL,'',NULL,42.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','TR RY 3.5',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TRINGLE-RAYEE-35-METRE-lFrz7',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(572,'LAMPE LED 9WATT B22 BUSUN','admin',0,10,16,NULL,NULL,'[]','uploads/products/thumbnail/xliopaq1iMbpNOTOaUtkt2cPY16WWwejrlCuVh0n.jpeg','uploads/products/thumbnail/xliopaq1iMbpNOTOaUtkt2cPY16WWwejrlCuVh0n.jpeg',NULL,'youtube',NULL,'',NULL,20.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','INNO LED 9WB22',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'LAMPE-LED-9WATT-B22-BUSUN-LJoiP',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(573,'LAMPE LED 9WATT E27 BUSUN','admin',0,10,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1831 S50.jpg','uploads/products/featured/MC 1831 S50.jpg',NULL,NULL,NULL,NULL,NULL,20.25,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'INNO LED 9WE27',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'LAMPE-LED-9WATT-E27-BUSUN-ZJipq',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(574,'LAMPE LED 30WATT B22 BUSUN','admin',0,10,NULL,NULL,NULL,NULL,'uploads/products/featured/EQ - 4.jpg','uploads/products/featured/EQ - 4.jpg',NULL,NULL,NULL,NULL,NULL,56.25,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'INNO LED 30WB22',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'LAMPE-LED-30WATT-B22-BUSUN-iMlIx',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(575,'LAMPE LED 30WATT E27 BUSUN','admin',0,10,NULL,NULL,NULL,NULL,'uploads/products/featured/GL TIR 12.jpg','uploads/products/featured/GL TIR 12.jpg',NULL,NULL,NULL,NULL,NULL,56.25,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'INNO LED 30WE27',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'LAMPE-LED-30WATT-E27-BUSUN-FwPtX',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(576,'LAMPE LED 40WATT B22 BUSUN','admin',0,10,NULL,NULL,NULL,NULL,'uploads/products/featured/GL TIR 14.jpg','uploads/products/featured/GL TIR 14.jpg',NULL,NULL,NULL,NULL,NULL,74.25,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'INNO LED 40WB22',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'LAMPE-LED-40WATT-B22-BUSUN-kl7nL',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(577,'LAMPE LED 40WATT E27 BUSUN','admin',0,10,NULL,NULL,NULL,NULL,'uploads/products/featured/GL TIR 16.jpg','uploads/products/featured/GL TIR 16.jpg',NULL,NULL,NULL,NULL,NULL,74.25,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'INNO LED 40WE27',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'LAMPE-LED-40WATT-E27-BUSUN-kiiOQ',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(578,'APPLIQUE SOLAIRE2X2','admin',0,10,NULL,NULL,NULL,NULL,'uploads/products/featured/GL TIR18.jpg','uploads/products/featured/GL TIR18.jpg',NULL,NULL,NULL,NULL,NULL,247.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'INNP AP SOL 2',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'APPLIQUE-SOLAIRE2X2-T2HZi',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(579,'PROJECTEUR RVA COULEUR','admin',0,10,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1831-L60.jpg','uploads/products/featured/MC 1831-L60.jpg',NULL,NULL,NULL,NULL,NULL,427.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'INNO PR CLR',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PROJECTEUR-RVA-COULEUR-y4qLk',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(580,'BLOC SECOURS LAMPE 7681','admin',0,10,16,NULL,NULL,'[]','uploads/products/thumbnail/5q2FlUDsnCWzKlSAZNH8Gfyc0mECC5eMS6ra9yM7.jpeg','uploads/products/thumbnail/5q2FlUDsnCWzKlSAZNH8Gfyc0mECC5eMS6ra9yM7.jpeg',NULL,'youtube',NULL,'',NULL,315.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','INNO BL SC 7681',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BLOC-SECOURS-LAMPE-7681-AWfgr',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(581,'AIMANT DE PORTE PM','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/hmt2nDDHISLiiWEQFfqe0SeiExJf4MTgtxsPzf20.jpeg','uploads/products/thumbnail/hmt2nDDHISLiiWEQFfqe0SeiExJf4MTgtxsPzf20.jpeg',NULL,'youtube',NULL,'',NULL,2.92,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','VSTE  AIM PM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'AIMANT-DE-PORTE-PM-xA1Wt',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(583,'BROSSE METALIQUE BASE BOIS CHROME','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/be8pddh7f7GMhJ8d4G6IVqCKt8xKRqaEQhIqeFnf.jpeg','uploads/products/thumbnail/be8pddh7f7GMhJ8d4G6IVqCKt8xKRqaEQhIqeFnf.jpeg',NULL,'youtube',NULL,'',NULL,18.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','VSTE BR MT CHR',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BROSSE-METALIQUE-BASE-BOIS-CHROME-UZwA7',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(584,'BROSSE METALIQUE BASE BOIS GOLD','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/UIuuxOUWRTNf6MvG3dZ6E2csap5f3yEt7yS2L0hW.jpeg','uploads/products/thumbnail/UIuuxOUWRTNf6MvG3dZ6E2csap5f3yEt7yS2L0hW.jpeg',NULL,'youtube',NULL,'',NULL,18.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','VSTE BR MT GP',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'BROSSE-METALIQUE-BASE-BOIS-GOLD-ZtZRH',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(585,'CANNON DE PORTE CHROME 60MM','admin',0,3,7,NULL,NULL,'[]','uploads/products/thumbnail/PksRMWnAjnQt8qs2AyxX76RHaIpC5GDO5OKGMaJG.jpeg','uploads/products/thumbnail/PksRMWnAjnQt8qs2AyxX76RHaIpC5GDO5OKGMaJG.jpeg',NULL,'youtube',NULL,'',NULL,81.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','VSTE CAN 60',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CANNON-DE-PORTE-CHROME-60MM-bKjUI',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(586,'CHARNIERE INOX','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/5S2UDvXZi4NKyrrdiGnmwDSp9ZLmh6wO8KrY7rsE.jpeg','uploads/products/thumbnail/5S2UDvXZi4NKyrrdiGnmwDSp9ZLmh6wO8KrY7rsE.jpeg',NULL,'youtube',NULL,'',NULL,21.38,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','VSTE CH/IN',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CHARNIERE-INOX-SG3Rm',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(587,'CHARNIERE EN VRAC','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1528.jpg','uploads/products/featured/MC 1528.jpg',NULL,NULL,NULL,NULL,NULL,11.25,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE CHR VR',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CHARNIERE-EN-VRAC-jkb6U',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(588,'SERRURE ENCASTREE E10','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1632-96.jpg','uploads/products/featured/MC 1632-96.jpg',NULL,NULL,NULL,NULL,NULL,112.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE SER E10',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SERRURE-ENCASTREE-E10-lQ0T5',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(589,'SERRURE ENCASTREE E3','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1635.jpg','uploads/products/featured/MC 1635.jpg',NULL,NULL,NULL,NULL,NULL,135.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE SER E3',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SERRURE-ENCASTREE-E3-Ec0Tc',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(590,'SERRURE ENCASTREE DOUBLE SK K33','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1710-10.jpg','uploads/products/featured/MC 1710-10.jpg',NULL,NULL,NULL,NULL,NULL,141.75,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE SER K33',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SERRURE-ENCASTREE-DOUBLE-SK-K33-bGH4C',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(591,'SERRURE CASTRE KINGHOUSE','admin',0,1,1,NULL,NULL,'[]','uploads/products/thumbnail/ac1JfeH5kAhpOplCNXdK3w9OcVl0YGg91YfcbUXQ.jpeg','uploads/products/thumbnail/ac1JfeH5kAhpOplCNXdK3w9OcVl0YGg91YfcbUXQ.jpeg',NULL,'youtube',NULL,'',NULL,67.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121e3','VSTE SER KG',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SERRURE-CASTRE-KINGHOUSE-oNV0Y',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(592,'VERROU DE TIROIR','admin',0,1,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1710-8.jpg','uploads/products/featured/MC 1710-8.jpg',NULL,NULL,NULL,NULL,NULL,40.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE VER TIR',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VERROU-DE-TIROIR-7cOcD',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(593,'CISAILLE A TOLE','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/Z4eXQPgrNCLxY4h5kwpQpFcjdsYfjLl0jbQgfGfq.jpeg','uploads/products/thumbnail/Z4eXQPgrNCLxY4h5kwpQpFcjdsYfjLl0jbQgfGfq.jpeg',NULL,'youtube',NULL,'',NULL,78.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','VSTE CIS TL',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CISAILLE-A-TOLE-cvPer',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:57'),
	(594,'CLEF A CLIQUET','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/q5evgjwaKlCqAq9cvxlZDoe4HmP8w7ysDSJ2ZRbB.jpeg','uploads/products/featured/MC 1602.jpg',NULL,'youtube',NULL,'',NULL,54.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12121','VSTE CL CLQ',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-A-CLIQUET-1QaM9',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(596,'COMPTEUR DE CONFLEUR','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/QTTG5Cxi3lw9CjqW0v9hUJ9S0S4kV1JXyL6RsI5E.jpeg','uploads/products/thumbnail/QTTG5Cxi3lw9CjqW0v9hUJ9S0S4kV1JXyL6RsI5E.jpeg',NULL,'youtube',NULL,'',NULL,117.00,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','VSTE COGF',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'COMPTEUR-DE-CONFLEUR-vtKIt',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(597,'ENSEMBLE BRICOLAGE','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/j4ZUq7pVdh7ZcKNXrARc7L2kH7uGjw7MDSAFhSBQ.jpeg','uploads/products/thumbnail/j4ZUq7pVdh7ZcKNXrARc7L2kH7uGjw7MDSAFhSBQ.jpeg',NULL,'youtube',NULL,'',NULL,49.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'123','VSTE ENS T61',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ENSEMBLE-BRICOLAGE-8WLvr',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(598,'FER A SOUDER 40 WATT+LAITTON','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/zqAkfRD6mlBNz2FkGjA2HgYHL2vMUvzLidoGg68E.jpeg','uploads/products/thumbnail/zqAkfRD6mlBNz2FkGjA2HgYHL2vMUvzLidoGg68E.jpeg',NULL,'youtube',NULL,'',NULL,67.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'10000','VSTE FES40',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'FER-A-SOUDER-40-WATTLAITTON-5lDsO',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(599,'MECHES POUR HILTI SUR 3','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/wHecp3NoQDPV9IcM9TrFwk6PNgtIJ9Sz69pIZ6IJ.jpeg','uploads/products/thumbnail/wHecp3NoQDPV9IcM9TrFwk6PNgtIJ9Sz69pIZ6IJ.jpeg',NULL,'youtube',NULL,'',NULL,14.06,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','VSTE ME HIT/3',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MECHES-POUR-HILTI-SUR-3-ASbvC',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(600,'PINCE A GAZ NUM 1','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/kfNtfAtnI4L8Ezcsw7Cb3XChFVoakc9B56pfddK0.jpeg','uploads/products/thumbnail/kfNtfAtnI4L8Ezcsw7Cb3XChFVoakc9B56pfddK0.jpeg',NULL,'youtube',NULL,'',NULL,76.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','VSTE PG1',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PINCE-A-GAZ-NUM-1-3Mbht',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(601,'TOURNEVIS REGLAGES MULTICOULEUR','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1710-12.jpg','uploads/products/featured/MC 1710-12.jpg',NULL,NULL,NULL,NULL,NULL,14.62,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE TOUR MT',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'TOURNEVIS-REGLAGES-MULTICOULEUR-iIBVW',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(602,'MESHES DE FORAGE DE MURES TAILLE6','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1608 AB-GP.jpg','uploads/products/featured/MC 1608 AB-GP.jpg',NULL,NULL,NULL,NULL,NULL,7.88,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE MSH 6',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MESHES-DE-FORAGE-DE-MURES-TAILLE6-UpGjH',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(603,'MESHES DE FORAGE DE MURES TAILLE8','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1610.png','uploads/products/featured/MC 1610.png',NULL,NULL,NULL,NULL,NULL,9.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE MSH 8',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MESHES-DE-FORAGE-DE-MURES-TAILLE8-7iB7U',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(604,'MESHES DE FORAGE DE MURES TAILLE10','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1606 AB-GP.jpg','uploads/products/featured/MC 1606 AB-GP.jpg',NULL,NULL,NULL,NULL,NULL,11.81,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE MSH 10',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MESHES-DE-FORAGE-DE-MURES-TAILLE10-g0cvs',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(605,'MESHES DE FORAGE DE MURES TAILLE12','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1607.jpg','uploads/products/featured/MC 1607.jpg',NULL,NULL,NULL,NULL,NULL,15.75,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE MSH 12',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MESHES-DE-FORAGE-DE-MURES-TAILLE12-TPlwC',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(606,'CHINIEUL','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/N0Fw3gx9QiBmF9eTSkj78ePPtMqo28LckUANxEFh.jpeg','uploads/products/thumbnail/N0Fw3gx9QiBmF9eTSkj78ePPtMqo28LckUANxEFh.jpeg',NULL,'youtube',NULL,'',NULL,562.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'322','VSTE CHN',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CHINIEUL-DRAcc',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(607,'CLEF GRIFEE REGLAGE','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1605 AB-GP.jpg','uploads/products/featured/MC 1605 AB-GP.jpg',NULL,NULL,NULL,NULL,NULL,202.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE GR REG',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'CLEF-GRIFEE-REGLAGE-YS9GK',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(608,'PISTOLET DE SOUDEUR','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/IRoJTL5bpuOFSRjQqiva3GQ5QbpOyT6vrdkKhqjQ.jpeg','uploads/products/thumbnail/IRoJTL5bpuOFSRjQqiva3GQ5QbpOyT6vrdkKhqjQ.jpeg',NULL,'youtube',NULL,'',NULL,130.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'23','VSTE PIS SO',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PISTOLET-DE-SOUDEUR-p5CWa',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(609,'MEULE A DISQUE ELETRIQUE','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/fxp1CIaYOTFgCEP9bm4rPWbycKMKZUqsowIpeMBL.jpeg','uploads/products/thumbnail/fxp1CIaYOTFgCEP9bm4rPWbycKMKZUqsowIpeMBL.jpeg',NULL,'youtube',NULL,'',NULL,562.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'23123','VSTE ML EL',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'MEULE-A-DISQUE-ELETRIQUE-PaHGq',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(611,'DISQUE DE COUPURE NUM 115X3.0','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/mTvn71dBlOJsuoujE3CwSzBSzAL4kGAQYtT8oopG.jpeg','uploads/products/thumbnail/mTvn71dBlOJsuoujE3CwSzBSzAL4kGAQYtT8oopG.jpeg',NULL,'youtube',NULL,'',NULL,12.38,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'211','VSTE DSQ 115X3.0',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'DISQUE-DE-COUPURE-NUM-115X30-Ct67W',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(612,'DISQUE DE COUPURE NUM 115X6.0','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/pc8eL5G3BogVjTrTspcfTuAhaHobRwY9T6xytd2b.jpeg','uploads/products/thumbnail/pc8eL5G3BogVjTrTspcfTuAhaHobRwY9T6xytd2b.jpeg',NULL,'youtube',NULL,'',NULL,14.62,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','VSTE DSQ 115X6.0',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'DISQUE-DE-COUPURE-NUM-115X60-HzYmV',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(613,'DISQUE DE COUPURE NUM 230X1.9','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/8F1czw1WwNyD4gEe6ORRrLgpqhenHdWMEX9DV3ew.jpeg','uploads/products/thumbnail/8F1czw1WwNyD4gEe6ORRrLgpqhenHdWMEX9DV3ew.jpeg',NULL,'youtube',NULL,'',NULL,28.12,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2313','VSTE DSQ 230X1.9',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'DISQUE-DE-COUPURE-NUM-230X19-5iSac',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(614,'DISQUE DE COUPURE NUM 230X3.2','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/RWpWK3ENlloDvIfPaYP1Ft0Up5Q74yFVaFYQRX7J.jpeg','uploads/products/thumbnail/RWpWK3ENlloDvIfPaYP1Ft0Up5Q74yFVaFYQRX7J.jpeg',NULL,'youtube',NULL,'',NULL,29.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2132','VSTE DSQ 230X3.2',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'DISQUE-DE-COUPURE-NUM-230X32-gbH0C',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(615,'LUNETTE DE SOUDEUR','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/P06V2ibfdVNHvC0TgeysmxTFT6m61KVWdkz1xeFK.jpeg','uploads/products/thumbnail/P06V2ibfdVNHvC0TgeysmxTFT6m61KVWdkz1xeFK.jpeg',NULL,'youtube',NULL,'',NULL,13.05,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'232','VSTE LUN SD',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'LUNETTE-DE-SOUDEUR-HjUlY',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(616,'NIVEAU SUR 3 QUALITE 1','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/vkLf0PsMftmaJU2AyQkJXnHYVZM1XHHj4tOQkQhL.jpeg','uploads/products/thumbnail/vkLf0PsMftmaJU2AyQkJXnHYVZM1XHHj4tOQkQhL.jpeg',NULL,'youtube',NULL,'',NULL,76.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'1213','VSTE NIV 1/3',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'NIVEAU-SUR-3-QUALITE-1-kB2Qt',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(617,'PAPIER COLANT 50METRES','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/N2Q9uf7B0UyHQ6WR7HSO15UYCgDZYE9UyU1i1asl.jpeg','uploads/products/thumbnail/N2Q9uf7B0UyHQ6WR7HSO15UYCgDZYE9UyU1i1asl.jpeg',NULL,'youtube',NULL,'',NULL,12.38,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'232','VSTE PC 50MT',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PAPIER-COLANT-50METRES-AOVwE',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(618,'PAPIER DE GRATAGE NUM180/220','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/OTI9qtU9hOZtxG7pLFrreAiR3aqdRiPOzB17KhMB.jpeg','uploads/products/thumbnail/OTI9qtU9hOZtxG7pLFrreAiR3aqdRiPOzB17KhMB.jpeg',NULL,'youtube',NULL,'',NULL,427.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','VSTE PG180/220',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'PAPIER-DE-GRATAGE-NUM180220-Ib40D',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(619,'ROULETTE DE MESURE 20 METRES','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/BB7jDWuZAu2wumQ3nqC5RkURuPC40mFhlTvUq416.jpeg','uploads/products/thumbnail/BB7jDWuZAu2wumQ3nqC5RkURuPC40mFhlTvUq416.jpeg',NULL,'youtube',NULL,'',NULL,56.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2312','VSTE RL 20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROULETTE-DE-MESURE-20-METRES-YqamU',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(620,'ROULETTE DE MESURE 30 METRES','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/2SkRlW9LM2yyhVXhaHo5uwRPVH9N3STp08DvnRJV.jpeg','uploads/products/thumbnail/2SkRlW9LM2yyhVXhaHo5uwRPVH9N3STp08DvnRJV.jpeg',NULL,'youtube',NULL,'',NULL,67.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'23213','VSTE RL 30',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROULETTE-DE-MESURE-30-METRES-bJmqF',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(621,'ROULETTE DE MESURE 50 METRES','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/YBHFPSxSPdDUoPLZljDUzwxonEmq5ihDGboHE95I.jpeg','uploads/products/thumbnail/YBHFPSxSPdDUoPLZljDUzwxonEmq5ihDGboHE95I.jpeg',NULL,'youtube',NULL,'',NULL,101.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'21','VSTE RL 50',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROULETTE-DE-MESURE-50-METRES-WRZZ2',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(622,'SCIE CLOCHE GRAND MODELE','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/rjR1r9fX2AwEzaQfFWDtf4sBJwlchIRMOVEtYxG2.jpeg','uploads/products/thumbnail/rjR1r9fX2AwEzaQfFWDtf4sBJwlchIRMOVEtYxG2.jpeg',NULL,'youtube',NULL,'',NULL,146.25,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'123213','VSTE SC/CL GM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SCIE-CLOCHE-GRAND-MODELE-F5AJo',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(623,'SCIE CLOCHE PETIT MODELE','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/HLSlDlfqyTYA5OBgEeUvtmtxmPo9FD1JzLzQNxCr.jpeg','uploads/products/thumbnail/HLSlDlfqyTYA5OBgEeUvtmtxmPo9FD1JzLzQNxCr.jpeg',NULL,'youtube',NULL,'',NULL,69.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2312','VSTE SC/CL PM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'SCIE-CLOCHE-PETIT-MODELE-v6tPI',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(624,'VIS SPARX 3.5X30','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1711.jpg','uploads/products/featured/MC 1711.jpg',NULL,NULL,NULL,NULL,NULL,22.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE VIS 3.5X30',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VIS-SPARX-35X30-MCv4z',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(625,'VIS SPARX 3X20','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/oIcOHl6Z7o6k8a5ORSM9V1MHoiIY7m2WrNciAKpN.jpeg','uploads/products/thumbnail/oIcOHl6Z7o6k8a5ORSM9V1MHoiIY7m2WrNciAKpN.jpeg',NULL,'youtube',NULL,'',NULL,15.30,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'121','VSTE VIS 3X20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VIS-SPARX-3X20-Z6Fb6',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(626,'VIS SPARX 4X20','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/YoKy14WOhe1jHbEXwnoQFcLFjvmIkcfnFqqDBxCO.jpeg','uploads/products/thumbnail/YoKy14WOhe1jHbEXwnoQFcLFjvmIkcfnFqqDBxCO.jpeg',NULL,'youtube',NULL,'',NULL,21.38,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'23','VSTE VIS 4X20',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VIS-SPARX-4X20-hGcHA',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(627,'VIS SPARX 4X25','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1723.jpeg','uploads/products/featured/MC 1723.jpeg',NULL,NULL,NULL,NULL,NULL,23.62,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE VIS 4X25',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VIS-SPARX-4X25-pt2Rp',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(628,'VIS SPARX 4X30','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1793.jpg','uploads/products/featured/MC 1793.jpg',NULL,NULL,NULL,NULL,NULL,31.50,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE VIS 4X30',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VIS-SPARX-4X30-sh0Ic',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(629,'VIS SPARX 4X35','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1801.jpg','uploads/products/featured/MC 1801.jpg',NULL,NULL,NULL,NULL,NULL,33.75,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE VIS 4X35',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VIS-SPARX-4X35-rE1pH',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(630,'VIS SPARX 4X40','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1822.jpg','uploads/products/featured/MC 1822.jpg',NULL,NULL,NULL,NULL,NULL,38.25,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE VIS 4X40',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VIS-SPARX-4X40-H1axu',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(631,'VIS SPARX 4X60','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1831 L50.jpg','uploads/products/featured/MC 1831 L50.jpg',NULL,NULL,NULL,NULL,NULL,55.12,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE VIS 4X60',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VIS-SPARX-4X60-FNVVt',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(632,'VISEUSE EN BOITE  CHROME','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/pwtvJHMn4KAyhIGBvZYUfbbP8pUsfq5Z9CvYItuE.jpeg','uploads/products/thumbnail/pwtvJHMn4KAyhIGBvZYUfbbP8pUsfq5Z9CvYItuE.jpeg',NULL,'youtube',NULL,'',NULL,528.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2312','VSTE VIS/BT/CHR',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VISEUSE-EN-BOITE--CHROME-Cj62Q',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(633,'VISEUSE EN BOITE  NOIRE','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/q0DUP4PXz2vX1TEZURszZkeAPGxqjtaY0ymeIJJZ.jpeg','uploads/products/thumbnail/q0DUP4PXz2vX1TEZURszZkeAPGxqjtaY0ymeIJJZ.jpeg',NULL,'youtube',NULL,'',NULL,528.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'23123','VSTE VIS/BT/NR',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VISEUSE-EN-BOITE--NOIRE-BPaC8',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(634,'VISEUSE NUM 1 GRAND MODELE','admin',0,2,4,NULL,NULL,'[]','uploads/products/thumbnail/ER9Nd15QLxq0In084caaf3Ki5MHkDDggg5T7JP2d.jpeg','uploads/products/featured/MC 1831 S40.jpg',NULL,'youtube',NULL,'',NULL,1912.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2312','VSTE VS1 GM',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VISEUSE-NUM-1-GRAND-MODELE-M8l2n',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(635,'VISEUSE NUM 1 PETIT MODELE','admin',0,2,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1831 S70.jpg','uploads/products/featured/MC 1831 S70.jpg',NULL,NULL,NULL,NULL,NULL,1260.00,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE VS1 PM',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'VISEUSE-NUM-1-PETIT-MODELE-E6x3U',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(636,'ROBINET CHROME','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/l3VtuZJYg0GLI0BllYIPL864IXpvaMNxLNeAdMoX.jpeg','uploads/products/thumbnail/l3VtuZJYg0GLI0BllYIPL864IXpvaMNxLNeAdMoX.jpeg',NULL,'youtube',NULL,'',NULL,58.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2321','VSTE ROB CH Y28',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROBINET-CHROME-FwYAa',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(637,'ROBINET LAVABO','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/J6TajJMRIpA0LCkxGQrAJAVqyloRVvQdBky6oqcG.jpeg','uploads/products/thumbnail/J6TajJMRIpA0LCkxGQrAJAVqyloRVvQdBky6oqcG.jpeg',NULL,'youtube',NULL,'',NULL,220.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'321','VSTE ROB LAV W17',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROBINET-LAVABO-ar33a',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(638,'ROBINET LAVABO','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/Hu25lAXVgkHUnubBtcifY9dthh9xGEtmuql68P1N.jpeg','uploads/products/thumbnail/Hu25lAXVgkHUnubBtcifY9dthh9xGEtmuql68P1N.jpeg',NULL,'youtube',NULL,'',NULL,220.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'2312','VSTE ROB LAV W18',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROBINET-LAVABO-MA44A',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(639,'ROBINET LAVABO','admin',0,4,NULL,NULL,NULL,NULL,'uploads/products/featured/MC 1627.png','uploads/products/featured/MC 1627.png',NULL,NULL,NULL,NULL,NULL,195.75,0.00,0,'[]',NULL,NULL,NULL,0,1,0,10,NULL,'VSTE ROB LAV W2',0.00,NULL,20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROBINET-LAVABO-tNiHS',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:50:23'),
	(640,'ROBINET LAVABO','admin',0,4,10,NULL,NULL,'[]','uploads/products/thumbnail/Ojrkso97fhoKXqnG837O5vQLqLsudI0PikYNTtzY.jpeg','uploads/products/thumbnail/Ojrkso97fhoKXqnG837O5vQLqLsudI0PikYNTtzY.jpeg',NULL,'youtube',NULL,'',NULL,348.75,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12312','VSTE ROB LAV Y30',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,NULL,NULL,'ROBINET-LAVABO-E8jMG',0.00,NULL,0,NULL,NULL,'2020-09-28 17:54:33','2020-11-17 15:46:58'),
	(642,'Test Product','admin',12,1,1,NULL,NULL,'[]','uploads/products/thumbnail/eaGgHY8LBtryozkLSiuTpq4Chpjtk2ht6HYozQny.jpeg','uploads/products/thumbnail/eaGgHY8LBtryozkLSiuTpq4Chpjtk2ht6HYozQny.jpeg',NULL,'youtube',NULL,'',NULL,30.00,15.00,0,'[]','[]','[]',NULL,0,1,0,10,'4','asasas',0.00,'amount',20.00,'percent','flat_rate',100.00,82,NULL,NULL,NULL,NULL,'Test-Product-uuyxL',0.00,NULL,0,NULL,NULL,'2020-10-26 17:03:56','2020-11-17 15:46:58'),
	(643,'Clef a molettes \'\'MAC\'\' NUM 12','admin',0,2,4,NULL,NULL,'[\"uploads\\/products\\/photos\\/urR85yCNSJEBAFnJ6PKrN0gDQ1I7piVe74gxniUp.png\"]','uploads/products/featured/iJfssi86viCSFBJQlsqkhvgcCsJeRfoRR78hZarv.png','uploads/products/featured/iJfssi86viCSFBJQlsqkhvgcCsJeRfoRR78hZarv.png',NULL,'youtube',NULL,'',NULL,82.50,0.00,0,'[]','[]','[]',NULL,0,1,0,10,'12','CM MAC 12\'\'',0.00,'amount',20.00,'percent','flat_rate',0.00,0,NULL,NULL,'uploads/products/meta/P6vmK2eYIhxj8mtchx0vni6qq02zEhVdtHAFxEeg.png',NULL,'Clef-a-molettes-MAC-NUM-12-tTYSj',0.00,NULL,0,NULL,NULL,'2020-11-03 15:56:05','2020-11-17 15:46:58');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reviews
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `viewed` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`)
VALUES
	(1,'Manager','[\"1\",\"2\",\"4\"]','2018-10-10 06:39:47','2018-10-10 06:51:37'),
	(2,'Accountant','[\"2\",\"3\"]','2018-10-10 06:52:09','2018-10-10 06:52:09');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table searches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `searches`;

CREATE TABLE `searches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `searches` WRITE;
/*!40000 ALTER TABLE `searches` DISABLE KEYS */;

INSERT INTO `searches` (`id`, `query`, `count`, `created_at`, `updated_at`)
VALUES
	(2,'dcs',1,'2020-03-08 01:29:09','2020-03-08 01:29:09'),
	(3,'das',3,'2020-03-08 01:29:15','2020-03-08 01:29:50');

/*!40000 ALTER TABLE `searches` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table seller_withdraw_requests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `seller_withdraw_requests`;

CREATE TABLE `seller_withdraw_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `message` longtext,
  `status` int(1) DEFAULT NULL,
  `viewed` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table sellers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sellers`;

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `verification_status` int(1) NOT NULL DEFAULT '0',
  `verification_info` longtext COLLATE utf8_unicode_ci,
  `cash_on_delivery_status` int(1) NOT NULL DEFAULT '0',
  `admin_to_pay` double(8,2) NOT NULL DEFAULT '0.00',
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_routing_no` int(50) DEFAULT NULL,
  `bank_payment_status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;

INSERT INTO `sellers` (`id`, `user_id`, `verification_status`, `verification_info`, `cash_on_delivery_status`, `admin_to_pay`, `bank_name`, `bank_acc_name`, `bank_acc_no`, `bank_routing_no`, `bank_payment_status`, `created_at`, `updated_at`)
VALUES
	(1,3,1,'[{\"type\":\"text\",\"label\":\"Name\",\"value\":\"Mr. Seller\"},{\"type\":\"select\",\"label\":\"Marital Status\",\"value\":\"Married\"},{\"type\":\"multi_select\",\"label\":\"Company\",\"value\":\"[\\\"Company\\\"]\"},{\"type\":\"select\",\"label\":\"Gender\",\"value\":\"Male\"},{\"type\":\"file\",\"label\":\"Image\",\"value\":\"uploads\\/verification_form\\/CRWqFifcbKqibNzllBhEyUSkV6m1viknGXMEhtiW.png\"}]',1,78.40,NULL,NULL,NULL,NULL,0,'2018-10-07 06:42:57','2020-01-26 05:21:11');

/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table seo_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `seo_settings`;

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisit` int(11) NOT NULL,
  `sitemap_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `seo_settings` WRITE;
/*!40000 ALTER TABLE `seo_settings` DISABLE KEYS */;

INSERT INTO `seo_settings` (`id`, `keyword`, `author`, `revisit`, `sitemap_link`, `description`, `created_at`, `updated_at`)
VALUES
	(1,'ecommerce,Bricolya,Casablanca','Cloudme',1,'https://bricolya.com/','BRICOLYA est la plateforme électronique liée à l’entreprise HIGH DIST crée en 2005 et spécialisée dans la vente des produits de la droguerie aux distributeurs grossistes et détaillants.','2020-08-27 10:59:46','2020-08-27 08:59:46');

/*!40000 ALTER TABLE `seo_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table shops
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shops`;

CREATE TABLE `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sliders` longtext COLLATE utf8_unicode_ci,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `pick_up_point_id` text COLLATE utf8_unicode_ci,
  `shipping_cost` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;

INSERT INTO `shops` (`id`, `user_id`, `name`, `logo`, `sliders`, `address`, `facebook`, `google`, `twitter`, `youtube`, `slug`, `meta_title`, `meta_description`, `pick_up_point_id`, `shipping_cost`, `created_at`, `updated_at`)
VALUES
	(1,3,'Demo Seller Shop','shop/logo/Gt1xw7vjTpMnwpADkGSilc35qrAfcw02kuZ36Jdn.png','[\"uploads\\/shop\\/sliders\\/lToeKDeUyWcxy1HRs2yH37oBLyIwEwyPkqdyXBRO.jpeg\",\"uploads\\/shop\\/sliders\\/asDBJ3Bro1ijNaNnx3Hpnp6uq3n66ndyLczOJ0F6.jpeg\",\"uploads\\/shop\\/sliders\\/ltwUfHND4QP1K7bPFbuOC4i8v6zL9KHJKzex4zaX.jpeg\"]','House : Demo, Road : Demo, Section : Demo','www.facebook.com','www.google.com','www.twitter.com','www.youtube.com','Demo-Seller-Shop-1','Demo Seller Shop Title','Demo description',NULL,0.00,'2018-11-27 11:23:13','2019-08-06 08:43:16');

/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sliders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sliders`;

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '1',
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;

INSERT INTO `sliders` (`id`, `photo`, `published`, `link`, `created_at`, `updated_at`)
VALUES
	(7,'uploads/sliders/slider-image.jpg',1,NULL,'2019-03-12 06:58:05','2019-03-12 06:58:05'),
	(8,'uploads/sliders/slider-image.jpg',1,NULL,'2019-03-12 06:58:12','2019-03-12 06:58:12');

/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table staff
# ------------------------------------------------------------

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;

INSERT INTO `staff` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`)
VALUES
	(1,15,1,'2020-07-23 09:20:07','2020-07-23 09:20:07');

/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sub_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sub_categories`;

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;

INSERT INTO `sub_categories` (`id`, `name`, `category_id`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`)
VALUES
	(1,'Demo sub category 1',1,'Demo-sub-category-1','Demo sub category 1',NULL,'2019-03-12 07:13:24','2019-08-06 08:07:14'),
	(2,'Demo sub category 2',1,'Demo-sub-category-2','Demo sub category 2',NULL,'2019-03-12 07:13:44','2019-08-06 08:07:14'),
	(3,'Demo sub category 3',1,'Demo-sub-category-3','Demo sub category 3',NULL,'2019-03-12 07:13:59','2019-08-06 08:07:14'),
	(4,'Demo sub category 1',2,'Demo-sub-category-1','Demo sub category 1',NULL,'2019-03-12 07:18:25','2019-08-06 08:07:14'),
	(5,'Demo sub category 2',2,'Demo-sub-category-2','Demo sub category 2',NULL,'2019-03-12 07:18:38','2019-08-06 08:07:14'),
	(6,'Demo sub category 3',2,'Demo-sub-category-3','Demo sub category 3',NULL,'2019-03-12 07:18:51','2019-08-06 08:07:14'),
	(7,'Demo sub category 1',3,'Demo-sub-category-1','Demo sub category 1',NULL,'2019-03-12 07:19:05','2019-08-06 08:07:14'),
	(8,'Demo sub category 2',3,'Demo-sub-category-2','Demo sub category 2',NULL,'2019-03-12 07:19:13','2019-08-06 08:07:14'),
	(9,'Demo sub category 3',3,'Demo-sub-category-3','Demo sub category 3',NULL,'2019-03-12 07:19:22','2019-08-06 08:07:14'),
	(10,'items',4,NULL,NULL,NULL,'2020-07-20 08:36:41','2020-07-20 08:36:41'),
	(11,'sub-items',5,NULL,NULL,NULL,'2020-07-20 08:36:59','2020-07-20 08:36:59'),
	(12,'sub-item',6,NULL,NULL,NULL,'2020-07-20 08:37:15','2020-07-20 08:37:15'),
	(13,'sub-categorie',7,NULL,NULL,NULL,'2020-07-20 08:37:30','2020-07-20 08:37:30'),
	(14,'sub-categorie',8,NULL,NULL,NULL,'2020-07-20 08:37:46','2020-07-20 08:37:46'),
	(15,'sub-category',9,NULL,NULL,NULL,'2020-07-20 08:38:04','2020-07-20 08:38:04'),
	(16,'sub-categorie',10,NULL,NULL,NULL,'2020-07-20 08:38:18','2020-07-20 08:38:18');

/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sub_sub_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sub_sub_categories`;

CREATE TABLE `sub_sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_category_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_sub_category_id` (`sub_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sub_sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_sub_categories` DISABLE KEYS */;

INSERT INTO `sub_sub_categories` (`id`, `sub_category_id`, `name`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`)
VALUES
	(1,1,'Demo sub sub category','Demo-sub-sub-category','Demo sub sub category',NULL,'2019-03-12 07:19:49','2019-08-06 08:07:19'),
	(2,1,'Demo sub sub category 2','Demo-sub-sub-category-2','Demo sub sub category 2',NULL,'2019-03-12 07:20:23','2019-08-06 08:07:19'),
	(3,1,'Demo sub sub category 3','Demo-sub-sub-category-3','Demo sub sub category 3',NULL,'2019-03-12 07:20:43','2019-08-06 08:07:19'),
	(4,2,'Demo sub sub category 1','Demo-sub-sub-category-1','Demo sub sub category 1',NULL,'2019-03-12 07:21:28','2019-08-06 08:07:19'),
	(5,2,'Demo sub sub category 2','Demo-sub-sub-category-2','Demo sub sub category 2',NULL,'2019-03-12 07:21:40','2019-08-06 08:07:19'),
	(6,2,'Demo sub sub category 3','Demo-sub-sub-category-3','Demo sub sub category 3',NULL,'2019-03-12 07:21:56','2019-08-06 08:07:19'),
	(7,3,'Demo sub sub category 1','Demo-sub-sub-category-1','Demo sub sub category 1',NULL,'2019-03-12 07:23:31','2019-08-06 08:07:19'),
	(8,3,'Demo sub sub category 3','Demo-sub-sub-category-3','Demo sub sub category 3',NULL,'2019-03-12 07:23:48','2019-08-06 08:07:19'),
	(9,3,'Demo sub sub category 3','Demo-sub-sub-category-3','Demo sub sub category 3',NULL,'2019-03-12 07:24:01','2019-08-06 08:07:19'),
	(10,4,'Demo sub sub category 1','Demo-sub-sub-category-1','Demo sub sub category 1',NULL,'2019-03-12 07:24:37','2019-08-06 08:07:19'),
	(11,4,'Demo sub sub category 2','Demo-sub-sub-category-2','Demo sub sub category 2',NULL,'2019-03-12 07:25:14','2019-08-06 08:07:19'),
	(12,4,'Demo sub sub category','Demo-sub-sub-category','Demo sub sub category',NULL,'2019-03-12 07:25:25','2019-08-06 08:07:19'),
	(13,5,'Demo sub sub category 1','Demo-sub-sub-category-1','Demo sub sub category 1',NULL,'2019-03-12 07:25:58','2019-08-06 08:07:19'),
	(14,6,'Demo sub sub category 1','Demo-sub-sub-category-1','Demo sub sub category 1',NULL,'2019-03-12 07:26:16','2019-08-06 08:07:19'),
	(15,7,'Demo sub sub category','Demo-sub-sub-category','Demo sub sub category',NULL,'2019-03-12 07:27:17','2019-08-06 08:07:19'),
	(16,8,'Demo sub sub category','Demo-sub-sub-category','Demo sub sub category',NULL,'2019-03-12 07:27:29','2019-08-06 08:07:19'),
	(17,7,'Demo sub sub category attribute','Demo-sub-sub-category','Demo sub sub category',NULL,'2019-03-12 07:27:41','2020-03-05 05:03:54');

/*!40000 ALTER TABLE `sub_sub_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table subscribers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `subscribers`;

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`)
VALUES
	(1,'malikatiq@gmail.com','2020-07-21 16:35:40','2020-07-21 16:35:40'),
	(2,'contact@fresh2delivery.com','2020-07-22 14:21:20','2020-07-22 14:21:20'),
	(3,'vincent@trienpont.eu','2020-07-22 18:55:18','2020-07-22 18:55:18'),
	(4,'test@test.com','2020-07-22 18:59:30','2020-07-22 18:59:30'),
	(5,'khalil-atech@hotmail.com','2020-07-26 20:56:07','2020-07-26 20:56:07'),
	(6,'loubna.kitabrhi@gmail.com','2020-08-30 08:15:50','2020-08-30 08:15:50'),
	(7,'loubnakitabrhi28@gmail.com','2020-08-30 08:16:28','2020-08-30 08:16:28'),
	(8,'zlarrache@gmail.com','2020-08-30 08:17:29','2020-08-30 08:17:29'),
	(9,'jawad23@hotmail.com','2020-10-11 16:22:33','2020-10-11 16:22:33'),
	(10,'m.solver36@gmail.com','2020-10-11 16:23:36','2020-10-11 16:23:36'),
	(11,'dis.tou100@gmail.com','2020-10-15 13:18:52','2020-10-15 13:18:52'),
	(12,'rachida.boumour@gmail.com','2020-10-15 17:25:15','2020-10-15 17:25:15'),
	(13,'Justine1@gmail.com','2020-10-21 15:40:27','2020-10-21 15:40:27'),
	(14,'greenleafexpresscanada@gmail.com','2020-10-21 17:26:49','2020-10-21 17:26:49'),
	(15,'healthyminds1990@gmail.com','2020-10-22 10:09:34','2020-10-22 10:09:34'),
	(16,'lpati@topnotchtek.com','2020-10-22 23:18:59','2020-10-22 23:18:59'),
	(17,'gmgmoose@verizon.net','2020-10-23 07:56:20','2020-10-23 07:56:20'),
	(18,'taichiggs2@gmail.com','2020-10-26 23:18:22','2020-10-26 23:18:22');

/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TABLE 59
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TABLE 59`;

CREATE TABLE `TABLE 59` (
  `COL 1` varchar(47) DEFAULT NULL,
  `COL 2` varchar(19) DEFAULT NULL,
  `COL 3` decimal(4,2) DEFAULT NULL,
  `COL 4` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TABLE 59` WRITE;
/*!40000 ALTER TABLE `TABLE 59` DISABLE KEYS */;

INSERT INTO `TABLE 59` (`COL 1`, `COL 2`, `COL 3`, `COL 4`)
VALUES
	('Serrure \"ILARJI\"','138-T1/T2',1.00,50.00),
	('Pistolet pour Silicone num 1','164134',2.00,30.00),
	('Pistolet pour Silicone num 2','164134 B',2.00,26.00),
	('Embrasse de rideaux 1901','1901 - AB/GP',1.00,11.00),
	('Embrasse de rideaux 1903','1903 - AB/GP',1.00,11.00),
	('Embrasse de rideaux 1904','1904 - AB/GP',1.00,11.00),
	('Tournevis Testeur 63394','63394',2.00,6.60),
	('Embrasse de rideaux 701','701- AB/GP',1.00,12.00),
	('Embrasse de rideaux 703','703 -AB/GP',1.00,10.00),
	('Embrasse de rideaux A52','A52-AB/GP',1.00,11.00),
	('CHARNIERE HYDROLIQUE GM DADIS','ABCH',1.00,11.00),
	('SERRURE APPARENT EZGURRA','ABSAE',1.00,146.00),
	('SERRURE APPARENT LINE CLE SPECIAL','ABSAL',1.00,140.00),
	('Adh?sif Power 13mmx18mmx10y','AD13MM18MM10Y',6.00,3.40),
	('Adh?sif Power 13mmx18mmx14y','AD13MM18MM14Y',6.00,4.60),
	('Adh?sif Power 13mmx18mmx20y','AD13MM18MM20Y',6.00,6.00),
	('PRESSOSTAT PMS NOIR NS103732','AGRPRC',4.00,75.60),
	('BOUCHON 3/4 MAL CUIVRE IR','ARTBM3/4',4.00,3.20),
	('CLAPE A CUIVRE 1\'1/4','ARTCC11/4',4.00,69.12),
	('DOUCHETTE+FLEXIBLE SPA NS123771','ARTDFM',4.00,106.00),
	('EVIER INOX 96*43 TOP EVIER','ARTE96*43',4.00,260.00),
	('ENSEMBLE S.D.B NS123781','ARTESDB',4.00,180.00),
	('FLEXIBLE SANPLAST 1.5 BLANC','ARTF1.5',4.00,38.00),
	('Siphon ?vier 1 1/4 40 inox Sanplast','ARTF40MEB',4.00,21.00),
	('FLOTTEUR EN PLASTIQUE 7023','ARTF7023',4.00,67.20),
	('FLEXIBLE SANPLAST 1.2 BLANC','ARTFS1.2',4.00,33.60),
	('KIT WC SANPLAST+FLEXIBLE STAINLESS','ARTK+FSK',4.00,110.00),
	('KIT WC SANPLAST CHROME COMPLET','ARTKKC',4.00,44.00),
	('Kit wc Sanplast avec flexible gris long','ARTKL',4.00,82.00),
	('PASSOIR MITIGEUR EN CUIVRE FEMELLE','ARTPCF',4.00,10.00),
	('PASSOIR MITIGEUR EN CUIVRE MAL','ARTPCM',4.00,10.00),
	('REDUCTION1\'1/4*3/4 IRON','ARTR11/4*3/4',4.00,16.00),
	('REDUCTION 1/2*3/4 GOLD','ARTR1/2*3/4',4.00,3.20),
	('RALLONGE WC 40 SANPLAST','ARTR40S',4.00,69.40),
	('RALLONGE WC 50 SANPLAST','ARTR50S',4.00,80.00),
	('RALLONGE WC SPARKS TURKEY','ARTRBS',4.00,40.00),
	('RALLONGE WC SANPLAST + CLAPE','ARTRC',4.00,60.00),
	('SIPHON FLEXIBLE 40 INOX SANPLAST','ARTS40',4.00,15.80),
	('Siphon ? ?vier Inox + bande ? panier +p','ARTS 40 + TP',4.00,115.00),
	('Siphon ?vier double bac inox + bande A','ARTSD+TP',4.00,206.00),
	('SIPHON FLEXIBLE INOX 32 SANPLAST','ARTSF32',4.00,14.40),
	('TERFON LAVABO IZ FIX','ARTTL',4.00,8.00),
	('EVIER 40*50 304/2 ASIL ECO','AS21',4.00,220.00),
	('EVIER 90*50','ASE29',4.00,143.00),
	('EVIER 50*116 DOUBLE ASIL ENCASTRE','ASE50*116D',4.00,690.00),
	('EVIER 50*80 DOUBLE ASIL LAYON AS40.','ASE50*80D',4.00,516.00),
	('EVIER 50*80 ASIL DOUBLE ENCASTRE AS13','ASE50*80DE',4.00,600.00),
	('?chelle jaune 4','AYE3+1J',5.00,320.00),
	('?chelle chrome 5','AYE4+1',5.00,400.00),
	('?chelle jaune 5','AYE4+1J',5.00,400.00),
	('?chelle chrome 6','AYE5+1',5.00,480.00),
	('?chelle jaune 6','AYE5+1J',5.00,480.00),
	('Echelle chrome 7','AYE6+1',5.00,560.00),
	('Echelle jaune 7','AYE6+1J',5.00,560.00),
	('?chelle chrome 8','AYE7+1',5.00,640.00),
	('Echelle jaune 8','AYE7+1J',5.00,640.00),
	('?chelle chrome 9','AYE8+1',5.00,720.00),
	('Echelle jaune 9','AYE8+1J',5.00,720.00),
	('Echelle chrome 10','AYE9+1',5.00,800.00),
	('Echelle jaune 10','AYE9+1J',5.00,800.00),
	('Brosse de nettoyage num4','BNT 04',2.00,44.00),
	('Brosse de nettoyage num 6','BNT 06',2.00,62.00),
	('ROBINET EQUERRE ANG.VAL 1/2*1/2 LGR','BTLRA1/2*1/2',4.00,21.00),
	('SIPHON DE COUR 15*15 LGR','BTLSI1515',4.00,68.00),
	('BUTOIR 4002','BUT 4002',1.00,11.00),
	('BUTOIR 588','BUT 588',1.00,12.00),
	('BUTTOIR ROND','BUT RND',1.00,10.00),
	('3 264 Clef croissant','CAD 264 CR',3.00,13.00),
	('3 265 Clef croissant','CAD 265 CR',3.00,19.00),
	('3 266 Clef croissant','CAD 266 CR',3.00,27.00),
	('3 40mm','CAD40MM',3.00,106.00),
	('3 COULEUR 30 MM TABLEAU CARRE','cad col car 30',3.00,168.00),
	('3 COULEUR 30 MM TABLEAU ROND','CAD COL RND 30',3.00,168.00),
	('3 GUSAN num 1 263','CAD GUS 263',3.00,9.60),
	('3 GUSAN num 1 264','CAD GUS 264',3.00,11.60),
	('3 GUSAN num 1 265','CAD GUS 265',3.00,17.00),
	('3 GUSAN num 1 266','CAD GUS 266',3.00,23.00),
	('3 264 tournevis','CAD TOUR 264',3.00,12.00),
	('3 265 tournevis','CAD TOUR 265',3.00,18.00),
	('3 266 tournevis','CAD TOUR 266',3.00,26.00),
	('3 CASTRE 4 TIGES AVEC 5 CLEFS SP EZGURA','CA EZG 4TG',3.00,180.00),
	('CANON LINCE CUIVRE','CAN LIN',3.00,50.00),
	('Castre ?DAF? avec cle normale','CAS DAF NO',3.00,150.00),
	('Charni?re hydrolique \'\'EVERLEO\'\' GM','CH HYD EVER',1.00,10.40),
	('CISCEAUX TAILLEUR 240 MM','CIS T 240',2.00,66.00),
	('CISCEAUX TAILLEUR 270MM','CIS T 270',2.00,70.00),
	('Clef 19 plat creno','Cl 19 pl',2.00,8.00),
	('Clef a molettes \'\'MAC\'\' NUM 10','CM MAC 10\'\'',2.00,54.00),
	('Clef a molettes \'\'MAC\'\' NUM 12','CM MAC 12\'\'',2.00,66.00),
	('Cutteur normal','CUT NO',2.00,2.80),
	('Cutteur+recharge','CUT RCG',2.00,16.00),
	('Cutteur num 1 simple','cutt 1s',2.00,11.00),
	('ENSEMBLE 121064- 7PIECES + MIROIR','DIS8042B',4.00,306.00),
	('ENSEMBLE 121272 7PIECES + MIROIR','DIS8081B',4.00,480.00),
	('ENSEMBLE 121072 7PIECES+MIROIR','DIS8081BH',4.00,480.00),
	('ENSEMBLE 121264 7PIECES+MIROIR','DIS8081BL',4.00,480.00),
	('7 MOBILE 24','DISS24',7.00,90.00),
	('Ensemble 121064 6pieces+miroire','DISSACOEN10',4.00,304.00),
	('CISEAUX PPR ORIGINAL NS 144850','DROCO',4.00,116.00),
	('ROULEAU DE PEINTURE BRAVO JAUNE 2-2','DRORL6',5.00,25.00),
	('SIPHON 15*15 CHROME REBERO','DRX15*15',4.00,70.00),
	('BOUCHON FEMELLE 20 DIZAYN VERT 13802','DZVBF20',4.00,2.10),
	('BOUCHON MALE 20 VERT 12100 DIZAYN','DZVBM20',4.00,1.16),
	('BOUCHON MALE25 VERT 12102 DIZAYN','DZVBM25',4.00,2.10),
	('COUDE 20*20 VERT 13602 DIZAYN','DZVC20',4.00,1.70),
	('COUDE 20 45? DIZAYN VERT 13624','DZVC20*45?',4.00,1.70),
	('COUDE 25*25 VERT 13604 DIZAYN','DZVC25',4.00,2.50),
	('COUDE APPLIQUE MIT 20 VERT 11114','DZVCA20',4.00,35.50),
	('COUDE APPLIQUE 20 VERT 14102 DIZAYN','DZVCAA20',4.00,14.50),
	('COLLIER DOUBLE VERT12228 DIZAYN','DZVCD20',4.00,2.10),
	('COUDE DOS D\'ANE 20 14110 DIZAYN','DZVCDA20',4.00,9.50),
	('COUDE F90 20*1/2 VERT 11602 DIZAYN','DZVCF20GM',4.00,19.00),
	('COUDE FEMELLE 25*3/4 VERT 14608 DIZAYN','DZVCF25',4.00,20.80),
	('COUDE FEMELLE 25*1/2 DIZAYN VERT 14606','DZVCF25*1/2',4.00,20.80),
	('COLLIER 20 VERT 12212 DIZAYN','DZVCO20',4.00,1.60),
	('MONCHON 20 VERT 13402 DIZAYN','DZVM20',4.00,1.30),
	('MONCHON 25 VERT 13404 DIZAYN','DZVM25',4.00,1.70),
	('REDUCTION 20*25 13504 VERT DIZAYN','DZVR20*25',4.00,2.10),
	('RACCORD FEMELLE 20*1/2 VERT 14202 DIZAYN','DZVRF20',4.00,12.40),
	('RACCORD FEMELLE 25*3/4 VERT 14206','DZVRF25',4.00,18.70),
	('RACCORD MAL 20*1/2 VERT 14402 DIZAYN','DZVRM20',4.00,15.30),
	('RACCORD MAL25*3/4 VERT 14406','DZVRM25',4.00,21.60),
	('RACCORD MAL25*1/2 VERT 14408','DZVRM25*1/2',4.00,21.60),
	('TUBE PPR 25*3/4 VERT 10304 DIZAYN','DZVT25',4.00,16.40),
	('TE 20*20 VERT 13702 DIZAYN','DZVTE20',4.00,2.20),
	('TE 25*25 VERT 13704 DIZAYN','DZVTE25',4.00,2.70),
	('TE FEMELLE 20*1/2 VERT 14702 DIZAYN','DZVTF20',4.00,13.60),
	('TE FEMELLE 25*1/2*25 VERT 14706 DIZAYN','DZVTF25*1/2',4.00,22.00),
	('VANNE PPR 25 TETE ROND VERT 14806','DZVV20',4.00,117.00),
	('VANNE PPR 20 TETE ROND VERT 14804','DZVV20TR',4.00,104.00),
	('VANNE A VOLANT 20 DIZAYN 14800','DZVVTR20',4.00,53.50),
	('9 ORANGE 5 STAR BAREME FLEX','ENDT060',9.00,612.00),
	('9 NOIR AVEC LIGNE BLEU 8MM 50M','ENDTCN50',9.00,9.90),
	('9 D\'ARROSAGE PRESTIGE TRANSPARENT 3/4 50 metres','ENDTT50',9.00,24.00),
	('Equerre sur 4','Eq /4',1.00,5.00),
	('EQUERRE MONTABLE NUM 10','EQ MOT 10',1.00,60.00),
	('EQUERRE MONTABLE NUM 12','EQ MOT 12',1.00,68.00),
	('R?gulateur blanc','FF 89152',1.00,2.70),
	('GLISSIERE COULISSE DE TIROIR NUM 12','GL TIR 12',1.00,14.00),
	('GLISSIERE COULISSE DE TIROIR NUM 14','GL TIR 14',1.00,16.00),
	('GLISSIERE COULISSE DE TIROIR NUM 16','GL TIR 16',1.00,18.00),
	('GLISSIERE COULISSE DE TIROIR NUM 18','GL TIR 18',1.00,20.00),
	('GLISSIERE COULISSE DE TIROIR NUM 20','GL TIR 20',1.00,24.00),
	('SIPHON EVIER PM 40 14162','GP14162',4.00,24.00),
	('SIPHON EVIER INOX DOUBLE','GP24212',4.00,84.00),
	('Gratoires bilota 7-8-9','GR BIL7-8-9',2.00,10.00),
	('Boite a outil 3 lock h 180','h 180',2.00,120.00),
	('COIN SDB TRANSPARENT PS','HKPS',4.00,190.00),
	('COF ASDB BL NOVEL7 PC CACH/C','I070633',4.00,340.00),
	('MITIGEUR LAVABO LAVIST 8171002','INM8171002',4.00,340.00),
	('MITIGEUR CUISINE LAVIST 8171004','INM8171004',4.00,340.00),
	('MITIGEURS DOUCHE LAVIST 8171005','INM8171005',4.00,420.00),
	('MITIGEUR CUISINE LAVIST 8171007','INM8171007',4.00,420.00),
	('POIGNEE CLE INAN AS-207 NICKEL SATIN','INP207C',1.00,86.00),
	('POIGNEE CANNO INAN AS-207 NICKEL','INP207CA',1.00,86.00),
	('POIGNEE CANNO INAN AS-207 ANTIQUE AB','INP207CAAM',1.00,86.00),
	('POIGNEE CLE INAN AS-207 ANTIQUE AB','INP207CAM',1.00,86.00),
	('Poign?e wc INAN AS-207 nickel satin','INP207W',1.00,96.00),
	('POIGNEE WC INAN AS-207 ANTIQUE AB','INP207WAM',1.00,96.00),
	('POIGNEE INAN WC AS-250 MALAK ANTIQUE AB','INP250AMW',1.00,126.00),
	('POIGNEE INAN CLE AS-250 MALAK NICKEL','INP250NSMC',1.00,116.00),
	('POIGNEE INAN CANNO AS-250 MALAK NICKEL','INP250NSMCA',1.00,116.00),
	('POIGNEE INAN WC AS-250 MALAK NICKEL','INP250NSMW',1.00,126.00),
	('POIGNEE ANON INAN AS221','INPC221',1.00,96.00),
	('POIGNEE CLE INAN AS-222','INPC222',1.00,102.00),
	('POIGNEE CLE AS 221','INPCL221',1.00,96.00),
	('POIGNEE CANNO INAN AS-222','INPCN222',1.00,102.00),
	('Poign?e pali?re 250 antique','Inpp 250 AM',1.00,144.00),
	('POIGNEE PALIERE 250 MALAK INAN','INPP250NS',1.00,144.00),
	('POIGNEE INAN CANNO PALIERE ANTIQUE','INPPCA',1.00,102.00),
	('POIGNEE PALIERE NICKEL SATIN INAN','INPPCNS',1.00,102.00),
	('POIGNE WC INAN 221','INPW221',1.00,106.00),
	('POIGNEE WC INAN AS-222','INPW222',1.00,112.00),
	('SUPPORT DE REFRIGERATEUR 64/74','IS0011/64',8.00,180.00),
	('SUPPORT DE REFRIGERATEUR 64/64','Isoo10/64',8.00,172.00),
	('7 LSA19-226. 14-42 Mobile','ISOO15',7.00,160.00),
	('Equerre en fer forg? 20','ISOO3/20',1.00,11.00),
	('Equerre en fer forg? 25','ISOO3/25',1.00,13.00),
	('Equerre en fer forg? 30','ISOO3/30',1.00,15.00),
	('Equerre en fer forg? 35','ISOO3/35',1.00,17.00),
	('Equerre en fer forg? 40','ISOO3/40',1.00,19.00),
	('MIROIR 70*90 REF GUITAR SF','IYH- 1152D',4.00,210.00),
	('TASSO EQUERRE PLASTIC MARRON','KL 0046',1.00,0.60),
	('7 M22 MOBILE 19-42 POUSSES','M22',7.00,180.00),
	('Truelle Power Rectangulaire','MC12-11-20',2.00,28.00),
	('3 bicyclette MC12-14','MC12-14',3.00,32.00),
	('3 moto MC12-15','MC12-15',3.00,38.00),
	('3 moto MC12-16','MC12-16',3.00,60.00),
	('3 bicyclette MC12-17','MC12-17',3.00,17.00),
	('3 bicyclette MC12-18','MC12-18',3.00,19.00),
	('Cl? de serrage MC 12-19','MC12-19',2.00,20.00),
	('TOURNEVIS DE POCHE EN GRENAGE','MC12-6***',2.00,17.00),
	('Pince 12/9-6','MC12/9-6',2.00,24.00),
	('S?cateur num 8','mc1302-1',2.00,23.00),
	('S?cateur num 10','mc1302-2',2.00,28.00),
	('Tournevis pour gsm','mc1303',2.00,26.00),
	('Marteau pour carelage 375g','mc1311-1',2.00,21.00),
	('Marteau pour carelage 475g','mc1311-2',2.00,21.00),
	('Cl? sypo 9 pcs en grenage long','MC 1317',2.00,28.00),
	('Cl? sypo 9pcs en grenage medium','MC 1318 / A3',2.00,24.00),
	('Clef croise noir','MC 1320',2.00,60.00),
	('Scie a main \"power\"','mc1321',2.00,20.00),
	('Gratoires pour carrosserie','mc1323',2.00,6.60),
	('Pinceau artiste num1-12','mc1324',5.00,25.00),
	('Cl? ? molette Taille 8 - 10 - 12','MC1335-1-2-3',2.00,37.00),
	('Roulette 40mm metalique','MC1336',1.00,4.20),
	('Pince a gaz num 10','mc1337',2.00,42.00),
	('Truelle 16cm/ plastique','mc1338',2.00,17.00),
	('Chamoisette en pva 66cm','mc1345',5.00,25.00),
	('brosses a peindre en 4pieces','mc1347',5.00,24.00),
	('ROULETTE 40 MM METALIQUE AVEC TIGE','MC 1501',1.00,4.50),
	('ROULETTE 50MM METALIQUE PLAQUE','MC 1502-1',1.00,6.50),
	('ROULETTE GRISE 50MM PLAQUE','MC 1505-1',1.00,9.00),
	('ROULETTE GRISE 50MM AVEC TIGE','MC 1505-2',1.00,9.00),
	('CUTTEUR GRIS POUR CUIR ET TISSUS 1516','MC 1516',2.00,11.00),
	('ENSEMBLE DE TOURNEVIS 7PIECES 1517','MC 1517',2.00,112.00),
	('ENSEMBLE DE TOURNEVIS 6PIECES \'\' POWER \'\'','MC1518',2.00,48.00),
	('TOURNEVIS TESTEUR 2/1 PETIT','MC 1519-1',2.00,3.00),
	('TOURNEVIS TESTEUR 2/1 MOYEN','MC 1519-2',2.00,4.50),
	('GRATOIRES 1,5\'\'-2\'\'-2.5\'\'-3\'\'','MC1520 1-2-3-4',2.00,5.40),
	('CLEF GRIFFE 10\"','MC 1521-1',2.00,38.00),
	('CLEF GRIFFE 12\'\'','MC 1521-2',2.00,44.00),
	('CLEF GRIFFE 14\"','mc 1521-3',2.00,50.00),
	('Clef griffe num 18','Mc 1521-4',2.00,70.00),
	('Clef griffe num 24','Mc 1521-5',2.00,104.00),
	('ENSEMBLE DE LIMES','MC 1526',2.00,104.00),
	('3 MOTO 1528','MC 1528',3.00,110.00),
	('3 POUR MOTO','MC 1602',3.00,110.00),
	('EMBRASSE POUR RIDEAUX AB/GP','MC 1605',1.00,10.00),
	('EMBRASSE POUR RIDEAUX AB/GP','MC 1606',1.00,10.00),
	('EMBRASSES RIDEAUX 1607','MC 1607',1.00,10.00),
	('EMBRASSE POUR RIDEAUX AB/GP','MC 1608',1.00,11.00),
	('SUPPORTS EN INNOX POUR VITRES','MC 1610',1.00,13.00),
	('PORTE MENTEAU 4 PIECES','MC1611-4',1.00,50.00),
	('PORTE MENTEAU 5 PIECES','MC1611-5',1.00,60.00),
	('PORTE MENTEAU 6 PIECES','MC 1611-6',1.00,70.00),
	('PORTE MENTEAU 3 PIECES','MC 1612-3',1.00,32.00),
	('PORTE MENTEAU 4 PIECES','MC1612-4',1.00,42.00),
	('PORTE MENTEAU 5 PIECES','MC1612-5',1.00,52.00),
	('PORTE MENTEAU 3 PIECES','MC1613-3',1.00,60.00),
	('PORTE MENTEAU 4 PIECES','MC1613-4',1.00,72.00),
	('PORTE MENTEAU 5 PIECES','MC 1613-5',1.00,84.00),
	('POIGNEE CIGARE CYLINDRE','MC 1614 C',1.00,80.00),
	('POIGNEE CIGARE PETIT TROU','MC 1614 K',1.00,80.00),
	('POIGNEE CIGARE COMDAMNATION','MC 1614 WC',1.00,90.00),
	('ROULETTE COULEUR 40MM A PLAQUE AVEC FREIN','MC 1615-40',1.00,7.60),
	('ROULETTE COULEUR 50MM A PLAQUE AVEC FREIN','MC 1615-50',1.00,9.60),
	('3 PLACARD Everbright couleur AB','Mc 1616 AB',1.00,30.00),
	('3 PLACARD Everbright couleur AC','MC 1616 AC',1.00,30.00),
	('3 PLACARD Everbright couleur CP','MC 1616 CP',1.00,30.00),
	('3 PLACARD Everbright couleur GP','MC 1616 GP',1.00,30.00),
	('TOURNEVIS DOUBLE TETE REVERSIBLE 2/1','MC 1625',2.00,12.00),
	('TOURNEVIS DOUBLE TETE AVEC REGLAGE','MC 1625-1',2.00,11.00),
	('Support bateau couleur BLACK','MC 1626 BL',1.00,36.00),
	('Support bateau couleur CP','MC 1626 CP',1.00,36.00),
	('Support bateau couleur SS','Mc 1626 SS',1.00,36.00),
	('ENSEMBLE D\'EMBRASSES AVEC CHRISTALIN','MC 1627',1.00,64.00),
	('TIRETTE CHROME CIGARRE 12MM/128','MC 1632-128',1.00,8.60),
	('TIRETTE CHROME CIGARRE 12MM/160','MC1632-160',1.00,9.60),
	('TIRETTE CHROME CIGARRE 12MM/192','MC 1632-192',1.00,16.00),
	('TIRETTE CHROME CIGARRE 12MM/96','MC 1632-96',1.00,7.60),
	('POIGNEE BOULE POUR PORTES PRICIPALES','MC 1634-2',1.00,30.00),
	('POIGNEE BOULE POUR PORTES PRICIPALES','MC 1634-3',1.00,30.00),
	('POIGNEE BOULE POUR PORTES PRICIPALES','MC 1634-4',1.00,30.00),
	('GRATOIRES 160mm/180mm/200mm','MC 1635',2.00,18.00),
	('TRACEUR DE MACON','MC 1701',2.00,9.00),
	('ENSEMBLE DE TOURNEVIS 6PIECES','MC 1702',2.00,72.00),
	('Tournevis multi-t?tes','MC 171',2.00,16.00),
	('Cl? ? molette intertool num10','MC 1710-10',2.00,54.00),
	('Cl? ? molette intertool num12','MC1710-12',2.00,64.00),
	('Cl? ? molette intertool num 8','MC1710-8',2.00,44.00),
	('PORTE MENTEAU - SS-','MC 1711',1.00,12.00),
	('SERRURE FF 120MM','MC 1713',3.00,120.00),
	('CANON 60MM \"DOUBLE SEKA\" COULEUR SN','MC 1715-SN',3.00,86.00),
	('CANON 60MM A CLEF TOURNEVIS CUIVRE','MC 1716',3.00,144.00),
	('TALOCHE SIMPLE AVEC MANCHE EN PLASTIC','MC 1718-1',2.00,26.00),
	('TALOCHE A MOTIF AVEC MANCHE EN PLASTIC','MC 1718-2',2.00,26.00),
	('TALOCHE A MOTIF AVEC MANCHE EN BOIS','MC 1721-2',2.00,30.00),
	('TOURNEVIS','MC 1723',2.00,6.40),
	('BROSSE METALIQUE AVEC MANCHE EN PLASTIQUE','MC1724',2.00,16.00),
	('LIME POUR BOIS 14 INCH','MC1726-14',2.00,25.00),
	('TOURNEVIS','MC 1730',2.00,9.60),
	('CLEF A PIPE NUM10','MC 1732-10',2.00,14.00),
	('CLEF A PIPE NUM13','MC 1732-13',2.00,19.00),
	('CLEF A PIPE NUM 17','MC 1732-17',2.00,33.00),
	('CLEF A PIPE NUM 19','MC 1732-19',2.00,39.00),
	('CIE A MAIN','MC 1735',2.00,24.00),
	('3 MOTO TOYNYON 1METRE','MC1739',3.00,110.00),
	('3 MOTO TOYNYON 1.2METRE','MC 1740',3.00,120.00),
	('PINCEAU A PEINDRE -MANCHE EN PLASTIQUE','MC1742 10-15-20-25',5.00,5.60),
	('CIE POUR BRANCHES 24\'\'','MC 1745',2.00,33.00),
	('PIED DE FAUTEUIL 5.5CM/4.3CM','MC 1790',1.00,9.60),
	('RECHARGES POUR ROULEAU DE PEINTURE','MC1793',5.00,96.00),
	('LAME FLEX ULIRA','MC 1795',2.00,2.20),
	('PORTE MENTEAU MONO','MC 1796',1.00,12.00),
	('PORTE MENTEAU MONO','MC 1797',1.00,12.00),
	('Tournevis r?glable jaune double t?te','MC 1801',2.00,12.00),
	('TOURNEVIS CHROME 6inch t?te Americane','MC 1802',2.00,14.00),
	('TOURNEVIS CHROME 4inch T?te Americane','MC 1803',2.00,12.00),
	('CIE AMAIN \"POWER\"','mc1808',2.00,60.00),
	('CIE AMAIN \"POWER\"','mc1809',2.00,72.00),
	('CIE AMAIN \"POWER\"','mc1810',2.00,48.00),
	('3 50MM MAXI POWER','MC 1813-50',3.00,28.00),
	('3 60MM MAXI POWER','MC 1813-60',3.00,34.00),
	('3 70MM MAXI POWER','MC 1813-70',3.00,40.00),
	('CLEF DE SERRAGE FORME T NUM 25','MC 1816-2',2.00,16.00),
	('CLEF DE SERRAGE FORME T NUM 27','MC 1816-3',2.00,19.00),
	('CLEF DE SERRAGE FORME T NUM 30','MC 1816-4',2.00,22.00),
	('CLEF DE SERRAGE FORME T NUM 45','MC 1816-5',2.00,25.00),
	('CLEF DE SERRAGE FORME T NUM 50','MC 1816-6',2.00,28.00),
	('CLEF DE SERRAGE FORME T NUM 55','MC 1816-7',2.00,31.00),
	('CLEF PLAT CRENO 8\"','MC 1821-1',2.00,10.00),
	('CLEF PLAT CRENO 10\"','MC1821-2',2.00,12.00),
	('CLEF PLAT CRENO 13\"','MC 1821-3',2.00,15.00),
	('CLEF PLAT CRENO 14\"','MC 1821-4',2.00,16.00),
	('CLEF PLAT CRENO 17\"','MC 1821-5',2.00,20.00),
	('CLEF PLAT CRENO 19\"','MC 1821-6',2.00,26.00),
	('CLEF 24/27 POWER','MC 1822',2.00,16.00),
	('ENSEMBLE DE CLEF PLAT CRENEAU 7 PIECES','MC 1824',2.00,300.00),
	('CLEF PLAT NUM 8\"-10\'\'','MC 1825-1',2.00,11.00),
	('CLEF PLAT 10\"/13\"','MC 1825-2',2.00,13.00),
	('CLEF PLAT 14\"/17\"','MC 1825-4',2.00,18.00),
	('CLEF PLAT 17\"/19\"','MC 1825-5',2.00,20.00),
	('Cisaille num 24','MC 1829-2',2.00,180.00),
	('3 40mm L','MC 1831-L40',3.00,22.00),
	('3 50mm L','MC 1831-L50',3.00,28.00),
	('3 60mm L','MC 1831-L60',3.00,34.00),
	('3 40mm E2','MC 1831 S40',3.00,18.00),
	('3 50mm E3','MC 1831 S 50',3.00,24.00),
	('3 60mm E4','MC 1831 S 60',3.00,30.00),
	('3 70mm E5','MC 1831 S 70',3.00,34.00),
	('3 carr? chrom? 80mm','MC1832-80',3.00,60.00),
	('3 carr? chrom? 90mm','MC1832 90mm',3.00,70.00),
	('ENSEMBLE DE CLEF A PIPE POWER','MC 1844',2.00,170.00),
	('PORTE MENTEAU MONO 2','MC 1849',1.00,10.00),
	('PATIN METAL 22MM','MC 1850-2',1.00,2.80),
	('PATIN METAL 27MM','MC 1850-3',1.00,3.20),
	('SUPPORT DE TRINGLE OVALE FACE A FACE','MC 1851',1.00,2.60),
	('TARJETTE 29-33','MC 1853-L',1.00,22.00),
	('SUPPORT MARON CHOCOLAT AVEC VIS','MC1854',1.00,0.70),
	('Poign?e boule','MC 1856',1.00,32.00),
	('ENSEMBLE DE CLEFS SYPO TAILLE L','MC 1857 L',2.00,36.00),
	('ENSEMBLE DE CLEFS SYPO TAILLE M','MC 1857 M',2.00,30.00),
	('ENSEMBLE DE CLEFS SYPO TAILLE S','MC 1857 S',2.00,24.00),
	('ENSEMBLE DE CLEFS GRENAGE TAILLE L','MC 1858 L',2.00,38.00),
	('ENSEMBLE DE CLEFS GRENAGE TAILLE M','MC 1858 M',2.00,32.00),
	('ENSEMBLE DE CLEFS GRENAGE TAILLE S','MC 1858 S',2.00,26.00),
	('Pinces MC 229 MC228 MC227','MC229MC228MC227',2.00,16.00),
	('DOUCHETTE+FLEXIBLE BIDALUX BCM-04','MSTBCM-04',4.00,180.00),
	('COMBINE DE DOUCHE BIDALUX BCS-04','MSTBCS-04',4.00,270.00),
	('DOUCHETTE+FLEXIBLE BIDALUX BWM','MSTBWM',4.00,180.00),
	('Poign?e lisse evergold cl?,P 2086 CL','1',90.00,NULL),
	('Poign?e lisse evergold canon','P 2086 CY',1.00,90.00),
	('PALIERES/2 29-202 CHROME','PA 29-202',1.00,96.00),
	('Patin plastic Num 28','Pat pl 28',1.00,1.50),
	('PATIN PLASTIQUE MARON 22MM','PAT PL MR 22',1.00,1.00),
	('MONCHON MF 1/2 GOLD','PLOM711012',4.00,3.20),
	('MECANISME POUSSOIR SANPLAT','PLOM724106',4.00,123.00),
	('ABATTANT WC SANPLAST 2','PLOM724150',4.00,61.00),
	('COUDE WC ADAPTABLE SANPLAST','PLOM724503',4.00,80.00),
	('KIT WC SANPLAST + FLEXIBLE GRIS','PLOM728020',4.00,75.60),
	('BANDE RECEVEUR JUNY POUSSOIR','PLOMBN',4.00,55.00),
	('EVIER INOX 80*50 TOP EVIER','PLOMEVPFL',4.00,260.00),
	('MONCHON F+F1/2 IRON','PLOMMMF1/2',4.00,3.20),
	('PAIRE RACCORD IR NS 123713','PLOMPR',4.00,24.00),
	('SIPHON 10*10 FANSKI CP001 NS103752','PLOMS1010F',4.00,69.40),
	('TEFLON 20M B.T','PLOMT20BT',4.00,14.00),
	('TEFLON 50M SPARKS','PLOMT50S',4.00,16.00),
	('PORTE MENTEAU ROSE METAL','PMR MTL',1.00,9.00),
	('POIGNEE PIQUE A POINT CANON','PO/PIQ/CY',1.00,104.00),
	('POIGNEE PIQUE CHROME A POINT CLE','PO/PQ/K',1.00,104.00),
	('PORTE SERVIETTE 1','POR SER 1',4.00,68.00),
	('PORTE MENTEAU PLASTIQUE CARRE 4*','PORT/MT/PL/CAR',1.00,16.00),
	('PORTE MENTEAU PLASTIQUE 4* ROND','PORT/MT/PL/RND',1.00,18.00),
	('PROJECTEUR RECHARGEABLE 20WATT','PR0 RC',10.00,540.00),
	('PROTEGE PORTE EN CAOUTCHOUC','PR P CA',1.00,28.00),
	('MECANISME ECONO-POOL 3/6','QOPMT2P',4.00,180.00),
	('TEFLON FILLER 50M','QTF',4.00,15.00),
	('RECHARGES POUR CUTTEUR','RCG CUTT',2.00,6.50),
	('R?gulateur maron','REG MAR',1.00,3.20),
	('SIPHON 10*10 ITALY','RES10*10I',4.00,70.00),
	('SIPHON 15*15 ITALY','RES15*15I',4.00,102.00),
	('ROBINET LAVABO LONG','ROB LAV L',4.00,60.00),
	('Roulette 50mm a Plaque','ROUL 50 PL',1.00,8.40),
	('Roulette 50mm a tige','ROUL 50 Tg',1.00,8.60),
	('Roulette orange 40mm','ROUL OR 40',1.00,13.00),
	('Roulette orange 40mm Avec frein','ROUL OR 40 W/STOP',1.00,17.00),
	('Roulettes orange 50mm avec frein','ROUL OR 50 W/STOP',1.00,20.00),
	('ROULETTE ORANGE 75MM SANS FREIN','ROUL OR 75MM',1.00,37.00),
	('ROULETTE ORANGE 75MM AVEC FREIN','ROUL OR 75MM W/STOP',1.00,45.00),
	('Rouleau Peinture normal quality','RPNQ',5.00,24.00),
	('porte menteau 6 pieces','ry002',1.00,15.00),
	('PORTE MENTEAU SANS VIS AVEC BRAS','ry003',1.00,19.00),
	('EVIER BAREM 90*50* 304','SAFE304',4.00,340.00),
	('HUBLOT 1101/C OVAL','SAFH1101/C',10.00,48.00),
	('HUBLOT 1207/M ROND','SAFH1207/M',10.00,64.00),
	('HUBLOT 1208/C CARRE','SAFH 1208/C',10.00,83.00),
	('HUBLOT 1208/M CARRE','SAFH1208/M',10.00,83.00),
	('HUBLOT 1209/C RETANGULAIRE','SAFH1209/C',10.00,95.00),
	('HUBLOT 1209/M RETANGULAURE','SAFH1209/M',10.00,95.00),
	('CANIVEAU 50CM 1MM PLASTIQUE','SAYC50D1MM',4.00,200.00),
	('CANIVEAU STAINLESS STEEL 50CM 1MM','SAYC50S',4.00,650.00),
	('CANIVEAU STAINLESS STEEL 60S 1MM','SAYC60S',4.00,714.00),
	('CANIVEAU 40CM 1MM COUDE PLASTIQUE','SAYCC401MM',4.00,200.00),
	('SIPHON 10*10 COUDE 32','SAYS10*10C32',4.00,42.00),
	('siphon10*10 coude 50','SAYS10*10C50',4.00,42.00),
	('CANIVEAU STAINLESS STEEL 20CM 1MM','SAYSC20S',4.00,410.00),
	('Tournevis Double T?te','SCD 02',2.00,9.00),
	('Tournevis Double T?te Long','SCD 03',2.00,12.00),
	('Scie a main 40cm/45cm/50cm','SC MC 12-1',2.00,29.00),
	('FLEXIBLE 1.5M BLISTER IFOULKI','SNRF2SL',4.00,61.00),
	('ENSEMBLE 123052- 5PIECE DI BANYO','STME27P',4.00,230.00),
	('SUPPORT DVD','SUP DVD',7.00,50.00),
	('SUPPORT DE ROULEAU DE PEINTURE','SUP ROUL 1',5.00,7.40),
	('support pour tringle ovale','Sup tr ov 1',1.00,8.40),
	('SUPPOR TV MOBILE 35KG','SUP TV 35',7.00,176.00),
	('7 A 500 FIXE 23 POUSSES A 55 POUSSES','SUP TV A 500',7.00,96.00),
	('7 BM22 2EME','SUP TV BM 22',7.00,136.00),
	('SUPPORT BM24M MOBILE 26POUSSES A 55 POUSSES','SUP TV BM24M',7.00,260.00),
	('Support television fixe 32??/42??','Sup tv f 32/42',7.00,84.00),
	('Support de television 14 - 42 pousses','Sup tv xp 1200',7.00,48.00),
	('SYPHON EVIST 10*10*','SYP EV 10',4.00,46.00),
	('Cl? SYPO A2','SYPO A2',2.00,16.00),
	('Cl? SYPO A4','SYPO A4',2.00,18.00),
	('Cl? SYPO A5','SYPO A5',2.00,22.00),
	('Tenaille POWER 8\'\'','TA',2.00,20.00),
	('Tenaille POWER 10\'\'','TK',2.00,28.00),
	('Tenaille Normal','TN',2.00,15.00),
	('Tringle avec tete ananas','TR ANAN',1.00,72.00),
	('Tringle doree normale','TR DOR NR',1.00,27.00),
	('TRINGLE POUR DOUCHE EN PLASTIC','TR DOUCHE',1.00,80.00),
	('Tringle de placard ovale 4metres','TR PL 4M',1.00,20.00),
	('TRINGLE RAYEE 1.6 METRE','TR RY 1.6',1.00,34.00),
	('TRINGLE RAYEE 2 METRE','TR RY 2',1.00,34.00),
	('TRINGLE RAYEE 2.20 METRE','TR RY 2.2',1.00,34.00),
	('TRINGLE RAYEE 2.5 METRE','TR RY 2.5',1.00,34.00),
	('TRINGLE RAYEE 3 METRE','TR RY 3',1.00,34.00),
	('TRINGLE RAYEE 3.5 METRE','TR RY 3.5',1.00,34.00),
	('LAMPE LED 9WATT B22 BUSUN','INNO LED 9WB22',10.00,16.20),
	('LAMPE LED 9WATT E27 BUSUN','INNO LED 9WE27',10.00,16.20),
	('LAMPE LED 30WATT B22 BUSUN','INNO LED 30WB22',10.00,45.00),
	('LAMPE LED 30WATT E27 BUSUN','INNO LED 30WE27',10.00,45.00),
	('LAMPE LED 40WATT B22 BUSUN','INNO LED 40WB22',10.00,59.40),
	('LAMPE LED 40WATT E27 BUSUN','INNO LED 40WE27',10.00,59.40),
	('APPLIQUE SOLAIRE2X2','INNP AP SOL 2',10.00,198.00),
	('PROJECTEUR RVA COULEUR','INNO PR CLR',10.00,342.00),
	('BLOC SECOURS LAMPE 7681','INNO BL SC 7681',10.00,252.00),
	('AIMANT DE PORTE PM','VSTE  AIM PM',1.00,2.34),
	('AIMANT DE PORTE GM','VSTE  AIM GM',1.00,4.14),
	('BROSSE METALIQUE BASE BOIS CHROME','VSTE BR MT CHR',2.00,14.40),
	('BROSSE METALIQUE BASE BOIS GOLD','VSTE BR MT GP',2.00,14.40),
	('CANNON DE PORTE CHROME 60MM','VSTE CAN 60',3.00,64.80),
	('CHARNIERE INOX','VSTE CH/IN',2.00,17.10),
	('CHARNIERE EN VRAC','VSTE CHR VR',2.00,9.00),
	('SERRURE ENCASTREE E10','VSTE SER E10',1.00,90.00),
	('SERRURE ENCASTREE E3','VSTE SER E3',1.00,108.00),
	('SERRURE ENCASTREE DOUBLE SK K33','VSTE SER K33',1.00,113.40),
	('SERRURE CASTRE KINGHOUSE','VSTE SER KG',1.00,54.00),
	('VERROU DE TIROIR','VSTE VER TIR',1.00,32.40),
	('CISAILLE A TOLE','VSTE CIS TL',2.00,63.00),
	('CLEF A CLIQUET','VSTE CL CLQ',2.00,43.20),
	('CLEF A CLIQUET NUM1','VSTE CL CLQ1',2.00,81.00),
	('COMPTEUR DE CONFLEUR','VSTE COGF',2.00,93.60),
	('ENSEMBLE BRICOLAGE','VSTE ENS T61',2.00,39.60),
	('FER A SOUDER 40 WATT+LAITTON','VSTE FES40',2.00,54.00),
	('MECHES POUR HILTI SUR 3','VSTE ME HIT/3',2.00,11.25),
	('PINCE A GAZ NUM 1','VSTE PG1',2.00,61.20),
	('TOURNEVIS REGLAGES MULTICOULEUR','VSTE TOUR MT',2.00,11.70),
	('MESHES DE FORAGE DE MURES TAILLE6','VSTE MSH 6',2.00,6.30),
	('MESHES DE FORAGE DE MURES TAILLE8','VSTE MSH 8',2.00,7.20),
	('MESHES DE FORAGE DE MURES TAILLE10','VSTE MSH 10',2.00,9.45),
	('MESHES DE FORAGE DE MURES TAILLE12','VSTE MSH 12',2.00,12.60),
	('CHINIEUL','VSTE CHN',2.00,450.00),
	('CLEF GRIFEE REGLAGE','VSTE GR REG',2.00,162.00),
	('PISTOLET DE SOUDEUR','VSTE PIS SO',2.00,104.40),
	('MEULE A DISQUE ELETRIQUE','VSTE ML EL',2.00,450.00),
	('DISQUE DE COUPURE NUM 115X1.0','VSTE DSQ 115X1.0',2.00,8.10),
	('DISQUE DE COUPURE NUM 115X3.0','VSTE DSQ 115X3.0',2.00,9.90),
	('DISQUE DE COUPURE NUM 115X6.0','VSTE DSQ 115X6.0',2.00,11.70),
	('DISQUE DE COUPURE NUM 230X1.9','VSTE DSQ 230X1.9',2.00,22.50),
	('DISQUE DE COUPURE NUM 230X3.2','VSTE DSQ 230X3.2',2.00,23.40),
	('LUNETTE DE SOUDEUR','VSTE LUN SD',2.00,10.44),
	('NIVEAU SUR 3 QUALITE 1','VSTE NIV 1/3',2.00,61.20),
	('PAPIER COLANT 50METRES','VSTE PC 50MT',2.00,9.90),
	('PAPIER DE GRATAGE NUM180/220','VSTE PG180/220',2.00,342.00),
	('ROULETTE DE MESURE 20 METRES','VSTE RL 20',2.00,45.00),
	('ROULETTE DE MESURE 30 METRES','VSTE RL 30',2.00,54.00),
	('ROULETTE DE MESURE 50 METRES','VSTE RL 50',2.00,81.00),
	('SCIE CLOCHE GRAND MODELE','VSTE SC/CL GM',2.00,117.00),
	('SCIE CLOCHE PETIT MODELE','VSTE SC/CL PM',2.00,55.80),
	('VIS SPARX 3.5X30','VSTE VIS 3.5X30',2.00,18.00),
	('VIS SPARX 3X20','VSTE VIS 3X20',2.00,12.24),
	('VIS SPARX 4X20','VSTE VIS 4X20',2.00,17.10),
	('VIS SPARX 4X25','VSTE VIS 4X25',2.00,18.90),
	('VIS SPARX 4X30','VSTE VIS 4X30',2.00,25.20),
	('VIS SPARX 4X35','VSTE VIS 4X35',2.00,27.00),
	('VIS SPARX 4X40','VSTE VIS 4X40',2.00,30.60),
	('VIS SPARX 4X60','VSTE VIS 4X60',2.00,44.10),
	('VISEUSE EN BOITE  CHROME','VSTE VIS/BT/CHR',2.00,423.00),
	('VISEUSE EN BOITE  NOIRE','VSTE VIS/BT/NR',2.00,423.00),
	('VISEUSE NUM 1 GRAND MODELE','VSTE VS1 GM',2.00,1530.00),
	('VISEUSE NUM 1 PETIT MODELE','VSTE VS1 PM',2.00,1008.00),
	('ROBINET CHROME','VSTE ROB CH Y28',4.00,46.80),
	('ROBINET LAVABO','VSTE ROB LAV W17',4.00,176.40),
	('ROBINET LAVABO','VSTE ROB LAV W18',4.00,176.40),
	('ROBINET LAVABO','VSTE ROB LAV W2',4.00,156.60),
	('ROBINET LAVABO','VSTE ROB LAV Y30',4.00,279.00);

/*!40000 ALTER TABLE `TABLE 59` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TABLE 60
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TABLE 60`;

CREATE TABLE `TABLE 60` (
  `COL 1` varchar(47) DEFAULT NULL,
  `COL 2` varchar(19) DEFAULT NULL,
  `COL 3` int(2) DEFAULT NULL,
  `COL 4` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TABLE 60` WRITE;
/*!40000 ALTER TABLE `TABLE 60` DISABLE KEYS */;

INSERT INTO `TABLE 60` (`COL 1`, `COL 2`, `COL 3`, `COL 4`)
VALUES
	('Serrure \"ILARJI\"','138-T1/T2',1,50.00),
	('Pistolet pour Silicone num 1','164134',2,30.00),
	('Pistolet pour Silicone num 2','164134 B',2,26.00),
	('Embrasse de rideaux 1901','1901 - AB/GP',1,11.00),
	('Embrasse de rideaux 1903','1903 - AB/GP',1,11.00),
	('Embrasse de rideaux 1904','1904 - AB/GP',1,11.00),
	('Tournevis Testeur 63394','63394',2,6.60),
	('Embrasse de rideaux 701','701- AB/GP',1,12.00),
	('Embrasse de rideaux 703','703 -AB/GP',1,10.00),
	('Embrasse de rideaux A52','A52-AB/GP',1,11.00),
	('CHARNIERE HYDROLIQUE GM DADIS','ABCH',1,11.00),
	('SERRURE APPARENT EZGURRA','ABSAE',1,146.00),
	('SERRURE APPARENT LINE CLE SPECIAL','ABSAL',1,140.00),
	('Adh?sif Power 13mmx18mmx10y','AD13MM18MM10Y',6,3.40),
	('Adh?sif Power 13mmx18mmx14y','AD13MM18MM14Y',6,4.60),
	('Adh?sif Power 13mmx18mmx20y','AD13MM18MM20Y',6,6.00),
	('PRESSOSTAT PMS NOIR NS103732','AGRPRC',4,75.60),
	('BOUCHON 3/4 MAL CUIVRE IR','ARTBM3/4',4,3.20),
	('CLAPE A CUIVRE 1\'1/4','ARTCC11/4',4,69.12),
	('DOUCHETTE+FLEXIBLE SPA NS123771','ARTDFM',4,106.00),
	('EVIER INOX 96*43 TOP EVIER','ARTE96*43',4,260.00),
	('ENSEMBLE S.D.B NS123781','ARTESDB',4,180.00),
	('FLEXIBLE SANPLAST 1.5 BLANC','ARTF1.5',4,38.00),
	('Siphon ?vier 1 1/4 40 inox Sanplast','ARTF40MEB',4,21.00),
	('FLOTTEUR EN PLASTIQUE 7023','ARTF7023',4,67.20),
	('FLEXIBLE SANPLAST 1.2 BLANC','ARTFS1.2',4,33.60),
	('KIT WC SANPLAST+FLEXIBLE STAINLESS','ARTK+FSK',4,110.00),
	('KIT WC SANPLAST CHROME COMPLET','ARTKKC',4,44.00),
	('Kit wc Sanplast avec flexible gris long','ARTKL',4,82.00),
	('PASSOIR MITIGEUR EN CUIVRE FEMELLE','ARTPCF',4,10.00),
	('PASSOIR MITIGEUR EN CUIVRE MAL','ARTPCM',4,10.00),
	('REDUCTION1\'1/4*3/4 IRON','ARTR11/4*3/4',4,16.00),
	('REDUCTION 1/2*3/4 GOLD','ARTR1/2*3/4',4,3.20),
	('RALLONGE WC 40 SANPLAST','ARTR40S',4,69.40),
	('RALLONGE WC 50 SANPLAST','ARTR50S',4,80.00),
	('RALLONGE WC SPARKS TURKEY','ARTRBS',4,40.00),
	('RALLONGE WC SANPLAST + CLAPE','ARTRC',4,60.00),
	('SIPHON FLEXIBLE 40 INOX SANPLAST','ARTS40',4,15.80),
	('Siphon ? ?vier Inox + bande ? panier +p','ARTS 40 + TP',4,115.00),
	('Siphon ?vier double bac inox + bande A','ARTSD+TP',4,206.00),
	('SIPHON FLEXIBLE INOX 32 SANPLAST','ARTSF32',4,14.40),
	('TERFON LAVABO IZ FIX','ARTTL',4,8.00),
	('EVIER 40*50 304/2 ASIL ECO','AS21',4,220.00),
	('EVIER 90*50','ASE29',4,143.00),
	('EVIER 50*116 DOUBLE ASIL ENCASTRE','ASE50*116D',4,690.00),
	('EVIER 50*80 DOUBLE ASIL LAYON AS40.','ASE50*80D',4,516.00),
	('EVIER 50*80 ASIL DOUBLE ENCASTRE AS13','ASE50*80DE',4,600.00),
	('?chelle jaune 4','AYE3+1J',5,320.00),
	('?chelle chrome 5','AYE4+1',5,400.00),
	('?chelle jaune 5','AYE4+1J',5,400.00),
	('?chelle chrome 6','AYE5+1',5,480.00),
	('?chelle jaune 6','AYE5+1J',5,480.00),
	('Echelle chrome 7','AYE6+1',5,560.00),
	('Echelle jaune 7','AYE6+1J',5,560.00),
	('?chelle chrome 8','AYE7+1',5,640.00),
	('Echelle jaune 8','AYE7+1J',5,640.00),
	('?chelle chrome 9','AYE8+1',5,720.00),
	('Echelle jaune 9','AYE8+1J',5,720.00),
	('Echelle chrome 10','AYE9+1',5,800.00),
	('Echelle jaune 10','AYE9+1J',5,800.00),
	('Brosse de nettoyage num4','BNT 04',2,44.00),
	('Brosse de nettoyage num 6','BNT 06',2,62.00),
	('ROBINET EQUERRE ANG.VAL 1/2*1/2 LGR','BTLRA1/2*1/2',4,21.00),
	('SIPHON DE COUR 15*15 LGR','BTLSI1515',4,68.00),
	('BUTOIR 4002','BUT 4002',1,11.00),
	('BUTOIR 588','BUT 588',1,12.00),
	('BUTTOIR ROND','BUT RND',1,10.00),
	('3 264 Clef croissant','CAD 264 CR',3,13.00),
	('3 265 Clef croissant','CAD 265 CR',3,19.00),
	('3 266 Clef croissant','CAD 266 CR',3,27.00),
	('3 40mm','CAD40MM',3,106.00),
	('3 COULEUR 30 MM TABLEAU CARRE','cad col car 30',3,168.00),
	('3 COULEUR 30 MM TABLEAU ROND','CAD COL RND 30',3,168.00),
	('3 GUSAN num 1 263','CAD GUS 263',3,9.60),
	('3 GUSAN num 1 264','CAD GUS 264',3,11.60),
	('3 GUSAN num 1 265','CAD GUS 265',3,17.00),
	('3 GUSAN num 1 266','CAD GUS 266',3,23.00),
	('3 264 tournevis','CAD TOUR 264',3,12.00),
	('3 265 tournevis','CAD TOUR 265',3,18.00),
	('3 266 tournevis','CAD TOUR 266',3,26.00),
	('3 CASTRE 4 TIGES AVEC 5 CLEFS SP EZGURA','CA EZG 4TG',3,180.00),
	('CANON LINCE CUIVRE','CAN LIN',3,50.00),
	('Castre ?DAF? avec cle normale','CAS DAF NO',3,150.00),
	('Charni?re hydrolique \'\'EVERLEO\'\' GM','CH HYD EVER',1,10.40),
	('CISCEAUX TAILLEUR 240 MM','CIS T 240',2,66.00),
	('CISCEAUX TAILLEUR 270MM','CIS T 270',2,70.00),
	('Clef 19 plat creno','Cl 19 pl',2,8.00),
	('Clef a molettes \'\'MAC\'\' NUM 10','CM MAC 10\'\'',2,54.00),
	('Clef a molettes \'\'MAC\'\' NUM 12','CM MAC 12\'\'',2,66.00),
	('Cutteur normal','CUT NO',2,2.80),
	('Cutteur+recharge','CUT RCG',2,16.00),
	('Cutteur num 1 simple','cutt 1s',2,11.00),
	('ENSEMBLE 121064- 7PIECES + MIROIR','DIS8042B',4,306.00),
	('ENSEMBLE 121272 7PIECES + MIROIR','DIS8081B',4,480.00),
	('ENSEMBLE 121072 7PIECES+MIROIR','DIS8081BH',4,480.00),
	('ENSEMBLE 121264 7PIECES+MIROIR','DIS8081BL',4,480.00),
	('7 MOBILE 24','DISS24',7,90.00),
	('Ensemble 121064 6pieces+miroire','DISSACOEN10',4,304.00),
	('CISEAUX PPR ORIGINAL NS 144850','DROCO',4,116.00),
	('ROULEAU DE PEINTURE BRAVO JAUNE 2-2','DRORL6',5,25.00),
	('SIPHON 15*15 CHROME REBERO','DRX15*15',4,70.00),
	('BOUCHON FEMELLE 20 DIZAYN VERT 13802','DZVBF20',4,2.10),
	('BOUCHON MALE 20 VERT 12100 DIZAYN','DZVBM20',4,1.16),
	('BOUCHON MALE25 VERT 12102 DIZAYN','DZVBM25',4,2.10),
	('COUDE 20*20 VERT 13602 DIZAYN','DZVC20',4,1.70),
	('COUDE 20 45? DIZAYN VERT 13624','DZVC20*45?',4,1.70),
	('COUDE 25*25 VERT 13604 DIZAYN','DZVC25',4,2.50),
	('COUDE APPLIQUE MIT 20 VERT 11114','DZVCA20',4,35.50),
	('COUDE APPLIQUE 20 VERT 14102 DIZAYN','DZVCAA20',4,14.50),
	('COLLIER DOUBLE VERT12228 DIZAYN','DZVCD20',4,2.10),
	('COUDE DOS D\'ANE 20 14110 DIZAYN','DZVCDA20',4,9.50),
	('COUDE F90 20*1/2 VERT 11602 DIZAYN','DZVCF20GM',4,19.00),
	('COUDE FEMELLE 25*3/4 VERT 14608 DIZAYN','DZVCF25',4,20.80),
	('COUDE FEMELLE 25*1/2 DIZAYN VERT 14606','DZVCF25*1/2',4,20.80),
	('COLLIER 20 VERT 12212 DIZAYN','DZVCO20',4,1.60),
	('MONCHON 20 VERT 13402 DIZAYN','DZVM20',4,1.30),
	('MONCHON 25 VERT 13404 DIZAYN','DZVM25',4,1.70),
	('REDUCTION 20*25 13504 VERT DIZAYN','DZVR20*25',4,2.10),
	('RACCORD FEMELLE 20*1/2 VERT 14202 DIZAYN','DZVRF20',4,12.40),
	('RACCORD FEMELLE 25*3/4 VERT 14206','DZVRF25',4,18.70),
	('RACCORD MAL 20*1/2 VERT 14402 DIZAYN','DZVRM20',4,15.30),
	('RACCORD MAL25*3/4 VERT 14406','DZVRM25',4,21.60),
	('RACCORD MAL25*1/2 VERT 14408','DZVRM25*1/2',4,21.60),
	('TUBE PPR 25*3/4 VERT 10304 DIZAYN','DZVT25',4,16.40),
	('TE 20*20 VERT 13702 DIZAYN','DZVTE20',4,2.20),
	('TE 25*25 VERT 13704 DIZAYN','DZVTE25',4,2.70),
	('TE FEMELLE 20*1/2 VERT 14702 DIZAYN','DZVTF20',4,13.60),
	('TE FEMELLE 25*1/2*25 VERT 14706 DIZAYN','DZVTF25*1/2',4,22.00),
	('VANNE PPR 25 TETE ROND VERT 14806','DZVV20',4,117.00),
	('VANNE PPR 20 TETE ROND VERT 14804','DZVV20TR',4,104.00),
	('VANNE A VOLANT 20 DIZAYN 14800','DZVVTR20',4,53.50),
	('9 ORANGE 5 STAR BAREME FLEX','ENDT060',9,612.00),
	('9 NOIR AVEC LIGNE BLEU 8MM 50M','ENDTCN50',9,9.90),
	('9 D\'ARROSAGE PRESTIGE TRANSPARENT 3/4 50 metres','ENDTT50',9,24.00),
	('Equerre sur 4','Eq /4',1,5.00),
	('EQUERRE MONTABLE NUM 10','EQ MOT 10',1,60.00),
	('EQUERRE MONTABLE NUM 12','EQ MOT 12',1,68.00),
	('R?gulateur blanc','FF 89152',1,2.70),
	('GLISSIERE COULISSE DE TIROIR NUM 12','GL TIR 12',1,14.00),
	('GLISSIERE COULISSE DE TIROIR NUM 14','GL TIR 14',1,16.00),
	('GLISSIERE COULISSE DE TIROIR NUM 16','GL TIR 16',1,18.00),
	('GLISSIERE COULISSE DE TIROIR NUM 18','GL TIR 18',1,20.00),
	('GLISSIERE COULISSE DE TIROIR NUM 20','GL TIR 20',1,24.00),
	('SIPHON EVIER PM 40 14162','GP14162',4,24.00),
	('SIPHON EVIER INOX DOUBLE','GP24212',4,84.00),
	('Gratoires bilota 7-8-9','GR BIL7-8-9',2,10.00),
	('Boite a outil 3 lock h 180','h 180',2,120.00),
	('COIN SDB TRANSPARENT PS','HKPS',4,190.00),
	('COF ASDB BL NOVEL7 PC CACH/C','I070633',4,340.00),
	('MITIGEUR LAVABO LAVIST 8171002','INM8171002',4,340.00),
	('MITIGEUR CUISINE LAVIST 8171004','INM8171004',4,340.00),
	('MITIGEURS DOUCHE LAVIST 8171005','INM8171005',4,420.00),
	('MITIGEUR CUISINE LAVIST 8171007','INM8171007',4,420.00),
	('POIGNEE CLE INAN AS-207 NICKEL SATIN','INP207C',1,86.00),
	('POIGNEE CANNO INAN AS-207 NICKEL','INP207CA',1,86.00),
	('POIGNEE CANNO INAN AS-207 ANTIQUE AB','INP207CAAM',1,86.00),
	('POIGNEE CLE INAN AS-207 ANTIQUE AB','INP207CAM',1,86.00),
	('Poign?e wc INAN AS-207 nickel satin','INP207W',1,96.00),
	('POIGNEE WC INAN AS-207 ANTIQUE AB','INP207WAM',1,96.00),
	('POIGNEE INAN WC AS-250 MALAK ANTIQUE AB','INP250AMW',1,126.00),
	('POIGNEE INAN CLE AS-250 MALAK NICKEL','INP250NSMC',1,116.00),
	('POIGNEE INAN CANNO AS-250 MALAK NICKEL','INP250NSMCA',1,116.00),
	('POIGNEE INAN WC AS-250 MALAK NICKEL','INP250NSMW',1,126.00),
	('POIGNEE ANON INAN AS221','INPC221',1,96.00),
	('POIGNEE CLE INAN AS-222','INPC222',1,102.00),
	('POIGNEE CLE AS 221','INPCL221',1,96.00),
	('POIGNEE CANNO INAN AS-222','INPCN222',1,102.00),
	('Poign?e pali?re 250 antique','Inpp 250 AM',1,144.00),
	('POIGNEE PALIERE 250 MALAK INAN','INPP250NS',1,144.00),
	('POIGNEE INAN CANNO PALIERE ANTIQUE','INPPCA',1,102.00),
	('POIGNEE PALIERE NICKEL SATIN INAN','INPPCNS',1,102.00),
	('POIGNE WC INAN 221','INPW221',1,106.00),
	('POIGNEE WC INAN AS-222','INPW222',1,112.00),
	('SUPPORT DE REFRIGERATEUR 64/74','IS0011/64',8,180.00),
	('SUPPORT DE REFRIGERATEUR 64/64','Isoo10/64',8,172.00),
	('7 LSA19-226. 14-42 Mobile','ISOO15',7,160.00),
	('Equerre en fer forg? 20','ISOO3/20',1,11.00),
	('Equerre en fer forg? 25','ISOO3/25',1,13.00),
	('Equerre en fer forg? 30','ISOO3/30',1,15.00),
	('Equerre en fer forg? 35','ISOO3/35',1,17.00),
	('Equerre en fer forg? 40','ISOO3/40',1,19.00),
	('MIROIR 70*90 REF GUITAR SF','IYH- 1152D',4,210.00),
	('TASSO EQUERRE PLASTIC MARRON','KL 0046',1,0.60),
	('7 M22 MOBILE 19-42 POUSSES','M22',7,180.00),
	('Truelle Power Rectangulaire','MC12-11-20',2,28.00),
	('3 bicyclette MC12-14','MC12-14',3,32.00),
	('3 moto MC12-15','MC12-15',3,38.00),
	('3 moto MC12-16','MC12-16',3,60.00),
	('3 bicyclette MC12-17','MC12-17',3,17.00),
	('3 bicyclette MC12-18','MC12-18',3,19.00),
	('Cl? de serrage MC 12-19','MC12-19',2,20.00),
	('TOURNEVIS DE POCHE EN GRENAGE','MC12-6***',2,17.00),
	('Pince 12/9-6','MC12/9-6',2,24.00),
	('S?cateur num 8','mc1302-1',2,23.00),
	('S?cateur num 10','mc1302-2',2,28.00),
	('Tournevis pour gsm','mc1303',2,26.00),
	('Marteau pour carelage 375g','mc1311-1',2,21.00),
	('Marteau pour carelage 475g','mc1311-2',2,21.00),
	('Cl? sypo 9 pcs en grenage long','MC 1317',2,28.00),
	('Cl? sypo 9pcs en grenage medium','MC 1318 / A3',2,24.00),
	('Clef croise noir','MC 1320',2,60.00),
	('Scie a main \"power\"','mc1321',2,20.00),
	('Gratoires pour carrosserie','mc1323',2,6.60),
	('Pinceau artiste num1-12','mc1324',5,25.00),
	('Cl? ? molette Taille 8 - 10 - 12','MC1335-1-2-3',2,37.00),
	('Roulette 40mm metalique','MC1336',1,4.20),
	('Pince a gaz num 10','mc1337',2,42.00),
	('Truelle 16cm/ plastique','mc1338',2,17.00),
	('Chamoisette en pva 66cm','mc1345',5,25.00),
	('brosses a peindre en 4pieces','mc1347',5,24.00),
	('ROULETTE 40 MM METALIQUE AVEC TIGE','MC 1501',1,4.50),
	('ROULETTE 50MM METALIQUE PLAQUE','MC 1502-1',1,6.50),
	('ROULETTE GRISE 50MM PLAQUE','MC 1505-1',1,9.00),
	('ROULETTE GRISE 50MM AVEC TIGE','MC 1505-2',1,9.00),
	('CUTTEUR GRIS POUR CUIR ET TISSUS 1516','MC 1516',2,11.00),
	('ENSEMBLE DE TOURNEVIS 7PIECES 1517','MC 1517',2,112.00),
	('ENSEMBLE DE TOURNEVIS 6PIECES \'\' POWER \'\'','MC1518',2,48.00),
	('TOURNEVIS TESTEUR 2/1 PETIT','MC 1519-1',2,3.00),
	('TOURNEVIS TESTEUR 2/1 MOYEN','MC 1519-2',2,4.50),
	('GRATOIRES 1,5\'\'-2\'\'-2.5\'\'-3\'\'','MC1520 1-2-3-4',2,5.40),
	('CLEF GRIFFE 10\"','MC 1521-1',2,38.00),
	('CLEF GRIFFE 12\'\'','MC 1521-2',2,44.00),
	('CLEF GRIFFE 14\"','mc 1521-3',2,50.00),
	('Clef griffe num 18','Mc 1521-4',2,70.00),
	('Clef griffe num 24','Mc 1521-5',2,104.00),
	('ENSEMBLE DE LIMES','MC 1526',2,104.00),
	('3 MOTO 1528','MC 1528',3,110.00),
	('3 POUR MOTO','MC 1602',3,110.00),
	('EMBRASSE POUR RIDEAUX AB/GP','MC 1605',1,10.00),
	('EMBRASSE POUR RIDEAUX AB/GP','MC 1606',1,10.00),
	('EMBRASSES RIDEAUX 1607','MC 1607',1,10.00),
	('EMBRASSE POUR RIDEAUX AB/GP','MC 1608',1,11.00),
	('SUPPORTS EN INNOX POUR VITRES','MC 1610',1,13.00),
	('PORTE MENTEAU 4 PIECES','MC1611-4',1,50.00),
	('PORTE MENTEAU 5 PIECES','MC1611-5',1,60.00),
	('PORTE MENTEAU 6 PIECES','MC 1611-6',1,70.00),
	('PORTE MENTEAU 3 PIECES','MC 1612-3',1,32.00),
	('PORTE MENTEAU 4 PIECES','MC1612-4',1,42.00),
	('PORTE MENTEAU 5 PIECES','MC1612-5',1,52.00),
	('PORTE MENTEAU 3 PIECES','MC1613-3',1,60.00),
	('PORTE MENTEAU 4 PIECES','MC1613-4',1,72.00),
	('PORTE MENTEAU 5 PIECES','MC 1613-5',1,84.00),
	('POIGNEE CIGARE CYLINDRE','MC 1614 C',1,80.00),
	('POIGNEE CIGARE PETIT TROU','MC 1614 K',1,80.00),
	('POIGNEE CIGARE COMDAMNATION','MC 1614 WC',1,90.00),
	('ROULETTE COULEUR 40MM A PLAQUE AVEC FREIN','MC 1615-40',1,7.60),
	('ROULETTE COULEUR 50MM A PLAQUE AVEC FREIN','MC 1615-50',1,9.60),
	('3 PLACARD Everbright couleur AB','Mc 1616 AB',1,30.00),
	('3 PLACARD Everbright couleur AC','MC 1616 AC',1,30.00),
	('3 PLACARD Everbright couleur CP','MC 1616 CP',1,30.00),
	('3 PLACARD Everbright couleur GP','MC 1616 GP',1,30.00),
	('TOURNEVIS DOUBLE TETE REVERSIBLE 2/1','MC 1625',2,12.00),
	('TOURNEVIS DOUBLE TETE AVEC REGLAGE','MC 1625-1',2,11.00),
	('Support bateau couleur BLACK','MC 1626 BL',1,36.00),
	('Support bateau couleur CP','MC 1626 CP',1,36.00),
	('Support bateau couleur SS','Mc 1626 SS',1,36.00),
	('ENSEMBLE D\'EMBRASSES AVEC CHRISTALIN','MC 1627',1,64.00),
	('TIRETTE CHROME CIGARRE 12MM/128','MC 1632-128',1,8.60),
	('TIRETTE CHROME CIGARRE 12MM/160','MC1632-160',1,9.60),
	('TIRETTE CHROME CIGARRE 12MM/192','MC 1632-192',1,16.00),
	('TIRETTE CHROME CIGARRE 12MM/96','MC 1632-96',1,7.60),
	('POIGNEE BOULE POUR PORTES PRICIPALES','MC 1634-2',1,30.00),
	('POIGNEE BOULE POUR PORTES PRICIPALES','MC 1634-3',1,30.00),
	('POIGNEE BOULE POUR PORTES PRICIPALES','MC 1634-4',1,30.00),
	('GRATOIRES 160mm/180mm/200mm','MC 1635',2,18.00),
	('TRACEUR DE MACON','MC 1701',2,9.00),
	('ENSEMBLE DE TOURNEVIS 6PIECES','MC 1702',2,72.00),
	('Tournevis multi-t?tes','MC 171',2,16.00),
	('Cl? ? molette intertool num10','MC 1710-10',2,54.00),
	('Cl? ? molette intertool num12','MC1710-12',2,64.00),
	('Cl? ? molette intertool num 8','MC1710-8',2,44.00),
	('PORTE MENTEAU - SS-','MC 1711',1,12.00),
	('SERRURE FF 120MM','MC 1713',3,120.00),
	('CANON 60MM \"DOUBLE SEKA\" COULEUR SN','MC 1715-SN',3,86.00),
	('CANON 60MM A CLEF TOURNEVIS CUIVRE','MC 1716',3,144.00),
	('TALOCHE SIMPLE AVEC MANCHE EN PLASTIC','MC 1718-1',2,26.00),
	('TALOCHE A MOTIF AVEC MANCHE EN PLASTIC','MC 1718-2',2,26.00),
	('TALOCHE A MOTIF AVEC MANCHE EN BOIS','MC 1721-2',2,30.00),
	('TOURNEVIS','MC 1723',2,6.40),
	('BROSSE METALIQUE AVEC MANCHE EN PLASTIQUE','MC1724',2,16.00),
	('LIME POUR BOIS 14 INCH','MC1726-14',2,25.00),
	('TOURNEVIS','MC 1730',2,9.60),
	('CLEF A PIPE NUM10','MC 1732-10',2,14.00),
	('CLEF A PIPE NUM13','MC 1732-13',2,19.00),
	('CLEF A PIPE NUM 17','MC 1732-17',2,33.00),
	('CLEF A PIPE NUM 19','MC 1732-19',2,39.00),
	('CIE A MAIN','MC 1735',2,24.00),
	('3 MOTO TOYNYON 1METRE','MC1739',3,110.00),
	('3 MOTO TOYNYON 1.2METRE','MC 1740',3,120.00),
	('PINCEAU A PEINDRE -MANCHE EN PLASTIQUE','MC1742 10-15-20-25',5,5.60),
	('CIE POUR BRANCHES 24\'\'','MC 1745',2,33.00),
	('PIED DE FAUTEUIL 5.5CM/4.3CM','MC 1790',1,9.60),
	('RECHARGES POUR ROULEAU DE PEINTURE','MC1793',5,96.00),
	('LAME FLEX ULIRA','MC 1795',2,2.20),
	('PORTE MENTEAU MONO','MC 1796',1,12.00),
	('PORTE MENTEAU MONO','MC 1797',1,12.00),
	('Tournevis r?glable jaune double t?te','MC 1801',2,12.00),
	('TOURNEVIS CHROME 6inch t?te Americane','MC 1802',2,14.00),
	('TOURNEVIS CHROME 4inch T?te Americane','MC 1803',2,12.00),
	('CIE AMAIN \"POWER\"','mc1808',2,60.00),
	('CIE AMAIN \"POWER\"','mc1809',2,72.00),
	('CIE AMAIN \"POWER\"','mc1810',2,48.00),
	('3 50MM MAXI POWER','MC 1813-50',3,28.00),
	('3 60MM MAXI POWER','MC 1813-60',3,34.00),
	('3 70MM MAXI POWER','MC 1813-70',3,40.00),
	('CLEF DE SERRAGE FORME T NUM 25','MC 1816-2',2,16.00),
	('CLEF DE SERRAGE FORME T NUM 27','MC 1816-3',2,19.00),
	('CLEF DE SERRAGE FORME T NUM 30','MC 1816-4',2,22.00),
	('CLEF DE SERRAGE FORME T NUM 45','MC 1816-5',2,25.00),
	('CLEF DE SERRAGE FORME T NUM 50','MC 1816-6',2,28.00),
	('CLEF DE SERRAGE FORME T NUM 55','MC 1816-7',2,31.00),
	('CLEF PLAT CRENO 8\"','MC 1821-1',2,10.00),
	('CLEF PLAT CRENO 10\"','MC1821-2',2,12.00),
	('CLEF PLAT CRENO 13\"','MC 1821-3',2,15.00),
	('CLEF PLAT CRENO 14\"','MC 1821-4',2,16.00),
	('CLEF PLAT CRENO 17\"','MC 1821-5',2,20.00),
	('CLEF PLAT CRENO 19\"','MC 1821-6',2,26.00),
	('CLEF 24/27 POWER','MC 1822',2,16.00),
	('ENSEMBLE DE CLEF PLAT CRENEAU 7 PIECES','MC 1824',2,300.00),
	('CLEF PLAT NUM 8\"-10\'\'','MC 1825-1',2,11.00),
	('CLEF PLAT 10\"/13\"','MC 1825-2',2,13.00),
	('CLEF PLAT 14\"/17\"','MC 1825-4',2,18.00),
	('CLEF PLAT 17\"/19\"','MC 1825-5',2,20.00),
	('Cisaille num 24','MC 1829-2',2,180.00),
	('3 40mm L','MC 1831-L40',3,22.00),
	('3 50mm L','MC 1831-L50',3,28.00),
	('3 60mm L','MC 1831-L60',3,34.00),
	('3 40mm E2','MC 1831 S40',3,18.00),
	('3 50mm E3','MC 1831 S 50',3,24.00),
	('3 60mm E4','MC 1831 S 60',3,30.00),
	('3 70mm E5','MC 1831 S 70',3,34.00),
	('3 carr? chrom? 80mm','MC1832-80',3,60.00),
	('3 carr? chrom? 90mm','MC1832 90mm',3,70.00),
	('ENSEMBLE DE CLEF A PIPE POWER','MC 1844',2,170.00),
	('PORTE MENTEAU MONO 2','MC 1849',1,10.00),
	('PATIN METAL 22MM','MC 1850-2',1,2.80),
	('PATIN METAL 27MM','MC 1850-3',1,3.20),
	('SUPPORT DE TRINGLE OVALE FACE A FACE','MC 1851',1,2.60),
	('TARJETTE 29-33','MC 1853-L',1,22.00),
	('SUPPORT MARON CHOCOLAT AVEC VIS','MC1854',1,0.70),
	('Poign?e boule','MC 1856',1,32.00),
	('ENSEMBLE DE CLEFS SYPO TAILLE L','MC 1857 L',2,36.00),
	('ENSEMBLE DE CLEFS SYPO TAILLE M','MC 1857 M',2,30.00),
	('ENSEMBLE DE CLEFS SYPO TAILLE S','MC 1857 S',2,24.00),
	('ENSEMBLE DE CLEFS GRENAGE TAILLE L','MC 1858 L',2,38.00),
	('ENSEMBLE DE CLEFS GRENAGE TAILLE M','MC 1858 M',2,32.00),
	('ENSEMBLE DE CLEFS GRENAGE TAILLE S','MC 1858 S',2,26.00),
	('Pinces MC 229 MC228 MC227','MC229MC228MC227',2,16.00),
	('DOUCHETTE+FLEXIBLE BIDALUX BCM-04','MSTBCM-04',4,180.00),
	('COMBINE DE DOUCHE BIDALUX BCS-04','MSTBCS-04',4,270.00),
	('DOUCHETTE+FLEXIBLE BIDALUX BWM','MSTBWM',4,180.00),
	('Poign?e lisse evergold cl?','P 2086 CL',1,90.00),
	('Poign?e lisse evergold canon','P 2086 CY',1,90.00),
	('PALIERES/2 29-202 CHROME','PA 29-202',1,96.00),
	('Patin plastic Num 28','Pat pl 28',1,1.50),
	('PATIN PLASTIQUE MARON 22MM','PAT PL MR 22',1,1.00),
	('MONCHON MF 1/2 GOLD','PLOM711012',4,3.20),
	('MECANISME POUSSOIR SANPLAT','PLOM724106',4,123.00),
	('ABATTANT WC SANPLAST 2','PLOM724150',4,61.00),
	('COUDE WC ADAPTABLE SANPLAST','PLOM724503',4,80.00),
	('KIT WC SANPLAST + FLEXIBLE GRIS','PLOM728020',4,75.60),
	('BANDE RECEVEUR JUNY POUSSOIR','PLOMBN',4,55.00),
	('EVIER INOX 80*50 TOP EVIER','PLOMEVPFL',4,260.00),
	('MONCHON F+F1/2 IRON','PLOMMMF1/2',4,3.20),
	('PAIRE RACCORD IR NS 123713','PLOMPR',4,24.00),
	('SIPHON 10*10 FANSKI CP001 NS103752','PLOMS1010F',4,69.40),
	('TEFLON 20M B.T','PLOMT20BT',4,14.00),
	('TEFLON 50M SPARKS','PLOMT50S',4,16.00),
	('PORTE MENTEAU ROSE METAL','PMR MTL',1,9.00),
	('POIGNEE PIQUE A POINT CANON','PO/PIQ/CY',1,104.00),
	('POIGNEE PIQUE CHROME A POINT CLE','PO/PQ/K',1,104.00),
	('PORTE SERVIETTE 1','POR SER 1',4,68.00),
	('PORTE MENTEAU PLASTIQUE CARRE 4*','PORT/MT/PL/CAR',1,16.00),
	('PORTE MENTEAU PLASTIQUE 4* ROND','PORT/MT/PL/RND',1,18.00),
	('PROJECTEUR RECHARGEABLE 20WATT','PR0 RC',10,540.00),
	('PROTEGE PORTE EN CAOUTCHOUC','PR P CA',1,28.00),
	('MECANISME ECONO-POOL 3/6','QOPMT2P',4,180.00),
	('TEFLON FILLER 50M','QTF',4,15.00),
	('RECHARGES POUR CUTTEUR','RCG CUTT',2,6.50),
	('R?gulateur maron','REG MAR',1,3.20),
	('SIPHON 10*10 ITALY','RES10*10I',4,70.00),
	('SIPHON 15*15 ITALY','RES15*15I',4,102.00),
	('ROBINET LAVABO LONG','ROB LAV L',4,60.00),
	('Roulette 50mm a Plaque','ROUL 50 PL',1,8.40),
	('Roulette 50mm a tige','ROUL 50 Tg',1,8.60),
	('Roulette orange 40mm','ROUL OR 40',1,13.00),
	('Roulette orange 40mm Avec frein','ROUL OR 40 W/STOP',1,17.00),
	('Roulettes orange 50mm avec frein','ROUL OR 50 W/STOP',1,20.00),
	('ROULETTE ORANGE 75MM SANS FREIN','ROUL OR 75MM',1,37.00),
	('ROULETTE ORANGE 75MM AVEC FREIN','ROUL OR 75MM W/STOP',1,45.00),
	('Rouleau Peinture normal quality','RPNQ',5,24.00),
	('porte menteau 6 pieces','ry002',1,15.00),
	('PORTE MENTEAU SANS VIS AVEC BRAS','ry003',1,19.00),
	('EVIER BAREM 90*50* 304','SAFE304',4,340.00),
	('HUBLOT 1101/C OVAL','SAFH1101/C',10,48.00),
	('HUBLOT 1207/M ROND','SAFH1207/M',10,64.00),
	('HUBLOT 1208/C CARRE','SAFH 1208/C',10,83.00),
	('HUBLOT 1208/M CARRE','SAFH1208/M',10,83.00),
	('HUBLOT 1209/C RETANGULAIRE','SAFH1209/C',10,95.00),
	('HUBLOT 1209/M RETANGULAURE','SAFH1209/M',10,95.00),
	('CANIVEAU 50CM 1MM PLASTIQUE','SAYC50D1MM',4,200.00),
	('CANIVEAU STAINLESS STEEL 50CM 1MM','SAYC50S',4,650.00),
	('CANIVEAU STAINLESS STEEL 60S 1MM','SAYC60S',4,714.00),
	('CANIVEAU 40CM 1MM COUDE PLASTIQUE','SAYCC401MM',4,200.00),
	('SIPHON 10*10 COUDE 32','SAYS10*10C32',4,42.00),
	('siphon10*10 coude 50','SAYS10*10C50',4,42.00),
	('CANIVEAU STAINLESS STEEL 20CM 1MM','SAYSC20S',4,410.00),
	('Tournevis Double T?te','SCD 02',2,9.00),
	('Tournevis Double T?te Long','SCD 03',2,12.00),
	('Scie a main 40cm/45cm/50cm','SC MC 12-1',2,29.00),
	('FLEXIBLE 1.5M BLISTER IFOULKI','SNRF2SL',4,61.00),
	('ENSEMBLE 123052- 5PIECE DI BANYO','STME27P',4,230.00),
	('SUPPORT DVD','SUP DVD',7,50.00),
	('SUPPORT DE ROULEAU DE PEINTURE','SUP ROUL 1',5,7.40),
	('support pour tringle ovale','Sup tr ov 1',1,8.40),
	('SUPPOR TV MOBILE 35KG','SUP TV 35',7,176.00),
	('7 A 500 FIXE 23 POUSSES A 55 POUSSES','SUP TV A 500',7,96.00),
	('7 BM22 2EME','SUP TV BM 22',7,136.00),
	('SUPPORT BM24M MOBILE 26POUSSES A 55 POUSSES','SUP TV BM24M',7,260.00),
	('Support television fixe 32??/42??','Sup tv f 32/42',7,84.00),
	('Support de television 14 - 42 pousses','Sup tv xp 1200',7,48.00),
	('SYPHON EVIST 10*10*','SYP EV 10',4,46.00),
	('Cl? SYPO A2','SYPO A2',2,16.00),
	('Cl? SYPO A4','SYPO A4',2,18.00),
	('Cl? SYPO A5','SYPO A5',2,22.00),
	('Tenaille POWER 8\'\'','TA',2,20.00),
	('Tenaille POWER 10\'\'','TK',2,28.00),
	('Tenaille Normal','TN',2,15.00),
	('Tringle avec tete ananas','TR ANAN',1,72.00),
	('Tringle doree normale','TR DOR NR',1,27.00),
	('TRINGLE POUR DOUCHE EN PLASTIC','TR DOUCHE',1,80.00),
	('Tringle de placard ovale 4metres','TR PL 4M',1,20.00),
	('TRINGLE RAYEE 1.6 METRE','TR RY 1.6',1,34.00),
	('TRINGLE RAYEE 2 METRE','TR RY 2',1,34.00),
	('TRINGLE RAYEE 2.20 METRE','TR RY 2.2',1,34.00),
	('TRINGLE RAYEE 2.5 METRE','TR RY 2.5',1,34.00),
	('TRINGLE RAYEE 3 METRE','TR RY 3',1,34.00),
	('TRINGLE RAYEE 3.5 METRE','TR RY 3.5',1,34.00),
	('LAMPE LED 9WATT B22 BUSUN','INNO LED 9WB22',10,16.20),
	('LAMPE LED 9WATT E27 BUSUN','INNO LED 9WE27',10,16.20),
	('LAMPE LED 30WATT B22 BUSUN','INNO LED 30WB22',10,45.00),
	('LAMPE LED 30WATT E27 BUSUN','INNO LED 30WE27',10,45.00),
	('LAMPE LED 40WATT B22 BUSUN','INNO LED 40WB22',10,59.40),
	('LAMPE LED 40WATT E27 BUSUN','INNO LED 40WE27',10,59.40),
	('APPLIQUE SOLAIRE2X2','INNP AP SOL 2',10,198.00),
	('PROJECTEUR RVA COULEUR','INNO PR CLR',10,342.00),
	('BLOC SECOURS LAMPE 7681','INNO BL SC 7681',10,252.00),
	('AIMANT DE PORTE PM','VSTE  AIM PM',1,2.34),
	('AIMANT DE PORTE GM','VSTE  AIM GM',1,4.14),
	('BROSSE METALIQUE BASE BOIS CHROME','VSTE BR MT CHR',2,14.40),
	('BROSSE METALIQUE BASE BOIS GOLD','VSTE BR MT GP',2,14.40),
	('CANNON DE PORTE CHROME 60MM','VSTE CAN 60',3,64.80),
	('CHARNIERE INOX','VSTE CH/IN',2,17.10),
	('CHARNIERE EN VRAC','VSTE CHR VR',2,9.00),
	('SERRURE ENCASTREE E10','VSTE SER E10',1,90.00),
	('SERRURE ENCASTREE E3','VSTE SER E3',1,108.00),
	('SERRURE ENCASTREE DOUBLE SK K33','VSTE SER K33',1,113.40),
	('SERRURE CASTRE KINGHOUSE','VSTE SER KG',1,54.00),
	('VERROU DE TIROIR','VSTE VER TIR',1,32.40),
	('CISAILLE A TOLE','VSTE CIS TL',2,63.00),
	('CLEF A CLIQUET','VSTE CL CLQ',2,43.20),
	('CLEF A CLIQUET NUM1','VSTE CL CLQ1',2,81.00),
	('COMPTEUR DE CONFLEUR','VSTE COGF',2,93.60),
	('ENSEMBLE BRICOLAGE','VSTE ENS T61',2,39.60),
	('FER A SOUDER 40 WATT+LAITTON','VSTE FES40',2,54.00),
	('MECHES POUR HILTI SUR 3','VSTE ME HIT/3',2,11.25),
	('PINCE A GAZ NUM 1','VSTE PG1',2,61.20),
	('TOURNEVIS REGLAGES MULTICOULEUR','VSTE TOUR MT',2,11.70),
	('MESHES DE FORAGE DE MURES TAILLE6','VSTE MSH 6',2,6.30),
	('MESHES DE FORAGE DE MURES TAILLE8','VSTE MSH 8',2,7.20),
	('MESHES DE FORAGE DE MURES TAILLE10','VSTE MSH 10',2,9.45),
	('MESHES DE FORAGE DE MURES TAILLE12','VSTE MSH 12',2,12.60),
	('CHINIEUL','VSTE CHN',2,450.00),
	('CLEF GRIFEE REGLAGE','VSTE GR REG',2,162.00),
	('PISTOLET DE SOUDEUR','VSTE PIS SO',2,104.40),
	('MEULE A DISQUE ELETRIQUE','VSTE ML EL',2,450.00),
	('DISQUE DE COUPURE NUM 115X1.0','VSTE DSQ 115X1.0',2,8.10),
	('DISQUE DE COUPURE NUM 115X3.0','VSTE DSQ 115X3.0',2,9.90),
	('DISQUE DE COUPURE NUM 115X6.0','VSTE DSQ 115X6.0',2,11.70),
	('DISQUE DE COUPURE NUM 230X1.9','VSTE DSQ 230X1.9',2,22.50),
	('DISQUE DE COUPURE NUM 230X3.2','VSTE DSQ 230X3.2',2,23.40),
	('LUNETTE DE SOUDEUR','VSTE LUN SD',2,10.44),
	('NIVEAU SUR 3 QUALITE 1','VSTE NIV 1/3',2,61.20),
	('PAPIER COLANT 50METRES','VSTE PC 50MT',2,9.90),
	('PAPIER DE GRATAGE NUM180/220','VSTE PG180/220',2,342.00),
	('ROULETTE DE MESURE 20 METRES','VSTE RL 20',2,45.00),
	('ROULETTE DE MESURE 30 METRES','VSTE RL 30',2,54.00),
	('ROULETTE DE MESURE 50 METRES','VSTE RL 50',2,81.00),
	('SCIE CLOCHE GRAND MODELE','VSTE SC/CL GM',2,117.00),
	('SCIE CLOCHE PETIT MODELE','VSTE SC/CL PM',2,55.80),
	('VIS SPARX 3.5X30','VSTE VIS 3.5X30',2,18.00),
	('VIS SPARX 3X20','VSTE VIS 3X20',2,12.24),
	('VIS SPARX 4X20','VSTE VIS 4X20',2,17.10),
	('VIS SPARX 4X25','VSTE VIS 4X25',2,18.90),
	('VIS SPARX 4X30','VSTE VIS 4X30',2,25.20),
	('VIS SPARX 4X35','VSTE VIS 4X35',2,27.00),
	('VIS SPARX 4X40','VSTE VIS 4X40',2,30.60),
	('VIS SPARX 4X60','VSTE VIS 4X60',2,44.10),
	('VISEUSE EN BOITE  CHROME','VSTE VIS/BT/CHR',2,423.00),
	('VISEUSE EN BOITE  NOIRE','VSTE VIS/BT/NR',2,423.00),
	('VISEUSE NUM 1 GRAND MODELE','VSTE VS1 GM',2,1530.00),
	('VISEUSE NUM 1 PETIT MODELE','VSTE VS1 PM',2,1008.00),
	('ROBINET CHROME','VSTE ROB CH Y28',4,46.80),
	('ROBINET LAVABO','VSTE ROB LAV W17',4,176.40),
	('ROBINET LAVABO','VSTE ROB LAV W18',4,176.40),
	('ROBINET LAVABO','VSTE ROB LAV W2',4,156.60),
	('ROBINET LAVABO','VSTE ROB LAV Y30',4,279.00);

/*!40000 ALTER TABLE `TABLE 60` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_replies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_replies`;

CREATE TABLE `ticket_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` longtext COLLATE utf8_unicode_ci NOT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table tickets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tickets`;

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `viewed` int(1) NOT NULL DEFAULT '0',
  `client_viewed` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `referred_by` int(11) DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_Specialty` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalogue` varchar(555) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_sold` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_descrition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_package_id` int(11) DEFAULT NULL,
  `remaining_uploads` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `referred_by`, `provider_id`, `user_type`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `avatar_original`, `address`, `country`, `city`, `postal_code`, `phone`, `balance`, `website`, `category_Specialty`, `catalogue`, `products_sold`, `activity_descrition`, `referral_code`, `customer_package_id`, `remaining_uploads`, `created_at`, `updated_at`)
VALUES
	(12,NULL,NULL,'admin','Bricolyia','admin@admin.com','2020-07-16 16:07:19','$2y$10$g0keNH8JU6lOroCnOB8ubuMmG7AL.6ynyM6XPLT05JgJiwRi0./L2','7xi4mB32SZHGW1BqCgqPZ7EFiCn3meVI9IwewGIL75BNqvk7TRDr5EZpwoTE',NULL,NULL,NULL,NULL,'Oujda',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2020-07-16 16:43:19','2020-07-16 16:43:19'),
	(99,NULL,NULL,'supplier','Reda Belca Reda','redabelca96@gmail.com','2020-11-07 15:44:41','$2y$10$yjgDiNLmRc9gEIR6iXr2ZuvJKo/UNrMo/OWZl9QXr.SlRjQbWYHFO',NULL,NULL,NULL,'Bouskoura Al Andalous 3 GH1B IMM21 N11',NULL,'Bouskoura',NULL,'0602901663',0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2020-11-07 15:44:41','2020-11-07 15:44:41'),
	(100,NULL,NULL,'seller','Reda Belca Reda','r@r.r','2020-11-07 16:16:45','$2y$10$tDwhpr6TN9j6h.9KOn2ABubH9KuArpPj0uZgFC8pO2ekhHaaOslrC',NULL,NULL,NULL,'Bouskoura Al Andalous 3 GH1B IMM21 N11',NULL,'Bouskoura',NULL,'0602901663',0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2020-11-07 16:16:45','2020-11-07 16:16:45'),
	(101,NULL,NULL,'customer','Reda Belca','c@c.c','2020-11-07 16:17:46','$2y$10$J75idp62DNvK/2EDQz0Uk.VVluG2lCeM0h3nAbvA91P9wDqX3K0NS',NULL,NULL,NULL,'kol',NULL,'q',NULL,'0602901663',0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2020-11-07 16:17:46','2020-11-07 16:17:46');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table videos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `videos`;

CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `published` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;

INSERT INTO `videos` (`id`, `title`, `description`, `link`, `published`, `created_at`, `updated_at`)
VALUES
	(1,'Bricolage','Discription.','https://www.youtube.com/embed/SqDsWPzPrkM',1,'2020-07-28 10:45:16','2020-07-28 10:45:16'),
	(2,'Example 2','Un autre video par example','https://www.youtube.com/embed/JayrGuPywTI',1,'2020-07-28 10:49:50','2020-07-28 10:49:50'),
	(3,'Video 3','Example','https://www.youtube.com/embed/JayrGuPywTI',0,'2020-07-28 11:01:35','2020-07-28 11:01:35'),
	(4,'Video 4','Example','https://www.youtube.com/embed/JayrGuPywTI',0,'2020-07-28 11:05:35','2020-07-28 11:05:35');

/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wallets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wallets`;

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table wishlists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wishlists`;

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
