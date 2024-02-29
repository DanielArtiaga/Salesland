CREATE DATABASE  IF NOT EXISTS `salesland` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `salesland`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 10.201.4.5    Database: salesland
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `aux_campana_disociar`
--

DROP TABLE IF EXISTS `aux_campana_disociar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aux_campana_disociar` (
  `campana` int(11) NOT NULL,
  `campo` varchar(50) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_campana_disociar`
--

LOCK TABLES `aux_campana_disociar` WRITE;
/*!40000 ALTER TABLE `aux_campana_disociar` DISABLE KEYS */;
/*!40000 ALTER TABLE `aux_campana_disociar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_campanas`
--

DROP TABLE IF EXISTS `aux_campanas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aux_campanas` (
  `IDENT` int(11) NOT NULL AUTO_INCREMENT,
  `servidor` varchar(50) NOT NULL,
  `bbdd_report` varchar(50) DEFAULT NULL,
  `IdCampana` int(11) NOT NULL,
  `sistema` varchar(50) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL,
  `spcarga_ws_salesland_leads` varchar(50) DEFAULT NULL,
  `admite_duplicado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`IDENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_campanas`
--

LOCK TABLES `aux_campanas` WRITE;
/*!40000 ALTER TABLE `aux_campanas` DISABLE KEYS */;
/*!40000 ALTER TABLE `aux_campanas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_disociar`
--

DROP TABLE IF EXISTS `aux_disociar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aux_disociar` (
  `campo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_disociar`
--

LOCK TABLES `aux_disociar` WRITE;
/*!40000 ALTER TABLE `aux_disociar` DISABLE KEYS */;
INSERT INTO `aux_disociar` VALUES ('Calao,calle de la prueba, 1,email@micorreo.es,1234'),('Calao,calle de la prueba, 1,email@micorreo.es,1234'),('Calao,calle de la prueba, 1,email@micorreo.es,1234'),('Calao,calle de la prueba, 1,email@micorreo.es,1234');
/*!40000 ALTER TABLE `aux_disociar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_proveedores`
--

DROP TABLE IF EXISTS `aux_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aux_proveedores` (
  `IDENT` int(11) NOT NULL AUTO_INCREMENT,
  `cod_proveedor` varchar(5) DEFAULT NULL,
  `proveedor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_proveedores`
--

LOCK TABLES `aux_proveedores` WRITE;
/*!40000 ALTER TABLE `aux_proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `aux_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_ws`
--

DROP TABLE IF EXISTS `log_ws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_ws` (
  `IDENT` int(11) NOT NULL AUTO_INCREMENT,
  `cuerpo` text,
  `error` text,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`IDENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_ws`
--

LOCK TABLES `log_ws` WRITE;
/*!40000 ALTER TABLE `log_ws` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_ws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_carga`
--

DROP TABLE IF EXISTS `logs_carga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs_carga` (
  `IDENT` int(11) NOT NULL AUTO_INCREMENT,
  `IdLead` varchar(50) DEFAULT NULL,
  `campana` int(11) DEFAULT NULL,
  `proveedor` varchar(50) DEFAULT NULL,
  `log_texto` varchar(4000) CHARACTER SET utf8 DEFAULT NULL,
  `comando` varchar(4000) CHARACTER SET utf8 DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`IDENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_carga`
--

LOCK TABLES `logs_carga` WRITE;
/*!40000 ALTER TABLE `logs_carga` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_carga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vws_leads_disociados`
--

DROP TABLE IF EXISTS `vws_leads_disociados`;
/*!50001 DROP VIEW IF EXISTS `vws_leads_disociados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vws_leads_disociados` AS SELECT 
 1 AS `IDENT_ORI`,
 1 AS `idTimeStamp`,
 1 AS `IdUnico`,
 1 AS `FECHA_ENTRADA`,
 1 AS `duplicado`,
 1 AS `cod_proveedor`,
 1 AS `id`,
 1 AS `campana`,
 1 AS `fecha_captacion`,
 1 AS `acepta1`,
 1 AS `acepta2`,
 1 AS `acepta3`,
 1 AS `num1`,
 1 AS `num2`,
 1 AS `num3`,
 1 AS `dual1`,
 1 AS `dual2`,
 1 AS `dual3`,
 1 AS `fecha`,
 1 AS `hora`,
 1 AS `comercial`,
 1 AS `centro`,
 1 AS `nombre`,
 1 AS `ape1`,
 1 AS `ape2`,
 1 AS `telefono`,
 1 AS `email`,
 1 AS `variable1`,
 1 AS `variable2`,
 1 AS `variable3`,
 1 AS `memo`,
 1 AS `foto1`,
 1 AS `foto2`,
 1 AS `codigo_postal`,
 1 AS `direccion`,
 1 AS `poblacion`,
 1 AS `provincia`,
 1 AS `nif`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ws_leads`
--

DROP TABLE IF EXISTS `ws_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_leads` (
  `IDENT` int(11) NOT NULL AUTO_INCREMENT,
  `idTimeStamp` varchar(50) DEFAULT NULL,
  `IdUnico` varchar(50) DEFAULT NULL,
  `FECHA_ENTRADA` datetime DEFAULT NULL,
  `duplicado` smallint(6) DEFAULT NULL,
  `cargado` smallint(6) DEFAULT NULL,
  `fecha_carga` datetime DEFAULT NULL,
  `cod_proveedor` varchar(5) DEFAULT NULL,
  `id` varchar(50) DEFAULT NULL,
  `campana` varchar(50) DEFAULT NULL,
  `fecha_captacion` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `ape1` varchar(50) DEFAULT NULL,
  `ape2` varchar(50) DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `telefonoMD5` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `acepta1` varchar(2) DEFAULT NULL,
  `acepta2` varchar(2) DEFAULT NULL,
  `acepta3` varchar(2) DEFAULT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `dual1` varchar(2) DEFAULT NULL,
  `dual2` varchar(2) DEFAULT NULL,
  `dual3` varchar(2) DEFAULT NULL,
  `variable1` varchar(50) DEFAULT NULL,
  `variable2` varchar(50) DEFAULT NULL,
  `variable3` varchar(50) DEFAULT NULL,
  `memo` text,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `foto1` varchar(500) DEFAULT NULL,
  `foto2` varchar(500) DEFAULT NULL,
  `comercial` varchar(50) DEFAULT NULL,
  `centro` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(5) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `poblacion` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `nif` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDENT`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_leads`
--

LOCK TABLES `ws_leads` WRITE;
/*!40000 ALTER TABLE `ws_leads` DISABLE KEYS */;
INSERT INTO `ws_leads` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,'INC','2','1','20210325 10:20','Alba','Calao','Gomez','600000003',NULL,'email@micorreo.es','SI','NO','NO',1,2,3,'SI','NO','SI','v1','v2','v3','','2021-03-24','00:00:00','ruta foto1','ruta foto2','44','8','28037','calle de la prueba, 1','MADRID','MADRID','12345678Z'),(2,NULL,NULL,NULL,NULL,NULL,NULL,'INC','2','1','20210325 10:20','Alba','Calao','Gomez','600000003',NULL,'email@micorreo.es','SI','','NO',1,2,3,'SI','NO','SI','v1','v2','v3','','2021-03-24','00:00:00','ruta foto1','ruta foto2','44','8','28037','calle de la prueba, 1','MADRID','MADRID','12345678Z'),(3,NULL,NULL,NULL,NULL,NULL,NULL,'INC','2','1','20210325 10:20','Alba','Calao','Gomez','600000003',NULL,'email@micorreo.es','SI','NO','NO',1,2,3,'SI','NO','SI','v1','v2','v3','','2021-03-24','00:00:00','ruta foto1','ruta foto2','44','8','28037','calle de la prueba, 1','MADRID','MADRID','12345678Z'),(4,NULL,NULL,NULL,NULL,NULL,NULL,'INC','2','1','20210325 10:20','Alba','Calao','Gomez','600000003',NULL,'email@micorreo.es','SI','NO','NO',1,2,3,'SI','NO','SI','v1','v2','v3','','2021-03-24','00:00:00','ruta foto1','ruta foto2','44','8','28037','calle de la prueba, 1','MADRID','MADRID','12345678Z'),(5,NULL,NULL,NULL,NULL,NULL,'2024-02-29 12:49:02','INC','2','1','20210325 10:20','Alba','Calao','Gomez','600000003',NULL,'email@micorreo.es','SI','NO','NO',1,2,3,'SI','NO','SI','v1','v2','v3','','2021-03-24','00:00:00','ruta foto1','ruta foto2','44','8','28037','calle de la prueba, 1','MADRID','MADRID','12345678Z'),(6,NULL,NULL,NULL,NULL,NULL,'2024-02-29 12:54:14','INC','2','1','20210325 10:20','Alba','Calao','Gomez','600000003',NULL,'email@micorreo.es','SI','NO','NO',1,2,3,'SI','NO','SI','v1','v2','v3','','2021-03-24','00:00:00','ruta foto1','ruta foto2','44','8','28037','calle de la prueba, 1','MADRID','MADRID','12345678Z'),(7,NULL,NULL,NULL,NULL,NULL,'2024-02-29 13:11:45','INC','2','1','20210325 10:20','Alba','Calao','Gomez','600000003',NULL,'email@micorreo.es','SI','NO','NO',1,2,3,'SI','NO','SI','v1','v2','v3','','2021-03-24','00:00:00','ruta foto1','ruta foto2','44','8','28037','calle de la prueba, 1','MADRID','MADRID','12345678Z'),(8,NULL,NULL,NULL,NULL,NULL,'2024-02-29 13:12:48','INC','2','1','20210325 10:20','Alba','Calao','Gomez','600000003',NULL,'email@micorreo.es','SI','NO','NO',1,2,3,'SI','NO','SI','v1','v2','v3','','2021-03-24','00:00:00','ruta foto1','ruta foto2','44','8','28037','calle de la prueba, 1','MADRID','MADRID','12345678Z'),(9,NULL,NULL,NULL,NULL,NULL,'2024-02-29 13:16:36','INC','2','1','20210325 10:20','Alba','Calao','Gomez','600000003',NULL,'email@micorreo.es','SI','NO','NO',1,2,3,'SI','NO','SI','v1','v2','v3','','2021-03-24','00:00:00','ruta foto1','ruta foto2','44','8','28037','calle de la prueba, 1','MADRID','MADRID','12345678Z');
/*!40000 ALTER TABLE `ws_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_leads_disociados`
--

DROP TABLE IF EXISTS `ws_leads_disociados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_leads_disociados` (
  `IDENT` int(11) NOT NULL AUTO_INCREMENT,
  `IDENT_ORI` int(11) DEFAULT NULL,
  `idTimeStamp` varchar(50) DEFAULT NULL,
  `IdUnico` varchar(50) DEFAULT NULL,
  `FECHA_ENTRADA` datetime DEFAULT NULL,
  `duplicado` smallint(6) DEFAULT NULL,
  `cod_proveedor` varchar(5) DEFAULT NULL,
  `id` varchar(50) DEFAULT NULL,
  `campana` varchar(50) DEFAULT NULL,
  `fecha_captacion` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `ape1` varchar(50) DEFAULT NULL,
  `ape2` varchar(50) DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `telefonoMD5` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `acepta1` varchar(2) DEFAULT NULL,
  `acepta2` varchar(2) DEFAULT NULL,
  `acepta3` varchar(2) DEFAULT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `dual1` varchar(2) DEFAULT NULL,
  `dual2` varchar(2) DEFAULT NULL,
  `dual3` varchar(2) DEFAULT NULL,
  `variable1` varchar(50) DEFAULT NULL,
  `variable2` varchar(50) DEFAULT NULL,
  `variable3` varchar(50) DEFAULT NULL,
  `memo` text,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `foto1` varchar(500) DEFAULT NULL,
  `foto2` varchar(500) DEFAULT NULL,
  `comercial` varchar(50) DEFAULT NULL,
  `centro` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(5) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `poblacion` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `nif` varchar(50) DEFAULT NULL,
  `cargado` smallint(6) DEFAULT NULL,
  `fecha_carga` datetime DEFAULT NULL,
  `fecha_disociado` datetime DEFAULT NULL,
  `nombre_enc` text,
  `ape1_enc` text,
  `ape2_enc` text,
  `telefono_enc` text,
  `email_enc` text,
  `variable1_enc` text,
  `variable2_enc` text,
  `variable3_enc` text,
  `memo_enc` text,
  `foto1_enc` text,
  `foto2_enc` text,
  `codigo_postal_enc` text,
  `direccion_enc` text,
  `poblacion_enc` text,
  `provincia_enc` text,
  `nif_enc` text,
  PRIMARY KEY (`IDENT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_leads_disociados`
--

LOCK TABLES `ws_leads_disociados` WRITE;
/*!40000 ALTER TABLE `ws_leads_disociados` DISABLE KEYS */;
INSERT INTO `ws_leads_disociados` VALUES (1,8,NULL,NULL,NULL,NULL,'INC',NULL,'1','20210325 10:20','Alba','Calao','Gomez','600000003',NULL,'email@micorreo.es','SI','NO','NO',1,2,3,'SI','NO','SI','v1','v2','v3','','2021-03-24','00:00:00','ruta foto1','ruta foto2','44','8','28037','calle de la prueba, 1','MADRID','MADRID','12345678Z',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,9,NULL,NULL,NULL,NULL,'INC',NULL,'1','20210325 10:20','Alba','Calao','Gomez','600000003',NULL,'email@micorreo.es','SI','NO','NO',1,2,3,'SI','NO','SI','v1','v2','v3','','2021-03-24','00:00:00','ruta foto1','ruta foto2','44','8','28037','calle de la prueba, 1','MADRID','MADRID','12345678Z',NULL,NULL,NULL,'®Ù\\µ.“îÞ€*X±œ','À~Ib¤¼K¡82Ò‹¶','öŸÌ6 Ìú7\"`tY©ó','š½í)~õ…!l1Y–','ÖV6<$úäªï)Ñ»;±s¹kéC­ú1¡[U=»',':ÆCïŽj.²»ÔVrºn','.µº“ÙéŽèÚ\r*…¥6','’Ÿæý„ÃHäNê‚qn','Š=(ÇK¼‰Åõ¥çGL','jyì[=z‚[ÄcJ;ÈÆz','@£cýëvR+w%\"Ú\0Gñs','\"JÃ9)ÉCBz¶|A•T','~÷4êÎj^nåÉ7mU\0iËL~¶0‚b¥­,U³>®','úœùÄsÎúË/ZÁùÑ’','úœùÄsÎúË/ZÁùÑ’','ÌCæüXißNéTvªUà');
/*!40000 ALTER TABLE `ws_leads_disociados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'salesland'
--

--
-- Dumping routines for database 'salesland'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_AltaLead` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devel`@`%` PROCEDURE `sp_AltaLead`(
    id VARCHAR(50),
    campana INT,
    cod_proveedor VARCHAR(5),
    fecha_captacion Varchar(50),	
    nombre VARCHAR(50),
    ape1 VARCHAR(50),
    ape2 VARCHAR(50),
    nif VARCHAR(50),
    telefono VARCHAR(9),
    email VARCHAR(150),
    direccion VARCHAR(50),
    codigo_postal VARCHAR(5),
    poblacion VARCHAR(50),
    provincia VARCHAR(50),
    acepta1 ENUM('SI', 'NO'),
    acepta2 ENUM('SI', 'NO'),
    acepta3 ENUM('SI', 'NO'),
    num1 INT,
    num2 INT,
    num3 INT,
    dual1 ENUM('SI', 'NO'),
    dual2 ENUM('SI', 'NO'),
    dual3 ENUM('SI', 'NO'),
    variable1 VARCHAR(50),
    variable2 VARCHAR(50),
    variable3 VARCHAR(50),
    memo TEXT,
    fecha DATE,
    hora TIME,
    foto1 VARCHAR(500),
    foto2 VARCHAR(500),
    comercial VARCHAR(50),
    centro varchar(50)
)
BEGIN
DECLARE id_insertado INT;
    INSERT INTO WS_LEADS (
        id, fecha_carga,campana, cod_proveedor, fecha_captacion, nombre, ape1, ape2, nif, telefono, email, direccion, codigo_postal,
        poblacion, provincia, acepta1, acepta2, acepta3, num1, num2, num3, dual1, dual2, dual3, variable1, variable2,
        variable3, memo, fecha, hora, foto1, foto2, comercial, centro
    ) VALUES (
        id,NOW(), campana, cod_proveedor, fecha_captacion, nombre, ape1, ape2, nif, telefono, email,
        direccion, codigo_postal, poblacion, provincia, acepta1, acepta2, acepta3, num1, num2,
        num3, dual1, dual2, dual3, variable1, variable2, variable3, memo, fecha, hora, foto1,
        foto2, comercial, centro);
        
		SET id_insertado = LAST_INSERT_ID();
        
	INSERT INTO AUX_DISOCIAR (campo) VALUES (concat(ape1,',',direccion,',',email,',',nif,',',nombre,',',telefono));
    
    CALL  sp_disociar ('clavedeencriptaciondel servidor',id_insertado);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_disociar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devel`@`%` PROCEDURE `sp_disociar`(
    parametro1 VARCHAR(200),
    id_lead INT)
BEGIN
    DECLARE v_campana INT;
    DECLARE v_cod_proveedor VARCHAR(5);
    DECLARE v_fecha_captacion VARCHAR(50);
    DECLARE v_nombre VARCHAR(50);
    DECLARE v_ape1 VARCHAR(50);
    DECLARE v_ape2 VARCHAR(50);
    DECLARE v_nif VARCHAR(50);
    DECLARE v_telefono VARCHAR(9);
    DECLARE v_email VARCHAR(150);
    DECLARE v_direccion VARCHAR(50);
    DECLARE v_codigo_postal VARCHAR(5);
    DECLARE v_poblacion VARCHAR(50);
    DECLARE v_provincia VARCHAR(50);
    DECLARE v_acepta1 ENUM('SI', 'NO');
    DECLARE v_acepta2 ENUM('SI', 'NO');
    DECLARE v_acepta3 ENUM('SI', 'NO');
    DECLARE v_num1 INT;
    DECLARE v_num2 INT;
    DECLARE v_num3 INT;
    DECLARE v_dual1 ENUM('SI', 'NO');
    DECLARE v_dual2 ENUM('SI', 'NO');
    DECLARE v_dual3 ENUM('SI', 'NO');
    DECLARE v_variable1 VARCHAR(50);
    DECLARE v_variable2 VARCHAR(50);
    DECLARE v_variable3 VARCHAR(50);
    DECLARE v_memo TEXT;
    DECLARE v_fecha DATE;
    DECLARE v_hora TIME;
    DECLARE v_foto1 VARCHAR(500);
    DECLARE v_foto2 VARCHAR(500);
    DECLARE v_comercial VARCHAR(50);
    DECLARE v_centro VARCHAR(50);

    -- Seleccionar los valores de WS_LEADS
    SELECT 
        campana, cod_proveedor, fecha_captacion, nombre, ape1, ape2, nif, telefono, email,
        direccion, codigo_postal, poblacion, provincia, acepta1, acepta2, acepta3, num1, num2,
        num3, dual1, dual2, dual3, variable1, variable2, variable3, memo, fecha, hora, foto1,
        foto2, comercial, centro
    INTO
        v_campana, v_cod_proveedor, v_fecha_captacion, v_nombre, v_ape1, v_ape2, v_nif, v_telefono, v_email,
        v_direccion, v_codigo_postal, v_poblacion, v_provincia, v_acepta1, v_acepta2, v_acepta3, v_num1, v_num2,
        v_num3, v_dual1, v_dual2, v_dual3, v_variable1, v_variable2, v_variable3, v_memo, v_fecha, v_hora, v_foto1,
        v_foto2, v_comercial, v_centro
    FROM 
        WS_LEADS
    WHERE 
        IDENT = id_lead;
    
    -- Insertar los valores en WS_LEADS_DISOCIADOS
    INSERT INTO WS_LEADS_DISOCIADOS (
        IDENT_ORI, campana, cod_proveedor, fecha_captacion, nombre, ape1, ape2, nif, telefono, email, direccion, codigo_postal,
        poblacion, provincia, acepta1, acepta2, acepta3, num1, num2, num3, dual1, dual2, dual3, variable1, variable2,
        variable3, memo, fecha, hora, foto1, foto2, comercial, centro,
        nombre_enc, ape1_enc, ape2_enc, telefono_enc, email_enc,
        variable1_enc, variable2_enc, variable3_enc, memo_enc,
        foto1_enc, foto2_enc, codigo_postal_enc, direccion_enc,
        poblacion_enc, provincia_enc, nif_enc
    ) VALUES (
        id_lead, v_campana, v_cod_proveedor, v_fecha_captacion, v_nombre, v_ape1, v_ape2, v_nif, v_telefono, v_email,
        v_direccion, v_codigo_postal, v_poblacion, v_provincia, v_acepta1, v_acepta2, v_acepta3, v_num1, v_num2,
        v_num3, v_dual1, v_dual2, v_dual3, v_variable1, v_variable2, v_variable3, v_memo, v_fecha, v_hora, v_foto1,
        v_foto2, v_comercial, v_centro,
        AES_ENCRYPT(v_nombre, 'your_encryption_key'), AES_ENCRYPT(v_ape1, 'your_encryption_key'),
        AES_ENCRYPT(v_ape2, 'your_encryption_key'), AES_ENCRYPT(v_telefono, 'your_encryption_key'),
        AES_ENCRYPT(v_email, 'your_encryption_key'), AES_ENCRYPT(v_variable1, 'your_encryption_key'),
        AES_ENCRYPT(v_variable2, 'your_encryption_key'), AES_ENCRYPT(v_variable3, 'your_encryption_key'),
        AES_ENCRYPT(v_memo, 'your_encryption_key'), AES_ENCRYPT(v_foto1, 'your_encryption_key'),
        AES_ENCRYPT(v_foto2, 'your_encryption_key'), AES_ENCRYPT(v_codigo_postal, 'your_encryption_key'),
        AES_ENCRYPT(v_direccion, 'your_encryption_key'), AES_ENCRYPT(v_poblacion, 'your_encryption_key'),
        AES_ENCRYPT(v_provincia, 'your_encryption_key'), AES_ENCRYPT(v_nif, 'your_encryption_key')
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vDisociados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`devel`@`%` PROCEDURE `sp_vDisociados`()
BEgin
 select  * from vWS_LEADS_DISOCIADOS;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vws_leads_disociados`
--

/*!50001 DROP VIEW IF EXISTS `vws_leads_disociados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`devel`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vws_leads_disociados` AS select `ws_leads_disociados`.`IDENT_ORI` AS `IDENT_ORI`,`ws_leads_disociados`.`idTimeStamp` AS `idTimeStamp`,`ws_leads_disociados`.`IdUnico` AS `IdUnico`,`ws_leads_disociados`.`FECHA_ENTRADA` AS `FECHA_ENTRADA`,`ws_leads_disociados`.`duplicado` AS `duplicado`,`ws_leads_disociados`.`cod_proveedor` AS `cod_proveedor`,`ws_leads_disociados`.`id` AS `id`,`ws_leads_disociados`.`campana` AS `campana`,`ws_leads_disociados`.`fecha_captacion` AS `fecha_captacion`,`ws_leads_disociados`.`acepta1` AS `acepta1`,`ws_leads_disociados`.`acepta2` AS `acepta2`,`ws_leads_disociados`.`acepta3` AS `acepta3`,`ws_leads_disociados`.`num1` AS `num1`,`ws_leads_disociados`.`num2` AS `num2`,`ws_leads_disociados`.`num3` AS `num3`,`ws_leads_disociados`.`dual1` AS `dual1`,`ws_leads_disociados`.`dual2` AS `dual2`,`ws_leads_disociados`.`dual3` AS `dual3`,`ws_leads_disociados`.`fecha` AS `fecha`,`ws_leads_disociados`.`hora` AS `hora`,`ws_leads_disociados`.`comercial` AS `comercial`,`ws_leads_disociados`.`centro` AS `centro`,convert(aes_decrypt(`ws_leads_disociados`.`nombre_enc`,'your_encryption_key') using utf8) AS `nombre`,convert(aes_decrypt(`ws_leads_disociados`.`ape1_enc`,'your_encryption_key') using utf8) AS `ape1`,convert(aes_decrypt(`ws_leads_disociados`.`ape2_enc`,'your_encryption_key') using utf8) AS `ape2`,convert(aes_decrypt(`ws_leads_disociados`.`telefono_enc`,'your_encryption_key') using utf8) AS `telefono`,convert(aes_decrypt(`ws_leads_disociados`.`email_enc`,'your_encryption_key') using utf8) AS `email`,convert(aes_decrypt(`ws_leads_disociados`.`variable1_enc`,'your_encryption_key') using utf8) AS `variable1`,convert(aes_decrypt(`ws_leads_disociados`.`variable2_enc`,'your_encryption_key') using utf8) AS `variable2`,convert(aes_decrypt(`ws_leads_disociados`.`variable3_enc`,'your_encryption_key') using utf8) AS `variable3`,convert(aes_decrypt(`ws_leads_disociados`.`memo_enc`,'your_encryption_key') using utf8) AS `memo`,convert(aes_decrypt(`ws_leads_disociados`.`foto1_enc`,'your_encryption_key') using utf8) AS `foto1`,convert(aes_decrypt(`ws_leads_disociados`.`foto2_enc`,'your_encryption_key') using utf8) AS `foto2`,convert(aes_decrypt(`ws_leads_disociados`.`codigo_postal_enc`,'your_encryption_key') using utf8) AS `codigo_postal`,convert(aes_decrypt(`ws_leads_disociados`.`direccion_enc`,'your_encryption_key') using utf8) AS `direccion`,convert(aes_decrypt(`ws_leads_disociados`.`poblacion_enc`,'your_encryption_key') using utf8) AS `poblacion`,convert(aes_decrypt(`ws_leads_disociados`.`provincia_enc`,'your_encryption_key') using utf8) AS `provincia`,convert(aes_decrypt(`ws_leads_disociados`.`nif_enc`,'your_encryption_key') using utf8) AS `nif` from `ws_leads_disociados` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-29 13:37:41
