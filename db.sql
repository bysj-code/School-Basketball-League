/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaolanqiu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaolanqiu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaolanqiu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1话费电话费','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-18 13:38:20'),(2,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-18 13:38:20'),(3,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-18 13:38:20'),(4,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-18 13:38:20'),(5,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-05-18 13:38:20'),(6,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-05-18 13:38:20'),(7,'qiudui_types','球队类型',1,'球队类型1',NULL,NULL,'2023-05-18 13:38:20'),(8,'qiudui_types','球队类型',2,'球队类型2',NULL,NULL,'2023-05-18 13:38:20'),(9,'qiudui_types','球队类型',3,'球队类型3',NULL,NULL,'2023-05-18 13:38:20'),(10,'qiudui_types','球队类型',4,'球队类型4',NULL,NULL,'2023-05-18 13:38:20'),(11,'qiudui_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-18 13:38:20'),(12,'qiudui_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-05-18 13:38:20'),(13,'qiudui_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-05-18 13:38:20'),(14,'guoji_types','国籍',1,'中国',NULL,NULL,'2023-05-18 13:38:20'),(15,'guoji_types','国籍',2,'法国',NULL,NULL,'2023-05-18 13:38:20'),(16,'guoji_types','国籍',3,'英国',NULL,NULL,'2023-05-18 13:38:20'),(17,'qiuyuan_types','球员位置',1,'前锋',NULL,NULL,'2023-05-18 13:38:21'),(18,'qiuyuan_types','球员位置',2,'后卫',NULL,NULL,'2023-05-18 13:38:21'),(19,'qiuyuan_types','球员位置',3,'中锋',NULL,NULL,'2023-05-18 13:38:21'),(20,'qiuyuan_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-18 13:38:21'),(21,'qiuyuan_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-05-18 13:38:21'),(22,'qiuyuan_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-05-18 13:38:21'),(23,'saishixinxi_types','阶段',1,'小组赛',NULL,NULL,'2023-05-18 13:38:21'),(24,'saishixinxi_types','阶段',2,'八强赛',NULL,NULL,'2023-05-18 13:38:21'),(25,'saishixinxi_types','阶段',3,'四强',NULL,NULL,'2023-05-18 13:38:21'),(26,'saishixinxi_types','阶段',4,'决赛',NULL,NULL,'2023-05-18 13:38:21'),(27,'shengli_types','胜利队伍',1,'暂无',NULL,NULL,'2023-05-18 13:38:21'),(28,'shengli_types','胜利队伍',2,'主队',NULL,NULL,'2023-05-18 13:38:21'),(29,'shengli_types','胜利队伍',3,'客队',NULL,NULL,'2023-05-18 13:38:21'),(30,'shengli_types','胜利队伍',4,'平局',NULL,NULL,'2023-05-18 13:38:21'),(31,'saishixinxi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-18 13:38:21');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-05-18 13:38:23','公告详情1','2023-05-18 13:38:23'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-05-18 13:38:23','公告详情2','2023-05-18 13:38:23'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-05-18 13:38:23','公告详情3','2023-05-18 13:38:23'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-05-18 13:38:23','公告详情4','2023-05-18 13:38:23'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-05-18 13:38:23','公告详情5','2023-05-18 13:38:23'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-05-18 13:38:23','公告详情6','2023-05-18 13:38:23'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-05-18 13:38:23','公告详情7','2023-05-18 13:38:23'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-05-18 13:38:23','公告详情8','2023-05-18 13:38:23'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-05-18 13:38:23','公告详情9','2023-05-18 13:38:23'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-05-18 13:38:23','公告详情10','2023-05-18 13:38:23'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-05-18 13:38:23','公告详情11','2023-05-18 13:38:23'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-05-18 13:38:23','公告详情12','2023-05-18 13:38:23'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-05-18 13:38:23','公告详情13','2023-05-18 13:38:23'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-05-18 13:38:23','<p>公告详情14个大师傅噶十多个</p>','2023-05-18 13:38:23');

/*Table structure for table `qiudui` */

DROP TABLE IF EXISTS `qiudui`;

CREATE TABLE `qiudui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiudui_uuid_number` varchar(200) DEFAULT NULL COMMENT '球队编号',
  `qiudui_name` varchar(200) DEFAULT NULL COMMENT '球队名称  Search111 ',
  `qiudui_photo` varchar(200) DEFAULT NULL COMMENT '球队照片',
  `qiudui_address` varchar(200) DEFAULT NULL COMMENT '球队位置',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `qiudui_types` int(11) DEFAULT NULL COMMENT '球队类型 Search111',
  `qiudui_shenglv` varchar(200) DEFAULT NULL COMMENT '胜率',
  `qiudui_clicknum` int(11) DEFAULT NULL COMMENT '球队热度',
  `qiudui_content` longtext COMMENT '球队介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='球队';

/*Data for the table `qiudui` */

insert  into `qiudui`(`id`,`qiudui_uuid_number`,`qiudui_name`,`qiudui_photo`,`qiudui_address`,`zan_number`,`cai_number`,`qiudui_types`,`qiudui_shenglv`,`qiudui_clicknum`,`qiudui_content`,`insert_time`,`create_time`) values (1,'1684388304040','球队名称1','upload/qiudui1.jpg','球队位置1',434,392,1,'胜率1',442,'球队介绍1','2023-05-18 13:38:23','2023-05-18 13:38:23'),(2,'1684388304009','球队名称2','upload/qiudui2.jpg','球队位置2',2,174,3,'胜率2',139,'球队介绍2','2023-05-18 13:38:23','2023-05-18 13:38:23'),(3,'1684388304010','球队名称3','upload/qiudui3.jpg','球队位置3',190,49,3,'胜率3',255,'球队介绍3','2023-05-18 13:38:23','2023-05-18 13:38:23'),(4,'1684388304000','球队名称4','upload/qiudui4.jpg','球队位置4',156,199,4,'胜率4',281,'球队介绍4','2023-05-18 13:38:23','2023-05-18 13:38:23'),(5,'1684388304019','球队名称5','upload/qiudui5.jpg','球队位置5',148,67,4,'胜率5',274,'球队介绍5','2023-05-18 13:38:23','2023-05-18 13:38:23'),(6,'1684388303979','球队名称6','upload/qiudui6.jpg','球队位置6',154,412,2,'胜率6',51,'球队介绍6','2023-05-18 13:38:23','2023-05-18 13:38:23'),(7,'1684388303982','球队名称7','upload/qiudui7.jpg','球队位置7',252,237,3,'胜率7',369,'球队介绍7','2023-05-18 13:38:23','2023-05-18 13:38:23'),(8,'1684388303953','球队名称8','upload/qiudui8.jpg','球队位置8',99,10,4,'胜率8',92,'球队介绍8','2023-05-18 13:38:23','2023-05-18 13:38:23'),(9,'1684388304021','球队名称9','upload/qiudui9.jpg','球队位置9',56,493,2,'胜率9',115,'球队介绍9','2023-05-18 13:38:23','2023-05-18 13:38:23'),(10,'1684388303954','球队名称10','upload/qiudui10.jpg','球队位置10',133,258,3,'胜率10',278,'球队介绍10','2023-05-18 13:38:23','2023-05-18 13:38:23'),(11,'1684388303963','球队名称11','upload/qiudui11.jpg','球队位置11',3,99,1,'胜率11',463,'球队介绍11','2023-05-18 13:38:23','2023-05-18 13:38:23'),(12,'1684388304028','球队名称12','upload/qiudui12.jpg','球队位置12',235,399,1,'胜率12',111,'球队介绍12','2023-05-18 13:38:23','2023-05-18 13:38:23'),(13,'1684388304033','球队名称13','upload/qiudui13.jpg','球队位置13',280,425,1,'胜率13',327,'球队介绍13','2023-05-18 13:38:23','2023-05-18 13:38:23'),(14,'1684388304032','球队名称14','upload/qiudui14.jpg','球队位置14',137,108,2,'54%',104,'<p>球队介绍14</p>','2023-05-18 13:38:23','2023-05-18 13:38:23');

/*Table structure for table `qiudui_collection` */

DROP TABLE IF EXISTS `qiudui_collection`;

CREATE TABLE `qiudui_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiudui_id` int(11) DEFAULT NULL COMMENT '球队',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiudui_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='球队收藏';

/*Data for the table `qiudui_collection` */

insert  into `qiudui_collection`(`id`,`qiudui_id`,`yonghu_id`,`qiudui_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(2,2,1,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(3,3,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(4,4,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(5,5,1,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(6,6,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(7,7,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(8,8,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(9,9,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(10,10,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(11,11,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(12,12,1,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(13,13,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(14,14,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(15,10,4,3,'2023-05-18 13:48:39','2023-05-18 13:48:39'),(16,10,4,1,'2023-05-18 13:48:44','2023-05-18 13:48:44');

/*Table structure for table `qiudui_liuyan` */

DROP TABLE IF EXISTS `qiudui_liuyan`;

CREATE TABLE `qiudui_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiudui_id` int(11) DEFAULT NULL COMMENT '球队',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiudui_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='球队留言';

/*Data for the table `qiudui_liuyan` */

insert  into `qiudui_liuyan`(`id`,`qiudui_id`,`yonghu_id`,`qiudui_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-05-18 13:38:23','回复信息1','2023-05-18 13:38:23','2023-05-18 13:38:23'),(2,2,3,'留言内容2','2023-05-18 13:38:23','回复信息2','2023-05-18 13:38:23','2023-05-18 13:38:23'),(3,3,3,'留言内容3','2023-05-18 13:38:23','回复信息3','2023-05-18 13:38:23','2023-05-18 13:38:23'),(4,4,2,'留言内容4','2023-05-18 13:38:23','回复信息4','2023-05-18 13:38:23','2023-05-18 13:38:23'),(5,5,3,'留言内容5','2023-05-18 13:38:23','回复信息5','2023-05-18 13:38:23','2023-05-18 13:38:23'),(6,6,2,'留言内容6','2023-05-18 13:38:23','回复信息6','2023-05-18 13:38:23','2023-05-18 13:38:23'),(7,7,1,'留言内容7','2023-05-18 13:38:23','回复信息7','2023-05-18 13:38:23','2023-05-18 13:38:23'),(8,8,3,'留言内容8','2023-05-18 13:38:23','回复信息8','2023-05-18 13:38:23','2023-05-18 13:38:23'),(9,9,2,'留言内容9','2023-05-18 13:38:23','回复信息9','2023-05-18 13:38:23','2023-05-18 13:38:23'),(10,10,2,'留言内容10','2023-05-18 13:38:23','回复信息10','2023-05-18 13:38:23','2023-05-18 13:38:23'),(11,11,2,'留言内容11','2023-05-18 13:38:23','回复信息11','2023-05-18 13:38:23','2023-05-18 13:38:23'),(12,12,3,'留言内容12','2023-05-18 13:38:23','回复信息12','2023-05-18 13:38:23','2023-05-18 13:38:23'),(13,13,3,'留言内容13','2023-05-18 13:38:23','回复信息13','2023-05-18 13:38:23','2023-05-18 13:38:23'),(14,14,2,'留言内容14','2023-05-18 13:38:23','回复信息14','2023-05-18 13:38:23','2023-05-18 13:38:23'),(15,10,4,'gdsg第三个十多个','2023-05-18 13:48:47','郭德纲是个','2023-05-18 13:51:14','2023-05-18 13:48:47');

/*Table structure for table `qiuyuan` */

DROP TABLE IF EXISTS `qiuyuan`;

CREATE TABLE `qiuyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiudui_id` int(11) DEFAULT NULL COMMENT '球队',
  `qiuyuan_name` varchar(200) DEFAULT NULL COMMENT '球员名称  Search111 ',
  `shangpin_shengao` decimal(10,2) DEFAULT NULL COMMENT '身高(米) ',
  `shangpin_tizhong` decimal(10,2) DEFAULT NULL COMMENT '体重(kg)',
  `guoji_types` int(11) DEFAULT NULL COMMENT '国籍 Search111',
  `qiuyuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '球员编号',
  `qiuyuan_shengri` varchar(200) DEFAULT NULL COMMENT '生日',
  `qiuyuan_photo` varchar(200) DEFAULT NULL COMMENT '球员照片',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `qiuyuan_types` int(11) DEFAULT NULL COMMENT '球员位置 Search111',
  `rudui_time` timestamp NULL DEFAULT NULL COMMENT '入队时间',
  `qiuyuan_content` longtext COMMENT '球员介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='球员';

/*Data for the table `qiuyuan` */

insert  into `qiuyuan`(`id`,`qiudui_id`,`qiuyuan_name`,`shangpin_shengao`,`shangpin_tizhong`,`guoji_types`,`qiuyuan_uuid_number`,`qiuyuan_shengri`,`qiuyuan_photo`,`zan_number`,`cai_number`,`qiuyuan_types`,`rudui_time`,`qiuyuan_content`,`insert_time`,`create_time`) values (1,1,'球员名称1','686.91','686.04',2,'1684388304037','生日1','upload/qiuyuan1.jpg',371,293,2,'2023-05-18 13:38:23','球员介绍1','2023-05-18 13:38:23','2023-05-18 13:38:23'),(2,2,'球员名称2','565.97','432.53',2,'1684388303959','生日2','upload/qiuyuan2.jpg',397,447,1,'2023-05-18 13:38:23','球员介绍2','2023-05-18 13:38:23','2023-05-18 13:38:23'),(3,3,'球员名称3','540.34','870.77',3,'1684388303968','生日3','upload/qiuyuan3.jpg',82,281,3,'2023-05-18 13:38:23','球员介绍3','2023-05-18 13:38:23','2023-05-18 13:38:23'),(4,4,'球员名称4','159.16','437.81',1,'1684388304049','生日4','upload/qiuyuan4.jpg',425,277,2,'2023-05-18 13:38:23','球员介绍4','2023-05-18 13:38:23','2023-05-18 13:38:23'),(5,5,'球员名称5','106.06','571.26',1,'1684388304015','生日5','upload/qiuyuan5.jpg',75,208,1,'2023-05-18 13:38:23','球员介绍5','2023-05-18 13:38:23','2023-05-18 13:38:23'),(6,6,'球员名称6','266.51','720.37',3,'1684388303972','生日6','upload/qiuyuan6.jpg',36,85,3,'2023-05-18 13:38:23','球员介绍6','2023-05-18 13:38:23','2023-05-18 13:38:23'),(7,7,'球员名称7','439.51','135.33',3,'1684388304023','生日7','upload/qiuyuan7.jpg',445,456,2,'2023-05-18 13:38:23','球员介绍7','2023-05-18 13:38:23','2023-05-18 13:38:23'),(8,8,'球员名称8','393.69','81.93',3,'1684388304029','生日8','upload/qiuyuan8.jpg',23,500,1,'2023-05-18 13:38:23','球员介绍8','2023-05-18 13:38:23','2023-05-18 13:38:23'),(9,9,'球员名称9','258.13','367.98',2,'1684388304037','生日9','upload/qiuyuan9.jpg',485,71,2,'2023-05-18 13:38:23','球员介绍9','2023-05-18 13:38:23','2023-05-18 13:38:23'),(10,10,'球员名称10','148.80','313.21',2,'1684388304046','生日10','upload/qiuyuan10.jpg',28,264,1,'2023-05-18 13:38:23','球员介绍10','2023-05-18 13:38:23','2023-05-18 13:38:23'),(11,11,'球员名称11','319.59','698.44',2,'1684388304007','生日11','upload/qiuyuan11.jpg',206,280,1,'2023-05-18 13:38:23','球员介绍11','2023-05-18 13:38:23','2023-05-18 13:38:23'),(12,12,'球员名称12','838.76','803.33',3,'1684388304053','生日12','upload/qiuyuan12.jpg',339,404,3,'2023-05-18 13:38:23','球员介绍12','2023-05-18 13:38:23','2023-05-18 13:38:23'),(13,13,'球员名称13','688.11','171.90',2,'1684388304052','生日13','upload/qiuyuan13.jpg',434,147,1,'2023-05-18 13:38:23','球员介绍13','2023-05-18 13:38:23','2023-05-18 13:38:23'),(14,14,'球员名称14','615.42','55.53',3,'1684388304000','生日14','upload/qiuyuan14.jpg',137,108,3,'2023-05-18 13:38:23','<p>球员介绍14</p>','2023-05-18 13:38:23','2023-05-18 13:38:23');

/*Table structure for table `qiuyuan_collection` */

DROP TABLE IF EXISTS `qiuyuan_collection`;

CREATE TABLE `qiuyuan_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiuyuan_id` int(11) DEFAULT NULL COMMENT '球员',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiuyuan_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='球员收藏';

/*Data for the table `qiuyuan_collection` */

insert  into `qiuyuan_collection`(`id`,`qiuyuan_id`,`yonghu_id`,`qiuyuan_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(2,2,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(3,3,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(4,4,1,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(5,5,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(6,6,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(7,7,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(8,8,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(9,9,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(10,10,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(11,11,1,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(12,12,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(13,13,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(14,14,1,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(15,12,4,1,'2023-05-18 13:49:30','2023-05-18 13:49:30');

/*Table structure for table `qiuyuan_liuyan` */

DROP TABLE IF EXISTS `qiuyuan_liuyan`;

CREATE TABLE `qiuyuan_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiuyuan_id` int(11) DEFAULT NULL COMMENT '球员',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiuyuan_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='球员留言';

/*Data for the table `qiuyuan_liuyan` */

insert  into `qiuyuan_liuyan`(`id`,`qiuyuan_id`,`yonghu_id`,`qiuyuan_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-05-18 13:38:23','回复信息1','2023-05-18 13:38:23','2023-05-18 13:38:23'),(2,2,3,'留言内容2','2023-05-18 13:38:23','回复信息2','2023-05-18 13:38:23','2023-05-18 13:38:23'),(3,3,1,'留言内容3','2023-05-18 13:38:23','回复信息3','2023-05-18 13:38:23','2023-05-18 13:38:23'),(4,4,2,'留言内容4','2023-05-18 13:38:23','回复信息4','2023-05-18 13:38:23','2023-05-18 13:38:23'),(5,5,2,'留言内容5','2023-05-18 13:38:23','回复信息5','2023-05-18 13:38:23','2023-05-18 13:38:23'),(6,6,2,'留言内容6','2023-05-18 13:38:23','回复信息6','2023-05-18 13:38:23','2023-05-18 13:38:23'),(7,7,2,'留言内容7','2023-05-18 13:38:23','回复信息7','2023-05-18 13:38:23','2023-05-18 13:38:23'),(8,8,3,'留言内容8','2023-05-18 13:38:23','回复信息8','2023-05-18 13:38:23','2023-05-18 13:38:23'),(9,9,3,'留言内容9','2023-05-18 13:38:23','回复信息9','2023-05-18 13:38:23','2023-05-18 13:38:23'),(10,10,2,'留言内容10','2023-05-18 13:38:23','回复信息10','2023-05-18 13:38:23','2023-05-18 13:38:23'),(11,11,2,'留言内容11','2023-05-18 13:38:23','回复信息11','2023-05-18 13:38:23','2023-05-18 13:38:23'),(12,12,3,'留言内容12','2023-05-18 13:38:23','回复信息12','2023-05-18 13:38:23','2023-05-18 13:38:23'),(13,13,3,'留言内容13','2023-05-18 13:38:23','回复信息13','2023-05-18 13:38:23','2023-05-18 13:38:23'),(14,14,3,'留言内容14','2023-05-18 13:38:23','回复信息14','2023-05-18 13:38:23','2023-05-18 13:38:23');

/*Table structure for table `saishixinxi` */

DROP TABLE IF EXISTS `saishixinxi`;

CREATE TABLE `saishixinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `saishixinxi_uuid_number` varchar(200) DEFAULT NULL COMMENT '赛事信息编号  Search111 ',
  `bisia_time` timestamp NULL DEFAULT NULL COMMENT '比赛时间',
  `saishixinxi_photo` varchar(200) DEFAULT NULL COMMENT '赛事照片',
  `saishixinxi_zhudui` varchar(200) DEFAULT NULL COMMENT '主队  Search111 ',
  `saishixinxi_kedui` varchar(200) DEFAULT NULL COMMENT '客队  Search111 ',
  `saishixinxi_changdi` varchar(200) DEFAULT NULL COMMENT '比赛场地',
  `saishixinxi_content` longtext COMMENT '比赛备注 ',
  `saishixinxi_types` int(11) DEFAULT NULL COMMENT '阶段  Search111 ',
  `shengli_types` int(11) DEFAULT NULL COMMENT '胜利队伍  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='赛事信息';

/*Data for the table `saishixinxi` */

insert  into `saishixinxi`(`id`,`saishixinxi_uuid_number`,`bisia_time`,`saishixinxi_photo`,`saishixinxi_zhudui`,`saishixinxi_kedui`,`saishixinxi_changdi`,`saishixinxi_content`,`saishixinxi_types`,`shengli_types`,`insert_time`,`create_time`) values (1,'1684388304040','2023-05-18 13:38:23','upload/saishixinxi1.jpg','主队1','客队1','比赛场地1','比赛备注1',3,3,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(2,'1684388303976','2023-05-18 13:38:23','upload/saishixinxi2.jpg','主队2','客队2','比赛场地2','比赛备注2',4,3,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(3,'1684388304052','2023-05-18 13:38:23','upload/saishixinxi3.jpg','主队3','客队3','比赛场地3','比赛备注3',4,3,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(4,'1684388304033','2023-05-18 13:38:23','upload/saishixinxi4.jpg','主队4','客队4','比赛场地4','比赛备注4',4,3,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(5,'1684388303979','2023-05-18 13:38:23','upload/saishixinxi5.jpg','主队5','客队5','比赛场地5','比赛备注5',1,4,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(6,'1684388303995','2023-05-18 13:38:23','upload/saishixinxi6.jpg','主队6','客队6','比赛场地6','比赛备注6',2,2,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(7,'1684388303976','2023-05-18 13:38:23','upload/saishixinxi7.jpg','主队7','客队7','比赛场地7','比赛备注7',3,3,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(8,'1684388304040','2023-05-18 13:38:23','upload/saishixinxi8.jpg','主队8','客队8','比赛场地8','比赛备注8',2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(9,'1684388303984','2023-05-18 13:38:23','upload/saishixinxi9.jpg','主队9','客队9','比赛场地9','比赛备注9',4,3,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(10,'1684388304045','2023-05-18 13:38:23','upload/saishixinxi10.jpg','主队10','客队10','比赛场地10','比赛备注10',3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(11,'1684388304052','2023-05-18 13:38:23','upload/saishixinxi11.jpg','主队11','客队11','比赛场地11','比赛备注11',4,2,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(12,'1684388304022','2023-05-18 13:38:23','upload/saishixinxi12.jpg','主队12','客队12','比赛场地12','比赛备注12',3,3,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(13,'1684388303970','2023-05-18 13:38:23','upload/saishixinxi13.jpg','主队13','客队13','比赛场地13','比赛备注13',3,2,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(14,'1684388303999','2023-05-18 13:38:23','upload/saishixinxi14.jpg','主队14','客队14','比赛场地14','<p>比赛备注14</p>',4,4,'2023-05-18 13:38:23','2023-05-18 13:38:23');

/*Table structure for table `saishixinxi_collection` */

DROP TABLE IF EXISTS `saishixinxi_collection`;

CREATE TABLE `saishixinxi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `saishixinxi_id` int(11) DEFAULT NULL COMMENT '赛事信息',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `saishixinxi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='赛事信息收藏';

/*Data for the table `saishixinxi_collection` */

insert  into `saishixinxi_collection`(`id`,`saishixinxi_id`,`yonghu_id`,`saishixinxi_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(2,2,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(3,3,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(4,4,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(5,5,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(6,6,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(7,7,1,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(8,8,1,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(9,9,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(10,10,1,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(11,11,3,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(12,12,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(13,13,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(14,14,2,1,'2023-05-18 13:38:23','2023-05-18 13:38:23'),(15,14,1,1,'2023-05-18 13:44:21','2023-05-18 13:44:21'),(16,13,4,1,'2023-05-18 13:48:28','2023-05-18 13:48:28'),(17,14,4,1,'2023-05-18 13:49:25','2023-05-18 13:49:25'),(18,8,4,1,'2023-05-18 13:50:08','2023-05-18 13:50:08');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','x71qoa3sn33xfcdqurst7npuhpxgf8sg','2023-05-18 13:39:48','2023-05-18 14:44:13'),(2,1,'admin','users','管理员','ta9d2j4xghm8f3mu0dpfmiscb19c3bv7','2023-05-18 13:47:03','2023-05-18 14:55:17'),(3,4,'a5','yonghu','用户','7lraoy79htlxi1cuwxkjjqcu1zazwmf6','2023-05-18 13:48:18','2023-05-18 14:48:19');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-18 13:38:20');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com',1,'2023-05-18 13:38:23'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com',1,'2023-05-18 13:38:23'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com',1,'2023-05-18 13:38:23'),(4,'a5','123456','张5','17788889999','444222333366669999','upload/1684388936309.jpg',1,'5@qq.com',2,'2023-05-18 13:48:12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
