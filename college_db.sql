/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.19-MariaDB : Database - college_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`college_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `college_db`;

/*Table structure for table `colleges` */

DROP TABLE IF EXISTS `colleges`;

CREATE TABLE `colleges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `pricing` float(10,2) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `b_picture` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `colleges` */

insert  into `colleges`(`id`,`name`,`city`,`details`,`pricing`,`logo`,`b_picture`) values 
(1,'University North','Dubrovnik ','Founded in 2015, Sveucilište Sjever (University North) is a non-profit public higher-education institution located in the large town of Koprivnica (population range of 10,000-49,999 inhabitants), Koprivnica-Krizevci. Officially recognized by the Agencija ',127.00,'college-logo4.png','college-4.jfif'),
(2,'University of Zagreb','Rijeka','The University of Zagreb (1669) is the oldest and biggest university in Croatia and second largest in South-Eastern Europe. Ever since its foundation, the University has been continually growing and developing and now consists 31 faculties and three art a',150.00,'college-logo1.png','college-1.jfif'),
(3,'College of Agriculture in Križevci','Split','Founded in 2015, Sveucilište Sjever (University North) is a non-profit public higher-education institution located in the large town of Koprivnica (population range of 10,000-49,999 inhabitants), Koprivnica-Krizevci. Officially recognized by the Agencija ',140.00,'college-logo3.png','college-3.jfif'),
(4,'PAR University College','Zadar','The University of Zagreb (1669) is the oldest and biggest university in Croatia and second largest in South-Eastern Europe. Ever since its foundation, the University has been continually growing and developing and now consists 31 faculties and three art a',137.00,'college-logo1.png','college-1.jfif'),
(5,'RIT Croatia','Trogir','Founded in 2015, Sveucilište Sjever (University North) is a non-profit public higher-education institution located in the large town of Koprivnica (population range of 10,000-49,999 inhabitants), Koprivnica-Krizevci. Officially recognized by the Agencija ',190.00,'college-logo2.png','college-2.jfif'),
(6,'Zagreb School of Business','Osijek','Founded in 2015, Sveucilište Sjever (University North) is a non-profit public higher-education institution located in the large town of Koprivnica (population range of 10,000-49,999 inhabitants), Koprivnica-Krizevci. Officially recognized by the Agencija ',250.00,'college-logo2.png','college-3.jfif'),
(7,'University of Split','Motovun','The University of Zagreb (1669) is the oldest and biggest university in Croatia and second largest in South-Eastern Europe. Ever since its foundation, the University has been continually growing and developing and now consists 31 faculties and three art a',119.00,'college-logo3.png','college-2.jfif'),
(10,'Polytechnic Hrvatsko Zagorje in Krapina','Sinj ','Founded in 2015, Sveucilište Sjever (University North) is a non-profit public higher-education institution located in the large town of Koprivnica (population range of 10,000-49,999 inhabitants), Koprivnica-Krizevci. Officially recognized by the Agencija ',140.00,'college-logo4.png','college-4.jfif');

/*Table structure for table `user_like` */

DROP TABLE IF EXISTS `user_like`;

CREATE TABLE `user_like` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `college_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

/*Data for the table `user_like` */

insert  into `user_like`(`id`,`user_id`,`college_id`) values 
(3,4,3),
(30,0,7),
(31,0,6),
(41,3,5),
(42,7,2),
(43,7,3),
(48,9,7),
(49,6,10);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`email`,`password`) values 
(1,'2q34e132','e10adc3949ba59abbe56e057f20f883e'),
(2,'2q34e132','e10adc3949ba59abbe56e057f20f883e'),
(3,'how@gmail.com','e10adc3949ba59abbe56e057f20f883e'),
(6,'hello@gmail.com','e10adc3949ba59abbe56e057f20f883e'),
(7,'new@gmail.com','68a0099b3f45357798639a30c5fe3154'),
(8,'best@gmail.com','e35cf7b66449df565f93c607d5a81d09'),
(9,'hello_hello@gmail.com','25f9e794323b453885f5181f1b624d0b');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
