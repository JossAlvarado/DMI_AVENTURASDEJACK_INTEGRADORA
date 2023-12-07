-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: aventurasdejack
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Current Database: `aventurasdejack`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `aventurasdejack` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `aventurasdejack`;

--
-- Table structure for table `jugador_partida`
--

DROP TABLE IF EXISTS `jugador_partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador_partida` (
  `ID_JUGADOR` int NOT NULL,
  `ID_PARTIDA` int NOT NULL,
  `PUNTUACION` int DEFAULT NULL,
  PRIMARY KEY (`ID_JUGADOR`,`ID_PARTIDA`),
  KEY `ID_PARTIDA` (`ID_PARTIDA`),
  CONSTRAINT `jugador_partida_ibfk_1` FOREIGN KEY (`ID_JUGADOR`) REFERENCES `jugadores` (`ID_JUGADOR`),
  CONSTRAINT `jugador_partida_ibfk_2` FOREIGN KEY (`ID_PARTIDA`) REFERENCES `partidas` (`ID_PARTIDA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador_partida`
--

LOCK TABLES `jugador_partida` WRITE;
/*!40000 ALTER TABLE `jugador_partida` DISABLE KEYS */;
/*!40000 ALTER TABLE `jugador_partida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador_puntos`
--

DROP TABLE IF EXISTS `jugador_puntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador_puntos` (
  `ID_JUGADOR` int NOT NULL,
  `ID_PUNTOS` int NOT NULL,
  PRIMARY KEY (`ID_JUGADOR`,`ID_PUNTOS`),
  KEY `ID_PUNTOS` (`ID_PUNTOS`),
  CONSTRAINT `jugador_puntos_ibfk_1` FOREIGN KEY (`ID_JUGADOR`) REFERENCES `jugadores` (`ID_JUGADOR`),
  CONSTRAINT `jugador_puntos_ibfk_2` FOREIGN KEY (`ID_PUNTOS`) REFERENCES `puntos` (`ID_PUNTOS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador_puntos`
--

LOCK TABLES `jugador_puntos` WRITE;
/*!40000 ALTER TABLE `jugador_puntos` DISABLE KEYS */;
/*!40000 ALTER TABLE `jugador_puntos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadores` (
  `ID_JUGADOR` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `CORREO` varchar(100) NOT NULL,
  `EDAD` int DEFAULT NULL,
  `CONTRASENA` varchar(100) NOT NULL,
  `ESTATUS` enum('Activo','Inactivo') NOT NULL,
  `FECHA_ACTIVO` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FECHA_MODIFICACION` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `NIVEL_ACTUAL` int DEFAULT NULL,
  `FECHA_REGISTRO` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FECHA_ULTIMA_CONEXION` timestamp NULL DEFAULT NULL,
  `POSICION_ACTUAL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_JUGADOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidas`
--

DROP TABLE IF EXISTS `partidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidas` (
  `ID_PARTIDA` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) NOT NULL,
  `DESCRIPCION` text,
  `NIVELES` int DEFAULT NULL,
  `ESTATUS` enum('Activo','Inactivo') NOT NULL,
  `FECHA_ACTIVO` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FECHA_MODIFICACION` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_PARTIDA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidas`
--

LOCK TABLES `partidas` WRITE;
/*!40000 ALTER TABLE `partidas` DISABLE KEYS */;
/*!40000 ALTER TABLE `partidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puntos`
--

DROP TABLE IF EXISTS `puntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puntos` (
  `ID_PUNTOS` int NOT NULL AUTO_INCREMENT,
  `NUMERO_ESTRELLAS` int DEFAULT NULL,
  `NIVELES` int DEFAULT NULL,
  `ESTATUS` enum('Activo','Inactivo') NOT NULL,
  `FECHA_ACTIVO` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FECHA_MODIFICACION` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_PUNTOS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntos`
--

LOCK TABLES `puntos` WRITE;
/*!40000 ALTER TABLE `puntos` DISABLE KEYS */;
/*!40000 ALTER TABLE `puntos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'aventurasdejack'
--

--
-- Dumping routines for database 'aventurasdejack'
--

--
-- Current Database: `db_videogame_200687`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_videogame_200687` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db_videogame_200687`;

--
-- Dumping events for database 'db_videogame_200687'
--

--
-- Dumping routines for database 'db_videogame_200687'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-08 12:03:54