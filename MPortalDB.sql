

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`MPortalDB` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `MPortalDB`;


/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `parent_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `category` */

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `country` */

INSERT  INTO `country`(`id`,`name`) VALUES (1,'Armenia'),(2,'Russia'),(3,'USA'),(4,'Ukrain');

/*Table structure for table `language` */

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `lang_name` VARCHAR(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `message`;

/*Table structure for table `mentor_category` */

DROP TABLE IF EXISTS `mentor_category`;

CREATE TABLE `mentor_category` (
  `user_id` INT(11) NOT NULL,
  `category_id` INT(11) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `image_url` VARCHAR(255) NOT NULL,
  `id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `mentor_category_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `mentor_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `mentor_category` */

/*Table structure for table `mentor_status` */

DROP TABLE IF EXISTS `mentor_status`;

CREATE TABLE `mentor_status` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `status` ENUM('AVALIABLE','NOTAVALIABLE') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `mentor_status_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `mentor_status` */

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `from_id` INT(11) NOT NULL,
  `to_id` INT(11) NOT NULL,
  `accepted` TINYINT(1) NOT NULL,
  `id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `from_id` (`from_id`),
  KEY `to_id` (`to_id`),
  CONSTRAINT `request_ibfk_1` FOREIGN KEY (`from_id`) REFERENCES `user` (`id`),
  CONSTRAINT `request_ibfk_2` FOREIGN KEY (`to_id`) REFERENCES `user` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `gender` ENUM('MALE','FEMALE') NOT NULL,
  `role` ENUM('MENTOR','MENTEE') NOT NULL,
  `country_id` INT(11) NOT NULL,
  `is_online` TINYINT(1) NOT NULL DEFAULT '0',
  `dateOfBirth` DATE NOT NULL,
  `is_register` TINYINT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `user_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=INNODB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
