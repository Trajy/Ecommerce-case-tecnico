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
INSERT INTO `pedido` VALUES (_binary '\�dOj��\�O��','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1347.16,NULL,_binary '*а�}\�B2��@�]+\�\�'),(_binary '��%�=G����y��ǁ','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1016.18,NULL,_binary '����t{D��?\�\��vV'),(_binary '\"��\�}E]�̕ʚ�\�Z','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2376.72,NULL,_binary '\�ux��GM�ީ\�8�'),(_binary '(\�\�\�E��F](ۈ\�','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',5274.93,NULL,_binary 'zIxGL{Hʬ�v�\�\�t'),(_binary '+4�\ZR�Ga�fgy��\�\�','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',3175.14,NULL,_binary '��-d\�\0N͙�:�\�[\��'),(_binary '/_5�\rGH|�\�FRm�}Y','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1619.82,NULL,_binary '�޸ig DU�\�\�\�P�'),(_binary 'RJ\�_��OJ�^��MЁ','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2138.19,NULL,_binary '�޸ig DU�\�\�\�P�'),(_binary '[\�~42F��@�	 \�lt','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',3177.43,NULL,_binary '*а�}\�B2��@�]+\�\�'),(_binary 'g\���Y�MR�\�\�\�K\�\�','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1570.72,NULL,_binary '\�\�\�qRK�v\�\�7�\�'),(_binary 'm\�\�MTI��\�QTv�','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2833.72,NULL,_binary 'O\�&��I�����\�\�\�'),(_binary 'n�\�\'EWBގ�kH�\�\�','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',130.08,NULL,_binary '\�\�\�qRK�v\�\�7�\�'),(_binary 'tHc9O�A��-��PbF\�','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',942.84,NULL,_binary '\�ux��GM�ީ\�8�'),(_binary 'zeޚ<\�ĒB\�O\��!�','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',4573.85,NULL,_binary 'zIxGL{Hʬ�v�\�\�t'),(_binary '�\�ԞL��d���\�\� ','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',6823.73,NULL,_binary '����t{D��?\�\��vV'),(_binary '�Z�\�\�\�C%�oY��8*P','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',423.78,NULL,_binary 'ka�^:DƐm�y��f'),(_binary '�y�\�\�K\��\�!.�\'�','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',6027.83,NULL,_binary 'zIxGL{Hʬ�v�\�\�t'),(_binary '�M��\�QDw�T�`�\�<W','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1452.72,NULL,_binary '*а�}\�B2��@�]+\�\�'),(_binary '�wZ$C7�\�`�P�Xe','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1215.74,NULL,_binary 'ka�^:DƐm�y��f'),(_binary '��`\�\'H��\"�^\�<d','2025-03-25 03:59:03.097000',NULL,NULL,NULL,NULL,'PENDENTE',374.65,NULL,_binary 'ka�^:DƐm�y��f'),(_binary '����gFL`�Z��9;�H','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1326.06,NULL,_binary '\�\�\�qRK�v\�\�7�\�'),(_binary '��]���C��][�\��','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2252.66,NULL,_binary '����t{D��?\�\��vV'),(_binary '�bc�\rJ1�\�q\ZT&K�','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1822.12,NULL,_binary '����t{D��?\�\��vV'),(_binary '����\�HҋYK*:�\�\�','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',990.06,NULL,_binary '�޸ig DU�\�\�\�P�'),(_binary '�х\�IFî\�#�a��','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2635.50,NULL,_binary 'O\�&��I�����\�\�\�'),(_binary '\�R\�]2H���h���\�','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1972.83,NULL,_binary '��-d\�\0N͙�:�\�[\��'),(_binary '\�\�)(NiC\�\���>','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2237.55,NULL,_binary 'zIxGL{Hʬ�v�\�\�t'),(_binary '\�+SO�@\�\�Fͽ�\�I','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1866.48,NULL,_binary '\�ux��GM�ީ\�8�'),(_binary '\�\��\�N7Lv�\��9\�\�','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2801.42,NULL,_binary '\�\�\�qRK�v\�\�7�\�'),(_binary '䦡\�=TI5�k\�\\p444','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',1044.60,NULL,_binary 'O\�&��I�����\�\�\�'),(_binary '\�0\�eK4��\�\�+','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2426.94,NULL,_binary '*а�}\�B2��@�]+\�\�'),(_binary '\�\�Y\�#4OĜ��.b\�\�','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',845.20,NULL,_binary '��-d\�\0N͙�:�\�[\��'),(_binary '\�Ll\�x\�E[�BW��','2025-03-25 03:59:03.115000',NULL,NULL,NULL,NULL,'PENDENTE',2578.46,NULL,_binary '\�ux��GM�ީ\�8�');
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
INSERT INTO `produto` VALUES (_binary ';~hHP�4i?\��a',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Deserunt nemo veritatis ipsa dolorem dignissimos.','Small Plastic Bag',745.85,23),(_binary '	�\��\'Gǁ`\\�\�\��',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Sequi ut quos fugit consequuntur reprehenderit.','Rustic Paper Chair',318.41,15),(_binary '̷\�;�Jk�w`\�y���',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Recusandae temporibus beatae animi.','Ergonomic Concrete Keyboard',153.74,20),(_binary '\\幭�JɁ�B���W',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Rerum rerum praesentium.','Incredible Plastic Car',442.02,2),(_binary '!���C3��ެJ8[\�',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Autem est in animi autem ut.','Sleek Marble Bench',919.04,1),(_binary '%�iX�<A����h��Ԁ',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Voluptas aut consectetur est sequi autem.','Incredible Linen Wallet',256.48,18),(_binary ')\�_�%.@��\�\�z�\�\�\�',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Et expedita sint.','Incredible Concrete Lamp',420.72,46),(_binary '+\�\�G/�C�}��A6��',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Est quis dolor alias.','Synergistic Paper Bag',404.29,49),(_binary ',\\�\� J\��u:-<qr',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Accusamus mollitia odio et neque.','Small Aluminum Plate',640.81,14),(_binary '2�{ۨF��o\�\�;��\�',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Similique nihil officia.','Aerodynamic Wooden Table',607.87,25),(_binary '=5�+�{L�$w\�3�\�',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Voluptatem mollitia eum velit voluptatem blanditiis animi.','Incredible Paper Chair',367.89,19),(_binary '?�->\�KCׄvS\�\���',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Voluptatum consectetur iste accusantium ut aut facere.','Intelligent Steel Bag',637.61,39),(_binary 'A�g�\�u@k�{\��_',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Perferendis cumque praesentium.','Durable Linen Shirt',543.96,28),(_binary 'L\� ܾ�Nx�I�\�|�\�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Veritatis sunt et aperiam harum.','Intelligent Paper Lamp',548.12,16),(_binary 'P�K\�N<�Qx6\�<\�',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Adipisci quaerat nisi voluptatibus quis explicabo voluptates et.','Ergonomic Bronze Bottle',954.87,16),(_binary 'Q��T^�Cǧ�wrZ.\�',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Rerum consequatur atque et aut sed tempore eius.','Sleek Copper Computer',787.60,14),(_binary 'Rwi\�HNƑ`�\�\�\�`�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Praesentium quod est nihil velit quam eius.','Heavy Duty Wooden Computer',177.81,7),(_binary 'e\�6	!�H��M��\�g',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Animi esse ut error.','Durable Cotton Coat',904.45,1),(_binary 'g}j\�WC9�`\�8$y',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Officia molestias aut.','Awesome Steel Knife',167.35,44),(_binary 'g��5|kO*�\� h\�\\�o',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Perspiciatis hic quia culpa eum est.','Gorgeous Iron Wallet',435.10,8),(_binary 'kx�\�üE��\'m_R_\�',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Veniam et delectus tempore est ullam.','Small Aluminum Coat',132.99,35),(_binary '��;0�	B��\�bm��n\�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Quis expedita est id.','Mediocre Silk Shirt',764.21,19),(_binary '���\�L��\�\�S�6',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Sint quos eligendi sit tempore.','Sleek Granite Bottle',283.28,22),(_binary '�Ի\�\��D��)�\�\�-ߙ',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Ea earum possimus corporis qui.','Awesome Cotton Keyboard',812.17,21),(_binary '�\�\�2>\�O씥ʲ\�\��x',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Tempora quia ratione modi iste maxime.','Sleek Concrete Shoes',167.29,29),(_binary '���\�\�(J􋪤6\�?\�_',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Ducimus et minima error eveniet nemo similique temporibus.','Incredible Steel Knife',454.87,22),(_binary '�\�\�G�Ii�\\k��z',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Natus delectus aut modi ut est.','Mediocre Linen Keyboard',37.67,39),(_binary '�\�\�^ӠJz�\�M?\�!<',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Tempora vitae deserunt tempore aut.','Durable Paper Hat',759.96,24),(_binary '��\�\�@��?~6�D\�!',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Vero illum rerum porro.','Synergistic Steel Coat',374.65,45),(_binary '�2��gfD\���\�Df7`',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Error illo eum debitis et repellat.','Awesome Silk Coat',65.04,33),(_binary '����0C,�2PI(ǘ\�',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Neque reprehenderit quidem voluptatibus in a hic et.','Fantastic Linen Bottle',309.83,5),(_binary '�뼒,�B\�\'�\�Ry',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Distinctio quas molestiae eligendi cum tempore id.','Gorgeous Aluminum Watch',577.02,31),(_binary '��A��yOp��\�}<{9',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Sint officia ut eius.','Incredible Wool Coat',17.80,33),(_binary '�\'�\�(MʛN�q.*J',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Quia laudantium hic tenetur quia aliquam harum officiis.','Enormous Marble Keyboard',774.87,2),(_binary '�P<L�G���$ցb�',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Ullam aut veritatis mollitia.','Durable Paper Shoes',197.56,34),(_binary '��p��qC٫\�ht\�\��:',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Sunt et voluptate fugit totam est.','Intelligent Marble Watch',677.85,36),(_binary '\�uG\�ʰBU�%\n�(\�\�!',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Et laborum ad.','Small Concrete Plate',942.84,18),(_binary '\� �\�IFܔ\�hq��',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Ratione ipsum distinctio ipsam.','Incredible Iron Clock',712.73,38),(_binary 'ӡS\�\�Ei�:2\�]`��',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Velit consequuntur rerum ab dolorem.','Gorgeous Rubber Shirt',508.79,19),(_binary '\�#q\0֨L\��\�I%\�\�\�~',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Impedit ut magnam officia ut voluptatem.','Awesome Bronze Bench',211.89,14),(_binary '\�\�\\�H\"���K\�\��',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Animi autem ut sit suscipit minus ipsa quia.','Incredible Granite Pants',209.60,20),(_binary '\�\�4�\r|J׽]�W�b)\\',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Quisquam quas quidem iure soluta non.','Mediocre Iron Shoes',102.16,11),(_binary '\��֢\�JБ�?g���',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Molestias voluptatem temporibus dolorem consectetur.','Practical Wool Shoes',969.26,41),(_binary '\��LUM�!��x\�',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Id velit ea ullam dolores voluptatibus cupiditate.','Durable Leather Gloves',51.59,29),(_binary '\�\�nA\�\�G\�dVLR=�',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Ducimus veritatis reiciendis.','Sleek Wooden Shoes',242.11,38),(_binary '\�\��`\�II�r\�\�L�',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Error mollitia magnam sit libero.','Awesome Rubber Table',495.03,29),(_binary '\�Pr�_I\�}J�\�\�\�',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Qui dolore voluptatibus reiciendis nulla.','Intelligent Steel Pants',512.36,13),(_binary '\� \�\�F$�d޾l��\�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Architecto ipsum ipsa vel sed non.','Heavy Duty Bronze Coat',70.59,35),(_binary '�\���\�BɈ\�TE�N\�',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Laborum repudiandae molestiae recusandae adipisci et vero.','Heavy Duty Rubber Chair',911.65,19),(_binary '�\���H\�\�4�*\�)m',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Non quos deserunt.','Ergonomic Silk Knife',683.73,17);
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
INSERT INTO `produto_pedido` VALUES (_binary '\0�Ҍ?>N1�P@\�RF\�',211.89,2,_binary '\�#q\0֨L\��\�I%\�\�\�~',_binary '�Z�\�\�\�C%�oY��8*P'),(_binary '\�\�_8\�H��YF\�g:\�',942.84,1,_binary '\�uG\�ʰBU�%\n�(\�\�!',_binary 'tHc9O�A��-��PbF\�'),(_binary '	\�\�kAF�IF?�',712.73,3,_binary '\� �\�IFܔ\�hq��',_binary 'zeޚ<\�ĒB\�O\��!�'),(_binary 'wJG\�aN��·�\�)�\�',677.85,2,_binary '��p��qC٫\�ht\�\��:',_binary '(\�\�\�E��F](ۈ\�'),(_binary '\�k���GY���>:\��i',442.02,3,_binary '\\幭�JɁ�B���W',_binary '�bc�\rJ1�\�q\ZT&K�'),(_binary '\�F�\�!O����7�o?',942.84,3,_binary '\�uG\�ʰBU�%\n�(\�\�!',_binary '�y�\�\�K\��\�!.�\'�'),(_binary '\�S�Lm�v\�ԓ\0�',543.96,2,_binary 'A�g�\�u@k�{\��_',_binary '\�Ll\�x\�E[�BW��'),(_binary '\'��,$Mf�,=�Ybk',607.87,1,_binary '2�{ۨF��o\�\�;��\�',_binary 'g\���Y�MR�\�\�\�K\�\�'),(_binary ' \�\n\�\�N��H�\�a%�\�',242.11,2,_binary '\�\�nA\�\�G\�dVLR=�',_binary '��%�=G����y��ǁ'),(_binary '!Ad�\�Bۣ�����0l',759.96,1,_binary '�\�\�^ӠJz�\�M?\�!<',_binary '\�R\�]2H���h���\�'),(_binary '(\Z\�v]I|���\�\�\�',969.26,1,_binary '\��֢\�JБ�?g���',_binary '䦡\�=TI5�k\�\\p444'),(_binary '/�pA%�~}8�',367.89,2,_binary '=5�+�{L�$w\�3�\�',_binary '/_5�\rGH|�\�FRm�}Y'),(_binary '0]6iobKs���;8״',764.21,2,_binary '��;0�	B��\�bm��n\�',_binary 'm\�\�MTI��\�QTv�'),(_binary '0�ӽ?L��/}\�8�',745.85,1,_binary ';~hHP�4i?\��a',_binary '\�0\�eK4��\�\�+'),(_binary '2�]\�\�Kx�\�[\"�S�',454.87,3,_binary '���\�\�(J􋪤6\�?\�_',_binary '��]���C��][�\��'),(_binary '7G\�2��M��b�\�\�6W\�',683.73,1,_binary '�\���H\�\�4�*\�)m',_binary '��]���C��][�\��'),(_binary 'AeN\�+\0E��G�5�\�',177.81,2,_binary 'Rwi\�HNƑ`�\�\�\�`�',_binary '�х\�IFî\�#�a��'),(_binary 'B��\\J��G\�\�(Kj5',787.60,1,_binary 'Q��T^�Cǧ�wrZ.\�',_binary '\�dOj��\�O��'),(_binary 'Bї\��Jm�_U�Ԛ�',374.65,1,_binary '��\�\�@��?~6�D\�!',_binary '��`\�\'H��\"�^\�<d'),(_binary 'F:���J\Z�ۡ\�϶Q�',607.87,2,_binary '2�{ۨF��o\�\�;��\�',_binary '�wZ$C7�\�`�P�Xe'),(_binary 'G��0\�@ΝR�v`{\�',759.96,3,_binary '�\�\�^ӠJz�\�M?\�!<',_binary '�\�ԞL��d���\�\� '),(_binary 'J\�KZ�H��\�S�d\n�',577.02,2,_binary '�뼒,�B\�\'�\�Ry',_binary 'zeޚ<\�ĒB\�O\��!�'),(_binary 'O��x\�C��.+�K1m',167.35,1,_binary 'g}j\�WC9�`\�8$y',_binary '\�\�Y\�#4OĜ��.b\�\�'),(_binary 'O�\�ȋ�I��{�\�<\�',508.79,1,_binary 'ӡS\�\�Ei�:2\�]`��',_binary '\�\��\�N7Lv�\��9\�\�'),(_binary 'Q}Ol�\�G\�n2��\�p',37.67,2,_binary '�\�\�G�Ii�\\k��z',_binary '�bc�\rJ1�\�q\ZT&K�'),(_binary 'UB�,2LH�iE\�S��X',759.96,3,_binary '�\�\�^ӠJz�\�M?\�!<',_binary '�х\�IFî\�#�a��'),(_binary 'U��H��K��t�z�޷8',640.81,2,_binary ',\\�\� J\��u:-<qr',_binary 'zeޚ<\�ĒB\�O\��!�'),(_binary 'XW:ُ\�G�\�\r�OG�\�',954.87,3,_binary 'P�K\�N<�Qx6\�<\�',_binary '�y�\�\�K\��\�!.�\'�'),(_binary 'X�\�E\�G��5\��\�\�6c',904.45,2,_binary 'e\�6	!�H��M��\�g',_binary '�\�ԞL��d���\�\� '),(_binary ']�eܷ&@N�\�W\�\�\�',787.60,3,_binary 'Q��T^�Cǧ�wrZ.\�',_binary '[\�~42F��@�	 \�lt'),(_binary '^>\\�DX��}w\�B<',374.65,3,_binary '��\�\�@��?~6�D\�!',_binary '+4�\ZR�Ga�fgy��\�\�'),(_binary 'dkઐ)N\'��\�D4I\Z\�',167.35,2,_binary 'g}j\�WC9�`\�8$y',_binary '�y�\�\�K\��\�!.�\'�'),(_binary 'jݺ�G\�CR��Y�kd+�',774.87,1,_binary '�\'�\�(MʛN�q.*J',_binary '�M��\�QDw�T�`�\�<W'),(_binary 'p)\�u\�\�E���� \�s\'R',37.67,2,_binary '�\�\�G�Ii�\\k��z',_binary '\�dOj��\�O��'),(_binary 'q�\�~ROH�>�я\�\'',420.72,1,_binary ')\�_�%.@��\�\�z�\�\�\�',_binary '�bc�\rJ1�\�q\ZT&K�'),(_binary 't��Y�M՞9�ϲ�.y',177.81,1,_binary 'Rwi\�HNƑ`�\�\�\�`�',_binary '[\�~42F��@�	 \�lt'),(_binary '{�m(�M忡\�\�Hf\�J',677.85,3,_binary '��p��qC٫\�ht\�\��:',_binary '(\�\�\�E��F](ۈ\�'),(_binary '}Pg�\�YA��!\�g�M��',256.48,3,_binary '%�iX�<A����h��Ԁ',_binary '\�0\�eK4��\�\�+'),(_binary '��\�\�3H�۷�\�g6',242.11,3,_binary '\�\�nA\�\�G\�dVLR=�',_binary '\�Ll\�x\�E[�BW��'),(_binary '�~\�\�G��\�ZT�_^\�',454.87,3,_binary '���\�\�(J􋪤6\�?\�_',_binary '\�+SO�@\�\�Fͽ�\�I'),(_binary '�\�\rOFp�\Z\r�4e',37.67,2,_binary '�\�\�G�Ii�\\k��z',_binary '䦡\�=TI5�k\�\\p444'),(_binary '���%\Z\�Nu���\�tw�<',37.67,3,_binary '�\�\�G�Ii�\\k��z',_binary 'g\���Y�MR�\�\�\�K\�\�'),(_binary '�\��}NE��I2\�v�\Z',167.29,3,_binary '�\�\�2>\�O씥ʲ\�\��x',_binary '\�+SO�@\�\�Fͽ�\�I'),(_binary '�x4m\�Cج}�\�~8\�',911.65,3,_binary '�\���\�BɈ\�TE�N\�',_binary '�\�ԞL��d���\�\� '),(_binary '�\�X�hFe�/,n\�Ifr',683.73,3,_binary '�\���H\�\�4�*\�)m',_binary '+4�\ZR�Ga�fgy��\�\�'),(_binary '��hG(DⴹDňY\�z',242.11,2,_binary '\�\�nA\�\�G\�dVLR=�',_binary '\�dOj��\�O��'),(_binary '�-�D_��7�\�eF',318.41,2,_binary '	�\��\'Gǁ`\\�\�\��',_binary '[\�~42F��@�	 \�lt'),(_binary '�n\�CYJ�F��\�O@\�',283.28,3,_binary '���\�L��\�\�S�6',_binary 'g\���Y�MR�\�\�\�K\�\�'),(_binary '�\�Vh]�C,�Z��?�Н',712.73,3,_binary '\� �\�IFܔ\�hq��',_binary 'RJ\�_��OJ�^��MЁ'),(_binary '�M\�\�\�A��p�p���\�',640.81,1,_binary ',\\�\� J\��u:-<qr',_binary '\"��\�}E]�̕ʚ�\�Z'),(_binary '�A��?xK��\�\�^:[\�',442.02,2,_binary '\\幭�JɁ�B���W',_binary '/_5�\rGH|�\�FRm�}Y'),(_binary '��r�pD���jmN��\�',65.04,2,_binary '�2��gfD\���\�Df7`',_binary 'n�\�\'EWBގ�kH�\�\�'),(_binary '�\�9�\�D\0�KY�t%\�',132.99,1,_binary 'kx�\�üE��\'m_R_\�',_binary '��%�=G����y��ǁ'),(_binary '\�pBgM��ЯU�|@y',404.29,3,_binary '+\�\�G/�C�}��A6��',_binary '\�R\�]2H���h���\�'),(_binary '\��Fq�G6�\�����',442.02,3,_binary '\\幭�JɁ�B���W',_binary '����gFL`�Z��9;�H'),(_binary '\�qX��M7�{*\n�ǉ\�',764.21,1,_binary '��;0�	B��\�bm��n\�',_binary '\�Ll\�x\�E[�BW��'),(_binary '\�qx\�\�sF\n�\�u\��c\�',942.84,2,_binary '\�uG\�ʰBU�%\n�(\�\�!',_binary '(\�\�\�E��F](ۈ\�'),(_binary '\�S,��@��\�3\�f/GV',495.03,2,_binary '\�\��`\�II�r\�\�L�',_binary '����\�HҋYK*:�\�\�'),(_binary '\�\���cJM\�\�\�|�\�=\�',132.99,3,_binary 'kx�\�üE��\'m_R_\�',_binary '��%�=G����y��ǁ'),(_binary '\�\�[�\�B\�\�(v�@Q\n',102.16,2,_binary '\�\�4�\r|J׽]�W�b)\\',_binary '��]���C��][�\��'),(_binary '\�\�\�-�\�A1�\��PcϨ',745.85,1,_binary ';~hHP�4i?\��a',_binary '\"��\�}E]�̕ʚ�\�Z'),(_binary '\�y\�N�\�Mݺ\�\�՘��',764.21,3,_binary '��;0�	B��\�bm��n\�',_binary '\�\��\�N7Lv�\��9\�\�'),(_binary '\�+�\�K&��\�>���X',677.85,1,_binary '��p��qC٫\�ht\�\��:',_binary '�M��\�QDw�T�`�\�<W'),(_binary '\�\�b�Aw�\�ŦQf�',745.85,3,_binary ';~hHP�4i?\��a',_binary '\�\�)(NiC\�\���>'),(_binary '졌\�\�\ZC3�ؘ\�\�%1',677.85,1,_binary '��p��qC٫\�ht\�\��:',_binary '\�\�Y\�#4OĜ��.b\�\�'),(_binary '\�!a�\�A��\�\�\�W',911.65,1,_binary '�\���\�BɈ\�TE�N\�',_binary '\�0\�eK4��\�\�+'),(_binary '\�����%H��=\�M2\�',495.03,2,_binary '\�\��`\�II�r\�\�L�',_binary '\"��\�}E]�̕ʚ�\�Z'),(_binary '���\�\�%J\�s	�>�P`',435.10,3,_binary 'g��5|kO*�\� h\�\\�o',_binary 'm\�\�MTI��\�QTv�');
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
INSERT INTO `usuario` VALUES (_binary '*а�}\�B2��@�]+\�\�','myron.runte@hotmail.com','Rhett Heaney','USER','$2a$10$bMwJiugdDRokFwVfb9Frc.BF./yAA7/EHmXkgC3wLMiIW8si92l5.'),(_binary 'O\�&��I�����\�\�\�','sandy.herzog@yahoo.com','Jennifer Nolan','USER','$2a$10$ztfZhVmyS.wBRxMRwIkQYef802Ap1PI544XLBBYApfZYv8YadILge'),(_binary 'iɉL��\��\�ɺ\�\�','admin@email.com','Administrador','ADMIN','$2a$10$i37Jr1Ih2nSOMOz4viafGObXtctPsZiCAlsJ8Joqn4APdIVLRSKG6'),(_binary 'ka�^:DƐm�y��f','jeanna.mcdermott@gmail.com','Tresa Erdman','USER','$2a$10$IdwnoGYR2edLtYyygrOhXu.iId7PvprxpT8irGblmSKwmAtDlUC7G'),(_binary 'zIxGL{Hʬ�v�\�\�t','cami.crooks@yahoo.com','Dr. Eliseo Steuber','USER','$2a$10$MJqlu8e/x4j9X91wtR281uex4yUbmltRTdczgo5R459N00P40AfcW'),(_binary '����t{D��?\�\��vV','louanne.schiller@yahoo.com','Dr. Alvin Swift','USER','$2a$10$qDpW8/CdNusazoQnbY9dX.b2yiwGavh7cPXdHgdb03lUgo1cvo5sK'),(_binary '��-d\�\0N͙�:�\�[\��','harris.willms@hotmail.com','Annika Reilly','USER','$2a$10$XJ9CZA0XUrzNZEXDOaZwoenCeq86chWe1p2.ohuAIo1M1/oI1bKN2'),(_binary '�޸ig DU�\�\�\�P�','theodora.beier@gmail.com','Miss Rick Cassin','USER','$2a$10$q.14yLpIamiZpLn0gQFH8uW0JvtI2Ity2HyrGfK7o9AglEldTaK.K'),(_binary '\�ux��GM�ީ\�8�','corey.senger@yahoo.com','Maryam Jones','USER','$2a$10$J/Xt4ZRvl9.S4iJivb5WoOLhbfNqmQKuzuSPE5C1RLK6/VDZT4LbO'),(_binary '\�\�\�qRK�v\�\�7�\�','dominic.thompson@gmail.com','Caridad Hamill','USER','$2a$10$YsDFRbaCa4FkPws1PwbVhO.mzzcebsnvGcjV6svhH4/sNPgju0WHu');
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
