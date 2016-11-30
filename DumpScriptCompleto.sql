CREATE DATABASE  IF NOT EXISTS `GAP` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `GAP`;
-- MySQL dump 10.13  Distrib 5.7.15, for Linux (i686)
--
-- Host: localhost    Database: GAP
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

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
-- Table structure for table `Acompanha`
--

DROP TABLE IF EXISTS `Acompanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Acompanha` (
  `Matricula_Professor` int(11) NOT NULL,
  `Matricula_Aluno` int(11) NOT NULL,
  `Altura` decimal(3,2) DEFAULT NULL,
  `Peso` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Matricula_Professor`,`Matricula_Aluno`),
  KEY `Matricula_Aluno` (`Matricula_Aluno`),
  CONSTRAINT `Acompanha_ibfk_1` FOREIGN KEY (`Matricula_Professor`) REFERENCES `Professor` (`Matricula_Professor`),
  CONSTRAINT `Acompanha_ibfk_2` FOREIGN KEY (`Matricula_Aluno`) REFERENCES `Aluno` (`Matricula_Aluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Acompanha`
--

LOCK TABLES `Acompanha` WRITE;
/*!40000 ALTER TABLE `Acompanha` DISABLE KEYS */;
INSERT INTO `Acompanha` VALUES (2,5,1.75,60.20),(2,8,1.65,76.20),(3,6,1.80,75.20),(3,9,1.77,74.20),(4,7,1.60,82.00),(4,10,1.30,45.50);
/*!40000 ALTER TABLE `Acompanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aluno`
--

DROP TABLE IF EXISTS `Aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aluno` (
  `Matricula_Aluno` int(11) NOT NULL,
  `Data_inicio` date DEFAULT NULL,
  PRIMARY KEY (`Matricula_Aluno`),
  CONSTRAINT `Aluno_ibfk_1` FOREIGN KEY (`Matricula_Aluno`) REFERENCES `Usuario` (`Matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aluno`
--

LOCK TABLES `Aluno` WRITE;
/*!40000 ALTER TABLE `Aluno` DISABLE KEYS */;
INSERT INTO `Aluno` VALUES (5,'2016-02-20'),(6,'2015-07-08'),(7,'2016-03-04'),(8,'2015-08-07'),(9,'2016-06-06'),(10,'2016-09-01');
/*!40000 ALTER TABLE `Aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contato`
--

DROP TABLE IF EXISTS `Contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contato` (
  `Cod_Contato` int(11) NOT NULL AUTO_INCREMENT,
  `Desc_Contato` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Cod_Contato`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contato`
--

LOCK TABLES `Contato` WRITE;
/*!40000 ALTER TABLE `Contato` DISABLE KEYS */;
INSERT INTO `Contato` VALUES (1,'Telefone'),(2,'Celular'),(3,'Facebook'),(4,'WhatsApp');
/*!40000 ALTER TABLE `Contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contato_Usuario`
--

DROP TABLE IF EXISTS `Contato_Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contato_Usuario` (
  `Cod_Contato` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo_Contato` int(11) DEFAULT NULL,
  `Matricula_Usuario` int(11) NOT NULL,
  `Contato_Usuario` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Cod_Contato`),
  KEY `Matricula_Usuario` (`Matricula_Usuario`),
  KEY `Tipo_Contato` (`Tipo_Contato`),
  CONSTRAINT `Contato_Usuario_ibfk_1` FOREIGN KEY (`Matricula_Usuario`) REFERENCES `Usuario` (`Matricula`),
  CONSTRAINT `Contato_Usuario_ibfk_2` FOREIGN KEY (`Tipo_Contato`) REFERENCES `Contato` (`Cod_Contato`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contato_Usuario`
--

LOCK TABLES `Contato_Usuario` WRITE;
/*!40000 ALTER TABLE `Contato_Usuario` DISABLE KEYS */;
INSERT INTO `Contato_Usuario` VALUES (1,1,1,'99999-1111'),(2,2,1,'3328-6666'),(3,2,2,'3328-3333'),(4,1,3,'99999-3333'),(5,2,4,'3328-4444'),(6,1,5,'99999-5555'),(7,2,6,'3328-6666'),(8,1,7,'99999-7777'),(9,2,8,'3328-8888'),(10,1,9,'99999-9999'),(11,2,10,'3328-0000');
/*!40000 ALTER TABLE `Contato_Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Endereco`
--

DROP TABLE IF EXISTS `Endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Endereco` (
  `Matricula_Usuario` int(11) NOT NULL,
  `CEP` int(11) DEFAULT NULL,
  `Estado` varchar(2) DEFAULT NULL,
  `Cidade` varchar(30) DEFAULT NULL,
  `Bairro` varchar(30) DEFAULT NULL,
  `Rua` varchar(30) DEFAULT NULL,
  `Numero` int(11) DEFAULT NULL,
  PRIMARY KEY (`Matricula_Usuario`),
  CONSTRAINT `Endereco_ibfk_1` FOREIGN KEY (`Matricula_Usuario`) REFERENCES `Usuario` (`Matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Endereco`
--

LOCK TABLES `Endereco` WRITE;
/*!40000 ALTER TABLE `Endereco` DISABLE KEYS */;
INSERT INTO `Endereco` VALUES (1,29162980,'ES','Serra','Laranjeiras','Rua Rio Grande do Norte',3),(2,29164981,'ES','Norte','Norte Da Muralha','R. Rio Grande do Norte',6),(3,29165756,'ES','Vitoria','Itararé','Av. Arlindo Sodre',25),(4,29162262,'ES','Serra','Jose de Anchieta','R. Rio Grande do Sul',334),(5,28174252,'ES','Vitoria','Maruipe','R. Martins Alvarino',95),(6,29164375,'SP','Barueri','Alphavile','R. Inventada Agora',6),(7,29162262,'RJ','RJ','Morro do Dende','Quebrada da Rapaziada',77),(8,29162262,'RJ','RJ','Cidade de Deus','Quebrada da Mulherada',78),(9,29162262,'SP','Liga das Lendas','Summoners Rift','R. Mid Lane',1),(10,29162000,'SP','California','Radiator Springs','Route 108',95);
/*!40000 ALTER TABLE `Endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gerente`
--

DROP TABLE IF EXISTS `Gerente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gerente` (
  `Matricula_Gerente` int(11) NOT NULL,
  `CNPJ` int(11) DEFAULT NULL,
  `Cod_Site` int(11) DEFAULT NULL,
  PRIMARY KEY (`Matricula_Gerente`),
  KEY `Cod_Site` (`Cod_Site`),
  CONSTRAINT `Gerente_ibfk_1` FOREIGN KEY (`Matricula_Gerente`) REFERENCES `Usuario` (`Matricula`),
  CONSTRAINT `Gerente_ibfk_2` FOREIGN KEY (`Cod_Site`) REFERENCES `Site_Academia` (`Cod_Site`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gerente`
--

LOCK TABLES `Gerente` WRITE;
/*!40000 ALTER TABLE `Gerente` DISABLE KEYS */;
INSERT INTO `Gerente` VALUES (1,6300,13);
/*!40000 ALTER TABLE `Gerente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pagamento_Aluno`
--

DROP TABLE IF EXISTS `Pagamento_Aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pagamento_Aluno` (
  `Cod_Pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo_Pagamento` int(11) DEFAULT NULL,
  `Valor_Pagamento` float DEFAULT NULL,
  `Matricula_Aluno` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cod_Pagamento`),
  KEY `Matricula_Aluno` (`Matricula_Aluno`),
  KEY `Tipo_Pagamento` (`Tipo_Pagamento`),
  CONSTRAINT `Pagamento_Aluno_ibfk_1` FOREIGN KEY (`Matricula_Aluno`) REFERENCES `Aluno` (`Matricula_Aluno`),
  CONSTRAINT `Pagamento_Aluno_ibfk_2` FOREIGN KEY (`Tipo_Pagamento`) REFERENCES `Tipo_Pagamento` (`Cod_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pagamento_Aluno`
--

LOCK TABLES `Pagamento_Aluno` WRITE;
/*!40000 ALTER TABLE `Pagamento_Aluno` DISABLE KEYS */;
INSERT INTO `Pagamento_Aluno` VALUES (1,1,65,5),(2,2,75,6),(3,3,80,7),(4,1,100,8),(5,2,75,9),(6,3,80,10);
/*!40000 ALTER TABLE `Pagamento_Aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Professor`
--

DROP TABLE IF EXISTS `Professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Professor` (
  `Matricula_Professor` int(11) NOT NULL,
  `Matricula_Gerente` int(11) DEFAULT NULL,
  `Turno` varchar(20) DEFAULT NULL,
  `Salario` float DEFAULT NULL,
  PRIMARY KEY (`Matricula_Professor`),
  KEY `Matricula_Gerente` (`Matricula_Gerente`),
  CONSTRAINT `Professor_ibfk_1` FOREIGN KEY (`Matricula_Professor`) REFERENCES `Usuario` (`Matricula`),
  CONSTRAINT `Professor_ibfk_2` FOREIGN KEY (`Matricula_Gerente`) REFERENCES `Gerente` (`Matricula_Gerente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professor`
--

LOCK TABLES `Professor` WRITE;
/*!40000 ALTER TABLE `Professor` DISABLE KEYS */;
INSERT INTO `Professor` VALUES (2,1,'Matutino',1200),(3,1,'Vespertino',1200),(4,1,'Noturno',1200);
/*!40000 ALTER TABLE `Professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Site_Academia`
--

DROP TABLE IF EXISTS `Site_Academia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Site_Academia` (
  `Cod_Site` int(11) NOT NULL,
  `Nome_Site` varchar(40) DEFAULT NULL,
  `Link_Site` varchar(50) DEFAULT NULL,
  `Logo_Site` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Cod_Site`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Site_Academia`
--

LOCK TABLES `Site_Academia` WRITE;
/*!40000 ALTER TABLE `Site_Academia` DISABLE KEYS */;
INSERT INTO `Site_Academia` VALUES (13,'Fabrica de Monstros','www.fabricademonstrosacademia.com.br','imageacademia.jpeg');
/*!40000 ALTER TABLE `Site_Academia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tipo_Pagamento`
--

DROP TABLE IF EXISTS `Tipo_Pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tipo_Pagamento` (
  `Cod_Tipo` int(11) NOT NULL AUTO_INCREMENT,
  `Desc_Pagamento` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Cod_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tipo_Pagamento`
--

LOCK TABLES `Tipo_Pagamento` WRITE;
/*!40000 ALTER TABLE `Tipo_Pagamento` DISABLE KEYS */;
INSERT INTO `Tipo_Pagamento` VALUES (1,'Cartão'),(2,'Dinheiro'),(3,'Cheque');
/*!40000 ALTER TABLE `Tipo_Pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `Matricula` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Completo` varchar(50) NOT NULL,
  `CPF` int(11) NOT NULL,
  `Sexo` enum('M','F') DEFAULT NULL,
  `Data_Nascimento` date DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Nome_Usuario` varchar(30) DEFAULT NULL,
  `Senha` varchar(20) NOT NULL,
  `Cod_Site` int(11) DEFAULT NULL,
  PRIMARY KEY (`Matricula`),
  KEY `Cod_Site` (`Cod_Site`),
  CONSTRAINT `Usuario_ibfk_1` FOREIGN KEY (`Cod_Site`) REFERENCES `Site_Academia` (`Cod_Site`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,'Arya Stark',1010,'F','1984-08-10','AryaS@gmail.com','AryaS','123',13),(2,'João das Neves',2020,'M','1954-08-20','JoaoN@gmail.com','JoaoN','321',13),(3,'Marcelo Fulano',3030,'M','1950-05-21','MarceloF@gmail.com','MarceloF','456',13),(4,'Cristiano Neymar',4040,'M','1990-06-30','CristianoN@hotmail.com','CristianoN','654',13),(5,'Cassiano Venenoso',5050,'M','1979-09-09','CassianoV@ig.com.br','CassianoV','789',13),(6,'Drauzio Galera',6060,'M','1964-08-08','DrauzioG@yahoo.com','DrauzioG','987',13),(7,'Ana Maria',7070,'F','1948-01-06','AnaM@hotmail.com','AnaM','369',13),(8,'Katarina da Silva',8080,'F','1994-08-19','KatarinaS@gmail.com','KatarinaS','963',13),(9,'Annie Tibbers',9090,'F','2000-01-01','AnnieT@riot.com','AnnieT','147',13),(10,'Marquinhos Catchau',1011,'M','1996-08-19','MarquinhosC@mcquen.com','MarquinhosC','258',13);
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-30  9:44:19
