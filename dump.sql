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
  `situacao` varchar(255) DEFAULT NULL,
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
INSERT INTO `pedido` VALUES (_binary '-$)[H\ğ˜\n°%\\W\ç','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',2389.42,NULL,_binary '±”\ÃPºXD~‚\ëüş’L\á'),(_binary '/r0B “Hà¢¢#\Öh<I‡','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',1663.42,NULL,_binary '\Ğ~\"•\ÎKMÕ¢ÿık´T.8'),(_binary '9!Ó“º\ÓH­\ÉW a\ì\á\Ğ','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',1542.31,NULL,_binary '¤ƒDW”G:§\÷\ã\ë5\àY'),(_binary '?\å°8kC\ì³\İ\ö\õI¡€\ß','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',2193.36,NULL,_binary '\Ğ~\"•\ÎKMÕ¢ÿık´T.8'),(_binary 'AF%O\ê¨NRœd3¶_','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',3005.29,NULL,_binary '¤ƒDW”G:§\÷\ã\ë5\àY'),(_binary 'K_qREzA–¢j~¡m','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',4060.50,NULL,_binary '\É\nD¹\ëGO\ó‡\âzÎ±\Ï'),(_binary 'U¸\â\ìzKN(²Pª–\ë`\ß\à','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',1483.59,NULL,_binary '\\`Io`\óG\ö§H\'\Ó7µ'),(_binary '`”•‹\ä¸Oª°s†\ŞE\Ş\æs','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',800.61,NULL,_binary '±”\ÃPºXD~‚\ëüş’L\á'),(_binary 'b¤Íe8J\n²u)‰\Ñpok','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',403.96,NULL,_binary '\É\nD¹\ëGO\ó‡\âzÎ±\Ï'),(_binary 'cj\ÔG6Dº­\ç!6\"_S','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',639.42,NULL,_binary '\n\ß\ëŠı‘@\r¤\ö/¶qŠ0'),(_binary 'fa\÷Ÿ\n\äI!°=&k¶','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',3438.94,NULL,_binary '\É\nD¹\ëGO\ó‡\âzÎ±\Ï'),(_binary 'f¡\rHŒDR‹.´.ùP˜','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',818.64,NULL,_binary '_\õ\öAX‘8§q$5\Ë\Ì'),(_binary 'kJ‹O\ØF¼«t\ãhşŠ1¾','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',548.65,NULL,_binary '\Ğ~\"•\ÎKMÕ¢ÿık´T.8'),(_binary 's3\ZIøG€¡\ì\Î\0·\òŸ”','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',2794.63,NULL,_binary '\ô”ùNCEIºK¶C•\ö'),(_binary 'wtq¸\ß@»\Ñ\Â\Õy„','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',630.28,NULL,_binary '\ô”ùNCEIºK¶C•\ö'),(_binary '–\'y\Ğ$E-¿º>W9\È>','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',381.88,NULL,_binary '\n\ß\ëŠı‘@\r¤\ö/¶qŠ0'),(_binary 'œó’†‰Aa–‘1\Ğ6j\î\ô','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',778.76,NULL,_binary '±”\ÃPºXD~‚\ëüş’L\á'),(_binary 'Ÿ\ëQ&EŒ.PwŸDo','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',565.58,NULL,_binary 'y%T \äIÒŒ·<K5\Ñ'),(_binary 'ŸÄ½ÀS©M¨¢`E{I-!P','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',1701.43,NULL,_binary '\É\nD¹\ëGO\ó‡\âzÎ±\Ï'),(_binary '¤¼­’bK°…O­\Úis\Ò}','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',2743.65,NULL,_binary 'y%T \äIÒŒ·<K5\Ñ'),(_binary '©Sp+\Òm@®Ì‰xøu','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',1220.06,NULL,_binary '±”\ÃPºXD~‚\ëüş’L\á'),(_binary '²[v‰\öE%¢\ÔW¹V','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',1265.63,NULL,_binary '_\õ\öAX‘8§q$5\Ë\Ì'),(_binary '\ÈQ:jÀKÕ€f	|{N±\Ş','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',4051.71,NULL,_binary '\\`Io`\óG\ö§H\'\Ó7µ'),(_binary '\Î\ßRµ&Iw£\ìK²8(','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',2204.80,NULL,_binary 'y%T \äIÒŒ·<K5\Ñ'),(_binary '\Ûrœ\Ñ>MÔ¦\n\Zf%\ö\"','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',4198.83,NULL,_binary '¤ƒDW”G:§\÷\ã\ë5\àY'),(_binary '\ét€\Z%²D‹G\Çiç¢šŸ','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',1720.14,NULL,_binary '\n\ß\ëŠı‘@\r¤\ö/¶qŠ0'),(_binary '\éÅ0\éCš›Ä¤c3\î6','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',2752.52,NULL,_binary '\ô”ùNCEIºK¶C•\ö'),(_binary '\ì>±™2M®Ôˆ~»ı\èR','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',5518.21,NULL,_binary '¤ƒDW”G:§\÷\ã\ë5\àY'),(_binary '\ö/\İy\âM›&R\Ü}hW§','2025-03-24 09:53:30.909000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',843.75,NULL,_binary '\\`Io`\óG\ö§H\'\Ó7µ'),(_binary 'ùÏ±\ËA·+½t7\Æ\İS','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',2183.61,NULL,_binary '_\õ\öAX‘8§q$5\Ë\Ì');
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
INSERT INTO `produto` VALUES (_binary '\0j\Ä+øG\÷XÜ’lŒ·',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Quo rem qui in molestiae.','Practical Leather Pants',444.90,25),(_binary '©\Ë_yKRS­1\â¤\ó¨',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Voluptates sed nulla sapiente est et.','Intelligent Rubber Watch',158.11,45),(_binary '	G}‚\ãpA\âŠ\ÔL´6f-\Ö',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Cum eum doloremque iste.','Gorgeous Granite Shirt',492.64,14),(_binary 'Ò…\Ó\ç·M\ã»_”\ë‘GŒU',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Minus inventore vel sequi ex doloribus doloribus sed.','Small Paper Keyboard',966.04,49),(_binary '˜™`VM\é€À-?¼',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Velit dolores rem corporis rerum.','Practical Rubber Wallet',318.89,43),(_binary '<\Ï\÷¨L¬UJ5¤\è¾',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Dolore quod magnam quos consequuntur rerum.','Aerodynamic Silk Pants',831.71,9),(_binary 'l²\êG\îF™¬\ÌıÂ“\ï',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Dolor dolor omnis officia.','Durable Plastic Table',446.64,30),(_binary '©W:VE¹s5\Î‰t',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Omnis expedita aliquam velit vel accusamus.','Enormous Granite Wallet',914.55,36),(_binary '—g›\ÇGAº¸v°(›?<',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Qui dolores dolorem aut nobis maxime.','Durable Marble Chair',565.58,36),(_binary '<¨ÈøN¦†q \n\Ğ+\Õ',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Rem modi facilis aut.','Incredible Plastic Shirt',929.17,31),(_binary '¼+\ĞO•¿)=DN5#',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Odio assumenda vitae sed aut vitae assumenda.','Aerodynamic Linen Table',190.94,45),(_binary '\"8Ë¥\ÖGŸ˜„û+)IÖ¯',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Nam quisquam sed.','Small Steel Coat',397.33,33),(_binary '(\ËDfNv\ñ+I[]\Ì',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Quibusdam voluptate aut alias quas nulla quo asperiores.','Mediocre Steel Bench',209.27,48),(_binary '8²=xXL}¡\ëj}d%]',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Magni ea odit assumenda voluptatum repellat quos dolor.','Rustic Wooden Table',396.38,23),(_binary '9Şœm~IKL¯\ßg\'¢e\ôZ',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Iusto magnam ad.','Durable Plastic Car',756.37,13),(_binary ':\Ãı\Í\óZJ\æ¦\ê\é\Ên‡³',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Ut eveniet ab occaecati.','Small Copper Shirt',494.53,36),(_binary 'A„Y\èT\ÓA©–}£bPyp1',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Harum ut aspernatur non sequi dolorem.','Rustic Rubber Gloves',340.55,32),(_binary 'H-\â\éÄ‡MÍ±\0U7,\â\í',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Facilis sequi esse.','Rustic Plastic Computer',843.27,19),(_binary 'Q\Ü!\Ú|N¢´t\0ˆ\Ì',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Amet quo impedit expedita enim et optio ea.','Incredible Silk Gloves',204.38,2),(_binary 'Xlµ\Ü\åqH3.\Ï\ã~¡´',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Inventore ea inventore ut nihil.','Sleek Rubber Knife',843.75,3),(_binary 'ah£>\Ô`J²šÀË²u?Q\â',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Quidem assumenda iure.','Synergistic Steel Bench',213.14,31),(_binary 'ec\Ù\ó\ÊL#¨\Ü\ò_i@—',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Voluptatum dolorem qui sunt tempora repellat vitae excepturi.','Ergonomic Steel Watch',872.93,32),(_binary 'h\ÕĞÛ¢Jh§z„\ÔbX	',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Magnam molestiae fuga.','Mediocre Granite Pants',912.33,18),(_binary 'iˆ{\ä\"‰Aÿ6\í½5Jù',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Laborum alias ut nesciunt aliquid.','Ergonomic Wooden Watch',781.72,38),(_binary 'zA2™ÔšLc³\İoã•ª¬',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Eligendi officiis eius.','Practical Linen Knife',695.91,35),(_binary '‚#C0ªEx’¢ƒ@9}\î',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Modi earum explicabo officia qui aut quibusdam.','Ergonomic Concrete Computer',696.94,48),(_binary 'ƒFûÁJÓ·\÷?P`',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Fuga expedita assumenda laborum dolorum.','Ergonomic Wooden Computer',800.61,4),(_binary '‰Ç»4\ËC½¸CO¤\ÇT5y',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Quaerat rerum eum eos qui at reprehenderit qui.','Incredible Iron Computer',919.53,29),(_binary 'ŒK’\æ)\ôAø‘7–Š or',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Non voluptatibus aut.','Gorgeous Concrete Pants',643.56,49),(_binary '›$\Ã\ïBGI}‚Ú™\\Š',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Aut omnis dolorem ipsam perspiciatis consequatur.','Durable Wool Table',330.96,44),(_binary ' ºš®F\à—¡ŒN\Ü?ùš',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Minima nobis impedit rerum officia nobis est.','Sleek Rubber Car',968.30,19),(_binary '¨‰6’]¬N¶æùr\Ï',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Ut ipsam placeat.','Rustic Paper Clock',727.87,36),(_binary '¯ª~\î±Jì‡>–z\Éû\Ô',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Ducimus eos esse dignissimos unde.','Enormous Wool Shoes',657.13,28),(_binary '°v€xzCÆ›\ì\ä\ê¸\ÓOš',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Explicabo aut modi soluta.','Mediocre Wool Chair',527.25,15),(_binary '±c£:\Z\ÚLˆ0R¼Mø•',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Repellat qui nobis.','Enormous Wool Shirt',315.14,13),(_binary '»\Ã9Œ£A¸€³šhj«)|',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Repudiandae facere iure nemo.','Fantastic Paper Shirt',36.82,23),(_binary '¼+\Èw|EC°#U\'Î°<',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Consequatur molestiae velit cum fugit velit.','Incredible Bronze Shoes',982.36,6),(_binary '\Ç\õŒ>u@{±P´Ÿ¡@¶',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Eveniet et voluptate aspernatur iure cupiditate similique.','Fantastic Bronze Bottle',342.98,42),(_binary '\Ïß“]\çWKˆ“D]\å ¬]',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Doloribus est sunt maiores quia.','Rustic Concrete Knife',760.85,38),(_binary '\ĞC4ÀÅ²J*©˜šG\"ÿ',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Itaque id quia.','Lightweight Linen Car',18.04,20),(_binary '\ÒÎªD-ˆJà¿½=™.@',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Pariatur dolorem suscipit odio nisi voluptatibus quas.','Rustic Iron Shirt',389.38,2),(_binary 'ß‚)\å×’@o¯iª\ô˜­\Í\ñ',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Et illum dolorem minus et ipsa.','Aerodynamic Linen Pants',912.99,29),(_binary '\à\ŞFÿœGa—Ü®×”\Ä\í\Í',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Dolorem placeat accusamus blanditiis aliquam officiis.','Aerodynamic Aluminum Car',285.82,25),(_binary '\å\Ë\ó\ä\ç@\Ç-R\Âû\öN',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Unde dolores nisi.','Practical Granite Shirt',592.14,29),(_binary '\õĞ“GºNn®K\'R§\Ó@',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Hic impedit possimus repellat quia aut accusamus sit.','Mediocre Leather Hat',480.14,2),(_binary 'øcW@L<•\í\õ6³\ß\ØU',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Aliquid quia veritatis corporis voluptate dolorum.','Awesome Paper Hat',201.98,10),(_binary 'ù¨º\ã\ô@}ºœF¢\Èd',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Repellendus omnis et.','Practical Linen Clock',409.32,45),(_binary 'û0·ŒsI3¹\étÁ\ÉO4š',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Ipsum et necessitatibus itaque quia quia.','Small Concrete Knife',490.63,38),(_binary 'ûİ»\Ï\î¾LfŠ8\Ñ<\Z2\Ô',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Qui amet distinctio praesentium ad beatae.','Practical Plastic Car',717.84,41),(_binary 'ÿ‰²¬¬C‹ Á\Ù\ĞJ\ì',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Deleniti minima modi tenetur distinctio maxime id sequi.','Sleek Rubber Chair',890.54,36);
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
INSERT INTO `produto_pedido` VALUES (_binary '¾û\è™L¡µl=‰=\ßNü',204.38,3,_binary 'Q\Ü!\Ú|N¢´t\0ˆ\Ì',_binary '9!Ó“º\ÓH­\ÉW a\ì\á\Ğ'),(_binary '6G\Ê\ä€L¯„\É\óm©¡',315.14,2,_binary '±c£:\Z\ÚLˆ0R¼Mø•',_binary 'wtq¸\ß@»\Ñ\Â\Õy„'),(_binary '	\÷Å¡)\ôFD¹Z‚\0\Ş\ì',966.04,3,_binary 'Ò…\Ó\ç·M\ã»_”\ë‘GŒU',_binary '\ì>±™2M®Ôˆ~»ı\èR'),(_binary '\n)iI$ƒDš¨dúnEuv\Æ',727.87,3,_binary '¨‰6’]¬N¶æùr\Ï',_binary 'ùÏ±\ËA·+½t7\Æ\İS'),(_binary 'ª3\élªDƒ±\Ş0k¦N',872.93,2,_binary 'ec\Ù\ó\ÊL#¨\Ü\ò_i@—',_binary '-$)[H\ğ˜\n°%\\W\ç'),(_binary '\Z=\È~‹ŒKš\Zp\Ûd\Í\É\ì',396.38,3,_binary '8²=xXL}¡\ëj}d%]',_binary 'K_qREzA–¢j~¡m'),(_binary '9;»[@†˜Ÿyº\â K|',446.64,1,_binary 'l²\êG\îF™¬\ÌıÂ“\ï',_binary 'ŸÄ½ÀS©M¨¢`E{I-!P'),(_binary '!E\î°\ì\ŞFS¤\Ùe˜”Pû\ô',890.54,1,_binary 'ÿ‰²¬¬C‹ Á\Ù\ĞJ\ì',_binary '\Î\ßRµ&Iw£\ìK²8('),(_binary '\"#û¥FF¼	^fªm[',18.04,2,_binary '\ĞC4ÀÅ²J*©˜šG\"ÿ',_binary '\éÅ0\éCš›Ä¤c3\î6'),(_binary '$*34w™E­‰Ÿ\Ø\è#Á\Ã\Ş',158.11,3,_binary '©\Ë_yKRS­1\â¤\ó¨',_binary 's3\ZIøG€¡\ì\Î\0·\òŸ”'),(_binary ')}9\Çn\ñHøŒ}9ü',18.04,3,_binary '\ĞC4ÀÅ²J*©˜šG\"ÿ',_binary 'kJ‹O\ØF¼«t\ãhşŠ1¾'),(_binary ',P¦»‰It“Ş¤\ÑBÁm',397.33,1,_binary '\"8Ë¥\ÖGŸ˜„û+)IÖ¯',_binary 'ŸÄ½ÀS©M¨¢`E{I-!P'),(_binary '3²‰ƒDsJi„\ètˆ\Ô\Z°',397.33,3,_binary '\"8Ë¥\ÖGŸ˜„û+)IÖ¯',_binary '²[v‰\öE%¢\ÔW¹V'),(_binary '5\ò\îAªJû¾#:ù\Ë53\Ï',565.58,2,_binary '—g›\ÇGAº¸v°(›?<',_binary 's3\ZIøG€¡\ì\Î\0·\òŸ”'),(_binary '6;\æ³\ã”F–˜Á\×\êœE',717.84,1,_binary 'ûİ»\Ï\î¾LfŠ8\Ñ<\Z2\Ô',_binary 'K_qREzA–¢j~¡m'),(_binary '7nJ\öEùœ>_m.Œ',494.53,3,_binary ':\Ãı\Í\óZJ\æ¦\ê\é\Ên‡³',_binary 'AF%O\ê¨NRœd3¶_'),(_binary '=o…R\ÇKf½«\\z¡\èÜ',717.84,3,_binary 'ûİ»\Ï\î¾LfŠ8\Ñ<\Z2\Ô',_binary 'K_qREzA–¢j~¡m'),(_binary '>\É\î£\æ@Ú†ƒs³Õ“',919.53,3,_binary '‰Ç»4\ËC½¸CO¤\ÇT5y',_binary '\Ûrœ\Ñ>MÔ¦\n\Zf%\ö\"'),(_binary 'J8kI~-G*’\è¤k”ø†',565.58,1,_binary '—g›\ÇGAº¸v°(›?<',_binary 'Ÿ\ëQ&EŒ.PwŸDo'),(_binary 'MJ_K\ğ\ÇMR•\n\ò¤L\ô\"',831.71,2,_binary '<\Ï\÷¨L¬UJ5¤\è¾',_binary '/r0B “Hà¢¢#\Öh<I‡'),(_binary 'R\\~\ÍO±»±`±\Ä|',760.85,2,_binary '\Ïß“]\çWKˆ“D]\å ¬]',_binary 'AF%O\ê¨NRœd3¶_'),(_binary 'Z=\ër9\èNš£\óU•)\à',914.55,3,_binary '©W:VE¹s5\Î‰t',_binary '¤¼­’bK°…O­\Úis\Ò}'),(_binary '\\+\Ç\\\÷hHG¸§\Ìr“\åh;',209.27,1,_binary '(\ËDfNv\ñ+I[]\Ì',_binary '©Sp+\Òm@®Ì‰xøu'),(_binary ']z^™´K\æ±/\ì\ğ—3¤H',446.64,2,_binary 'l²\êG\îF™¬\ÌıÂ“\ï',_binary '\ÈQ:jÀKÕ€f	|{N±\Ş'),(_binary 'aÂ¾¼F™B‚Xÿ}<z,#',389.38,2,_binary '\ÒÎªD-ˆJà¿½=™.@',_binary 'œó’†‰Aa–‘1\Ğ6j\î\ô'),(_binary 'l…@\İLİyHP ”e',643.56,1,_binary 'ŒK’\æ)\ôAø‘7–Š or',_binary '-$)[H\ğ˜\n°%\\W\ç'),(_binary 'm‰\çc\åHJšE‹.!\Ï}',843.27,2,_binary 'H-\â\éÄ‡MÍ±\0U7,\â\í',_binary '\ÈQ:jÀKÕ€f	|{N±\Ş'),(_binary 'm¹µ\ã•@\ï‘Î©\\º«#',494.53,3,_binary ':\Ãı\Í\óZJ\æ¦\ê\é\Ên‡³',_binary 'U¸\â\ìzKN(²Pª–\ë`\ß\à'),(_binary 'p\ìAû)6Ey¶ˆ{\ğ\İ\ØT:',929.17,1,_binary '<¨ÈøN¦†q \n\Ğ+\Õ',_binary '9!Ó“º\ÓH­\ÉW a\ì\á\Ğ'),(_binary 'w¿’dW@£J{\æ\Û)',919.53,1,_binary '‰Ç»4\ËC½¸CO¤\ÇT5y',_binary '\ét€\Z%²D‹G\Çiç¢šŸ'),(_binary '‹ø\õ\0\ÅGV¹\ë\àÆ‹\äO\ß',318.89,3,_binary '˜™`VM\é€À-?¼',_binary '©Sp+\Òm@®Ì‰xøu'),(_binary '‘§™•WlAx¿°’Î›µ³ü',800.61,2,_binary 'ƒFûÁJÓ·\÷?P`',_binary '?\å°8kC\ì³\İ\ö\õI¡€\ß'),(_binary '˜\ô\Î^%MÅUCï™Œq',18.04,3,_binary '\ĞC4ÀÅ²J*©˜šG\"ÿ',_binary '©Sp+\Òm@®Ì‰xøu'),(_binary 'Ÿ²C>\ó\ÄCr“°\åN.\ólœ',527.25,1,_binary '°v€xzCÆ›\ì\ä\ê¸\ÓOš',_binary '\Ûrœ\Ñ>MÔ¦\n\Zf%\ö\"'),(_binary '¦Ÿa5‹\ŞL¯H\êMd\ÑÁ',285.82,3,_binary '\à\ŞFÿœGa—Ü®×”\Ä\í\Í',_binary 'ŸÄ½ÀS©M¨¢`E{I-!P'),(_binary 'ª‡ÿ¸\ó@·¸­OÂ™¸\ö',396.38,3,_binary '8²=xXL}¡\ëj}d%]',_binary 's3\ZIøG€¡\ì\Î\0·\òŸ”'),(_binary '«\ãƒ\Ã~\'Mß€I`\ÆD\òº\r',342.98,3,_binary '\Ç\õŒ>u@{±P´Ÿ¡@¶',_binary '\éÅ0\éCš›Ä¤c3\î6'),(_binary '±\é\ô°ø™Bg†qk(\ÖUd',914.55,2,_binary '©W:VE¹s5\Î‰t',_binary 'fa\÷Ÿ\n\äI!°=&k¶'),(_binary 'º;\÷ŸÀ»Eˆ½úŸk¶½\ÌÁ',800.61,1,_binary 'ƒFûÁJÓ·\÷?P`',_binary '\ét€\Z%²D‹G\Çiç¢šŸ'),(_binary '¼³\ó/üœ@K¹%w \Ï7x?',843.75,2,_binary 'Xlµ\Ü\åqH3.\Ï\ã~¡´',_binary '\éÅ0\éCš›Ä¤c3\î6'),(_binary '\Ã7¯\ëcBÙO“S\ÊÔ¼',490.63,3,_binary 'û0·ŒsI3¹\étÁ\ÉO4š',_binary '\ÈQ:jÀKÕ€f	|{N±\Ş'),(_binary '\Êc»AsL“¿°Z!A(',843.75,1,_binary 'Xlµ\Ü\åqH3.\Ï\ã~¡´',_binary '\ö/\İy\âM›&R\Ü}hW§'),(_binary 'Í¥;^³B`¶ R\ë›\å\ô#',409.32,3,_binary 'ù¨º\ã\ô@}ºœF¢\Èd',_binary 'fa\÷Ÿ\n\äI!°=&k¶'),(_binary '\Î\0A¥cAV¶\ã\í·\à\ğ',494.53,1,_binary ':\Ãı\Í\óZJ\æ¦\ê\é\Ên‡³',_binary 'kJ‹O\ØF¼«t\ãhşŠ1¾'),(_binary '\Î\×ú9–@æ­¬C4Í„¤\Ê',831.71,2,_binary '<\Ï\÷¨L¬UJ5¤\è¾',_binary '\ì>±™2M®Ôˆ~»ı\èR'),(_binary 'Ï—\á\ËGÒ—\æ\å%SŠQ',201.98,2,_binary 'øcW@L<•\í\õ6³\ß\ØU',_binary 'b¤Íe8J\n²u)‰\Ñpok'),(_binary 'Ô\ÔM\÷§B=¾\Ï\Û?b{ J',318.89,3,_binary '˜™`VM\é€À-?¼',_binary '\ì>±™2M®Ôˆ~»ı\èR'),(_binary '\Ôú°‡*E\îšÀ\Æg.¼',213.14,3,_binary 'ah£>\Ô`J²šÀË²u?Q\â',_binary 'cj\ÔG6Dº­\ç!6\"_S'),(_binary '\×¼ B³µ#\÷@”7',912.99,1,_binary 'ß‚)\å×’@o¯iª\ô˜­\Í\ñ',_binary '\Ûrœ\Ñ>MÔ¦\n\Zf%\ö\"'),(_binary 'Ü™¸‘µ³@I©§#©QŒU',36.82,2,_binary '»\Ã9Œ£A¸€³šhj«)|',_binary '²[v‰\öE%¢\ÔW¹V'),(_binary '\ßc\Ç\î,F´¦\ÂWC®û',592.14,1,_binary '\å\Ë\ó\ä\ç@\Ç-R\Âû\öN',_binary '?\å°8kC\ì³\İ\ö\õI¡€\ß'),(_binary '\ìG&\êjŠN*®äš“',190.94,2,_binary '¼+\ĞO•¿)=DN5#',_binary 'fa\÷Ÿ\n\äI!°=&k¶'),(_binary '\îÁSv—@±­2˜\×\×a4›',409.32,2,_binary 'ù¨º\ã\ô@}ºœF¢\Èd',_binary 'f¡\rHŒDR‹.´.ùP˜'),(_binary '\ñi;r›Fh´&\î&¼ü\á2',800.61,1,_binary 'ƒFûÁJÓ·\÷?P`',_binary '`”•‹\ä¸Oª°s†\ŞE\Ş\æs'),(_binary 'ù²aüE\â¦À\Ô/µIa',657.13,2,_binary '¯ª~\î±Jì‡>–z\Éû\Ô',_binary '\Î\ßRµ&Iw£\ìK²8('),(_binary 'ú\Ø\Ã$\Z8K´¤«\Ó‘\'\Ô',190.94,2,_binary '¼+\ĞO•¿)=DN5#',_binary '–\'y\Ğ$E-¿º>W9\È>');
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
INSERT INTO `usuario` VALUES (_binary '\n\ß\ëŠı‘@\r¤\ö/¶qŠ0','carroll.schroeder@gmail.com','Teodora Cassin','USER','$2a$10$6IgDOaTq/QlPLFdewaB3C.mOW/OA6YlHE89GeE8QgSZzhGMfvuGRe'),(_binary '_\õ\öAX‘8§q$5\Ë\Ì','maria.boehm@hotmail.com','Maude Moen IV','USER','$2a$10$XZzRmYGXJpyW6v4SiOLyH.SupTir7EYS3ySUYel/6ceKpceJEqQ0S'),(_binary '\\`Io`\óG\ö§H\'\Ó7µ','leonarda.cartwright@gmail.com','Mr. Lindsay Harris','USER','$2a$10$w3qgYgFCO/FZKjZ93vcFdO7T2XRYtTE1sm1TNomyv/BZUb5BTQOzG'),(_binary 'y%T \äIÒŒ·<K5\Ñ','gregory.hintz@hotmail.com','Miss Marc Dicki','USER','$2a$10$J4D5mx8AlrHWgh7v3PJzwewzX1rJoFunZGmHFbwXScifFsrorN3Ry'),(_binary '¤ƒDW”G:§\÷\ã\ë5\àY','wilson.zulauf@hotmail.com','Mr. Lulu Carter','USER','$2a$10$P3jY1EoBcJO4ehEk8Sbx6eBfkqzqKdHnq7.9kr8D79MsQ5j5KWAum'),(_binary '±”\ÃPºXD~‚\ëüş’L\á','virgil.rosenbaum@gmail.com','Mrs. Isiah Abernathy','USER','$2a$10$nDHqOKFB/k2Oz63cJURGpOLrcNyfdpdx1Jy26TNocdEWf86jjFFPi'),(_binary '\É\nD¹\ëGO\ó‡\âzÎ±\Ï','hassan.kuvalis@hotmail.com','Pam Harber','USER','$2a$10$jsRGZUhio8BTGn0NZTickOCeoUCIwW9rAFL/Y8TfFANXXdTVryC1G'),(_binary '\Ğ~\"•\ÎKMÕ¢ÿık´T.8','jene.kirlin@yahoo.com','Candace Roob','USER','$2a$10$c21k5WmZfep4rfcSc6a6JuNQf/Z1QS68LcD.m8t9LF4RE5A6BsKJ6'),(_binary '\Ş!Fµİ‘OÀ¥4}\n y\È','admin@email.com','Administrador','ADMIN','$2a$10$R9DcD2pI0xzRF2Ooh/nvhuuHDNtblr0HLk18HwEqZC1L973NxZMfC'),(_binary '\ô”ùNCEIºK¶C•\ö','bobbie.rath@yahoo.com','Savannah Satterfield','USER','$2a$10$14OJoH45mQj4uAzXWvu64Od0quu86BMUyHTrgW0S.RmebWKUSiwaq');
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

-- Dump completed on 2025-03-24 10:06:34
