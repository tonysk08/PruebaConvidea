-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para rentcarconvidea
CREATE DATABASE IF NOT EXISTS `rentcarconvidea` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `rentcarconvidea`;

-- Volcando estructura para tabla rentcarconvidea.automobiles
CREATE TABLE IF NOT EXISTS `automobiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plateN` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chassisN` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motorN` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT '2000',
  `capacity` int(11) DEFAULT '0',
  `fuel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gearbox` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `costXday` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rentcarconvidea.automobiles: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `automobiles` DISABLE KEYS */;
INSERT INTO `automobiles` (`id`, `plateN`, `chassisN`, `motorN`, `manufacturer`, `model`, `year`, `capacity`, `fuel`, `gearbox`, `costXday`) VALUES
	(1, '289943', '1HGBH44JXMN109186', '52WVX10338', 'Nissan', 'qashqai', '2018', 5, 'gasolina', 'automatico', '15.00'),
	(2, '345090', '5HVBH74JXGV1091863', '82ZCN10584', 'kia', 'sportage', '2020', 8, 'gasolina', 'automatico', '25'),
	(3, 'AA2156', 'HO75HO76ASDF51523', '70R1770R17', 'toyota', 'Hilux', '2021', 4, 'disel', 'manual 4x4', '35'),
	(4, '3614501', '4HVBH74JXGV1091887', '93ZCN25584', 'toyota', 'corolla', '2019', 5, 'gasolina', 'automatico', '16.25'),
	(5, 'EE512011', '9HVBH64JXGV1091898', '80H1775L17', 'subaru', 'forest', '2019', 5, 'gasolina', 'automatico', '17'),
	(6, 'AE513013', '9HVBH64JXGV1091187', '93ZCN25585', 'subaru', 'legacy', '2018', 4, 'gasolina', 'automatico', '16.50');
/*!40000 ALTER TABLE `automobiles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
