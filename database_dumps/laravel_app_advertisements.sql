-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel_app
-- ------------------------------------------------------
-- Server version	8.4.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `advertisements`
--

DROP TABLE IF EXISTS `advertisements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `no_rooms` smallint unsigned DEFAULT NULL,
  `property_size` int unsigned DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `property_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `advertisements_user_id_foreign` (`user_id`),
  KEY `advertisements_city_country_index` (`city`,`country`),
  KEY `advertisements_property_type_index` (`property_type`),
  KEY `advertisements_price_index` (`price`),
  CONSTRAINT `advertisements_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisements`
--

LOCK TABLES `advertisements` WRITE;
/*!40000 ALTER TABLE `advertisements` DISABLE KEYS */;
INSERT INTO `advertisements` VALUES (1,'Douglas Hill House','Abdielfurt','Serbia','Unde deserunt maiores sapiente qui totam iure vel. Dolores quis molestias suscipit aut. Iusto fuga rerum quia mollitia laudantium qui.',1,1627,299247.29,'villa','2025-10-02 05:06:18','2025-10-03 05:14:23',4,11,'product.jpg'),(2,'Hettie Light Listing','North Caleb','Poland','Dolores eaque eos in velit est qui. Harum tempore ut voluptatem magni quas non rerum.',2,3037,71675.95,'commercial','2025-10-02 05:06:18','2025-10-03 05:14:25',10,11,'product.jpg'),(3,'Frederick Forest Listing','Port Warrenside','Gambia','Non harum recusandae et cum enim possimus. Ea voluptatum voluptatem voluptatibus nisi velit labore omnis. Repellendus omnis autem vel expedita consequatur quo delectus.',7,2767,390733.36,'villa','2025-10-02 05:06:18','2025-10-03 05:14:26',8,11,'product.jpg'),(4,'Heath Parkways House','Lake Berry','Marshall Islands','Quasi aut non rerum excepturi. Error qui repellendus quis. Voluptas qui velit culpa saepe. Culpa quibusdam quo consectetur sapiente asperiores est quis.',7,3537,159233.98,'apartment','2025-10-02 05:06:18','2025-10-03 05:14:27',2,11,'product.jpg'),(5,'Fahey Canyon Listing','Port Jaunitatown','Uzbekistan','Ad iusto et ut. Dolore est quia aut libero est. Tenetur dicta aut magni. Facilis amet est quaerat saepe voluptate enim. Et dolores voluptates fuga quaerat ducimus corporis.',0,3168,218138.53,'land','2025-10-02 05:06:18','2025-10-03 05:14:28',3,11,'product.jpg'),(6,'Polly Valleys Listing','South Electa','Trinidad and Tobago','Veritatis et aut vero ex. Et voluptatem et minima consequuntur et deleniti dolor. Est quia quam soluta quas cumque omnis sed.',6,2201,709783.71,'villa','2025-10-02 05:06:18','2025-10-03 05:14:28',2,11,'product.jpg'),(7,'Alysa Ports Listing','New Annamarie','Christmas Island','Nihil laboriosam ut laborum perferendis sed necessitatibus illum. Autem autem veniam alias et. Eos sint asperiores debitis et sint. Atque perferendis eos sed quis quo.',7,3371,124818.31,'villa','2025-10-02 05:06:18','2025-10-03 05:14:30',3,11,'product.jpg'),(8,'Nathaniel Plain Apartment','Adelbertton','Hong Kong','Illo veniam nostrum ducimus repellendus. Autem neque repellat quae soluta animi enim. Totam eum qui consequatur quo officia enim libero et.',7,3807,158582.68,'land','2025-10-02 05:06:18','2025-10-03 05:14:30',3,11,'product.jpg'),(9,'Sauer Avenue Listing','Schuppestad','Morocco','Aut et corporis voluptas est est dicta blanditiis. Voluptas libero magnam modi eum sapiente qui vel. Quam beatae ipsum eius architecto. Ducimus perferendis enim quasi labore hic excepturi ex.',4,3491,306536.99,'apartment','2025-10-02 05:06:18','2025-10-03 05:14:31',7,11,'product.jpg'),(10,'Connelly Manors Apartment','Port Linamouth','Moldova','Aperiam eius et veniam corporis. Consectetur earum et facere eveniet. Omnis blanditiis explicabo incidunt animi libero fuga dolor. Sapiente et quos soluta et cum fuga.',8,2757,1115703.73,'room','2025-10-02 05:06:18','2025-10-02 05:06:18',3,NULL,'product.jpg'),(11,'Harvey Glen House','Heaneyfurt','Chad','Dolor ea porro sit omnis praesentium dolor. Non optio explicabo rerum ut sed quaerat. Voluptates quo culpa quae ipsum natus.',8,740,990952.13,'villa','2025-10-02 05:06:18','2025-10-02 05:06:18',10,NULL,'product.jpg'),(12,'Nicola Mountain Apartment','East Biankachester','Somalia','Molestiae iusto aut rerum asperiores. Laboriosam eos tempore distinctio. Autem quidem dolorum qui. Dolores sed magnam sit cumque dolores harum.',5,550,773047.10,'commercial','2025-10-02 05:06:18','2025-10-02 05:06:18',8,NULL,'product.jpg'),(13,'Kihn Locks Apartment','Lake Kadin','Guatemala','Facere aut aut ducimus quis. Quos sed autem consequatur eligendi vel qui exercitationem.',1,2761,469129.66,'villa','2025-10-02 05:06:18','2025-10-02 05:06:18',2,NULL,'product.jpg'),(14,'Alford Street Apartment','Trantowville','Tuvalu','Sed soluta id sint facere. Eveniet sunt accusamus rerum at ut odit earum. Sed repudiandae dicta amet id sunt reprehenderit. Rem a saepe exercitationem qui.',4,3101,387846.01,'room','2025-10-02 05:06:18','2025-10-02 05:06:18',4,NULL,'product.jpg'),(15,'Vanessa Mission Listing','East Eloy','Zambia','Qui delectus sunt sint sit corporis expedita. Laboriosam officiis aliquid aut quia non. Molestias cupiditate perferendis odio.',6,703,360736.16,'apartment','2025-10-02 05:06:18','2025-10-02 05:06:18',3,NULL,'product.jpg'),(16,'Armani Brooks Apartment','Port Vivianstad','Senegal','Cupiditate aliquid id reiciendis in. Ut eius laudantium distinctio impedit. Molestiae eum qui eos voluptatem voluptas voluptatem. Et eos non ut aut explicabo.',7,2022,115326.38,'land','2025-10-02 05:06:18','2025-10-02 05:06:18',6,NULL,'product.jpg'),(17,'Fahey Ranch House','Alveraburgh','Guatemala','Perferendis ut totam dolores molestiae omnis veniam. Optio dolores molestiae ipsam. Sit aut assumenda ea.',5,1487,1203828.35,'villa','2025-10-02 05:06:18','2025-10-02 05:06:18',5,NULL,'product.jpg'),(18,'Eleanora Lock House','Simonisville','Singapore','Blanditiis et et qui quia ut similique veritatis eligendi. Rerum recusandae aut sed at omnis. Maxime nihil quae asperiores esse saepe suscipit eos consectetur. Sit qui corrupti quia assumenda.',3,1528,990096.25,'villa','2025-10-02 05:06:18','2025-10-02 05:06:18',1,NULL,'product.jpg'),(19,'Hans Tunnel Listing','New Mohammadfort','Faroe Islands','Consectetur dicta consectetur et adipisci nihil molestias aut. Voluptatem repudiandae omnis perspiciatis quasi qui voluptatem. Provident atque ipsum earum suscipit rerum quibusdam. Explicabo accusantium possimus aut necessitatibus maiores molestiae quis repudiandae.',6,490,330496.61,'land','2025-10-02 05:06:18','2025-10-02 05:06:18',1,NULL,'product.jpg'),(20,'Fisher Loop Listing','Mertzmouth','Afghanistan','Laborum sit ab sapiente saepe. Est et voluptas voluptas vel vero sequi alias aliquam. Voluptas iusto nisi consequatur in inventore ex. Qui aut perferendis voluptatum deleniti eum ex. Quas harum et quo.',2,1284,113737.54,'commercial','2025-10-02 05:06:18','2025-10-02 05:06:18',5,NULL,'product.jpg');
/*!40000 ALTER TABLE `advertisements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-03 16:29:08
