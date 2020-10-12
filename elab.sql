/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.0.17-MariaDB : Database - elab1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`elab1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `elab1`;

/*Table structure for table `e_book` */

DROP TABLE IF EXISTS `e_book`;

CREATE TABLE `e_book` (
  `callno` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `issued` int(10) DEFAULT NULL,
  PRIMARY KEY (`callno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `e_book` */

insert  into `e_book`(`callno`,`name`,`author`,`publisher`,`quantity`,`issued`) values 
('B101','c programming','Balgurusamy','MC Hill',100,0),
('B102','CPP programming','Balgurusamy','MC Hill',10,0);

/*Table structure for table `e_issuebook` */

DROP TABLE IF EXISTS `e_issuebook`;

CREATE TABLE `e_issuebook` (
  `issueid` int(11) NOT NULL AUTO_INCREMENT,
  `callno` varchar(100) DEFAULT NULL,
  `studentid` int(100) DEFAULT NULL,
  `studentname` varchar(100) DEFAULT NULL,
  `studentmobile` varchar(12) DEFAULT NULL,
  `issueddate` date DEFAULT NULL,
  `returnstatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`issueid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `e_issuebook` */

insert  into `e_issuebook`(`issueid`,`callno`,`studentid`,`studentname`,`studentmobile`,`issueddate`,`returnstatus`) values 
(1,'B101',1,'Twinkle Shukla','9765342312','2019-05-30','yes'),
(2,'B101',2,'Seema Londhe','7645235412','2019-06-22','yes'),
(3,'B101',3,'Atul Patare','7654342312','2019-06-22','yes'),
(4,'B102',4,'Arun Patil','7865453423','2019-06-22','yes');

/*Table structure for table `e_librarian` */

DROP TABLE IF EXISTS `e_librarian`;

CREATE TABLE `e_librarian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `e_librarian` */

insert  into `e_librarian`(`id`,`name`,`password`,`email`,`mobile`) values 
(2,'Tanuja','tanu@123','pataretanuja59@gmail.com','9284849737'),
(4,'Arun Dalvi','a@1234','arundalvi2@gmail.com','8805032322');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
