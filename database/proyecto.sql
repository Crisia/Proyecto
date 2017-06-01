/*
Navicat MySQL Data Transfer

Source Server         : Localhost @ root
Source Server Version : 50635
Source Host           : localhost:3306
Source Database       : proyecto

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2017-05-26 18:25:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for canton
-- ----------------------------
DROP TABLE IF EXISTS `canton`;
CREATE TABLE `canton` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProvinciaId` int(10) unsigned NOT NULL,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Area` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Poblacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `canton_` (`ProvinciaId`),
  CONSTRAINT `canton_` FOREIGN KEY (`ProvinciaId`) REFERENCES `provincia` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=708 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for colector
-- ----------------------------
DROP TABLE IF EXISTS `colector`;
CREATE TABLE `colector` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Enabled` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for distrito
-- ----------------------------
DROP TABLE IF EXISTS `distrito`;
CREATE TABLE `distrito` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CantonId` int(10) unsigned NOT NULL,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `distrito_CantonId` (`CantonId`),
  CONSTRAINT `distrito_CantonId` FOREIGN KEY (`CantonId`) REFERENCES `canton` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=70607 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for especie
-- ----------------------------
DROP TABLE IF EXISTS `especie`;
CREATE TABLE `especie` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for especieXgenero
-- ----------------------------
DROP TABLE IF EXISTS `especieXgenero`;
CREATE TABLE `especieXgenero` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdEspecie` int(10) unsigned NOT NULL,
  `IdFamiliaXgenero` int(10) unsigned NOT NULL,
  `Autoria` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Sinonimias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_especieXgenero_especie1_idx` (`IdEspecie`),
  KEY `fk_especieXgenero_familiaXgenero1_idx` (`IdFamiliaXgenero`),
  CONSTRAINT `fk_especieXgenero_especie1` FOREIGN KEY (`IdEspecie`) REFERENCES `especie` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_especieXgenero_familiaXgenero1` FOREIGN KEY (`IdFamiliaXgenero`) REFERENCES `familiaXgenero` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for familia
-- ----------------------------
DROP TABLE IF EXISTS `familia`;
CREATE TABLE `familia` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Enabled` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for familiaXgenero
-- ----------------------------
DROP TABLE IF EXISTS `familiaXgenero`;
CREATE TABLE `familiaXgenero` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IdGenero` int(10) unsigned NOT NULL,
  `IdFamilia` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_familiaXgenero_genero1_idx` (`IdGenero`),
  KEY `fk_familiaXgenero_familia1_idx` (`IdFamilia`),
  CONSTRAINT `fk_familiaXgenero_familia1` FOREIGN KEY (`IdFamilia`) REFERENCES `familia` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_familiaXgenero_genero1` FOREIGN KEY (`IdGenero`) REFERENCES `genero` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for fertilidad
-- ----------------------------
DROP TABLE IF EXISTS `fertilidad`;
CREATE TABLE `fertilidad` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Enabled` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for fertilidadXmuestra
-- ----------------------------
DROP TABLE IF EXISTS `fertilidadXmuestra`;
CREATE TABLE `fertilidadXmuestra` (
  `IdMuestra` int(10) unsigned NOT NULL,
  `IdFertilidad` int(11) NOT NULL,
  KEY `fk_fertilidadXmuestra_muestra1_idx` (`IdMuestra`),
  KEY `fk_fertilidadXmuestra_Fertilidad1_idx` (`IdFertilidad`),
  CONSTRAINT `fk_fertilidadXmuestra_Fertilidad1` FOREIGN KEY (`IdFertilidad`) REFERENCES `fertilidad` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fertilidadXmuestra_muestra1` FOREIGN KEY (`IdMuestra`) REFERENCES `muestra` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ficha_historial
-- ----------------------------
DROP TABLE IF EXISTS `ficha_historial`;
CREATE TABLE `ficha_historial` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProvinciaId` int(11) NOT NULL,
  `CantonId` int(11) NOT NULL,
  `DistritoId` int(11) NOT NULL,
  `Localidad` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Latitud` int(11) NOT NULL,
  `Longitud` int(11) NOT NULL,
  `Altitud` int(11) NOT NULL,
  `DeterminadorId` int(11) NOT NULL,
  `FechaIngreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FechaColecto` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for genero
-- ----------------------------
DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for Imagen
-- ----------------------------
DROP TABLE IF EXISTS `Imagen`;
CREATE TABLE `Imagen` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdMuestra` int(10) unsigned NOT NULL,
  `Nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Imagen_muestra1_idx` (`IdMuestra`),
  CONSTRAINT `fk_Imagen_muestra1` FOREIGN KEY (`IdMuestra`) REFERENCES `muestra` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for muestra
-- ----------------------------
DROP TABLE IF EXISTS `muestra`;
CREATE TABLE `muestra` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IdDistrito` int(10) unsigned NOT NULL,
  `IdColector` int(11) NOT NULL,
  `IdValidador` int(11) NOT NULL,
  `IdEspecieXgenero` int(11) NOT NULL,
  `Localidad` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Latitud` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Longitud` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Altitud` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FechaIngreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FechaColecto` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nota` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Pendiente` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`),
  KEY `fk_muestra_distrito1_idx` (`IdDistrito`),
  KEY `fk_muestra_colector1_idx` (`IdColector`),
  KEY `fk_muestra_validador1_idx` (`IdValidador`),
  KEY `fk_muestra_especieXgenero1_idx` (`IdEspecieXgenero`),
  CONSTRAINT `fk_muestra_colector1` FOREIGN KEY (`IdColector`) REFERENCES `colector` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestra_distrito1` FOREIGN KEY (`IdDistrito`) REFERENCES `distrito` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestra_especieXgenero1` FOREIGN KEY (`IdEspecieXgenero`) REFERENCES `especieXgenero` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestra_validador1` FOREIGN KEY (`IdValidador`) REFERENCES `validador` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for provincia
-- ----------------------------
DROP TABLE IF EXISTS `provincia`;
CREATE TABLE `provincia` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Clave` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Rol` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for validador
-- ----------------------------
DROP TABLE IF EXISTS `validador`;
CREATE TABLE `validador` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Enabled` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Procedure structure for cantones
-- ----------------------------
DROP PROCEDURE IF EXISTS `cantones`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cantones`(IN `pId` int)
BEGIN

	select * from Canton c where c.ProvinciaId = pId;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for colectores
-- ----------------------------
DROP PROCEDURE IF EXISTS `colectores`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `colectores`()
BEGIN

	select * from colector;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for colector_validate
-- ----------------------------
DROP PROCEDURE IF EXISTS `colector_validate`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `colector_validate`(IN pId INT, IN pName VARCHAR(100), IN pStatus tinyint)
BEGIN

	if (pId is null or pId = 0) then

		insert into colector(Nombre,Enabled) values(pName, pStatus);
		set pId = LAST_INSERT_ID();

	else

		update colector c set
		c.Nombre = pName,
		c.Enabled = pStatus
		where c.Id = pId;

	end if;

	select * from colector c where c.Id = pId;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for distritos
-- ----------------------------
DROP PROCEDURE IF EXISTS `distritos`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `distritos`(IN `pId` int)
BEGIN

	select * from Distrito d where d.CantonId = pId;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for families
-- ----------------------------
DROP PROCEDURE IF EXISTS `families`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `families`()
BEGIN

	select * from familia;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for genres
-- ----------------------------
DROP PROCEDURE IF EXISTS `genres`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `genres`()
BEGIN

	select * from genero;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pending
-- ----------------------------
DROP PROCEDURE IF EXISTS `pending`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pending`()
BEGIN

	select m.*, 
	f.Nombre Familia,g.Nombre Genero, e.Nombre Especie,
	f.Id IdFamilia,g.Id IdGenero, e.Id IdEspecie,
	c.Nombre Colector, v.Nombre Validador, concat(p.Nombre,", ",ca.Nombre,", ",d.Nombre) Direccion
	from muestra m
	inner join colector c on c.Id = m.IdColector
	inner join validador v on v.Id = m.IdValidador
	inner join distrito d on d.Id = m.IdDistrito
	inner join canton ca on ca.Id = d.CantonId
	inner join provincia p on p.Id = ca.ProvinciaId
	inner join especieXgenero eg on eg.Id = m.IdEspecieXgenero
	inner join especie e on e.Id = eg.IdEspecie
	inner join familiaXgenero fg on fg.Id = eg.IdFamiliaXgenero
	inner join genero g on g.Id = fg.IdGenero
	inner join familia f on f.Id = fg.IdFamilia
	where m.Pendiente = 1
	;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for provincias
-- ----------------------------
DROP PROCEDURE IF EXISTS `provincias`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `provincias`()
BEGIN

	select * from Provincia;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for species
-- ----------------------------
DROP PROCEDURE IF EXISTS `species`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `species`()
BEGIN

	select * from especie;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for user_validate
-- ----------------------------
DROP PROCEDURE IF EXISTS `user_validate`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_validate`(IN pId INT, IN pUser VARCHAR(100), IN pPass VARCHAR(100) , IN pName VARCHAR(100), IN pRole VARCHAR(100))
BEGIN

	if (pId is null or pId = 0) then

		insert into usuario(Usuario,Clave,Nombre,Rol) values(pUser, pPass, pName, pRole);
		set pId = LAST_INSERT_ID();

	else

		update usuario u set
		u.Usuario = pUser, 
		u.Clave = pPass, 
		u.Nombre = pName,
		u.Rol = pRole
		where u.Id = pId;

	end if;

	select * from usuario u where u.Id = pId;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `usuario`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuario`(IN `pUser` varchar(32))
BEGIN

	select * from Usuario u where u.Usuario = pUser;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usuarioById
-- ----------------------------
DROP PROCEDURE IF EXISTS `usuarioById`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuarioById`(IN `pId` int)
BEGIN

	select * from Usuario u where u.Id = pId;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usuarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `usuarios`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuarios`()
BEGIN
	
	select * from Usuario;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for validadores
-- ----------------------------
DROP PROCEDURE IF EXISTS `validadores`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `validadores`()
BEGIN

	select * from validador;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for validador_validate
-- ----------------------------
DROP PROCEDURE IF EXISTS `validador_validate`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `validador_validate`(IN pId INT, IN pName VARCHAR(100), IN pStatus tinyint)
BEGIN

	if (pId is null or pId = 0) then

		insert into validador(Nombre,Enabled) values(pName, pStatus);
		set pId = LAST_INSERT_ID();

	else

		update validador c set
		c.Nombre = pName,
		c.Enabled = pStatus
		where c.Id = pId;

	end if;

	select * from validador c where c.Id = pId;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for validate
-- ----------------------------
DROP PROCEDURE IF EXISTS `validate`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `validate`(IN pId INT, IN pFamilyId INT, IN pGenreId INT, IN pSpeciesId INT, IN pLocation VARCHAR(100), IN pNotes VARCHAR(100))
BEGIN

	declare vId int;

	select eg.Id into vId 
	from familiaXgenero fg
	inner join especieXgenero eg on eg.IdFamiliaXgenero = fg.Id
	where fg.IdFamilia = pFamilyId
	and fg.IdGenero = pGenreId
	and eg.IdEspecie = pSpeciesId
	;

	if (vId > 0) then

		update muestra m set
		m.IdEspecieXgenero = vId,
		m.Localidad = pLocation,
		m.nota = pNotes,
		m.Pendiente = 0
		where m.Id = pId;

	end if;

	select * from muestra m where m.Id = pId;
END
;;
DELIMITER ;
