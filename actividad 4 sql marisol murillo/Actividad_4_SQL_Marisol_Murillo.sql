-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para lugares_del_mundo
DROP DATABASE IF EXISTS `lugares_del_mundo`;
CREATE DATABASE IF NOT EXISTS `lugares_del_mundo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `lugares_del_mundo`;

-- Volcando estructura para tabla lugares_del_mundo.cities
DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='En esta tabla esta  la informacion de las ciudades ';

-- Volcando datos para la tabla lugares_del_mundo.cities: ~10 rows (aproximadamente)
DELETE FROM `cities`;
INSERT INTO `cities` (`id`, `name`) VALUES
	(1, 'chicago '),
	(2, 'yarumal '),
	(3, 'ciudad de mexico '),
	(4, 'buenos aires '),
	(5, 'moscu '),
	(6, 'tokyo'),
	(7, 'el cairo '),
	(8, 'madrid '),
	(9, 'leticia'),
	(10, 'nelson');

-- Volcando estructura para tabla lugares_del_mundo.city_country_continent
DROP TABLE IF EXISTS `city_country_continent`;
CREATE TABLE IF NOT EXISTS `city_country_continent` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `countries_id` smallint(5) NOT NULL,
  `cities_id` smallint(5) NOT NULL,
  `continents` smallint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='este campo sirve para la union de las tablas ';

-- Volcando datos para la tabla lugares_del_mundo.city_country_continent: ~8 rows (aproximadamente)
DELETE FROM `city_country_continent`;
INSERT INTO `city_country_continent` (`id`, `countries_id`, `cities_id`, `continents`) VALUES
	(1, 1, 9, 2),
	(2, 2, 5, 1),
	(3, 3, 1, 2),
	(4, 4, 6, 1),
	(5, 5, 10, 5),
	(6, 6, 4, 2),
	(7, 7, 8, 4),
	(8, 8, 7, 3),
	(9, 9, 3, 2),
	(10, 10, 4, 8);

-- Volcando estructura para tabla lugares_del_mundo.continents
DROP TABLE IF EXISTS `continents`;
CREATE TABLE IF NOT EXISTS `continents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='este campo estan los continentes del mundo';

-- Volcando datos para la tabla lugares_del_mundo.continents: ~5 rows (aproximadamente)
DELETE FROM `continents`;
INSERT INTO `continents` (`id`, `name`) VALUES
	(1, 'asia'),
	(2, 'america '),
	(3, 'africa'),
	(4, 'europa'),
	(5, 'oceania ');

-- Volcando estructura para tabla lugares_del_mundo.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='en este campo esta la informacion acerca de los paises. ';

-- Volcando datos para la tabla lugares_del_mundo.countries: ~10 rows (aproximadamente)
DELETE FROM `countries`;
INSERT INTO `countries` (`id`, `name`) VALUES
	(1, 'colombia'),
	(2, 'rusia '),
	(3, 'ee.uu'),
	(4, 'japon'),
	(5, 'new zealand'),
	(6, 'argentina'),
	(7, 'españa'),
	(8, 'egipto'),
	(9, 'mexico '),
	(10, 'ingleterra ');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
