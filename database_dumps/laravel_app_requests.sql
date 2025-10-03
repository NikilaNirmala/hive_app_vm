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
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sender_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `requests_sender_id_foreign` (`sender_id`),
  CONSTRAINT `requests_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (2,'Aspernatur nihil facilis sit ullam aspernatur minima.','Ipsum possimus quod necessitatibus eos molestiae eos aut. Id aut saepe officia et. Voluptatem officia voluptates eos nemo rerum eligendi eum. Architecto voluptates odit optio saepe aliquid dolores.','davis.audreanne@example.org','2025-10-02 05:06:18','2025-10-02 05:06:18',15),(3,'Harum voluptas odit atque qui porro.','Ut tempore voluptas officia saepe ipsum ullam quam odit. Et id officiis consequatur rerum vel exercitationem dolores. Consequatur sint a quia voluptas illo animi repellat.','porter.conroy@example.org','2025-10-02 05:06:18','2025-10-02 05:06:18',16),(4,'Enim consequatur placeat voluptatibus qui eos laudantium.','Culpa voluptate sit facilis enim dolorum sed ullam. Mollitia perferendis qui neque nihil est nihil quibusdam quam. Sed vel nisi nesciunt quia quaerat commodi eveniet. Dolor nesciunt temporibus qui laudantium quia.','isaias54@example.net','2025-10-02 05:06:18','2025-10-02 05:06:18',17),(5,'Quia aut nobis eligendi rem et.','Dolore cumque quos molestias voluptas magnam. Qui debitis nobis placeat ex facere. Repellat dignissimos voluptas amet porro voluptatem minima sed.','eturner@example.org','2025-10-02 05:06:18','2025-10-02 05:06:18',18),(6,'Non eos aut omnis nemo voluptate.','Quibusdam ex quos ut quis quaerat ut et. Tenetur quo est saepe nihil magni. Et ut voluptatem in ut qui optio. Delectus dolorem et quod dolores reiciendis qui nesciunt.','kgleichner@example.net','2025-10-02 05:06:18','2025-10-02 05:06:18',19),(7,'Cumque eum eos consequuntur fugit aperiam voluptatem quas.','Mollitia possimus totam aperiam non dolorum. Rerum distinctio aspernatur excepturi et qui. Tenetur alias quis omnis quidem assumenda. Ipsam distinctio sunt ut consequatur voluptatem omnis.','orville.abshire@example.org','2025-10-02 05:06:18','2025-10-02 05:06:18',20),(8,'Non dicta id quidem autem sunt.','Voluptate est in ut quas nemo. Iusto et eos aut reprehenderit. Quia nobis ut expedita accusamus. Ut molestiae iusto eius.','bobbie.tremblay@example.org','2025-10-02 05:06:18','2025-10-02 05:06:18',21),(9,'Est nostrum et non asperiores et perspiciatis.','Quos minus doloribus et reiciendis. Minima reiciendis quibusdam qui. Ut harum fugiat sit omnis molestias.','waters.alvah@example.org','2025-10-02 05:06:18','2025-10-02 05:06:18',22),(10,'A modi totam officia possimus.','In similique ex amet sed adipisci. Omnis in ipsam omnis qui perferendis placeat. Distinctio dolor cupiditate non ut molestiae est mollitia. Quia quos voluptatum eveniet explicabo et cum.','qkuphal@example.org','2025-10-02 05:06:18','2025-10-02 05:06:18',23),(11,'Dignissimos expedita quia cum sapiente corrupti.','Laudantium non adipisci debitis est rerum. Ullam libero culpa vel libero ut nobis fugit.','kanderson@example.org','2025-10-02 05:06:18','2025-10-02 05:06:18',24),(12,'Aliquid neque reiciendis eius possimus eius.','Nihil animi placeat omnis ut. Architecto dolores in dolores exercitationem est necessitatibus voluptates amet. Assumenda quas et et fuga.','burdette30@example.org','2025-10-02 05:06:18','2025-10-02 05:06:18',25),(13,'Omnis laboriosam consectetur necessitatibus cum.','Delectus sint molestiae eos aut nisi. Labore est sint labore adipisci rerum. Aut error illo voluptatum magni. Ad quasi hic enim est reiciendis enim voluptas sit.','fwintheiser@example.org','2025-10-02 05:06:18','2025-10-02 05:06:18',26),(14,'Magnam non praesentium voluptate dolor.','Repellendus reprehenderit distinctio quia dolorem cupiditate. Earum officiis dicta blanditiis quo autem magnam.','dalton74@example.org','2025-10-02 05:06:18','2025-10-02 05:06:18',27),(15,'In officiis necessitatibus inventore non qui consequatur aliquam.','Et in dolores ea et saepe consequatur. In rerum rerum et itaque est. Sapiente nemo ut inventore nostrum rerum eum. Voluptas rerum ut et officiis.','cgrady@example.com','2025-10-02 05:06:18','2025-10-02 05:06:18',28),(16,'Vitae nihil iure magni sint.','Ut dicta laudantium nam dolores. Aperiam molestiae quia sed et.','deckow.johnpaul@example.net','2025-10-02 05:06:18','2025-10-02 05:06:18',29),(17,'Sit nobis nihil repellat eveniet.','Quia rem molestias ut. Maxime recusandae quis ut voluptatibus. Perferendis laudantium iste adipisci enim amet id rerum. Qui cupiditate consectetur repellat eos.','adan.lubowitz@example.org','2025-10-02 05:06:18','2025-10-02 05:06:18',30),(18,'Animi qui ex et rerum.','Laboriosam cum est nostrum minima veniam totam. Nisi omnis ipsam ab rerum voluptas architecto nulla. Unde voluptas nisi incidunt suscipit quis qui. Et dolore sit velit qui porro. Ut pariatur rerum sed ad quas quia autem.','dorian.jones@example.org','2025-10-02 05:06:18','2025-10-02 05:06:18',31),(19,'Omnis qui quia quos ad non iste omnis.','Eveniet dolore architecto est quia nostrum placeat. Autem voluptatem facilis rem animi. Dolore unde quis sed nostrum labore aliquam pariatur. Aut accusamus non consequatur ut est repudiandae fugit omnis.','tullrich@example.com','2025-10-02 05:06:18','2025-10-02 05:06:18',32),(20,'Voluptatem eum saepe non blanditiis omnis ea distinctio.','Libero ullam sed qui nesciunt hic eos. Provident molestiae ad vel ea qui placeat asperiores. Nihil sit voluptatem est ducimus. Quo qui rerum quisquam nobis sed assumenda repellat est.','heber85@example.com','2025-10-02 05:06:18','2025-10-02 05:06:18',33),(21,'hello','ddddddddd','laki@gmail.com','2025-10-03 05:00:16','2025-10-03 05:00:16',35);
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
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
