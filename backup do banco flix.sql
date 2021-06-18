-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: flix
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artista` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `nome_artistico` varchar(255) DEFAULT NULL,
  `data_nascimento` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (184,'Paul Rudd','Paul Rudd','1969-04-06 00:00:00.000000'),(183,'Dylan OBrien','Dylan OBrien','1991-08-26 00:00:00.000000'),(182,'Dwayne Johnson','Dwayne Johnson','1972-05-02 00:00:00.000000'),(180,'Ryan Reynolds','Ryan Reynolds','1976-10-23 00:00:00.000000'),(181,'Millie Bobby Brown','Millie Bobby Brown','2004-02-19 00:00:00.000000'),(179,'Bruce Willis','Bruce Willis','1955-03-19 00:00:00.000000'),(178,'Owen Wilson','Owen Wilson','1968-11-18 00:00:00.000000'),(177,'Anastasia Akatova','Anastasia Akatova','1992-02-16 00:00:00.000000'),(175,'Baek Da-eun','Baek Da-eun','1988-03-28 00:00:00.000000'),(176,'Tom Hardy','Tom Hardy','1977-09-15 00:00:00.000000'),(174,'Jennifer Aniston','Jennifer Aniston','1969-02-11 00:00:00.000000'),(172,'Vin Diesel','Vin Diesel','1967-07-18 00:00:00.000000'),(173,'Tom Hiddleston','Tom Hiddleston','1981-02-09 00:00:00.000000'),(171,'Alexandra Daddario','Alexandra Daddario','1986-03-16 00:00:00.000000'),(170,'Stefania LaVie Owen','Stefania LaVie Owen','1997-12-15 00:00:00.000000'),(169,'Mark Wahlberg','Mark Wahlberg','1971-06-05 00:00:00.000000'),(168,'Jason Statham','Jason Statham','1967-07-26 00:00:00.000000'),(167,'Scarlett Johansson','Scarlett Johansson','1984-11-22 00:00:00.000000'),(166,'Emma Stone','Emma Stone','1988-11-06 00:00:00.000000');
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add artista',7,'add_artista'),(26,'Can change artista',7,'change_artista'),(27,'Can delete artista',7,'delete_artista'),(28,'Can view artista',7,'view_artista'),(29,'Can add avaliacao',8,'add_avaliacao'),(30,'Can change avaliacao',8,'change_avaliacao'),(31,'Can delete avaliacao',8,'delete_avaliacao'),(32,'Can view avaliacao',8,'view_avaliacao'),(33,'Can add categoria',9,'add_categoria'),(34,'Can change categoria',9,'change_categoria'),(35,'Can delete categoria',9,'delete_categoria'),(36,'Can view categoria',9,'view_categoria'),(37,'Can add filme',10,'add_filme'),(38,'Can change filme',10,'change_filme'),(39,'Can delete filme',10,'delete_filme'),(40,'Can view filme',10,'view_filme');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avaliacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nota` double NOT NULL,
  `descricao` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `filme_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `avaliacao_filme_id_id_461ceb2b` (`filme_id_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10771 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (10752,'Guerra','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(53,'Thriller','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(10770,'Cinema TV','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(878,'Ficção científica','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(10749,'Romance','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(9648,'Mistério','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(10402,'Música','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(27,'Terror','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(36,'História','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(14,'Fantasia','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(10751,'Família','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(18,'Drama','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(99,'Documentário','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(80,'Crime','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(35,'Comédia','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(16,'Animação','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(12,'Aventura','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(28,'Ação','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(37,'Faroeste','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'artista','artista'),(8,'avaliacao','avaliacao'),(9,'categoria','categoria'),(10,'filme','filme');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-06-04 01:03:24.506505'),(2,'auth','0001_initial','2021-06-04 01:04:10.174346'),(3,'admin','0001_initial','2021-06-04 01:04:34.307438'),(4,'admin','0002_logentry_remove_auto_add','2021-06-04 01:04:34.531822'),(5,'admin','0003_logentry_add_action_flag_choices','2021-06-04 01:04:34.554723'),(6,'artista','0001_initial','2021-06-04 01:04:36.085045'),(7,'contenttypes','0002_remove_content_type_name','2021-06-04 01:04:43.039014'),(8,'auth','0002_alter_permission_name_max_length','2021-06-04 01:04:45.232564'),(9,'auth','0003_alter_user_email_max_length','2021-06-04 01:04:49.229533'),(10,'auth','0004_alter_user_username_opts','2021-06-04 01:04:49.252468'),(11,'auth','0005_alter_user_last_login_null','2021-06-04 01:04:51.226423'),(12,'auth','0006_require_contenttypes_0002','2021-06-04 01:04:51.380891'),(13,'auth','0007_alter_validators_add_error_messages','2021-06-04 01:04:51.404822'),(14,'auth','0008_alter_user_username_max_length','2021-06-04 01:04:52.863582'),(15,'auth','0009_alter_user_last_name_max_length','2021-06-04 01:04:56.001925'),(16,'auth','0010_alter_group_name_max_length','2021-06-04 01:04:59.212732'),(17,'auth','0011_update_proxy_permissions','2021-06-04 01:04:59.225696'),(18,'auth','0012_alter_user_first_name_max_length','2021-06-04 01:05:01.213237'),(19,'avaliacao','0001_initial','2021-06-04 01:05:01.569526'),(20,'categoria','0001_initial','2021-06-04 01:05:01.928582'),(21,'filme','0001_initial','2021-06-04 01:05:26.446258'),(22,'sessions','0001_initial','2021-06-04 01:05:28.505116'),(23,'filme','0002_remove_filme_avaliacao','2021-06-13 18:28:46.539940'),(24,'avaliacao','0002_avaliacao_filme_id','2021-06-13 18:36:37.384622'),(25,'filme','0003_alter_filme_lancamento','2021-06-14 03:29:30.965757');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filme` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `sinopse` longtext NOT NULL,
  `lancamento` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (13,'Espiral: O Legado de Jogos Mortais','Sob o comando do veterano da polícia Marcus, o detetive Ezekiel  Zeke  Banks se une ao seu parceiro novato Willem para desvendar uma série de assassinatos terríveis que estão acontecendo na cidade. Durante as investigações, Zeke acaba se envolvendo no mórbido jogo do assassino.','2021-05-12','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(14,'Army of the Dead: Invasão em Las Vegas','Após um surto de zumbis em Las Vegas, nos Estados Unidos, um grupo de mercenários faz uma aposta final, aventurando-se na zona de quarentena para tentar realizar o maior assalto de todos os tempos.','2021-05-14','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(12,'Endangered Species','ENDANGERED SPECIES é uma aventura de sobrevivência intensa e cheia de ação sobre uma rica família americana que viaja para o vasto deserto africano do Quênia na esperança de férias de sonho cheias de emoção, união e uma chance de consertar as crescentes rachaduras em sua família. Mas quando o veículo do safári é atacado por um rinoceronte protegendo seu filhote, a família fica perdida a quilômetros de ajuda e as férias dos seus sonhos se transformam em uma luta terrível pela sobrevivência em um mundo onde eles estão na parte inferior da cadeia alimentar.','2021-05-27','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(11,'Rogai por Nós','Conheça Alice, uma jovem com deficiência auditiva que, após uma suposta visita da Virgem Maria, é inexplicavelmente capaz de ouvir, falar e curar os enfermos. À medida que a notícia se espalha e pessoas de perto e de longe se reúnem para testemunhar seus milagres, um jornalista decadente (Jeffrey Dean Morgan), que espera reviver sua carreira, visita a pequena cidade da Nova Inglaterra para investigar o fenômeno. Quando eventos terríveis começam a acontecer por toda parte, ele começa a questionar se esses fenômenos são obras da Virgem Maria ou algo muito mais sinistro.','2021-03-31','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(9,'Invocação do Mal 3: A Ordem do Demônio','Revela uma história arrepiante de terror, assassinato e um mal desconhecido que chocou até os investigadores paranormais da vida real, Ed e Lorraine Warren. Um dos casos mais intrigantes de seus arquivos, começa com uma luta pela alma de um garoto, depois os leva além de tudo o que já haviam visto antes, para marcar a primeira vez na história dos EUA um suspeito de assassinato alega possessão demoníaca como defesa.','2021-05-25','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(10,'Infiltrado','Harry, conhecido apenas como H, é um homem misterioso que trabalha para uma empresa de carros-fortes e movimenta grandes quantias de dinheiro pela cidade de Los Angeles. Quando, ao impedir um assalto, ele surpreende a todos com suas habilidades de combate, suas verdadeiras intenções começam a ser questionadas e um plano maior é revelado.','2021-04-22','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(8,'Cruella','Na Londres dos anos 70 em meio à revolução do punk rock, Estella, uma garota inteligente e criativa determinada a fazer um nome para si através de seus designs. Ela faz amizade com uma dupla de jovens ladrões e, juntos, constroem uma vida para si nas ruas de Londres. Um dia, o talento de Estella para a moda chama a atenção da Baronesa Von Hellman, uma lenda fashion que é devastadoramente chique e assustadora. Mas o relacionamento delas desencadeia um curso de eventos e revelações que farão com que Estella abrace seu lado rebelde e se torne a Cruella má, elegante e voltada para a vingança.','2021-05-26','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(15,'Mortal Kombat','Nova aventura baseada no videogame Mortal Kombat. Na história, um jovem que nunca treinou artes marciais acaba envolvido em um gigantesco torneio de luta envolvendo guerreiros da Terra e lutadores e outras dimensões.','2021-04-07','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(16,'Godzilla vs. Kong','Em uma época em que os monstros andam na Terra, a luta da humanidade por seu futuro coloca Godzilla e Kong em rota de colisão que verá as duas forças mais poderosas da natureza no planeta se confrontarem em uma batalha espetacular para as idades. Enquanto Monarch embarca em uma missão perigosa em terreno desconhecido e descobre pistas sobre as origens dos Titãs, uma conspiração humana ameaça tirar as criaturas, boas e más, da face da terra para sempre.','2021-03-24','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(17,'Um Lugar Silencioso - Parte II','Logo após os acontecimentos mortais, até mesmo dentro de casa, a família Abbott precisa agora encarar o terror mundo afora, continuando a lutar para sobreviver em silêncio. Obrigados a se aventurar pelo desconhecido, eles rapidamente percebem que as criaturas que caçam pelo som não são as únicas ameaças que os observam pelo caminho de areia.','2021-05-21','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(18,'Sem Remorso','Um agente da CIA busca vingança depois de sua namorada ter sido morta por um traficante de Baltimore.','2021-04-29','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(19,'Aqueles Que Me Desejam a Morte','Hannah, uma bombeira ainda abalada pela perda de três vidas que não conseguiu salvar de um incêndio, se depara com um menino de 12 anos traumatizado, perseguido por assasinos e sem ninguém a quem recorrer contra um incêndio florestal no deserto de Montana.','2021-05-05','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(20,'The Virtuoso','Um estranho solitário, seguro, com nervos de aço, deve rastrear e matar um Hitman desonesto para saldar uma dívida pendente. Mas a única informação que ele recebeu é a hora e o local onde encontrar sua presa - 17h em um restaurante rústico na cidade agonizante. Sem nome, sem descrição, nada. Quando o assassino chega, existem vários alvos possíveis, incluindo o xerife do condado. Colocando sua vida em perigo, o assassino embarca em uma caça ao homem para encontrar o Hitman e cumprir sua missão. Mas o perigo aumenta quando os encontros eróticos com uma mulher local ameaçam atrapalhar sua tarefa.','2021-04-30','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(21,'Anônimo','Quando dois ladrões invadem sua casa no subúrbio uma noite, Hutch se recusa a defender a si mesmo ou a sua família, na esperança de evitar violência grave. Seu filho adolescente, Blake, está desapontado com ele e sua esposa, Becca, parece se afastar ainda mais.  Em consequência, o incidente acerta a raiva latente de Hutch, desencadeando instintos adormecidos e impulsionando-o em um caminho brutal que revelará segredos obscuros e habilidades letais para salvar sua família.','2021-03-26','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(22,'Eu Sou Todas as Meninas','Uma detetive implacável se une a uma assassina que ataca os integrantes de uma quadrilha de tráfico de crianças.','2021-05-14','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(23,'Raya e o Último Dragão','O reino encantado Kumandra é dividido em cinco regiões e sua população venerava os dragões mágicos que eram presentes no reino, porém quando uma força maligna ameaçou a Terra, os dragões se sacrificaram para salvar a humanidade. Agora, 500 anos depois, o mesmo mal voltou e cabe a uma guerreira solitária, Raya, rastrear o lendário último dragão para restaurar a terra fraturada e seu povo dividido.','2021-03-03','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(24,'Liga da Justiça de Zack Snyder','Determinado a garantir que o sacrifício final do Superman não foi em vão, Bruce Wayne alinha forças com Diana Prince com planos de recrutar uma equipe de metahumanos para proteger o mundo de uma ameaça de proporções catastróficas que se aproxima.','2021-03-18','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(25,'Ferry','Antes de construir um império de droga, Ferry Bouman regressa a casa numa missão de vingança em que a sua lealdade é posta à prova e um amor lhe muda a vida.','2021-05-14','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(26,'Miraculous World: Xangai, a Lenda de Ladydragon','Ladybug decide visitar seu tio em Xangai, mas quando chega a cidade acaba sendo roubada e os ladrões levam sua bolsa com o Tikki. Sem dinheiro e sozinha na cidade, a heroína aceita a ajuda de uma jovem inteligente chamada Fei. As duas então se juntam em uma grande aventura e descobrem e existência de uma nova joia poderosa.','2021-04-04','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(27,'Demon Slayer - Mugen Train: O Filme','Tanjiro Kamado, junto com Inosuke Hashibira, um garoto criado por javalis que usa uma cabeça de javali, e Zenitsu Agatsuma, um garoto assustado que revela seu verdadeiro poder quando dorme, embarca no Trem Infinito em uma nova missão com o Hashira de Fogo, Kyojuro Rengoku, para derrotar um demônio que tem atormentado o povo e matado os caçadores de oni que se opõem a ele!','2020-10-16','2021-06-01 00:00:00.000000','2021-06-01 00:00:00.000000'),(30,'Teste','teste','2012-01-01','2021-06-14 03:32:33.958093','2021-06-14 03:33:31.054581');
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme_artista`
--

DROP TABLE IF EXISTS `filme_artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filme_artista` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `filme_id` bigint NOT NULL,
  `artista_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filme_artista_filme_id_artista_id_59156ee4_uniq` (`filme_id`,`artista_id`),
  KEY `filme_artista_filme_id_21edbde7` (`filme_id`),
  KEY `filme_artista_artista_id_4b268404` (`artista_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme_artista`
--

LOCK TABLES `filme_artista` WRITE;
/*!40000 ALTER TABLE `filme_artista` DISABLE KEYS */;
INSERT INTO `filme_artista` VALUES (5,16,181),(10,30,182),(11,30,183),(12,30,166),(13,30,167),(14,30,168),(15,30,169),(16,30,170),(17,30,171),(18,30,172),(19,30,173),(20,30,174),(21,30,175),(22,30,176),(23,30,177),(24,30,178),(25,30,179),(26,30,180),(27,30,181),(28,30,184);
/*!40000 ALTER TABLE `filme_artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme_categoria`
--

DROP TABLE IF EXISTS `filme_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filme_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `filme_id` bigint NOT NULL,
  `categoria_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filme_categoria_filme_id_categoria_id_f55ba4f2_uniq` (`filme_id`,`categoria_id`),
  KEY `filme_categoria_filme_id_986c4b6e` (`filme_id`),
  KEY `filme_categoria_categoria_id_a5335a3c` (`categoria_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme_categoria`
--

LOCK TABLES `filme_categoria` WRITE;
/*!40000 ALTER TABLE `filme_categoria` DISABLE KEYS */;
INSERT INTO `filme_categoria` VALUES (22,12,28),(21,12,53),(20,11,27),(19,10,28),(18,10,80),(17,9,53),(16,9,9648),(15,9,27),(14,8,80),(13,8,35),(23,13,27),(24,13,53),(25,13,9648),(26,14,28),(27,14,27),(28,14,53),(29,14,80),(30,15,28),(31,15,14),(32,15,12),(33,16,28),(34,16,878),(35,16,12),(36,17,878),(37,17,53),(38,17,27),(39,18,28),(40,18,53),(41,18,10752),(42,19,53),(43,19,18),(44,19,28),(45,19,9648),(46,20,53),(47,20,28),(48,20,80),(49,21,80),(50,21,28),(51,21,53),(52,21,35),(53,22,80),(54,22,18),(55,22,9648),(56,22,53),(57,23,16),(58,23,12),(59,23,14),(60,23,10751),(61,23,28),(62,24,28),(63,24,12),(64,24,14),(65,24,878),(66,25,28),(67,25,80),(68,25,18),(69,26,16),(70,26,35),(71,26,10751),(72,26,12),(73,27,14),(74,27,16),(75,27,28),(76,27,12),(77,27,18),(80,30,53);
/*!40000 ALTER TABLE `filme_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'flix'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-18 20:11:29
