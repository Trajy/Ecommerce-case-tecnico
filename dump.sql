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
INSERT INTO `pedido` VALUES (_binary '-$�)[H\�\n�%\\W\�','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',2389.42,NULL,_binary '��\�P�XD~�\����L\�'),(_binary '/r0B��Hࢢ#\�h<I�','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',1663.42,NULL,_binary '\�~\"�\�KMբ��k�T.8'),(_binary '9!ӓ�\�H�\�W a\�\�\�','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',1542.31,NULL,_binary '��DW�G:�\�\�\�5\�Y'),(_binary '?\�8kC\�\�\�\�I��\�','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',2193.36,NULL,_binary '\�~\"�\�KMբ��k�T.8'),(_binary 'AF%O\�NR��d3�_','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',3005.29,NULL,_binary '��DW�G:�\�\�\�5\�Y'),(_binary 'K_qREzA��j~�m','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',4060.50,NULL,_binary '\�\nD�\�GO\�\�zα\�'),(_binary 'U�\�\�zKN(�P��\�`\�\�','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',1483.59,NULL,_binary '\\`Io`\�G\��H\'\�7�'),(_binary '`���\�O��s�\�E\�\�s','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',800.61,NULL,_binary '��\�P�XD~�\����L\�'),(_binary 'b�͍e8J\n�u)�\�pok','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',403.96,NULL,_binary '\�\nD�\�GO\�\�zα\�'),(_binary 'cj\�G6D��\�!6\"_S','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',639.42,NULL,_binary '\n\�\���@\r�\�/�q�0'),(_binary 'fa\��\n\�I�!�=�&k�','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',3438.94,NULL,_binary '\�\nD�\�GO\�\�zα\�'),(_binary 'f�\rH�DR�.��.�P�','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',818.64,NULL,_binary '_\�\��AX�8�q$5\�\�'),(_binary 'kJ�O�\�F��t\�h��1�','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',548.65,NULL,_binary '\�~\"�\�KMբ��k�T.8'),(_binary 's3\ZI��G��\�\�\0�\�','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',2794.63,NULL,_binary '\���NCEI�K�C�\�'),(_binary 'w�tq�\�@�\�\�\�y�','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',630.28,NULL,_binary '\���NCEI�K�C�\�'),(_binary '�\'y\�$E-��>W9\�>','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',381.88,NULL,_binary '\n\�\���@\r�\�/�q�0'),(_binary '�󒆉Aa��1\�6j\�\�','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',778.76,NULL,_binary '��\�P�XD~�\����L\�'),(_binary '�\�Q&E�.Pw�Do','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',565.58,NULL,_binary 'y�%T \�Iҍ��<K5\�'),(_binary '�Ľ�S�M��`E{I-!P','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',1701.43,NULL,_binary '\�\nD�\�GO\�\�zα\�'),(_binary '����bK��O�\�is\�}','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',2743.65,NULL,_binary 'y�%T \�Iҍ��<K5\�'),(_binary '�Sp+\�m@��̉x��u','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',1220.06,NULL,_binary '��\�P�XD~�\����L\�'),(_binary '�[v�\�E%�\�W�V','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',1265.63,NULL,_binary '_\�\��AX�8�q$5\�\�'),(_binary '\�Q:j�KՀf	|{N�\�','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',4051.71,NULL,_binary '\\`Io`\�G\��H\'\�7�'),(_binary '\�\�R�&Iw�\�K�8(','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',2204.80,NULL,_binary 'y�%T \�Iҍ��<K5\�'),(_binary '\�r�\�>MԦ\n\Zf%\�\"','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',4198.83,NULL,_binary '��DW�G:�\�\�\�5\�Y'),(_binary '\�t�\Z%�D��G\�i碚�','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',1720.14,NULL,_binary '\n\�\���@\r�\�/�q�0'),(_binary '\�ō0\�C��Ĥc3\�6','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',2752.52,NULL,_binary '\���NCEI�K�C�\�'),(_binary '\�>��2M��Ԉ~��\�R','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',5518.21,NULL,_binary '��DW�G:�\�\�\�5\�Y'),(_binary '\�/\�y\�M�&R\�}hW�','2025-03-24 09:53:30.909000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',843.75,NULL,_binary '\\`Io`\�G\��H\'\�7�'),(_binary '�ϝ�\�A��+�t7\�\�S','2025-03-24 09:53:30.930000',NULL,NULL,NULL,NULL,NULL,'PENDENTE',2183.61,NULL,_binary '_\�\��AX�8�q$5\�\�');
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
INSERT INTO `produto` VALUES (_binary '\0j\�+�G\��Xܒl��',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Quo rem qui in molestiae.','Practical Leather Pants',444.90,25),(_binary '�\�_yKR�S�1\�\�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Voluptates sed nulla sapiente est et.','Intelligent Rubber Watch',158.11,45),(_binary '	G}�\�pA\�\�L�6f-\�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Cum eum doloremque iste.','Gorgeous Granite Shirt',492.64,14),(_binary '҅\�\�M\�_�\�G�U',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Minus inventore vel sequi ex doloribus doloribus sed.','Small Paper Keyboard',966.04,49),(_binary '��`VM�\��-?�',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Velit dolores rem corporis rerum.','Practical Rubber Wallet',318.89,43),(_binary '�<\�\��L�UJ5�\�',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Dolore quod magnam quos consequuntur rerum.','Aerodynamic Silk Pants',831.71,9),(_binary 'l�\�G\�F��\��\�',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Dolor dolor omnis officia.','Durable Plastic Table',446.64,30),(_binary '�W:VE��s5\��t',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Omnis expedita aliquam velit vel accusamus.','Enormous Granite Wallet',914.55,36),(_binary '�g�\�GA��v�(�?<',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Qui dolores dolorem aut nobis maxime.','Durable Marble Chair',565.58,36),(_binary '<�ȏ�N���q�\n\�+\�',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Rem modi facilis aut.','Incredible Plastic Shirt',929.17,31),(_binary '�+\�O��)=DN5#',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Odio assumenda vitae sed aut vitae assumenda.','Aerodynamic Linen Table',190.94,45),(_binary '\"8˥\�G����+)I֯',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Nam quisquam sed.','Small Steel Coat',397.33,33),(_binary '(\�DfNv�\�+I[]\�',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Quibusdam voluptate aut alias quas nulla quo asperiores.','Mediocre Steel Bench',209.27,48),(_binary '8�=xXL}�\�j}d%]',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Magni ea odit assumenda voluptatum repellat quos dolor.','Rustic Wooden Table',396.38,23),(_binary '9ޜm~IKL�\�g\'�e\�Z',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Iusto magnam ad.','Durable Plastic Car',756.37,13),(_binary ':\��\�\�ZJ\�\�\�\�n��',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Ut eveniet ab occaecati.','Small Copper Shirt',494.53,36),(_binary 'A�Y\�T\�A��}�bPyp1',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Harum ut aspernatur non sequi dolorem.','Rustic Rubber Gloves',340.55,32),(_binary 'H-\�\�ćMͱ\0U7,\�\�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Facilis sequi esse.','Rustic Plastic Computer',843.27,19),(_binary 'Q\�!\�|N���t�\0�\�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Amet quo impedit expedita enim et optio ea.','Incredible Silk Gloves',204.38,2),(_binary 'Xl�\�\�qH3�.\�\�~��',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Inventore ea inventore ut nihil.','Sleek Rubber Knife',843.75,3),(_binary 'ah�>\�`J���˲u?Q\�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Quidem assumenda iure.','Synergistic Steel Bench',213.14,31),(_binary 'ec\�\�\�L#�\�\�_i@�',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Voluptatum dolorem qui sunt tempora repellat vitae excepturi.','Ergonomic Steel Watch',872.93,32),(_binary 'h\�НۢJh�z�\�bX	',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Magnam molestiae fuga.','Mediocre Granite Pants',912.33,18),(_binary 'i�{\�\"�A��6\��5J�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Laborum alias ut nesciunt aliquid.','Ergonomic Wooden Watch',781.72,38),(_binary 'zA2�ԚLc�\�o㕪�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Eligendi officiis eius.','Practical Linen Knife',695.91,35),(_binary '�#C0�Ex���@9}\�',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Modi earum explicabo officia qui aut quibusdam.','Ergonomic Concrete Computer',696.94,48),(_binary '�F��J�ӷ\�?P`',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Fuga expedita assumenda laborum dolorum.','Ergonomic Wooden Computer',800.61,4),(_binary '�ǻ4\�C��CO�\�T5y',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Quaerat rerum eum eos qui at reprehenderit qui.','Incredible Iron Computer',919.53,29),(_binary '�K�\�)\�A��7�� o�r',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Non voluptatibus aut.','Gorgeous Concrete Pants',643.56,49),(_binary '�$\�\�BGI}�ڙ�\\�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Aut omnis dolorem ipsam perspiciatis consequatur.','Durable Wool Table',330.96,44),(_binary '�����F\����N\�?��',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Minima nobis impedit rerum officia nobis est.','Sleek Rubber Car',968.30,19),(_binary '��6�]�N�掝��r\�',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Ut ipsam placeat.','Rustic Paper Clock',727.87,36),(_binary '��~\�J쐇>�z\��\�',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Ducimus eos esse dignissimos unde.','Enormous Wool Shoes',657.13,28),(_binary '�v�x�zCƛ\�\�\�\�O�',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Explicabo aut modi soluta.','Mediocre Wool Chair',527.25,15),(_binary '�c�:\Z\�L��0R�M���',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Repellat qui nobis.','Enormous Wool Shirt',315.14,13),(_binary '�\�9��A����hj�)|',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Repudiandae facere iure nemo.','Fantastic Paper Shirt',36.82,23),(_binary '�+\�w|EC�#U\'ΰ<',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Consequatur molestiae velit cum fugit velit.','Incredible Bronze Shoes',982.36,6),(_binary '\�\��>u@{�P���@�',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Eveniet et voluptate aspernatur iure cupiditate similique.','Fantastic Bronze Bottle',342.98,42),(_binary '\�ߓ]\�WK��D]\� �]',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Doloribus est sunt maiores quia.','Rustic Concrete Knife',760.85,38),(_binary '\�C4�ŲJ*���G�\"��',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Itaque id quia.','Lightweight Linen Car',18.04,20),(_binary '\�ΪD-�J࿽=�.@',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Pariatur dolorem suscipit odio nisi voluptatibus quas.','Rustic Iron Shirt',389.38,2),(_binary '߂)\�ג@o�i�\���\�\�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Et illum dolorem minus et ipsa.','Aerodynamic Linen Pants',912.99,29),(_binary '\�\�F��Ga�ܮה\�\�\�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Dolorem placeat accusamus blanditiis aliquam officiis.','Aerodynamic Aluminum Car',285.82,25),(_binary '\�\�\�\�\�@�\�-R\��\�N',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Unde dolores nisi.','Practical Granite Shirt',592.14,29),(_binary '\�О�G�Nn�K\'R�\�@',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Hic impedit possimus repellat quia aut accusamus sit.','Mediocre Leather Hat',480.14,2),(_binary '�cW@L<�\�\�6�\�\�U',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Aliquid quia veritatis corporis voluptate dolorum.','Awesome Paper Hat',201.98,10),(_binary '���\�\�@}��F�\�d',NULL,NULL,NULL,NULL,NULL,'ELETRO_DOMESTICO','Repellendus omnis et.','Practical Linen Clock',409.32,45),(_binary '�0��sI3�\�t�\�O4�',NULL,NULL,NULL,NULL,NULL,'ALIMENTO','Ipsum et necessitatibus itaque quia quia.','Small Concrete Knife',490.63,38),(_binary '�ݻ\�\�Lf�8\�<\Z2\�',NULL,NULL,NULL,NULL,NULL,'LIMPEZA','Qui amet distinctio praesentium ad beatae.','Practical Plastic Car',717.84,41),(_binary '�����C����\�\�J\�',NULL,NULL,NULL,NULL,NULL,'ELETRO_ELETRONICO','Deleniti minima modi tenetur distinctio maxime id sequi.','Sleek Rubber Chair',890.54,36);
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
INSERT INTO `produto_pedido` VALUES (_binary '��\��L��l=�=\�N�',204.38,3,_binary 'Q\�!\�|N���t�\0�\�',_binary '9!ӓ�\�H�\�W a\�\�\�'),(_binary '6G\�\�L���\�\�m���',315.14,2,_binary '�c�:\Z\�L��0R�M���',_binary 'w�tq�\�@�\�\�\�y�'),(_binary '	\�š)\�FD��Z�\0\�\�',966.04,3,_binary '҅\�\�M\�_�\�G�U',_binary '\�>��2M��Ԉ~��\�R'),(_binary '\n)iI$�D��d�nEuv\�',727.87,3,_binary '��6�]�N�掝��r\�',_binary '�ϝ�\�A��+�t7\�\�S'),(_binary '�3\�l�D���\�0k�N',872.93,2,_binary 'ec\�\�\�L#�\�\�_i@�',_binary '-$�)[H\�\n�%\\W\�'),(_binary '\Z=\�~��K��\Zp\�d\�\�\�',396.38,3,_binary '8�=xXL}�\�j}d%]',_binary 'K_qREzA��j~�m'),(_binary '9;�[@���y�\�K|',446.64,1,_binary 'l�\�G\�F��\��\�',_binary '�Ľ�S�M��`E{I-!P'),(_binary '!E\�\�\�FS�\�e��P�\�',890.54,1,_binary '�����C����\�\�J\�',_binary '\�\�R�&Iw�\�K�8('),(_binary '\"#���FF�	^f�m[',18.04,2,_binary '\�C4�ŲJ*���G�\"��',_binary '\�ō0\�C��Ĥc3\�6'),(_binary '$*34w�E���\�\�#�\�\�',158.11,3,_binary '�\�_yKR�S�1\�\�',_binary 's3\ZI��G��\�\�\0�\�'),(_binary ')}9\�n\�H��}9�',18.04,3,_binary '\�C4�ŲJ*���G�\"��',_binary 'kJ�O�\�F��t\�h��1�'),(_binary ',P���It�ޤ\�B�m',397.33,1,_binary '\"8˥\�G����+)I֯',_binary '�Ľ�S�M��`E{I-!P'),(_binary '3���DsJi�\�t�\�\Z�',397.33,3,_binary '\"8˥\�G����+)I֯',_binary '�[v�\�E%�\�W�V'),(_binary '5\�\�A�J��#:�\�53\�',565.58,2,_binary '�g�\�GA��v�(�?<',_binary 's3\ZI��G��\�\�\0�\�'),(_binary '6;\�\�F���\�\�E',717.84,1,_binary '�ݻ\�\�Lf�8\�<\Z2\�',_binary 'K_qREzA��j~�m'),(_binary '7nJ\�E��>_�m.�',494.53,3,_binary ':\��\�\�ZJ\�\�\�\�n��',_binary 'AF%O\�NR��d3�_'),(_binary '=o�R\�Kf��\\z�\�ܞ',717.84,3,_binary '�ݻ\�\�Lf�8\�<\Z2\�',_binary 'K_qREzA��j~�m'),(_binary '>\�\�\�@چ�s�Փ',919.53,3,_binary '�ǻ4\�C��CO�\�T5y',_binary '\�r�\�>MԦ\n\Zf%\�\"'),(_binary 'J8kI~-G*�\�k���',565.58,1,_binary '�g�\�GA��v�(�?<',_binary '�\�Q&E�.Pw�Do'),(_binary 'MJ_K\�\�MR�\n\�L\�\"',831.71,2,_binary '�<\�\��L�UJ5�\�',_binary '/r0B��Hࢢ#\�h<I�'),(_binary 'R\\~�\�O���`�\��|',760.85,2,_binary '\�ߓ]\�WK��D]\� �]',_binary 'AF%O\�NR��d3�_'),(_binary 'Z=\�r9\�N��\�U�)\�',914.55,3,_binary '�W:VE��s5\��t',_binary '����bK��O�\�is\�}'),(_binary '\\+\�\\\�hHG��\�r�\�h;',209.27,1,_binary '(\�DfNv�\�+I[]\�',_binary '�Sp+\�m@��̉x��u'),(_binary ']z^��K\�/\�\�3�H',446.64,2,_binary 'l�\�G\�F��\��\�',_binary '\�Q:j�KՀf	|{N�\�'),(_binary 'a¾�F�B��X�}<z,#',389.38,2,_binary '\�ΪD-�J࿽=�.@',_binary '�󒆉Aa��1\�6j\�\�'),(_binary 'l��@\�LݍyHP��e',643.56,1,_binary '�K�\�)\�A��7�� o�r',_binary '-$�)[H\�\n�%\\W\�'),(_binary 'm��\�c\�HJ��E�.!\�}',843.27,2,_binary 'H-\�\�ćMͱ\0U7,\�\�',_binary '\�Q:j�KՀf	|{N�\�'),(_binary 'm��\�@\�Ω\\��#',494.53,3,_binary ':\��\�\�ZJ\�\�\�\�n��',_binary 'U�\�\�zKN(�P��\�`\�\�'),(_binary 'p\�A�)6Ey��{\�\�\�T:',929.17,1,_binary '<�ȏ�N���q�\n\�+\�',_binary '9!ӓ�\�H�\�W a\�\�\�'),(_binary 'w��dW@�J{\�\�)',919.53,1,_binary '�ǻ4\�C��CO�\�T5y',_binary '\�t�\Z%�D��G\�i碚�'),(_binary '���\�\0\�GV�\�\�Ƌ\�O\�',318.89,3,_binary '��`VM�\��-?�',_binary '�Sp+\�m@��̉x��u'),(_binary '����WlAx���Λ���',800.61,2,_binary '�F��J�ӷ\�?P`',_binary '?\�8kC\�\�\�\�I��\�'),(_binary '�\�\�^%MŞUCq',18.04,3,_binary '\�C4�ŲJ*���G�\"��',_binary '�Sp+\�m@��̉x��u'),(_binary '��C>\�\�Cr��\�N.\�l�',527.25,1,_binary '�v�x�zCƛ\�\�\�\�O�',_binary '\�r�\�>MԦ\n\Zf%\�\"'),(_binary '��a5�\�L��H\�Md\��',285.82,3,_binary '\�\�F��Ga�ܮה\�\�\�',_binary '�Ľ�S�M��`E{I-!P'),(_binary '����\�@���O�\�',396.38,3,_binary '8�=xXL}�\�j}d%]',_binary 's3\ZI��G��\�\�\0�\�'),(_binary '�\�\�~\'M߀I`\�D\�\r',342.98,3,_binary '\�\��>u@{�P���@�',_binary '\�ō0\�C��Ĥc3\�6'),(_binary '�\�\����Bg�qk(\�Ud',914.55,2,_binary '�W:VE��s5\��t',_binary 'fa\��\n\�I�!�=�&k�'),(_binary '�;\����E����k��\��',800.61,1,_binary '�F��J�ӷ\�?P`',_binary '\�t�\Z%�D��G\�i碚�'),(_binary '��\�/��@K�%w \�7x?',843.75,2,_binary 'Xl�\�\�qH3�.\�\�~��',_binary '\�ō0\�C��Ĥc3\�6'),(_binary '\�7��\�cBٞO�S\�Լ',490.63,3,_binary '�0��sI3�\�t�\�O4�',_binary '\�Q:j�KՀf	|{N�\�'),(_binary '\�c�AsL����Z!A(',843.75,1,_binary 'Xl�\�\�qH3�.\�\�~��',_binary '\�/\�y\�M�&R\�}hW�'),(_binary 'ͥ;^��B`��R\�\�\�#',409.32,3,_binary '���\�\�@}��F�\�d',_binary 'fa\��\n\�I�!�=�&k�'),(_binary '\�\0A�cAV��\�\�\�\�',494.53,1,_binary ':\��\�\�ZJ\�\�\�\�n��',_binary 'kJ�O�\�F��t\�h��1�'),(_binary '\�\��9�@歬C4̈́�\�',831.71,2,_binary '�<\�\��L�UJ5�\�',_binary '\�>��2M��Ԉ~��\�R'),(_binary 'ϗ�\�\�Gҗ\�\�%S�Q',201.98,2,_binary '�cW@L<�\�\�6�\�\�U',_binary 'b�͍e8J\n�u)�\�pok'),(_binary 'Ԏ\�M\��B=�\�\�?b{�J',318.89,3,_binary '��`VM�\��-?�',_binary '\�>��2M��Ԉ~��\�R'),(_binary '\����*E\��\�g.�',213.14,3,_binary 'ah�>\�`J���˲u?Q\�',_binary 'cj\�G6D��\�!6\"_S'),(_binary '\���B��#\�@�7',912.99,1,_binary '߂)\�ג@o�i�\���\�\�',_binary '\�r�\�>MԦ\n\Zf%\�\"'),(_binary 'ܙ����@I��#�Q�U',36.82,2,_binary '�\�9��A����hj�)|',_binary '�[v�\�E%�\�W�V'),(_binary '\�c\�\�,F��\�WC���',592.14,1,_binary '\�\�\�\�\�@�\�-R\��\�N',_binary '?\�8kC\�\�\�\�I��\�'),(_binary '\�G&\�j�N*�䚓',190.94,2,_binary '�+\�O��)=DN5#',_binary 'fa\��\n\�I�!�=�&k�'),(_binary '\��S�v�@��2�\�\�a4�',409.32,2,_binary '���\�\�@}��F�\�d',_binary 'f�\rH�DR�.��.�P�'),(_binary '\�i;r�Fh�&\�&��\�2',800.61,1,_binary '�F��J�ӷ\�?P`',_binary '`���\�O��s�\�E\�\�s'),(_binary '���a�E\��\�/�Ia�',657.13,2,_binary '��~\�J쐇>�z\��\�',_binary '\�\�R�&Iw�\�K�8('),(_binary '�\�\�$\Z8K���\���\'\�',190.94,2,_binary '�+\�O��)=DN5#',_binary '�\'y\�$E-��>W9\�>');
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
INSERT INTO `usuario` VALUES (_binary '\n\�\���@\r�\�/�q�0','carroll.schroeder@gmail.com','Teodora Cassin','USER','$2a$10$6IgDOaTq/QlPLFdewaB3C.mOW/OA6YlHE89GeE8QgSZzhGMfvuGRe'),(_binary '_\�\��AX�8�q$5\�\�','maria.boehm@hotmail.com','Maude Moen IV','USER','$2a$10$XZzRmYGXJpyW6v4SiOLyH.SupTir7EYS3ySUYel/6ceKpceJEqQ0S'),(_binary '\\`Io`\�G\��H\'\�7�','leonarda.cartwright@gmail.com','Mr. Lindsay Harris','USER','$2a$10$w3qgYgFCO/FZKjZ93vcFdO7T2XRYtTE1sm1TNomyv/BZUb5BTQOzG'),(_binary 'y�%T \�Iҍ��<K5\�','gregory.hintz@hotmail.com','Miss Marc Dicki','USER','$2a$10$J4D5mx8AlrHWgh7v3PJzwewzX1rJoFunZGmHFbwXScifFsrorN3Ry'),(_binary '��DW�G:�\�\�\�5\�Y','wilson.zulauf@hotmail.com','Mr. Lulu Carter','USER','$2a$10$P3jY1EoBcJO4ehEk8Sbx6eBfkqzqKdHnq7.9kr8D79MsQ5j5KWAum'),(_binary '��\�P�XD~�\����L\�','virgil.rosenbaum@gmail.com','Mrs. Isiah Abernathy','USER','$2a$10$nDHqOKFB/k2Oz63cJURGpOLrcNyfdpdx1Jy26TNocdEWf86jjFFPi'),(_binary '\�\nD�\�GO\�\�zα\�','hassan.kuvalis@hotmail.com','Pam Harber','USER','$2a$10$jsRGZUhio8BTGn0NZTickOCeoUCIwW9rAFL/Y8TfFANXXdTVryC1G'),(_binary '\�~\"�\�KMբ��k�T.8','jene.kirlin@yahoo.com','Candace Roob','USER','$2a$10$c21k5WmZfep4rfcSc6a6JuNQf/Z1QS68LcD.m8t9LF4RE5A6BsKJ6'),(_binary '\�!F�ݑO��4}\n�y\�','admin@email.com','Administrador','ADMIN','$2a$10$R9DcD2pI0xzRF2Ooh/nvhuuHDNtblr0HLk18HwEqZC1L973NxZMfC'),(_binary '\���NCEI�K�C�\�','bobbie.rath@yahoo.com','Savannah Satterfield','USER','$2a$10$14OJoH45mQj4uAzXWvu64Od0quu86BMUyHTrgW0S.RmebWKUSiwaq');
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
