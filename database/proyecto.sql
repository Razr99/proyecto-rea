-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	8.4.5

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
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_direccion` int NOT NULL,
  `nombre_area` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_direcciones_areas_idx` (`id_direccion`),
  CONSTRAINT `FK_direcciones_areas` FOREIGN KEY (`id_direccion`) REFERENCES `direcciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,1,'Dirección General'),(2,2,'Dirección Administrativa'),(3,3,'Dirección de Infraestructura'),(4,4,'Dirección Jurídica'),(5,5,'Dirección de Operaciones'),(6,2,'Comunicación'),(7,2,'Contabilidad');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_direccion` varchar(100) NOT NULL,
  `nombre_director` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_direccion_UNIQUE` (`nombre_direccion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,'Dirección General','Ing. Felipe Gerado Flores Escamilla'),(2,'Dirección Administrativa','Lic. Sahira Jackeline Domínguez Lugo'),(3,'Dirección de Infraestructura','Ing. Jorge de Santiago Herrera'),(4,'Dirección Jurídica','Lic. Renaldo García Barreda'),(5,'Dirección de Operaciones','Ing. Edgar Alejandro Robles Reyes');
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_puesto_area` int NOT NULL,
  `id_plaza` int NOT NULL,
  `id_via` int NOT NULL,
  `lugar_trabajo` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `numero_empleado` varchar(10) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `extension` varchar(7) DEFAULT NULL,
  `celular` varchar(12) DEFAULT NULL,
  `estatus` tinyint NOT NULL,
  `fecha_alta` datetime DEFAULT NULL,
  `fecha_baja` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_via_personal_idx` (`id_via`),
  KEY `FK_puesto_area_personal_idx` (`id_puesto_area`),
  KEY `FK_plazas_personal_idx` (`id_plaza`),
  CONSTRAINT `FK_plazas_personal` FOREIGN KEY (`id_plaza`) REFERENCES `plazas` (`id`),
  CONSTRAINT `FK_puesto_area_personal` FOREIGN KEY (`id_puesto_area`) REFERENCES `puesto_area` (`id`),
  CONSTRAINT `FK_via_personal` FOREIGN KEY (`id_via`) REFERENCES `via` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,1,1,1,'Dirección General','Felipe Gerardo','Flores Escamilla','9568','felipe.flores@redestatal.com.mx','8131473401','57001',NULL,1,'2026-06-11 11:07:48',NULL),(2,2,1,1,'Dirección Administrativa','Sahira Jackeline','Domínguez Lugo','9605','jackeline.dominguez@redestatal.com.mx','8131473403','57003',NULL,1,'2026-06-11 11:12:41',NULL),(3,3,1,1,'Dirección Infraestructura','Jorge','de Santiago Herrera','9571','jorge.desantiago@redestatal.com.mx','8131473405','57005',NULL,1,'2026-06-11 11:18:24',NULL),(4,4,1,1,'Dirección Jurídica','Renaldo','García Barreda','9156','renaldo.garcia@redestatal.com.mx','8131473433','57006',NULL,1,'2026-06-11 11:20:04',NULL),(5,5,1,1,'Dirección de Operaciones','Edgar Alejandro','Robles Reyes','9154','alejandro.robles@redestatal.com.mx','8131473443','57004',NULL,1,'2026-06-11 11:21:24',NULL),(6,6,1,1,'Dirección General','Paola','Alcalá Carvajal','NULL','paola.alcala@redestatal.com.mx','8131473402','57002',NULL,1,'2026-01-19 16:59:48',NULL),(7,7,1,2,'Dirección General','Nikita Estefanía','Solís Meester','1198','nikita.solis@redestatal.com.mx','8131473411','57011',NULL,1,'2026-06-11 11:21:24',NULL),(8,8,1,2,'Coordinación de Proyectos de Operaciones','Leslye Guadalupe','Mercado Ovalle','1105','leslye.mercado@redestatal.com.mx',NULL,NULL,NULL,1,'2026-06-11 11:21:24',NULL),(9,9,1,2,'Dirección Administrativa','Melissa Anahí','Soto Jiménez','1104',' melissa.soto@redestatal.com.mx','8131473436','57036',NULL,1,'2026-06-11 11:21:24',NULL),(10,10,1,3,'Dirección Infraestructura','Evelia Fernanda','Perzabal Alvarado','5023','fernanda.perzabal@redestatal.com.mx','8131473450','57050',NULL,1,'2026-06-11 11:21:24',NULL);
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plazas`
--

DROP TABLE IF EXISTS `plazas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plazas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_plaza` varchar(100) DEFAULT NULL,
  `direccion_fisica` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plazas`
--

LOCK TABLES `plazas` WRITE;
/*!40000 ALTER TABLE `plazas` DISABLE KEYS */;
INSERT INTO `plazas` VALUES (1,'Oficina Central','Francisco Zarco 1001, Centro, 64000 Monterrey, N.L.'),(2,'Plaza de Cobro Apodaca','25°47\'13.9\"N 100°10\'07 6, Av. Ruiz Cortines 3140, Monterrey, N.L.'),(3,'Plaza de Cobro Cadereyta','Ejido Cadereyta, 67480 Cadereyta Jiménez, N.L.'),(4,'Plaza de Cobro Guadalupe','Palma Datilera 522, Las Palmas, 67133 Guadalupe, N.L.'),(5,'Plaza de Cobro Juárez','JWCH+XG, 67262 Ismael Flores, N.L.'),(6,'Plaza de Cobro Lincoln','NL 100, 66023 Cucharas, N.L.'),(7,'Bodega de Infraestructura Apodaca','25°47\'13.9\"N 100°10\'07 6, Av. Ruiz Cortines 3140, Monterrey, N.L.'),(8,'Bodega de Infraestructura Guadalupe','Palma Datilera 522, Las Palmas, 67133 Guadalupe, N.L.'),(9,'Bodega de Infraestructura Juárez','JWCH+XG, 67262 Ismael Flores, N.L.'),(10,'Bodega de Infraestructura Lincoln','NL 100, 66023 Cucharas, N.L.');
/*!40000 ALTER TABLE `plazas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puesto_area`
--

DROP TABLE IF EXISTS `puesto_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puesto_area` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_puesto` int NOT NULL,
  `id_area` int NOT NULL,
  `id_direccion` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_direcciones_puesto_area_idx` (`id_direccion`),
  KEY `FK_areas_puesto_area_idx` (`id_area`),
  KEY `FK_puestos_area_idx` (`id_puesto`),
  CONSTRAINT `FK_areas_puesto_area` FOREIGN KEY (`id_area`) REFERENCES `areas` (`id`),
  CONSTRAINT `FK_direcciones_puesto_area` FOREIGN KEY (`id_direccion`) REFERENCES `direcciones` (`id`),
  CONSTRAINT `FK_puestos_area` FOREIGN KEY (`id_puesto`) REFERENCES `puestos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto_area`
--

LOCK TABLES `puesto_area` WRITE;
/*!40000 ALTER TABLE `puesto_area` DISABLE KEYS */;
INSERT INTO `puesto_area` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,1,1),(7,7,6,2),(8,6,5,5),(9,8,7,2),(10,6,3,3);
/*!40000 ALTER TABLE `puesto_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puestos`
--

DROP TABLE IF EXISTS `puestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puestos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_puesto` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puestos`
--

LOCK TABLES `puestos` WRITE;
/*!40000 ALTER TABLE `puestos` DISABLE KEYS */;
INSERT INTO `puestos` VALUES (1,'Director General'),(2,'Directora Administrativa'),(3,'Director de Infraestructura'),(4,'Director Jurídico'),(5,'Director de Operaciones'),(6,'Asistente Administrativo'),(7,'Analista de Comunicación'),(8,'Jefa de Proyectos Administrativos');
/*!40000 ALTER TABLE `puestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(50) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador','Control Total'),(2,'Técnico','Gestión de Tickets, consulta de inventarios, registro de mantenimientos');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_personal` int DEFAULT NULL,
  `id_rol` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(100) NOT NULL,
  `activo` tinyint NOT NULL,
  `fecha_alta` datetime DEFAULT NULL,
  `ultimo_acceso` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_personal_usuarios_idx` (`id_personal`),
  KEY `FK_roles_usuarios_idx` (`id_rol`),
  CONSTRAINT `FK_personal_usuarios` FOREIGN KEY (`id_personal`) REFERENCES `personal` (`id`),
  CONSTRAINT `FK_roles_usuarios` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,NULL,1,'admin','$2y$10$vjJTDbXc8iStPKBb13Pa8OgG6jxmzbwOWUkBwHkw5xeWSurWFINf6',1,'2026-06-12 09:03:11','2026-06-25 13:55:27');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `via`
--

DROP TABLE IF EXISTS `via`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `via` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_via` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `via`
--

LOCK TABLES `via` WRITE;
/*!40000 ALTER TABLE `via` DISABLE KEYS */;
INSERT INTO `via` VALUES (1,'PAMM'),(2,'AMC'),(3,'PAMM III');
/*!40000 ALTER TABLE `via` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-26 17:04:31
