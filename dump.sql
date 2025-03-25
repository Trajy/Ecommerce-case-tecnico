-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: e_commerce_db
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `pagamento_realizado`
--

DROP TABLE IF EXISTS `pagamento_realizado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento_realizado` (
  `id` binary(16) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `aprovado` bit(1) DEFAULT NULL,
  `data_hora` datetime(6) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_transacao` varchar(255) DEFAULT NULL,
  `metodo_pagamento_type` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `valor` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento_realizado`
--

LOCK TABLES `pagamento_realizado` WRITE;
/*!40000 ALTER TABLE `pagamento_realizado` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagamento_realizado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` binary(16) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `total_produtos` decimal(19,2) NOT NULL,
  `pagamento_id` binary(16) DEFAULT NULL,
  `usuario_id` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_lo2k5meix49weja2bwx3ixa21` (`pagamento_id`),
  KEY `idx_pedido_usuario` (`usuario_id`),
  KEY `idx_created_at` (`created_at`),
  CONSTRAINT `FK6uxomgomm93vg965o8brugt00` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FKo3l301d34b877mf6t6t609tgq` FOREIGN KEY (`pagamento_id`) REFERENCES `pagamento_realizado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (_binary '¬û\‚dOjäß\ÁOåò','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1347.16,NULL,_binary '*–∞ç}\ÁB2©∑@≥]+\Û\‡'),(_binary '¶§%ú=Gï≤àñyªú«Å','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1016.18,NULL,_binary 'á¯≥çt{DÜí?\⁄\Ã˛vV'),(_binary '\"£ì\‹}E]ÆÃï ö¡\‹Z','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2376.72,NULL,_binary '\ÀuxäØGMÆﬁ©\Úê8†'),(_binary '(\ÛÉ\’\ E¶úF](€à\Í','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',5274.93,NULL,_binary 'zIxGL{H ¨™v∞\ˆ\ t'),(_binary '+4í\ZR¥GaæfgyπΩ\√\ﬁ','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',3175.14,NULL,_binary 'öü-d\“\0NÕôª:±\Á[\Ù™'),(_binary '/_5ª\rGH|ú\»FRm™}Y','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1619.82,NULL,_binary 'Ωﬁ∏ig DU±\⁄\€\»Põ'),(_binary 'RJ\Ë_É•OJ†^∂ªM–Å','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2138.19,NULL,_binary 'Ωﬁ∏ig DU±\⁄\€\»Põ'),(_binary '[\Í~42F£ó@ò	 \‘lt','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',3177.43,NULL,_binary '*–∞ç}\ÁB2©∑@≥]+\Û\‡'),(_binary 'g\—˛∂YÑMRΩ\Ú\Á\ÙK\Ë\‡','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1570.72,NULL,_binary '\ﬂ\\¬qRKÅv\Ã\»7≤\“'),(_binary 'm\Ã\ËMTI¥º\ÎÅQTv¸','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2833.72,NULL,_binary 'O\Ï&û¶I˛äÉíà\Î\Ú\Î'),(_binary 'n±\⁄\'EWBﬁéÅkH†\⁄\›','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',130.08,NULL,_binary '\ﬂ\\¬qRKÅv\Ã\»7≤\“'),(_binary 'tHc9OîAΩ≥-ÆìPbF\Ù','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',942.84,NULL,_binary '\ÀuxäØGMÆﬁ©\Úê8†'),(_binary 'zeﬁö<\ÕEÃÑB\ﬁO\È¯!ª','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',4573.85,NULL,_binary 'zIxGL{H ¨™v∞\ˆ\ t'),(_binary 'ç\˜‘ûLöêdªº¨\·\Ë ','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',6823.73,NULL,_binary 'á¯≥çt{DÜí?\⁄\Ã˛vV'),(_binary 'ÄZ©\œ\ÿ\›C%¥oY°°8*P','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',423.78,NULL,_binary 'kaí^:D∆êmöy¯πf'),(_binary 'áy¨\‚\ÔïK\ı£\Î!.â\'á','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',6027.83,NULL,_binary 'zIxGL{H ¨™v∞\ˆ\ t'),(_binary 'âMü´\–QDwºT°`û\Ú<W','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1452.72,NULL,_binary '*–∞ç}\ÁB2©∑@≥]+\Û\‡'),(_binary 'èwZ$C7≥\‘`ùP®Xe','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1215.74,NULL,_binary 'kaí^:D∆êmöy¯πf'),(_binary 'ûó`\ﬂ\'HÜé\"ó^\Ì<d','2025-03-25 03:59:03.097000',NULL,NULL,NULL,NULL,'PENDENTE',374.65,NULL,_binary 'kaí^:D∆êmöy¯πf'),(_binary 'ü∫¡ågFL`•Z¿ö9;òH','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1326.06,NULL,_binary '\ﬂ\\¬qRKÅv\Ã\»7≤\“'),(_binary 'ü¸]≤˙áC¸à][¥\‚∑ñ','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2252.66,NULL,_binary 'á¯≥çt{DÜí?\⁄\Ã˛vV'),(_binary '§bc≥\rJ1ö\Ÿq\ZT&K˝','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1822.12,NULL,_binary 'á¯≥çt{DÜí?\⁄\Ã˛vV'),(_binary '§çäë\Ò≠H“ãYK*:¡\Œ\–','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',990.06,NULL,_binary 'Ωﬁ∏ig DU±\⁄\€\»Põ'),(_binary '¨—Ö\’IF√Æ\#¸aüé','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2635.50,NULL,_binary 'O\Ï&û¶I˛äÉíà\Î\Ú\Î'),(_binary '\…R\Ì]2HÖÄáhâëó\Ú','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1972.83,NULL,_binary 'öü-d\“\0NÕôª:±\Á[\Ù™'),(_binary '\“\Ó)(NiC\Èµ\‹§˝>','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2237.55,NULL,_binary 'zIxGL{H ¨™v∞\ˆ\ t'),(_binary '\‘+SOÜ@\Î∂\ˆFÕΩØ\›I','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1866.48,NULL,_binary '\ÀuxäØGMÆﬁ©\Úê8†'),(_binary '\‚\‡à\ÀN7Lv§\›†9\Ë\Ò','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2801.42,NULL,_binary '\ﬂ\\¬qRKÅv\Ã\»7≤\“'),(_binary '‰¶°\“=TI5Øk\Ò\\p444','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1044.60,NULL,_binary 'O\Ï&û¶I˛äÉíà\Î\Ú\Î'),(_binary '\Í0\‘eK4úµ\Á•\Ú+','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2426.94,NULL,_binary '*–∞ç}\ÁB2©∑@≥]+\Û\‡'),(_binary '\Î\ÌY\’#4OƒúÖ∑.b\◊\ÿ','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',845.20,NULL,_binary 'öü-d\“\0NÕôª:±\Á[\Ù™'),(_binary '\ÓLl\’x\‹E[ïBW≥ù','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2578.46,NULL,_binary '\ÀuxäØGMÆﬁ©\Úê8†');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` binary(16) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(19,2) NOT NULL,
  `quantidade_estoque` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (_binary ';~hHPÑ4i?\‹§a',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Deserunt nemo veritatis ipsa dolorem dignissimos.','Small Plastic Bag',745.85,23),(_binary '	å\È¸\'G«Å`\\°\«\ÿÉ',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Sequi ut quos fugit consequuntur reprehenderit.','Rustic Paper Chair',318.41,15),(_binary 'Ã∑\˜;¶Jkçw`\◊yô∂ë',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Recusandae temporibus beatae animi.','Ergonomic Concrete Keyboard',153.74,20),(_binary '\\Âπ≠˘J…ÅëBÇ£ûW',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Rerum rerum praesentium.','Incredible Plastic Car',442.02,2),(_binary '!ïπ±C3Æûﬁ¨J8[\·',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Autem est in animi autem ut.','Sleek Marble Bench',919.04,1),(_binary '%ÅiXú<A•¶®∏h¢£‘Ä',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Voluptas aut consectetur est sequi autem.','Incredible Linen Wallet',256.48,18),(_binary ')\≈_â%.@ªñ\Ú\Ëzç\“\–\ı',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Et expedita sint.','Incredible Concrete Lamp',420.72,46),(_binary '+\‡\‡G/èCó}†õA6ôÉ',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Est quis dolor alias.','Synergistic Paper Bag',404.29,49),(_binary ',\\Ø\… J\Û§¡u:-<qr',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Accusamus mollitia odio et neque.','Small Aluminum Plate',640.81,14),(_binary '2ì{€®Fàúo\⁄\ﬁ;óù\Ú',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Similique nihil officia.','Aerodynamic Wooden Table',607.87,25),(_binary '=5é+å{Læ$w\¬3˘\◊',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Voluptatem mollitia eum velit voluptatem blanditiis animi.','Incredible Paper Chair',367.89,19),(_binary '?ç->\⁄KC◊ÑvS\‚\‰∫∂',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Voluptatum consectetur iste accusantium ut aut facere.','Intelligent Steel Bag',637.61,39),(_binary 'Aãgè\Òu@kâ{\Ô≤_',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Perferendis cumque praesentium.','Durable Linen Shirt',543.96,28),(_binary 'L\– ‹æØNxæIì\Õ|§\Èï',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Veritatis sunt et aperiam harum.','Intelligent Paper Lamp',548.12,16),(_binary 'P£K\ N<ïQx6\«<\–',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Adipisci quaerat nisi voluptatibus quis explicabo voluptates et.','Ergonomic Bronze Bottle',954.87,16),(_binary 'Q¸µT^úC«ß©wrZ.\ƒ',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Rerum consequatur atque et aut sed tempore eius.','Sleek Copper Computer',787.60,14),(_binary 'Rwi\˜HN∆ë`¿\≈\«\…`¥',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Praesentium quod est nihil velit quam eius.','Heavy Duty Wooden Computer',177.81,7),(_binary 'e\Ì6	!£H˘òMùá\√g',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Animi esse ut error.','Durable Cotton Coat',904.45,1),(_binary 'g}j\ÿWC9¨`\Ïû8$y',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Officia molestias aut.','Awesome Steel Knife',167.35,44),(_binary 'g∫ö5|kO*µ\ﬁ h\‘\\øo',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Perspiciatis hic quia culpa eum est.','Gorgeous Iron Wallet',435.10,8),(_binary 'kxù\È√ºEÄö\'m_R_\ ',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Veniam et delectus tempore est ullam.','Small Aluminum Coat',132.99,35),(_binary 'Ä¨;0¯	B¿™\˜bmëån\…',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Quis expedita est id.','Mediocre Silk Shirt',764.21,19),(_binary 'Ñ°¿\ŒL¡Ñ\”\ÊSô6',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Sint quos eligendi sit tempore.','Sleek Granite Bottle',283.28,22),(_binary 'â‘ª\Ì\⁄˝Dôó)á\Ã\»-ﬂô',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Ea earum possimus corporis qui.','Awesome Cotton Keyboard',812.17,21),(_binary 'è\’\√2>\ÙOÏî• ≤\ﬁ\ˆìx',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Tempora quia ratione modi iste maxime.','Sleek Concrete Shoes',167.29,29),(_binary 'êüΩ\≈\Â(JÙã™§6\–?\«_',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Ducimus et minima error eveniet nemo similique temporibus.','Incredible Steel Knife',454.87,22),(_binary 'ë\–\ÍGÑIi≠\\kíëz',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Natus delectus aut modi ut est.','Mediocre Linen Keyboard',37.67,39),(_binary 'í\Ô\Û^”†Jzá\›M?\Ó!<',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Tempora vitae deserunt tempore aut.','Durable Paper Hat',759.96,24),(_binary 'ñù\„Ø\ @¸ö?~6´D\…!',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Vero illum rerum porro.','Synergistic Steel Coat',374.65,45),(_binary '°2¢¨gfD\‡åÜ\˜Df7`',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Error illo eum debitis et repellat.','Awesome Silk Coat',65.04,33),(_binary '°ïïã0C,¶2PI(«ò\‘',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Neque reprehenderit quidem voluptatibus in a hic et.','Fantastic Linen Bottle',309.83,5),(_binary '§Îºí,ëB\‰ö\'â\ÎÖRy',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Distinctio quas molestiae eligendi cum tempore id.','Gorgeous Aluminum Watch',577.02,31),(_binary '¶áAíÄyOpú•\ÔÖ}<{9',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Sint officia ut eius.','Incredible Wool Coat',17.80,33),(_binary 'Æ\'è\⁄(M õN¿q.*J',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Quia laudantium hic tenetur quia aliquam harum officiis.','Enormous Marble Keyboard',774.87,2),(_binary 'ØP<LºG˘∑≥$÷Åb≥',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Ullam aut veritatis mollitia.','Durable Paper Shoes',197.56,34),(_binary 'ªÇp¡¿qCŸ´\Êht\Ë\·˛:',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Sunt et voluptate fugit totam est.','Intelligent Marble Watch',677.85,36),(_binary '\ƒuG\√ ∞BU§%\n∏(\∆\‰!',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Et laborum ad.','Small Concrete Plate',942.84,18),(_binary '\œ ™\÷IF‹î\—hqï±',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Ratione ipsum distinctio ipsam.','Incredible Iron Clock',712.73,38),(_binary '”°S\Œ\‚Ei¶:2\Ó]`¢å',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Velit consequuntur rerum ab dolorem.','Gorgeous Rubber Shirt',508.79,19),(_binary '\’#q\0÷®L\ı∞\ıI%\‰\‡\›~',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Impedit ut magnam officia ut voluptatem.','Awesome Bronze Bench',211.89,14),(_binary '\⁄\Ê\\ùH\"∫É≠K\ \Œ˚',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Animi autem ut sit suscipit minus ipsa quia.','Incredible Granite Pants',209.60,20),(_binary '\€\Ÿ4ó\r|J◊Ω]´Wˇb)\\',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Quisquam quas quidem iure soluta non.','Mediocre Iron Shoes',102.16,11),(_binary '\‹≠÷¢\ÍJ–ë¸?gõ≠è',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Molestias voluptatem temporibus dolorem consectetur.','Practical Wool Shoes',969.26,41),(_binary '\‚©LUMù!˘æx\Á',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Id velit ea ullam dolores voluptatibus cupiditate.','Durable Leather Gloves',51.59,29),(_binary '\Ê\›nA\∆\√G\ÚµdVLR=§',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Ducimus veritatis reiciendis.','Sleek Wooden Shoes',242.11,38),(_binary '\È\‰˙`\ﬁII∂r\Õ\ˆL¥',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Error mollitia magnam sit libero.','Awesome Rubber Table',495.03,29),(_binary '\ÎPr˚_I¬å\÷}Jˇ\Í\÷\»',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Qui dolore voluptatibus reiciendis nulla.','Intelligent Steel Pants',512.36,13),(_binary '\ˆ \Ó•\ˆF$êdﬁælç¿\◊',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Architecto ipsum ipsa vel sed non.','Heavy Duty Bronze Coat',70.59,35),(_binary '˘\∆£ö\∆B…à\‰¢TE∑N\‚',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Laborum repudiandae molestiae recusandae adipisci et vero.','Heavy Duty Rubber Chair',911.65,19),(_binary '˙\ÂîçH\È≤\”4∑*\Ÿ)m',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Non quos deserunt.','Ergonomic Silk Knife',683.73,17);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_pedido`
--

DROP TABLE IF EXISTS `produto_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_pedido` (
  `id` binary(16) NOT NULL,
  `preco` decimal(19,2) NOT NULL,
  `quantidade` int NOT NULL,
  `produto_id` binary(16) NOT NULL,
  `pedido_id` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7sii2gvnu51osdh2f9qrmxxas` (`produto_id`),
  KEY `FKawsdcony69c35yvelg8e8kkr7` (`pedido_id`),
  CONSTRAINT `FK7sii2gvnu51osdh2f9qrmxxas` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`),
  CONSTRAINT `FKawsdcony69c35yvelg8e8kkr7` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_pedido`
--

LOCK TABLES `produto_pedido` WRITE;
/*!40000 ALTER TABLE `produto_pedido` DISABLE KEYS */;
INSERT INTO `produto_pedido` VALUES (_binary '\0ù“å?>N1ñP@\ŸRF\È¨',211.89,2,_binary '\’#q\0÷®L\ı∞\ıI%\‰\‡\›~',_binary 'ÄZ©\œ\ÿ\›C%¥oY°°8*P'),(_binary '\—\Œ_8\ÔH¶èYF\‚ûg:\—',942.84,1,_binary '\ƒuG\√ ∞BU§%\n∏(\∆\‰!',_binary 'tHc9OîAΩ≥-ÆìPbF\Ù'),(_binary '	\Ó\’kAF¨IF?æ',712.73,3,_binary '\œ ™\÷IF‹î\—hqï±',_binary 'zeﬁö<\ÕEÃÑB\ﬁO\È¯!ª'),(_binary 'wJG\ÒaN¿ú¬∑ú\√)±\’',677.85,2,_binary 'ªÇp¡¿qCŸ´\Êht\Ë\·˛:',_binary '(\ÛÉ\’\ E¶úF](€à\Í'),(_binary '\›köâ°GYûäµ>:\˜øi',442.02,3,_binary '\\Âπ≠˘J…ÅëBÇ£ûW',_binary '§bc≥\rJ1ö\Ÿq\ZT&K˝'),(_binary '\ÂFé\ƒ!OêöπÉ7èo?',942.84,3,_binary '\ƒuG\√ ∞BU§%\n∏(\∆\‰!',_binary 'áy¨\‚\ÔïK\ı£\Î!.â\'á'),(_binary '\ˆSÉLmàv\Ì‘ì\0˙',543.96,2,_binary 'Aãgè\Òu@kâ{\Ô≤_',_binary '\ÓLl\’x\‹E[ïBW≥ù'),(_binary '\'â¯,$Mf®,=úYbk',607.87,1,_binary '2ì{€®Fàúo\⁄\ﬁ;óù\Ú',_binary 'g\—˛∂YÑMRΩ\Ú\Á\ÙK\Ë\‡'),(_binary ' \Ê\n\Áø\◊NóüH˙\‚a%ú\ƒ',242.11,2,_binary '\Ê\›nA\∆\√G\ÚµdVLR=§',_binary '¶§%ú=Gï≤àñyªú«Å'),(_binary '!Adü\ÈB€£∂˛ãä¿0l',759.96,1,_binary 'í\Ô\Û^”†Jzá\›M?\Ó!<',_binary '\…R\Ì]2HÖÄáhâëó\Ú'),(_binary '(\Z\Ì∑v]I|∂ëü\ı\Œ\”',969.26,1,_binary '\‹≠÷¢\ÍJ–ë¸?gõ≠è',_binary '‰¶°\“=TI5Øk\Ò\\p444'),(_binary '/ÔëµªpA%ß~}Ó†Ü8¨',367.89,2,_binary '=5é+å{Læ$w\¬3˘\◊',_binary '/_5ª\rGH|ú\»FRm™}Y'),(_binary '0]6iobKsê∫ò;8◊¥',764.21,2,_binary 'Ä¨;0¯	B¿™\˜bmëån\…',_binary 'm\Ã\ËMTI¥º\ÎÅQTv¸'),(_binary '0¸”Ω?L¨ë/}\Ò8†',745.85,1,_binary ';~hHPÑ4i?\‹§a',_binary '\Í0\‘eK4úµ\Á•\Ú+'),(_binary '2∞]\ˆ\—Kx©\›[\"˝Sá',454.87,3,_binary 'êüΩ\≈\Â(JÙã™§6\–?\«_',_binary 'ü¸]≤˙áC¸à][¥\‚∑ñ'),(_binary '7G\…2ºúM±Çb±\Ù\–6W\◊',683.73,1,_binary '˙\ÂîçH\È≤\”4∑*\Ÿ)m',_binary 'ü¸]≤˙áC¸à][¥\‚∑ñ'),(_binary 'AeN\À+\0EôùG°5µ\ﬁ',177.81,2,_binary 'Rwi\˜HN∆ë`¿\≈\«\…`¥',_binary '¨—Ö\’IF√Æ\#¸aüé'),(_binary 'BÜè\\J˛èG\„\(Kj5',787.60,1,_binary 'Q¸µT^úC«ß©wrZ.\ƒ',_binary '¬û\‚dOjäß\ÁOåò'),(_binary 'B—ó\Ù˙Jm∏_U˘‘öú',374.65,1,_binary 'ñù\„Ø\ @¸ö?~6´D\…!',_binary 'ûó`\ﬂ\'HÜé\"ó^\Ì<d'),(_binary 'F:öã˙J\Z∂€°\Ûœ∂QÑ',607.87,2,_binary '2ì{€®Fàúo\⁄\ﬁ;óù\Ú',_binary 'èwZ$C7≥\‘`ùP®Xe'),(_binary 'GˇÑ0\„@ŒùR¡v`{\Û',759.96,3,_binary 'í\Ô\Û^”†Jzá\›M?\Ó!<',_binary 'ç\˜‘ûLöêdªº¨\·\Ë '),(_binary 'J\‡¥KZöHãü\∆Sàd\n≠',577.02,2,_binary '§Îºí,ëB\‰ö\'â\ÎÖRy',_binary 'zeﬁö<\ÕEÃÑB\ﬁO\È¯!ª'),(_binary 'OÇüx\ÓæCÅã.+ÄK1m',167.35,1,_binary 'g}j\ÿWC9¨`\Ïû8$y',_binary '\Î\ÌY\’#4OƒúÖ∑.b\◊\ÿ'),(_binary 'O∫\∆»ã†Ièû{ë\—<\Ï',508.79,1,_binary '”°S\Œ\‚Ei¶:2\Ó]`¢å',_binary '\‚\‡à\ÀN7Lv§\›†9\Ë\Ò'),(_binary 'Q}Ol•\…G\‡™n2≠µ\›p',37.67,2,_binary 'ë\–\ÍGÑIi≠\\kíëz',_binary '§bc≥\rJ1ö\Ÿq\ZT&K˝'),(_binary 'UB˝,2LH±iE\”Sõ¯X',759.96,3,_binary 'í\Ô\Û^”†Jzá\›M?\Ó!<',_binary '¨—Ö\’IF√Æ\#¸aüé'),(_binary 'U´¨H∞çK¨∏täzöﬁ∑8',640.81,2,_binary ',\\Ø\… J\Û§¡u:-<qr',_binary 'zeﬁö<\ÕEÃÑB\ﬁO\È¯!ª'),(_binary 'XW:Ÿè\ıG≤\’\rØOGë\”',954.87,3,_binary 'P£K\ N<ïQx6\«<\–',_binary 'áy¨\‚\ÔïK\ı£\Î!.â\'á'),(_binary 'X¯\«E\€Gñ†5\Œ˚\„\»6c',904.45,2,_binary 'e\Ì6	!£H˘òMùá\√g',_binary 'ç\˜‘ûLöêdªº¨\·\Ë '),(_binary ']öe‹∑&@N£\◊W\»\‚í\‰',787.60,3,_binary 'Q¸µT^úC«ß©wrZ.\ƒ',_binary '[\Í~42F£ó@ò	 \‘lt'),(_binary '^>\\ªDXôì}w\ËB<',374.65,3,_binary 'ñù\„Ø\ @¸ö?~6´D\…!',_binary '+4í\ZR¥GaæfgyπΩ\√\ﬁ'),(_binary 'dk‡™ê)N\'íã\—D4I\Z\“',167.35,2,_binary 'g}j\ÿWC9¨`\Ïû8$y',_binary 'áy¨\‚\ÔïK\ı£\Î!.â\'á'),(_binary 'j›∫ïG\«CRìÑYñkd+Ç',774.87,1,_binary 'Æ\'è\⁄(M õN¿q.*J',_binary 'âMü´\–QDwºT°`û\Ú<W'),(_binary 'p)\›u\¬\ÀEΩ∞Çª \€s\'R',37.67,2,_binary 'ë\–\ÍGÑIi≠\\kíëz',_binary '¬û\‚dOjäß\ÁOåò'),(_binary 'qã\‚~ROHõ>É—è\Ê†\'',420.72,1,_binary ')\≈_â%.@ªñ\Ú\Ëzç\“\–\ı',_binary '§bc≥\rJ1ö\Ÿq\ZT&K˝'),(_binary 'tà¢Y¥M’û9Æœ≤©.y',177.81,1,_binary 'Rwi\˜HN∆ë`¿\≈\«\…`¥',_binary '[\Í~42F£ó@ò	 \‘lt'),(_binary '{†m(ëMÂø°\·\¬Hf\J',677.85,3,_binary 'ªÇp¡¿qCŸ´\Êht\Ë\·˛:',_binary '(\ÛÉ\’\ E¶úF](€à\Í'),(_binary '}Pg¶\YA˚ª!\‘gÜMóö',256.48,3,_binary '%ÅiXú<A•¶®∏h¢£‘Ä',_binary '\Í0\‘eK4úµ\Á•\Ú+'),(_binary 'ÅÇ\›\÷3H¨€∑é\Œg6',242.11,3,_binary '\Ê\›nA\∆\√G\ÚµdVLR=§',_binary '\ÓLl\’x\‹E[ïBW≥ù'),(_binary 'ä~\È\∆G§ã\‰ZTó_^\ÿ',454.87,3,_binary 'êüΩ\≈\Â(JÙã™§6\–?\«_',_binary '\‘+SOÜ@\Î∂\ˆFÕΩØ\›I'),(_binary 'è\…\rOFpØ\Z\rÆ4e',37.67,2,_binary 'ë\–\ÍGÑIi≠\\kíëz',_binary '‰¶°\“=TI5Øk\Ò\\p444'),(_binary 'õÑ¿%\Z\¬NuÑé¥\ıtw≥<',37.67,3,_binary 'ë\–\ÍGÑIi≠\\kíëz',_binary 'g\—˛∂YÑMRΩ\Ú\Á\ÙK\Ë\‡'),(_binary 'ú\œ˛}NE≥∑I2\ÌvÑ\Z',167.29,3,_binary 'è\’\√2>\ÙOÏî• ≤\ﬁ\ˆìx',_binary '\‘+SOÜ@\Î∂\ˆFÕΩØ\›I'),(_binary 'ùx4m\ÚªCÿ¨}∑\ÓÉ~8\ ',911.65,3,_binary '˘\∆£ö\∆B…à\‰¢TE∑N\‚',_binary 'ç\˜‘ûLöêdªº¨\·\Ë '),(_binary 'û\“XêhFe©/,n\’Ifr',683.73,3,_binary '˙\ÂîçH\È≤\”4∑*\Ÿ)m',_binary '+4í\ZR¥GaæfgyπΩ\√\ﬁ'),(_binary '•ÖhG(D‚¥πD≈àY\„z',242.11,2,_binary '\Ê\›nA\∆\√G\ÚµdVLR=§',_binary '¬û\‚dOjäß\ÁOåò'),(_binary '©-¸D_Ωˇ7ù\»eF',318.41,2,_binary '	å\È¸\'G«Å`\\°\«\ÿÉ',_binary '[\Í~42F£ó@ò	 \‘lt'),(_binary '™n\√CYJÉF£¯\ÃO@\Ó',283.28,3,_binary 'Ñ°¿\ŒL¡Ñ\”\ÊSô6',_binary 'g\—˛∂YÑMRΩ\Ú\Á\ÙK\Ë\‡'),(_binary 'Æ\ÿVh]ÄC,®ZÉá?Ñ–ù',712.73,3,_binary '\œ ™\÷IF‹î\—hqï±',_binary 'RJ\Ë_É•OJ†^∂ªM–Å'),(_binary '≥M\Œ\Ë\ŸA†úpópé¸ç\»',640.81,1,_binary ',\\Ø\… J\Û§¡u:-<qr',_binary '\"£ì\‹}E]ÆÃï ö¡\‹Z'),(_binary 'µA≠Å?xK¿µ\Â\‚^:[\—',442.02,2,_binary '\\Âπ≠˘J…ÅëBÇ£ûW',_binary '/_5ª\rGH|ú\»FRm™}Y'),(_binary 'µórüpDí©¡jmNÄ®\·',65.04,2,_binary '°2¢¨gfD\‡åÜ\˜Df7`',_binary 'n±\⁄\'EWBﬁéÅkH†\⁄\›'),(_binary '∏\Ù9é\˜D\0ÆKYòt%\÷',132.99,1,_binary 'kxù\È√ºEÄö\'m_R_\ ',_binary '¶§%ú=Gï≤àñyªú«Å'),(_binary '\¬pBgM¥Ç–ØU∂|@y',404.29,3,_binary '+\‡\‡G/èCó}†õA6ôÉ',_binary '\…R\Ì]2HÖÄáhâëó\Ú'),(_binary '\√áFq˘G6Ü\œ≥âç∂',442.02,3,_binary '\\Âπ≠˘J…ÅëBÇ£ûW',_binary 'ü∫¡ågFL`•Z¿ö9;òH'),(_binary '\ƒqX†˘M7≠{*\nπ«â\Á',764.21,1,_binary 'Ä¨;0¯	B¿™\˜bmëån\…',_binary '\ÓLl\’x\‹E[ïBW≥ù'),(_binary '\ƒqx\·\ÀsF\n¢\Ôu\Á˝c\Á',942.84,2,_binary '\ƒuG\√ ∞BU§%\n∏(\∆\‰!',_binary '(\ÛÉ\’\ E¶úF](€à\Í'),(_binary '\∆S,˘¡@ûÉ\ˆ3\Èf/GV',495.03,2,_binary '\È\‰˙`\ﬁII∂r\Õ\ˆL¥',_binary '§çäë\Ò≠H“ãYK*:¡\Œ\–'),(_binary '\∆\—˙ìcJM\ø\„\|û\—=\ı',132.99,3,_binary 'kxù\È√ºEÄö\'m_R_\ ',_binary '¶§%ú=Gï≤àñyªú«Å'),(_binary '\…\ƒ[ˇ\ÃB\Ùâ\È(v≥@Q\n',102.16,2,_binary '\€\Ÿ4ó\r|J◊Ω]´Wˇb)\\',_binary 'ü¸]≤˙áC¸à][¥\‚∑ñ'),(_binary '\”\Á\Î-Ç\√A1¶\¿Pcœ®',745.85,1,_binary ';~hHPÑ4i?\‹§a',_binary '\"£ì\‹}E]ÆÃï ö¡\‹Z'),(_binary '\‡y\ŒN´\ﬁM›∫\„ß\’’òß¶',764.21,3,_binary 'Ä¨;0¯	B¿™\˜bmëån\…',_binary '\‚\‡à\ÀN7Lv§\›†9\Ë\Ò'),(_binary '\‰+´\ÏK&ûâ\ÿ>´®∏X',677.85,1,_binary 'ªÇp¡¿qCŸ´\Êht\Ë\·˛:',_binary 'âMü´\–QDwºT°`û\Ú<W'),(_binary '\‰ß\’bëAwñ\Ì≈¶Qf∑',745.85,3,_binary ';~hHPÑ4i?\‹§a',_binary '\“\Ó)(NiC\Èµ\‹§˝>'),(_binary 'Ï°å\“\’\ZC3πÿò\ƒ\ı%1',677.85,1,_binary 'ªÇp¡¿qCŸ´\Êht\Ë\·˛:',_binary '\Î\ÌY\’#4OƒúÖ∑.b\◊\ÿ'),(_binary '\ı!a∏\÷Aåá\ˆ\Œ\÷W',911.65,1,_binary '˘\∆£ö\∆B…à\‰¢TE∑N\‚',_binary '\Í0\‘eK4úµ\Á•\Ú+'),(_binary '\ı∂°úª%HçÜ=\ÛM2\Áü',495.03,2,_binary '\È\‰˙`\ﬁII∂r\Õ\ˆL¥',_binary '\"£ì\‹}E]ÆÃï ö¡\‹Z'),(_binary '˛µ©\œ\–%J\Û≠s	ä>¶P`',435.10,3,_binary 'g∫ö5|kO*µ\ﬁ h\‘\\øo',_binary 'm\Ã\ËMTI¥º\ÎÅQTv¸');
/*!40000 ALTER TABLE `produto_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` binary(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5171l57faosmj8myawaucatdw` (`email`),
  KEY `idx_usuario_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (_binary '*–∞ç}\ÁB2©∑@≥]+\Û\‡','myron.runte@hotmail.com','Rhett Heaney','USER','$2a$10$bMwJiugdDRokFwVfb9Frc.BF./yAA7/EHmXkgC3wLMiIW8si92l5.'),(_binary 'O\Ï&û¶I˛äÉíà\Î\Ú\Î','sandy.herzog@yahoo.com','Jennifer Nolan','USER','$2a$10$ztfZhVmyS.wBRxMRwIkQYef802Ap1PI544XLBBYApfZYv8YadILge'),(_binary 'i…âL±£\ˆì\«…∫\Î\œ','admin@email.com','Administrador','ADMIN','$2a$10$i37Jr1Ih2nSOMOz4viafGObXtctPsZiCAlsJ8Joqn4APdIVLRSKG6'),(_binary 'kaí^:D∆êmöy¯πf','jeanna.mcdermott@gmail.com','Tresa Erdman','USER','$2a$10$IdwnoGYR2edLtYyygrOhXu.iId7PvprxpT8irGblmSKwmAtDlUC7G'),(_binary 'zIxGL{H ¨™v∞\ˆ\ t','cami.crooks@yahoo.com','Dr. Eliseo Steuber','USER','$2a$10$MJqlu8e/x4j9X91wtR281uex4yUbmltRTdczgo5R459N00P40AfcW'),(_binary 'á¯≥çt{DÜí?\⁄\Ã˛vV','louanne.schiller@yahoo.com','Dr. Alvin Swift','USER','$2a$10$qDpW8/CdNusazoQnbY9dX.b2yiwGavh7cPXdHgdb03lUgo1cvo5sK'),(_binary 'öü-d\“\0NÕôª:±\Á[\Ù™','harris.willms@hotmail.com','Annika Reilly','USER','$2a$10$XJ9CZA0XUrzNZEXDOaZwoenCeq86chWe1p2.ohuAIo1M1/oI1bKN2'),(_binary 'Ωﬁ∏ig DU±\⁄\€\»Põ','theodora.beier@gmail.com','Miss Rick Cassin','USER','$2a$10$q.14yLpIamiZpLn0gQFH8uW0JvtI2Ity2HyrGfK7o9AglEldTaK.K'),(_binary '\ÀuxäØGMÆﬁ©\Úê8†','corey.senger@yahoo.com','Maryam Jones','USER','$2a$10$J/Xt4ZRvl9.S4iJivb5WoOLhbfNqmQKuzuSPE5C1RLK6/VDZT4LbO'),(_binary '\ﬂ\\¬qRKÅv\Ã\»7≤\“','dominic.thompson@gmail.com','Caridad Hamill','USER','$2a$10$YsDFRbaCa4FkPws1PwbVhO.mzzcebsnvGcjV6svhH4/sNPgju0WHu');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-25  3:59:52
