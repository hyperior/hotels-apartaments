/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 10.4.28-MariaDB : Database - destinia_test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`destinia_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `destinia_test`;

/*Table structure for table `apartments` */

DROP TABLE IF EXISTS `apartments`;

CREATE TABLE `apartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noun` varchar(150) NOT NULL,
  `quantity` int(11) NOT NULL,
  `persons` tinyint(2) NOT NULL DEFAULT 1,
  `town_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_APARTMENT_TOWN` (`town_id`),
  CONSTRAINT `FK_APARTMENT_TOWN` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `apartments` */

insert  into `apartments`(`id`,`noun`,`quantity`,`persons`,`town_id`) values 
(1,'Apartamento Palacio de la Luz',20,6,1),
(2,'Apartamento El Faro',15,10,2),
(3,'Apartamento La Perla',30,8,3),
(4,'Apartamento El Bosque',25,6,4),
(5,'Apartamento La Posada',10,4,5);

/*Table structure for table `hotels` */

DROP TABLE IF EXISTS `hotels`;

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noun` varchar(150) NOT NULL,
  `stars` tinyint(1) NOT NULL,
  `town_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_HOTEL_TOWN` (`town_id`),
  CONSTRAINT `FK_HOTEL_TOWN` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `hotels` */

insert  into `hotels`(`id`,`noun`,`stars`,`town_id`) values 
(1,'Hotel Palacio de la Luz',5,1),
(2,'Hotel El Faro',4,2),
(3,'Hotel La Perla',3,3),
(4,'Hotel El Bosque',2,4),
(5,'Hotel La Posada',1,5),
(6,'Hotel El Mirador',4,6),
(7,'Hotel El Patio',2,7),
(8,'Hotel La Playa',3,8);

/*Table structure for table `rooms` */

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `room` varchar(150) NOT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ROOMS_HOTELS_FK` (`hotel_id`),
  CONSTRAINT `ROOMS_HOTELS_FK` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `rooms` */

insert  into `rooms`(`id`,`hotel_id`,`room`,`availability`) values 
(1,1,'Matrimonial',0),
(2,1,'Doble',1),
(3,1,'Triple',0),
(5,1,'Suite Junior',0),
(6,1,'Suite Presidencial',0),
(8,1,'Matrimonial con Balcon',0),
(9,1,'Doble con Balcon',1),
(10,2,'Matrimonial',0),
(11,2,'Doble con Vista al Mar',0),
(12,2,'Suite',0),
(13,3,'Matrimonial',0),
(14,3,'Doble',0),
(15,4,'Matrimonial',0),
(16,5,'Matrimonial',0),
(17,6,'Matrimonial con Balcon',0),
(19,6,'Suite con Balcon',0),
(20,7,'Matrimonial',0),
(21,7,'Doble',0),
(22,8,'Matrimonial Vista al Mar',0),
(23,8,'Doble Vista al Mar',0);

/*Table structure for table `towns` */

DROP TABLE IF EXISTS `towns`;

CREATE TABLE `towns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `towns` */

insert  into `towns`(`id`,`city`,`province`) values 
(1,'Madrid','Madrid'),
(2,'Barcelona','Barcelona'),
(3,'Pontevedra','Galicia'),
(4,'Santiago de Compostela','Galicia'),
(5,'Avila','Avila'),
(6,'Valencia','Valencia'),
(7,'Cáceres','Extremadura'),
(8,'Benidorm','Alicante');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
