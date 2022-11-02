/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.24 : Database - motopatio.site
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `brake` */

DROP TABLE IF EXISTS `brake`;

CREATE TABLE `brake` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `brake` */

insert  into `brake`(`id`,`name`,`status`,`created_at`,`updated_at`,`deleted_at`) values (1,'ABS',1,'2022-10-11 01:43:29','2022-10-11 01:43:29',NULL),(2,'Sin ABS',1,'2022-10-11 01:43:44','2022-10-11 01:43:44',NULL);

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` smallint(6) DEFAULT '1',
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `brand` */

insert  into `brand`(`id`,`name`,`order`,`status`,`created_at`,`updated_at`,`deleted_at`) values (1,'Aprilia',NULL,1,'2022-10-11 03:06:00','2022-10-11 03:09:32',NULL),(2,'Arch',NULL,1,'2022-10-11 03:09:18','2022-10-11 03:09:18',NULL);

/*Table structure for table `checkout` */

DROP TABLE IF EXISTS `checkout`;

CREATE TABLE `checkout` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_aditional` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` text COLLATE utf8mb4_unicode_ci,
  `newsletter` tinyint(1) DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checkout_user_id_foreign` (`user_id`),
  CONSTRAINT `checkout_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `checkout` */

insert  into `checkout`(`id`,`user_id`,`name`,`last_name`,`business`,`country`,`address`,`address_aditional`,`city`,`postal`,`phone`,`email`,`information`,`newsletter`,`status`,`created_at`,`updated_at`,`deleted_at`) values (1,2,'Paul','Auqui','Codemotion','Ecuador','Gustavo Orces Villagomez y pasaje 18','DEP. 5842','Quito','7200014','998896734','paul.auqui@walkerbrand.com','sadfsadf asdf',1,1,'2022-10-22 21:50:34','2022-10-22 21:53:32',NULL);

/*Table structure for table `color` */

DROP TABLE IF EXISTS `color`;

CREATE TABLE `color` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `color` */

insert  into `color`(`id`,`name`,`color`,`status`,`created_at`,`updated_at`,`deleted_at`) values (1,'Grey','#766f6f',1,'2022-10-11 01:31:33','2022-10-11 01:31:33',NULL),(2,'Yellow','#e5dd06',1,'2022-10-22 23:48:55','2022-10-22 23:48:55',NULL);

/*Table structure for table `compare` */

DROP TABLE IF EXISTS `compare`;

CREATE TABLE `compare` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `motorcycle_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `session` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `compare_motorcycle_id_foreign` (`motorcycle_id`),
  KEY `compare_user_id_foreign` (`user_id`),
  CONSTRAINT `compare_motorcycle_id_foreign` FOREIGN KEY (`motorcycle_id`) REFERENCES `motorcycle` (`id`) ON DELETE CASCADE,
  CONSTRAINT `compare_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `compare` */

/*Table structure for table `condition` */

DROP TABLE IF EXISTS `condition`;

CREATE TABLE `condition` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `order` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `condition` */

insert  into `condition`(`id`,`name`,`status`,`order`,`created_at`,`updated_at`,`deleted_at`) values (1,'Certificado usado',1,1,'2022-10-11 01:04:47','2022-10-11 01:04:47',NULL),(2,'Nuevo',1,2,'2022-10-11 01:05:02','2022-10-11 01:09:07',NULL),(3,'Usado',1,3,'2022-10-11 01:05:15','2022-10-11 01:09:16',NULL),(4,'Otro',1,4,'2022-10-11 01:05:33','2022-10-11 01:09:26',NULL);

/*Table structure for table `data_rows` */

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `data_rows` */

insert  into `data_rows`(`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) values (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','voyager::seeders.data_rows.roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(34,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(35,8,'name','text','Nombre',1,1,1,1,1,1,'{}',2),(36,8,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\"}',4),(37,8,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',5),(38,8,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',6),(39,8,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',7),(40,8,'order','number','Orden',1,1,1,1,1,1,'{}',3),(41,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(42,9,'name','text','Nombre',1,1,1,1,1,1,'{}',2),(43,9,'color','color','Color',1,1,1,1,1,1,'{}',3),(44,9,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\"}',4),(45,9,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',5),(46,9,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',6),(47,9,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',7),(48,12,'id','text','Id',1,0,0,0,0,0,'{}',1),(49,12,'name','text','Nombre',1,1,1,1,1,1,'{}',2),(50,12,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\"}',3),(51,12,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',4),(52,12,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',5),(53,12,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',6),(54,13,'id','text','Id',1,0,0,0,0,0,'{}',1),(55,13,'name','text','Nombre',1,1,1,1,1,1,'{}',2),(56,13,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\"}',3),(57,13,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',4),(58,13,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',5),(59,13,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',6),(60,14,'id','text','Id',1,0,0,0,0,0,'{}',1),(61,14,'name','text','Nombre',1,1,1,1,1,1,'{}',2),(62,14,'days','number','Días',1,1,1,1,1,1,'{}',3),(63,14,'status','checkbox','Estado',1,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\"}',4),(64,14,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',5),(65,14,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',6),(66,14,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',7),(67,15,'id','text','Id',1,0,0,0,0,0,'{}',1),(68,15,'name','text','Nombre',1,1,1,1,1,1,'{}',2),(69,15,'payment_period_id','text','Payment Period Id',0,0,0,1,1,0,'{}',3),(70,15,'duration','number','Tiempo',0,1,1,1,1,1,'{\"description\":\"Campo vacio para definir Ilimitado\"}',5),(71,15,'publication','number','Publicaciones',0,1,1,1,1,1,'{\"description\":\"Campo vacio para definir Ilimitado\"}',6),(72,15,'featured','number','Destacados',0,1,1,1,1,1,'{\"description\":\"Campo vacio para definir Ilimitado\"}',7),(73,15,'microsite','number','Aparece en micrositio',0,1,1,1,1,1,'{\"description\":\"Campo vacio para definir Ilimitado\"}',8),(74,15,'price','number','Precio',0,1,1,1,1,1,'{\"description\":\"Campo vacio para definir gratuito\"}',9),(75,15,'default','checkbox','Por defecto',1,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\"}',11),(76,15,'order','number','Orden',1,1,1,1,1,1,'{}',10),(77,15,'status','checkbox','Estado',1,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\"}',12),(78,15,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',13),(79,15,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',14),(80,15,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',15),(81,15,'plan_belongsto_payment_period_relationship','relationship','Periodo pago',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\PaymentPeriod\",\"table\":\"payment_period\",\"type\":\"belongsTo\",\"column\":\"payment_period_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brake\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(82,16,'id','text','Id',1,0,0,0,0,0,'{}',1),(83,16,'name','text','Nombre',1,1,1,1,1,1,'{}',2),(84,16,'order','number','Orden',0,1,1,1,1,1,'{}',3),(85,16,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\"}',4),(86,16,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',5),(87,16,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',6),(88,16,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',7),(89,17,'id','text','Id',1,0,0,0,0,0,'{}',1),(90,17,'name','text','Nombre',1,1,1,1,1,1,'{}',4),(91,17,'order','number','Orden',0,1,1,1,1,1,'{}',5),(92,17,'brand_id','text','Brand Id',1,0,0,1,1,0,'{}',2),(93,17,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\"}',6),(94,17,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',7),(95,17,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',8),(96,17,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',9),(97,17,'model_belongsto_brand_relationship','relationship','Marca',1,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Brand\",\"table\":\"brand\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brake\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(98,18,'id','text','Id',1,0,0,0,0,0,'{}',1),(99,18,'name','text','Nombre',1,1,1,1,1,1,'{}',2),(100,18,'order','number','Orden',0,1,1,1,1,1,'{}',4),(101,18,'key','text','Codigo',1,1,1,1,1,1,'{}',3),(102,18,'description','text_area','Descripción',0,0,1,1,1,1,'{}',5),(103,18,'status','checkbox','Estado',1,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\"}',6),(104,18,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',7),(105,18,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',8),(106,18,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',9),(107,20,'id','text','Id',1,0,0,0,0,0,'{}',1),(108,20,'user_id','text','User Id',1,1,1,1,1,1,'{}',2),(109,20,'name','text','Nombre',1,1,1,1,1,1,'{}',4),(110,20,'last_name','text','Apellidos',1,1,1,1,1,1,'{}',5),(111,20,'business','text','Nombre de la empresa',0,1,1,1,1,1,'{\"information\":{\"text\":\"(Opcional)\",\"align\":\"left\"}}',6),(112,20,'country','text','País / Región',1,0,1,1,1,1,'{}',7),(113,20,'address','text','Dirección de la calle',1,0,1,1,1,1,'{}',8),(114,20,'address_aditional','text','Apartamento, Habitación, etc.',0,0,1,1,1,1,'{}',9),(115,20,'city','text','Localidad / Ciudad',1,0,1,1,1,1,'{}',10),(116,20,'postal','text','Código postal',1,0,1,1,1,1,'{}',11),(117,20,'phone','text','Teléfono',1,1,1,1,1,1,'{}',12),(118,20,'email','text','Dirección de correo electrónico',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"email\",\"messages\":{\"email\":\"Formato Email incorrecto\"}}}',13),(119,20,'information','text_area','Notas del pedido',0,0,1,1,1,1,'{\"information\":{\"text\":\"(opcional)\",\"align\":\"left\"},\"side\":\"right\"}',14),(120,20,'newsletter','checkbox','Yes, I\'m ok with you sending me additional newsletter and email content (opcional)',0,0,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true,\"side\":\"right\"}',15),(121,20,'status','checkbox','Estado',1,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true,\"side\":\"right\"}',16),(122,20,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',17),(123,20,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',18),(124,20,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',19),(125,20,'checkout_belongsto_user_relationship','relationship','Usuario',0,1,1,1,1,1,'{\"information\":{\"text\":\"Opci\\u00f3n para administradores\",\"align\":\"left\"},\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brake\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(126,18,'default','checkbox','Default',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\"}',6),(127,21,'id','text','Id',1,0,0,0,0,0,'{}',1),(128,21,'user_plan_id','text','User Plan Id',1,1,1,1,1,1,'{}',4),(129,21,'transmission_id','text','Transmisión',0,1,1,1,1,1,'{}',6),(130,21,'brake_id','text','Freno',0,0,0,0,0,0,'{}',8),(131,21,'color_id','color','Color',0,1,1,1,1,1,'{}',10),(132,21,'condition_id','text','Condición',0,1,1,1,1,1,'{}',12),(133,21,'brand_id','text','Marca',1,1,1,1,1,1,'{}',14),(134,21,'model_id','text','Modelo',1,1,1,1,1,1,'{}',22),(135,21,'name','text','Título de la moto',1,1,1,1,1,1,'{}',2),(136,21,'motor','text','Motor',1,1,1,1,1,1,'{}',16),(137,21,'kilometres','text','Kilómetros',1,1,1,1,1,1,'{\"side\":\"_center\"}',17),(138,21,'notes','rich_text_box','Notas del vendedor',0,0,1,1,1,1,'{\"tinymceOptions\":{\"height\":150,\"min_height\":150}}',19),(139,21,'price','text','Precio',0,1,1,1,1,1,'{\"side\":\"_right\"}',18),(140,21,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\"}',23),(141,21,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',24),(142,21,'updated_at','timestamp','Updated At',0,0,1,0,0,0,'{}',25),(143,21,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',26),(144,22,'id','text','Id',1,0,0,0,0,0,'{}',1),(145,22,'name','text','Nombre',1,1,1,1,1,1,'{}',2),(146,22,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\"}',3),(147,22,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',4),(148,22,'updated_at','timestamp','Updated At',0,0,1,0,0,0,'{}',5),(149,22,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',6),(150,21,'motorcycle_belongsto_transmission_relationship','relationship','Transmisión',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Transmission\",\"table\":\"transmission\",\"type\":\"belongsTo\",\"column\":\"transmission_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brake\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),(151,21,'motorcycle_belongsto_brake_relationship','relationship','Freno',0,1,1,1,1,1,'{\"side\":\"_center\",\"model\":\"App\\\\Models\\\\Brake\",\"table\":\"brake\",\"type\":\"belongsTo\",\"column\":\"brake_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brake\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),(152,21,'motorcycle_belongsto_color_relationship','relationship','Color',0,1,1,1,1,1,'{\"side\":\"_right\",\"model\":\"App\\\\Models\\\\Color\",\"table\":\"color\",\"type\":\"belongsTo\",\"column\":\"color_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brake\",\"pivot\":\"0\",\"taggable\":\"0\"}',9),(153,21,'motorcycle_belongsto_condition_relationship','relationship','Condición',0,1,1,1,1,1,'{\"side\":\"_right\",\"model\":\"App\\\\Models\\\\Condition\",\"table\":\"condition\",\"type\":\"belongsTo\",\"column\":\"condition_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brake\",\"pivot\":\"0\",\"taggable\":\"0\"}',11),(154,21,'motorcycle_belongsto_brand_relationship','relationship','Marca',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Brand\",\"table\":\"brand\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brake\",\"pivot\":\"0\",\"taggable\":\"0\"}',13),(155,21,'motorcycle_belongsto_model_relationship','relationship','Modelo',0,1,1,1,1,1,'{\"side\":\"_center\",\"model\":\"App\\\\Models\\\\Models\",\"table\":\"model\",\"type\":\"belongsTo\",\"column\":\"model_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brake\",\"pivot\":\"0\",\"taggable\":\"0\"}',15),(156,21,'motorcycle_belongsto_user_plan_relationship','relationship','user_plan',0,1,1,1,1,1,'{\"side\":\"_center\",\"model\":\"App\\\\Models\\\\UserPlan\",\"table\":\"user_plan\",\"type\":\"belongsTo\",\"column\":\"user_plan_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"brake\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(157,21,'image','image','Imagen',0,1,1,1,1,1,'{\"side\":\"_center\"}',20),(158,21,'gallery','media_picker','Galería',0,1,1,1,1,1,'{\"max\":10,\"min\":0,\"allowed\":[],\"side\":\"_right\"}',21);

/*Table structure for table `data_types` */

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `data_types` */

insert  into `data_types`(`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) values (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2022-09-06 20:58:14','2022-09-06 20:58:14'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2022-09-06 20:58:14','2022-09-06 20:58:14'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2022-09-06 20:58:14','2022-09-06 20:58:14'),(8,'condition','condition','Condition','Conditions','voyager-list','App\\Models\\Condition',NULL,NULL,NULL,1,0,'{\"order_column\":\"order\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-10-11 00:55:45','2022-10-22 19:27:28'),(9,'color','color','Color','Colores','voyager-list','App\\Models\\Color',NULL,NULL,NULL,1,0,'{\"order_column\":\"name\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-10-11 01:30:55','2022-10-22 19:28:16'),(12,'brake','brake','Brake','Brakes','voyager-list','App\\Models\\Brake',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-10-11 01:39:36','2022-10-22 19:28:44'),(13,'extra_type','extra-type','Extra','Extras','voyager-list','App\\Models\\ExtraType',NULL,NULL,NULL,1,0,'{\"order_column\":\"name\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-10-11 01:48:47','2022-10-23 01:03:40'),(14,'payment_period','payment-period','Periodo de pago','Periodos de pago','voyager-fire','App\\Models\\PaymentPeriod',NULL,NULL,NULL,1,0,'{\"order_column\":\"days\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-10-11 02:00:35','2022-10-23 01:09:10'),(15,'plan','plan','Plan','Planes','voyager-list','App\\Models\\Plan',NULL,NULL,NULL,1,0,'{\"order_column\":\"order\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-10-11 02:08:54','2022-10-23 01:07:19'),(16,'brand','brand','Marca','Marcas','voyager-fire','App\\Models\\Brand',NULL,NULL,NULL,1,0,'{\"order_column\":\"order\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-10-11 03:04:47','2022-10-23 01:06:01'),(17,'model','model','Modelo','Modelos','voyager-list','App\\Models\\Models',NULL,NULL,NULL,1,0,'{\"order_column\":\"brand_id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"name\",\"scope\":null}','2022-10-11 03:18:48','2022-10-23 01:04:31'),(18,'payments_methods','payments-methods','Método de pago','Métodos de pago','voyager-list','App\\Models\\PaymentMethod',NULL,NULL,NULL,1,0,'{\"order_column\":\"order\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-10-11 04:16:27','2022-10-22 19:23:27'),(20,'checkout','checkout','CHECKOUT','CHECKOUT','voyager-buy','App\\Models\\Checkout',NULL,'App\\Http\\Controllers\\Voyager\\CheckoutController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-10-11 09:27:53','2022-11-01 09:26:05'),(21,'motorcycle','motorcycle','Moto','Motos','voyager-fire','App\\Models\\Motorcycle',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-10-22 16:22:47','2022-11-02 09:57:34'),(22,'transmission','transmission','Transmisión','Transmisiones','voyager-list','App\\Models\\Transmission',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-10-22 19:10:04','2022-10-23 01:05:24');

/*Table structure for table `extra` */

DROP TABLE IF EXISTS `extra`;

CREATE TABLE `extra` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extra_type_id` bigint(20) unsigned NOT NULL,
  `motorcycle_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `extra_extra_type_id_foreign` (`extra_type_id`),
  KEY `extra_motorcycle_id_foreign` (`motorcycle_id`),
  CONSTRAINT `extra_extra_type_id_foreign` FOREIGN KEY (`extra_type_id`) REFERENCES `extra_type` (`id`) ON DELETE CASCADE,
  CONSTRAINT `extra_motorcycle_id_foreign` FOREIGN KEY (`motorcycle_id`) REFERENCES `motorcycle` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `extra` */

/*Table structure for table `extra_type` */

DROP TABLE IF EXISTS `extra_type`;

CREATE TABLE `extra_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `extra_type` */

insert  into `extra_type`(`id`,`name`,`status`,`created_at`,`updated_at`,`deleted_at`) values (1,'Bluetooth',1,'2022-10-11 01:50:57','2022-10-11 01:50:57',NULL),(2,'Reproductor de DVD',1,'2022-10-11 01:51:09','2022-10-11 01:51:09',NULL);

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `gallery` */

DROP TABLE IF EXISTS `gallery`;

CREATE TABLE `gallery` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `motorcycle_id` bigint(20) unsigned NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_motorcycle_id_foreign` (`motorcycle_id`),
  CONSTRAINT `gallery_motorcycle_id_foreign` FOREIGN KEY (`motorcycle_id`) REFERENCES `motorcycle` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `gallery` */

/*Table structure for table `menu_items` */

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `menu_items` */

insert  into `menu_items`(`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) values (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2022-09-06 20:58:14','2022-09-06 20:58:14','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,5,'2022-09-06 20:58:14','2022-10-11 09:15:29','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-people','#000000',NULL,4,'2022-09-06 20:58:14','2022-10-11 09:15:45','voyager.users.index','null'),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2022-09-06 20:58:14','2022-09-06 20:58:14','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2022-09-06 20:58:14','2022-10-27 08:55:48',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2022-09-06 20:58:14','2022-10-11 01:24:59','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2022-09-06 20:58:14','2022-10-11 01:24:59','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2022-09-06 20:58:14','2022-10-11 01:24:59','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2022-09-06 20:58:14','2022-10-11 01:24:59','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,10,'2022-09-06 20:58:14','2022-10-27 08:55:48','voyager.settings.index',NULL),(12,1,'Condiciones','','_self','voyager-list','#000000',13,7,'2022-10-11 00:54:19','2022-10-22 19:10:26','voyager.condition.index','null'),(13,1,'Parámetros','','_self','voyager-params','#000000',NULL,8,'2022-10-11 01:24:46','2022-10-27 08:55:48',NULL,''),(14,1,'Colores','','_self','voyager-list','#000000',13,8,'2022-10-11 01:30:55','2022-10-22 19:10:26','voyager.color.index','null'),(15,1,'Frenos','','_self','voyager-list','#000000',13,9,'2022-10-11 01:39:36','2022-10-22 19:10:26','voyager.brake.index','null'),(16,1,'Extras','','_self','voyager-list','#000000',13,10,'2022-10-11 01:48:47','2022-10-22 19:10:26','voyager.extra-type.index','null'),(17,1,'Periodos pago','','_self','voyager-list','#000000',13,1,'2022-10-11 02:00:35','2022-10-11 04:21:19','voyager.payment-period.index','null'),(18,1,'Planes','','_self','voyager-list','#000000',13,3,'2022-10-11 02:08:54','2022-10-11 04:19:34','voyager.plan.index','null'),(19,1,'Marcas','','_self','voyager-list','#000000',13,5,'2022-10-11 03:04:47','2022-10-23 01:06:24','voyager.brand.index','null'),(20,1,'Modelos','','_self','voyager-list','#000000',13,6,'2022-10-11 03:18:49','2022-10-22 19:10:26','voyager.model.index','null'),(21,1,'Formas pago','','_self','voyager-list','#000000',13,2,'2022-10-11 04:16:27','2022-10-11 04:21:03','voyager.payments-methods.index','null'),(22,1,'Mi perfil','','_self','voyager-person','#000000',NULL,3,'2022-10-11 09:15:09','2022-10-11 09:15:29','voyager.profile',NULL),(23,1,'Checkout','','_self','voyager-buy','#000000',NULL,6,'2022-10-11 09:27:53','2022-10-27 08:55:25','voyager.checkout.index','null'),(24,1,'Motocicletas','','_self','voyager-truck','#000000',NULL,7,'2022-10-22 16:22:48','2022-10-27 08:55:40','voyager.motorcycle.index','null'),(25,1,'Transmición','','_self','voyager-list','#000000',13,4,'2022-10-22 19:10:04','2022-10-23 01:06:24','voyager.transmission.index','null');

/*Table structure for table `menus` */

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `menus` */

insert  into `menus`(`id`,`name`,`created_at`,`updated_at`) values (1,'admin','2022-09-06 20:58:14','2022-09-06 20:58:14');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_08_22_040503_create_sessions_table',1),(7,'2016_01_01_000000_add_voyager_user_fields',2),(8,'2016_01_01_000000_create_data_types_table',2),(9,'2016_05_19_173453_create_menu_table',2),(10,'2016_10_21_190000_create_roles_table',2),(11,'2016_10_21_190000_create_settings_table',2),(12,'2016_11_30_135954_create_permission_table',2),(13,'2016_11_30_141208_create_permission_role_table',2),(14,'2016_12_26_201236_data_types__add__server_side',2),(15,'2017_01_13_000000_add_route_to_menu_items_table',2),(16,'2017_01_14_005015_create_translations_table',2),(17,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',2),(18,'2017_03_06_000000_add_controller_to_data_types_table',2),(19,'2017_04_21_000000_add_order_to_data_rows_table',2),(20,'2017_07_05_210000_add_policyname_to_data_types_table',2),(21,'2017_08_05_000000_add_group_to_settings_table',2),(22,'2017_11_26_013050_add_user_role_relationship',2),(23,'2017_11_26_015000_create_user_roles_table',2),(24,'2018_03_11_000000_add_user_settings',2),(25,'2018_03_14_000000_add_details_to_data_types_table',2),(26,'2018_03_16_000000_make_settings_value_nullable',2),(27,'2022_10_07_092248_add_fields_user_table',3),(28,'2022_10_07_092842_create_periodo_pago_table',3),(29,'2022_10_07_095240_create_plan_table',4),(30,'2022_10_07_100254_create_user_plan_table',5),(31,'2022_10_09_152659_create_transmition_table',6),(32,'2022_10_09_153528_create_brake_table',6),(33,'2022_10_09_154021_create_color_table',6),(34,'2022_10_09_154205_create_condition_table',6),(35,'2022_10_09_154329_create_brand_table',6),(36,'2022_10_09_154619_create_model_table',6),(37,'2022_10_09_155110_create_motorcycle_table',7),(38,'2022_10_09_163444_create_gallery_table',7),(39,'2022_10_09_163947_create_extra_type_table',7),(41,'2022_10_09_164405_create_extra_table',8),(43,'2022_10_09_165757_create_compare_table',9),(44,'2022_10_11_000725_add_video_gallery_table',10),(45,'2022_10_11_010631_add_order_condition_table',11),(46,'2022_10_11_011815_add_order_color_table',12),(47,'2022_10_11_020614_add_order_plan_table',13),(48,'2022_10_11_030052_add_order_brand_table',14),(49,'2022_10_11_031533_add_order_model_table',15),(50,'2022_10_11_032052_add_deteled_at_model_table',16),(56,'2022_10_11_035350_create_checkout_table',17),(57,'2022_10_11_035933_create_payments_methods_table',17),(59,'2022_10_11_085419_create_payments_table',18),(60,'2022_10_13_092715_add_default_payment_method_table',19),(61,'2022_11_01_090957_add_images_motorcycle_table',20);

/*Table structure for table `model` */

DROP TABLE IF EXISTS `model`;

CREATE TABLE `model` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` smallint(6) DEFAULT '1',
  `brand_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `model_brand_id_foreign` (`brand_id`),
  CONSTRAINT `model_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `model` */

insert  into `model`(`id`,`name`,`order`,`brand_id`,`status`,`created_at`,`updated_at`,`deleted_at`) values (1,'RSV4 RF',1,1,1,'2022-10-11 03:26:54','2022-10-22 19:26:22',NULL),(2,'sadfas dfsadf',6,2,1,'2022-10-22 23:47:41','2022-10-22 23:47:41',NULL);

/*Table structure for table `motorcycle` */

DROP TABLE IF EXISTS `motorcycle`;

CREATE TABLE `motorcycle` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_plan_id` bigint(20) unsigned NOT NULL,
  `transmission_id` bigint(20) unsigned DEFAULT NULL,
  `brake_id` bigint(20) unsigned DEFAULT NULL,
  `color_id` bigint(20) unsigned DEFAULT NULL,
  `condition_id` bigint(20) unsigned DEFAULT NULL,
  `brand_id` bigint(20) unsigned NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motor` int(11) NOT NULL,
  `kilometres` int(11) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `price` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `motorcycle_user_plan_id_foreign` (`user_plan_id`),
  KEY `motorcycle_transmission_id_foreign` (`transmission_id`),
  KEY `motorcycle_brake_id_foreign` (`brake_id`),
  KEY `motorcycle_color_id_foreign` (`color_id`),
  KEY `motorcycle_condition_id_foreign` (`condition_id`),
  KEY `motorcycle_brand_id_foreign` (`brand_id`),
  KEY `motorcycle_model_id_foreign` (`model_id`),
  CONSTRAINT `motorcycle_brake_id_foreign` FOREIGN KEY (`brake_id`) REFERENCES `brake` (`id`) ON DELETE CASCADE,
  CONSTRAINT `motorcycle_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE,
  CONSTRAINT `motorcycle_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`) ON DELETE CASCADE,
  CONSTRAINT `motorcycle_condition_id_foreign` FOREIGN KEY (`condition_id`) REFERENCES `condition` (`id`) ON DELETE CASCADE,
  CONSTRAINT `motorcycle_model_id_foreign` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`) ON DELETE CASCADE,
  CONSTRAINT `motorcycle_transmission_id_foreign` FOREIGN KEY (`transmission_id`) REFERENCES `transmission` (`id`) ON DELETE CASCADE,
  CONSTRAINT `motorcycle_user_plan_id_foreign` FOREIGN KEY (`user_plan_id`) REFERENCES `user_plan` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `motorcycle` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

insert  into `password_resets`(`email`,`token`,`created_at`) values ('paul.auqui@codemotion.com.ec','$2y$10$HvV/jKUBpM53ojq19y47s.9icXsZFeW.zTzX3gNDQxYOfB8MwxVW.','2022-09-09 15:29:44'),('alex@sastudio.ec','$2y$10$Una0tJEfFsKPKR2rc5fIGOCcSQZCjIIsQ24fdivyyWHMs6zI1UF4m','2022-09-09 22:01:10');

/*Table structure for table `payment_period` */

DROP TABLE IF EXISTS `payment_period`;

CREATE TABLE `payment_period` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` smallint(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `payment_period` */

insert  into `payment_period`(`id`,`name`,`days`,`status`,`created_at`,`updated_at`,`deleted_at`) values (1,'Mensual',30,1,'2022-10-11 02:02:02','2022-10-11 02:02:13',NULL),(2,'Anual',365,1,'2022-10-11 02:02:28','2022-10-11 02:02:28',NULL);

/*Table structure for table `payments` */

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_plan_id` bigint(20) unsigned NOT NULL,
  `payment_method_id` bigint(20) unsigned NOT NULL,
  `checkout_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_user_plan_id_foreign` (`user_plan_id`),
  KEY `payments_payment_method_id_foreign` (`payment_method_id`),
  KEY `payments_checkout_id_foreign` (`checkout_id`),
  CONSTRAINT `payments_checkout_id_foreign` FOREIGN KEY (`checkout_id`) REFERENCES `checkout` (`id`) ON DELETE CASCADE,
  CONSTRAINT `payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payments_methods` (`id`) ON DELETE CASCADE,
  CONSTRAINT `payments_user_plan_id_foreign` FOREIGN KEY (`user_plan_id`) REFERENCES `user_plan` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `payments` */

/*Table structure for table `payments_methods` */

DROP TABLE IF EXISTS `payments_methods`;

CREATE TABLE `payments_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` smallint(6) DEFAULT '1',
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `default` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `payments_methods` */

insert  into `payments_methods`(`id`,`name`,`order`,`key`,`description`,`default`,`status`,`created_at`,`updated_at`,`deleted_at`) values (1,'TRANSFERENCIA BANCARIA DIRECTA',1,'TRANSFERENCIA','Realiza tu pago directamente en nuestra cuenta bancaria. Por favor, usa el número del pedido como referencia de pago. Tu pedido no se procesará hasta que se haya recibido el importe en nuestra cuenta.',1,1,'2022-10-11 09:07:17','2022-10-13 09:29:44',NULL),(2,'TARJETA DE CREDITO',2,'TARJETACREDITO','Realiza tu pago directamente en nuestra cuenta bancaria. Por favor, usa el número del pedido como referencia de pago. Tu pedido no se procesará hasta que se haya recibido el importe en nuestra cuenta.',0,0,'2022-10-13 08:50:26','2022-10-22 23:41:30',NULL),(3,'Pay-phone',3,'Pay-phone','ASSSS',0,0,'2022-10-22 23:42:35','2022-10-22 23:43:10',NULL);

/*Table structure for table `permission_role` */

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permission_role` */

insert  into `permission_role`(`permission_id`,`role_id`) values (1,1),(1,2),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(76,2),(77,1),(77,2),(78,1),(78,2),(79,1),(79,2),(80,1),(80,2),(81,1),(81,2),(82,1),(82,2),(83,1),(83,2),(84,1),(84,2),(85,1),(85,2),(86,1),(87,1),(88,1),(89,1),(90,1);

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`key`,`table_name`,`created_at`,`updated_at`) values (1,'browse_admin',NULL,'2022-09-06 20:58:14','2022-09-06 20:58:14'),(2,'browse_bread',NULL,'2022-09-06 20:58:14','2022-09-06 20:58:14'),(3,'browse_database',NULL,'2022-09-06 20:58:14','2022-09-06 20:58:14'),(4,'browse_media',NULL,'2022-09-06 20:58:14','2022-09-06 20:58:14'),(5,'browse_compass',NULL,'2022-09-06 20:58:14','2022-09-06 20:58:14'),(6,'browse_menus','menus','2022-09-06 20:58:14','2022-09-06 20:58:14'),(7,'read_menus','menus','2022-09-06 20:58:14','2022-09-06 20:58:14'),(8,'edit_menus','menus','2022-09-06 20:58:14','2022-09-06 20:58:14'),(9,'add_menus','menus','2022-09-06 20:58:14','2022-09-06 20:58:14'),(10,'delete_menus','menus','2022-09-06 20:58:14','2022-09-06 20:58:14'),(11,'browse_roles','roles','2022-09-06 20:58:14','2022-09-06 20:58:14'),(12,'read_roles','roles','2022-09-06 20:58:14','2022-09-06 20:58:14'),(13,'edit_roles','roles','2022-09-06 20:58:14','2022-09-06 20:58:14'),(14,'add_roles','roles','2022-09-06 20:58:14','2022-09-06 20:58:14'),(15,'delete_roles','roles','2022-09-06 20:58:14','2022-09-06 20:58:14'),(16,'browse_users','users','2022-09-06 20:58:14','2022-09-06 20:58:14'),(17,'read_users','users','2022-09-06 20:58:14','2022-09-06 20:58:14'),(18,'edit_users','users','2022-09-06 20:58:14','2022-09-06 20:58:14'),(19,'add_users','users','2022-09-06 20:58:14','2022-09-06 20:58:14'),(20,'delete_users','users','2022-09-06 20:58:14','2022-09-06 20:58:14'),(21,'browse_settings','settings','2022-09-06 20:58:14','2022-09-06 20:58:14'),(22,'read_settings','settings','2022-09-06 20:58:14','2022-09-06 20:58:14'),(23,'edit_settings','settings','2022-09-06 20:58:14','2022-09-06 20:58:14'),(24,'add_settings','settings','2022-09-06 20:58:14','2022-09-06 20:58:14'),(25,'delete_settings','settings','2022-09-06 20:58:14','2022-09-06 20:58:14'),(31,'browse_condition','condition','2022-10-11 00:55:45','2022-10-11 00:55:45'),(32,'read_condition','condition','2022-10-11 00:55:45','2022-10-11 00:55:45'),(33,'edit_condition','condition','2022-10-11 00:55:45','2022-10-11 00:55:45'),(34,'add_condition','condition','2022-10-11 00:55:45','2022-10-11 00:55:45'),(35,'delete_condition','condition','2022-10-11 00:55:45','2022-10-11 00:55:45'),(36,'browse_color','color','2022-10-11 01:30:55','2022-10-11 01:30:55'),(37,'read_color','color','2022-10-11 01:30:55','2022-10-11 01:30:55'),(38,'edit_color','color','2022-10-11 01:30:55','2022-10-11 01:30:55'),(39,'add_color','color','2022-10-11 01:30:55','2022-10-11 01:30:55'),(40,'delete_color','color','2022-10-11 01:30:55','2022-10-11 01:30:55'),(41,'browse_brake','brake','2022-10-11 01:39:36','2022-10-11 01:39:36'),(42,'read_brake','brake','2022-10-11 01:39:36','2022-10-11 01:39:36'),(43,'edit_brake','brake','2022-10-11 01:39:36','2022-10-11 01:39:36'),(44,'add_brake','brake','2022-10-11 01:39:36','2022-10-11 01:39:36'),(45,'delete_brake','brake','2022-10-11 01:39:36','2022-10-11 01:39:36'),(46,'browse_extra_type','extra_type','2022-10-11 01:48:47','2022-10-11 01:48:47'),(47,'read_extra_type','extra_type','2022-10-11 01:48:47','2022-10-11 01:48:47'),(48,'edit_extra_type','extra_type','2022-10-11 01:48:47','2022-10-11 01:48:47'),(49,'add_extra_type','extra_type','2022-10-11 01:48:47','2022-10-11 01:48:47'),(50,'delete_extra_type','extra_type','2022-10-11 01:48:47','2022-10-11 01:48:47'),(51,'browse_payment_period','payment_period','2022-10-11 02:00:35','2022-10-11 02:00:35'),(52,'read_payment_period','payment_period','2022-10-11 02:00:35','2022-10-11 02:00:35'),(53,'edit_payment_period','payment_period','2022-10-11 02:00:35','2022-10-11 02:00:35'),(54,'add_payment_period','payment_period','2022-10-11 02:00:35','2022-10-11 02:00:35'),(55,'delete_payment_period','payment_period','2022-10-11 02:00:35','2022-10-11 02:00:35'),(56,'browse_plan','plan','2022-10-11 02:08:54','2022-10-11 02:08:54'),(57,'read_plan','plan','2022-10-11 02:08:54','2022-10-11 02:08:54'),(58,'edit_plan','plan','2022-10-11 02:08:54','2022-10-11 02:08:54'),(59,'add_plan','plan','2022-10-11 02:08:54','2022-10-11 02:08:54'),(60,'delete_plan','plan','2022-10-11 02:08:54','2022-10-11 02:08:54'),(61,'browse_brand','brand','2022-10-11 03:04:47','2022-10-11 03:04:47'),(62,'read_brand','brand','2022-10-11 03:04:47','2022-10-11 03:04:47'),(63,'edit_brand','brand','2022-10-11 03:04:47','2022-10-11 03:04:47'),(64,'add_brand','brand','2022-10-11 03:04:47','2022-10-11 03:04:47'),(65,'delete_brand','brand','2022-10-11 03:04:47','2022-10-11 03:04:47'),(66,'browse_model','model','2022-10-11 03:18:49','2022-10-11 03:18:49'),(67,'read_model','model','2022-10-11 03:18:49','2022-10-11 03:18:49'),(68,'edit_model','model','2022-10-11 03:18:49','2022-10-11 03:18:49'),(69,'add_model','model','2022-10-11 03:18:49','2022-10-11 03:18:49'),(70,'delete_model','model','2022-10-11 03:18:49','2022-10-11 03:18:49'),(71,'browse_payments_methods','payments_methods','2022-10-11 04:16:27','2022-10-11 04:16:27'),(72,'read_payments_methods','payments_methods','2022-10-11 04:16:27','2022-10-11 04:16:27'),(73,'edit_payments_methods','payments_methods','2022-10-11 04:16:27','2022-10-11 04:16:27'),(74,'add_payments_methods','payments_methods','2022-10-11 04:16:27','2022-10-11 04:16:27'),(75,'delete_payments_methods','payments_methods','2022-10-11 04:16:27','2022-10-11 04:16:27'),(76,'browse_checkout','checkout','2022-10-11 09:27:53','2022-10-11 09:27:53'),(77,'read_checkout','checkout','2022-10-11 09:27:53','2022-10-11 09:27:53'),(78,'edit_checkout','checkout','2022-10-11 09:27:53','2022-10-11 09:27:53'),(79,'add_checkout','checkout','2022-10-11 09:27:53','2022-10-11 09:27:53'),(80,'delete_checkout','checkout','2022-10-11 09:27:53','2022-10-11 09:27:53'),(81,'browse_motorcycle','motorcycle','2022-10-22 16:22:47','2022-10-22 16:22:47'),(82,'read_motorcycle','motorcycle','2022-10-22 16:22:47','2022-10-22 16:22:47'),(83,'edit_motorcycle','motorcycle','2022-10-22 16:22:47','2022-10-22 16:22:47'),(84,'add_motorcycle','motorcycle','2022-10-22 16:22:47','2022-10-22 16:22:47'),(85,'delete_motorcycle','motorcycle','2022-10-22 16:22:47','2022-10-22 16:22:47'),(86,'browse_transmission','transmission','2022-10-22 19:10:04','2022-10-22 19:10:04'),(87,'read_transmission','transmission','2022-10-22 19:10:04','2022-10-22 19:10:04'),(88,'edit_transmission','transmission','2022-10-22 19:10:04','2022-10-22 19:10:04'),(89,'add_transmission','transmission','2022-10-22 19:10:04','2022-10-22 19:10:04'),(90,'delete_transmission','transmission','2022-10-22 19:10:04','2022-10-22 19:10:04');

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `plan` */

DROP TABLE IF EXISTS `plan`;

CREATE TABLE `plan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_period_id` bigint(20) unsigned DEFAULT NULL,
  `duration` smallint(6) DEFAULT NULL,
  `publication` smallint(6) DEFAULT NULL,
  `featured` smallint(6) DEFAULT NULL,
  `microsite` smallint(6) DEFAULT NULL,
  `price` smallint(6) DEFAULT NULL,
  `default` tinyint(1) NOT NULL,
  `order` smallint(6) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plan_payment_period_id_foreign` (`payment_period_id`),
  CONSTRAINT `plan_payment_period_id_foreign` FOREIGN KEY (`payment_period_id`) REFERENCES `payment_period` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `plan` */

insert  into `plan`(`id`,`name`,`payment_period_id`,`duration`,`publication`,`featured`,`microsite`,`price`,`default`,`order`,`status`,`created_at`,`updated_at`,`deleted_at`) values (1,'GRATIS',NULL,15,2,NULL,NULL,NULL,1,1,1,'2022-10-11 02:45:14','2022-10-11 02:45:14',NULL),(2,'STARTER',1,NULL,5,2,NULL,35,0,2,1,'2022-10-11 02:46:46','2022-10-11 02:54:53',NULL),(3,'DEALER',1,NULL,20,8,1,120,0,3,1,'2022-10-11 02:52:43','2022-10-11 02:55:04',NULL);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`display_name`,`created_at`,`updated_at`) values (1,'admin','Administrator','2022-09-06 20:58:14','2022-09-06 20:58:14'),(2,'user','Normal User','2022-09-06 20:58:14','2022-09-06 20:58:14');

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values ('VAx9BQbma8yohmAmqFpGz0IQlkvnyZBtaASoDZ19',3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNUhoVElCWDE4WEdpZ3Y0OVJvbGRxQldGazRYYWs4QTJsRVJTam51SCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo1MDoiaHR0cDovL2xvY2FsaG9zdDoxNzU1My9hZG1pbi9icmVhZC9tb3RvcmN5Y2xlL2VkaXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1667383134);

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

insert  into `settings`(`id`,`key`,`display_name`,`value`,`details`,`type`,`order`,`group`) values (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','settings\\October2022\\nZDpPu71srHfOpMZUrnN.jpeg','','image',5,'Admin'),(6,'admin.title','Admin Title','MotoPatio','','text',1,'Admin'),(7,'admin.description','Admin Description','Admin','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','settings\\October2022\\Sx2CY4tG6666HsCPDoDS.jpg','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');

/*Table structure for table `translations` */

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `translations` */

/*Table structure for table `transmission` */

DROP TABLE IF EXISTS `transmission`;

CREATE TABLE `transmission` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `transmission` */

insert  into `transmission`(`id`,`name`,`status`,`created_at`,`updated_at`,`deleted_at`) values (1,'Automático',1,'2022-10-22 19:12:12','2022-10-22 19:18:02',NULL),(2,'Manual',1,'2022-10-22 19:12:24','2022-10-22 19:12:24',NULL),(3,'Semi-automatico',1,'2022-10-22 19:18:17','2022-10-22 19:18:17',NULL);

/*Table structure for table `user_plan` */

DROP TABLE IF EXISTS `user_plan`;

CREATE TABLE `user_plan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `plan_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_plan_user_id_foreign` (`user_id`),
  KEY `user_plan_plan_id_foreign` (`plan_id`),
  CONSTRAINT `user_plan_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_plan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_plan` */

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_roles` */

insert  into `user_roles`(`user_id`,`role_id`) values (2,1),(2,2);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`role_id`,`name`,`email`,`avatar`,`email_verified_at`,`password`,`two_factor_secret`,`two_factor_recovery_codes`,`two_factor_confirmed_at`,`remember_token`,`settings`,`current_team_id`,`profile_photo_path`,`created_at`,`updated_at`,`last_name`,`phone`,`facebook`,`twitter`,`linkedin`,`youtube`) values (1,2,'Paul Auqui','i@admin.com','users\\October2022\\FpsAb09hYuxUKG0lSOFa.jpg',NULL,'$2y$10$NVNIQSEf5EX1S7iFTPmZh.KadzFXdagpRJ6l5AAE2s6VUItPJkJqq',NULL,NULL,NULL,'EpsDWD1N17WoZ8dSQyjeVzCDwub8iaiXpewLWqsdGCwjO1G5WttaUAp1buXO','{\"locale\":\"es\"}',NULL,NULL,'2022-09-06 20:54:23','2022-10-07 09:12:44',NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'Alex','alex@sastudio.ec','users\\October2022\\fzC9SH9R53fdnTY10LmB.jpg',NULL,'$2y$10$vBRvxWerXu6xiCHJJv0sXeTlhubCSbZFs4JmzH8BoB79Z5AYPtCXi',NULL,NULL,NULL,'CRVA5kWH7nC4nnpdU0rmexXtwYRI92BZyVEnUGD3HD9Ht9umu7r8MPAT5y0x','{\"locale\":\"es\"}',NULL,NULL,'2022-09-09 21:59:15','2022-10-07 09:11:23',NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'Admin','admin@motopatio.com','users\\October2022\\hEA1hMaAL4hmM89345QL.png',NULL,'$2y$10$oF89rTZxLURp1o9HKQVdNOJjsinldFJLG3Kily0MDApPDEsgU7oc6',NULL,NULL,NULL,'1ZcDYGcnu4kmVk88BP5utV82dZYswIxUnpuYGJrPDJNdfetQ318Norqiq1An','{\"locale\":\"es\"}',NULL,NULL,'2022-10-07 08:59:26','2022-10-07 09:08:28',NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
