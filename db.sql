/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - lvyouwangzhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lvyouwangzhan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lvyouwangzhan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (3,'轮播图1','http://localhost:8080/lvyouwangzhan/upload/1617365740377.jpg'),(4,'轮播图2','http://localhost:8080/lvyouwangzhan/upload/1617365747639.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-01 11:45:17'),(2,'sex_types','性别',2,'女',NULL,'2021-04-01 11:45:17'),(3,'jingdian_types','景点类型名称',3,'公园',NULL,'2021-04-01 11:45:17'),(4,'jingdian_types','景点类型名称',2,'山脉',NULL,'2021-04-01 11:45:17'),(5,'jingdian_types','景点类型名称',1,'其他',NULL,'2021-04-01 11:45:17'),(6,'jingdian_dengji_types','景点等级名称',1,'五A景点',NULL,'2021-04-01 11:45:17'),(7,'jingdian_dengji_types','景点等级名称',2,'国家景点',NULL,'2021-04-01 11:45:17'),(8,'jingdian_dengji_types','景点等级名称',3,'市级景点',NULL,'2021-04-01 11:45:17'),(9,'jingdian_dengji_types','景点等级名称',4,'其他',NULL,'2021-04-01 11:45:17'),(10,'luxian_types','路线类型名称',1,'穷游路线',NULL,'2021-04-01 11:45:17'),(11,'luxian_types','路线类型名称',2,'最短路线',NULL,'2021-04-01 11:45:17'),(12,'luxian_types','路线类型名称',3,'其他',NULL,'2021-04-01 11:45:17'),(13,'gonglve_types','攻略类型名称',1,'类型一',NULL,'2021-04-01 11:45:17'),(14,'gonglve_types','攻略类型名称',2,'类型二',NULL,'2021-04-01 11:45:17'),(15,'gonglve_types','攻略类型名称',3,'类型三',NULL,'2021-04-01 11:45:17'),(16,'jiudian_types','酒店星级名称',1,'一星酒店',NULL,'2021-04-01 11:45:17'),(17,'jiudian_types','酒店星级名称',2,'二星酒店',NULL,'2021-04-01 11:45:18'),(18,'jiudian_types','酒店星级名称',3,'三星酒店',NULL,'2021-04-01 11:45:18'),(19,'jiudian_types','酒店星级名称',4,'四星酒店',NULL,'2021-04-01 11:45:18'),(20,'jiudian_types','酒店星级名称',5,'五星酒店',NULL,'2021-04-01 11:45:18'),(21,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-04-01 11:45:18'),(22,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-04-01 11:45:18');

/*Table structure for table `gonglve` */

DROP TABLE IF EXISTS `gonglve`;

CREATE TABLE `gonglve` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonglve_name` varchar(200) DEFAULT NULL COMMENT '攻略名   ',
  `gonglve_types` int(11) DEFAULT NULL COMMENT '攻略类型   ',
  `gonglve_photo` varchar(200) DEFAULT NULL COMMENT '攻略照片',
  `gonglve_content` text COMMENT '攻略详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '攻略发表时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='自驾游攻略';

/*Data for the table `gonglve` */

insert  into `gonglve`(`id`,`gonglve_name`,`gonglve_types`,`gonglve_photo`,`gonglve_content`,`insert_time`,`create_time`) values (1,'攻略1',3,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617365770676.jpg','硕大的撒大萨达是\r\n','2021-04-02 19:52:05','2021-04-02 19:52:05'),(2,'攻略2',1,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617365762769.jfif','硕大的撒萨达\r\n','2021-04-02 19:52:40','2021-04-02 19:52:40'),(3,'攻略5',2,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617369787748.jpg','为我去饿我去我去饿q\'w\r\n','2021-04-02 21:23:10','2021-04-02 21:23:10');

/*Table structure for table `jingdian` */

DROP TABLE IF EXISTS `jingdian`;

CREATE TABLE `jingdian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名   ',
  `jingdian_types` int(11) DEFAULT NULL COMMENT '景点类型   ',
  `jingdian_dengji_types` int(11) DEFAULT NULL COMMENT '景点等级   ',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点缩略图',
  `jingdian_content` text COMMENT '景点详情',
  `jingdian_new_money` int(11) DEFAULT NULL COMMENT '参考门票价格',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间   ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='景点';

/*Data for the table `jingdian` */

insert  into `jingdian`(`id`,`jingdian_name`,`jingdian_types`,`jingdian_dengji_types`,`jingdian_photo`,`jingdian_content`,`jingdian_new_money`,`create_time`) values (1,'景点1',2,3,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617361096149.jpg','ss \r\n',99,'2021-04-02 13:19:43'),(2,'景点2',3,3,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617360934975.jpg','景点1的详情\r\n',333,'2021-04-02 18:55:44'),(3,'景点3',3,3,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617360957516.jfif','王企鹅无群额温枪\r\n',747,'2021-04-02 18:56:04'),(4,'景点4',2,1,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617360984950.jpg','委托维尔而\r\n',77,'2021-04-02 18:56:29'),(5,'景点5',3,4,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617361519603.jpg','<img src=\"http://localhost:8080/lvyouwangzhan/upload/1617361527322.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/lvyouwangzhan/upload/1617361527322.jpg\"><img src=\"http://localhost:8080/lvyouwangzhan/upload/1617361530400.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/lvyouwangzhan/upload/1617361530400.jpg\"><img src=\"http://localhost:8080/lvyouwangzhan/upload/1617361534871.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/lvyouwangzhan/upload/1617361534871.jpg\">9689898\r\n',77,'2021-04-02 18:57:00'),(6,'景点6',2,3,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617361033139.jpg','无色大所大萨达\r\n',77,'2021-04-02 18:57:18'),(7,'景点7',2,2,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617361052993.jpg','77777<img src=\"http://localhost:8080/lvyouwangzhan/upload/1617361062598.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/lvyouwangzhan/upload/1617361062598.jpg\">为爱而萨达奥恩万千瓦 \r\n',777,'2021-04-02 18:57:50');

/*Table structure for table `jingdian_collection` */

DROP TABLE IF EXISTS `jingdian_collection`;

CREATE TABLE `jingdian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='景点收藏';

/*Data for the table `jingdian_collection` */

insert  into `jingdian_collection`(`id`,`jingdian_id`,`yonghu_id`,`insert_time`,`create_time`) values (2,1,18,'2021-04-02 20:17:50','2021-04-02 20:17:50'),(3,3,18,'2021-04-02 20:17:55','2021-04-02 20:17:55'),(4,6,20,'2021-04-02 20:21:13','2021-04-02 20:21:13'),(5,5,22,'2021-04-02 21:27:35','2021-04-02 21:27:35');

/*Table structure for table `jiudian` */

DROP TABLE IF EXISTS `jiudian`;

CREATE TABLE `jiudian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_name` varchar(200) DEFAULT NULL COMMENT '酒店名称   ',
  `jiudian_types` int(11) DEFAULT NULL COMMENT '酒店星级   ',
  `jiudian_weizhi` varchar(200) DEFAULT NULL COMMENT '酒店位置   ',
  `jiudian_photo` varchar(200) DEFAULT NULL COMMENT '酒店缩略图',
  `jiudian_new_money` int(11) DEFAULT NULL COMMENT '酒店每日单价',
  `jiudian_content` text COMMENT '酒店详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间   ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='酒店';

/*Data for the table `jiudian` */

insert  into `jiudian`(`id`,`jiudian_name`,`jiudian_types`,`jiudian_weizhi`,`jiudian_photo`,`jiudian_new_money`,`jiudian_content`,`create_time`) values (1,'酒店1',5,'酒店位置1','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617360892005.jfif',10,'宿舍\r\n','2021-04-01 11:50:08'),(2,'酒店名称2',4,'酒店位置2','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617360870652.jpg',11,'是撒打算的a\r\n','2021-04-01 11:50:26'),(3,'酒店3',2,'酒店三的位置','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617360861142.jpg',13,'萨啊啥是发送到as s\r\n','2021-04-01 11:50:45');

/*Table structure for table `jiudian_liuyan` */

DROP TABLE IF EXISTS `jiudian_liuyan`;

CREATE TABLE `jiudian_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int(11) DEFAULT NULL COMMENT '酒店id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jiudian_liuyan_content` varchar(200) DEFAULT NULL COMMENT '留言内容',
  `reply_content` varchar(200) DEFAULT NULL COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='酒店留言';

/*Data for the table `jiudian_liuyan` */

insert  into `jiudian_liuyan`(`id`,`jiudian_id`,`yonghu_id`,`jiudian_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,2,20,'2222ssssadasd\r\n','sdsadsa \r\n','2021-04-02 20:22:10','2021-04-02 20:22:10'),(2,2,22,'wwww\r\n','dsadsad adsa dsa\r\n','2021-04-02 20:22:10','2021-04-02 20:22:10'),(3,2,22,'77777777\r\n','sdadsag\r\n','2021-04-02 21:31:24','2021-04-02 21:31:24');

/*Table structure for table `jiudian_order` */

DROP TABLE IF EXISTS `jiudian_order`;

CREATE TABLE `jiudian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int(11) DEFAULT NULL COMMENT '酒店id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jiudian_order_start_time` timestamp NULL DEFAULT NULL COMMENT '预定开始时间',
  `jiudian_order_end_time` timestamp NULL DEFAULT NULL COMMENT '预定结束时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='酒店订单';

/*Data for the table `jiudian_order` */

insert  into `jiudian_order`(`id`,`jiudian_id`,`yonghu_id`,`jiudian_order_start_time`,`jiudian_order_end_time`,`insert_time`,`create_time`) values (4,3,18,'2021-04-16 00:00:00','2021-04-20 00:00:00','2021-04-02 19:32:17','2021-04-02 19:32:17'),(5,2,20,'2021-04-28 00:00:00','2021-05-08 00:00:00','2021-04-02 19:32:17','2021-04-02 19:32:17'),(6,1,20,'2021-04-29 00:00:00','2021-04-30 00:00:00','2021-04-02 20:37:34','2021-04-02 20:37:34'),(7,1,22,'2021-04-15 00:00:00','2021-04-28 00:00:00','2021-04-02 21:28:00','2021-04-02 21:28:00');

/*Table structure for table `luxian` */

DROP TABLE IF EXISTS `luxian`;

CREATE TABLE `luxian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `luxian_name` varchar(200) DEFAULT NULL COMMENT '路线名   ',
  `luxian_photo` varchar(200) DEFAULT NULL COMMENT '路线照片',
  `luxian_content` text COMMENT '路线详情',
  `luxian_types` int(11) DEFAULT NULL COMMENT '路线类型   ',
  `luxian_jingdian` varchar(200) DEFAULT NULL COMMENT '路线经过景点',
  `luxian_new_money` int(11) DEFAULT NULL COMMENT '路线大概总花费',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='路线';

/*Data for the table `luxian` */

insert  into `luxian`(`id`,`luxian_name`,`luxian_photo`,`luxian_content`,`luxian_types`,`luxian_jingdian`,`luxian_new_money`,`create_time`) values (1,'路线1','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617360759067.jfif','路线1\r\n',2,'景点1   景点2',9898,'2021-04-02 18:52:52'),(2,'路线2','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617360780878.jpg','路线详情2\r\n',1,'静待你2   景点2',98987,'2021-04-02 18:53:14'),(3,'路线3','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617360803562.jpg','路线3的详情\r\n',2,'景点1   景点2',98989,'2021-04-02 18:53:34');

/*Table structure for table `luxian_collection` */

DROP TABLE IF EXISTS `luxian_collection`;

CREATE TABLE `luxian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `luxian_id` int(11) DEFAULT NULL COMMENT '路线id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='路线收藏';

/*Data for the table `luxian_collection` */

insert  into `luxian_collection`(`id`,`luxian_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,2,20,'2021-04-02 20:37:54','2021-04-02 20:37:54'),(2,2,22,'2021-04-02 21:32:18','2021-04-02 21:32:18');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称   ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型   ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间   ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻1',1,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617360687172.jfif','2021-04-02 18:51:32','新闻内容1\r\n','2021-04-02 18:51:32'),(2,'新闻2',1,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617360708357.jpg','2021-04-02 18:51:53','新闻内容223232\r\n','2021-04-02 18:51:53');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','sx0edmk6i38yrf4au4hsf7ymrucllzs4','2021-03-30 15:34:13','2021-04-03 11:14:42'),(2,1,'a1','yonghu','用户','tisw1oea6nnshm4jq0a8hx6i66pg649m','2021-03-30 17:07:38','2021-04-02 18:28:07'),(3,17,'9998','yonghu','用户','2jwyizsy32ow0xdn74l3nvfad3x8yby6','2021-04-02 17:24:38','2021-04-02 18:24:38'),(4,18,'a1','yonghu','用户','pz3n1ot22gzodfm2cp1nidwjxgme4bq7','2021-04-02 19:06:15','2021-04-02 22:23:15'),(5,20,'a3','yonghu','用户','idtgrh369352oqo6su7tkammvzpplyn1','2021-04-02 20:19:54','2021-04-02 21:19:54'),(6,22,'a9','yonghu','用户','bkux0zpib307m4fp5tb9zp6moxnokdli','2021-04-02 21:26:59','2021-04-03 10:59:47');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','123456','管理员','2021-03-11 18:12:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`id_number`,`phone`,`yonghu_photo`,`create_time`) values (18,'a1','123456','张1',1,'410224199610232011','17703789991222','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617356460803.jpg','2021-04-02 17:41:02'),(19,'a2','123456','张2',2,'410224199610232012','17703789992','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617356481794.jpg','2021-04-02 17:41:22'),(20,'a3','123456','张2',1,'410224199610232113','17703786113','http://localhost:8080/lvyouwangzhan/upload/1617366006977.jpg',NULL),(21,'a4','123456','张4',2,'410224199610232014','17703789911','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617369739628.jpg','2021-04-02 21:22:31'),(22,'a9','123456','张9',2,'410224199610232087','17703786911','http://localhost:8080/lvyouwangzhan/upload/1617370379693.jpg',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
