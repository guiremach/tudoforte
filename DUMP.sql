/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.21-MariaDB : Database - tudoforte
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tudoforte` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tudoforte`;

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `cod_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cliente` varchar(250) DEFAULT NULL,
  `cod_usu_inc` varchar(250) NOT NULL,
  `dat_inc` datetime NOT NULL DEFAULT current_timestamp(),
  `cod_usu_alt` varchar(250) DEFAULT NULL,
  `dat_alt` datetime DEFAULT NULL,
  `cod_usu_exc` varchar(250) DEFAULT NULL,
  `dat_exc` datetime DEFAULT NULL,
  PRIMARY KEY (`cod_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `cliente` */

insert  into `cliente`(`cod_cliente`,`nom_cliente`,`cod_usu_inc`,`dat_inc`,`cod_usu_alt`,`dat_alt`,`cod_usu_exc`,`dat_exc`) values 
(1,'João da Silva','1','2021-12-22 17:24:04',NULL,NULL,NULL,NULL);

/*Table structure for table `fornecedor` */

DROP TABLE IF EXISTS `fornecedor`;

CREATE TABLE `fornecedor` (
  `cod_fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `nom_fornecedor` varchar(250) DEFAULT NULL,
  `cod_usu_inc` varchar(250) NOT NULL,
  `dat_inc` datetime NOT NULL DEFAULT current_timestamp(),
  `cod_usu_alt` varchar(250) DEFAULT NULL,
  `dat_alt` datetime DEFAULT NULL,
  `cod_usu_exc` varchar(250) DEFAULT NULL,
  `dat_exc` datetime DEFAULT NULL,
  PRIMARY KEY (`cod_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `fornecedor` */

insert  into `fornecedor`(`cod_fornecedor`,`nom_fornecedor`,`cod_usu_inc`,`dat_inc`,`cod_usu_alt`,`dat_alt`,`cod_usu_exc`,`dat_exc`) values 
(1,'Brasil Distribuidora','1','2021-12-22 17:24:25',NULL,NULL,NULL,NULL),
(2,'PanAm','1','2021-12-22 17:24:37',NULL,NULL,NULL,NULL);

/*Table structure for table `produto` */

DROP TABLE IF EXISTS `produto`;

CREATE TABLE `produto` (
  `cod_produto` int(11) NOT NULL AUTO_INCREMENT,
  `nom_produto` varchar(250) DEFAULT NULL,
  `dsc_produto` text DEFAULT NULL,
  `val_produto` double DEFAULT NULL,
  `ref_produto` varchar(250) DEFAULT NULL,
  `cod_usu_inc` varchar(250) NOT NULL,
  `dat_inc` datetime NOT NULL DEFAULT current_timestamp(),
  `cod_usu_alt` varchar(250) DEFAULT NULL,
  `dat_alt` datetime DEFAULT NULL,
  `cod_usu_exc` varchar(250) DEFAULT NULL,
  `dat_exc` datetime DEFAULT NULL,
  PRIMARY KEY (`cod_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `produto` */

insert  into `produto`(`cod_produto`,`nom_produto`,`dsc_produto`,`val_produto`,`ref_produto`,`cod_usu_inc`,`dat_inc`,`cod_usu_alt`,`dat_alt`,`cod_usu_exc`,`dat_exc`) values 
(1,'Agua de Limpeza Water Purify Clarins 0591 200mL','Agua de Limpeza Water Purify Clarins 0591 200mL',29,'1018837','1','2021-12-22 17:21:15',NULL,NULL,NULL,NULL),
(2,'Cartuchos Z-POD Creme crunch Z-POD 3.5mg% 1.6mL(4 unidade)','Cartuchos Z-POD Creme crunch Z-POD 3.5mg% 1.6mL(4 unidade)',10,'2542799','1','2021-12-22 17:21:15',NULL,NULL,NULL,NULL),
(3,'Homem Aranha Spider Man Marvel Hasbro E6358','Homem Aranha Spider Man Marvel Hasbro E6358',14,'2187709','1','2021-12-22 17:21:15',NULL,NULL,NULL,NULL),
(4,'Nutrex Research Lipo 6 Black Intense Fat Burner - 60 capsulas','Nutrex Research Lipo 6 Black Intense Fat Burner - 60 capsulas',30,'1339659','1','2021-12-22 17:21:15',NULL,NULL,NULL,NULL),
(5,'Relógio Masculino Citizen Chronograph Analógico','Relógio Masculino Citizen Chronograph Analógico',125.5,'485517','1','2021-12-22 17:21:15',NULL,NULL,NULL,NULL),
(6,'5.11 TENIS TRAINER 12429 BLACK','5.11 TENIS TRAINER 12429 BLACK',99,'2866055','1','2021-12-22 17:21:15',NULL,NULL,NULL,NULL),
(7,'Abridor de Garrafa Magnético Quanta QTAGM01 Prata','Abridor de Garrafa Magnético Quanta QTAGM01 Prata',0,'1542479','1','2021-12-22 17:21:15',NULL,NULL,NULL,NULL);

/*Table structure for table `produto_fornecedor` */

DROP TABLE IF EXISTS `produto_fornecedor`;

CREATE TABLE `produto_fornecedor` (
  `cod_prod_forn` int(11) NOT NULL AUTO_INCREMENT,
  `cod_produto` int(11) DEFAULT NULL,
  `cod_fornecedor` int(11) DEFAULT NULL,
  `cod_usu_inc` varchar(250) NOT NULL,
  `dat_inc` datetime NOT NULL DEFAULT current_timestamp(),
  `cod_usu_alt` varchar(250) DEFAULT NULL,
  `dat_alt` datetime DEFAULT NULL,
  `cod_usu_exc` varchar(250) DEFAULT NULL,
  `dat_exc` datetime DEFAULT NULL,
  PRIMARY KEY (`cod_prod_forn`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `produto_fornecedor` */

insert  into `produto_fornecedor`(`cod_prod_forn`,`cod_produto`,`cod_fornecedor`,`cod_usu_inc`,`dat_inc`,`cod_usu_alt`,`dat_alt`,`cod_usu_exc`,`dat_exc`) values 
(1,1,1,'1','2021-12-22 18:17:36',NULL,NULL,NULL,NULL),
(2,2,1,'1','2021-12-22 18:17:38',NULL,NULL,NULL,NULL),
(3,3,1,'1','2021-12-22 18:17:43',NULL,NULL,NULL,NULL),
(4,3,2,'1','2021-12-22 18:17:46',NULL,NULL,NULL,NULL),
(5,4,1,'1','2021-12-22 18:17:48',NULL,NULL,NULL,NULL),
(6,5,1,'1','2021-12-22 18:17:51',NULL,NULL,NULL,NULL),
(7,6,2,'1','2021-12-22 18:17:54',NULL,NULL,NULL,NULL),
(8,7,1,'','2021-12-22 18:18:13',NULL,NULL,NULL,NULL);

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `cod_usuario` int(11) NOT NULL,
  `nom_usuario` varchar(250) DEFAULT NULL,
  `dsc_senha` varchar(250) DEFAULT NULL,
  `cod_usu_inc` varchar(250) NOT NULL DEFAULT '1',
  `dat_inc` datetime NOT NULL DEFAULT current_timestamp(),
  `cod_usu_alt` varchar(250) DEFAULT NULL,
  `dat_alt` datetime DEFAULT NULL,
  `cod_usu_exc` varchar(250) DEFAULT NULL,
  `dat_exc` datetime DEFAULT NULL,
  PRIMARY KEY (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`cod_usuario`,`nom_usuario`,`dsc_senha`,`cod_usu_inc`,`dat_inc`,`cod_usu_alt`,`dat_alt`,`cod_usu_exc`,`dat_exc`) values 
(0,'administrador','teste','1','2021-12-22 17:12:58',NULL,NULL,NULL,NULL);

/*Table structure for table `venda` */

DROP TABLE IF EXISTS `venda`;

CREATE TABLE `venda` (
  `cod_venda` int(11) NOT NULL AUTO_INCREMENT,
  `cod_cliente` int(11) NOT NULL,
  `dsc_endereco_entrega` text NOT NULL,
  `cod_status` int(11) NOT NULL DEFAULT 0 COMMENT '0=pendente pagamento, 1=pago, 2=cancelado',
  `cod_usu_inc` varchar(250) NOT NULL,
  `dat_inc` datetime NOT NULL DEFAULT current_timestamp(),
  `cod_usu_alt` varchar(250) DEFAULT NULL,
  `dat_alt` datetime DEFAULT NULL,
  `cod_usu_exc` varchar(250) DEFAULT NULL,
  `dat_exc` datetime DEFAULT NULL,
  PRIMARY KEY (`cod_venda`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `venda` */

insert  into `venda`(`cod_venda`,`cod_cliente`,`dsc_endereco_entrega`,`cod_status`,`cod_usu_inc`,`dat_inc`,`cod_usu_alt`,`dat_alt`,`cod_usu_exc`,`dat_exc`) values 
(1,1,'Rua das flores, 151 Centro, Campinas',0,'1','2021-12-22 18:18:38',NULL,NULL,NULL,NULL),
(2,1,'Rua das flores, 666, são paulo',0,'1','2021-12-22 18:56:32',NULL,NULL,NULL,NULL);

/*Table structure for table `venda_produto` */

DROP TABLE IF EXISTS `venda_produto`;

CREATE TABLE `venda_produto` (
  `cod_venda_produto` int(11) NOT NULL AUTO_INCREMENT,
  `cod_venda` int(11) NOT NULL,
  `cod_produto` int(11) NOT NULL,
  `val_quantidade` int(11) NOT NULL,
  `cod_usu_inc` varchar(250) NOT NULL,
  `dat_inc` datetime NOT NULL DEFAULT current_timestamp(),
  `cod_usu_alt` varchar(250) DEFAULT NULL,
  `dat_alt` datetime DEFAULT NULL,
  `cod_usu_exc` varchar(250) DEFAULT NULL,
  `dat_exc` datetime DEFAULT NULL,
  PRIMARY KEY (`cod_venda_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `venda_produto` */

insert  into `venda_produto`(`cod_venda_produto`,`cod_venda`,`cod_produto`,`val_quantidade`,`cod_usu_inc`,`dat_inc`,`cod_usu_alt`,`dat_alt`,`cod_usu_exc`,`dat_exc`) values 
(1,1,2,1,'1','2021-12-22 18:18:55',NULL,NULL,NULL,NULL),
(2,1,3,3,'1','2021-12-22 18:19:00',NULL,NULL,NULL,NULL),
(3,1,6,2,'1','2021-12-22 18:19:06',NULL,NULL,NULL,NULL),
(4,2,3,5,'1','2021-12-22 19:00:31',NULL,NULL,NULL,NULL);

/*Table structure for table `vvenda_produto` */

DROP TABLE IF EXISTS `vvenda_produto`;

/*!50001 DROP VIEW IF EXISTS `vvenda_produto` */;
/*!50001 DROP TABLE IF EXISTS `vvenda_produto` */;

/*!50001 CREATE TABLE  `vvenda_produto`(
 `cod_venda` int(11) ,
 `dsc_endereco_entrega` text ,
 `cod_cliente` int(11) ,
 `nom_cliente` varchar(250) ,
 `cod_produto` int(11) ,
 `nom_produto` varchar(250) ,
 `ref_produto` varchar(250) ,
 `val_produto` double ,
 `val_quantidade` int(11) ,
 `val_total_produtos` double ,
 `dsc_fornecedores` mediumtext ,
 `dsc_status` varchar(18) ,
 `val_total_venda` double ,
 `dat_venda` datetime 
)*/;

/*View structure for view vvenda_produto */

/*!50001 DROP TABLE IF EXISTS `vvenda_produto` */;
/*!50001 DROP VIEW IF EXISTS `vvenda_produto` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vvenda_produto` AS select `a`.`cod_venda` AS `cod_venda`,`a`.`dsc_endereco_entrega` AS `dsc_endereco_entrega`,`b`.`cod_cliente` AS `cod_cliente`,`b`.`nom_cliente` AS `nom_cliente`,`d`.`cod_produto` AS `cod_produto`,`d`.`nom_produto` AS `nom_produto`,`d`.`ref_produto` AS `ref_produto`,`d`.`val_produto` AS `val_produto`,`c`.`val_quantidade` AS `val_quantidade`,`d`.`val_produto` * `c`.`val_quantidade` AS `val_total_produtos`,group_concat(`f`.`nom_fornecedor` separator ',') AS `dsc_fornecedores`,case when `a`.`cod_status` = 0 then 'Pendente Pagamento' when `a`.`cod_status` = 1 then 'Pago' when `a`.`cod_status` = 2 then 'Cancelado' end AS `dsc_status`,(select sum(`d2`.`val_produto` * `c2`.`val_quantidade`) from ((`venda` `a2` join `venda_produto` `c2` on(`a2`.`cod_venda` = `c2`.`cod_venda`)) join `produto` `d2` on(`c2`.`cod_produto` = `d2`.`cod_produto`))) AS `val_total_venda`,`a`.`dat_inc` AS `dat_venda` from (((((`venda` `a` join `cliente` `b` on(`a`.`cod_cliente` = `b`.`cod_cliente`)) join `venda_produto` `c` on(`a`.`cod_venda` = `c`.`cod_venda`)) join `produto` `d` on(`c`.`cod_produto` = `d`.`cod_produto`)) join `produto_fornecedor` `e` on(`d`.`cod_produto` = `e`.`cod_produto`)) join `fornecedor` `f` on(`e`.`cod_fornecedor` = `f`.`cod_fornecedor`)) group by `a`.`cod_venda`,`c`.`cod_produto` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
