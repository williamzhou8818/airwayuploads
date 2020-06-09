-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: airways_server
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `apartments`
--

DROP TABLE IF EXISTS `apartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apartments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_hours` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images_path` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartments`
--

LOCK TABLES `apartments` WRITE;
/*!40000 ALTER TABLE `apartments` DISABLE KEYS */;
INSERT INTO `apartments` VALUES (5,'2018-08-06 01:46:00','2018-08-13 06:20:52','Luxury C Apartments','Setting new standards in Port Moresby, Papua New Guinea, the luxury C Residences Apartment buildings at Airways Residences offer some of the best executive style, residential accommodation in the Country. <br/><br/>Designed for the magnificent views over the neighbouring Jacksons International Airport and the distant Owen Stanley Ranges, every morning sunrise is different. Short or long term leases available.','+6753254366','We are 24/7, you can call Ext 4999 or 7148 4105','[\"apartments\\/August2018\\/zlD3JzERDYmQIA5um418.jpg\",\"apartments\\/August2018\\/WF1zlYc8lfUysfeqJbSn.jpg\",\"apartments\\/August2018\\/9c4zOZWbKLRtz3sC8g75.jpg\",\"apartments\\/August2018\\/oWATVsxSl4tC21S4KLFP.jpg\",\"apartments\\/August2018\\/1Al7ngIV5CTqhtqtuTue.jpg\",\"apartments\\/August2018\\/0wc85Vw7M4mNlMxJBRsC.jpg\",\"apartments\\/August2018\\/1DH03oSXTuOQ6sQiiM1H.jpg\"]'),(6,'2018-08-06 02:10:00','2018-08-09 00:42:12','Mid Range Villas','Airways mid range villa style Apartments offer residential comfort in a tropical garden setting, nestled in an exclusive, secure safe haven. <br/> <br/> With the Award Winning Airways Hotel within walking distance sharing the same property grounds, it doesn’t get much better in Port Moresby, Papua New Guinea’s Capital City. Short or long term leases available.','+6753254366','We are 24/7, you can call Ext 4999 or 7148 4105','[\"apartments\\/August2018\\/ypJoaWscCvZuuD9u5lVO.jpg\",\"apartments\\/August2018\\/MBefjY2nfeN2PoVG4bwO.jpg\",\"apartments\\/August2018\\/i4IblT8mtZ0oQtH2KFjX.jpg\",\"apartments\\/August2018\\/kR2qeihjjcQrXqkxRoGe.jpg\",\"apartments\\/August2018\\/9oiq8gC4LDvjZHvXSttz.jpg\",\"apartments\\/August2018\\/LvOdIQQTu8JkwE1sAkj5.jpg\",\"apartments\\/August2018\\/lTVnbuHI6lynpytkOKMA.jpg\"]'),(7,'2018-08-06 06:33:00','2018-08-16 23:23:55','Standard Apartments','Standard Apartments at Airways Residences offer modern facilities and appliances and are located right next to the Airways Retail Centre offering convenient grocery shopping, pharmacy dispensary and Westpac Banking facilities, including ATM.<br/> <br/> With the Retail Centre trading 7 days a week until late on the grounds, and 24/7 security, the Standard Apartments offer comfortable and convenient residential living with ample parking. Short or long term leases available.','+6753254366','We are 24/7, you can call Ext 4999 or 7148 4105','[\"apartments\\/August2018\\/v5NTyJSyXoL5P3L6M4fz.jpg\",\"apartments\\/August2018\\/cOmrTPsufQ0tX3iy3iWP.jpg\",\"apartments\\/August2018\\/I6aEK9ziWgwo48NGLdnz.jpg\",\"apartments\\/August2018\\/35QEQFRD20gCkuVI4TXb.jpg\",\"apartments\\/August2018\\/e7GDfBM0E8MTBsyUcNtT.jpg\",\"apartments\\/August2018\\/6hIHjno7iLKiruXX1Xgv.jpg\",\"apartments\\/August2018\\/a73bEGVFCndbPC3UfKAn.jpg\"]');
/*!40000 ALTER TABLE `apartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2018-04-30 06:24:12','2018-04-30 06:24:12'),(2,NULL,1,'Category 2','category-2','2018-04-30 06:24:12','2018-04-30 06:24:12');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'author_id','text','Author',1,0,1,1,0,1,'',2),(3,1,'category_id','text','Category',1,0,1,1,1,0,'',3),(4,1,'title','text','Title',1,1,1,1,1,1,'',4),(5,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',5),(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(7,1,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(8,1,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',8),(9,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'',9),(10,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'',10),(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),(14,2,'id','number','id',1,0,0,0,0,0,'',1),(15,2,'author_id','text','author_id',1,0,0,0,0,0,'',2),(16,2,'title','text','title',1,1,1,1,1,1,'',3),(17,2,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',4),(18,2,'body','rich_text_box','body',1,0,1,1,1,1,'',5),(19,2,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}',6),(20,2,'meta_description','text','meta_description',1,0,1,1,1,1,'',7),(21,2,'meta_keywords','text','meta_keywords',1,0,1,1,1,1,'',8),(22,2,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(23,2,'created_at','timestamp','created_at',1,1,1,0,0,0,'',10),(24,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,'',11),(25,2,'image','image','image',0,1,1,1,1,1,'',12),(26,3,'id','number','id',1,0,0,0,0,0,'',1),(27,3,'name','text','name',1,1,1,1,1,1,'',2),(28,3,'email','text','email',1,1,1,1,1,1,'',3),(29,3,'password','password','password',0,0,0,1,1,0,'',4),(30,3,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),(31,3,'remember_token','text','remember_token',0,0,0,0,0,0,'',5),(32,3,'created_at','timestamp','created_at',0,1,1,0,0,0,'',6),(33,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(34,3,'avatar','image','avatar',0,1,1,1,1,1,'',8),(35,5,'id','number','id',1,0,0,0,0,0,'',1),(36,5,'name','text','name',1,1,1,1,1,1,'',2),(37,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(38,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(39,4,'id','number','id',1,0,0,0,0,0,'',1),(40,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(41,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}',3),(42,4,'name','text','name',1,1,1,1,1,1,'',4),(43,4,'slug','text','slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(44,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'',6),(45,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(46,6,'id','number','id',1,0,0,0,0,0,'',1),(47,6,'name','text','Name',1,1,1,1,1,1,'',2),(48,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(49,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(50,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(51,1,'seo_title','text','seo_title',0,1,1,1,1,1,'',14),(52,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),(53,3,'role_id','text','role_id',1,1,1,1,1,1,'',9),(54,7,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(55,7,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,2),(56,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(57,7,'name','text','Name',0,1,1,1,1,1,NULL,4),(58,7,'description','text_area','Description',0,1,1,1,1,1,NULL,5),(59,7,'phone','text','Phone',0,1,1,1,1,1,NULL,6),(60,7,'open_hours','text','Open Hours',0,1,1,1,1,1,NULL,7),(61,7,'images_path','multiple_images','Images Path',0,1,1,1,1,1,NULL,8),(62,8,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(63,8,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,2),(64,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(65,8,'name','text','Name',0,1,1,1,1,1,NULL,4),(66,8,'description','text_area','Description',0,1,1,1,1,1,NULL,5),(67,8,'phone','text','Phone',0,1,1,1,1,1,NULL,6),(68,8,'open_hours','text','Open Hours',0,1,1,1,1,1,NULL,7),(69,8,'images_path','multiple_images','Images Path',0,1,1,1,1,1,NULL,8),(70,9,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(71,9,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,2),(72,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(73,9,'name','text','Name',0,1,1,1,1,1,NULL,4),(74,9,'images_path','image','Images Path',0,1,1,1,1,1,NULL,5),(75,10,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(76,10,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,2),(77,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(78,10,'images_path','image','Images Path',1,1,1,1,1,1,NULL,4),(79,11,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(80,11,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,2),(81,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(82,11,'images_path','image','Images Path',1,1,1,1,1,1,NULL,4),(83,11,'position','text','Position',1,1,1,1,1,1,NULL,5),(84,12,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(85,12,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,2),(86,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(87,12,'path','file','Path',0,1,1,1,1,1,NULL,4),(88,13,'id','text','Id',1,0,0,0,0,0,NULL,1),(89,13,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,2),(90,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(91,13,'heading','text','Heading',0,1,1,1,1,1,NULL,4),(92,13,'subheading','text','Subheading',0,1,1,1,1,1,NULL,5),(93,13,'left_description','text_area','Left Description',0,1,1,1,1,1,NULL,6),(94,13,'right_description','text_area','Right Description',0,1,1,1,1,1,NULL,7),(95,13,'image_path','multiple_images','Image Path',0,1,1,1,1,1,NULL,8),(96,13,'section_id','text','Section Id',0,1,1,1,1,1,NULL,9),(97,13,'directory_display_belongsto_section_relationship','relationship','sections',0,1,1,1,1,1,'{\"model\":\"App\\\\Section\",\"table\":\"sections\",\"type\":\"belongsTo\",\"column\":\"section_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"apartments\",\"pivot\":\"0\"}',10),(98,14,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(99,14,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,2),(100,14,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(101,14,'name','text','Name',0,1,1,1,1,1,NULL,4),(102,14,'image_path','image','Image Path',0,1,1,1,1,1,NULL,5);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,'2018-04-30 06:24:12','2018-04-30 06:24:12'),(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,'2018-04-30 06:24:12','2018-04-30 06:24:12'),(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,'2018-04-30 06:24:12','2018-04-30 06:24:12'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,'2018-04-30 06:24:12','2018-04-30 06:24:12'),(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,'2018-04-30 06:24:12','2018-04-30 06:24:12'),(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,'2018-04-30 06:24:12','2018-04-30 06:24:12'),(7,'apartments','apartments','Apartment','Apartments','voyager-company','App\\Apartment',NULL,NULL,NULL,1,0,'2018-04-30 06:30:01','2018-04-30 06:30:46'),(8,'features','features','Feature','Features','voyager-shop','App\\Feature',NULL,NULL,NULL,1,0,'2018-04-30 06:47:56','2018-04-30 06:47:56'),(9,'galleries','galleries','Gallery','Galleries','voyager-images','App\\Gallery',NULL,NULL,NULL,1,0,'2018-04-30 06:58:45','2018-04-30 07:16:33'),(10,'maps','maps','Map','Maps','voyager-handle','App\\Map',NULL,NULL,NULL,1,0,'2018-04-30 07:17:12','2018-04-30 07:17:49'),(11,'promotions','promotions','Promotion','Promotions','voyager-tv','App\\Promotion',NULL,NULL,NULL,1,0,'2018-04-30 07:19:14','2018-04-30 07:19:14'),(12,'videos','videos','Video','Videos','voyager-video','App\\Video',NULL,NULL,NULL,1,0,'2018-04-30 07:20:41','2018-04-30 07:21:06'),(13,'directory_displays','directory-displays','Directory Display','Directory Displays','voyager-news','App\\DirectoryDisplay',NULL,NULL,NULL,1,0,'2018-05-09 00:06:18','2018-05-09 00:06:18'),(14,'sections','sections','Section','Sections','voyager-list','App\\Section',NULL,NULL,NULL,1,0,'2018-05-09 00:11:04','2018-05-09 00:11:04');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_displays`
--

DROP TABLE IF EXISTS `directory_displays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_displays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `heading` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subheading` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `left_description` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `right_description` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_displays`
--

LOCK TABLES `directory_displays` WRITE;
/*!40000 ALTER TABLE `directory_displays` DISABLE KEYS */;
INSERT INTO `directory_displays` VALUES (19,'2018-08-08 05:54:00','2018-08-09 01:30:30','Trekking','in port moresby','With landscapes comprised of rugged mountain peaks and volcanoes, PNG provides the perfect environment for avid hikers to pit themselves against nature. \r\n\r\nThe Kokoda Trail is one of the most famous hiking trails in the world today. Visitors travel from far and wide each year to experience the remote and difficult conditions experienced by WWII soldiers. \r\n\r\nWhile Kokoda is the most renowned trek in PNG, there are plenty of other hikes that are worth the effort. In the Highlands region, Mt Wilhelm looms large as the highest peak in PNG, while Mt Giluwe is also a favourite.','Off the mainland, Bougainville provides another interesting trek along the Rotokas-Numa Trail, a track that was also a well-known WWII battleground. East New Britain offers a range of great hikes which include Kombiu, Rabaul Nakaia and Mt Vulcan. On West New Britain, trekkers can experience more stunning vistas from Mt Garbuna, Mt Lolo and Mt Otto. The Trans-New Britain Track which starts in East New Britain and extends across to the west traverses remote and tropical terrain.','[\"directory-displays\\/August2018\\/bIQ3bTjPKKM0YF7K2prr.jpg\"]',7),(20,'2018-08-08 06:58:00','2018-08-17 01:02:02','Diving','In Port Moresby','With unique coral reefs, intriguing war wrecks and unusual fish species, PNG boasts some of the best diving in the world. The region forms part of the famous Coral Triangle, which has the highest diversity of tropical fish in the world. While diving along the entire PNG coastline is world class, the most popular dive sites are around Port Moresby, Tufi, Milne Bay, Madang, Kimbe Bay, Rabaul and New Ireland.','Amongst divers’ favourites are Susie’s Bommie and Pumpkin Patch (POM); Planet Rock, Magic Passage and B25 Mitchell Bomber (Madang); George’s Wreck (East New Britain); Zero (West New Britain); and Echuca Patch and Albatross Passage (New Ireland). For those who wish to dive in PNG, full medical and evacuation insurance is required. This needs to be provided to any dive operator prior to undertaking any dives. Alternatively, insurance can be purchased onsite through the dive operator.','[\"directory-displays\\/August2018\\/73d0XWazevrMSLEZ6jWS.jpg\"]',7),(21,'2018-08-08 06:59:00','2018-08-09 01:34:45','Birdwatching','In Port Moresby','PNG is a birdwatcher’s paradise especially given the stunning bird of paradise is endemic to the region. A few of the popular varieties of bird of paradise that can be spotted include the Raggiana – known for its beautiful plumage, Blue Bird of Paradise, Queen Carola’s Parotia and King of Saxony. Male birds of paradise are known to perform an extravagant dance to attract a female mate.','Birdwatchers are encouraged to take a morning trip to catch this spectacular mating ritual. With over 600 bird species on record, PNG offers an extensive range of other amazing bird species. Other species include the Victoria Crowned Pigeon, Azure Kingfisher, Nicobar Pigeon and Flame Bowerbird. Go online to papuanewguinea.travel where you’ll find a mini-pocket guide of the ‘Birds of Port Moresby’.','[\"directory-displays\\/August2018\\/yqyrJGDkQjNNaWh6hrhW.jpg\"]',7),(22,'2018-08-08 07:01:00','2018-08-09 01:35:18','Fishing','In Port Moresby','From the rivers to the oceans, PNG offers the ultimate fishing experience. The ocean is flush with game fishing such as marlin, yellow fin, tuna, sailfish, giant trevally and dogtooth tuna. The black bass, on the other hand, reputed to be a tough catch even on a good day, can be found in the Fly, Sepik and Lower Ramu Rivers.','If barramundi is your game, Bensbach Wildlife Lodge located in the Western Province organises fishing tours on a catch and release system for keen anglers. The Aramia River in the same province provides the opportunity to catch the Niugini Tiger Fish, a species totally unique to PNG. On West New Britain, Baia Fishing Lodge is the place to go to take fishing to another level. Bass fishing is a favourite in the region.','[\"directory-displays\\/August2018\\/uws8zJ5df6yfdU8Vv0Ic.jpg\"]',7),(23,'2018-08-08 07:02:00','2018-08-09 01:35:40','Surfing','In Port Moresby','PNG continues to capture the hearts of surf enthusiasts around the world. With unlimited surfing potential all year round, PNG offers up consistent waves without the overcrowding. In Sero Cove just out of Port Moresby the waves range from three to six feet from May to November. On the northern side of the mainland, Madang, Wewak and Vanimo provide consistent swells with camps for avid surfers provided at Vanimo, Wewak and Aitape.','On Bougainville Island, surfers will find a number of reef breaks and quality waves. New Ireland Province is one of the most popular destinations for surfers. Around Kavieng there are numerous reef setups, which provide solid surf breaks. Venturing north, Manus Island and the St Matthias group of islands provide the perfect opportunity to discover new breaks in remote conditions. For more information on surfing in PNG, visit www.sapng.com.','[\"directory-displays\\/August2018\\/mNE9oRqcqL0C6OKPOHIA.jpg\"]',7),(24,'2018-08-09 05:07:00','2018-08-17 01:03:26','Nightlife','in Port Moresby','When the lights go down, POM comes alive in various locations across the city. Try the Harbourside precinct on Friday night at Naked Fish and Duffy. For music and live entertainment, visit Cosmopolitan, Lamana Gold Club or K-Town Karaoke at Vision City. For a stylish beverage, visit the Monsoon Lounge and Bar, or the Mezz Bar at the Stanley Hotel & Suites.','To move around safely at night, be sure to use secure transport. <br/>Contact Black Swan on 7520 0200 to plan your journey.','[\"directory-displays\\/August2018\\/NYnXncHwFUT5l2u2C7ef.jpg\"]',10),(25,'2018-08-09 05:20:00','2018-08-09 06:28:57','Royal Papua Yacht Club','In Port Moresby','The Royal Papua Yacht Club offers a range of great features as part of your club membership. Take advantage of the gym facilities. Enjoy gourmet fare at Macdhui Restaurant or something more casual at Sails Café. If sailing, water skiing, diving or game fishing piques your interest, enquire about a membership.','Be sure to check out the club’s rotating calendar of events. <br/><br/>For more information, visit www.rpyc.com.pg.','[\"directory-displays\\/August2018\\/qQ51QZNJIdrepqs49RjX.jpg\"]',10),(26,'2018-08-09 05:22:21','2018-08-09 05:22:21','Nature Park','In Port Moresby','One of POM’s most popular tourist destinations, the Port Moresby Nature Park hosts an extensive collection of indigenous flora and fauna. The park is home to many native orchids and plant species as well as a large collection of native animal species such as cassowaries, tree-kangaroos, wallabies, reptiles and bird species including the bird of paradise.','Open seven days a week from 8.00am to last customer entry at 4.00pm.','[\"directory-displays\\/August2018\\/YVXLHDu5J6hcCFMkvty7.jpg\"]',10),(27,'2018-08-09 05:23:15','2018-08-09 05:23:15','Paradise Cinemas','In Port Moresby','Catch the latest blockbuster film at Paradise Cinemas. With cinemas located at both Waigani Central and Vision City, you’re spoilt for choice.','For more information on movies and session times, visit www.paradisecinemaspng.com.','[\"directory-displays\\/August2018\\/0LAAeuRyI57Xi1rkE1Bq.jpg\"]',10),(28,'2018-08-09 05:24:46','2018-08-09 05:24:46','Lanes at Lamana','In Port Moresby','For an entertaining afternoon with the family or special social occasion, join the fun at Lanes at Lamana.','Providing the only bowling alley in PNG, patrons can pit their bowling skills against a team of up to ten.','[\"directory-displays\\/August2018\\/hXOdlDKbZDjZxdlb7uSD.jpg\"]',10),(29,'2018-08-09 06:33:15','2018-08-09 06:33:15','Craft Markets','In Port Moresby','Occurring every Saturday, the Port Moresby Craft Market is an opportunity to buy a genuine souvenir handcrafted by local Papua New Guineans.','Open 8.00am to 1.00pm, the market moves location throughout the month. For more information, visit the market’s Facebook page.','[\"directory-displays\\/August2018\\/uFKYrCJoEgrzfYb8InHO.jpg\"]',10),(30,'2018-08-09 06:34:20','2018-08-09 06:34:20','Ower\'s Corner','In Port Moresby','Owers’ Corner is the point that designates the start of the world-renowned Kokoda Trail. The Kokoda Trail remains a popular and sentimental trek where many soldiers battled and died during WWII.','To experience some of the region without embarking on the trek, take a walk down to Goldie River which is a two hour walk up and back.','[\"directory-displays\\/August2018\\/ba4Wn0DaTeApf4SgnDqS.jpg\"]',10),(31,'2018-08-09 06:36:59','2018-08-09 06:36:59','Bomana War Cemetery','In Port Moresby','One for the history buffs, Bomana War Cemetery is the largest known cemetery in the Pacific.','Located off the road to Nine Mile, it commemorates nearly 4,000 men, mostly Australians, who lost their lives in the region during WWII.','[\"directory-displays\\/August2018\\/rlS3q9nGqGEJl9Wj6YnK.jpg\"]',10),(32,'2018-08-09 06:40:31','2018-08-09 06:40:31','Dining Harbourside','In Port Moresby','Dine Harbourside for a winning combination of alfresco dining, tasty cuisine and stunning views of Fairfax Harbour. Try any one of the harbourside eateries which include Duffy Café, Tandoor on the Harbour, Sogno, Asia Aromas and Naked Fish.','After a delectable meal, take a stroll along the boardwalk to absorb the modern yet laid-back ambience.','[\"directory-displays\\/August2018\\/oGLscyVqkGVtSyVajap7.jpg\"]',10),(33,'2018-08-09 06:44:00','2018-08-17 00:47:10','Airlines','In Port Moresby','<strong>Air Niugini</strong> <br/>180 3444 <br/>327 3444<br/><br/>\r\n<strong>PNG Air</strong> <br/>7222 2151<br/><br/>','<strong>Virgin</strong> <br/>+61 7 3295 2296<br/><br/>\r\n<strong>Philippine Airlines</strong> <br/>320 1774<br/><br/>','[\"directory-displays\\/August2018\\/KskDoIEJDLi8LEkLMkJj.jpg\"]',9),(34,'2018-08-09 06:45:00','2018-08-17 01:47:57','Bank & ATMs','In Port Moresby','<strong>ANZ</strong> <br/>321 1079<br/><br/>\r\n<strong>Bank of South Pacific</strong> <br/>320 1212<br/><br/>','<strong>Kina Banks</strong><br/>308 3888<br/><br/>\r\n<strong>Westpac</strong> <br/>322 0888<br/><br/>','[\"directory-displays\\/August2018\\/Jg8pMNoO3KBn2zxt0gWU.jpg\"]',9),(35,'2018-08-09 06:47:00','2018-08-17 01:23:43','Grocery Stores','In Port Moresby','<strong>IGA</strong> <br/>At Airways, Waigani and Harbour City. Best for chocolate, cheese and dishwasher tablets. <br/><br/>\r\n<strong>Waterfront Foodworld</strong><br/>Fresh produce, high quality meat and wide variety of grocery items.<br/><br/>\r\n<strong>Boroko Foodworld</strong><br/>Lower prices and a more authentic grocery buying experience.<br/><br/>\r\n<strong>RH Hypermarket</strong> <br/>Vision City and various other locations. Low prices and broad range of products.<br/><br/>','<strong>Meat Haus</strong> <br/>Good quality meat, frozen goods and bakery onsite.<br/><br/>\r\n<strong>South Moresby Fish Markets</strong> <br/>Beautiful fresh fish caught daily. Advisable to be accompanied by security.<br/><br/>\r\n<strong>Village Produce</strong> <br/>Fresh produce from remote villages delivered daily.<br/><br/>\r\n<strong>Waterfront, IGA and Vision City</strong> <br/>For alcoholic beverages.<br/><br/>\r\n<strong>Brumbies Bread</strong><br/>Vision City, inside RH Hypermarket. Baked goods.','[\"directory-displays\\/August2018\\/Cs1WFrPwyobvgJGmjGdH.jpg\"]',9),(36,'2018-08-09 06:48:00','2018-08-17 00:28:42','Medical Services','In Port Moresby','<strong>EMS PNG</strong><br/>1567<br/><br/>\r\n<strong>Pacific International Hospital</strong> <br/>323 4400<br/><br/>\r\n<strong>Ela Medical Centre</strong><br/>320 0585<br/><br/>','<strong>Port Moresby Medical Service</strong> <br/>325 6633<br/><br/>\r\n<strong>Chemcare</strong><br/>Vision City, Waigani Drive<br/><br/>','[\"directory-displays\\/August2018\\/Mg5urU98XLLhCU3vgycb.jpg\"]',9),(37,'2018-08-09 06:50:00','2018-08-17 00:27:47','Shopping','In Port Moresby','<strong>Jeans West</strong><br/>Vision City<br/><br/>\r\n<strong>House of Gemini</strong> <br/>Various Locations<br/><br/>\r\n<strong>Jules Collins</strong> <br/>Vision City<br/><br/>','<strong>Vision City Mega Mall</strong> <br/>Waigani Drive<br/><br/>\r\n<strong>Waterfront Mall</strong> <br/>Waterfront Precinct<br/><br/>\r\n<strong>Jack’s clothing</strong><br/> Waigani Central<br/><br/>','[\"directory-displays\\/August2018\\/Mbxe6YiX2gW9CgFfNdlM.jpg\"]',9),(38,'2018-08-10 00:49:00','2018-08-17 00:20:30','PNG National Museum & Art Gallery','In Port Moresby','Owned by the people of PNG, the Papua New Guinea National Museum and Art Gallery pays tribute to the region’s fascinating people and heritage.','Showcasing an extensive collection of fauna, cultural and archeological artefacts, war relics, art works and much more, the museum is a must do for anyone staying in Port Moresby.','[\"directory-displays\\/August2018\\/5XoRbZVOa0r6yR40vm0O.jpg\"]',10),(39,'2018-08-10 03:39:00','2018-08-10 06:27:02','ASIA AROMAS','HARBOURSIDE EAST','Boasting stunning views of the harbour, Asia Aroma offers a tasty fusion of Thai and Chinese cuisines. Great service and reasonably priced.','Open daily, eat in or take away. Phone: 321 4780.','[\"directory-displays\\/August2018\\/J8ND4jAyRSuFeu7CL2lY.jpg\"]',11),(40,'2018-08-10 06:26:00','2018-08-17 00:19:20','Airways Hotel','In Port Moresby','Bacchus Restaurant: <br/>Fine dining<br/><br/>\r\nVue Poolside Restaurant & Lounge: <br/>Casual dining<br/><br/>\r\nPoolside Deli KC:<br/> Café fare & coffee<br/><br/>\r\nSeven C’s Café Bar: <br/>Beverages & snacks<br/><br/>','For more information, phone<br/> 324 5200','[\"directory-displays\\/August2018\\/NT8aKv5lz50ClFcgWtiP.jpg\"]',11),(41,'2018-08-10 06:29:00','2018-08-17 00:19:10','DAIKOKU','HARBOUR CITY','Seeking an authentic Japanese Teppan-yaki experience? Look no further than Daikoku which offers both a buffet and à la carte dining option.','For more information, phone<br/> 321 0255.<br/>\r\nOpen daily.','[\"directory-displays\\/August2018\\/2SKiZzojAWwfXNYP3xpM.jpg\"]',11),(42,'2018-08-10 06:32:00','2018-08-17 00:18:55','DUFFY CAFÉ','HARBOURSIDE EAST','If you’re fussy about your coffee, then get down to Duffy’s to try their freshly roasted coffee beans. Pastries and other café fare on offer. On a Friday night, Duffy is the place to be.','Various locations:<br/>\r\nGABAKA STREET<br/>\r\nJACKSON’S AIRPORT<br/><br/>\r\nFor more information, phone<br/> 325 8528','[\"directory-displays\\/August2018\\/1Sdolhn1zebummF1qtA2.jpg\"]',11),(43,'2018-08-10 06:34:00','2018-08-17 00:18:37','FUSION','HARBOUR CITY','Asian cuisine served with a modern Western twist, you’re in for a great dining experience whenever you visit Fusion. Request no MSG and they’ll happily oblige.','For more information, phone<br/> 7196 6666.','[\"directory-displays\\/August2018\\/ypu3PbINZdgRjkqUA1iV.jpg\"]',11),(44,'2018-08-10 06:35:00','2018-08-17 00:18:27','JACKSON’S BAR AND GRILL','GATEWAY HOTEL','A modern, relaxed dining venue that’s perfect for a lunchtime meet and greet. Be sure to try their signature wood fired pizzas which will have you dreaming of Italy.','Open daily until 11am. <br/>\r\nFor more information, phone<br/> 327 8100.','[\"directory-displays\\/August2018\\/VhnHq6UOPLyUUrM5XEay.jpg\"]',11),(45,'2018-08-10 06:36:00','2018-08-17 00:18:16','MOJO SOCIAL','HARBOUR CITY','Mojo Social boasts a Mediterranean style menu which allows diners to share a mouthwatering range of dishes.','Open from 11.00am Monday to Friday Saturday dinner only. <br/>\r\nPhone: 7995 5264.','[\"directory-displays\\/August2018\\/M0KkiOkpQget5UI2Jxbj.jpg\"]',11),(46,'2018-08-10 06:38:00','2018-08-17 00:17:55','NAKED FISH','HARBOURSIDE','Naked Fish is a great place for a social meet up or a family outing. Offering an extensive menu including local seafood and live entertainment.','Open daily. <br/>\r\nFor more information, phone<br/> 320 2016.','[\"directory-displays\\/August2018\\/norbNV530VEYdcXQLZlJ.jpg\"]',11),(47,'2018-08-10 06:39:37','2018-08-10 06:39:37','POOL BAR & CAFE','THE STANLEY HOTEL & SUITES','For a laid-back meal and drink, enjoy the opulent deck setting at The Stanley Hotel & Suites.','Open daily from 10.00am.','[\"directory-displays\\/August2018\\/MzODJUapkCFolPCmBJPy.jpg\"]',11),(48,'2018-08-10 06:40:00','2018-08-17 00:16:47','RIO’S AT THE TEMPLE','LAMANA HOTEL','Treat yourself to a tantalising experience at Rio’s at the Temple, Lamana’s signature steakhouse. Try the unique flavours of a Brazilian style barbeque.','Open daily from 6.00pm. <br/>\r\nFor more information, phone<br/> 323 2333.','[\"directory-displays\\/August2018\\/E3thQX2mkZkvaGmK5i24.jpg\"]',11),(49,'2018-08-10 06:41:00','2018-08-17 01:48:51','SEOUL HOUSE','FOUR MILE','Blending the aromatic flavours of Korean and Thai cuisine, Seoul House delivers food that is genuinely more-ish. Offering a comprehensive menu, enjoy lunch or dinner for an intimate experience or larger social gathering.','For more information, phone<br/> 325 2231.','[\"directory-displays\\/August2018\\/F3RFpuiNkRDKpXwIDNFr.jpg\"]',11),(50,'2018-08-10 06:42:00','2018-08-17 00:16:12','SIZZLER’S','GATEWAY HOTEL','Sizzler’s offers a range of family-friendly meals from steaks to ribs to seafood accompanied by a fresh buffet salad bar.','Open daily for lunch and dinner. <br/>\r\nFor more information, phone<br/> 327 8711.','[\"directory-displays\\/August2018\\/OuBWE4fRfEcFpItQzaGt.jpg\"]',11),(51,'2018-08-10 06:43:00','2018-08-17 00:15:57','SOGNO','HARBOURSIDE','One of the top picks for Italian food in POM. Try the duck ravioli or lobster if it’s on the daily specials. Excellent wine selection and friendly service.','Open for lunch and dinner. <br/>\r\nFor more information, phone <br/> 320 0001.','[\"directory-displays\\/August2018\\/C6RDqbQXzdVAzOpFDdXN.jpg\"]',11),(52,'2018-08-10 06:45:00','2018-08-17 00:15:39','SPICES RESTAURANT','LAMANA HOTEL','Spice up your day with Indian inspired cuisine at Spices Restaurant. Serving breakfast, lunch and dinner daily, enjoy an extensive range of tasty dishes. Indian buffet every Thursday night.','For more information, phone <br/>323 2333.','[\"directory-displays\\/August2018\\/R49XV04ltRhGAyZxxsGa.jpg\"]',11),(53,'2018-08-10 06:48:00','2018-08-17 00:15:24','TANDOOR','HARBOURSIDE','You can’t go past the tasty Indian cuisine and reasonably priced menu at Tandoor. Using fresh, local ingredients, the Indian Chef serves up a range of tasty classics.','Open for lunch and dinner. <br/>\r\nFor more information, phone <br/> 7629 0488.','[\"directory-displays\\/August2018\\/MeK47MCdAUc8yIXeFNDO.jpg\"]',11),(54,'2018-08-10 06:49:00','2018-08-17 00:15:04','TASTY BITE','CBD','Tasty Bite is the original Tandoor and inspiration behind Tandoor at Harbourside. For more great authentic Indian cuisine that won’t cost an arm and leg, this one’s for you.','Open lunch and dinner. <br/>\r\nFor more information, phone <br/> 321 2222.','[\"directory-displays\\/August2018\\/kp2yxsD3UVyMJMzogY9K.jpg\"]',11),(55,'2018-08-10 06:50:00','2018-08-17 00:14:44','THE ITALIAN','LAMANA HOTEL','Choose to dine alfresco or stay indoors. Either way you can’t go past authentic Italian fare at Lamana.','Open for lunch and dinner. <br/>\r\nFor more information, phone <br/> 323 2333.','[\"directory-displays\\/August2018\\/DUk8wsCgLJthKlgOmelA.jpg\"]',11),(56,'2018-08-10 07:31:00','2018-08-17 06:50:59','EMBASSIES','In Port Moresby','<strong>Australian High Commission</strong><br/>\r\nGodwit Road, Waigani, Port Moresby <br/> Phone: 7090 0100<br/><br/>\r\n<strong>British High Commission</strong><br/>\r\nSec 411 Lot 1 & 2, Kiroki Street, Waigani, Port Moresby <br/> Phone: 303 7600<br/><br/>\r\n<strong>Consulate of Sweden</strong><br/>\r\nTurumu Street, Boroko, Port Moresby <br/> Phone: 325 8066<br/><br/>\r\n<strong>Embassy of Japan</strong><br/>\r\nGodwit Road, Waigani, Port Moresby <br/> Phone: 321 1800<br/><br/>\r\n<strong>Embassy of the People’s Republic of China</strong><br/>\r\nSection 216, Lot 5, Sir John Guise Drive, Waigani, NCD <br/> Phone: 325 9827<br/><br/>\r\n<strong>Fiji High Commission</strong><br/>\r\n1st Floor, Fiji Haus, Frangipani Street, Hohola, Port Moresby <br/> Phone: 321 1914<br/><br/>','<strong>French Embassy</strong><br/>\r\nDefens Haus - 6th floor, Corner Champion Parade & Hunter Street, Port Moresby <br/> Phone: 321 5550<br/><br/>\r\n<strong>Indonesian Embassy</strong><br/>\r\nSir John Guise Drive, Lot 1&2, Section 410, Kiroki Street, Port Moresby <br/> Phone: 325 3116<br/><br/>\r\n<strong>New Zealand High Commission</strong><br/>\r\nMagani Crescent, Waigani, Port Moresby<br/> Phone: 325 9444<br/><br/>\r\n<strong>Solomon High Commission</strong><br/>\r\nUnit 1, GB House, Poreporena Freeway, Port Moresby <br/> Phone: 323 4333<br/><br/>\r\n<strong>US Embassy</strong><br/>\r\nDouglas Street, Port Moresby<br/> Phone:  308 2100<br/><br/>','[\"directory-displays\\/August2018\\/gQxdHUg56yjVMk0HzWB6.jpg\"]',9),(57,'2018-08-13 00:42:00','2018-08-17 00:12:26','June','Madang Festival','<strong>JUNE</strong><br/>\r\nMadang Festival','Every Queen’s Birthday weekend, Madang comes alive with the Madang Festival showcasing a colourful parade, canoe racing, sporting activities and food stalls.','[\"directory-displays\\/August2018\\/397glFVwOTta0751aaGD.jpg\"]',8),(58,'2018-08-13 00:45:00','2018-08-17 00:11:37','August','DWU Culture Day','<strong>AUGUST</strong><br/>\r\nDWU Cultural Day','The Divine Word University Cultural Day is an annual event that enables students to showcase their cultural heritage. <br/><br/>For more information, call Divine Word University on 422 2937.','[\"directory-displays\\/August2018\\/6a4YhrrT0fQI2PRDn4tw.jpg\"]',8),(59,'2018-08-13 00:47:00','2018-08-17 05:29:41','August','Mt Hagen Show','<strong>AUGUST</strong> <br/>\r\nMount Hagen Show','One of the most renowned festivals in PNG, the Mount Hagen Show brings together the rich culture of the Highlands region in an exuberant display of sing-sings. The festival is one of PNG’s oldest shows.','[\"directory-displays\\/August2018\\/wQer2sDkShhwhhbVJI66.jpg\"]',8),(60,'2018-08-13 01:23:00','2018-08-17 00:11:12','August','Sepik Crocodile Festival','<strong>AUGUST</strong><br/>\r\nSepik Crocodile Festival','The Crocodile Festival pays tribute to the local tribe’s cultural connection to the crocodile. Occurring in Ambunti, visitors are privy to canoe racing and unique cultural performances.','[\"directory-displays\\/August2018\\/v6zH1rrSlX1REp7xCFfG.jpg\"]',8),(61,'2018-08-13 01:24:00','2018-08-17 00:11:04','September','Frangipani Festival','<strong>SEPTEMBER</strong><br/>\r\nFrangipani Festival','Staged in Rabaul, the Frangipani Festival celebrates Independence Day with the famous Baining Fire Dance, sing-sings, a float parade and more colourful festivities.','[\"directory-displays\\/August2018\\/4zZwaVF77lkdSUjcvhip.jpg\"]',8),(62,'2018-08-13 01:25:00','2018-08-17 00:10:55','SEPTEMBER','Goroka Show','<strong>SEPTEMBER</strong><br/>\r\nGoroka Show','The Goroka Show pays homage to the different cultural influences in the region. Participants beat kundu drums and perform decorated in unusual body paints and feathers to celebrate their unique heritage.','[\"directory-displays\\/August2018\\/DuqJVSVB3TFIuRl80vJE.jpg\"]',8),(63,'2018-08-13 01:26:00','2018-08-17 00:10:47','SEPTEMBER','Hiri Moale Show','<strong>SEPTEMBER</strong> <br/>\r\nHiri Moale Show','Like everything in PNG, the Hiri Moale Show illustrates a rich and symbolic history that reflects on age-old customs. During the show, Ela Beach explodes in colour and activity with hundreds of people singing, dancing and celebrating tradition.','[\"directory-displays\\/August2018\\/MJ0lyFZysJiEd3rX0wuO.jpg\"]',8),(64,'2018-08-13 01:27:00','2018-08-17 00:10:17','OCTOBER','Morobe Cultural Show','<strong>OCTOBER</strong><br/>\r\nMorobe Cultural Show','The Morobe Cultural Show occurring in Lae boasts agricultural information as well as showcases the largest group of sing-sings in PNG. Watch out for rodeo events, traditional performances and costumes, and lots of cause for celebration.','[\"directory-displays\\/August2018\\/l0oSS8HFdsrVD6FamvEM.jpg\"]',8),(65,'2018-08-13 01:47:00','2018-08-17 02:05:05','Car Rental','In Port Moresby','<strong>AVIS</strong><br/>324 9400<br/><br/>\r\n<strong>Budget</strong><br/>323 6244<br/><br/>','<strong>Europcar</strong><br/>323 9210<br/><br/>\r\n<strong>Hertz</strong><br/>325 4999<br/><br/>','[\"directory-displays\\/August2018\\/9JI5FNAvvqCiZckb0OZA.jpg\"]',9),(66,'2018-08-13 01:49:00','2018-08-17 00:08:24','Charitable Organisations','In Port Moresby','<strong>Karim Belle</strong><br/>\r\nFriends of the POM General Hospital Labour Ward.<br/>\r\nOrganisers of the annual fundraising event Pizza and Opera under the Stars.<br/>\r\nEmail: karimbellepng@gmail.com<br/><br/>\r\n<strong>Buk Bilong Pikinini</strong><br/>\r\nOffering numeracy, literacy and awareness programs with school support.<br/>\r\nEmail: naomi@bukbilongpikinini.org<br/><br/>\r\n<strong>RSPCA</strong><br/>\r\nCommitted to preventing animal cruelty and promoting education and care for animals.<br/>\r\nPhone: 325 2363<br/><br/>','<strong>Links of Hope</strong><br/>\r\nOffering support programs with a focus on Child Sponsorship which includes care packages, educational programs and financial support.<br/>\r\nEmail: linksofhope.pg@gmail.com<br/><br/>\r\n<strong>All Nations Women’s Association</strong><br/>\r\nPromoting international fellowship and goodwill by developing among its members an understanding of the life and culture of different nationality groups, irrespective of race, religion and political beliefs. The All Nations Women’s Group meets on the first Tuesday of every month and celebrates a different country each month. <br/>\r\nEmail: allnationspng@gmail.com','[\"directory-displays\\/August2018\\/Vh1sRapSJP2J25OBCwFh.jpg\"]',9),(67,'2018-08-13 01:51:00','2018-08-17 00:04:41','Computers & Phones','In Port Moresby','<strong>COMPUTERS & PHONES</strong><br/><br/>\r\nDatec Poreporena Hwy: <br/>303 1333<br/><br/>\r\nTE PNG Waigani: <br/>325 6322<br/><br/>\r\nAble Computer Hohola: <br/>325 2599<br/><br/>\r\nRapid Fones <br/>Various Locations rapidfonespng.com','<strong>COMMUNICATIONS PROVIDERS</strong><br/><br/>\r\nSpeedcast Konedobu: <br/>7091 7300<br/><br/>\r\nTelikom PNG Boroko:<br/>300 7600<br/><br/>\r\nVision City: <br/>310 0040<br/><br/>\r\nWaigani: <br/>300 5574<br/><br/>\r\nDatec Poreporena Hwy: <br/>303 1333<br/><br/>\r\nHitron – TV provider Waigani: <br/>302 2311<br/><br/>\r\nDigicel Various Locatons: <br/>www.digicelgroup.com<br/><br/>\r\nBmobile Waigani: <br/>7600 3555<br/><br/>','[\"directory-displays\\/August2018\\/dAGEmqr6l5HojJZz1JpM.jpg\"]',9);
/*!40000 ALTER TABLE `directory_displays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_hours` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images_path` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (7,'2018-08-08 04:18:00','2018-08-08 04:43:17','Swimming Pool','The Airways Swimming Pool is located at the Airways Hotel poolside / Deli KC area. Children must not use the swimming pool unattended. Please bring your own towels. The Swimming Pool is available for Residents and their families only.','Reception for assistance. Ext. 4999','6:00am to 8:00pm','[\"features\\/August2018\\/LNMOcOqDWqYx2s9uFx8B.jpg\",\"features\\/August2018\\/BM04MEnHjX5DLjuYlsXI.jpg\"]'),(8,'2018-08-08 04:45:00','2018-08-09 00:44:27','Recreation Park','One of the biggest advantages of Airways Residences is its lush, green outdoor spaces. Airways Residences has a Recreation Park complete with a children’s playground and barbeque facilities. <br/> <br/> The Recreation Park is exclusively for Residents, Airways Hotel guests and selected corporate functions. When organising a gathering or party at the Recreation Park we require a prior booking to secure the space for you. An approval form is available at Reception.','Ext. 4986 or Reception Ext. 4999','5am - 10pm','[\"features\\/August2018\\/uYJhIBfxqM9v4T7tIcJ3.jpg\",\"features\\/August2018\\/y5hbnNTcn0O2WHugC5ip.jpg\",\"features\\/August2018\\/JfpWBht4tJImc1HRJwb6.jpg\",\"features\\/August2018\\/sGORyBNNGwrexmHjqfXT.jpg\",\"features\\/August2018\\/tYaS3DnrRIve16Med827.jpg\",\"features\\/August2018\\/KBHtvVReeqMn6Rbbhy6Z.jpg\",\"features\\/August2018\\/byDukIyMFddgMOv0g9H6.jpg\",\"features\\/August2018\\/pq1XnHfrCxVuxb53KB9t.jpg\"]'),(9,'2018-08-08 04:47:00','2018-08-17 01:22:23','Health & Fitness Centre','Airways’ Health & Fitness Centre is Port Moresby’s most modern and exclusive recreation facility. From its Japanese-raked pebble surrounds to its unique infinity lap pool, it will take your breath away. Whether you enjoy racquet sports, hitting the treadmill or swimming laps, you’ll find fitness options that meet all of your needs. Enjoy six hundred square metres of health club with a modern TechnoGym, cardio and strength equipment, a 20 metre lap pool, squash courts and floodlit tennis court.<br/> <br/>\r\nAerobics, a range of exercise classes, massage rooms, and male and female steam and sauna rooms are also available. The fully staffed centre provides spectacular views of the Owen Stanley Ranges with stunning decor and lovely garden settings. Open 7 days a week, annual memberships or casual visitations are available.','Ext. 3400 or Reception Ext. 4999','5.30am - 10pm 7 Days a week','[\"features\\/August2018\\/x3TNUJUFJzKtxF1U2LRx.jpg\",\"features\\/August2018\\/XSdc5yvq277wthbqr2O0.jpg\"]'),(11,'2018-08-08 04:50:28','2018-08-08 04:50:28','Retail Outlet','Convenience Store with pharmacy services open 7 days. Westpac Bank Branch with ATM. Arts and Crafts Gift Shop. Technology Shop with internet subscription and mobile telephones. Crabtree & Evelyn Shop offering soaps and perfumes.','Reception for assistance. Ext. 4999','7 Days','[\"features\\/August2018\\/0STo3cBPK1hDvDlGVCJD.jpg\"]'),(12,'2018-08-08 05:02:00','2018-08-09 00:46:23','Deli KC','At Deli KC, our Poolside Deli and Café, the spirit of Italian cuisine comes to Papua New Guinea (PNG). Part-delicatessen, part-bistro, Deli KC is one of Port Moresby’s favourite meeting places. Daily specials are prepared by talented kitchen staff, while breads, pastries and pasta are handmade on the premises. <br/> <br/> The Deli KC pizza oven produces a range of mouthwatering pizza. From coffee and pastries in the morning, to a homemade focaccia for lunch, to the pasta special with a glass of wine for dinner, Deli KC offers first-class quality and variety in air conditioned comfort. After your visit, why not take away a selection of handmade chocolates or gourmet cheeses from the sumptuous deli counter? Many are tempted.','+675 324 5200, Ext. 3400 or Reception Ext. 4999','6.00am to 10.00pm daily','[\"features\\/August2018\\/6XvcFfmsIS0WIz0BXK1Q.jpg\",\"features\\/August2018\\/Qsqa1U5epZKeVdZ6hNcS.jpg\"]'),(13,'2018-08-10 02:17:00','2018-08-17 01:21:58','Day Spa','With multiple world luxury awards, Bliss the Spa is PNG’s most luxurious spa complex. Located within the Airways Hotel ground floor concourse, Bliss the Spa is an ideal place to relax in style. Adorned with selected Thai artefacts, its candlelit spaces exude calm and comfort.<br/> <br/>Individually air conditioned rooms deliver a precise, controlled environment for a level of care unparalleled in the Pacific. Bliss the Spa offers a full range of massages, luxury baths and facials, for singles or couples. <br/> <br/> For more information on exclusive packages, please contact.','Ext. 3364 or 3326 or Reception Ext. 4999','5.30am to 10.00pm, 7 days a week','[\"features\\/August2018\\/SLY7uss6MxVSuf0Nk14K.jpg\"]'),(14,'2018-08-10 02:18:00','2018-08-17 01:45:16','HOUSEKEEPING SERVICES','<strong>HOUSEKEEPING SERVICES</strong><br/>\r\nLet Airways Residences make your life more enjoyable by doing all of your cleaning for you. All apartments are serviced daily, 7 days a week.<br/><br/>\r\nOperating hours 8am - 9pm<br/>\r\nDirector of Housekeeping Ext. 4994<br/>\r\nHousekeeping Co-ordinators Ext. 4993<br/>\r\nAfter Hours Assistance Ext. 4999.<br/>\r\nContact Reception for assistance. Ext. 4999.<br/><br/>\r\n\r\n<strong>LAUNDRY & DRY CLEANING</strong><br/>\r\nAirways Residences has a laundry and dry cleaning service it uses that can also take care of your needs.','Reception Ext. 4999','7 Days a week','[\"features\\/August2018\\/ElGsrcY9OL1QD3V0fjLZ.jpg\"]'),(15,'2018-08-10 02:20:00','2018-08-13 06:34:56','Tailor','Located within the Airways Hotel ground floor, our in-house Tailor can fashion a garment to your exact specifications, body dimensions and personal style. You are in control of the fabric choice, features and fit, from the type of button or lapel style, to the cuff size and way the garment should be made. A selection of the finest Italian fabrics are offered, in addition to Ausfine - the most superb quality cloth considered to be the best material in the world for men’s and women’s suits. Make contact today to book an appointment. <br/>Email: retail@airways.com.pg','+324 5200 Ext. 3307 or Reception Ext. 4999','8.00am to 7.00pm, Monday to Saturday','[\"features\\/August2018\\/XqzBvnJ4plJvC1C7iHWl.jpg\"]'),(16,'2018-08-10 02:21:00','2018-08-13 06:35:15','Taxi, Hire Car & Shuttles','There are numerous ways to travel around Port Moresby. There are security companies that offer Uberstyle transport, taxis, hire care and the airport shuttle services. Reception can help you with your transport requirements.','Reception Ext. 4999','7 Days a week','[\"features\\/August2018\\/xd7Lz9NbtDOMzWz8phfa.jpg\"]'),(17,'2018-08-10 02:23:00','2018-08-17 01:46:56','Vue Poolside Restaurant','With its spectacular views of Jackson’s International Airport and the mist-clad peaks of the Owen Stanley Ranges as a backdrop, a meal at Vue Poolside Restaurant is an experience not to be missed. The restaurant was recently remodeled and offers comfort, style, friendly service and excellent food. <br/><br/>Choose from an à la carte menu, or select from a sumptuous buffet featuring fresh local seafood and homemade desserts. In the evenings, the adjacent poolside bar comes alive, providing a relaxed, informal place to meet and eat with live music under the stars.','+675 324 5200 Ext. 3400 or Reception Ext. 4999','6.00am to 10.00pm daily','[\"features\\/August2018\\/n46XKibX24I87zOgx62i.jpg\",\"features\\/August2018\\/g2Fzd4FCl9zzKh42uC5Y.jpg\"]'),(18,'2018-08-13 01:55:00','2018-08-17 02:02:58','BACCHUS RESTAURANT','Bacchus is Airways’ premier restaurant and offers the finest dining experience in PNG. Convenient parking right next to the restaurant, the location is within the Airways Hotel grounds. A fine dining experience of the highest quality, combining the freshest local produce, including PNG’s famous seafood, along with high quality imported ingredients. With PNG’s best stocked wine cellar and attentive table service, Bacchus Restaurant transforms every meal into a memorable dining experience.\r\n<br/><br/>Opening hours: Lunch: 12.00 noon to 3.00pm , Dinner: 6.00pm to 10.00pm, closed for lunch on Saturdays and Sundays.','+675 324 5200, Ext. 3400 or Reception Ext. 4999','Lunch: 12pm - 3pm, Dinner: 6pm - 10pm.','[\"features\\/August2018\\/d0nKdALG1fd72hX77LJO.jpg\"]'),(19,'2018-08-13 02:13:00','2018-08-13 06:38:10','HAVANABA COCKTAIL LOUNGE','Start or finish your evening in style at the nostalgic Havanaba Cocktail Lounge, located adjoining the Bacchus Restaurant. With its 100 year old liqueur lockers and leather armchairs, the Havanaba offers a cosy, old-school atmosphere in which to relax and unwind with special friends or colleagues. With attentive staff ready to serve you from a wide range of fine wines, malts, cognacs and ports, there’s nothing left to do but focus on the conversation.','+675 324 5200, Ext. 3400 or Reception Ext. 4999','6.00pm to 10.00pm daily','[\"features\\/August2018\\/qf7oCuGASEfzUBjBkwnG.jpg\"]'),(20,'2018-08-13 02:14:00','2018-08-17 01:20:50','SEVEN C’S CAFÉ BAR','Seven C’s Café is a perfect place to meet for morning coffee, afternoon tea or evening cocktails. Located within the Airways Hotel ground floor concourse, it’s a place to relax under distinctive punkah fans, or settle on a couch in lush surrounds and sample daily treats from their kitchens. Coffee, chocolate, cocktails, canapés, cakes, champagne and cookies.','+675 324 5200, Ext. 3400 or Reception Ext. 4999','7.00am to 9.00pm daily','[\"features\\/August2018\\/XtryH5CVOVO0Yy4xjdaS.jpg\"]');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images_path` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (34,'2018-08-07 00:09:00','2018-08-13 06:09:58','View at Residences','galleries/August2018/7Q7M4EpAT5m1NMecK959.jpg'),(35,'2018-08-07 00:10:03','2018-08-07 00:10:03','Swimming Pool','galleries/August2018/sCyP6W3Teu6B5TsG1iDO.jpg'),(36,'2018-08-07 00:10:27','2018-08-07 00:10:27','Balcony View','galleries/August2018/QT5VmKCI8elBtQiJQWyt.jpg'),(37,'2018-08-07 00:10:42','2018-08-07 00:10:42','Dining Room','galleries/August2018/RxgRrCGP36uvDuXf45VJ.jpg'),(38,'2018-08-07 00:11:12','2018-08-07 00:11:12','View of Residences','galleries/August2018/4pfHFQIGZWp85OGKUi3A.jpg'),(39,'2018-08-07 00:11:35','2018-08-07 00:11:35','Residences','galleries/August2018/UZDHMo4O2L7YuFv0mJ3x.jpg'),(40,'2018-08-07 00:12:07','2018-08-07 00:12:07','Mid Range Villa Interior','galleries/August2018/coDN6ZiYrMH6mGzQMDlR.jpg'),(41,'2018-08-07 00:12:00','2018-08-13 06:30:37','Penthouse Apartment','galleries/August2018/gzKhg2ZUlkWuL1VbgTqg.jpg'),(42,'2018-08-07 00:13:24','2018-08-07 00:13:24','Standard Apartment Interior','galleries/August2018/ESxJCKSdew5CVTzfBvDe.jpg'),(43,'2018-08-07 00:13:48','2018-08-07 00:13:48','Standard Apartment Interior','galleries/August2018/qIyQUuMD79pCXglE5IsP.jpg'),(44,'2018-08-07 00:14:16','2018-08-07 00:14:16','Luxury Apartment Bathroom','galleries/August2018/FGwfocTb7CQREd3aylyb.jpg'),(45,'2018-08-07 00:14:37','2018-08-07 00:14:37','Standard Apartment Interior','galleries/August2018/y26Q7TEcsJ6NLj3oKPDO.jpg'),(46,'2018-08-07 00:14:56','2018-08-07 00:14:56','Standard Apartment Interior','galleries/August2018/0icbJ6SBVabBRI6iN0E4.jpg'),(47,'2018-08-07 00:15:19','2018-08-07 00:15:19','Standard Apartment Interior','galleries/August2018/yoCooVjFvTxJGvnNhGt9.jpg'),(49,'2018-08-07 00:16:37','2018-08-07 00:16:37','Mid Range Villa Bathroom','galleries/August2018/uMPBKVs4NdElAaVrXru4.jpg'),(51,'2018-08-07 00:17:43','2018-08-07 00:17:43','Penthouse Apartment Bedroom','galleries/August2018/JQ8zErlyCA68s9sDOV3z.jpg'),(52,'2018-08-07 00:18:19','2018-08-07 00:18:19','Penthouse Apartment Kitchen','galleries/August2018/yU8eQr3oBpZzD2qzOsTJ.jpg'),(53,'2018-08-07 00:18:45','2018-08-07 00:18:45','Penthouse Apartment Interior','galleries/August2018/4eCXIhnLMDSBLZu4fQ4v.jpg'),(54,'2018-08-07 00:19:28','2018-08-07 00:19:28','Residences Local Lake','galleries/August2018/aHr5PbfcDhJYWDhyH4q1.jpg'),(55,'2018-08-07 00:20:00','2018-08-13 06:31:34','Penthouse Dining Room','galleries/August2018/m5Ypr9daoNIuDuMZhmv0.jpg'),(56,'2018-08-07 00:20:42','2018-08-07 00:20:42','Luxury Apartment Balcony','galleries/August2018/Wg4dHgrNVCc2110SvFPo.jpg'),(57,'2018-08-07 00:21:04','2018-08-07 00:21:04','Penthouse Apartment Bedroom','galleries/August2018/DOlll1qkP5ToW7GHc8a9.jpg'),(58,'2018-08-07 00:21:19','2018-08-07 00:21:19','Penthouse Apartment Bedroom','galleries/August2018/bsFtzqwlzHhUzuqUsoW8.jpg'),(59,'2018-08-07 00:21:38','2018-08-07 00:21:38','Penthouse Apartment Interior','galleries/August2018/P8Y3EhnrHOq7u4N29eOR.jpg');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maps`
--

DROP TABLE IF EXISTS `maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images_path` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maps`
--

LOCK TABLES `maps` WRITE;
/*!40000 ALTER TABLE `maps` DISABLE KEYS */;
INSERT INTO `maps` VALUES (1,'2018-05-01 01:50:14','2018-05-01 01:50:14','maps/May2018/3V8OeXFlbhn3JcrFIigH.png');
/*!40000 ALTER TABLE `maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-04-30 06:24:12','2018-04-30 06:24:12','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2018-04-30 06:24:12','2018-04-30 07:17:56','voyager.media.index',NULL),(3,1,'Posts','','_self','voyager-news',NULL,NULL,5,'2018-04-30 06:24:12','2018-04-30 07:17:56','voyager.posts.index',NULL),(4,1,'Users','','_self','voyager-person',NULL,NULL,3,'2018-04-30 06:24:12','2018-04-30 06:24:12','voyager.users.index',NULL),(5,1,'Categories','','_self','voyager-categories',NULL,NULL,7,'2018-04-30 06:24:12','2018-04-30 07:17:56','voyager.categories.index',NULL),(6,1,'Pages','','_self','voyager-file-text',NULL,NULL,6,'2018-04-30 06:24:12','2018-04-30 07:17:56','voyager.pages.index',NULL),(7,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2018-04-30 06:24:12','2018-04-30 06:24:12','voyager.roles.index',NULL),(8,1,'Tools','','_self','voyager-tools',NULL,NULL,8,'2018-04-30 06:24:12','2018-04-30 07:17:56',NULL,NULL),(9,1,'Menu Builder','','_self','voyager-list',NULL,8,1,'2018-04-30 06:24:12','2018-04-30 07:17:56','voyager.menus.index',NULL),(10,1,'Database','','_self','voyager-data',NULL,8,2,'2018-04-30 06:24:12','2018-04-30 07:17:56','voyager.database.index',NULL),(11,1,'Compass','','_self','voyager-compass',NULL,8,3,'2018-04-30 06:24:12','2018-04-30 07:17:56','voyager.compass.index',NULL),(12,1,'Settings','','_self','voyager-settings',NULL,NULL,9,'2018-04-30 06:24:12','2018-04-30 07:17:56','voyager.settings.index',NULL),(13,1,'Hooks','','_self','voyager-hook',NULL,8,4,'2018-04-30 06:24:12','2018-04-30 07:17:56','voyager.hooks',NULL),(14,1,'Apartments','/admin/apartments','_self','voyager-company','#000000',NULL,10,'2018-04-30 06:30:01','2018-04-30 07:17:56',NULL,''),(15,1,'Features','/admin/features','_self','voyager-shop',NULL,NULL,11,'2018-04-30 06:47:56','2018-04-30 07:17:56',NULL,NULL),(16,1,'Galleries','/admin/galleries','_self','voyager-images','#000000',NULL,12,'2018-04-30 06:58:45','2018-04-30 07:17:56',NULL,''),(17,1,'Maps','/admin/maps','_self','voyager-handle','#000000',NULL,13,'2018-04-30 07:17:12','2018-04-30 07:18:01',NULL,''),(18,1,'Promotions','/admin/promotions','_self','voyager-tv',NULL,NULL,14,'2018-04-30 07:19:14','2018-04-30 07:19:14',NULL,NULL),(19,1,'Videos','/admin/videos','_self','voyager-video','#000000',NULL,15,'2018-04-30 07:20:41','2018-04-30 07:21:18',NULL,''),(20,1,'Directory Displays','/admin/directory-displays','_self','voyager-news',NULL,NULL,16,'2018-05-09 00:06:18','2018-05-09 00:06:18',NULL,NULL),(21,1,'Sections','/admin/sections','_self','voyager-list',NULL,NULL,17,'2018-05-09 00:11:04','2018-05-09 00:11:04',NULL,NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2018-04-30 06:24:12','2018-04-30 06:24:12');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_04_03_230337_create_apartments_table',1),(4,'2018_04_03_230949_create_features_table',1),(5,'2018_04_03_231400_create_galleries_table',1),(6,'2018_04_03_231710_create_maps_table',1),(7,'2018_04_03_232105_create_promotions_table',1),(8,'2018_04_03_232212_create_videos_table',1),(9,'2016_01_01_000000_add_voyager_user_fields',2),(10,'2016_01_01_000000_create_data_types_table',2),(11,'2016_01_01_000000_create_pages_table',2),(12,'2016_01_01_000000_create_posts_table',2),(13,'2016_02_15_204651_create_categories_table',2),(14,'2016_05_19_173453_create_menu_table',2),(15,'2016_10_21_190000_create_roles_table',2),(16,'2016_10_21_190000_create_settings_table',2),(17,'2016_11_30_135954_create_permission_table',2),(18,'2016_11_30_141208_create_permission_role_table',2),(19,'2016_12_26_201236_data_types__add__server_side',2),(20,'2017_01_13_000000_add_route_to_menu_items_table',2),(21,'2017_01_14_005015_create_translations_table',2),(22,'2017_01_15_000000_add_permission_group_id_to_permissions_table',2),(23,'2017_01_15_000000_create_permission_groups_table',2),(24,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',2),(25,'2017_03_06_000000_add_controller_to_data_types_table',2),(26,'2017_04_11_000000_alter_post_nullable_fields_table',2),(27,'2017_04_21_000000_add_order_to_data_rows_table',2),(28,'2017_07_05_210000_add_policyname_to_data_types_table',2),(29,'2017_08_05_000000_add_group_to_settings_table',2),(30,'2018_05_02_012925_create_sections_table',3),(31,'2018_05_02_013018_create_directory_displays_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2018-04-30 06:24:12','2018-04-30 06:24:12');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
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
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,3),(1,4),(2,1),(3,1),(3,4),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(41,1),(41,3),(41,4),(42,1),(42,3),(42,4),(43,1),(43,3),(43,4),(44,1),(44,3),(44,4),(45,1),(45,3),(45,4),(46,1),(46,3),(46,4),(47,1),(47,3),(47,4),(48,1),(48,3),(48,4),(49,1),(49,3),(49,4),(50,1),(50,3),(50,4),(51,1),(51,3),(51,4),(52,1),(52,3),(52,4),(53,1),(53,3),(53,4),(54,1),(54,3),(54,4),(55,1),(55,3),(55,4),(56,1),(56,3),(57,1),(57,3),(58,1),(58,3),(59,1),(59,3),(60,1),(60,3),(61,1),(61,3),(61,4),(62,1),(62,3),(62,4),(63,1),(63,3),(63,4),(64,1),(64,3),(64,4),(65,1),(65,3),(65,4),(66,1),(66,3),(66,4),(67,1),(67,3),(67,4),(68,1),(68,3),(68,4),(69,1),(69,3),(69,4),(70,1),(70,3),(70,4),(71,1),(71,4),(72,1),(72,4),(73,1),(73,4),(74,1),(74,4),(75,1),(75,4),(76,1),(76,4),(77,1),(77,4),(78,1),(78,4),(79,1),(79,4),(80,1),(80,4);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(2,'browse_database',NULL,'2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(3,'browse_media',NULL,'2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(4,'browse_compass',NULL,'2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(5,'browse_menus','menus','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(6,'read_menus','menus','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(7,'edit_menus','menus','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(8,'add_menus','menus','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(9,'delete_menus','menus','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(10,'browse_pages','pages','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(11,'read_pages','pages','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(12,'edit_pages','pages','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(13,'add_pages','pages','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(14,'delete_pages','pages','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(15,'browse_roles','roles','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(16,'read_roles','roles','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(17,'edit_roles','roles','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(18,'add_roles','roles','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(19,'delete_roles','roles','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(20,'browse_users','users','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(21,'read_users','users','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(22,'edit_users','users','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(23,'add_users','users','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(24,'delete_users','users','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(25,'browse_posts','posts','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(26,'read_posts','posts','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(27,'edit_posts','posts','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(28,'add_posts','posts','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(29,'delete_posts','posts','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(30,'browse_categories','categories','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(31,'read_categories','categories','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(32,'edit_categories','categories','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(33,'add_categories','categories','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(34,'delete_categories','categories','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(35,'browse_settings','settings','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(36,'read_settings','settings','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(37,'edit_settings','settings','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(38,'add_settings','settings','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(39,'delete_settings','settings','2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(40,'browse_hooks',NULL,'2018-04-30 06:24:12','2018-04-30 06:24:12',NULL),(41,'browse_apartments','apartments','2018-04-30 06:30:01','2018-04-30 06:30:01',NULL),(42,'read_apartments','apartments','2018-04-30 06:30:01','2018-04-30 06:30:01',NULL),(43,'edit_apartments','apartments','2018-04-30 06:30:01','2018-04-30 06:30:01',NULL),(44,'add_apartments','apartments','2018-04-30 06:30:01','2018-04-30 06:30:01',NULL),(45,'delete_apartments','apartments','2018-04-30 06:30:01','2018-04-30 06:30:01',NULL),(46,'browse_features','features','2018-04-30 06:47:56','2018-04-30 06:47:56',NULL),(47,'read_features','features','2018-04-30 06:47:56','2018-04-30 06:47:56',NULL),(48,'edit_features','features','2018-04-30 06:47:56','2018-04-30 06:47:56',NULL),(49,'add_features','features','2018-04-30 06:47:56','2018-04-30 06:47:56',NULL),(50,'delete_features','features','2018-04-30 06:47:56','2018-04-30 06:47:56',NULL),(51,'browse_galleries','galleries','2018-04-30 06:58:45','2018-04-30 06:58:45',NULL),(52,'read_galleries','galleries','2018-04-30 06:58:45','2018-04-30 06:58:45',NULL),(53,'edit_galleries','galleries','2018-04-30 06:58:45','2018-04-30 06:58:45',NULL),(54,'add_galleries','galleries','2018-04-30 06:58:45','2018-04-30 06:58:45',NULL),(55,'delete_galleries','galleries','2018-04-30 06:58:45','2018-04-30 06:58:45',NULL),(56,'browse_maps','maps','2018-04-30 07:17:12','2018-04-30 07:17:12',NULL),(57,'read_maps','maps','2018-04-30 07:17:12','2018-04-30 07:17:12',NULL),(58,'edit_maps','maps','2018-04-30 07:17:12','2018-04-30 07:17:12',NULL),(59,'add_maps','maps','2018-04-30 07:17:12','2018-04-30 07:17:12',NULL),(60,'delete_maps','maps','2018-04-30 07:17:12','2018-04-30 07:17:12',NULL),(61,'browse_promotions','promotions','2018-04-30 07:19:14','2018-04-30 07:19:14',NULL),(62,'read_promotions','promotions','2018-04-30 07:19:14','2018-04-30 07:19:14',NULL),(63,'edit_promotions','promotions','2018-04-30 07:19:14','2018-04-30 07:19:14',NULL),(64,'add_promotions','promotions','2018-04-30 07:19:14','2018-04-30 07:19:14',NULL),(65,'delete_promotions','promotions','2018-04-30 07:19:14','2018-04-30 07:19:14',NULL),(66,'browse_videos','videos','2018-04-30 07:20:41','2018-04-30 07:20:41',NULL),(67,'read_videos','videos','2018-04-30 07:20:41','2018-04-30 07:20:41',NULL),(68,'edit_videos','videos','2018-04-30 07:20:41','2018-04-30 07:20:41',NULL),(69,'add_videos','videos','2018-04-30 07:20:41','2018-04-30 07:20:41',NULL),(70,'delete_videos','videos','2018-04-30 07:20:41','2018-04-30 07:20:41',NULL),(71,'browse_directory_displays','directory_displays','2018-05-09 00:06:18','2018-05-09 00:06:18',NULL),(72,'read_directory_displays','directory_displays','2018-05-09 00:06:18','2018-05-09 00:06:18',NULL),(73,'edit_directory_displays','directory_displays','2018-05-09 00:06:18','2018-05-09 00:06:18',NULL),(74,'add_directory_displays','directory_displays','2018-05-09 00:06:18','2018-05-09 00:06:18',NULL),(75,'delete_directory_displays','directory_displays','2018-05-09 00:06:18','2018-05-09 00:06:18',NULL),(76,'browse_sections','sections','2018-05-09 00:11:04','2018-05-09 00:11:04',NULL),(77,'read_sections','sections','2018-05-09 00:11:04','2018-05-09 00:11:04',NULL),(78,'edit_sections','sections','2018-05-09 00:11:04','2018-05-09 00:11:04',NULL),(79,'add_sections','sections','2018-05-09 00:11:04','2018-05-09 00:11:04',NULL),(80,'delete_sections','sections','2018-05-09 00:11:04','2018-05-09 00:11:04',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-04-30 06:24:12','2018-04-30 06:24:12'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-04-30 06:24:12','2018-04-30 06:24:12'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-04-30 06:24:12','2018-04-30 06:24:12'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-04-30 06:24:12','2018-04-30 06:24:12');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images_path` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (5,'2018-08-07 01:25:30','2018-08-07 01:25:30','promotions/August2018/Re40YXjjW9jzGSQiDK7I.png',1),(6,'2018-08-07 01:25:46','2018-08-07 01:25:46','promotions/August2018/BFmU6Gr5UnL2gPpGUgeK.png',2),(9,'2018-08-10 00:15:22','2018-08-10 00:15:22','promotions/August2018/7f5g3bZ0LzbO2XGZVlF7.jpg',4);
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2018-04-30 06:24:12','2018-04-30 06:24:12'),(2,'user','Normal User','2018-04-30 06:24:12','2018-04-30 06:24:12'),(3,'test','test','2018-05-01 02:17:41','2018-05-01 02:17:41'),(4,'Airways','Airways','2018-07-26 04:01:57','2018-07-26 04:01:57');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (7,'2018-08-08 05:51:00','2018-08-13 05:04:02','Activities','sections/August2018/ZbyuoDZk98kTh08TM5sI.jpg'),(8,'2018-08-08 05:58:00','2018-08-13 05:02:16','Events','sections/August2018/9xBbwRURu5wMRzqQi0jy.jpg'),(9,'2018-08-08 05:59:00','2018-08-13 05:11:11','Retail & Services','sections/August2018/CwK5fpB3vltHnOAJ6ORA.jpg'),(10,'2018-08-08 05:59:00','2018-08-17 02:12:17','Attractions','sections/August2018/LkiBwWrBaZmYUy3Hfm18.jpg'),(11,'2018-08-09 01:37:00','2018-08-13 05:03:48','Dining','sections/August2018/IacqSQgPjhai6aMZ8ady.jpg');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Airways Residences','','text',1,'Site'),(2,'site.description','Site Description','Airways Residences','','text',2,'Site'),(3,'site.logo','Site Logo','settings/May2018/6n4ndOPhHMFavNQ3KoUt.png','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',1,'pt','Post','2018-04-30 06:24:12','2018-04-30 06:24:12'),(2,'data_types','display_name_singular',2,'pt','Página','2018-04-30 06:24:12','2018-04-30 06:24:12'),(3,'data_types','display_name_singular',3,'pt','Utilizador','2018-04-30 06:24:12','2018-04-30 06:24:12'),(4,'data_types','display_name_singular',4,'pt','Categoria','2018-04-30 06:24:12','2018-04-30 06:24:12'),(5,'data_types','display_name_singular',5,'pt','Menu','2018-04-30 06:24:12','2018-04-30 06:24:12'),(6,'data_types','display_name_singular',6,'pt','Função','2018-04-30 06:24:12','2018-04-30 06:24:12'),(7,'data_types','display_name_plural',1,'pt','Posts','2018-04-30 06:24:12','2018-04-30 06:24:12'),(8,'data_types','display_name_plural',2,'pt','Páginas','2018-04-30 06:24:12','2018-04-30 06:24:12'),(9,'data_types','display_name_plural',3,'pt','Utilizadores','2018-04-30 06:24:12','2018-04-30 06:24:12'),(10,'data_types','display_name_plural',4,'pt','Categorias','2018-04-30 06:24:12','2018-04-30 06:24:12'),(11,'data_types','display_name_plural',5,'pt','Menus','2018-04-30 06:24:12','2018-04-30 06:24:12'),(12,'data_types','display_name_plural',6,'pt','Funções','2018-04-30 06:24:12','2018-04-30 06:24:12'),(13,'categories','slug',1,'pt','categoria-1','2018-04-30 06:24:12','2018-04-30 06:24:12'),(14,'categories','name',1,'pt','Categoria 1','2018-04-30 06:24:12','2018-04-30 06:24:12'),(15,'categories','slug',2,'pt','categoria-2','2018-04-30 06:24:12','2018-04-30 06:24:12'),(16,'categories','name',2,'pt','Categoria 2','2018-04-30 06:24:12','2018-04-30 06:24:12'),(17,'pages','title',1,'pt','Olá Mundo','2018-04-30 06:24:12','2018-04-30 06:24:12'),(18,'pages','slug',1,'pt','ola-mundo','2018-04-30 06:24:12','2018-04-30 06:24:12'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2018-04-30 06:24:12','2018-04-30 06:24:12'),(20,'menu_items','title',1,'pt','Painel de Controle','2018-04-30 06:24:12','2018-04-30 06:24:12'),(21,'menu_items','title',2,'pt','Media','2018-04-30 06:24:12','2018-04-30 06:24:12'),(22,'menu_items','title',3,'pt','Publicações','2018-04-30 06:24:12','2018-04-30 06:24:12'),(23,'menu_items','title',4,'pt','Utilizadores','2018-04-30 06:24:12','2018-04-30 06:24:12'),(24,'menu_items','title',5,'pt','Categorias','2018-04-30 06:24:12','2018-04-30 06:24:12'),(25,'menu_items','title',6,'pt','Páginas','2018-04-30 06:24:12','2018-04-30 06:24:12'),(26,'menu_items','title',7,'pt','Funções','2018-04-30 06:24:12','2018-04-30 06:24:12'),(27,'menu_items','title',8,'pt','Ferramentas','2018-04-30 06:24:12','2018-04-30 06:24:12'),(28,'menu_items','title',9,'pt','Menus','2018-04-30 06:24:12','2018-04-30 06:24:12'),(29,'menu_items','title',10,'pt','Base de dados','2018-04-30 06:24:12','2018-04-30 06:24:12'),(30,'menu_items','title',12,'pt','Configurações','2018-04-30 06:24:12','2018-04-30 06:24:12');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/default.png','$2y$10$Ps0NlBQu9C0r/fn7asPQquTE3rs083FAWOeQN./kdV9q/naxvxXxq','7U7DnlBwB5p7DtFRLyCo53ctspq266iyZIQkMZ2odABOci0mWjDlntRjGC3J','2018-04-30 06:24:12','2018-08-05 23:57:28'),(2,3,'Test Account','test@test.com','users/May2018/dpVDWkfsymWeOrxkRaZS.png','$2y$10$2OaAtfh/.7RRmndHroHTfeQLTwVoHgr1BP86T5cdJd5waC51F8g3i',NULL,'2018-05-01 02:16:40','2018-05-23 07:29:41'),(3,4,'Airways Residences','laura@johnbatman.com.au','users/default.png','$2y$10$2fzEorIy7P4f.t0Xhbjokuv.DnnZH7SVtTZqSXTezM3yoM1.jqMFK','VtIlKA7Mfg6sfFfrN7enLOGCO7UyxDknJTVszovDwffpJlxx62toqZUnbUqf','2018-07-26 04:00:31','2018-08-05 23:50:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `path` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (2,'2018-08-07 01:20:31','2018-08-07 01:20:31','[{\"download_link\":\"videos\\/August2018\\/PhZ20pw4raXqbkEwgMcy.mp4\",\"original_name\":\"Airways Residences Video.mp4\"}]');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-19 23:48:03
