/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.56 : Database - pregnancytest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pregnancytest` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `pregnancytest`;

/*Table structure for table `abo` */

DROP TABLE IF EXISTS `abo`;

CREATE TABLE `abo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `abo` */

insert  into `abo`(`id`,`type`) values (1,'A'),(2,'B'),(3,'O'),(5,'AB');

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `doctorName` varchar(20) DEFAULT NULL,
  `doctorPassword` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`adminId`,`doctorName`,`doctorPassword`) values (1,'张三','123456'),(2,'王五六','123456');

/*Table structure for table `assess` */

DROP TABLE IF EXISTS `assess`;

CREATE TABLE `assess` (
  `assId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `sdId` int(11) DEFAULT NULL,
  `doctorName` varchar(20) DEFAULT NULL,
  `examineDate` date DEFAULT NULL,
  PRIMARY KEY (`assId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `assess` */

insert  into `assess`(`assId`,`userId`,`content`,`sdId`,`doctorName`,`examineDate`) values (1,2020122412,'保持健康生活方式和行为。',1,'张三','2020-04-23');

/*Table structure for table `b_ultrasound` */

DROP TABLE IF EXISTS `b_ultrasound`;

CREATE TABLE `b_ultrasound` (
  `bId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `bImgfile` varchar(100) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL COMMENT '检查结果',
  `describe` varchar(200) DEFAULT NULL COMMENT 'b超描述',
  `examineDate` datetime DEFAULT NULL COMMENT '检查日期',
  `doctorName` varchar(20) DEFAULT NULL,
  `imgSize` int(20) DEFAULT NULL,
  PRIMARY KEY (`bId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `b_ultrasound` */

insert  into `b_ultrasound`(`bId`,`userId`,`bImgfile`,`result`,`describe`,`examineDate`,`doctorName`,`imgSize`) values (1,2020122412,NULL,'正常','子宫暂未见明显异常声像','2020-04-23 16:14:05','张三',NULL);

/*Table structure for table `cgkz_result` */

DROP TABLE IF EXISTS `cgkz_result`;

CREATE TABLE `cgkz_result` (
  `cgId` int(11) NOT NULL AUTO_INCREMENT,
  `nmedicalId` int(11) DEFAULT NULL,
  `medicalId` int(11) DEFAULT NULL,
  `birthId` int(11) DEFAULT NULL,
  `doctorName` varchar(20) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`cgId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `cgkz_result` */

insert  into `cgkz_result`(`cgId`,`nmedicalId`,`medicalId`,`birthId`,`doctorName`,`createDate`,`userId`,`sex`) values (1,1,1,1,'张三','2020-04-23',2020122412,0),(2,2,2,2,'张三','2020-04-23',2020122412,1);

/*Table structure for table `clinical_billing` */

DROP TABLE IF EXISTS `clinical_billing`;

CREATE TABLE `clinical_billing` (
  `billId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `B` varchar(20) DEFAULT NULL,
  `M` varchar(20) DEFAULT NULL,
  `L` varchar(20) DEFAULT NULL,
  `zCell` varchar(20) DEFAULT NULL,
  `ABO` varchar(20) DEFAULT NULL,
  `RH` varchar(20) DEFAULT NULL,
  `bloodSugar` varchar(20) DEFAULT NULL,
  `HBsAg` varchar(20) DEFAULT NULL,
  `HBeAb` varchar(20) DEFAULT NULL,
  `HBsAb` varchar(20) DEFAULT NULL,
  `HBcAb` varchar(20) DEFAULT NULL,
  `HBeAg` varchar(20) DEFAULT NULL,
  `ALT` varchar(20) DEFAULT NULL,
  `Cr` varchar(20) DEFAULT NULL,
  `TSH` varchar(20) DEFAULT NULL,
  `fIgG` varchar(20) DEFAULT NULL,
  `TP` varchar(20) DEFAULT NULL,
  `jIgG` varchar(20) DEFAULT NULL,
  `jIgM` varchar(20) DEFAULT NULL,
  `gIgG` varchar(20) DEFAULT NULL,
  `gIgM` varchar(20) DEFAULT NULL,
  `other` varchar(20) DEFAULT NULL,
  `doctorName` varchar(20) DEFAULT NULL,
  `examineDate` date DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`billId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `clinical_billing` */

insert  into `clinical_billing`(`billId`,`userId`,`B`,`M`,`L`,`zCell`,`ABO`,`RH`,`bloodSugar`,`HBsAg`,`HBeAb`,`HBsAb`,`HBcAb`,`HBeAg`,`ALT`,`Cr`,`TSH`,`fIgG`,`TP`,`jIgG`,`jIgM`,`gIgG`,`gIgM`,`other`,`doctorName`,`examineDate`,`sex`) values (1,2020122412,NULL,NULL,'on','on','on','on','on','on','on','on','on','on','on','on','on','on','on','on','on','on','on','','张三','2020-04-23',0),(3,2020122412,NULL,NULL,'on','on','on','on','on','on','on','on','on','on','on','on','on','on','on','on','on','on','on','','张三','2020-04-23',1);

/*Table structure for table `clinical_examination` */

DROP TABLE IF EXISTS `clinical_examination`;

CREATE TABLE `clinical_examination` (
  `cId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `pissexamine` varchar(20) DEFAULT NULL,
  `abnormal` varchar(200) DEFAULT NULL,
  `abotype` varchar(20) DEFAULT NULL,
  `RH` varchar(20) DEFAULT NULL,
  `bloodSugar` varchar(20) DEFAULT NULL COMMENT '血糖含量',
  `HBsAg` varchar(20) DEFAULT NULL COMMENT '(阳性正常，阴性异常)',
  `HBeAb` varchar(20) DEFAULT NULL,
  `HBsAb` varchar(20) DEFAULT NULL,
  `HBcAb` varchar(20) DEFAULT NULL,
  `HBeAg` varchar(20) DEFAULT NULL,
  `ALT` int(11) DEFAULT NULL,
  `Cr` int(11) DEFAULT NULL,
  `TSH` int(11) DEFAULT NULL,
  `fIgG` varchar(20) DEFAULT NULL COMMENT '风疹病毒',
  `TP` varchar(20) DEFAULT NULL COMMENT '梅毒螺旋体',
  `jIgG` varchar(20) DEFAULT NULL COMMENT '巨细胞病毒IgG',
  `jIgM` varchar(20) DEFAULT NULL COMMENT '巨细胞病毒IgM',
  `gIgG` varchar(20) DEFAULT NULL COMMENT '弓形体IgG',
  `gIgM` varchar(20) DEFAULT NULL COMMENT '弓形体IgM',
  `other` varchar(200) DEFAULT NULL,
  `doctorName` varchar(20) DEFAULT NULL,
  `examineDate` date DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `clinical_examination` */

insert  into `clinical_examination`(`cId`,`userId`,`pissexamine`,`abnormal`,`abotype`,`RH`,`bloodSugar`,`HBsAg`,`HBeAb`,`HBsAb`,`HBcAb`,`HBeAg`,`ALT`,`Cr`,`TSH`,`fIgG`,`TP`,`jIgG`,`jIgM`,`gIgG`,`gIgM`,`other`,`doctorName`,`examineDate`,`sex`) values (1,2020122412,'正常',NULL,'O型','阳性','4.5','阳性','阳性','阳性','阳性','阳性',10,110,2,'阳性','阳性','阳性','阳性','阳性','阳性',NULL,'张三','2020-04-23',0),(2,2020122412,'正常',NULL,'B型','阳性','4.1','阳性','阳性','阳性','阳性','阳性',12,135,2,'阳性','阳性','阳性','阳性','阳性','阳性',NULL,'张三','2020-04-23',1);

/*Table structure for table `health_checkup` */

DROP TABLE IF EXISTS `health_checkup`;

CREATE TABLE `health_checkup` (
  `healthId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL COMMENT '身高',
  `BMI` float DEFAULT NULL COMMENT '体重指数(w/(h*h))',
  `weight` float DEFAULT NULL COMMENT '体重',
  `smmHg` int(11) DEFAULT NULL COMMENT '收缩压',
  `mmHgs` int(11) DEFAULT NULL COMMENT '舒张压',
  `P` int(11) DEFAULT NULL COMMENT '心率',
  `isSpirit` int(11) DEFAULT NULL,
  `spiritContent` varchar(100) DEFAULT NULL,
  `isTheFive` int(11) DEFAULT NULL,
  `theFiveContent` varchar(100) DEFAULT NULL,
  `isPosture` int(11) DEFAULT NULL,
  `postureContent` varchar(100) DEFAULT NULL,
  `isFace` int(11) DEFAULT NULL,
  `faceContent` varchar(100) DEFAULT NULL,
  `isHair` int(11) DEFAULT NULL,
  `hairContent` varchar(100) DEFAULT NULL,
  `isThyroid` int(11) DEFAULT NULL,
  `thyroidContent` varchar(100) DEFAULT NULL,
  `doctorName` varchar(20) DEFAULT NULL,
  `examineDate` date DEFAULT NULL,
  PRIMARY KEY (`healthId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `health_checkup` */

insert  into `health_checkup`(`healthId`,`userId`,`sex`,`height`,`BMI`,`weight`,`smmHg`,`mmHgs`,`P`,`isSpirit`,`spiritContent`,`isTheFive`,`theFiveContent`,`isPosture`,`postureContent`,`isFace`,`faceContent`,`isHair`,`hairContent`,`isThyroid`,`thyroidContent`,`doctorName`,`examineDate`) values (1,2020122412,0,160,19.5,50,NULL,NULL,90,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'张三','2020-04-23'),(2,2020122412,1,180,19.4,63,NULL,NULL,92,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'张三','2020-04-23');

/*Table structure for table `lab_work` */

DROP TABLE IF EXISTS `lab_work`;

CREATE TABLE `lab_work` (
  `lobId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `project` varchar(20) DEFAULT NULL COMMENT '项目',
  `unit` int(11) DEFAULT NULL COMMENT '单位',
  `scope` varchar(20) DEFAULT NULL COMMENT '参考范围',
  `aisle` int(11) DEFAULT NULL COMMENT '通道号',
  `projectDetails` varchar(200) DEFAULT NULL COMMENT '项目明细',
  PRIMARY KEY (`lobId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `lab_work` */

insert  into `lab_work`(`lobId`,`userId`,`sex`,`project`,`unit`,`scope`,`aisle`,`projectDetails`) values (1,2020122412,0,'肝功能',1,'1.0-1.2',4,'还行'),(2,2020122412,1,'肾功能',2,'4',12,'猛');

/*Table structure for table `marital_history` */

DROP TABLE IF EXISTS `marital_history`;

CREATE TABLE `marital_history` (
  `birthId` int(11) NOT NULL AUTO_INCREMENT,
  `isDivorced` int(11) DEFAULT NULL,
  `sonCount` int(11) DEFAULT NULL COMMENT '儿子数量',
  `girlCount` int(11) DEFAULT NULL COMMENT '女儿数量',
  `isGeneticDisease` int(11) DEFAULT NULL COMMENT '是否有遗传病',
  `geneticDisease` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`birthId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `marital_history` */

insert  into `marital_history`(`birthId`,`isDivorced`,`sonCount`,`girlCount`,`isGeneticDisease`,`geneticDisease`) values (1,0,NULL,NULL,1,NULL),(2,0,NULL,NULL,1,NULL);

/*Table structure for table `medicalhistory` */

DROP TABLE IF EXISTS `medicalhistory`;

CREATE TABLE `medicalhistory` (
  `medicalId` int(11) NOT NULL AUTO_INCREMENT,
  `typeList` varchar(20) DEFAULT NULL,
  `medicalName` varchar(50) DEFAULT NULL COMMENT '疾病名称',
  `morbidityCount` int(11) DEFAULT NULL COMMENT '发病次数',
  `latelyTime` date DEFAULT NULL COMMENT '最近发病时间',
  `isTakeMedicine` int(11) DEFAULT NULL COMMENT '是否服药',
  `capacity` varchar(20) DEFAULT NULL COMMENT '能力',
  `isOperating` int(11) DEFAULT NULL COMMENT '是否手术',
  `operatingRoom` varchar(20) DEFAULT NULL COMMENT '手术室名称',
  `operatingDate` date DEFAULT NULL COMMENT '手术时间',
  PRIMARY KEY (`medicalId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `medicalhistory` */

insert  into `medicalhistory`(`medicalId`,`typeList`,`medicalName`,`morbidityCount`,`latelyTime`,`isTakeMedicine`,`capacity`,`isOperating`,`operatingRoom`,`operatingDate`) values (1,NULL,NULL,NULL,NULL,NULL,'正常工作',0,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,'正常工作',0,NULL,NULL);

/*Table structure for table `medicalhistorytype` */

DROP TABLE IF EXISTS `medicalhistorytype`;

CREATE TABLE `medicalhistorytype` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `medicalhistorytype` */

insert  into `medicalhistorytype`(`typeId`,`type`) values (1,'遗传性疾病'),(2,'精神疾病'),(3,'先天性疾病'),(4,'传染病'),(5,'性病'),(6,'重要器官疾病'),(7,'泌尿生殖系统疾病');

/*Table structure for table `now_medicalhistory` */

DROP TABLE IF EXISTS `now_medicalhistory`;

CREATE TABLE `now_medicalhistory` (
  `nmedicalId` int(11) NOT NULL AUTO_INCREMENT,
  `ntypeList` varchar(20) DEFAULT NULL,
  `elseContent` varchar(50) DEFAULT NULL COMMENT '其他病史',
  PRIMARY KEY (`nmedicalId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `now_medicalhistory` */

insert  into `now_medicalhistory`(`nmedicalId`,`ntypeList`,`elseContent`) values (1,NULL,NULL),(2,NULL,NULL);

/*Table structure for table `now_medicalhistorytype` */

DROP TABLE IF EXISTS `now_medicalhistorytype`;

CREATE TABLE `now_medicalhistorytype` (
  `ntypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ntype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ntypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `now_medicalhistorytype` */

insert  into `now_medicalhistorytype`(`ntypeId`,`ntype`) values (1,'非活动性HBV携带者'),(2,'慢性HBV携带者'),(3,'梅毒随访中'),(4,'肺结核随访中');

/*Table structure for table `oral_cavity` */

DROP TABLE IF EXISTS `oral_cavity`;

CREATE TABLE `oral_cavity` (
  `oralId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `checkEquipment` varchar(20) DEFAULT NULL COMMENT '检查设备',
  `opinion` varchar(20) DEFAULT NULL COMMENT '检查所见',
  `abnormalType` int(11) DEFAULT NULL COMMENT '(0,1)',
  `abnormalContent` varchar(200) DEFAULT NULL COMMENT '异常描述',
  `doctorName` varchar(20) DEFAULT NULL,
  `examineDate` date DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`oralId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `oral_cavity` */

insert  into `oral_cavity`(`oralId`,`userId`,`checkEquipment`,`opinion`,`abnormalType`,`abnormalContent`,`doctorName`,`examineDate`,`sex`) values (1,2020122412,'U202',NULL,0,NULL,'张三','2020-04-23',0),(2,2020122412,'U202',NULL,0,NULL,'张三','2020-04-23',1);

/*Table structure for table `registertype` */

DROP TABLE IF EXISTS `registertype`;

CREATE TABLE `registertype` (
  `regtypeId` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`regtypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `registertype` */

insert  into `registertype`(`regtypeId`,`type`) values (1,'孕前检查，婚前检查'),(2,'孕前检查');

/*Table structure for table `suggest` */

DROP TABLE IF EXISTS `suggest`;

CREATE TABLE `suggest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `suggest` */

insert  into `suggest`(`id`,`content`) values (1,'有准备、有计划的怀孕，避免大龄生育.'),(2,'合理营养，控制饮食，科学增补叶酸、碘、铁、钙等营养素及微童元素。'),(3,'积极预防慢性疾病和传染病.'),(4,'谨慎用药,计划受孕期间尽里避免服用药物。'),(5,'避免接触生活及职业环境中的有毒有害物质(如放射线、高温、铅、汞、苯、农药),避免密切接触宠物。'),(6,'保持健康生活方式和行为。'),(7,'保持心理健康。');

/*Table structure for table `suggest_d` */

DROP TABLE IF EXISTS `suggest_d`;

CREATE TABLE `suggest_d` (
  `dId` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `suggest_d` */

insert  into `suggest_d`(`dId`,`content`) values (1,'在已接受的检查项目中,暂未发现夫妇双方存在对怀孕不利的危险因素。建议定期接受健康教育与指导。'),(2,'夫妇仅一方(丈夫/妻子)接受检查评估。在已接受的检查项...素。建议另-方(丈夫/妻子)尽快前来接受孕前优生健康检查。'),(3,'在已接受的检查项目中,发现对怀孕不利的危险因素,建议进一 步咨询及查治。');

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `userId` int(20) NOT NULL AUTO_INCREMENT,
  `mName` varchar(20) DEFAULT NULL,
  `mCard` varchar(18) DEFAULT NULL,
  `mBirthDate` date DEFAULT NULL,
  `mPhone` varchar(11) DEFAULT NULL,
  `methnic` varchar(20) DEFAULT NULL COMMENT '名族',
  `mIdType` varchar(20) DEFAULT NULL COMMENT '证件类型',
  `mage` int(11) DEFAULT NULL COMMENT '年龄',
  `mculture` varchar(50) DEFAULT NULL COMMENT '文化程度',
  `mjob` varchar(50) DEFAULT NULL COMMENT '职业',
  `mprovince` varchar(20) DEFAULT NULL COMMENT '省',
  `mcity` varchar(20) DEFAULT NULL COMMENT '市',
  `mcounty` varchar(20) DEFAULT NULL COMMENT '县',
  `mdistrict` varchar(20) DEFAULT NULL COMMENT '乡',
  `mvillage` varchar(20) DEFAULT NULL COMMENT '村',
  `mregistered` varchar(20) DEFAULT NULL COMMENT '户口性质',
  `fName` varchar(20) DEFAULT NULL,
  `fCard` varchar(18) DEFAULT NULL,
  `fBirthDate` date DEFAULT NULL,
  `fPhone` varchar(11) DEFAULT NULL,
  `fethnic` varchar(20) DEFAULT NULL,
  `fIdType` varchar(20) DEFAULT NULL,
  `fage` int(11) DEFAULT NULL,
  `fculture` varchar(50) DEFAULT NULL,
  `fjob` varchar(50) DEFAULT NULL,
  `fprovince` varchar(20) DEFAULT NULL,
  `fcity` varchar(20) DEFAULT NULL,
  `fcounty` varchar(20) DEFAULT NULL,
  `fdistrict` varchar(20) DEFAULT NULL,
  `fvillage` varchar(20) DEFAULT NULL,
  `fregistered` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `creatDate` date DEFAULT NULL COMMENT '创建日期',
  `getMarriedDate` date DEFAULT NULL COMMENT '结婚时间',
  `regtypeId` int(11) DEFAULT NULL COMMENT '登记类型',
  `landlineNumber` varchar(20) DEFAULT NULL COMMENT '座机号码',
  `mimg` varchar(100) DEFAULT NULL,
  `fimg` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL COMMENT '邮编',
  `doctorName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2020122418 DEFAULT CHARSET=utf8;

/*Data for the table `user_info` */

insert  into `user_info`(`userId`,`mName`,`mCard`,`mBirthDate`,`mPhone`,`methnic`,`mIdType`,`mage`,`mculture`,`mjob`,`mprovince`,`mcity`,`mcounty`,`mdistrict`,`mvillage`,`mregistered`,`fName`,`fCard`,`fBirthDate`,`fPhone`,`fethnic`,`fIdType`,`fage`,`fculture`,`fjob`,`fprovince`,`fcity`,`fcounty`,`fdistrict`,`fvillage`,`fregistered`,`address`,`creatDate`,`getMarriedDate`,`regtypeId`,`landlineNumber`,`mimg`,`fimg`,`email`,`doctorName`) values (2020122412,'言经年','431103199605148045','1996-05-14','18244726331','汉族','身份证',23,'本科','白领','湖南省','长沙市','岳麓区',NULL,NULL,'城市户口','乔文妮','431103199608148045','1996-08-14','13844756951','汉族','身份证',23,'本科','白领','湖南省','岳阳市','xx县','xx乡','xx老王村','城市户口','湖南省长沙市岳麓区xx街道xxx号','2020-04-23','2020-04-17',1,NULL,NULL,'','1101133896@qq.com','张三'),(2020122414,'默苏文','431103199405146854','1994-05-14','18248746131','汉族','身份证',25,'本科','白领','湖北省','武汉市','xx区','xx乡',NULL,'城市户口','陈慧','431103199608148045','1996-08-14','13845124751','汉族','身份证',23,'本科','白领','湖南省','常德市','xx县','xx乡','xx和平村','城市户口','湖北省武汉市xx区xx街道xxx号','2020-04-23','2020-04-10',2,NULL,NULL,'','2541133896@qq.com','张三'),(2020122415,'彭大婶','431103199305211456','1993-05-21','18214585665','汉族','身份证',26,'大专','白领','湖南省','永州市','冷水滩区','高溪市','杨家村','农村户口','刘二娘','431103199608148045','1996-08-14','13844744551','汉族','身份证',23,'本科','白领','湖南省','岳阳市','xx县',NULL,'xx老王村','城市户口','湖北省武汉市xx区xx街道xxx号','2020-04-23','2020-04-11',2,NULL,NULL,'','2564135466@qq.com','王五六'),(2020122416,'成文武','431103199301212241','1993-01-21','18214586632','汉族','身份证',27,'大专','白领','湖南省','永州市','零陵','xx市','土家村','农村户口','刘二娘','431103199608148045','1996-08-14','13844744551','汉族','身份证',23,'本科','白领','湖南省','岳阳市','xx县','xx乡','xx老王村','农村户口','湖北省岳阳市xx区xx街道xxx号','2020-04-23','2020-04-16',1,NULL,NULL,'','594152466@qq.com','王五六');

/*Table structure for table `x_examine` */

DROP TABLE IF EXISTS `x_examine`;

CREATE TABLE `x_examine` (
  `xId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `xNum` int(11) DEFAULT NULL,
  `opinion` varchar(200) DEFAULT NULL COMMENT 'x射线所见',
  `abnormalType` int(11) DEFAULT NULL COMMENT '(0,1,2)',
  `abnormalContent` varchar(200) DEFAULT NULL COMMENT '异常描述',
  `doctorName` varchar(20) DEFAULT NULL COMMENT '检查医生',
  `examineDate` date DEFAULT NULL COMMENT '检查时间',
  `sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`xId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `x_examine` */

insert  into `x_examine`(`xId`,`userId`,`xNum`,`opinion`,`abnormalType`,`abnormalContent`,`doctorName`,`examineDate`,`sex`) values (1,2020122412,253,NULL,0,NULL,'张三','2020-04-23',0),(2,2020122412,254,NULL,0,NULL,'张三','2020-04-23',1);

/*Table structure for table `yx_advise` */

DROP TABLE IF EXISTS `yx_advise`;

CREATE TABLE `yx_advise` (
  `yxId` int(11) NOT NULL AUTO_INCREMENT,
  `yxItem` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`yxId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `yx_advise` */

insert  into `yx_advise`(`yxId`,`yxItem`) values (1,'未发现医学上不宜结婚德异常情况和疾病'),(2,'建议暂缓结婚'),(3,'建议不宜生育'),(4,'建议不以结婚'),(5,'建议采取医学措施，尊重受检者意愿');

/*Table structure for table `yx_advise_checkresult` */

DROP TABLE IF EXISTS `yx_advise_checkresult`;

CREATE TABLE `yx_advise_checkresult` (
  `relationId` int(11) NOT NULL AUTO_INCREMENT,
  `resultId` int(11) DEFAULT NULL COMMENT '检查结果Id',
  `adviseArr` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`relationId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `yx_advise_checkresult` */

insert  into `yx_advise_checkresult`(`relationId`,`resultId`,`adviseArr`) values (1,1,'1'),(2,2,'1');

/*Table structure for table `yx_check_result` */

DROP TABLE IF EXISTS `yx_check_result`;

CREATE TABLE `yx_check_result` (
  `resultId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `isAbnormal` int(11) DEFAULT NULL COMMENT '是否有异常',
  `abnormalities` varchar(100) DEFAULT NULL COMMENT '异常情况',
  `disease` varchar(100) DEFAULT NULL COMMENT '疾病诊断',
  `sanitation` varchar(200) DEFAULT NULL COMMENT '卫生检查结果',
  `consult` varchar(200) DEFAULT NULL COMMENT '咨询指导结果',
  `supplement` varchar(100) DEFAULT NULL COMMENT '补充病史',
  `advise` varchar(50) DEFAULT NULL COMMENT '进一步检查建议',
  `adviseProject` varchar(50) DEFAULT NULL COMMENT '建议检查项目',
  `isAdvise` int(11) DEFAULT NULL COMMENT '婚检对象对进一步检查态度',
  `ReferralHospital` varchar(50) DEFAULT NULL COMMENT '转诊医院',
  `referralDate` date DEFAULT NULL COMMENT '转诊日期',
  `forwardDate` date DEFAULT NULL COMMENT '预约复诊日期',
  `proveDate` date DEFAULT NULL COMMENT '婚检证明日期',
  `doctorName` varchar(50) DEFAULT NULL,
  `examineDate` date DEFAULT NULL,
  `isOral` int(11) DEFAULT NULL COMMENT '口腔是否检查',
  `isX` int(11) DEFAULT NULL COMMENT 'x射线是否检查',
  `isCgkz` int(11) DEFAULT NULL COMMENT '常规是否检查完毕',
  `isOver` int(11) DEFAULT NULL COMMENT '是否检查完毕',
  PRIMARY KEY (`resultId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `yx_check_result` */

insert  into `yx_check_result`(`resultId`,`userId`,`sex`,`isAbnormal`,`abnormalities`,`disease`,`sanitation`,`consult`,`supplement`,`advise`,`adviseProject`,`isAdvise`,`ReferralHospital`,`referralDate`,`forwardDate`,`proveDate`,`doctorName`,`examineDate`,`isOral`,`isX`,`isCgkz`,`isOver`) values (1,2020122412,0,0,NULL,NULL,'卫生良好',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'张三','2020-04-23',1,1,1,1),(2,2020122412,1,0,NULL,NULL,'卫生良好',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'张三','2020-04-23',1,1,1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
